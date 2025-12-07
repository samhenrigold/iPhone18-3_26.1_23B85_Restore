void nss_cms_encoder_out(uint64_t a1, UInt8 *bytes, unint64_t length)
{
  if (*a1)
  {
    (*a1)(*(a1 + 8), bytes, length);
  }

  if (length <= 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = *(a1 + 16);
    if (v6)
    {

      CFDataAppendBytes(v6, bytes, length);
    }
  }
}

uint64_t SecCmsEncoderUpdate(uint64_t a1, char *dataIn, size_t dataInLength)
{
  if ((dataInLength & 0x8000000000000000) == 0)
  {
    while (a1)
    {
      v5 = a1;
      Error = *(a1 + 64);
      if (Error)
      {
        return Error;
      }

      a1 = *(a1 + 72);
      if (!a1)
      {
        if (*(v5 + 32))
        {
          v7 = *(v5 + 24);
          v8 = v7 > 0x1E;
          v9 = (1 << v7) & 0x6C000000;
          if (v8 || v9 == 0)
          {
            v11 = 0;
          }

          else
          {
            v11 = *(v5 + 32);
          }
        }

        else
        {
          v11 = 0;
        }

        OID = *(v11 + 32);
        if (OID || (OID = SECOID_FindOID(v11), (*(v11 + 32) = OID) != 0))
        {
          if (*(OID + 16) == 25 && !*(v11 + 16))
          {
            if (!nss_cms_encoder_work_data(v5, dataIn, dataInLength, 0, 1))
            {
              return 0;
            }

            Error = PORT_GetError();
            ThreadErrInfo = PR_getThreadErrInfo(1, &v15);
            if (ThreadErrInfo)
            {
              *ThreadErrInfo = 0;
            }

            return Error;
          }
        }

        return 4294967246;
      }
    }
  }

  return 4294967246;
}

void SecCmsEncoderDestroy(void ***a1)
{
  v2 = a1[9];
  if (v2)
  {
    SecCmsEncoderDestroy(v2);
    v3 = a1[9] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!nss_cms_encoder_work_data(a1, 0, 0, 1, v3))
  {
    a1[9] = 0;
    v4 = *a1;
    if (*(*a1 + 6))
    {
      *(v4 + 6) = 0;
      if (*(v4 + 4) == 3)
      {
        *(v4 + 4) = 2;
        *(v4[1] + 10) = 4;
      }
    }

    *(v4 + 5) = 0;
    SEC_ASN1EncoderUpdate(v4, 0, 0);
  }

  PORT_FreeArena(**a1, 0);

  free(a1);
}

uint64_t SecCmsEncoderFinish(void ***a1)
{
  v2 = a1[9];
  if (v2)
  {
    Error = SecCmsEncoderFinish(v2);
    if (Error)
    {
      goto LABEL_26;
    }

    v4 = a1[9] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (nss_cms_encoder_work_data(a1, 0, 0, 1, v4))
  {
    Error = PORT_GetError();
  }

  else
  {
    a1[9] = 0;
    if (a1[4])
    {
      v5 = *(a1 + 6);
      v6 = v5 > 0x1E;
      v7 = (1 << v5) & 0x6C000000;
      if (v6 || v7 == 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1[4];
      }
    }

    else
    {
      v9 = 0;
    }

    OID = v9[4];
    if (OID || (OID = SECOID_FindOID(v9), (v9[4] = OID) != 0))
    {
      if (*(OID + 16) == 25 && !v9[2])
      {
        v15 = *a1;
        if (*(*a1 + 6))
        {
          *(v15 + 24) = 0;
          if (*(v15 + 16) == 3)
          {
            *(v15 + 16) = 2;
            *(*(v15 + 8) + 40) = 4;
          }
        }

        LODWORD(OID) = SEC_ASN1EncoderUpdate(v15, 0, 0);
        if (OID)
        {
          LODWORD(OID) = PORT_GetError();
        }
      }

      else
      {
        LODWORD(OID) = 0;
      }
    }

    *(*a1 + 5) = 0;
    v11 = *(a1 + 16);
    if (OID)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (v12)
    {
      Error = OID;
    }

    else
    {
      Error = v11;
    }
  }

LABEL_26:
  PORT_FreeArena(**a1, 0);
  free(a1);
  ThreadErrInfo = PR_getThreadErrInfo(1, &v16);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0;
  }

  return Error;
}

uint64_t SecCmsMessageEncode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v11 = 0;
  v5 = 4294967246;
  if (!a1 || !a3)
  {
    return v5;
  }

  if (!a2)
  {
    v7 = SecCmsEncoderCreate(a1, 0, 0, a3, a5, 0, 0, 0, v11);
    if (!v7)
    {
      v8 = *v11;
      goto LABEL_12;
    }

    return v7;
  }

  if ((*a2 & 0x8000000000000000) != 0)
  {
    return v5;
  }

  v7 = SecCmsEncoderCreate(a1, 0, 0, a3, a5, 0, 0, 0, v11);
  if (v7)
  {
    return v7;
  }

  v8 = *v11;
  v9 = SecCmsEncoderUpdate(*v11, *(a2 + 8), *a2);
  if (v9)
  {
    v5 = v9;
    SecCmsEncoderDestroy(v8);
    return v5;
  }

LABEL_12:

  return SecCmsEncoderFinish(v8);
}

uint64_t SecCmsArraySortByDER(int8x16_t *a1, uint64_t a2, int8x16_t *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1->i64[0])
  {
    return 0;
  }

  v6 = 0;
    ;
  }

  if (v6 == 1)
  {
    return 0;
  }

  v8 = PORT_NewArena(1024);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if ((v6 - 1) <= 0xFFFFFFC)
  {
    v10 = PORT_ArenaAlloc(v8, (8 * v6 + 8));
    if (v10)
    {
      v11 = v10;
      bzero(v10, (8 * v6 + 8));
      v12 = 0;
      v13 = v6;
      while (1)
      {
        v14 = SEC_ASN1EncodeItem(v9, 0, a1->i64[v12], a2);
        v11[v12] = v14;
        if (!v14)
        {
          break;
        }

        ++v12;
        if (!--v13)
        {
          v11[v6] = 0;
          SecCmsArraySort(v11, SecCmsUtilDERCompare, a1, a3);
          v15 = 0;
          goto LABEL_16;
        }
      }
    }
  }

  v15 = 0xFFFFFFFFLL;
LABEL_16:
  PORT_FreeArena(v9, 0);
  return v15;
}

uint64_t SecCmsUtilDERCompare(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), *a1);
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t SecCmsAlgArrayGetIndexByAlgTag(size_t **a1, unsigned int a2)
{
  if (!a1 || !*a1)
  {
    return 0xFFFFFFFFLL;
  }

  pthread_once(&hash_once, InitOIDHashOnce);
  v4 = a2 <= 0xD8 ? &oids[40 * a2] : 0;
  if (a2 > 0xD8)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = a1 + 1;
  while (!SECITEM_ItemsAreEqual(v5, v4))
  {
    v5 = v7[v6++];
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

const char *SecCmsUtilVerificationStatusToString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_1E70D9730[a1];
  }
}

unint64_t SecCmsDigestedDataCreate(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 120);
  v5 = PORT_ArenaAlloc(v4, 0xC8uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  *(v5 + 192) = 0;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a1;
  if (SECOID_CopyAlgorithmID(v4, (v5 + 136), a2))
  {
    return 0;
  }

  return v6;
}

void SecCmsDigestedDataDestroy(uint64_t *result)
{
  if (result)
  {
    SecCmsContentInfoDestroy(result);
  }
}

uint64_t SecCmsDigestedDataEncodeBeforeStart(void *a1)
{
  OID = a1[4];
  if (OID || (OID = SECOID_FindOID(a1), (a1[4] = OID) != 0))
  {
    v3 = 2 * (*(OID + 16) != 25);
  }

  else
  {
    v3 = 2;
  }

  if (SEC_ASN1EncodeInteger(*(a1[3] + 120), a1 + 15, v3))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t SecCmsDigestedDataEncodeAfterData(void *a1)
{
  result = a1[13];
  if (result)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    if (SecCmsDigestContextFinishMultiple(result, &v4, &v5) || (v3 = **v5, SECITEM_CopyItem(*(a1[3] + 120), a1 + 21, &v3)))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      SecCmsDigestContextCancel(a1[13]);
      result = 0;
    }

    a1[13] = 0;
  }

  return result;
}

unint64_t SecCmsDigestContextStartMultiple(uint64_t *a1)
{
  v2 = PORT_NewArena(1024);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (a1 && *a1)
  {
    v4 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v6 = PORT_ArenaAlloc(v2, 0x20uLL);
  if (!v6)
  {
LABEL_35:
    PORT_FreeArena(v3, 0);
    return 0;
  }

  v7 = v6;
  *v6 = v3;
  if (v4 >= 1)
  {
    if (v4 <= 0xFFFFFFD)
    {
      v8 = 8 * v4;
      v9 = PORT_ArenaAlloc(v3, (8 * v4));
      *(v7 + 16) = v9;
      if (v9)
      {
        v10 = PORT_ArenaAlloc(v3, (v8 + 8));
        if (v10)
        {
          v11 = v10;
          bzero(v10, (v8 + 8));
          *(v7 + 24) = v11;
          *(v7 + 12) = 0;
          v12 = v4;
          while (1)
          {
            OID = SECOID_FindOID(*a1);
            v14 = 0;
            if (OID)
            {
              v15 = *(OID + 16);
              if (v15 > 191)
              {
                switch(v15)
                {
                  case 192:
                    v14 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
                    CC_SHA256_Init(v14);
                    break;
                  case 193:
                    v14 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
                    CC_SHA384_Init(v14);
                    break;
                  case 194:
                    v14 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
                    CC_SHA512_Init(v14);
                    break;
                }
              }

              else
              {
                switch(v15)
                {
                  case 3:
                    v14 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
                    CC_MD5_Init(v14);
                    break;
                  case 4:
                    v14 = malloc_type_calloc(1uLL, 0x60uLL, 0x1000040565EDBD2uLL);
                    CC_SHA1_Init(v14);
                    break;
                  case 191:
                    v14 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
                    CC_SHA224_Init(v14);
                    break;
                }
              }
            }

            *(*(v7 + 16) + 8 * *(v7 + 12)) = v14;
            v16 = PORT_ArenaAlloc(v3, 0x20uLL);
            v17 = *(v7 + 12);
            *(*(v7 + 24) + 8 * v17) = v16;
            if (SECITEM_CopyItem(v3, *(*(v7 + 24) + 8 * v17), *a1) || SECITEM_CopyItem(v3, (*(*(v7 + 24) + 8 * *(v7 + 12)) + 16), (*a1 + 16)))
            {
              break;
            }

            ++*(v7 + 12);
            ++a1;
            if (!--v12)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          *(v7 + 24) = 0;
        }
      }
    }

    goto LABEL_35;
  }

  *(v6 + 12) = 0;
LABEL_33:
  *(v7 + 8) = 0;
  return v7;
}

void SecCmsDigestContextUpdate(uint64_t a1, const void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "SecCmsDigestContextUpdate: data size too big (%zu), skipping", &v11, 0xCu);
    }
  }

  else
  {
    *(a1 + 8) = 1;
    if (*(a1 + 12) >= 1)
    {
      v7 = 0;
      do
      {
        if (*(*(a1 + 16) + 8 * v7))
        {
          v8 = *(*(a1 + 24) + 8 * v7);
          if (v8)
          {
            if (*(v8 + 8))
            {
              OID = SECOID_FindOID(v8);
              if (OID)
              {
                v10 = *(OID + 16);
                if (v10 > 191)
                {
                  switch(v10)
                  {
                    case 192:
                      CC_SHA256_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                    case 193:
                      CC_SHA384_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                    case 194:
                      CC_SHA512_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                  }
                }

                else
                {
                  switch(v10)
                  {
                    case 3:
                      CC_MD5_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                    case 4:
                      CC_SHA1_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                    case 191:
                      CC_SHA224_Update(*(*(a1 + 16) + 8 * v7), a2, a3);
                      break;
                  }
                }
              }
            }
          }
        }

        ++v7;
      }

      while (v7 < *(a1 + 12));
    }
  }
}

void SecCmsDigestContextCancel(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(v4 + 8 * i);
        if (v5)
        {
          free(v5);
          *(*(a1 + 16) + 8 * i) = 0;
          v2 = *(a1 + 12);
        }
      }
    }
  }

  v6 = *a1;

  PORT_FreeArena(v6, 1);
}

uint64_t SecCmsDigestContextFinishMultiple(void *a1, void *a2, void *a3)
{
  v4 = *(a1 + 3);
  if (v4 > 134217725)
  {
    goto LABEL_21;
  }

  v7 = *a1;
  v8 = 8 * v4 + 8;
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = PORT_ArenaAlloc(v7, v9);
  v11 = v10;
  if (v10)
  {
    bzero(v10, v9);
  }

  if ((8 * *(a1 + 3) + 8) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 8 * *(a1 + 3) + 8;
  }

  v13 = PORT_ArenaAlloc(*a1, v12);
  v14 = v13;
  if (v13)
  {
    bzero(v13, v12);
  }

  v15 = (16 * *(a1 + 3)) <= 1 ? 1 : 16 * *(a1 + 3);
  v16 = PORT_ArenaAlloc(*a1, v15);
  if (!v16 || ((v17 = v16, bzero(v16, v15), v11) ? (v18 = v14 == 0) : (v18 = 1), v18))
  {
LABEL_21:
    result = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (*(a1 + 3) >= 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(a1[3] + 8 * v20);
      if (!v21)
      {
        goto LABEL_21;
      }

      if (!*(v21 + 8))
      {
        goto LABEL_21;
      }

      OID = SECOID_FindOID(v21);
      if (!OID)
      {
        goto LABEL_21;
      }

      v23 = *(OID + 16);
      result = 0xFFFFFFFFLL;
      if (v23 > 191)
      {
        switch(v23)
        {
          case 192:
            v24 = 32;
            break;
          case 193:
            v24 = 48;
            break;
          case 194:
            v24 = 64;
            break;
          default:
            goto LABEL_22;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            v24 = 16;
            break;
          case 4:
            v24 = 20;
            break;
          case 191:
            v24 = 28;
            break;
          default:
            goto LABEL_22;
        }
      }

      v25 = *(a1[2] + 8 * v20);
      if (v25)
      {
        v26 = PORT_ArenaAlloc(*a1, v24);
        v17[1] = v26;
        if (!v26)
        {
          goto LABEL_21;
        }

        *v17 = v24;
        if (v23 > 191)
        {
          if (v23 == 192)
          {
            CC_SHA256_Final(v26, v25);
          }

          else if (v23 == 193)
          {
            CC_SHA384_Final(v26, v25);
          }

          else
          {
            CC_SHA512_Final(v26, v25);
          }
        }

        else if (v23 == 3)
        {
          CC_MD5_Final(v26, v25);
        }

        else if (v23 == 4)
        {
          CC_SHA1_Final(v26, v25);
        }

        else
        {
          CC_SHA224_Final(v26, v25);
        }

        free(v25);
        v11[v20] = *(a1[3] + 8 * v20);
        v14[v20] = v17;
      }

      else
      {
        *v17 = 0;
        v17[1] = 0;
      }

      ++v20;
      v17 += 2;
      if (v20 >= *(a1 + 3))
      {
        v27 = v20;
        goto LABEL_59;
      }
    }
  }

  v27 = 0;
LABEL_59:
  result = 0;
  v11[v27] = 0;
  v14[v27] = 0;
  *a2 = v11;
  *a3 = v14;
LABEL_22:
  *(a1 + 3) = 0;
  return result;
}

void *SECITEM_AllocItem(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  if (a1)
  {
    if (!a2)
    {
      v6 = PORT_ArenaAlloc(a1, 0x10uLL);
      v4 = v6;
      if (!v6)
      {
        return v4;
      }

      *(v6 + 8) = 0;
    }

    *v4 = a3;
    if (a3)
    {
      v7 = PORT_ArenaAlloc(a1, a3);
LABEL_11:
      v4[1] = v7;
    }
  }

  else if (a2 || (v4 = PORT_ZAlloc(0x10uLL)) != 0)
  {
    *v4 = a3;
    if (a3)
    {
      v7 = PORT_Alloc(a3);
      goto LABEL_11;
    }
  }

  return v4;
}

uint64_t SECITEM_CopyItem(uint64_t a1, size_t *a2, size_t *a3)
{
  if (!a3[1] || !*a3)
  {
    v6 = 0;
    a2[1] = 0;
LABEL_9:
    result = 0;
    *a2 = v6;
    return result;
  }

  if (a1)
  {
    v5 = PORT_ArenaAlloc(a1, *a3);
  }

  else
  {
    v5 = PORT_Alloc(*a3);
  }

  a2[1] = v5;
  if (v5)
  {
    memcpy(v5, a3[1], *a3);
    v6 = *a3;
    goto LABEL_9;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SecCmsMessageCreate()
{
  result = PORT_NewArena(1024);
  if (result)
  {
    v1 = result;
    result = PORT_ArenaAlloc(result, 0xA0uLL);
    if (result)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 120) = v1;
      *(result + 24) = result;
      *(result + 128) = 1;
    }

    else
    {
      PORT_FreeArena(v1, 0);
      return 0;
    }
  }

  return result;
}

void SecCmsMessageDestroy(uint64_t *result)
{
  v1 = *(result + 32);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 == v2)
  {
    *(result + 32) = v3;
    if (!v3)
    {
      SecCmsContentInfoDestroy(result);
      v5 = result[15];
      if (v5)
      {

        PORT_FreeArena(v5, 1);
      }
    }
  }
}

uint64_t SecCmsMessageCopy(uint64_t result)
{
  if (result)
  {
    ++*(result + 128);
  }

  return result;
}

uint64_t SecCmsMessageContentLevelCount(uint64_t ChildContentInfo)
{
  for (i = 0; ChildContentInfo; ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo))
  {
    i = (i + 1);
  }

  return i;
}

uint64_t SecCmsMessageContentLevel(uint64_t result, int a2)
{
  if (result && a2 >= 1)
  {
    v3 = 1;
    do
    {
      result = SecCmsContentInfoGetChildContentInfo(result);
      if (!result)
      {
        break;
      }
    }

    while (v3++ < a2);
  }

  return result;
}

uint64_t SecCmsMessageContainsCertsOrCrls(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      OID = *(v1 + 32);
      if (OID || (OID = SECOID_FindOID(v1), (*(v1 + 32) = OID) != 0))
      {
        if (*(OID + 16) == 26)
        {
          v3 = *(v1 + 16);
          v4 = *(v3 + 144);
          if (v4)
          {
            if (*v4)
            {
              break;
            }
          }

          v5 = *(v3 + 152);
          if (v5)
          {
            if (*v5)
            {
              break;
            }
          }
        }
      }

      result = SecCmsContentInfoGetChildContentInfo(v1);
      v1 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t SecCmsMessageIsEncrypted(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      OID = *(v1 + 32);
      if (OID || (OID = SECOID_FindOID(v1), (*(v1 + 32) = OID) != 0))
      {
        v3 = *(OID + 16);
        if (v3 == 27 || v3 == 30)
        {
          break;
        }
      }

      result = SecCmsContentInfoGetChildContentInfo(v1);
      v1 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t SecCmsMessageIsSigned(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      OID = *(v1 + 32);
      if (OID || (OID = SECOID_FindOID(v1), (*(v1 + 32) = OID) != 0))
      {
        if (*(OID + 16) == 26)
        {
          v3 = *(*(v1 + 16) + 160);
          if (v3)
          {
            if (*v3)
            {
              break;
            }
          }
        }
      }

      result = SecCmsContentInfoGetChildContentInfo(v1);
      v1 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

BOOL SecCmsMessageIsContentEmpty(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 16);
  result = 1;
  v6 = v4 >= 0x1E;
  v8 = v4 == 30;
  v7 = (1 << v4) & 0x6E000000;
  v8 = !v8 && v6 || v7 == 0;
  if (!v8)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      return *v9 <= a2;
    }
  }

  return result;
}

uint64_t nss_cms_choose_content_template(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 32);
    if (result || (result = SECOID_FindOID(v1), (*(v1 + 32) = result) != 0))
    {
      v2 = *(result + 16) - 25;
      if (v2 > 5)
      {
        return 0;
      }

      else
      {
        return *(&off_1E70DA0F8 + v2);
      }
    }
  }

  return result;
}

uint64_t SECOID_SetAlgorithmID(uint64_t a1, size_t *a2, unsigned int a3, size_t *a4)
{
  pthread_once(&hash_once, InitOIDHashOnce);
  if (a3 >= 0xD9)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v11);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00600000000;
    }

    return 0xFFFFFFFFLL;
  }

  if (SECITEM_CopyItem(a1, a2, &oids[40 * a3]))
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 <= 0x14u && ((1 << a3) & 0x1F001E) != 0 || a3 - 192 < 6)
  {
    if (!a4)
    {
      SECITEM_AllocItem(a1, a2 + 2, 2uLL);
      v10 = a2[3];
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }

      *v10 = 5;
      *(a2[3] + 1) = 0;
      return 0;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  if (SECITEM_CopyItem(a1, a2 + 2, a4))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t SECOID_CopyAlgorithmID(uint64_t a1, size_t *a2, size_t *a3)
{
  if (SECITEM_CopyItem(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  return SECITEM_CopyItem(a1, a2 + 2, a3 + 2);
}

unint64_t SecCmsEnvelopedDataCreate(uint64_t a1, unsigned int a2, int a3)
{
  v6 = PORT_ArenaAlloc(*(a1 + 120), 0xA0uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 24) = a1;
    if (SECOID_SetAlgorithmID(*(a1 + 120), (v6 + 40), a2, 0))
    {
      return 0;
    }

    else
    {
      *(v7 + 88) = a3;
    }
  }

  return v7;
}

void SecCmsEnvelopedDataDestroy(uint64_t *result)
{
  if (result)
  {
    v2 = result[18];
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          v5 = *(v3 + 144);
          if (v5)
          {
            CFRelease(v5);
          }

          if (!*v3 && *(v3 + 24) == 1)
          {
            v6 = *(v3 + 96);
            if (v6)
            {
              CFRelease(v6);
            }
          }

          v7 = *v4++;
          v3 = v7;
        }

        while (v7);
      }

      SecCmsContentInfoDestroy(result);
    }
  }
}

uint64_t SecCmsEnvelopedDataEncodeBeforeStart(uint64_t a1)
{
  iv[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 144);
  if (!v1)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v89);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00200000000;
    }

    return 0xFFFFFFFFLL;
  }

  v3 = *(*(a1 + 24) + 120);
  if (*(a1 + 136) || *(a1 + 152))
  {
    v4 = 2;
  }

  else
  {
    v64 = *v1;
    if (*v1)
    {
      v65 = v1 + 1;
      v4 = 2;
      while (1)
      {
        if (*v64 <= 2u)
        {
          *&v89 = 0xAAAAAAAAAAAAAAAALL;
          if (!SEC_ASN1DecodeInteger((v64 + 8), &v89))
          {
            if (v89)
            {
              break;
            }
          }
        }

        v66 = *v65++;
        v64 = v66;
        if (!v66)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
LABEL_106:
      v4 = 0;
    }
  }

  if (!SEC_ASN1EncodeInteger(v3, (a1 + 120), v4))
  {
    return 0xFFFFFFFFLL;
  }

  if (SecCmsContentInfoGetContentEncAlgTag(a1))
  {
    v5 = *(a1 + 88);
    v6 = v5 + 7;
    if (v5 < -7)
    {
      v6 = v5 + 14;
    }

    if (v5 < -14)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 >> 3;
  }

  else
  {
    if (SECOID_SetAlgorithmID(*(*(a1 + 24) + 120), (a1 + 40), 7u, 0))
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 88) = 192;
    v7 = 24;
  }

  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (CCRandomCopyBytes())
  {
    return 0xFFFFFFFFLL;
  }

  v11 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, v7, *MEMORY[0x1E695E488]);
  v12 = v11;
  v13 = *v1;
  if (!*v1)
  {
LABEL_107:
    if (SecCmsArraySortByDER(*(a1 + 144), &SecCmsRecipientInfoTemplate, 0))
    {
      goto LABEL_117;
    }

    SecCmsContentInfoSetBulkKey(a1, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    return 0;
  }

  v14 = v1 + 1;
  theData = v11;
  while (1)
  {
    v78 = 5;
    v15 = *(v13 + 144);
    if (!v15)
    {
      break;
    }

    v16 = *(*(*(v13 + 136) + 24) + 120);
    v17 = *(v15 + 27);
    v79[0] = *(v15 + 28);
    v79[1] = v17;
    v18 = *(v15 + 29);
    v79[2] = *(v15 + 30);
    v79[3] = v18;
    if (!v17 || (OID = SECOID_FindOID(v79)) == 0)
    {
LABEL_111:
      v68 = PR_getThreadErrInfo(1, &v89);
      if (!v68)
      {
        goto LABEL_117;
      }

      v69 = 0xFFFFE00600000000;
      goto LABEL_116;
    }

    v20 = *(OID + 16);
    if (v20 != 16)
    {
      if (v20 != 202)
      {
        goto LABEL_111;
      }

      v21 = **(v13 + 128);
      if (!v21)
      {
        goto LABEL_117;
      }

      v77[1] = &v78;
      v77[0] = 2;
      if (SECOID_SetAlgorithmID(v16, (v13 + 32), 0xCAu, v77))
      {
        goto LABEL_117;
      }

      privateKey = 0;
      publicKey = 0;
      iv[0] = 0xAAAAAAAAAAAAAAAALL;
      v95[0] = 8;
      v95[1] = iv;
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v93 = v22;
      v94 = v22;
      v91 = v22;
      v92 = v22;
      v90 = v22;
      v89 = v22;
      length = 0;
      bytes = 0;
      v86 = 5;
      v85 = -1431655766;
      cryptorRef = 0;
      v84 = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      v23 = (v21 + 56);
      v24 = SecCertificateCopyKey(v15);
      if (!v24)
      {
        v30 = 0;
        v31 = 0;
        v75 = 0;
        v76 = 0;
        v26 = 0;
        v34 = 0;
        goto LABEL_47;
      }

      cf = v24;
      v25 = SecKeyCopyAttributes(v24);
      v26 = v25;
      if (!v25)
      {
        v30 = 0;
        v31 = 0;
        v75 = 0;
        v76 = 0;
        v34 = 0;
        v41 = cf;
        goto LABEL_46;
      }

      Value = CFDictionaryGetValue(v25, @"type");
      v72 = v26;
      v28 = CFDictionaryGetValue(v26, @"bsiz");
      if (!CFEqual(@"73", Value))
      {
        v29 = 0;
        v31 = 0;
        v75 = 0;
        v76 = 0;
        v26 = 0;
        v34 = 0;
        v30 = -8152;
        goto LABEL_44;
      }

      keys[0] = @"type";
      keys[1] = @"bsiz";
      values[0] = Value;
      values[1] = v28;
      v29 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v30 = SecKeyGeneratePair(v29, &publicKey, &privateKey);
      v31 = 0;
      if (v30 || !publicKey || !privateKey)
      {
        v75 = 0;
        v76 = 0;
        v26 = 0;
        v34 = 0;
        goto LABEL_44;
      }

      v32 = PORT_Alloc(8uLL);
      *(v13 + 80) = 8;
      *(v13 + 88) = v32;
      v33 = CCRandomCopyBytes();
      if (v33)
      {
        goto LABEL_33;
      }

      if (*(v13 + 88))
      {
        *(v13 + 80) = 8;
        v33 = CCRandomCopyBytes();
        if (!v33)
        {
          v93 = 0u;
          v94 = 0u;
          if (SEC_ASN1EncodeItem(v16, &v94, v95, kSecAsn1OctetStringTemplate))
          {
            v71 = v29;
            pthread_once(&hash_once, InitOIDHashOnce);
            v93 = xmmword_1E70D7468;
            *(v13 + 96) = 0u;
            *(v13 + 112) = 0u;
            if (!SEC_ASN1EncodeItem(v16, (v13 + 112), &v93, &SECOID_AlgorithmIDTemplate) || (pthread_once(&hash_once, InitOIDHashOnce), *(v13 + 96) = *(&xmmword_1E70D7468 + 7880), v89 = 0u, v90 = 0u, v91 = 0u, v92 = 0u, pthread_once(&hash_once, InitOIDHashOnce), v89 = xmmword_1E70D7468, *(&v90 + 1) = &v86, *&v90 = 2, v91 = *(v13 + 80), v85 = -1073741824, *&v92 = 4, *(&v92 + 1) = &v85, !SEC_ASN1EncodeItem(v16, &length, &v89, &ECC_CMS_SharedInfoTemplate)))
            {
              v31 = 0;
              v75 = 0;
              v76 = 0;
              v26 = 0;
              v34 = 0;
              v30 = -2070;
              goto LABEL_84;
            }

            if (length < 0)
            {
              v31 = 0;
              v75 = 0;
              v76 = 0;
              v26 = 0;
              v34 = 0;
              v30 = -108;
              goto LABEL_84;
            }

            v31 = CFDataCreate(0, bytes, length);
            valuePtr = 24;
            v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            v99[0] = @"requestedSize";
            v99[1] = @"sharedInfo";
            v76 = v49;
            v98[0] = v49;
            v98[1] = v31;
            v75 = CFDictionaryCreate(0, v99, v98, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v50 = SecKeyCopyKeyExchangeResult(privateKey, @"algid:keyexchange:ECDH:KDFX963:SHA1", cf, v75, &v84);
            v26 = v50;
            if (v84 || CFDataGetLength(v50) < 0)
            {
              goto LABEL_80;
            }

            BytePtr = CFDataGetBytePtr(v26);
            v52 = CFDataGetLength(v26);
            v53 = CCCryptorCreate(0, 2u, 1u, BytePtr, v52, iv, &cryptorRef);
            if (v53)
            {
              goto LABEL_89;
            }

            if (CFDataGetLength(theData) < 0)
            {
LABEL_80:
              v30 = 0;
            }

            else
            {
              v54 = cryptorRef;
              v55 = CFDataGetLength(theData);
              OutputLength = CCCryptorGetOutputLength(v54, v55, 1);
              *(v21 + 64) = PORT_ArenaAlloc(v16, OutputLength);
              dataOutMoved = 0;
              v70 = cryptorRef;
              v57 = CFDataGetBytePtr(theData);
              v58 = CFDataGetLength(theData);
              v53 = CCCryptorUpdate(v70, v57, v58, *(v21 + 64), OutputLength, &dataOutMoved);
              if (!v53)
              {
                v80 = 0;
                v53 = CCCryptorFinal(cryptorRef, (*(v21 + 64) + dataOutMoved), OutputLength - dataOutMoved, &v80);
                if (!v53)
                {
                  *v23 = v80 + dataOutMoved;
                  v59 = SecKeyCopyExternalRepresentation(publicKey, &v84);
                  v34 = v59;
                  if (v84 || CFDataGetLength(v59) < 0)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v60 = CFDataGetLength(v34);
                    *(v13 + 64) = v60;
                    v61 = malloc_type_malloc(v60, 0xEDE15E41uLL);
                    *(v13 + 72) = v61;
                    if (v61)
                    {
                      v62 = v61;
                      v63 = CFDataGetBytePtr(v34);
                      memcpy(v62, v63, *(v13 + 64));
                      v30 = 0;
                    }

                    else
                    {
                      v30 = -108;
                    }

                    *(v13 + 64) *= 8;
                  }

LABEL_84:
                  v42 = cf;
                  v29 = v71;
LABEL_45:
                  CFRelease(v42);
                  CFRelease(v72);
                  v41 = v29;
                  if (v29)
                  {
LABEL_46:
                    CFRelease(v41);
                  }

LABEL_47:
                  v43 = publicKey;
                  if (publicKey)
                  {
                    publicKey = 0;
                    CFRelease(v43);
                  }

                  v44 = privateKey;
                  if (privateKey)
                  {
                    privateKey = 0;
                    CFRelease(v44);
                  }

                  if (v31)
                  {
                    CFRelease(v31);
                  }

                  if (v76)
                  {
                    CFRelease(v76);
                  }

                  v12 = theData;
                  if (v75)
                  {
                    CFRelease(v75);
                  }

                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  v45 = v84;
                  if (v84)
                  {
                    v84 = 0;
                    CFRelease(v45);
                  }

                  if (v34)
                  {
                    CFRelease(v34);
                  }

                  if (cryptorRef)
                  {
                    CCCryptorRelease(cryptorRef);
                  }

                  if (v30)
                  {
                    v46 = *(v21 + 64);
                    if (v46)
                    {
                      free(v46);
                      *v23 = 0;
                      *(v21 + 64) = 0;
                    }

                    v47 = *(v13 + 88);
                    if (v47)
                    {
                      free(v47);
                      *(v13 + 80) = 0;
                      *(v13 + 88) = 0;
                    }
                  }

                  goto LABEL_70;
                }
              }

LABEL_89:
              v30 = v53;
            }

            v34 = 0;
            goto LABEL_84;
          }

          v31 = 0;
          v75 = 0;
          v76 = 0;
          v26 = 0;
          v34 = 0;
          v30 = -2070;
LABEL_44:
          v42 = cf;
          goto LABEL_45;
        }

LABEL_33:
        v30 = v33;
      }

      else
      {
        v30 = 0;
      }

      v31 = 0;
      v75 = 0;
      v76 = 0;
      v26 = 0;
      v34 = 0;
      goto LABEL_44;
    }

    v35 = SecCertificateCopyKey(v15);
    if (!v35)
    {
      goto LABEL_117;
    }

    v36 = v35;
    Size = SecKeyGetSize(v35, 2);
    v38 = PORT_ArenaAlloc(v16, Size);
    *(v13 + 72) = Size;
    *(v13 + 80) = v38;
    if (!v38 || CFDataGetLength(v12) < 0 || (v39 = CFDataGetBytePtr(v12), v40 = CFDataGetLength(v12), SecKeyEncrypt(v36, 1u, v39, v40, *(v13 + 80), (v13 + 72))))
    {
      CFRelease(v36);
      goto LABEL_117;
    }

    CFRelease(v36);
    v30 = SECOID_SetAlgorithmID(v16, (v13 + 40), 0x10u, 0);
LABEL_70:
    if (v30)
    {
      goto LABEL_117;
    }

    v48 = *v14++;
    v13 = v48;
    if (!v48)
    {
      goto LABEL_107;
    }
  }

  v68 = PR_getThreadErrInfo(1, &v89);
  if (!v68)
  {
    goto LABEL_117;
  }

  v69 = 0xFFFFE00500000000;
LABEL_116:
  *v68 = v69;
LABEL_117:
  if (v12)
  {
    CFRelease(v12);
  }

  return 0xFFFFFFFFLL;
}

void SecCmsEnvelopedDataDecodeAfterData(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      CCCryptorRelease(*v2);
      free(v2);
      *(a1 + 96) = 0;
    }
  }
}

CFTypeID CMSEncoderGetTypeID(void)
{
  result = cmsEncoderTypeID;
  if (!cmsEncoderTypeID)
  {
    pthread_once(&CMSEncoderGetTypeID_once, cmsEncoderClassInitialize);
    return cmsEncoderTypeID;
  }

  return result;
}

uint64_t cmsEncoderClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  cmsEncoderTypeID = result;
  return result;
}

void cmsEncoderFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[7];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[13];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[11];
    if (v7)
    {
      SecCmsMessageDestroy(v7);
      a1[11] = 0;
    }

    v8 = a1[12];
    if (v8)
    {

      SecCmsEncoderDestroy(v8);
    }
  }
}

double cmsEncoderInit(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

OSStatus CMSEncoderCreate(CMSEncoderRef *cmsEncoderOut)
{
  if (!cmsEncoderTypeID)
  {
    pthread_once(&CMSEncoderGetTypeID_once, cmsEncoderClassInitialize);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return -108;
  }

  v3 = Instance;
  result = 0;
  *(v3 + 16) = 0;
  *(v3 + 116) = 0x200000004;
  *cmsEncoderOut = v3;
  return result;
}

OSStatus CMSEncoderSetSignerAlgorithm(CMSEncoderRef cmsEncoder, CFStringRef digestAlgorithm)
{
  if (CFEqual(digestAlgorithm, @"sha1"))
  {
    v4 = 4;
LABEL_5:
    result = 0;
    *(cmsEncoder + 29) = v4;
    return result;
  }

  if (CFEqual(digestAlgorithm, @"sha256"))
  {
    v4 = 192;
    goto LABEL_5;
  }

  return -50;
}

OSStatus CMSEncoderAddSigners(CMSEncoderRef cmsEncoder, CFTypeRef signerOrArray)
{
  if (!cmsEncoder || *(cmsEncoder + 4))
  {
    return -50;
  }

  TypeID = SecIdentityGetTypeID();

  return cmsAppendToArray(signerOrArray, cmsEncoder + 6, TypeID);
}

OSStatus CMSEncoderCopySigners(CMSEncoderRef cmsEncoder, CFArrayRef *signersOut)
{
  result = -50;
  if (cmsEncoder && signersOut)
  {
    v5 = *(cmsEncoder + 6);
    if (v5)
    {
      CFRetain(v5);
      v6 = *(cmsEncoder + 6);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *signersOut = v6;
  }

  return result;
}

OSStatus CMSEncoderAddRecipients(CMSEncoderRef cmsEncoder, CFTypeRef recipientOrArray)
{
  if (!cmsEncoder || *(cmsEncoder + 4))
  {
    return -50;
  }

  TypeID = SecCertificateGetTypeID();

  return cmsAppendToArray(recipientOrArray, cmsEncoder + 7, TypeID);
}

OSStatus CMSEncoderCopyRecipients(CMSEncoderRef cmsEncoder, CFArrayRef *recipientsOut)
{
  result = -50;
  if (cmsEncoder && recipientsOut)
  {
    v5 = *(cmsEncoder + 7);
    if (v5)
    {
      CFRetain(v5);
      v6 = *(cmsEncoder + 7);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *recipientsOut = v6;
  }

  return result;
}

OSStatus CMSEncoderAddSupportingCerts(CMSEncoderRef cmsEncoder, CFTypeRef certOrArray)
{
  if (!cmsEncoder || *(cmsEncoder + 4))
  {
    return -50;
  }

  TypeID = SecCertificateGetTypeID();

  return cmsAppendToArray(certOrArray, cmsEncoder + 8, TypeID);
}

OSStatus CMSEncoderCopySupportingCerts(CMSEncoderRef cmsEncoder, CFArrayRef *certsOut)
{
  result = -50;
  if (cmsEncoder && certsOut)
  {
    v5 = *(cmsEncoder + 8);
    if (v5)
    {
      CFRetain(v5);
      v6 = *(cmsEncoder + 8);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *certsOut = v6;
  }

  return result;
}

OSStatus CMSEncoderSetHasDetachedContent(CMSEncoderRef cmsEncoder, Boolean detachedContent)
{
  if (!cmsEncoder || *(cmsEncoder + 4))
  {
    return -50;
  }

  result = 0;
  *(cmsEncoder + 24) = detachedContent;
  return result;
}

OSStatus CMSEncoderGetHasDetachedContent(CMSEncoderRef cmsEncoder, Boolean *detachedContentOut)
{
  result = -50;
  if (cmsEncoder)
  {
    if (detachedContentOut)
    {
      result = 0;
      *detachedContentOut = *(cmsEncoder + 24);
    }
  }

  return result;
}

OSStatus CMSEncoderSetEncapsulatedContentTypeOID(CMSEncoderRef cmsEncoder, CFTypeRef eContentTypeOID)
{
  v5.Length = 0;
  v5.Data = 0;
  if (!eContentTypeOID || convertOid(eContentTypeOID, &v5))
  {
    return -50;
  }

  v3 = CMSEncoderSetEncapsulatedContentType(cmsEncoder, &v5);
  if (v5.Data)
  {
    free(v5.Data);
  }

  return v3;
}

uint64_t convertOid(const __CFString *a1, void *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    v22 = CFGetTypeID(a1);
    if (v22 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(a1);
      v20 = malloc_type_malloc(Length, 0x100004077774924uLL);
      BytePtr = CFDataGetBytePtr(a1);
      memcpy(v20, BytePtr, Length);
LABEL_15:
      v5 = 0;
      *a2 = Length;
      a2[1] = v20;
      return v5;
    }

    return 4294967246;
  }

  v5 = 4294899624;
  v6 = CFStringGetLength(a1);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 3 * v6;
    v8 = malloc_type_malloc(3 * v6, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetCString(a1, v8, v7 - 1, 0x600u))
      {
        v10 = CFStringCreateWithCString(0, v9, 0x600u);
        if (v10)
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v10, @".");
          v12 = ArrayBySeparatingStrings;
          if (ArrayBySeparatingStrings)
          {
            Count = CFArrayGetCount(ArrayBySeparatingStrings);
            if (Count >= 3)
            {
              v14 = Count;
              ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
              v16 = cfStringToNumber(ValueAtIndex);
              if ((v16 & 0x80000000) == 0)
              {
                v17 = v16;
                v18 = CFArrayGetValueAtIndex(v12, 1);
                v19 = cfStringToNumber(v18);
                if ((v19 & 0x80000000) == 0 && v14 <= 0x1000000000000000)
                {
                  v53 = v10;
                  v54 = v9;
                  v52 = v19 + 40 * v17;
                  v26 = malloc_type_malloc(8 * (v14 - 2), 0x10040436913F5uLL);
                  v56 = v14 - 2;
                  v25 = malloc_type_malloc(4 * (v14 - 2), 0x100004052888210uLL);
                  v28 = 0;
                  v29 = 1;
                  v55 = v12;
                  do
                  {
                    v30 = CFArrayGetValueAtIndex(v12, v28 + 2);
                    v31 = cfStringToNumber(v30);
                    if ((v31 & 0x80000000) != 0)
                    {
                      v20 = 0;
                      Length = 0;
                      v24 = 0;
                      v10 = v53;
                      v9 = v54;
                      goto LABEL_19;
                    }

                    v32 = v31;
                    if (v31)
                    {
                      v33 = 0;
                      LODWORD(v34) = 0;
                      v35 = -1;
                      v36 = v31;
                      do
                      {
                        v37 = v34;
                        v38 = v35;
                        v39 = v33;
                        v34 = (v34 + 1);
                        --v35;
                        ++v33;
                        v40 = v36 > 0x7F;
                        v36 >>= 7;
                      }

                      while (v40);
                      v41 = malloc_type_malloc(v34, 0x100004077774924uLL);
                      v42 = v37;
                      do
                      {
                        v41[v42] = v32 & 0x7F;
                        v32 >>= 7;
                        --v42;
                      }

                      while (!__CFADD__(v38++, 1));
                      v44 = v41;
                      v12 = v55;
                      v45 = v56;
                      if (v37)
                      {
                        do
                        {
                          *v44++ |= 0x80u;
                          --v39;
                        }

                        while (v39);
                      }

                      v26[v28] = v41;
                    }

                    else
                    {
                      LODWORD(v34) = 1;
                      v46 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
                      v26[v28] = v46;
                      *v46 = 0;
                      v45 = v56;
                    }

                    v25[v28] = v34;
                    v29 += v34;
                    ++v28;
                  }

                  while (v28 != v45);
                  Length = v29 + 2;
                  v20 = malloc_type_malloc((v29 + 2), 0x100004077774924uLL);
                  v47 = 0;
                  *v20 = 6;
                  v20[1] = v29;
                  v20[2] = v52;
                  v48 = v20 + 3;
                  v10 = v53;
                  v9 = v54;
                  do
                  {
                    if (v25[v47])
                    {
                      v49 = 0;
                      do
                      {
                        v48[v49] = *(v26[v47] + v49);
                        ++v49;
                      }

                      while (v49 < v25[v47]);
                      v48 += v49;
                    }

                    ++v47;
                  }

                  while (v47 != v56);
                  if (v26)
                  {
                    v50 = v12;
                    v51 = 0;
                    do
                    {
                      free(v26[v51++]);
                      v24 = 1;
                    }

                    while (v56 != v51);
                    v12 = v50;
                  }

                  else
                  {
                    v24 = 1;
                  }

LABEL_19:
                  free(v26);
                  free(v25);
                  if (v10)
                  {
                    CFRelease(v10);
                  }

                  if (v12)
                  {
                    CFRelease(v12);
                  }

                  free(v9);
                  if ((v24 & 1) == 0)
                  {
                    return 4294967246;
                  }

                  goto LABEL_15;
                }
              }
            }
          }

          v20 = 0;
          Length = 0;
        }

        else
        {
          v20 = 0;
          Length = 0;
          v12 = 0;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        goto LABEL_19;
      }

      free(v9);
      return 4294967246;
    }
  }

  return v5;
}

OSStatus CMSEncoderSetEncapsulatedContentType(CMSEncoderRef cmsEncoder, const SecAsn1Oid *eContentType)
{
  result = -50;
  if (cmsEncoder && eContentType && !*(cmsEncoder + 4))
  {
    v5 = *(cmsEncoder + 5);
    if (v5)
    {
      free(v5);
    }

    v6 = malloc_type_malloc(eContentType->Length, 0x100004077774924uLL);
    *(cmsEncoder + 5) = v6;
    memmove(v6, eContentType->Data, eContentType->Length);
    result = 0;
    *(cmsEncoder + 4) = eContentType->Length;
  }

  return result;
}

uint64_t cfStringToNumber(const __CFString *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = v1;
  v3[1] = v1;
  if (a1 && CFStringGetCString(a1, v3, 31, 0x600u))
  {
    return atoi(v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

OSStatus CMSEncoderCopyEncapsulatedContentType(CMSEncoderRef cmsEncoder, CFDataRef *eContentTypeOut)
{
  result = -50;
  if (cmsEncoder && eContentTypeOut)
  {
    v5 = *(cmsEncoder + 5);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = *(cmsEncoder + 4);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = CFDataCreate(0, v5, v6);
LABEL_7:
      result = 0;
      *eContentTypeOut = v7;
      return result;
    }

    return -108;
  }

  return result;
}

OSStatus CMSEncoderAddSignedAttributes(CMSEncoderRef cmsEncoder, CMSSignedAttributes signedAttributes)
{
  if (!cmsEncoder || *(cmsEncoder + 4))
  {
    return -50;
  }

  result = 0;
  *(cmsEncoder + 18) |= signedAttributes;
  return result;
}

uint64_t CMSEncoderSetSigningTime(uint64_t a1, double a2)
{
  if (!a1 || *(a1 + 16))
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 80) = a2;
  return result;
}

uint64_t CMSEncoderSetAppleCodesigningHashAgility(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*(a1 + 16))
  {
    return 4294967246;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  result = 0;
  *(a1 + 128) = cf;
  return result;
}

uint64_t CMSEncoderSetAppleCodesigningHashAgilityV2(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*(a1 + 16))
  {
    return 4294967246;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  result = 0;
  *(a1 + 136) = cf;
  return result;
}

uint64_t CMSEncoderSetAppleExpirationTime(uint64_t a1, double a2)
{
  if (!a1 || *(a1 + 16))
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 144) = a2;
  return result;
}

OSStatus CMSEncoderSetCertificateChainMode(CMSEncoderRef cmsEncoder, CMSCertificateChainMode chainMode)
{
  if (!cmsEncoder)
  {
    return -50;
  }

  result = -50;
  if (chainMode <= kCMSCertificateChainWithRootOrFail && !*(cmsEncoder + 4))
  {
    result = 0;
    *(cmsEncoder + 30) = chainMode;
  }

  return result;
}

OSStatus CMSEncoderGetCertificateChainMode(CMSEncoderRef cmsEncoder, CMSCertificateChainMode *chainModeOut)
{
  if (!cmsEncoder)
  {
    return -50;
  }

  result = 0;
  *chainModeOut = *(cmsEncoder + 30);
  return result;
}

OSStatus CMSEncoderUpdateContent(CMSEncoderRef cmsEncoder, const void *content, size_t contentLen)
{
  if (!cmsEncoder)
  {
    goto LABEL_8;
  }

  v6 = *(cmsEncoder + 4);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_14;
    }

    if (v6 != 3)
    {
LABEL_10:
      LODWORD(v7) = -2070;
      return v7;
    }

LABEL_8:
    LODWORD(v7) = -50;
    return v7;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LODWORD(v7) = cmsSetupCmsMsg(cmsEncoder);
    if (v7)
    {
      return v7;
    }
  }

  LODWORD(v7) = cmsSetupEncoder(cmsEncoder);
  if (v7)
  {
    return v7;
  }

  *(cmsEncoder + 4) = 2;
LABEL_14:
  v7 = SecCmsEncoderUpdate(*(cmsEncoder + 12), content, contentLen);
  if (v7)
  {

    LODWORD(v7) = cmsRtnToOSStatusDefault(v7, 0);
  }

  return v7;
}

uint64_t cmsSetupCmsMsg(uint64_t a1)
{
  if (*(a1 + 48) || *(a1 + 64))
  {
    *(a1 + 20) = 2 * (*(a1 + 56) != 0);
    v2 = cmsSetupForSignedData(a1);
  }

  else
  {
    v5 = *(a1 + 56);
    if (!v5)
    {
      return 4294967246;
    }

    *(a1 + 20) = 1;
    Count = CFArrayGetCount(v5);
    if (Count > 0xFFFFFFFFFFFFFFDLL)
    {
      v3 = 4294967188;
      goto LABEL_5;
    }

    v7 = Count;
    v8 = malloc_type_malloc(8 * Count + 8, 0x2004093837F09uLL);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v8[i] = CFArrayGetValueAtIndex(*(a1 + 56), i);
      }
    }

    v18 = -1431655766;
    v19 = -1431655766;
    v8[v7] = 0;
    v3 = SecSMIMEFindBulkAlgForRecipients(v8, &v19, &v18);
    free(v8);
    if (v3)
    {
      goto LABEL_5;
    }

    v10 = *(a1 + 88);
    if (v10)
    {
      SecCmsMessageDestroy(v10);
    }

    v11 = SecCmsMessageCreate();
    *(a1 + 88) = v11;
    if (!v11 || (v12 = SecCmsEnvelopedDataCreate(v11, v19, v18)) == 0)
    {
      v3 = 4294965226;
      goto LABEL_5;
    }

    v13 = v12;
    v14 = SecCmsContentInfoSetContent(*(a1 + 88), 0x1Bu, v12);
    if (!v14)
    {
      v14 = *(a1 + 40) ? SecCmsContentInfoSetContentOther(v13, 0, 0, (a1 + 32)) : SecCmsContentInfoSetContentData(v13, 0, *(a1 + 24));
      if (!v14)
      {
        if (!v7)
        {
          v3 = 0;
          goto LABEL_5;
        }

        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v15);
          v17 = nss_cmsrecipientinfo_create(v13, 0, ValueAtIndex, 0);
          if (SecCmsArrayAdd(*(*(v13 + 24) + 120), (v13 + 144), v17))
          {
            break;
          }

          v3 = 0;
          if (v7 == ++v15)
          {
            goto LABEL_5;
          }
        }

        v14 = 0xFFFFFFFFLL;
      }
    }

    v2 = cmsRtnToOSStatusDefault(v14, 0);
  }

  v3 = v2;
LABEL_5:
  *(a1 + 16) = 1;
  return v3;
}

uint64_t cmsSetupEncoder(uint64_t a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  *(a1 + 104) = Mutable;
  if (!Mutable)
  {
    return 4294967188;
  }

  result = SecCmsEncoderCreate(*(a1 + 88), 0, 0, Mutable, v3, 0, 0, 0, (a1 + 96));
  if (result)
  {

    return cmsRtnToOSStatusDefault(result, 0);
  }

  return result;
}

uint64_t cmsSetupForSignedData(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    SecCmsMessageDestroy(v2);
  }

  v3 = SecCmsMessageCreate();
  *(a1 + 88) = v3;
  if (!v3)
  {
    return 4294965226;
  }

  v4 = v3;
  v5 = PORT_ArenaAlloc(*(v3 + 120), 0xB8uLL);
  if (!v5)
  {
    return 4294965226;
  }

  v6 = v5;
  *(v5 + 176) = 0;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 24) = v4;
  v7 = SecCmsContentInfoSetContent(*(a1 + 88), 0x1Au, v5);
  if (!v7)
  {
    if (*(a1 + 40))
    {
      v7 = SecCmsContentInfoSetContentOther(v6, 0, *(a1 + 24), (a1 + 32));
      if (!v7)
      {
LABEL_12:
        v10 = *(a1 + 64);
        if (v10 && SecCmsSignedDataAddCertList(v6, v10))
        {
          v7 = 0xFFFFFFFFLL;
          goto LABEL_15;
        }

        v11 = *(a1 + 48);
        if (!v11)
        {
          return 0;
        }

        Count = CFArrayGetCount(v11);
        v13 = *(a1 + 120) >= 5u ? 2 : *(a1 + 120);
        if (Count < 1)
        {
          return 0;
        }

        v14 = Count;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v15);
          v17 = ValueAtIndex[2];
          CFRetain(v17);
          v18 = SecCmsSignerInfoCreate(v6, ValueAtIndex, *(a1 + 116));
          if (!v18)
          {
            v8 = 4294965226;
            goto LABEL_61;
          }

          v19 = v18;
          if (SecCmsSignerInfoIncludeCerts(v18, v13))
          {
LABEL_57:
            v23 = 0xFFFFFFFFLL;
            goto LABEL_60;
          }

          v20 = *(a1 + 72);
          if (v20)
          {
            if (SecCmsSignerInfoAddSMIMECaps(v19))
            {
              goto LABEL_57;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 2) != 0)
          {
            if (SecCmsSignerInfoAddSMIMEEncKeyPrefs_internal(v19, v17))
            {
              goto LABEL_57;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 4) != 0)
          {
            if (SecCmsSignerInfoAddMSSMIMEEncKeyPrefs_internal(v19, v17))
            {
              goto LABEL_57;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 8) != 0)
          {
            Current = *(a1 + 80);
            if (Current == 0.0)
            {
              Current = CFAbsoluteTimeGetCurrent();
              *(a1 + 80) = Current;
            }

            v22 = SecCmsSignerInfoAddSigningTime(v19, Current);
            if (v22)
            {
              break;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 0x10) != 0)
          {
            v23 = SecCmsSignerInfoAddAppleCodesigningHashAgility(v19, *(a1 + 128));
            v24 = *(a1 + 128);
            if (v24)
            {
              *(a1 + 128) = 0;
              CFRelease(v24);
            }

            if (v23)
            {
              goto LABEL_60;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 0x20) != 0)
          {
            v23 = SecCmsSignerInfoAddAppleCodesigningHashAgilityV2(v19, *(a1 + 136));
            v25 = *(a1 + 136);
            if (v25)
            {
              *(a1 + 136) = 0;
              CFRelease(v25);
            }

            if (v23)
            {
              goto LABEL_60;
            }

            v20 = *(a1 + 72);
          }

          if ((v20 & 0x40) != 0)
          {
            v22 = SecCmsSignerInfoAddAppleExpirationTime(v19, *(a1 + 144));
            if (v22)
            {
              break;
            }
          }

          if (v17)
          {
            CFRelease(v17);
          }

          v8 = 0;
          if (v14 == ++v15)
          {
            return v8;
          }
        }

        v23 = v22;
LABEL_60:
        v8 = cmsRtnToOSStatusDefault(v23, 0);
LABEL_61:
        if (v8 && v17)
        {
          CFRelease(v17);
        }

        return v8;
      }
    }

    else
    {
      v7 = SecCmsContentInfoSetContentData(v6, 0, *(a1 + 24));
      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_15:

  return cmsRtnToOSStatusDefault(v7, 0);
}

OSStatus CMSEncoderCopyEncodedContent(CMSEncoderRef cmsEncoder, CFDataRef *encodedContentOut)
{
  v2 = -50;
  if (!cmsEncoder || !encodedContentOut)
  {
    return v2;
  }

  v5 = *(cmsEncoder + 4);
  if (v5 >= 2)
  {
    if (v5 == 3)
    {
      return v2;
    }
  }

  else
  {
    if (*(cmsEncoder + 6) || *(cmsEncoder + 7) || !*(cmsEncoder + 8))
    {
      return v2;
    }

    v6 = cmsSetupForSignedData(cmsEncoder);
    if (v6)
    {
      return v6;
    }

    v6 = cmsSetupEncoder(cmsEncoder);
    if (v6)
    {
      return v6;
    }
  }

  v8 = SecCmsEncoderFinish(*(cmsEncoder + 12));
  *(cmsEncoder + 12) = 0;
  if (!v8)
  {
    *(cmsEncoder + 4) = 3;
    v9 = *(cmsEncoder + 13);
    if (v9)
    {
      if ((*(cmsEncoder + 112) & 1) == 0)
      {
        if (*(cmsEncoder + 5) > 1u)
        {
          coder = 0;
          v12 = 0uLL;
          v2 = SecAsn1CoderCreate(&coder);
          if (!v2)
          {
            if (CFDataGetLength(*(cmsEncoder + 13)) < 0)
            {
              return -108;
            }

            else
            {
              Length = CFDataGetLength(*(cmsEncoder + 13));
              MutableBytePtr = CFDataGetMutableBytePtr(*(cmsEncoder + 13));
              v2 = cmsContentInfoContent(coder, Length, MutableBytePtr, &v12);
              if (!v2)
              {
                v2 = CMSEncode(0, *(cmsEncoder + 7), &CSSMOID_PKCS7_SignedData, 0, 0, *(&v12 + 1), v12, encodedContentOut);
              }

              if (coder)
              {
                SecAsn1CoderRelease(coder);
              }
            }
          }
        }

        else
        {
          v2 = 0;
          *encodedContentOut = CFDataCreateCopy(0, v9);
        }

        return v2;
      }
    }

    else if ((*(cmsEncoder + 112) & 1) == 0)
    {
      return -2070;
    }

    v2 = 0;
    *encodedContentOut = 0;
    return v2;
  }

  return cmsRtnToOSStatusDefault(v8, 0);
}

uint64_t cmsContentInfoContent(uint64_t *a1, unint64_t a2, char *a3, _OWORD *a4)
{
  v7 = 0u;
  v8 = 0u;
  result = 4294967246;
  if (a1 && a3)
  {
    if (SEC_ASN1Decode(*a1, &v7, &cmsSimpleContentInfoTemplate, a3, a2))
    {
      return 4294941021;
    }

    else if (*(&v8 + 1))
    {
      result = 0;
      *a4 = v8;
    }

    else
    {
      return 4294965226;
    }
  }

  return result;
}

OSStatus CMSEncode(CFTypeRef signers, CFTypeRef recipients, const SecAsn1Oid *eContentType, Boolean detachedContent, CMSSignedAttributes signedAttributes, const void *content, size_t contentLen, CFDataRef *encodedContentOut)
{
  updated = -50;
  if (!(signers | recipients))
  {
    return updated;
  }

  if (!encodedContentOut)
  {
    return updated;
  }

  v13 = detachedContent;
  cmsEncoderOut = 0xAAAAAAAAAAAAAAAALL;
  updated = CMSEncoderCreate(&cmsEncoderOut);
  if (updated)
  {
    return updated;
  }

  v17 = cmsEncoderOut;
  if (signers)
  {
    v18 = CMSEncoderAddSigners(cmsEncoderOut, signers);
    if (v18)
    {
      goto LABEL_10;
    }
  }

  if (recipients)
  {
    v18 = CMSEncoderAddRecipients(v17, recipients);
    if (v18)
    {
      goto LABEL_10;
    }
  }

  if (eContentType)
  {
    v18 = CMSEncoderSetEncapsulatedContentType(v17, eContentType);
    if (v18)
    {
      goto LABEL_10;
    }
  }

  if (v13)
  {
    if (!v17)
    {
      return -50;
    }

    if (*(v17 + 4))
    {
LABEL_21:
      updated = -50;
      goto LABEL_12;
    }

    *(v17 + 24) = v13;
  }

  if (!signedAttributes)
  {
    goto LABEL_24;
  }

  if (!v17)
  {
    return -50;
  }

  if (*(v17 + 4))
  {
    goto LABEL_21;
  }

  *(v17 + 18) |= signedAttributes;
LABEL_24:
  updated = CMSEncoderUpdateContent(v17, content, contentLen);
  if (!updated)
  {
    v18 = CMSEncoderCopyEncodedContent(v17, encodedContentOut);
LABEL_10:
    updated = v18;
  }

  if (v17)
  {
LABEL_12:
    CFRelease(v17);
  }

  return updated;
}

OSStatus CMSEncodeContent(CFTypeRef signers, CFTypeRef recipients, CFTypeRef eContentTypeOID, Boolean detachedContent, CMSSignedAttributes signedAttributes, const void *content, size_t contentLen, CFDataRef *encodedContentOut)
{
  v18 = 0;
  v19 = 0;
  if (eContentTypeOID)
  {
    v15 = &v18;
    if (convertOid(eContentTypeOID, &v18))
    {
      return -50;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = CMSEncode(signers, recipients, v15, detachedContent, signedAttributes, content, contentLen, encodedContentOut);
  if (v19)
  {
    free(v19);
  }

  return v16;
}

uint64_t CMSEncoderGetCmsMessage(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      result = 0;
      *a2 = v5;
    }

    else
    {
      result = cmsSetupCmsMsg(a1);
      if (!result)
      {
        *a2 = *(a1 + 88);
        *(a1 + 16) = 1;
      }
    }
  }

  return result;
}

uint64_t CMSEncoderSetEncoder(uint64_t a1, uint64_t a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 16);
      if (v5 == 1 || !v5 && (result = cmsSetupCmsMsg(a1), !result))
      {
        result = 0;
        *(a1 + 96) = a2;
        *(a1 + 16) = 2;
        *(a1 + 112) = 1;
      }
    }
  }

  return result;
}

uint64_t CMSEncoderGetEncoder(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 96);
    }
  }

  return result;
}

uint64_t nss_cmsrecipientinfo_create(uint64_t a1, int a2, void *a3, size_t *a4)
{
  v8 = *(*(a1 + 24) + 120);
  v9 = PORT_ArenaAlloc(v8, 0x98uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *(v9 + 136) = a1;
  *(v9 + 144) = 0;
  if (!a3)
  {
    return 0;
  }

  CFRetain(a3);
  *(v10 + 144) = a3;
  v11 = a3[27];
  v28[0] = a3[28];
  v28[1] = v11;
  v12 = a3[29];
  v28[2] = a3[30];
  v28[3] = v12;
  if (!v11 || (OID = SECOID_FindOID(v28)) == 0)
  {
    v15 = -8186;
    goto LABEL_11;
  }

  v14 = *(OID + 16);
  v15 = -8186;
  if (v14 > 57)
  {
    switch(v14)
    {
      case 58:
        goto LABEL_21;
      case 174:
        if (a2 == 1)
        {
          return 0;
        }

        *v10 = 1;
        if (!*(v10 + 32))
        {
          return 0;
        }

        break;
      case 202:
        if (a2 == 1)
        {
          return 0;
        }

        *v10 = 1;
        CertIssuerAndSN = CERT_GetCertIssuerAndSN(v8, a3);
        *(v10 + 32) = CertIssuerAndSN;
        if (!CertIssuerAndSN)
        {
          return 0;
        }

        break;
      default:
        goto LABEL_11;
    }

    v21 = PORT_ArenaAlloc(v8, 0x48uLL);
    if (!v21)
    {
      return 0;
    }

    v22 = v21;
    *(v21 + 64) = 0;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v23 = CERT_GetCertIssuerAndSN(v8, a3);
    *(v22 + 8) = v23;
    if (!v23)
    {
      return 0;
    }

    *(v10 + 24) = 2;
    if (SecCmsArrayAdd(v8, (v10 + 128), v22) == -1)
    {
      return 0;
    }
  }

  else
  {
    if (v14 != 16)
    {
      if (v14 != 54 && v14 != 56)
      {
LABEL_11:
        ThreadErrInfo = PR_getThreadErrInfo(1, &v29);
        if (ThreadErrInfo)
        {
          *ThreadErrInfo = 0;
          ThreadErrInfo[1] = v15;
        }

        return 0;
      }

LABEL_21:
      if (a2 == 1)
      {
        return 0;
      }

      *v10 = 0;
      *(v10 + 24) = 0;
      v19 = CERT_GetCertIssuerAndSN(v8, a3);
      *(v10 + 32) = v19;
      if (!v19)
      {
        return 0;
      }

      goto LABEL_35;
    }

    *v10 = 0;
    *(v10 + 24) = a2;
    if (a2)
    {
      v20 = PORT_ArenaAlloc(v8, 0x10uLL);
      *(v10 + 32) = v20;
      if (!v20)
      {
        goto LABEL_45;
      }

      if (SECITEM_CopyItem(v8, v20, a4))
      {
        v15 = -8077;
        goto LABEL_11;
      }

      if (!*(*(v10 + 32) + 8))
      {
LABEL_45:
        v15 = -8173;
        goto LABEL_11;
      }
    }

    else
    {
      *(v10 + 32) = CERT_GetCertIssuerAndSN(v8, a3);
    }
  }

LABEL_35:
  v24 = *v10;
  if (*v10 == 2)
  {
    v26 = (v10 + 8);
    v27 = v8;
    v25 = 4;
  }

  else if (v24 == 1)
  {
    v26 = (v10 + 8);
    v27 = v8;
    v25 = 3;
  }

  else
  {
    if (v24)
    {
      goto LABEL_42;
    }

    v25 = 2 * (*(v10 + 24) != 0);
    v26 = (v10 + 8);
    v27 = v8;
  }

  if (SEC_ASN1EncodeInteger(v27, v26, v25))
  {
LABEL_42:
    if (!SecCmsArrayAdd(*(*(a1 + 24) + 120), (a1 + 144), v10))
    {
      return v10;
    }
  }

  return 0;
}

const __CFData *SecCmsRecipientInfoCreateWithSubjKeyIDFromCert(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = SecCertificateGetSubjectKeyID(a2);
      if (result)
      {
        v5 = result;
        if (CFDataGetLength(result) < 0)
        {
          return 0;
        }

        else
        {
          v6[0] = CFDataGetLength(v5);
          v6[1] = CFDataGetBytePtr(v5);
          return nss_cmsrecipientinfo_create(a1, 1, a2, v6);
        }
      }
    }
  }

  return result;
}

void SecCmsContentInfoDestroy(uint64_t *a1)
{
  if (a1)
  {
    OID = a1[4];
    if (OID || (OID = SECOID_FindOID(a1), (a1[4] = OID) != 0))
    {
      v3 = *(OID + 16);
      if (v3 > 28)
      {
        if (v3 == 29 || v3 == 30)
        {
          v4 = a1[2];
          if (v4)
          {
            SecCmsContentInfoDestroy(v4);
          }
        }
      }

      else if (v3 == 26)
      {
        SecCmsSignedDataDestroy(a1[2]);
      }

      else if (v3 == 27)
      {
        SecCmsEnvelopedDataDestroy(a1[2]);
      }
    }

    v5 = a1[13];
    if (v5)
    {
      SecCmsDigestContextCancel(v5);
      a1[13] = 0;
    }

    v6 = a1[10];
    if (v6)
    {
      a1[10] = 0;
      CFRelease(v6);
    }

    v7 = a1[14];
    if (v7)
    {
      a1[14] = 0;
      CFRelease(v7);
    }

    v8 = a1[12];
    if (v8)
    {
      CCCryptorRelease(*v8);
      free(v8);
      a1[12] = 0;
    }
  }
}

uint64_t SecCmsContentInfoGetContentTypeTag(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return *(result + 16);
  }

  result = SECOID_FindOID(a1);
  *(a1 + 32) = result;
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t SecCmsContentInfoGetChildContentInfo(uint64_t a1)
{
  result = *(a1 + 32);
  if (result || (result = SECOID_FindOID(a1), (*(a1 + 32) = result) != 0))
  {
    v3 = *(result + 16);
    v4 = v3 > 0x1E;
    v5 = (1 << v3) & 0x6C000000;
    if (v4 || v5 == 0)
    {
      return 0;
    }

    else
    {
      return *(a1 + 16);
    }
  }

  return result;
}

uint64_t SecCmsContentInfoSetContent(size_t *a1, unsigned int a2, size_t a3)
{
  pthread_once(&hash_once, InitOIDHashOnce);
  if (a2 <= 0xD8)
  {
    v6 = &oids[40 * a2];
  }

  else
  {
    v6 = 0;
  }

  a1[4] = v6;
  if (a2 > 0xD8)
  {
    return 4294967246;
  }

  if (SECITEM_CopyItem(*(a1[3] + 120), a1, v6))
  {
    return 4294967188;
  }

  a1[2] = a3;
  if (a2 != 25)
  {
    v9 = SECITEM_AllocItem(*(a1[3] + 120), 0, 1uLL);
    a1[9] = v9;
    if (!v9)
    {
      ThreadErrInfo = PR_getThreadErrInfo(1, &v11);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE01300000000;
      }

      return 4294967188;
    }
  }

  return 0;
}

uint64_t SecCmsContentInfoSetContentData(size_t *a1, CFDataRef theData, int a3)
{
  if (theData)
  {
    if (CFDataGetLength(theData) < 0)
    {
      return 4294967188;
    }

    v6 = PORT_ArenaAlloc(*(a1[3] + 120), 0x10uLL);
    Length = CFDataGetLength(theData);
    *v6 = Length;
    if (Length)
    {
      v8 = PORT_ArenaAlloc(*(a1[3] + 120), Length);
      v6[1] = v8;
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(v8, BytePtr, *v6);
    }

    else
    {
      v6[1] = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (SecCmsContentInfoSetContent(a1, 0x19u, v6))
  {
    Error = PORT_GetError();
    ThreadErrInfo = PR_getThreadErrInfo(1, &v13);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
    }

    else if (!v6)
    {
      v6 = SECITEM_AllocItem(*(a1[3] + 120), 0, 1uLL);
    }

    Error = 0;
    a1[9] = v6;
  }

  return Error;
}

uint64_t SecCmsContentInfoSetContentOther(uint64_t a1, void *a2, int a3, size_t *a4)
{
  if (SECITEM_CopyItem(*(*(a1 + 24) + 120), a1, a4))
  {
    return 4294967188;
  }

  pthread_once(&hash_once, InitOIDHashOnce);
  v8 = PORT_ArenaAlloc(*(*(a1 + 24) + 120), 0x28uLL);
  if (v8)
  {
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
  }

  *(a1 + 32) = v8;
  *v8 = xmmword_1E70D92B8;
  *(v8 + 16) = unk_1E70D92C8;
  *(v8 + 32) = 0;
  if (SECITEM_CopyItem(*(*(a1 + 24) + 120), *(a1 + 32), a4))
  {
    return 4294967188;
  }

  *(a1 + 16) = a2;
  if (a3)
  {
    a2 = 0;
  }

  else if (!a2)
  {
    a2 = SECITEM_AllocItem(*(*(a1 + 24) + 120), 0, 1uLL);
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t SecCmsContentInfoGetContent(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (!v1)
    {
      return 0;
    }

    v2 = *(v1 + 16);
    v3 = v2 > 0x1E;
    v4 = (1 << v2) & 0x6E000000;
    if (v3 || v4 == 0)
    {
      return 0;
    }

    else
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t SecCmsContentInfoGetInnerContent(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2 || (result = SECOID_FindOID(a1), v2 = result, (*(v1 + 32) = result) != 0))
  {
    result = 0;
    v4 = *(v2 + 16);
    if (v4 <= 0x1E)
    {
      if (((1 << v4) & 0x6C000000) != 0)
      {
        result = SecCmsContentInfoGetChildContentInfo(v1);
        if (!result)
        {
          return result;
        }

        v1 = result;
        v5 = *(result + 32);
        if (!v5)
        {
          return 0;
        }

        v6 = *(v5 + 16);
        v7 = v6 > 0x1E;
        v8 = (1 << v6) & 0x6E000000;
        if (v7 || v8 == 0)
        {
          return 0;
        }
      }

      else if (v4 != 25)
      {
        return result;
      }

      return *(v1 + 16);
    }
  }

  return result;
}

uint64_t SecCmsContentInfoGetContentTypeOID(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    result = SECOID_FindOID(a1);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t SecCmsContentInfoGetContentEncAlgTag(uint64_t a1)
{
  result = *(a1 + 92);
  if (!result)
  {
    if (*(a1 + 48))
    {
      result = SECOID_FindOID(a1 + 40);
      if (result)
      {
        result = *(result + 16);
      }
    }

    else
    {
      result = 0;
    }

    *(a1 + 92) = result;
  }

  return result;
}

uint64_t SecCmsContentInfoSetContentEncAlg(uint64_t a1, unsigned int a2, size_t *a3, int a4)
{
  result = SECOID_SetAlgorithmID(*(*(a1 + 24) + 120), (a1 + 40), a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 88) = a4;
  return result;
}

uint64_t SecCmsContentInfoSetContentEncAlgID(uint64_t a1, size_t *a2, int a3)
{
  if (SECOID_CopyAlgorithmID(*(*(a1 + 24) + 120), (a1 + 40), a2))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 88) = a3;
  }

  return result;
}

void SecCmsContentInfoSetBulkKey(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    if (a1)
    {
      *(a1 + 80) = cf;
      Length = CFDataGetLength(cf);
      if (Length > 0xFFFFFFF)
      {
        v6 = *(a1 + 80);
        if (v6)
        {
          *(a1 + 80) = 0;
          CFRelease(v6);
        }

        v5 = 0;
      }

      else
      {
        v5 = 8 * Length;
      }

      *(a1 + 88) = v5;
    }
  }
}

uint64_t SecCmsContentInfoGetBulkKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 80);
  if (v1)
  {
    CFRetain(*(a1 + 80));
  }

  return v1;
}

const SecAsn1Template *cms_attr_choose_attr_value_template(const SecAsn1Template *result, int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (a2 && LOBYTE(result[1].sub))
  {
    return kSecAsn1AnyTemplate;
  }

  OID = *&result[1].kind;
  if (OID || (OID = SECOID_FindOID(v3), (*&v3[1].kind = OID) != 0))
  {
    v5 = *(OID + 16);
    v6 = 1;
    result = kSecAsn1AnyTemplate;
    if (v5 <= 33)
    {
      if ((v5 - 31) >= 2)
      {
        if (v5 == 33)
        {
          result = kSecAsn1ObjectIDTemplate;
          v6 = 0;
        }

        else
        {
          v6 = 1;
        }

        if (!a2)
        {
          goto LABEL_21;
        }

        return result;
      }

LABEL_17:
      v6 = 0;
      result = kSecAsn1IA5StringTemplate;
      if (a2)
      {
        return result;
      }

      goto LABEL_21;
    }

    if (v5 == 34 || v5 == 214)
    {
      v6 = 0;
      result = kSecAsn1OctetStringTemplate;
    }

    else if (v5 == 99)
    {
      goto LABEL_17;
    }

    if (a2)
    {
      return result;
    }

    goto LABEL_21;
  }

  v6 = 1;
  result = kSecAsn1AnyTemplate;
  if (!a2)
  {
LABEL_21:
    LOBYTE(v3[1].sub) = v6;
  }

  return result;
}

unint64_t SecCmsAttributeCreate(uint64_t a1, unsigned int a2, unint64_t *a3, char a4)
{
  v8 = PORT_ArenaAlloc(a1, 0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    pthread_once(&hash_once, InitOIDHashOnce);
    if (a2 <= 0xD8)
    {
      v10 = &oids[40 * a2];
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10;
    if (a2 > 0xD8)
    {
      return 0;
    }

    if (SECITEM_CopyItem(a1, v9, v10))
    {
      return 0;
    }

    if (a3 && ((v12 = SECITEM_AllocItem(a1, 0, *a3)) == 0 || (v13 = v12, SECITEM_CopyItem(a1, v12, a3)) || SecCmsArrayAdd(a1, (v9 + 16), v13)))
    {
      return 0;
    }

    else
    {
      *(v9 + 32) = a4;
    }
  }

  return v9;
}

const void *SecCmsAttributeCompareValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  result = v3[1];
  if (!result)
  {
    return result;
  }

  v5 = *v3;
  if (!*v3 || *(v2 + 8) || v5 != *a2)
  {
    return 0;
  }

  return (memcmp(result, *(a2 + 8), v5) == 0);
}

uint64_t SecCmsAttributeArrayFindAttrByOidTag(uint64_t *a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  pthread_once(&hash_once, InitOIDHashOnce);
  v6 = a2 <= 0xD8 ? &oids[40 * a2] : 0;
  if (a2 > 0xD8)
  {
    return 0;
  }

  v7 = *v5;
  if (*v5)
  {
    v9 = *v6;
    while (1)
    {
      v10 = v5 + 1;
      if (*v7 == v9)
      {
        v11 = v6[1];
        if (!memcmp(*(v7 + 8), v11, v9))
        {
          break;
        }
      }

      v7 = *v10;
      ++v5;
      if (!*v10)
      {
        return v7;
      }
    }

    if (a3)
    {
      v12 = *v10;
      if (*v10)
      {
        v13 = 2;
        while (*v12 != v9 || memcmp(*(v12 + 8), v11, v9))
        {
          v12 = v5[v13++];
          if (!v12)
          {
            return v7;
          }
        }

        return 0;
      }
    }
  }

  return v7;
}

uint64_t SecCmsAttributeArrayAddAttr(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  OID = SECOID_FindOID(a3);
  if (OID)
  {
    v7 = *(OID + 16);
  }

  else
  {
    v7 = 0;
  }

  if (SecCmsAttributeArrayFindAttrByOidTag(*a2, v7, 0))
  {
    return 0xFFFFFFFFLL;
  }

  result = SecCmsArrayAdd(a1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsAttributeArraySetAttr(uint64_t a1, uint64_t **a2, unsigned int a3, unint64_t *a4)
{
  AttrByOidTag = SecCmsAttributeArrayFindAttrByOidTag(*a2, a3, 0);
  if (AttrByOidTag)
  {
    v9 = AttrByOidTag;
    result = 0;
    **(v9 + 16) = a4;
    *(v9 + 32) = 0;
  }

  else
  {
    v11 = SecCmsAttributeCreate(a1, a3, a4, 0);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    result = SecCmsArrayAdd(a1, a2, v11);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t SecCmsCipherContextStart(uint64_t a1, CFDataRef theData, uint64_t a3, int a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = 0xAAAAAAAAAAAAAAAALL;
  v22 = 8;
  iv = v24;
  cryptorRef = 0;
  if (CFDataGetLength(theData) < 0)
  {
    return 0;
  }

  result = SECOID_FindOID(a3);
  if (!result)
  {
    return result;
  }

  v9 = result;
  result = 0;
  v10 = *(v9 + 16);
  v11 = 1;
  if (v10 > 183)
  {
    if ((v10 - 184) > 4 || ((1 << (v10 + 72)) & 0x15) == 0)
    {
      return result;
    }

    v11 = 0;
    v13 = 16;
    v22 = 16;
    v14 = 16;
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (CCRandomCopyBytes())
    {
      return 0;
    }

    if (v10 <= 0xE && ((1 << v10) & 0x5EC0) != 0 || (result = 0, (v10 - 153) <= 0x23) && ((1 << (v10 + 103)) & 0xFC0000001) != 0)
    {
      result = SEC_ASN1EncodeItem(a1, (a3 + 16), &v22, kSecAsn1OctetStringTemplate);
      if (result)
      {
        goto LABEL_31;
      }
    }

    return result;
  }

  switch(v10)
  {
    case 5:
      v11 = 5;
      break;
    case 7:
      v11 = 2;
      break;
    case 10:
      break;
    default:
      return result;
  }

  v13 = 8;
  v14 = 8;
  if (a4)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (v10 <= 0xE && ((1 << v10) & 0x5EC0) != 0 || (result = 0, (v10 - 153) <= 0x23) && ((1 << (v10 + 103)) & 0xFC0000001) != 0)
  {
    v19 = 0;
    v20 = 0;
    if (!SEC_ASN1Decode(0, &v19, kSecAsn1OctetStringTemplate, *(a3 + 24), *(a3 + 16)))
    {
      v15 = v20;
      if (v13 == v19)
      {
        __memcpy_chk();
        if (v15)
        {
          free(v15);
        }

LABEL_31:
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        if (CCCryptorCreate(a4 == 0, v11, 1u, BytePtr, Length, iv, &cryptorRef))
        {
          v18 = cryptorRef;
        }

        else
        {
          result = PORT_ZAlloc(0x10uLL);
          v18 = cryptorRef;
          if (result)
          {
            *result = cryptorRef;
            *(result + 8) = a4;
            *(result + 12) = v14;
            return result;
          }
        }

        if (v18)
        {
          CCCryptorRelease(v18);
        }

        return 0;
      }

      if (v20)
      {
        free(v20);
      }
    }

    return 0;
  }

  return result;
}

uint64_t SecCmsCipherContextCrypt(CCCryptorRef *a1, char *dataOut, _DWORD *a3, size_t dataOutAvailable, void *dataIn, size_t dataInLength, int a7)
{
  v8 = dataOutAvailable;
  dataOutMoved = 0;
  if (dataInLength)
  {
    v12 = CCCryptorUpdate(*a1, dataIn, dataInLength, dataOut, dataOutAvailable, &dataOutMoved);
    if (!a7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }
  }

  if (!v12)
  {
    v15 = 0;
    v12 = CCCryptorFinal(*a1, &dataOut[dataOutMoved], v8 - dataOutMoved, &v15);
    dataOutMoved += v15;
  }

LABEL_7:
  if (v12)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v15);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00200000000;
    }
  }

  else if (a3)
  {
    *a3 = dataOutMoved;
  }

  return v12;
}

void *PL_NewHashTable(uint64_t a1, uint64_t a2)
{
  v4 = defaultHashAllocOps(0, 56);
  v5 = v4;
  if (v4)
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 48) = 0;
    *(v4 + 32) = 0u;
    *(v4 + 12) = 28;
    v6 = defaultHashAllocOps(0, 0x80uLL);
    *v5 = v6;
    if (v6)
    {
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v5[2] = a1;
      v5[3] = a2;
      v5[4] = PL_CompareValues;
      v5[5] = &defaultHashAllocOps;
      v5[6] = 0;
    }

    else
    {
      off_1EE3E0928(0, v5);
      return 0;
    }
  }

  return v5;
}

void DefaultFreeEntry(int a1, void *a2, int a3)
{
  if (a3 == 1)
  {
    free(a2);
  }
}

void *DefaultAllocTable(uint64_t a1, size_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  return malloc_type_malloc(v2, 0x64033449uLL);
}

uint64_t *PL_HashTableRawLookup(uint64_t a1, int a2, uint64_t a3)
{
  v3 = (*a1 + 8 * ((-1640531527 * a2) >> *(a1 + 12)));
  v4 = *v3;
  if (*v3)
  {
    v8 = (*a1 + 8 * ((-1640531527 * a2) >> *(a1 + 12)));
    while (1)
    {
      v9 = v4;
      if (*(v4 + 8) == a2)
      {
        if ((*(a1 + 24))(a3, *(v4 + 16)))
        {
          break;
        }
      }

      v4 = *v9;
      v8 = v9;
      if (!*v9)
      {
        return v9;
      }
    }

    if (v8 != v3)
    {
      *v8 = *v9;
      *v9 = *v3;
      *v3 = v9;
    }
  }

  return v3;
}

uint64_t cmsAppendToArray(uint64_t cf, CFMutableArrayRef *a2, uint64_t a3)
{
  if (cf)
  {
    v5 = cf;
    if (!*a2)
    {
      *a2 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    v6 = CFGetTypeID(v5);
    if (v6 == CFArrayGetTypeID())
    {
      v7.length = CFArrayGetCount(v5);
      v7.location = 0;
      CFArrayAppendArray(*a2, v5, v7);
      return 0;
    }

    if (v6 == a3)
    {
      CFArrayAppendValue(*a2, v5);
      return 0;
    }

    return 4294967246;
  }

  return cf;
}

uint64_t cmsRtnToOSStatusDefault(uint64_t a1, unsigned int a2)
{
  Error = a1;
  if (a1 == -1)
  {
    Error = PORT_GetError();
    ThreadErrInfo = PR_getThreadErrInfo(1, &v7);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0;
    }

    if (!Error)
    {
LABEL_13:
      if (a2)
      {
        return a2;
      }

      else
      {
        return 4294965226;
      }
    }
  }

  if ((Error + 0x2000) > 0x3E7)
  {
    return Error;
  }

  if (Error > -8106)
  {
    switch(Error)
    {
      case 0xFFFFE057:
        return 4294967168;
      case 0xFFFFE05A:
        return 4294899565;
      case 0xFFFFE08C:
        return 4294941988;
    }

    goto LABEL_13;
  }

  v5 = Error + 0x2000;
  Error = 4294942039;
  switch(v5)
  {
    case 0:
      Error = 4294967260;
      break;
    case 2:
    case 9:
      return Error;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      Error = 4294967246;
      break;
    case 10:
    case 47:
      Error = 4294899608;
      break;
    case 11:
    case 30:
      Error = 4294899478;
      break;
    case 12:
      Error = 4294899476;
      break;
    case 13:
    case 20:
    case 21:
      Error = 4294899453;
      break;
    case 19:
      Error = 4294967188;
      break;
    case 38:
      return 4294899565;
    case 39:
      Error = 4294965226;
      break;
    default:
      goto LABEL_13;
  }

  return Error;
}

uint64_t nss_cmssignerinfo_create(char **a1, int a2, void *a3, size_t *a4, const void *a5, const void *a6, unsigned int a7)
{
  v14 = *(a1[3] + 15);
  v15 = PORT_ArenaAlloc(v14, 0xD0uLL);
  v16 = v15;
  if (v15)
  {
    v15[11] = 0u;
    v15[12] = 0u;
    v15[9] = 0u;
    v15[10] = 0u;
    v15[7] = 0u;
    v15[8] = 0u;
    v15[5] = 0u;
    v15[6] = 0u;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[1] = 0u;
    v15[2] = 0u;
    *v15 = 0u;
    *(v15 + 16) = a1;
    if (a2)
    {
      *(v15 + 4) = 1;
      if (!a4)
      {
        return 0;
      }

      v17 = PORT_ArenaAlloc(v14, 0x10uLL);
      *(v16 + 24) = v17;
      if (SECITEM_CopyItem(v14, v17, a4))
      {
        return 0;
      }

      if (!a5)
      {
        *(v16 + 176) = 0;
        return 0;
      }

      CFRetain(a5);
      *(v16 + 176) = a5;
      if (!a6)
      {
        return 0;
      }
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      CFRetain(a3);
      *(v16 + 136) = a3;
      CertIssuerAndSN = CERT_GetCertIssuerAndSN(v14, a3);
      *(v16 + 24) = CertIssuerAndSN;
      if (!a6 || !CertIssuerAndSN)
      {
        return 0;
      }
    }

    CFRetain(a6);
    *(v16 + 168) = a6;
    if (*(v16 + 16) == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }

    SEC_ASN1EncodeInteger(v14, v16, v19);
    if (SECOID_SetAlgorithmID(v14, (v16 + 32), a7, 0) || SecCmsArrayAdd(*(a1[3] + 15), a1 + 20, v16))
    {
      return 0;
    }

    OID = SECOID_FindOID(v16 + 32);
    v21 = OID ? *(OID + 16) : 0;
    if (SecCmsSignedDataSetDigestValue(a1, v21, 0))
    {
      return 0;
    }
  }

  return v16;
}

uint64_t SecCmsSignerInfoCreate(char **a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 16);
  CFRetain(v6);
  v7 = *(a2 + 24);
  CFRetain(v7);
  v8 = SecKeyCopyAttributes(v7);
  v9 = v8;
  if (!v8 || (Value = CFDictionaryGetValue(v8, @"kcls")) == 0 || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()) || !CFEqual(v11, @"1"))
  {
    v13 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = nss_cmssignerinfo_create(a1, 0, v6, 0, 0, v7, a3);
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v13;
}

uint64_t SecCmsSignerInfoGetDigestAlgTag(uint64_t a1)
{
  result = SECOID_FindOID(a1 + 32);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t SecCmsSignerInfoVerifyCertificate(uint64_t a1, const void *a2, SecTrustRef *a3)
{
  *&v28 = NAN;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = *(*(a1 + 128) + 144);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = v7 + 1;
      while (1)
      {
        if ((*v8 & 0x8000000000000000) != 0)
        {
            ;
          }
        }

        v10 = SecCertificateCreateWithBytes(0, *(v8 + 8), *v8);
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = v10;
        v12 = *(a1 + 16);
        if (v12 == 1)
        {
          break;
        }

        if (!v12)
        {
          if (CERT_CheckIssuerAndSerial(v10, (*(a1 + 24) + 24), (*(a1 + 24) + 8)))
          {
            goto LABEL_13;
          }

LABEL_12:
          CFArrayAppendValue(Mutable, v11);
        }

LABEL_14:
        CFRelease(v11);
LABEL_15:
        v18 = *v9++;
        v8 = v18;
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      SubjectKeyID = SecCertificateGetSubjectKeyID(v10);
      v14 = *(a1 + 24);
      v15 = *v14;
      if (v15 == CFDataGetLength(SubjectKeyID))
      {
        v16 = v14[1];
        BytePtr = CFDataGetBytePtr(SubjectKeyID);
        if (!memcmp(v16, BytePtr, *v14))
        {
LABEL_13:
          CFArrayInsertValueAtIndex(Mutable, 0, v11);
          goto LABEL_14;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_16:
  if (!CFArrayGetCount(Mutable) && !*(a1 + 16))
  {
    v19 = CERT_FindByIssuerAndSN(*(*(a1 + 128) + 176), @"cert", *(a1 + 24));
    if (v19)
    {
      v20 = v19;
      CFArrayAppendValue(Mutable, v19);
      CFRelease(v20);
    }
  }

  if (!CFArrayGetCount(Mutable) && *(a1 + 16) == 1)
  {
    v22 = CERT_FindBySubjectKeyID(*(*(a1 + 128) + 176), @"cert", *(a1 + 24));
    if (v22)
    {
      v23 = v22;
      CFArrayAppendValue(Mutable, v22);
      CFRelease(v23);
    }
  }

  if (Mutable)
  {
    SecCmsSignerInfoGetSigningTime(a1, &v28, v21);
    if (v24)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *&v28 = Current;
    }

    else
    {
      Current = *&v28;
    }

    v26 = CERT_VerifyCert(Mutable, a2, a3, Current);
    CFRelease(Mutable);
    if ((!a3 || v26) && PORT_GetError() == -8171 && *(a1 + 160) == 1)
    {
      *(a1 + 160) = 5;
    }
  }

  else
  {
    *(a1 + 160) = 4;
    return 0xFFFFFFFFLL;
  }

  return v26;
}

double SecCmsSignerInfoGetSigningTime(uint64_t a1, double *a2, double result)
{
  if (a1)
  {
    result = *(a1 + 152);
    if (result == 0.0)
    {
      AttrByOidTag = SecCmsAttributeArrayFindAttrByOidTag(*(a1 + 64), 0x23u, 1);
      if (AttrByOidTag)
      {
        v6 = *(AttrByOidTag + 16);
        v7 = *v6;
        if (*v6)
        {
          if (v7[1] && *v7 && !*(v6 + 8) && !SecAsn1DecodeTime(v7, a2))
          {
            result = *a2;
            *(a1 + 152) = *a2;
          }
        }
      }
    }

    else
    {
      *a2 = result;
    }
  }

  return result;
}

const void *SecCmsSignerInfoGetSigningCert_internal(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    v4 = *(*(a1 + 128) + 144);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v4 + 1;
        do
        {
          if ((*v5 & 0x8000000000000000) != 0)
          {
              ;
            }
          }

          v7 = SecCertificateCreateWithBytes(0, *(v5 + 8), *v5);
          if (v7)
          {
            v1 = v7;
            v8 = *(a1 + 16);
            if (v8 == 1)
            {
              SubjectKeyID = SecCertificateGetSubjectKeyID(v7);
              v10 = *(a1 + 24);
              v11 = *v10;
              if (v11 == CFDataGetLength(SubjectKeyID))
              {
                v12 = v10[1];
                BytePtr = CFDataGetBytePtr(SubjectKeyID);
                if (!memcmp(v12, BytePtr, *v10))
                {
                  goto LABEL_21;
                }
              }
            }

            else if (!v8 && CERT_CheckIssuerAndSerial(v7, (*(a1 + 24) + 24), (*(a1 + 24) + 8)))
            {
              goto LABEL_21;
            }

            if (*(a1 + 136))
            {
              return v1;
            }

            CFRelease(v1);
          }

          v14 = *v6++;
          v5 = v14;
        }

        while (v14);
        if (*(a1 + 136))
        {
          return 0;
        }
      }
    }

    v15 = *(a1 + 16);
    if (!v15)
    {
      v1 = CERT_FindByIssuerAndSN(*(*(a1 + 128) + 176), @"cert", *(a1 + 24));
      *(a1 + 136) = v1;
      if (v1)
      {
        return v1;
      }

      v15 = *(a1 + 16);
    }

    if (v15 != 1)
    {
      return 0;
    }

    else
    {
      v1 = CERT_FindBySubjectKeyID(*(*(a1 + 128) + 176), @"cert", *(a1 + 24));
LABEL_21:
      *(a1 + 136) = v1;
    }
  }

  return v1;
}

uint64_t SecCmsSignerInfoGetAppleCodesigningHashAgility(uint64_t a1, CFDataRef *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    *a2 = 0;
    v5 = *(a1 + 184);
    if (v5)
    {
LABEL_4:
      result = 0;
      *a2 = v5;
      return result;
    }

    result = SecCmsAttributeArrayFindAttrByOidTag(*(a1 + 64), 0xD6u, 1);
    if (result)
    {
      v6 = *(result + 16);
      v7 = *v6;
      if (*v6 && (v8 = v7[1]) != 0 && (v9 = *v7) != 0 && !*(v6 + 8))
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          v5 = CFDataCreate(0, v8, v9);
          *(a1 + 184) = v5;
          if (v5)
          {
            goto LABEL_4;
          }
        }

        return 4294967188;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SecCmsSignerInfoGetAppleCodesigningHashAgilityV2(uint64_t a1, __CFDictionary **a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    *a2 = 0;
    v5 = *(a1 + 192);
    if (v5)
    {
      result = 0;
      *a2 = v5;
      return result;
    }

    result = SecCmsAttributeArrayFindAttrByOidTag(*(a1 + 64), 0xD7u, 1);
    if (result)
    {
      v6 = result;
      v7 = *(result + 16);
      if (v7)
      {
        if (*v7)
        {
          v8 = 0;
            ;
          }

          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        Mutable = CFDictionaryCreateMutable(0, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v12 = *v7;
        if (*v7)
        {
          v13 = v7 + 1;
          do
          {
            *&v14 = 0xAAAAAAAAAAAAAAAALL;
            *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v28 = v14;
            v29 = v14;
            v15 = PORT_NewArena(1024);
            if (v15)
            {
              v16 = v15;
              if (!SEC_ASN1Decode(v15, &v28, &CMSAppleAgileHashTemplate, *(v12 + 8), *v12) && (v29 & 0x8000000000000000) == 0)
              {
                OID = SECOID_FindOID(&v28);
                if (OID)
                {
                  v18 = *(OID + 16);
                }

                else
                {
                  v18 = 0;
                }

                valuePtr = v18;
                v19 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
                v20 = CFDataCreate(0, *(&v29 + 1), v29);
                CFDictionaryAddValue(Mutable, v19, v20);
                if (v20)
                {
                  CFRelease(v20);
                }

                if (v19)
                {
                  CFRelease(v19);
                }
              }

              PORT_FreeArena(v16, 0);
            }

            v21 = *v13++;
            v12 = v21;
          }

          while (v21);
        }

        Count = CFDictionaryGetCount(Mutable);
        v23 = *(v6 + 16);
        if (v23)
        {
          v24 = *v23;
          if (*v23)
          {
            v24 = 0;
            v25 = v23 + 1;
              ;
            }

            v24 = v24;
          }
        }

        else
        {
          v24 = 0;
        }

        if (Count == v24)
        {
          *(a1 + 192) = Mutable;
          if (!Mutable)
          {
            return 4294967188;
          }

          result = 0;
          *a2 = Mutable;
          return result;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      return 4294941021;
    }
  }

  return result;
}

double SecCmsSignerInfoGetAppleExpirationTime(uint64_t a1, double *a2, double result)
{
  if (a1 && a2)
  {
    result = *(a1 + 200);
    if (result == 0.0)
    {
      AttrByOidTag = SecCmsAttributeArrayFindAttrByOidTag(*(a1 + 64), 0xD8u, 1);
      if (AttrByOidTag)
      {
        v6 = *(AttrByOidTag + 16);
        v7 = *v6;
        if (*v6)
        {
          if (v7[1] && *v7 && !*(v6 + 8) && !SecAsn1DecodeTime(v7, a2))
          {
            result = *a2;
            *(a1 + 200) = *a2;
          }
        }
      }
    }

    else
    {
      *a2 = result;
    }
  }

  return result;
}

const void *SecCmsSignerInfoGetSignerCommonName(uint64_t a1)
{
  SigningCert_internal = SecCmsSignerInfoGetSigningCert_internal(a1);
  if (!SigningCert_internal)
  {
    return 0;
  }

  v2 = SecCertificateCopyCommonNames(SigningCert_internal);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  v6 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  CFRelease(v3);
  return v6;
}

const void *SecCmsSignerInfoGetSignerEmailAddress(uint64_t a1)
{
  SigningCert_internal = SecCmsSignerInfoGetSigningCert_internal(a1);
  if (!SigningCert_internal)
  {
    return 0;
  }

  v2 = SecCertificateCopyRFC822Names(SigningCert_internal);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    v5 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  CFRelease(v3);
  return v5;
}

uint64_t SecCmsSignerInfoAddSigningTime(uint64_t a1, CFAbsoluteTime a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v3 = *(*(*(a1 + 128) + 24) + 120);
  memset(v6, 170, sizeof(v6));
  if (SecAsn1EncodeTime(v3, v6, a2))
  {
    return 4294941020;
  }

  if (SEC_ASN1EncodeItem(v3, v7, v6, &kSecAsn1TimeTemplate) != v7)
  {
    return 4294941020;
  }

  v5 = SecCmsAttributeCreate(v3, 0x23u, v7, 1);
  if (!v5)
  {
    return 4294941020;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsSignerInfoAddSMIMECaps(uint64_t a1)
{
  v2 = *(*(*(a1 + 128) + 24) + 120);
  v3 = SECITEM_AllocItem(v2, 0, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = PORT_ZAlloc(0x50uLL);
  v27 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v26 = a1;
  v7 = 0;
  v8 = -9;
  v9 = &byte_1E70D9670;
  while (1)
  {
    if (*v9)
    {
      v10 = *(v9 - 3);
      if (v10 != 65561)
      {
        break;
      }
    }

    v11 = v7;
LABEL_13:
    v9 -= 32;
    v7 = v11;
    if (__CFADD__(v8++, 1))
    {
      goto LABEL_17;
    }
  }

  v12 = PORT_ZAlloc(0x28uLL);
  if (v12)
  {
    v13 = v12;
    v11 = (v7 + 1);
    v6[v7] = v12;
    v14 = *(v9 - 4);
    pthread_once(&hash_once, InitOIDHashOnce);
    if (v14 > 0xD8)
    {
      goto LABEL_17;
    }

    v15 = *&oids[40 * v14 + 8];
    *v13 = *&oids[40 * v14];
    v13[1] = v15;
    v16 = *(v9 - 1);
    if (v16)
    {
      v16 = *v16;
      v17 = *(*(v9 - 1) + 8);
    }

    else
    {
      v17 = 0;
    }

    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v10;
    goto LABEL_13;
  }

  LODWORD(v11) = v7;
LABEL_17:
  v6[v11] = 0;
  v19 = SEC_ASN1EncodeItem(v2, v4, &v27, &NSSSMIMECapabilitiesTemplate);
  v20 = v27;
  v21 = *v27;
  if (*v27)
  {
    v22 = 8;
    v23 = v26;
    do
    {
      free(v21);
      v20 = v27;
      v21 = *(v27 + v22);
      v22 += 8;
    }

    while (v21);
  }

  else
  {
    v23 = v26;
  }

  free(v20);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = SecCmsAttributeCreate(v2, 0x28u, v4, 1);
  if (!v24)
  {
    return 0xFFFFFFFFLL;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(v23 + 128) + 24) + 120), (v23 + 64), v24);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsSignerInfoAddSMIMEEncKeyPrefs_internal(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 128) + 24) + 120);
  v5 = SECITEM_AllocItem(v4, 0, 0);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0xAAAAAAAA00000000;
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = PORT_NewArena(1024);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if (!CERT_GetCertIssuerAndSN(v7, a2))
  {
    PORT_FreeArena(v8, 0);
    return 0xFFFFFFFFLL;
  }

  v9 = SEC_ASN1EncodeItem(v4, v6, &v12, &smime_encryptionkeypref_template);
  PORT_FreeArena(v8, 0);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = SecCmsAttributeCreate(v4, 0xB6u, v6, 1);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v10);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsSignerInfoAddMSSMIMEEncKeyPrefs_internal(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 128) + 24) + 120);
  v5 = SECITEM_AllocItem(v4, 0, 0);
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5;
  v8 = PORT_NewArena(1024);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  CertIssuerAndSN = CERT_GetCertIssuerAndSN(v8, a2);
  if (!CertIssuerAndSN)
  {
    PORT_FreeArena(v9, 0);
    return 0xFFFFFFFFLL;
  }

  v11 = SEC_ASN1EncodeItem(v4, v7, CertIssuerAndSN, &SecCmsIssuerAndSNTemplate);
  PORT_FreeArena(v9, 0);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = SecCmsAttributeCreate(v4, 0xBEu, v7, 1);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v12);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsSignerInfoAddAppleCodesigningHashAgility(uint64_t a1, CFDataRef theData)
{
  if (!theData)
  {
    return 4294967246;
  }

  v4 = *(*(*(a1 + 128) + 24) + 120);
  if (CFDataGetLength(theData) < 0)
  {
    return 4294967246;
  }

  v7[0] = CFDataGetLength(theData);
  v7[1] = CFDataGetBytePtr(theData);
  v5 = SecCmsAttributeCreate(v4, 0xD6u, v7, 0);
  if (!v5)
  {
    return 4294967188;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v5);
  if (result)
  {
    return 4294941020;
  }

  return result;
}

uint64_t SecCmsSignerInfoAddAppleCodesigningHashAgilityV2(uint64_t a1, const __CFDictionary *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v3 = *(*(*(a1 + 128) + 24) + 120);
  v9[3] = v3;
  if (a2)
  {
    v5 = SecCmsAttributeCreate(v3, 0xD7u, 0, 1);
    v11[3] = v5;
    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __SecCmsSignerInfoAddAppleCodesigningHashAgilityV2_block_invoke;
      v8[3] = &unk_1E70DA288;
      v8[4] = v9;
      v8[5] = &v10;
      CFDictionaryApplyFunction(a2, apply_block_2, v8);
      if (SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v11[3]))
      {
        v6 = 4294941020;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 4294967188;
    }
  }

  else
  {
    v6 = 4294967246;
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __SecCmsSignerInfoAddAppleCodesigningHashAgilityV2_block_invoke(uint64_t result, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = CFNumberGetTypeID();
    if (a3)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFDataGetTypeID())
        {
          v9 = *(result + 40);
          v10 = *(*(*(result + 32) + 8) + 24);
          v11 = *(*(v9 + 8) + 24);
          valuePtr = 0xAAAAAAAAAAAAAAAALL;
          v21[0] = 0;
          v21[1] = 0;
          if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr))
          {
            if ((CFDataGetLength(a3) & 0x8000000000000000) == 0)
            {
              v12 = valuePtr;
              v13 = valuePtr;
              pthread_once(&hash_once, InitOIDHashOnce);
              v14 = v12 <= 0xD8 ? &oids[40 * v13] : 0;
              v22[3] = CFDataGetBytePtr(a3);
              Length = CFDataGetLength(a3);
              v16 = *v14;
              v22[1] = *(v14 + 1);
              v22[2] = Length;
              v22[0] = v16;
              v17 = PORT_NewArena(1024);
              if (v17)
              {
                v18 = v17;
                if (SEC_ASN1EncodeItem(v17, v21, v22, &CMSAppleAgileHashTemplate))
                {
                  v19 = SECITEM_AllocItem(v10, 0, v21[0]);
                  if (v19)
                  {
                    v20 = v19;
                    if (!SECITEM_CopyItem(v10, v19, v21) && !SecCmsArrayAdd(v10, (v11 + 16), v20))
                    {
                      SecCmsArraySort(*(v11 + 16), SecCmsUtilDERCompare, 0, 0);
                    }
                  }
                }

                PORT_FreeArena(v18, 0);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t SecCmsSignerInfoAddAppleExpirationTime(uint64_t a1, CFAbsoluteTime a2)
{
  v3 = *(*(*(a1 + 128) + 24) + 120);
  v7[0] = 0;
  v7[1] = 0;
  memset(v6, 170, sizeof(v6));
  if (SecAsn1EncodeTime(v3, v6, a2))
  {
    return 4294941020;
  }

  if (SEC_ASN1EncodeItem(v3, v7, v6, &kSecAsn1TimeTemplate) != v7)
  {
    return 4294941020;
  }

  v5 = SecCmsAttributeCreate(v3, 0xD8u, v7, 1);
  if (!v5)
  {
    return 4294941020;
  }

  result = SecCmsAttributeArrayAddAttr(*(*(*(a1 + 128) + 24) + 120), (a1 + 64), v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t *SecCmsSignerInfoCopyCertFromEncryptionKeyPreference(uint64_t a1)
{
  if (*(a1 + 160) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(v2 + 144);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 64);
  if (!result)
  {
    return result;
  }

  if (!*result)
  {
    return 0;
  }

  AttrByOidTag = SecCmsAttributeArrayFindAttrByOidTag(result, 0xB6u, 1);
  if (!AttrByOidTag)
  {
    goto LABEL_13;
  }

  v6 = *(AttrByOidTag + 16);
  v7 = *v6;
  if (!*v6 || !v7[1] || !*v7 || *(v6 + 8))
  {
    return 0;
  }

  result = SecSMIMEGetCertFromEncryptionKeyPreference(v3, v7);
  if (result)
  {
    return result;
  }

LABEL_13:
  result = *(a1 + 64);
  if (!result)
  {
    return result;
  }

  if (!*result)
  {
    return 0;
  }

  result = SecCmsAttributeArrayFindAttrByOidTag(result, 0xBEu, 1);
  if (!result)
  {
    return result;
  }

  v8 = result[2];
  v9 = *v8;
  if (!*v8 || !v9[1] || !*v9 || *(v8 + 8))
  {
    return 0;
  }

  return SecSMIMEGetCertFromEncryptionKeyPreference(v3, v9);
}

uint64_t SecCmsSignerInfoIncludeCerts(uint64_t a1, int a2)
{
  if (!*(a1 + 136))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 144) = 0;
    CFRelease(v4);
  }

  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v5 = *(a1 + 136);
        v6 = 0;
        break;
      case 3:
        v5 = *(a1 + 136);
        v6 = 1;
        break;
      case 4:
        v5 = *(a1 + 136);
        v6 = 1;
        v7 = 1;
LABEL_17:
        v9 = CERT_CertChainFromCert(v5, v6, v7);
        goto LABEL_18;
      default:
LABEL_21:
        if (!*(a1 + 144))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
    }

    v7 = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    *(a1 + 144) = 0;
    return 0;
  }

  if (a2 != 1)
  {
    goto LABEL_21;
  }

  values = *(a1 + 136);
  if (values)
  {
    v9 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v9 = 0;
  }

LABEL_18:
  *(a1 + 144) = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t SOSRKNullKey()
{
  if (SOSRKNullKey_onceToken != -1)
  {
    dispatch_once(&SOSRKNullKey_onceToken, &__block_literal_global_6563);
  }

  return SOSRKNullKey_localNullKey;
}

CFDataRef __SOSRKNullKey_block_invoke()
{
  result = CFDataCreate(*MEMORY[0x1E695E480], "nullkey", 8);
  SOSRKNullKey_localNullKey = result;
  return result;
}

uint64_t SOSBackupSliceKeyBagGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSBackupSliceKeyBagGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSBackupSliceKeyBagGetTypeID_sSOSBackupSliceKeyBagGetTypeIDSingleton;
  if (SOSBackupSliceKeyBagGetTypeID_sSOSBackupSliceKeyBagGetTypeIDOnce != -1)
  {
    dispatch_once(&SOSBackupSliceKeyBagGetTypeID_sSOSBackupSliceKeyBagGetTypeIDOnce, block);
  }

  return SOSBackupSliceKeyBagGetTypeID_sSOSBackupSliceKeyBagGetTypeIDSingleton;
}

uint64_t __SOSBackupSliceKeyBagGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *SOSBackupSliceKeyBagCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SOSBackupSliceKeyBagCopyFormatDescription(a1);
}

__CFString *SOSBackupSliceKeyBagCopyFormatDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFSetCreateMutable(v2, 0, MEMORY[0x1E695E9F8]);
  if (v4)
  {
    v5 = *(a1 + 24);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSBackupSliceKeyBagCopyPeerNames_block_invoke;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = v4;
    CFSetApplyFunction(v5, apply_block_1_6575, context);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SOSBackupSliceKeyBagCopyFormatDescription_block_invoke;
  v7[3] = &__block_descriptor_48_e21_v16__0____CFString__8l;
  v7[4] = Mutable;
  v7[5] = a1;
  CFStringSetPerformWithDescription(v4, v7);
  if (v4)
  {
    CFRelease(v4);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

void __SOSBackupSliceKeyBagCopyPeerNames_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  Value = CFDictionaryGetValue(*(a2 + 32), @"ComputerName");

  CFSetAddValue(v2, Value);
}

void __SOSBackupSliceKeyBagCopyFormatDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  Count = *(v4 + 24);
  if (Count)
  {
    Count = CFSetGetCount(Count);
  }

  CFStringAppendFormat(v3, 0, @"<SOSBackupSliceKeyBag@%p %ld %@", v4, Count, a2);
}

void SOSBackupSliceKeyBagDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;

    CFRelease(v4);
  }
}

const UInt8 *der_decode_BackupSliceKeyBag(uint64_t a1, CFTypeRef *a2, CFErrorRef *a3, const UInt8 *a4, const UInt8 *a5)
{
  v5 = a4;
  v19 = a4;
  if (!a4)
  {
    return v5;
  }

  SOSBackupSliceKeyBagGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!SecAllocationError(Instance, a3, @"View bag allocation failed") || (v10 = ccder_decode_sequence_tl(), v19 = v10, a5))
  {
    v5 = 0;
    if (!Instance)
    {
      return v5;
    }

    goto LABEL_12;
  }

  v14 = *MEMORY[0x1E695E480];
  v19 = der_decode_data(*MEMORY[0x1E695E480], (Instance + 16), a3, v10, 0, v11, v12, v13);
  *(Instance + 24) = SOSPeerInfoSetCreateFromArrayDER(v14, &kSOSPeerSetCallbacks, a3, &v19, 0);
  v5 = der_decode_dictionary(v14, (Instance + 32), a3, v19, 0, v15, v16, v17);
  v19 = v5;
  SecRequirementError(v5 == 0, a3, @"Extra space in sequence");
  if (v5)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    CFRelease(Instance);
    return v5;
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = Instance;
  return v5;
}

uint64_t der_sizeof_BackupSliceKeyBag(const __CFData **a1, CFErrorRef *a2)
{
  SecRequirementError(a1 != 0, a2, @"Null BackupSliceKeyBag");
  if (!a1)
  {
    return 0;
  }

  v4 = a1[2];
  SecRequirementError(v4 != 0, a2, @"null aks_bag in BackupSliceKeyBag");
  if (!v4)
  {
    return 0;
  }

  v5 = a1[2];
  if (!v5)
  {
    return 0;
  }

  CFDataGetLength(v5);
  if (!ccder_sizeof_raw_octet_string() || !SOSPeerInfoSetGetDEREncodedArraySize(a1[3], a2) || !der_sizeof_dictionary(a1[4], a2))
  {
    return 0;
  }

  return ccder_sizeof();
}

uint64_t der_encode_BackupSliceKeyBag(const __CFData **a1, CFErrorRef *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  SecRequirementError(a1 != 0, a2, @"Null set passed to encode");
  if (!a1)
  {
    return 0;
  }

  v8 = a1[2];
  SecRequirementError(v8 != 0, a2, @"Null set passed to encode");
  if (!v8)
  {
    return 0;
  }

  v9 = a1[2];
  if (!v9)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = der_encode_dictionary_repair(a1[4], a2, 0, a3, a4);
  v12 = SOSPeerInfoSetEncodeToArrayDER(v10, a2, a3, v11);
  der_encode_data(v9, a2, a3, v12);
  result = ccder_encode_constructed_tl();
  if (result != a3)
  {
    return 0;
  }

  return result;
}

CFTypeRef SOSBackupSliceKeyBagCreateFromData(uint64_t a1, CFDataRef theData, CFErrorRef *a3)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = &BytePtr[Length];
  v9 = der_decode_BackupSliceKeyBag(a1, &cf, a3, BytePtr, &BytePtr[Length]);
  SecRequirementError(v9 == v8, a3, @"Didn't consume all data supplied");
  result = cf;
  if (v9 != v8)
  {
    if (cf)
    {
      cf = 0;
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

BOOL SOSBSKBIsGoodBackupPublic(const __CFData *a1, CFErrorRef *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = SOSGetBackupKeyCurveParameters();
  MEMORY[0x1EEE9AC00](v4);
  if (v6 >= 0x10)
  {
    v7 = (v10 - v5);
    do
    {
      *v7 = 0xAAAAAAAAAAAAAAAALL;
      v7[1] = 0xAAAAAAAAAAAAAAAALL;
      v7 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  SOSGetBackupKeyCurveParameters();
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  v8 = ccec_compact_import_pub();
  if (v8)
  {
    SOSErrorCreate(1029, a2, 0, @"Unable to decode public key: %@", a1);
  }

  return v8 == 0;
}

__CFData *SOSBSKBCopyEncoded(const __CFData **a1, CFErrorRef *a2)
{
  v4 = der_sizeof_BackupSliceKeyBag(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataSetLength(Mutable, v5);
  if (!SecAllocationError(Mutable, a2, @"Faild to create scratch") || (MutableBytePtr = CFDataGetMutableBytePtr(Mutable), Length = CFDataGetLength(Mutable), MutableBytePtr != der_encode_BackupSliceKeyBag(a1, a2, MutableBytePtr, &MutableBytePtr[Length])))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void *SOSBackupSliceKeyBagCreate(const __CFAllocator *a1, const __CFSet *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = SOSBackupSliceKeyBagCreateWithAdditionalKeys(a1, a2, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void *SOSBackupSliceKeyBagCreateWithAdditionalKeys(const __CFAllocator *a1, const __CFSet *a2, uint64_t a3, CFErrorRef *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  SOSBackupSliceKeyBagGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!SecAllocationError(Instance, a4, @"View bag allocation failed") || (Count = CFSetGetCount(a2), SecRequirementError(Count > 0, a4, @"Need peers"), Count < 1))
  {
    if (!Instance)
    {
      return Instance;
    }

LABEL_8:
    CFRelease(Instance);
    return 0;
  }

  Mutable = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __SOSBackupSliceKeyBagCreatePeerSet_block_invoke;
  v17 = &__block_descriptor_40_e10_v16__0r_v8l;
  v18 = Mutable;
  CFSetApplyFunction(a2, apply_block_1_6575, &v14);
  Instance[3] = Mutable;
  Instance[4] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = Instance[2];
  if (v11)
  {
    Instance[2] = 0;
    CFRelease(v11);
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __SOSBackupSliceKeyBagCreateBackupBag_block_invoke;
  v17 = &__block_descriptor_56_e11_v24__0Q8_16l;
  v18 = a4;
  v19 = Instance;
  v20 = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = __PerformWithBufferAndClear_block_invoke;
  v21[3] = &unk_1E70E46A8;
  v21[4] = &v14;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v12;
  v22[1] = v12;
  __PerformWithBufferAndClear_block_invoke(v21, 0x20uLL, v22);
  if (!Instance[2])
  {
    goto LABEL_8;
  }

  return Instance;
}

void __SOSBackupSliceKeyBagCreateBackupBag_block_invoke(void *a1, unint64_t a2, const UInt8 *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = CCRandomCopyBytes();
  if (SecError(v6, a1[4], @"SecRandom falied!"))
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a3, a2, *MEMORY[0x1E695E498]);
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    length = 0;
    p_length = &length;
    v29 = 0x2020000000;
    v30 = 1;
    v13 = *(v10 + 24);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke;
    context[3] = &unk_1E70DA390;
    context[6] = Mutable;
    context[7] = v11;
    context[4] = &length;
    context[5] = v8;
    CFSetApplyFunction(v13, apply_block_1_6575, context);
    *buf = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_72;
    v35 = &unk_1E70DA3B8;
    v38 = Mutable;
    v39 = v11;
    v36 = &length;
    v37 = v8;
    CFDictionaryApplyFunction(v9, apply_block_2_6605, buf);
    v14 = *(p_length + 24);
    if ((v14 & 1) == 0 && Mutable)
    {
      CFRelease(Mutable);
    }

    if (!v14)
    {
      Mutable = 0;
    }

    _Block_object_dispose(&length, 8);
    v15 = *(v10 + 32);
    if (v15)
    {
      CFRelease(v15);
    }

    *(v10 + 32) = Mutable;
    v18 = a1 + 4;
    v16 = a1[4];
    v17 = v18[1];
    context[0] = 0;
    LODWORD(length) = 0;
    v31 = -1;
    SecRequirementError(a2 >> 31 == 0, v16, @"Invalid size: %zu", a2);
    if (!(a2 >> 31) && (bag = aks_create_bag(), SecKernError(bag, v16, @"bag allocation failed: %d", bag)) && (v20 = aks_save_bag(), SecKernError(v20, v16, @"save bag failed: %d", v20)))
    {
      v21 = aks_unload_bag();
      if (v21)
      {
        v22 = v21;
        v23 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v22;
          _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "unload bag failed: %d", buf, 8u);
        }
      }

      v24 = CFDataCreate(v7, context[0], length);
      SecAllocationError(v24, v16, @"Bag CFData Allocation Failed");
    }

    else
    {
      v24 = 0;
    }

    if (context[0])
    {
      free(context[0]);
    }

    v25 = *(v17 + 16);
    if (v25)
    {
      CFRelease(v25);
    }

    *(v17 + 16) = v24;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_18888C30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v38 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == SOSPeerInfoGetTypeID())
    {
      v5 = *(cf + 5);
      v6 = SOSPeerInfoV2DictionaryCopyData(cf, sBackupKeyKey);
      if (v6)
      {
        v7 = v6;
        *buf = 0;
        v8 = SOSCopyECWrapped(v6, *(a1 + 40), buf);
        if (v8)
        {
          CFDictionaryAddValue(*(a1 + 48), v5, v8);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v33 = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_2;
          v34 = &__block_descriptor_48_e21_v16__0____CFString__8l;
          v35 = v8;
          v36 = v5;
          v9 = v32;
          v10 = *MEMORY[0x1E695E480];
          Length = CFDataGetLength(v7);
          Mutable = CFStringCreateMutable(v10, 2 * Length);
          BytePtr = CFDataGetBytePtr(v7);
          v14 = CFDataGetLength(v7);
          if (v14 >= 1)
          {
            v15 = v14;
            do
            {
              v16 = *BytePtr++;
              CFStringAppendFormat(Mutable, 0, @"%02X", v16);
              --v15;
            }

            while (v15);
          }

          v33(v9, Mutable);
          CFRelease(Mutable);

          CFRelease(v8);
        }

        else
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v28 = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_71;
          v29 = &__block_descriptor_48_e21_v16__0____CFString__8l;
          v30 = v5;
          v31 = *buf;
          v18 = v27;
          v19 = *MEMORY[0x1E695E480];
          v20 = CFDataGetLength(v7);
          v21 = CFStringCreateMutable(v19, 2 * v20);
          v22 = CFDataGetBytePtr(v7);
          v23 = CFDataGetLength(v7);
          if (v23 >= 1)
          {
            v24 = v23;
            do
            {
              v25 = *v22++;
              CFStringAppendFormat(v21, 0, @"%02X", v25);
              --v24;
            }

            while (v24);
          }

          v28(v18, v21);
          CFRelease(v21);

          if (*buf)
          {
            v26 = *(a1 + 56);
            if (v26 && !*v26)
            {
              *v26 = *buf;
            }

            else
            {
              CFRelease(*buf);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 0;
        }

        CFRelease(v7);
      }

      else
      {
        v17 = secLogObjForScope("bskb");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Skipping id %@, no backup key.", buf, 0xCu);
        }
      }
    }
  }
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_72(uint64_t a1, const __CFString *cf, const void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    v5 = 0;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFDataGetTypeID())
    {
      *cfa = 0;
      v8 = SOSKeyedPubKeyIdentifierCreateWithData(v5, a3);
      if (v8)
      {
        v9 = SOSCopyECWrapped(a3, *(a1 + 40), cfa);
        if (v9)
        {
          CFDictionaryAddValue(*(a1 + 48), v8, v9);
        }

        if (*cfa)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v29 = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_76;
          v30 = &__block_descriptor_40_e21_v16__0____CFString__8l;
          v31 = *cfa;
          v10 = v28;
          v11 = *MEMORY[0x1E695E480];
          Length = CFDataGetLength(a3);
          Mutable = CFStringCreateMutable(v11, 2 * Length);
          BytePtr = CFDataGetBytePtr(a3);
          v15 = CFDataGetLength(a3);
          if (v15 >= 1)
          {
            v16 = v15;
            do
            {
              v17 = *BytePtr++;
              CFStringAppendFormat(Mutable, 0, @"%02X", v17);
              --v16;
            }

            while (v16);
          }

          v29(v10, Mutable);
          CFRelease(Mutable);

          if (*cfa)
          {
            v18 = *(a1 + 56);
            if (v18 && !*v18)
            {
              *v18 = *cfa;
            }

            else
            {
              CFRelease(*cfa);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 0;
          if (!v9)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v9 = 0;
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v33 = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_2_73;
      v34 = &__block_descriptor_40_e21_v16__0____CFString__8l;
      v35 = v9;
      v20 = v32;
      v21 = *MEMORY[0x1E695E480];
      v22 = CFDataGetLength(a3);
      v23 = CFStringCreateMutable(v21, 2 * v22);
      v24 = CFDataGetBytePtr(a3);
      v25 = CFDataGetLength(a3);
      if (v25 >= 1)
      {
        v26 = v25;
        do
        {
          v27 = *v24++;
          CFStringAppendFormat(v23, 0, @"%02X", v27);
          --v26;
        }

        while (v26);
      }

      v33(v20, v23);
      CFRelease(v23);

      if (!v9)
      {
        goto LABEL_23;
      }

LABEL_22:
      CFRelease(v9);
LABEL_23:
      if (v8)
      {
        CFRelease(v8);
      }

      return;
    }
  }

  v19 = secLogObjForScope("bskb");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *cfa = 138412290;
    *&cfa[4] = a3;
    _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "Skipping %@, not data.", cfa, 0xCu);
  }
}

__CFData *SOSCopyECWrapped(const __CFData *a1, const __CFData *a2, CFErrorRef *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = SOSGetBackupKeyCurveParameters();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  if (v9 >= 0x10)
  {
    v10 = (v12 - v7);
    do
    {
      *v10 = 0xAAAAAAAAAAAAAAAALL;
      v10[1] = 0xAAAAAAAAAAAAAAAALL;
      v10 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  SOSGetBackupKeyCurveParameters();
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  if (!ccec_compact_import_pub())
  {
    return SOSCopyECWrappedData(v8, a2, a3);
  }

  SOSErrorCreate(1029, a3, 0, @"Unable to decode public key: %@", a1);
  return 0;
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_2_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_3_74;
  v3[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
  v3[4] = a2;
  CFDataPerformWithHexString(v2, v3);
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_76(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("bskb");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Failed at bk: %@ error: %@", &v6, 0x16u);
  }
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_3_74(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("bskb");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Add for bk: %@, wrapped: %@", &v6, 0x16u);
  }
}

void CFDataPerformWithHexString(const __CFData *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(a1);
    Mutable = CFStringCreateMutable(v3, 2 * Length);
    BytePtr = CFDataGetBytePtr(a1);
    v7 = CFDataGetLength(a1);
    if (v7 >= 1)
    {
      v8 = v7;
      do
      {
        v9 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v9);
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    Mutable = @"(null)";
  }

  v10[2](v10, Mutable);
  CFRelease(Mutable);
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_3;
  v3[3] = &__block_descriptor_48_e21_v16__0____CFString__8l;
  v2 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v3[5] = a2;
  CFDataPerformWithHexString(v2, v3);
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_71(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("bskb");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Failed at id: %@, bk: %@ error: %@", &v7, 0x20u);
  }
}

void __SOSBackupSliceKeyBagCopyWrappedKeys_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("bskb");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Add for id: %@, bk: %@, wrapped: %@", &v7, 0x20u);
  }
}

void *SOSBackupSliceKeyBagCreateDirect(const __CFAllocator *a1, const void *a2, CFErrorRef *a3)
{
  SOSBackupSliceKeyBagGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (SecAllocationError(Instance, a3, @"View bag allocation failed") && (SecRequirementError(a2 != 0, a3, @"Need aks bag"), a2))
  {
    CFRetain(a2);
    Instance[2] = a2;
    Instance[3] = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
    Instance[4] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else if (Instance)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SOSBSKBCopyAKSBag(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRetain(*(a1 + 16));
  }

  return v1;
}

const __CFSet *SOSBSKBCountPeers(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFSetGetCount(result);
  }

  return result;
}

BOOL SOSBKSBKeyIsInKeyBag(uint64_t a1, const __CFData *a2)
{
  v3 = SOSCopyIDOfDataBuffer(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFDictionaryContainsKey(*(a1 + 32), v3) != 0;
  CFRelease(v4);
  return v5;
}

BOOL SOSBKSBPeerBackupKeyIsInKeyBag(uint64_t a1, const void *a2)
{
  v4 = SOSPeerInfoV2DictionaryCopyData(a2, sBackupKeyKey);
  Value = CFSetGetValue(*(a1 + 24), a2);
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != SOSPeerInfoGetTypeID()))
  {
    if (!v4)
    {
      return 1;
    }

    v10 = 0;
    goto LABEL_8;
  }

  v8 = SOSPeerInfoV2DictionaryCopyData(v6, sBackupKeyKey);
  v9 = v8;
  if (v4 && v8)
  {
    v10 = CFEqual(v4, v8) != 0;
    CFRelease(v9);
LABEL_8:
    CFRelease(v4);
    return v10;
  }

  v10 = v4 == v8;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return v10;
}

uint64_t SOSBSKBAllPeersBackupKeysAreInKeyBag(uint64_t a1, CFSetRef theSet)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = 1;
  v8 = 1;
  if (a1 && theSet)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __SOSBSKBAllPeersBackupKeysAreInKeyBag_block_invoke;
    v4[3] = &unk_1E70DB2E0;
    v4[4] = &v5;
    v4[5] = a1;
    CFSetApplyFunction(theSet, apply_block_1_6575, v4);
    v2 = *(v6 + 24);
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

void sub_18888D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSBSKBAllPeersBackupKeysAreInKeyBag_block_invoke(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = SOSPeerInfoGetTypeID();
    if (v4 == result)
    {
      result = SOSPeerInfoHasBackupKey(cf);
      if (result)
      {
        result = SOSBKSBPeerBackupKeyIsInKeyBag(*(v3 + 40), cf);
        *(*(*(v3 + 32) + 8) + 24) &= result;
      }
    }
  }

  return result;
}

BOOL SOSBKSBPrefixedKeyIsInKeyBag(uint64_t a1, const __CFString *a2, const __CFData *a3)
{
  v4 = SOSKeyedPubKeyIdentifierCreateWithData(a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFDictionaryContainsKey(*(a1 + 32), v4) != 0;
  CFRelease(v5);
  return v6;
}

uint64_t SOSBSKBLoadLocked(uint64_t a1, CFErrorRef *a2)
{
  v4 = *(a1 + 16);
  SecRequirementError(v4 != 0, a2, @"No aks bag to load");
  if (v4)
  {
    Length = CFDataGetLength(*(a1 + 16));
    SecRequirementError(Length < 0x7FFFFFFF, a2, @"No aks bag to load");
    if (Length <= 2147483646)
    {
      CFDataGetBytePtr(*(a1 + 16));
      CFDataGetLength(*(a1 + 16));
      bag = aks_load_bag();
      SecKernError(bag, a2, @"aks_load_bag failed: %d", bag);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SOSBSKBLoadAndUnlockWithPeerIDAndSecret(uint64_t a1, const void *a2, const __CFData *a3, CFErrorRef *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  SecRequirementError(Value != 0, a4, @"%@ has no wrapped key in %@", a2, a1);
  if (Value)
  {
    v9 = SOSGetBackupKeyCurveParameters();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __SOSBSKBLoadAndUnlockWithPeerIDAndSecret_block_invoke;
    v12[3] = &unk_1E70DA2D8;
    v12[4] = &v13;
    v12[5] = Value;
    v12[6] = a4;
    v12[7] = a1;
    SOSPerformWithDeviceBackupFullKey(v9, a3, a4, v12);
  }

  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_18888D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSBSKBLoadAndUnlockWithPeerIDAndSecret_block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSBSKBLoadAndUnlockWithPeerIDAndSecret_block_invoke_2;
  v6[3] = &unk_1E70DA2B0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = vextq_s8(v4, v4, 8uLL);
  return SOSPerformWithUnwrappedData(a2, v3, v4.i64[0], v6);
}

uint64_t __SOSBSKBLoadAndUnlockWithPeerIDAndSecret_block_invoke_2(void *a1, unint64_t a2, uint64_t a3)
{
  result = SOSBSKBLoadAndUnlockBagWithSecret(a1[5], a2, a3, a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t SOSBSKBLoadAndUnlockBagWithSecret(uint64_t a1, unint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v7 = *(a1 + 16);
  SecRequirementError(v7 != 0, a4, @"No aks bag to load");
  if (v7)
  {
    Length = CFDataGetLength(*(a1 + 16));
    SecRequirementError(Length < 0x7FFFFFFF, a4, @"No aks bag to load");
    if (Length <= 2147483646)
    {
      SecRequirementError(a2 >> 31 == 0, a4, @"secret too big");
      if (!(a2 >> 31))
      {
        CFDataGetBytePtr(*(a1 + 16));
        CFDataGetLength(*(a1 + 16));
        bag = aks_load_bag();
        if (SecKernError(bag, a4, @"aks_load_bag failed: %d", bag))
        {
          v10 = aks_unlock_bag();
          SecKernError(v10, a4, @"failed to unlock bag: %d", v10);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SOSBSKBLoadAndUnlockWithPeerSecret(uint64_t a1, void *a2, const __CFData *a3, CFErrorRef *a4)
{
  if (a2)
  {
    a2 = a2[5];
  }

  return SOSBSKBLoadAndUnlockWithPeerIDAndSecret(a1, a2, a3, a4);
}

uint64_t SOSBSKBLoadAndUnlockWithDirectSecret(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  Count = CFSetGetCount(*(a1 + 24));
  SecRequirementError(Count == 0, a3, @"Not direct bag");
  if (Count)
  {
    return 0xFFFFFFFFLL;
  }

  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a2);

  return SOSBSKBLoadAndUnlockBagWithSecret(a1, Length, BytePtr, a3);
}

uint64_t SOSBSKBLoadAndUnlockWithWrappingSecret(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v6 = SOSBSKBCopyRecoveryKey(a1);
  SecRequirementError(v6 != 0, a3, @"no recovery key found in %@", a1);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SOSBSKBLoadAndUnlockWithWrappingSecret_block_invoke;
    v9[3] = &unk_1E70DA300;
    v9[4] = &v10;
    v9[5] = v6;
    v9[6] = a3;
    v9[7] = a1;
    SOSPerformWithRecoveryKeyFullKey(a2, a3, v9);
    CFRelease(v6);
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

CFDataRef SOSBSKBCopyRecoveryKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = SOSBSKBCopyAdditionalKeysWithPrefix(*MEMORY[0x1E695E480], a1, bskbRkbgPrefix);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFDictionaryGetCount(v2) == 1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSBSKBCopyRecoveryKey_block_invoke;
    context[3] = &unk_1E70DA328;
    context[4] = &v7;
    CFDictionaryApplyFunction(v3, apply_block_2_6605, context);
    Copy = CFDataCreateCopy(v1, v8[3]);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v3);
  return Copy;
}

void sub_18888DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSBSKBLoadAndUnlockWithWrappingSecret_block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSBSKBLoadAndUnlockWithWrappingSecret_block_invoke_2;
  v6[3] = &unk_1E70DA2B0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = vextq_s8(v4, v4, 8uLL);
  return SOSPerformWithUnwrappedData(a2, v3, v4.i64[0], v6);
}

void SOSPerformWithRecoveryKeyFullKey(const __CFData *a1, CFErrorRef *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v6 = SecCFAllocatorZeroize_sAllocator;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v9 = CFStringCreateWithBytes(v6, BytePtr, Length, 0x8000100u, 0);
  if (v9)
  {
    v10 = v9;
    v26[0] = 0;
    v11 = SecRKCreateRecoveryKeyWithError(v9, v26);
    v12 = v26[0];
    v13 = v12;
    if (v11)
    {
      v14 = RKBackupCreateECKey(v11, 1);
      v15 = RKBackupCreateECKey(v11, 0);
      v16 = v15;
      if (v14 && v15)
      {
        v17 = SOSCopyIDOfDataBuffer(v15);
        if (v17)
        {
          v18 = v17;
          v24 = a2;
          v25 = v13;
          CFDataGetLength(v14);
          ccec_compact_import_priv_size();
          MEMORY[0x18CFD9EA0]();
          MEMORY[0x18CFD9EB0]();
          ccec_cp_521();
          v19 = ccec_curve_for_length_lookup();
          MEMORY[0x1EEE9AC00](v19);
          v21 = &v24 - v20;
          v22 = 0;
          do
          {
            v23 = &v21[v22];
            *v23 = 0xAAAAAAAAAAAAAAAALL;
            *(v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v22 += 16;
          }

          while (v20 != v22);
          CFDataGetLength(v14);
          CFDataGetBytePtr(v14);
          if (ccec_compact_import_priv())
          {
            SOSErrorCreate(1028, v24, 0, @"Unable to perform crypto operation from fullKeyBytes.");
          }

          else
          {
            v5[2](v5, v21, v18);
            cc_clear();
          }

          CFRelease(v18);
          v13 = v25;
        }
      }

      else
      {
        SOSErrorCreate(1029, a2, 0, @"Unable to get recovery key public and private keys.");
      }
    }

    else
    {
      v16 = 0;
      v14 = 0;
      if (a2)
      {
        *a2 = v12;
      }
    }

    CFRelease(v10);
  }

  else
  {
    SOSErrorCreate(1029, a2, 0, @"Unable to create key string from data.");
  }
}

uint64_t __SOSBSKBLoadAndUnlockWithWrappingSecret_block_invoke_2(void *a1, unint64_t a2, uint64_t a3)
{
  result = SOSBSKBLoadAndUnlockBagWithSecret(a1[5], a2, a3, a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

CFMutableDictionaryRef SOSBSKBCopyAdditionalKeysWithPrefix(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 32))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = *(a2 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SOSBSKBCopyAdditionalKeysWithPrefix_block_invoke;
    v8[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
    v8[4] = a3;
    v8[5] = Mutable;
    CFDictionaryApplyFunction(v6, apply_block_2_6605, v8);
  }

  return Mutable;
}

CFTypeID __SOSBSKBCopyRecoveryKey_block_invoke(CFTypeID result, int a2, CFTypeRef cf)
{
  v3 = result;
  if (!cf || (v4 = cf, v5 = CFGetTypeID(cf), result = CFDataGetTypeID(), v5 != result))
  {
    v4 = 0;
  }

  *(*(*(v3 + 32) + 8) + 24) = v4;
  return result;
}

void __SOSBSKBCopyAdditionalKeysWithPrefix_block_invoke(uint64_t a1, const __CFString *cf, const void *a3)
{
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    v5 = 0;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    TypeID = CFDataGetTypeID();
    if (v5)
    {
      if (v7 == TypeID && CFStringFind(v5, @"-", 0).location == 2)
      {
        v9 = SOSKeyedPubKeyIdentifierCopyPrefix(v5);
        v10 = v9;
        v11 = *(a1 + 32);
        if (v9 && v11)
        {
          if (!CFEqual(v9, v11))
          {
LABEL_15:

            CFRelease(v10);
            return;
          }
        }

        else if (v9 != v11)
        {
          goto LABEL_14;
        }

        CFDictionaryAddValue(*(a1 + 40), v5, a3);
LABEL_14:
        if (!v10)
        {
          return;
        }

        goto LABEL_15;
      }
    }
  }
}

void SOSBSKBRemoveRecoveryKey(uint64_t a1)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = *(a1 + 32);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSBSKBRemoveRecoveryKey_block_invoke;
    context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    context[4] = Mutable;
    CFDictionaryApplyFunction(v3, apply_block_2_6605, context);
    v4 = *(a1 + 32);
    if (v4)
    {
      *(a1 + 32) = 0;
      CFRelease(v4);
    }

    if (Mutable)
    {
      CFRetain(Mutable);
      *(a1 + 32) = Mutable;
      CFRelease(Mutable);
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }

  else
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "bskb-backup: caller passed a nil backup slice keybag", buf, 2u);
    }
  }
}

void __SOSBSKBRemoveRecoveryKey_block_invoke(uint64_t a1, const __CFString *cf, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    v5 = 0;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFDataGetTypeID())
    {
      if (v5 && CFStringFind(v5, @"-", 0).location == 2)
      {
        v8 = SOSKeyedPubKeyIdentifierCopyPrefix(v5);
        v9 = v8;
        if (v8 && bskbRkbgPrefix)
        {
          if (CFEqual(v8, bskbRkbgPrefix))
          {
LABEL_11:
            v10 = secLogObjForScope("bskb-backup");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v12) = 0;
              _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "skipping recovery key entry", &v12, 2u);
            }

            goto LABEL_21;
          }
        }

        else if (v8 == bskbRkbgPrefix)
        {
          goto LABEL_11;
        }

        CFDictionaryAddValue(*(a1 + 32), v5, a3);
LABEL_21:
        if (v9)
        {
          CFRelease(v9);
        }

        return;
      }
    }

    else
    {
      a3 = 0;
    }
  }

  CFDictionaryAddValue(*(a1 + 32), v5, a3);
  v11 = secLogObjForScope("bskb-backup");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = a3;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "adding: %@:%@", &v12, 0x16u);
  }
}

BOOL SOSBSKBHasRecoveryKey(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = SOSBSKBCopyAdditionalKeysWithPrefix(*MEMORY[0x1E695E480], result, bskbRkbgPrefix);
    if (v2 && (v3 = v2, v4 = CFDictionaryGetCount(v2), CFRelease(v3), v4 > 0))
    {
      return 1;
    }

    else
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        Count = CFDictionaryGetCount(v5);
      }

      else
      {
        Count = 0;
      }

      v7 = *(v1 + 24);
      if (v7)
      {
        v8 = CFSetGetCount(v7);
        v7 = *(v1 + 24);
      }

      else
      {
        v8 = 0;
      }

      if (CFSetGetCount(v7))
      {
        v9 = Count <= v8;
      }

      else
      {
        v9 = 1;
      }

      return !v9;
    }
  }

  return result;
}

BOOL SOSBSKBHasThisRecoveryKey(uint64_t a1, const __CFData *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = SOSKeyedPubKeyIdentifierCreateWithData(bskbRkbgPrefix, a2);
  v4 = v3;
  if (a1 && v3)
  {
    v5 = CFDictionaryContainsKey(*(a1 + 32), v3) != 0;
  }

  else
  {
    v5 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  CFRelease(v4);
  return v5;
}

uint64_t SOSCircleCreateFromDER(const __CFAllocator *a1, CFErrorRef *a2, uint64_t *a3, uint64_t a4)
{
  SOSCircleGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *a3 = ccder_decode_constructed_tl();
  if (!v30)
  {
    if (!a2)
    {
      v26 = @"Bad Circle DER";
      goto LABEL_18;
    }

    v22 = *a2;
    v23 = @"Bad Circle DER";
LABEL_13:
    v27 = v23;
    v24 = 1035;
    goto LABEL_14;
  }

  v29 = 0;
  v8 = ccder_decode_uint64();
  *a3 = v8;
  if (v29 != 1)
  {
    v27 = @"Bad Circle Version";
    v24 = 5;
    v22 = 0;
LABEL_14:
    v25 = a2;
LABEL_19:
    SOSCreateErrorWithFormat(v24, v22, v25, 0, @"%@", v27);
    CFRelease(Instance);
    return 0;
  }

  *a3 = der_decode_string(a1, (Instance + 16), a2, v8, v30, v9, v10, v11);
  v12 = *MEMORY[0x1E695E480];
  *(Instance + 24) = SOSGenCountCreateFromDER(*MEMORY[0x1E695E480], a2, a3, v30, v13, v14, v15, v16);
  *(Instance + 32) = SOSPeerInfoSetCreateFromArrayDER(a1, &kSOSPeerSetCallbacks, a2, a3, v30);
  *(Instance + 40) = SOSPeerInfoSetCreateFromArrayDER(a1, &kSOSPeerSetCallbacks, a2, a3, v30);
  *(Instance + 48) = SOSPeerInfoSetCreateFromArrayDER(a1, &kSOSPeerSetCallbacks, a2, a3, v30);
  theDict = 0;
  *a3 = der_decode_dictionary(a1, &theDict, a2, *a3, v30, v17, v18, v19);
  v20 = theDict;
  if (!theDict)
  {
    if (!a2)
    {
      v26 = @"Bad Circle DER1";
      goto LABEL_18;
    }

    v22 = *a2;
    v23 = @"Bad Circle DER1";
    goto LABEL_13;
  }

  *(Instance + 56) = CFDictionaryCreateMutableCopy(v12, 0, theDict);
  CFRelease(v20);
  if (*a3 != v30)
  {
    if (a2)
    {
      v22 = *a2;
      v23 = @"Bad Circle DER2";
      goto LABEL_13;
    }

    v26 = @"Bad Circle DER2";
LABEL_18:
    v27 = v26;
    v24 = 1035;
    v22 = 0;
    v25 = 0;
    goto LABEL_19;
  }

  return Instance;
}

uint64_t SOSCircleCreateFromData(const __CFAllocator *a1, CFDataRef theData, CFErrorRef *a3)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SOSCircleCreateFromDER(a1, a3, &BytePtr, &BytePtr[Length]);
}

uint64_t SOSCircleGetDEREncodedSize(uint64_t a1, CFErrorRef *a2)
{
  if (ccder_sizeof_uint64() && der_sizeof_string(*(a1 + 16)) && der_sizeof_number(*(a1 + 24), a2) && SOSPeerInfoSetGetDEREncodedArraySize(*(a1 + 32), a2) && SOSPeerInfoSetGetDEREncodedArraySize(*(a1 + 40), a2) && SOSPeerInfoSetGetDEREncodedArraySize(*(a1 + 48), a2) && der_sizeof_dictionary(*(a1 + 56), a2))
  {

    return ccder_sizeof();
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain, 0, a2, v4, @"don't know how to encode", v5, v6);
    return 0;
  }
}

uint64_t SOSCircleEncodeToDER(uint64_t a1, CFErrorRef *a2, UInt8 *a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = der_encode_dictionary_repair(*(a1 + 56), a2, 0, a3, a4);
  v12 = SOSPeerInfoSetEncodeToArrayDER(v10, a2, a3, v11);
  v13 = SOSPeerInfoSetEncodeToArrayDER(v9, a2, a3, v12);
  v14 = SOSPeerInfoSetEncodeToArrayDER(v8, a2, a3, v13);
  v15 = der_encode_number(v7, a2, a3, v14);
  der_encode_string(v6, a2, a3, v15, v16, v17, v18, v19);
  ccder_encode_uint64();

  return ccder_encode_constructed_tl();
}

__CFData *SOSCircleCreateIncompatibleCircleDER()
{
  if (!ccder_sizeof_uint64())
  {
    return 0;
  }

  v0 = ccder_sizeof();
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataSetLength(Mutable, v0);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  CFDataGetLength(Mutable);
  ccder_encode_uint64();
  v3 = ccder_encode_constructed_tl();
  if (MutableBytePtr)
  {
    v4 = MutableBytePtr == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

__CFData *SOSCircleCopyEncodedData(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v5 = *MEMORY[0x1E695E480];
  DEREncodedSize = SOSCircleGetDEREncodedSize(a1, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __SOSCircleCopyEncodedData_block_invoke;
  v8[3] = &__block_descriptor_tmp_6679;
  v8[4] = a1;
  v8[5] = a3;
  return CFDataCreateWithDER(v5, DEREncodedSize, v8);
}

uint64_t der_sizeof_data_or_null(const __CFData *a1)
{
  if (a1)
  {
    CFDataGetLength(a1);

    return ccder_sizeof_raw_octet_string();
  }

  else
  {

    return ccder_sizeof();
  }
}

uint64_t der_encode_data_or_null(const __CFData *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return der_encode_data(a1, a2, a3, a4);
  }

  else
  {
    return der_encode_null(a2, a3, a4);
  }
}

const UInt8 *der_decode_data_or_null(const __CFAllocator *a1, void *a2, CFErrorRef *a3, const UInt8 *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v9 = der_decode_plist(a1, &cf, a3, a4, a5, a6, a7, a8);
  v10 = cf;
  if (cf)
  {
    v11 = CFGetTypeID(cf);
    if (v11 != CFDataGetTypeID())
    {
      CFRelease(v10);
      v10 = 0;
    }
  }

  if (a2)
  {
    *a2 = v10;
  }

  return v9;
}

uint64_t SOSCircleGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SOSCircleGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_6683;
  block[4] = &SOSCircleGetTypeID_sSOSCircleGetTypeIDSingleton;
  if (SOSCircleGetTypeID_sSOSCircleGetTypeIDOnce != -1)
  {
    dispatch_once(&SOSCircleGetTypeID_sSOSCircleGetTypeIDOnce, block);
  }

  return SOSCircleGetTypeID_sSOSCircleGetTypeIDSingleton;
}

uint64_t __SOSCircleGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *SOSCircleCopyDescription(uint64_t a1)
{
  DebugDescriptionFormatOptions = SecGetDebugDescriptionFormatOptions();

  return SOSCircleCopyFormatDescription(a1, DebugDescriptionFormatOptions);
}

__CFString *SOSCircleCopyFormatDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (CFDictionaryContainsKey(a2, @"SyncD"))
    {
      v5 = SOSGenerationCountCopyDescription(*(a1 + 24));
      CFStringAppendFormat(Mutable, 0, @"<C: gen:'%@' %@>\n", v5, *(a1 + 16));
      if (v5)
      {
        CFRelease(v5);
      }

      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = @"\t\t";
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = __descriptionCreateWithFormatOptions_block_invoke;
      v24[3] = &unk_1E70DA9A8;
      v24[6] = Mutable;
      v24[7] = a2;
      v24[4] = &v25;
      v24[5] = a1;
      v6 = *(a1 + 32);
      context = MEMORY[0x1E69E9820];
      v18 = 0x40000000;
      v19 = __SOSCircleForEachPeerMatching_block_invoke;
      v20 = &unk_1E70DAB28;
      v21 = &__block_literal_global_69;
      v22 = v24;
      CFSetApplyFunction(v6, apply_block_1_6744, &context);
      CFStringAppend(Mutable, @"\n\t\t<A:[");
      v26[3] = &stru_1EFA8C6C8;
      if (CFSetGetCount(*(a1 + 40)))
      {
        context = MEMORY[0x1E69E9820];
        v18 = 0x40000000;
        v19 = __descriptionCreateWithFormatOptions_block_invoke_2;
        v20 = &unk_1E70DA9D0;
        v22 = Mutable;
        v23 = a2;
        v21 = &v25;
        v7 = *(a1 + 40);
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __SOSCircleForEachApplicant_block_invoke;
        v13 = &unk_1E70DA720;
        p_context = &context;
        CFSetApplyFunction(v7, apply_block_1_6744, &v10);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"-");
      }

      CFStringAppend(Mutable, @"]> \n\t\t<R:[");
      v26[3] = &stru_1EFA8C6C8;
      if (CFSetGetCount(*(a1 + 48)))
      {
        v9 = *(a1 + 48);
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __descriptionCreateWithFormatOptions_block_invoke_3;
        v13 = &unk_1E70DA9F8;
        v15 = Mutable;
        v16 = a2;
        p_context = &v25;
        CFSetApplyFunction(v9, apply_block_1_6744, &v10);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"-");
      }

      CFStringAppend(Mutable, @"]>");
      _Block_object_dispose(&v25, 8);
      return Mutable;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return defaultDescriptionCreate(a1);
}

void __descriptionCreateWithFormatOptions_block_invoke(uint64_t a1, CFDictionaryRef *a2)
{
  if (SOSCircleVerifyPeerSigned(*(a1 + 40), a2, 0))
  {
    v4 = @"√";
  }

  else
  {
    v5 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", 0);
    v4 = @"-";
    if (v5)
    {
      v6 = v5;
      if (SOSCircleGetSignature(*(a1 + 40), v5, 0))
      {
        v4 = @"?";
      }

      CFRelease(v6);
    }
  }

  CFStringAppendFormat(*(a1 + 48), *(a1 + 56), @"%@%@ %@", *(*(*(a1 + 32) + 8) + 24), a2, v4);
  *(*(*(a1 + 32) + 8) + 24) = @"\n\t\t";
}

uint64_t __SOSCircleForEachPeerMatching_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

__CFString *defaultDescriptionCreate(const __CFNumber **a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = a1[3];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __defaultDescriptionCreate_block_invoke;
  v15[3] = &__block_descriptor_tmp_164_6698;
  v15[4] = Mutable;
  v15[5] = a1;
  SOSGenerationCountWithDescription(v3, v15);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = @"\n";
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __defaultDescriptionCreate_block_invoke_2;
  v10[3] = &unk_1E70DAA40;
  v10[4] = &v11;
  v10[5] = a1;
  v10[6] = Mutable;
  v10[7] = @"\n";
  v4 = a1[4];
  context = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = __SOSCircleForEachPeerMatching_block_invoke;
  v19 = &unk_1E70DAB28;
  v20 = &__block_literal_global_69;
  v21 = v10;
  CFSetApplyFunction(v4, apply_block_1_6744, &context);
  CFStringAppend(Mutable, @"], A:[");
  v12[3] = @"\n";
  if (CFSetGetCount(a1[5]))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __defaultDescriptionCreate_block_invoke_3;
    v9[3] = &unk_1E70DAA68;
    v9[4] = &v11;
    v9[5] = Mutable;
    v9[6] = @"\n";
    v5 = a1[5];
    context = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __SOSCircleForEachApplicant_block_invoke;
    v19 = &unk_1E70DA720;
    v20 = v9;
    CFSetApplyFunction(v5, apply_block_1_6744, &context);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"-");
  }

  CFStringAppend(Mutable, @"], R:[");
  v12[3] = @"\n";
  if (CFSetGetCount(a1[6]))
  {
    v6 = a1[6];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __defaultDescriptionCreate_block_invoke_4;
    v8[3] = &unk_1E70DAA90;
    v8[4] = &v11;
    v8[5] = Mutable;
    v8[6] = @"\n";
    CFSetApplyFunction(v6, apply_block_1_6744, v8);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"-");
  }

  CFStringAppend(Mutable, @"]>");
  _Block_object_dispose(&v11, 8);
  return Mutable;
}

void __defaultDescriptionCreate_block_invoke_2(uint64_t a1, CFDictionaryRef *a2)
{
  if (SOSCircleVerifyPeerSigned(*(a1 + 40), a2, 0))
  {
    v4 = @"√";
  }

  else
  {
    v5 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", 0);
    v4 = @"-";
    if (v5)
    {
      v6 = v5;
      if (SOSCircleGetSignature(*(a1 + 40), v5, 0))
      {
        v4 = @"?";
      }

      CFRelease(v6);
    }
  }

  CFStringAppendFormat(*(a1 + 48), 0, @"%@%@ %@", *(*(*(a1 + 32) + 8) + 24), a2, v4);
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 56);
}

__SecKey *SOSCircleVerifyPeerSigned(uint64_t a1, CFDictionaryRef *a2, CFErrorRef *a3)
{
  result = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", a3);
  if (result)
  {
    v6 = result;
    v7 = SOSCircleVerify(a1, result, a3);
    CFRelease(v6);
    return v7;
  }

  return result;
}

const void *SOSCircleGetSignature(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v4 = SOSCopyIDOfKey(a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(*(a1 + 56), v4);
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFDataGetTypeID())
    {
      v7 = 0;
    }
  }

  CFRelease(v5);
  return v7;
}

const __CFData *SOSCircleVerify(uint64_t a1, __SecKey *a2, CFErrorRef *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = ccsha256_di();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    memset(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v7);
  }

  SOSCircleHashGenAndPeers(v6, *(a1 + 24), *(a1 + 32), v8, a3);
  result = SOSCircleGetSignature(a1, a2, a3);
  if (result)
  {
    v10 = result;
    v11 = *v6;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v10);
    v14 = SecKeyRawVerify(a2, 0, v8, v11, BytePtr, Length);
    return SecError(v14, a3, @"Signature verification failed.");
  }

  return result;
}

uint64_t SOSCircleHashGenAndPeers(uint64_t a1, const __CFNumber *a2, const __CFSet *a3, uint64_t a4, uint64_t a5)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v12 = valuePtr - v11;
  if (v13 >= 8)
  {
    memset(valuePtr - v11, 170, v10);
  }

  ccdigest_init();
  if (a2)
  {
    valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a2, kCFNumberSInt64Type, valuePtr);
    v14 = valuePtr[0];
  }

  else
  {
    v14 = 0;
  }

  valuePtr[0] = v14;
  ccdigest_update();
  v15 = CFSetCopyValuesCFArray(a3);
  SOSCircleDigestArray(a1, v15, a4, a5);
  if (v15)
  {
    CFRelease(v15);
  }

  ccdigest_update();
  return (*(a1 + 56))(a1, v12, a4);
}

__CFArray *CFSetCopyValuesCFArray(const __CFSet *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (Count >= 1)
  {
    MEMORY[0x1EEE9AC00](Mutable);
    v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v6, 170, v5);
    CFSetGetValues(a1, v6);
    do
    {
      v7 = *v6++;
      CFArrayAppendValue(v4, v7);
      --Count;
    }

    while (Count);
  }

  return v4;
}

void SOSCircleDigestArray(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 1;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &context[-1] - v9;
  if (v11 >= 8)
  {
    memset(&context[-1] - v9, 170, v8);
  }

  ccdigest_init();
  v17.length = CFArrayGetCount(a2);
  v17.location = 0;
  CFArraySortValues(a2, v17, SOSPeerInfoCompareByID, 0);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleDigestArray_block_invoke;
  context[3] = &unk_1E70DA910;
  context[6] = v10;
  context[7] = a4;
  context[4] = v14;
  context[5] = a1;
  v18.length = CFArrayGetCount(a2);
  v18.location = 0;
  CFArrayApplyFunction(a2, v18, apply_block_1_6744, context);
  (*(a1 + 56))(a1, v10, a3);
  _Block_object_dispose(v14, 8);
}

BOOL __SOSCircleDigestArray_block_invoke(void *a1, uint64_t a2)
{
  result = SOSPeerInfoUpdateDigestWithPublicKeyBytes(a2, a1[5], a1[6], a1[7]);
  if (!result)
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  return result;
}

uint64_t SOSCircleCompare(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != SOSCircleGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != SOSCircleGetTypeID())
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (v6 == SOSCircleGetTypeID())
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFGetTypeID(a2);
  TypeID = SOSCircleGetTypeID();
  result = 0;
  if (v8 != TypeID)
  {
    a2 = 0;
  }

  if (v7 && a2)
  {
    v11 = *(v7 + 3);
    v12 = *(a2 + 24);
    if (v11 && v12)
    {
      result = CFEqual(v11, v12);
      if (!result)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v11 == v12)
    {
LABEL_17:
      result = SOSPeerInfoSetContainsIdenticalPeers(*(v7 + 4), *(a2 + 32));
      if (result)
      {
        result = SOSPeerInfoSetContainsIdenticalPeers(*(v7 + 5), *(a2 + 40));
        if (result)
        {
          result = SOSPeerInfoSetContainsIdenticalPeers(*(v7 + 6), *(a2 + 48));
          if (result)
          {
            v13 = *(v7 + 7);
            v14 = *(a2 + 56);
            if (v13 && v14)
            {
              return CFEqual(v13, v14) != 0;
            }

            else
            {
              return v13 == v14;
            }
          }
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

void SOSCircleDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[5] = 0;
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    a1[6] = 0;
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[7] = 0;

    CFRelease(v7);
  }
}

void *SOSCircleCreate(const __CFAllocator *a1, const __CFString *a2)
{
  SOSCircleGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = CFStringCreateCopy(a1, a2);
  Instance[3] = sosGenerationCreateOrIncrement(0);
  Instance[4] = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  Instance[5] = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  Instance[6] = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  Instance[7] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  return Instance;
}

void *SOSCircleCopyCircle(const __CFAllocator *a1, uint64_t a2)
{
  SOSCircleGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = CFStringCreateCopy(a1, *(a2 + 16));
  Instance[3] = SOSGenerationCopy(*(a2 + 24));
  Instance[4] = CFSetOfPeerInfoDeepCopy(a1, *(a2 + 32));
  Instance[5] = CFSetOfPeerInfoDeepCopy(a1, *(a2 + 40));
  Instance[6] = CFSetOfPeerInfoDeepCopy(a1, *(a2 + 48));
  Instance[7] = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 56));
  return Instance;
}

uint64_t CFSetOfPeerInfoDeepCopy(const __CFAllocator *a1, const __CFSet *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  Mutable = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CFSetOfPeerInfoDeepCopy_block_invoke;
  v6[3] = &unk_1E70DA8E8;
  v6[4] = &v7;
  v6[5] = a1;
  CFSetApplyFunction(a2, apply_block_1_6744, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __CFSetOfPeerInfoDeepCopy_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  cf = 0;
  Copy = SOSPeerInfoCreateCopy(*(a1 + 40), a2, &cf, a4, a5, a6, a7, a8);
  if (Copy)
  {
    v11 = Copy;
    CFSetAddValue(*(*(*(a1 + 32) + 8) + 24), Copy);
    CFRelease(v11);
  }

  else
  {
    v12 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = a2;
      v16 = 2112;
      v17 = cf;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Failed to copy peer: %@ (%@)", buf, 0x16u);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL SOSCircleSetSignature(uint64_t a1, void *a2, const void *a3, CFErrorRef *a4)
{
  v6 = SOSCopyIDOfKey(a2, a4);
  if (v6)
  {
    CFDictionarySetValue(*(a1 + 56), v6, a3);
    CFRelease(v6);
  }

  return v6 != 0;
}

BOOL SOSCircleSign(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v6 = ccsha256_di();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a2 && (v7 = *v6, v12[0] = MEMORY[0x1E69E9820], v12[1] = 0x40000000, v12[2] = __SOSCircleSign_block_invoke, v12[3] = &unk_1E70DA420, v12[6] = a1, v12[7] = a3, v12[4] = &v13, v12[5] = v6, v12[8] = a2, PerformWithBuffer(v7, v12), (v8 = v14[3]) != 0))
  {
    v9 = SOSCircleSetSignature(a1, a2, v8, a3);
    v10 = v14[3];
    if (v10)
    {
      v14[3] = 0;
      CFRelease(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

__CFData *SecKeyCopyRawHashSignature(size_t *a1, const uint8_t *a2, __SecKey *a3, __CFString **a4)
{
  v8 = *MEMORY[0x1E695E480];
  Size = SecKeyGetSize(a3, 1);
  Mutable = CFDataCreateMutable(v8, 0);
  CFDataSetLength(Mutable, Size);
  sigLen = CFDataGetLength(Mutable);
  v11 = *a1;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v13 = SecKeyRawSign(a3, 0, a2, v11, MutableBytePtr, &sigLen);
  if (SecError(v13, a4, @"Signing failed: %d", v13))
  {
    v14 = sigLen;
    if (v14 < CFDataGetLength(Mutable))
    {
      CFDataSetLength(Mutable, sigLen);
    }
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t SOSCircleCopyNextGenSignatureWithPeerAdded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ccsha256_di();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (a3)
  {
    v9 = *v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SOSCircleCopyNextGenSignatureWithPeerAdded_block_invoke;
    v11[3] = &unk_1E70DA448;
    v11[6] = a1;
    v11[7] = a2;
    v11[4] = &v12;
    v11[5] = v8;
    v11[8] = a4;
    v11[9] = a3;
    PerformWithBuffer(v9, v11);
    a3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return a3;
}

BOOL SOSCircleVerifySignatureExists(uint64_t a1, void *a2, CFErrorRef *a3)
{
  if (a2)
  {
    return SOSCircleGetSignature(a1, a2, a3) != 0;
  }

  v5 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "SOSCircleVerifySignatureExists no pubKey", buf, 2u);
  }

  if (a3)
  {
    SOSCreateErrorWithFormat(1035, *a3, a3, 0, @"%@", @"SOSCircleVerifySignatureExists no pubKey");
  }

  else
  {
    SOSCreateErrorWithFormat(1035, 0, 0, 0, @"%@", @"SOSCircleVerifySignatureExists no pubKey");
  }

  return 0;
}

CFStringRef SOSCircleCopyHashString(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = ccsha256_di();
  v3 = *v2;
  MEMORY[0x1EEE9AC00](v2);
  if (v3)
  {
    memset(v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v3);
  }

  SOSCircleHashGenAndPeers(v2, *(a1 + 24), *(a1 + 32), v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 0);
  return SOSCopyHashBufAsString(v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
}

BOOL SOSCircleVerifyPeerSignatureExists(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SOSCircleGetSignature(a1, v3, 0) != 0;
  CFRelease(v4);
  return v5;
}

uint64_t SOSCircleSignOldStyleResetToOfferingCircle(uint64_t a1, uint64_t a2, __SecKey *a3, CFErrorRef *a4)
{
  result = SOSFullPeerInfoCopyDeviceKey(a2, a4);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if ((SOSCircleUpgradePeerInfo(a1, a3, a2) & 1) == 0)
  {
    v12 = v9;
    goto LABEL_14;
  }

  SOSCircleRemoveRetired(a1);
  CFSetRemoveAllValues(*(a1 + 48));
  v10 = SecKeyCopyPublicKey(a3);
  SOSCircleRejectNonValidApplicants(a1, v10);
  v11 = secLogObjForScope("Development");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 0;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "SOSCircleEnsureRingConsistency requires ring membership and generation count consistency check", v13, 2u);
  }

  CFDictionaryRemoveAllValues(*(a1 + 56));
  if (!SOSCircleSign(a1, a3, a4) || !SOSCircleSign(a1, v9, a4))
  {
    CFRelease(v9);
    if (!v10)
    {
      return 0;
    }

    v12 = v10;
LABEL_14:
    CFRelease(v12);
    return 0;
  }

  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

uint64_t SOSCircleUpgradePeerInfo(uint64_t a1, SecKeyRef key, uint64_t a3)
{
  v6 = SecKeyCopyPublicKey(key);
  if (a3 && (v7 = *(a3 + 16)) != 0)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = SOSCircleCopyPeerInfo(*(a1 + 32), v8);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  if (SOSPeerInfoApplicationVerify(v9, v6, 0))
  {
    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v10);
    return 1;
  }

  v13 = secLogObjForScope("circle");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "SOSCircleGenerationSign: Upgraded peer's Application Signature", v21, 2u);
  }

  v14 = SOSFullPeerInfoCopyDeviceKey(a3, 0);
  if (v14)
  {
    v19 = v14;
    v20 = SOSPeerInfoCopyAsApplication(v10, key, v14, 0, v15, v16, v17, v18);
    updated = SOSCircleUpdatePeerInfo(a1, v20);
    if (v20)
    {
      CFRelease(v20);
    }

    CFRelease(v19);
  }

  else
  {
LABEL_17:
    updated = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return updated;
}

uint64_t SOSCircleRemoveRetired(uint64_t a1)
{
  v1 = *(a1 + 32);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __CFSetRemoveAllPassing_block_invoke;
  context[3] = &unk_1E70DAAB8;
  context[4] = &__block_literal_global_6767;
  context[5] = Mutable;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CFSetRemoveAllPassing_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_178;
  v4[4] = v1;
  v6.length = CFArrayGetCount(Mutable);
  v6.location = 0;
  CFArrayApplyFunction(Mutable, v6, apply_block_1_6744, v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

void SOSCircleRejectNonValidApplicants(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFSetCreateMutableCopy(0, 0, *(a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleRejectNonValidApplicants_block_invoke;
  v5[3] = &__block_descriptor_tmp_105_6766;
  v5[4] = a2;
  v5[5] = a1;
  CFSetApplyFunction(MutableCopy, apply_block_1_6744, v5);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void __SOSCircleRejectNonValidApplicants_block_invoke(uint64_t a1, const void *a2)
{
  if ((SOSPeerInfoApplicationVerify(a2, *(a1 + 32), 0) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 40);
    CFSetAddValue(*(v4 + 48), a2);

    CFSetRemoveValue(v5, a2);
  }
}

void __CFSetRemoveAllPassing_block_invoke(uint64_t a1, const void *a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);

    CFArrayAppendValue(v4, a2);
  }
}

uint64_t SOSCircleCopyPeerInfo(const __CFSet *a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleCopyPeerInfo_block_invoke;
  v5[3] = &unk_1E70DAB00;
  v5[4] = &v6;
  v5[5] = a2;
  CFSetApplyFunction(a1, apply_block_1_6744, v5);
  v2 = v7[3];
  if (v2)
  {
    CFRetain(v2);
    v3 = v7[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t SOSCircleUpdatePeerInfo(void *a1, const void *a2)
{
  if (sosCircleUpdatePeerInfoSet(a1[4], a2) & 1) != 0 || (sosCircleUpdatePeerInfoSet(a1[5], a2))
  {
    return 1;
  }

  v5 = a1[6];

  return sosCircleUpdatePeerInfoSet(v5, a2);
}

uint64_t sosCircleUpdatePeerInfoSet(const __CFSet *a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFSetGetValue(a1, a2);
  if (result)
  {
    if (CFEqual(result, a2))
    {
      return 0;
    }

    else
    {
      CFSetReplaceValue(a1, a2);
      return 1;
    }
  }

  return result;
}

uint64_t __SOSCircleCopyPeerInfo_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    if (a2)
    {
      v4 = *(a2 + 40);
    }

    else
    {
      v4 = 0;
    }

    result = CFEqual(v4, *(v3 + 40));
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = a2;
    }
  }

  return result;
}

uint64_t SOSCirclePreGenerationSign(uint64_t a1, uint64_t a2)
{
  SOSCircleRemoveRetired(a1);
  CFSetRemoveAllValues(*(a1 + 48));
  SOSCircleRejectNonValidApplicants(a1, a2);
  CFDictionaryRemoveAllValues(*(a1 + 56));
  return 1;
}

BOOL SOSCircleGenerationSign(uint64_t a1, SecKeyRef key, uint64_t a3, CFErrorRef *a4)
{
  v8 = SecKeyCopyPublicKey(key);
  SOSCirclePreGenerationSign(a1, v8);
  SOSCircleGenerationIncrement(a1);
  v9 = SOSCircleGenerationSign_Internal(a1, key, a3, a4);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void SOSCircleGenerationIncrement(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = sosGenerationCreateOrIncrement(v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

BOOL SOSCircleGenerationSign_Internal(uint64_t a1, __SecKey *a2, uint64_t a3, CFErrorRef *a4)
{
  if (!SOSCircleCountPeers(a1))
  {
    return 1;
  }

  v8 = SOSFullPeerInfoCopyDeviceKey(a3, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = SOSCircleUpgradePeerInfo(a1, a2, a3) && SOSCircleSign(a1, a2, a4) && SOSCircleSign(a1, v9, a4);
  CFRelease(v9);
  return v10;
}

uint64_t SOSCircleCountPeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountPeers_block_invoke;
  v4[3] = &unk_1E70DA498;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL SOSCircleConcordanceSign(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v5 = SOSFullPeerInfoCopyDeviceKey(a2, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = SOSCircleSign(a1, v5, a3);
  v8 = secLogObjForScope("Development");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SOSCircleEnsureRingConsistency requires ring signing op", v10, 2u);
  }

  CFRelease(v6);
  return v7;
}

uint64_t SOSCircleIsOlderGeneration(uint64_t a1, uint64_t a2)
{
  v2 = CFNumberCompare(*(a1 + 24), *(a2 + 24), 0);
  if ((v2 + 1) < 3)
  {
    return 1u >> ((v2 + 1) & 7);
  }

  else
  {
    return 0;
  }
}

uint64_t SOSCircleSharedTrustedPeers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SOSCircleSharedTrustedPeers_block_invoke;
  v6[3] = &unk_1E70DA470;
  v6[5] = a3;
  v6[6] = a2;
  v6[4] = &v7;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v6;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __SOSCircleSharedTrustedPeers_block_invoke(uint64_t a1, void *a2)
{
  result = CFEqual(*(a1 + 40), a2);
  if (a2 && !result)
  {
    result = SOSCircleHasPeerWithID(*(a1 + 48), a2[5]);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

const void *SOSCircleHasPeerWithID(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFSetGetValue(*(a1 + 32), a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != SOSPeerInfoGetTypeID())
    {
      return 0;
    }

    v5 = *(v3 + 16);
    if (v5 && CFDictionaryGetValue(v5, @"RetirementDate"))
    {
      return 0;
    }

    else
    {
      return !SOSPeerInfoIsCloudIdentity(v3);
    }
  }

  return result;
}

void SOSCircleForEachPeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_60;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}

const void *SOSCircleHasPeer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return SOSCircleHasPeerWithID(a1, *(a2 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t SOSCircleConcordanceTrust(uint64_t a1, uint64_t a2, int a3, __SecKey *a4, uint64_t a5, CFErrorRef *a6)
{
  if (!a4)
  {
    SOSCreateErrorWithFormat(2, 0, a6, 0, @"%@", @"Concordance with no user public key");
    return 3;
  }

  valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
  CFNumberGetValue(*(a2 + 24), kCFNumberCFIndexType, valuePtr);
  if (!valuePtr[0] && !SOSCircleCountPeers(a2))
  {
    return 0;
  }

  if (!SOSCircleCountPeers(a2))
  {
    v11 = CFNumberCompare(*(a1 + 24), *(a2 + 24), 0);
    if (v11 + 1) <= 2 && ((1u >> ((v11 + 1) & 7)))
    {
      return 0;
    }
  }

  if (SOSCircleGetSignature(a2, a4, a6))
  {
    if (SOSCircleVerify(a2, a4, a6))
    {
      if (!SOSCircleCountPeers(a1))
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2000000000;
        v25 = 4;
        valuePtr[0] = MEMORY[0x1E69E9820];
        valuePtr[1] = 0x40000000;
        valuePtr[2] = __GetSignersStatus_block_invoke;
        valuePtr[3] = &unk_1E70DA958;
        valuePtr[6] = a4;
        valuePtr[7] = a6;
        valuePtr[8] = 0;
        valuePtr[4] = &v22;
        valuePtr[5] = a2;
        v18 = *(a2 + 32);
        context[0] = MEMORY[0x1E69E9820];
        context[1] = 0x40000000;
        context[2] = __SOSCircleForEachPeerMatching_block_invoke;
        context[3] = &unk_1E70DAB28;
        context[4] = &__block_literal_global_69;
        context[5] = valuePtr;
        CFSetApplyFunction(v18, apply_block_1_6744, context);
        v12 = *(v23 + 6);
        _Block_object_dispose(&v22, 8);
        return v12;
      }

      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(*(a2 + 24), kCFNumberCFIndexType, valuePtr);
      if (valuePtr[0] || !SOSCircleIsOffering(a2))
      {
        v17 = CFNumberCompare(*(a2 + 24), *(a1 + 24), 0);
        if ((v17 + 1) <= 2 && 1u >> ((v17 + 1) & 7))
        {
          SOSCreateErrorWithFormat(1039, 0, a6, 0, @"%@", @"Bad generation - proposed circle gencount is older than known circle gencount");
          debugDumpCircle(@"isOlderGeneration known_circle", a1);
          debugDumpCircle(@"isOlderGeneration proposed_circle", a2);
          return 1;
        }

        if (!SOSCircleCountRetiredPeers(a2) && SOSCircleCountPeers(a2) == 1)
        {
          return GetOfferingStatus(a2, a4, a6);
        }

        v13 = a1;
        v14 = a2;
        v15 = a4;
        v16 = a5;
      }

      else
      {
        v13 = a2;
        v14 = a2;
        v15 = a4;
        v16 = 0;
      }

      return GetSignersStatus(v13, v14, v15, v16, a6);
    }

    if (a6)
    {
      SOSCreateErrorWithFormat(1038, *a6, a6, 0, @"%@", @"Bad user public signature");
    }

    else
    {
      SOSCreateErrorWithFormat(1038, 0, 0, 0, @"%@", @"Bad user public signature");
    }

    debugDumpCircle(@"proposed_circle", a2);
    return 5;
  }

  else
  {
    if (a6)
    {
      SOSCreateErrorWithFormat(1038, *a6, a6, 0, @"%@", @"No public signature to match current user key");
    }

    else
    {
      SOSCreateErrorWithFormat(1038, 0, 0, 0, @"%@", @"No public signature to match current user key");
    }

    return 2;
  }
}

void debugDumpCircle(__CFString *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v4 = secLogObjForScope("circledebug");
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (!a2)
    {
      return;
    }

LABEL_3:
    v6 = SOSCircleCopyEncodedData(a2, v5, &v16);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(v6);
    Mutable = CFStringCreateMutable(v8, 2 * Length);
    BytePtr = CFDataGetBytePtr(v7);
    v12 = CFDataGetLength(v7);
    if (v12 >= 1)
    {
      v13 = v12;
      do
      {
        v14 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v14, v16);
        --v13;
      }

      while (v13);
    }

    v15 = secLogObjForScope("circledebug");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = Mutable;
      _os_log_debug_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEBUG, "Full contents: %@", buf, 0xCu);
      if (!Mutable)
      {
        goto LABEL_10;
      }
    }

    else if (!Mutable)
    {
LABEL_10:
      CFRelease(v7);
      return;
    }

    CFRelease(Mutable);
    goto LABEL_10;
  }

  *buf = 138412546;
  v18 = a1;
  v19 = 2112;
  v20 = a2;
  _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
  if (a2)
  {
    goto LABEL_3;
  }
}

uint64_t GetSignersStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = *(a4 + 40);
  }

  else
  {
    v7 = 0;
  }

  v16[8] = v5;
  v16[9] = v6;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __GetSignersStatus_block_invoke;
  v11[3] = &unk_1E70DA958;
  v11[6] = a3;
  v11[7] = a5;
  v11[8] = v7;
  v11[4] = &v12;
  v11[5] = a2;
  v8 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v16[3] = &unk_1E70DAB28;
  v16[4] = &__block_literal_global_69;
  v16[5] = v11;
  CFSetApplyFunction(v8, apply_block_1_6744, v16);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t GetOfferingStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __GetOfferingStatus_block_invoke;
  v6[3] = &unk_1E70DA980;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v6;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __GetOfferingStatus_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", v6);
  if (v7)
  {
    v8 = v7;
    if (a2 && SOSCircleHasActiveValidPeerWithID(v4, *(a2 + 40), v5))
    {
      if (SOSCircleGetSignature(v4, v8, v6))
      {
        if (SOSCircleVerify(v4, v8, v6))
        {
          v9 = 0;
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        v9 = 7;
      }
    }

    else
    {
      v9 = 4;
    }

    CFRelease(v8);
  }

  else
  {
    v9 = 4;
  }

  *(*(a1[4] + 8) + 24) = v9;
  v10 = *(a1[4] + 8);
  if (*(v10 + 24))
  {
    *(v10 + 24) = 4;
  }
}

uint64_t SOSCircleHasActiveValidPeerWithID(uint64_t a1, const void *a2, __SecKey *a3)
{
  Value = CFSetGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != SOSPeerInfoGetTypeID())
  {
    return 0;
  }

  return SOSPeerInfoApplicationVerify(v5, a3, 0);
}

uint64_t SOSCircleCountRetiredPeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountRetiredPeers_block_invoke;
  v4[3] = &unk_1E70DA538;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_63;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __GetSignersStatus_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", v6);
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  if (!a2 || !SOSCircleHasActiveValidPeerWithID(v4, *(a2 + 40), v5))
  {
    v9 = 4;
LABEL_8:
    CFRelease(v8);
    goto LABEL_9;
  }

  if (SOSCircleGetSignature(v4, v8, v6))
  {
    if (SOSCircleVerify(v4, v8, v6))
    {
      v9 = 0;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_8;
  }

  CFRelease(v8);
  v15 = *(a2 + 40);
  v16 = a1[8];
  if (!v15 || !v16)
  {
    if (v15 != v16)
    {
      goto LABEL_29;
    }

LABEL_30:
    v9 = 4;
    goto LABEL_9;
  }

  if (CFEqual(v15, v16))
  {
    goto LABEL_30;
  }

LABEL_29:
  if (SOSPeerInfoIsCloudIdentity(a2))
  {
    goto LABEL_30;
  }

  v9 = 7;
LABEL_9:
  v10 = *(a1[4] + 8);
  if (v9)
  {
    v11 = *(v10 + 24);
    if (v9 == 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = *(v10 + 24);
    }

    if (v11 == 6)
    {
      v12 = 6;
    }

    if (v9 == 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  *(v10 + 24) = v14;
}

uint64_t SOSCircleGetName(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

char *SOSCircleGetNameC(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    CFRetain(*(a1 + 16));
    Length = CFStringGetLength(v1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(v1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(v1);
    return v4;
  }

  else
  {

    return strdup(&unk_188967DD7);
  }
}

void SOSCircleSetGeneration(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = 0;
    CFRelease(v4);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = cf;
}

const __CFNumber *SOSCircleGetGenerationSint(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void SOSCircleGenerationSetValue(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = v3;
}

uint64_t SOSCircleCountActivePeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountActivePeers_block_invoke;
  v4[3] = &unk_1E70DA4C0;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_69;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void SOSCircleForEachActivePeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_69;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}