void _AMAuthInstallUpdateHTTPHeaderWithEntry(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3)
{
  AMAuthInstallLog(7, "_AMAuthInstallUpdateHTTPHeaderWithEntry", "HTTP Request Header: %@=%@", a1, a2);

  CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

id UARPPersonalizationTSSRequestWithSigningServer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    v7 = String(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v14, 2u);
    }

    v4 = [NSURL URLWithString:@"https://gs.apple.com:443"];
    v6 = v4;
  }

  v8 = String(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v14, 0x16u);
  }

  v9 = String(v3, v6, 0);
  v10 = String(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_1();
    }

    v12 = v9;
  }

  else
  {
    if (v11)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_2();
    }
  }

  return v9;
}

id String(uint64_t a1)
{
  if (TSSRequestLogToken_onceToken != -1)
  {
    TSSRequestLogToken_cold_1();
  }

  v2 = TSSRequestLogToken_logToken;

  return v2;
}

id String(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = String(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler(String);
  v8 = AMAuthInstallCreate(kCFAllocatorDefault);
  if (!v8)
  {
    v14 = String(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_3();
    }

    goto LABEL_11;
  }

  v9 = v8;
  v10 = AMAuthInstallSetSigningServerURL(v8, v6);
  v11 = v10;
  v12 = String(v10);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_1();
    }

    CFRelease(v9);
LABEL_11:
    v15 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v16 = @" <AppleConnect>";
    }

    else
    {
      v16 = @" ";
    }

    *buf = 138543618;
    v30 = v6;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
  }

  v18 = String(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  v28 = 0;
  v19 = AMAuthInstallApCreatePersonalizedResponse(v9, v5, &v28);
  v20 = v19;
  v21 = String(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v22 = @" <AppleConnect>";
    }

    else
    {
      v22 = @" ";
    }

    *buf = 138543618;
    v30 = v6;
    v31 = 2114;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
  }

  v24 = String(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  if (v20)
  {
    v26 = String(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_2(v20, v26);
    }

    v15 = 0;
  }

  else
  {
    v15 = v28;
  }

  CFRelease(v9);
LABEL_32:

  return v15;
}

id UARPPersonalizationTSSRequestWithSigningServerSSO(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    v7 = String(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v12, 2u);
    }

    v4 = [NSURL URLWithString:@"https://gs.apple.com:443"];
    v6 = v4;
  }

  v8 = String(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v12, 0x16u);
  }

  v9 = String(v3, v6, 1);
  if (!v9)
  {
    v10 = String(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      UARPPersonalizationTSSRequestWithSigningServerSSO_cold_1();
    }
  }

  return v9;
}

void String(uint64_t a1, uint64_t a2)
{
  v3 = String(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void TSSRequestWithSigningServer_cold_2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v2, 8u);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id __copy_helper_block_e8_32s40s(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void __destroy_helper_block_e8_32s40s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        _EncodedDataRelease(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v7 = _EncodedDataCreate(a2, a3, a4, a5, a6, 3);

  return _DEREncoderAddEncodedData(a1, v7);
}

uint64_t _DEREncoderAddEncodedData(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 5);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 6), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        _EncodedDataRelease(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 6);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(v2[1], v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *_EncodedDataCreate(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
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

  v8 = _EncodedDataCreate(a2, a3, &v11 - v7 + 5, v7, 0, 3);
  return _DEREncoderAddEncodedData(a1, v8);
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

  v8 = _EncodedDataCreate(a2, a3, &v11 - v7 + 9, v7, 0, 3);
  return _DEREncoderAddEncodedData(a1, v8);
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

uint64_t _DEREncoderAddDataFromEncoderByEncoding(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = _EncodedDataCreate(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = _DEREncoderAddEncodedData(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddSequenceFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x10u, 1);
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
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x11u, 1);
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

  v8 = _DEREncoderAddDataFromEncoderByEncoding(a1, v6, 0, 0x10u, 1);
  if (!v8)
  {
    if (a2)
    {
      v8 = _DEREncoderAddDataFromEncoderByEncoding(v7, a2, 3u, a3, 1);
      goto LABEL_8;
    }

LABEL_7:
    v8 = 1;
  }

LABEL_8:
  DEREncoderDestroy(v7);
  return v8;
}

void _EncodedDataRelease(uint64_t a1)
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
          _EncodedDataRelease(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

id FormatHex(uint64_t a1, unint64_t a2, int a3)
{
  v6 = [NSMutableString stringWithCapacity:0];
  v7 = v6;
  v44 = 0;
  v43 = 0;
  if (a3)
  {
    v8 = @"00000000  ";
  }

  else
  {
    v8 = @"0000  ";
  }

  [v6 appendFormat:v8];
  v9 = 0;
  if (a2)
  {
    v10 = "%s %s\n%04x  ";
    if (a3)
    {
      v10 = "%s %s\n%08x  ";
    }

    __format = v10;
    do
    {
      if (v9 && (v9 & 0xF) == 0)
      {
        v11 = 0;
        v42 = 0;
        v41 = *(a1 + v9 - 16);
        do
        {
          v12 = *(&v41 + v11);
          if (v12 < 32 || v12 == 127 || *(&v41 + v11) == 32)
          {
            *(&v41 + v11) = 46;
          }

          ++v11;
        }

        while (v11 != 8);
        v13 = 0;
        v40 = 0;
        v39 = *(a1 + v9 - 8);
        do
        {
          v14 = *(&v39 + v13);
          if (v14 < 32 || v14 == 127 || *(&v39 + v13) == 32)
          {
            *(&v39 + v13) = 46;
          }

          ++v13;
        }

        while (v13 != 8);
        snprintf(__str, 0x20uLL, __format, &v41, &v39, v9);
        [v7 appendFormat:@"%s", __str];
      }

      if (v9 + 8 >= a2)
      {
        [v7 appendFormat:@"%02x ", *(a1 + v9++)];
      }

      else
      {
        v15 = *(a1 + v9);
        v16 = *(a1 + v9 + 1);
        if (((v9 + 8) & 0xF) != 0)
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x  ", v15, v16);
        }

        else
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x    ", v15, v16);
        }

        [v7 appendFormat:@"%s", __str];
        v9 += 8;
      }
    }

    while (v9 < a2);
    if (a2 >= 0x10)
    {
      a2 &= 0xFu;
      if (!a2)
      {
        [v7 appendString:@"   "];
        v31 = 0;
        v32 = a1 + v9;
        v43 = *(a1 + v9 - 16);
        do
        {
          v33 = *(&v43 + v31);
          if (v33 < 32 || v33 == 127 || *(&v43 + v31) == 32)
          {
            *(&v43 + v31) = 46;
          }

          ++v31;
        }

        while (v31 != 8);
        v34 = [NSString stringWithUTF8String:&v43];
        [v7 appendString:v34];

        [v7 appendString:@" "];
        v35 = 0;
        v43 = *(v32 - 8);
        do
        {
          v36 = *(&v43 + v35);
          if (v36 < 32 || v36 == 127 || *(&v43 + v35) == 32)
          {
            *(&v43 + v35) = 46;
          }

          ++v35;
        }

        while (v35 != 8);
        goto LABEL_58;
      }
    }
  }

  v17 = 3;
  if (a2 < 9)
  {
    v17 = 4;
  }

  v18 = 3 * (16 - a2) + v17;
  do
  {
    [v7 appendString:@" "];
    --v18;
  }

  while (v18);
  v19 = a2 - 8;
  if (a2 >= 8)
  {
    v22 = 0;
    v43 = *(a1 + v9 - a2);
    do
    {
      v23 = *(&v43 + v22);
      if (v23 < 32 || v23 == 127 || *(&v43 + v22) == 32)
      {
        *(&v43 + v22) = 46;
      }

      ++v22;
    }

    while (v22 != 8);
  }

  else
  {
    __memcpy_chk();
    *(&v43 + a2) = 0;
    if (a2)
    {
      v20 = &v43;
      do
      {
        v21 = *v20;
        if (v21 < 32 || v21 == 127 || *v20 == 32)
        {
          *v20 = 46;
        }

        v20 = (v20 + 1);
        --a2;
      }

      while (a2);
    }

    v19 = 0;
  }

  v24 = &v43;
  v25 = [NSString stringWithUTF8String:&v43];
  [v7 appendString:v25];

  if (v19)
  {
    [v7 appendString:@" "];
    __memcpy_chk();
    *(&v43 + v19) = 0;
    v26 = 1;
    do
    {
      v27 = *v24;
      if (v27 < 32 || v27 == 127 || *v24 == 32)
      {
        *v24 = 46;
      }

      v24 = (v24 + 1);
    }

    while (v19 > v26++);
LABEL_58:
    v29 = [NSString stringWithUTF8String:&v43];
    [v7 appendString:v29];
  }

  return v7;
}

void _AMRestorePartitionOpenFileWithURL_cold_2(int a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "open() returned %d, %s", a1, v3);
}

void __os_cleanup_iorelease_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_1(v5, v2, v3, v4, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_0(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

uint64_t AMSupportDigestSha1(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha256(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!sha256_digest_info)
  {
    sha256_digest_info = ccsha256_di();
  }

  ccdigest();
  return 0;
}

uint64_t AMSupportX509DecodeCertificate(unint64_t *a1, unint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    bzero(a1, 0x120uLL);
    a1[32] = a2;
    a1[33] = a3;
    if (DERParseSequence((a1 + 32), DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a1, 0x30uLL))
    {
      return 19;
    }

    if (DERParseSequence(a1, 0xAu, &AMSupportX509DERTBSCertItemSpecs, (a1 + 6), 0xA0uLL))
    {
      return 19;
    }

    v10 = 0u;
    v11 = 0u;
    v9 = 0;
    if (DERParseSequence((a1 + 18), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v10, 0x20uLL))
    {
      return 19;
    }

    if (DERParseSequenceContent(&v10, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, (a1 + 28), 0x20uLL))
    {
      return 19;
    }

    if (!DEROidCompare((a1 + 28), &oidRsa))
    {
      return 19;
    }

    v7 = a1[31];
    if (v7)
    {
      if (v7 != 2)
      {
        return 19;
      }

      v8 = a1[30];
      if (*v8 != 5 || v8[1])
      {
        return 19;
      }
    }

    if (DERParseBitString(&v11, a1 + 26, &v9) || v9)
    {
      return 19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMSupportRsaVerifySignatureSha1()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  if (v4 == 20)
  {
    v5 = OUTLINED_FUNCTION_3_0(v1, "\x06\x05+\x0E\x03\x02\x1A", v2, v3);
    if (v5)
    {
      v6 = v0;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == -13)
    {
      return 2;
    }

    else
    {
      return v6;
    }
  }

  return v0;
}

uint64_t AMSupportRsaVerifySignatureSha256()
{
  OUTLINED_FUNCTION_1_1(__stack_chk_guard);
  if (v4 == 32)
  {
    if (v5)
    {
      v6 = v0;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == -13)
    {
      return 2;
    }

    else
    {
      return v6;
    }
  }

  return v0;
}

uint64_t AMSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  theDict = 0;
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  if (Count < 1)
  {
    v22 = 0;
    v4 = 0;
    Mutable = 0;
    goto LABEL_31;
  }

  v24 = v13;
  v25 = v11;
  while (1)
  {
    v14 = *v11;
    if (!*a4)
    {
      *a4 = CFDictionaryCreateMutableCopy(a1, 0, a2);
    }

    v15 = CFGetTypeID(*v13);
    if (v15 == CFDictionaryGetTypeID())
    {
      break;
    }

    v19 = theDict;
    MutableCopy = *a4;
    if (theDict)
    {
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
        v19 = theDict;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v19);
      *a4 = MutableCopy;
    }

    if (!MutableCopy)
    {
      Mutable = 0;
LABEL_37:
      v4 = 2;
      goto LABEL_29;
    }

    CFDictionarySetValue(MutableCopy, v14, *v13);
    Mutable = 0;
LABEL_23:
    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v13;
    ++v11;
    if (!--Count)
    {
      v4 = 0;
      Mutable = 0;
      goto LABEL_29;
    }
  }

  Value = CFDictionaryGetValue(a2, v14);
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
    v18 = CFGetTypeID(Mutable);
    if (v18 != CFDictionaryGetTypeID())
    {
      v4 = 8;
      goto LABEL_29;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      goto LABEL_37;
    }
  }

  v21 = AMSupportCreateMergedDictionary(a1, Mutable, *v13, &theDict);
  if (!v21)
  {
    CFDictionarySetValue(*a4, v14, theDict);
    goto LABEL_23;
  }

  v4 = v21;
LABEL_29:
  v11 = v25;
  v22 = theDict;
  v13 = v24;
LABEL_31:
  free(v11);
  free(v13);
  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

uint64_t AMAuthInstallCreate(const __CFAllocator *a1)
{
  v2 = pthread_once(&_AMAuthInstallClassInitializeOnce, _AMAuthInstallClassInitialize);
  v36 = OUTLINED_FUNCTION_1_2(v2, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v36 || (cf = CFURLCreateWithString(a1, @"https://gs.apple.com:443/", 0)) == 0)
  {
    cf = 0;
    goto LABEL_20;
  }

  v39 = CFURLCreateWithString(a1, @"http://vega-dr.apple.com:8080/vegads/fuser", 0);
  if (!v39)
  {
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v4 = CFURLCreateWithString(a1, @"http://treecko-dr.apple.com:8080/TREECKO/controller", 0);
  v38 = v4;
  if (!v4)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_1_2(v4, v5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v37 = v6;
  if (!v6)
  {
LABEL_22:
    v37 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v8 = OUTLINED_FUNCTION_1_2(v6, v7, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = v8;
  if (!v8)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_1_2(v8, v9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = v11;
  if (!v11)
  {
LABEL_24:
    v31 = 0;
    v16 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
LABEL_27:
    v25 = 0;
LABEL_28:
    v28 = 0;
LABEL_29:
    v29 = 0;
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_1_2(v11, v12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = v14;
  if (!v14)
  {
    v31 = 0;
    goto LABEL_25;
  }

  v17 = OUTLINED_FUNCTION_1_2(v14, v15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = v17;
  if (!v17)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_1_2(v17, v18, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_1_2(v20, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = v23;
  if (!v23)
  {
    v31 = 0;
    goto LABEL_28;
  }

  v26 = OUTLINED_FUNCTION_1_2(v23, v24, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v28 = v26;
  if (!v26)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v29 = OUTLINED_FUNCTION_1_2(v26, v27, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v29)
  {
    Instance = _CFRuntimeCreateInstance();
    v31 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x208uLL);
      *(v31 + 520) = 0;
      *(v31 + 57) = 257;
      *(v31 + 72) = CFRetain(cf);
      *(v31 + 80) = 3;
      *(v31 + 352) = CFRetain(v36);
      *(v31 + 376) = CFRetain(v37);
      *(v31 + 384) = CFRetain(v10);
      *(v31 + 416) = CFRetain(v13);
      *(v31 + 160) = CFRetain(v39);
      *(v31 + 296) = CFRetain(v38);
      *(v31 + 88) = @"ApImg4Ticket";
      *(v31 + 200) = CFRetain(v16);
      *(v31 + 208) = CFRetain(v19);
      *(v31 + 216) = CFRetain(v22);
      v32 = calloc(1uLL, 0x30uLL);
      *(v31 + 128) = v32;
      if (v32)
      {
        v33 = CFRetain(v25);
        v34 = *(v31 + 128);
        *v34 = v33;
        *(v34 + 40) = 0;
        *(v34 + 24) = 0u;
        *(v34 + 8) = 0u;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
        *(v31 + 440) = _AMAuthInstallNoopUpdaterAddTags;
        *(v31 + 448) = _AMAuthInstallNoopUpdaterWriteManifests;
        *(v31 + 456) = CFRetain(v28);
        *(v31 + 464) = CFRetain(v29);
        *(v31 + 488) = 0;
        *(v31 + 512) = 0;
        *(v31 + 360) = AMAuthInstallLockCreate(a1);
      }

      else
      {
        _AMAuthInstallFinalize(v31);
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  SafeRelease(v36);
  SafeRelease(cf);
  SafeRelease(v39);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v10);
  SafeRelease(v13);
  SafeRelease(0);
  SafeRelease(v16);
  SafeRelease(v19);
  SafeRelease(v22);
  SafeRelease(v25);
  SafeRelease(v28);
  SafeRelease(v29);
  return v31;
}

uint64_t AMAuthInstallSetSigningServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 72);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 72) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallApSupportsLocalSigning(uint64_t a1, _BYTE *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*(v5 + 112))
      {
        v6 = AMAuthInstallApImg4SupportsLocalSigning(a1);
LABEL_8:
        v7 = v6;
        result = 0;
        *a2 = v7;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
    }

    v6 = AMAuthInstallApImg3SupportsLocalSigning();
    goto LABEL_8;
  }

  return result;
}

uint64_t AMAuthInstallApSupportsGlobalSigning(uint64_t a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*(v5 + 112))
      {
        v6 = AMAuthInstallApImg4SupportsGlobalSigning(a1);
        result = 0;
        *a2 = v6;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
    }

    return 13;
  }

  return result;
}

uint64_t AMAuthInstallApRemoveInfoDict(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = 0;
  v6 = 1;
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v9);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        v3 = malloc(8 * Count);
        v13 = malloc(8 * Count);
        v4 = v13;
        v6 = 2;
        if (v3 && v13)
        {
          CFDictionaryGetKeysAndValues(v5, v3, v13);
          if (Count < 1)
          {
LABEL_14:
            v6 = 0;
            *a3 = CFRetain(v5);
          }

          else
          {
            v14 = 0;
            while (v3[v14])
            {
              v15 = v4[v14];
              if (!v15)
              {
                break;
              }

              v16 = CFGetTypeID(v15);
              if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v4[v14], @"Info"))
              {
                CFDictionaryRemoveValue(v4[v14], @"Info");
              }

              if (Count == ++v14)
              {
                goto LABEL_14;
              }
            }

            v6 = 1;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_6();
        v6 = 2;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
  }

  SafeRelease(v5);
  SafeFree(v3);
  SafeFree(v4);
  return v6;
}

uint64_t AMAuthInstallApCreatePersonalizedResponse(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = CFDictionaryContainsKey(theDict, @"Ap,LocalPolicy");
  v7 = 0;
  v29 = 0;
  v27 = 0;
  value = 0;
  v8 = 1;
  if (a1 && theDict && a3)
  {
    v9 = v6;
    if (AMAuthInstallApSupportsLocalSigning(a1, &v29 + 1))
    {
      goto LABEL_31;
    }

    v10 = AMAuthInstallApSupportsGlobalSigning(a1, &v29);
    if (v10 != 13)
    {
      v8 = v10;
      if (v10)
      {
        goto LABEL_31;
      }
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(v11 + 94) != 0;
      if (HIBYTE(v29) && *(v11 + 94))
      {
        AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Forcing server signing\n");
        LOBYTE(v12) = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    if (HIBYTE(v29) && !v12)
    {
      if (!*(a1 + 505))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (!v9 || !*(a1 + 505))
    {
      if (v29 != 0 && !v12)
      {
        v19 = CFRetain(*(a1 + 40));
        value = v19;
        if (v19)
        {
          v20 = v19;
          v21 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v21, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v7 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, *(a1 + 88), v20);
            *a3 = CFRetain(v7);
            AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Using global signing");
            v8 = 0;
            goto LABEL_32;
          }

          goto LABEL_37;
        }

        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "global ticketData is NULL");
LABEL_36:
        v7 = 0;
        goto LABEL_37;
      }

      v23 = CFGetAllocator(a1);
      v24 = AMAuthInstallApRemoveInfoDict(v23, theDict, &v27);
      if (v24)
      {
        v8 = v24;
        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "could not remove info dicts from request");
      }

      else
      {
        v8 = AMAuthInstallRequestSendSync(a1, v27, a3);
        if (v8)
        {
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v8);
          AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "server request error: %@", LocalizedStatusString);
        }
      }

LABEL_31:
      v7 = 0;
      goto LABEL_32;
    }

    v11 = *(a1 + 16);
LABEL_19:
    *(v11 + 84) = 1;
    *(v11 + 128) = 384;
LABEL_20:
    v13 = OUTLINED_FUNCTION_3_1();
    SignedManifest = AMAuthInstallApImg4LocalCreateSignedManifest(v13, v14, 0, 0, 0, v15);
    if (!SignedManifest)
    {
      if (value)
      {
        v17 = CFGetAllocator(a1);
        v18 = CFDictionaryCreateMutable(v17, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v7 = v18;
        if (v18)
        {
          CFDictionaryAddValue(v18, *(a1 + 88), value);
          v8 = 0;
          *a3 = CFRetain(v7);
          goto LABEL_32;
        }

LABEL_37:
        v8 = 2;
        goto LABEL_32;
      }

      AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "ticketData is NULL");
      goto LABEL_36;
    }

    v8 = SignedManifest;
    AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "failed to create a %s Img4 ticket");
    goto LABEL_31;
  }

LABEL_32:
  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(v27);
  return v8;
}

uint64_t AMAuthInstallApImg4DecodeRestoreInfo(const __CFData *a1, CFMutableDictionaryRef *a2)
{
  if (!a1 || !*a2)
  {
    return 1;
  }

  bzero(v34, 0x1C8uLL);
  v33[0] = 0;
  v33[1] = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = Img4DecodeInit(BytePtr, Length, v34);
  if (v7)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6);
  }

  else
  {
    if (!DERDecodeSeqContentInit(&v35, v33))
    {
      while (1)
      {
        do
        {
          while (1)
          {
            v8 = DERDecodeSeqNext(v33, &v31);
            if (!v8)
            {
              break;
            }

            if (v8 == 1)
            {
              return 0;
            }
          }

          v29 = 0;
          v30[0] = 0;
          v30[1] = 0;
          v28[0] = 0;
          v28[1] = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        while (DERDecodeItem(v32, &v29) || DERDecodeSeqContentInit(v30, v28) || DERDecodeSeqNext(v28, &v25) || v25 != 22);
        OUTLINED_FUNCTION_3_2();
        v13 = CFStringCreateWithBytes(v9, v10, v11, v12, 0);
        if (v13)
        {
          if (!DERDecodeSeqNext(v28, &v25))
          {
            break;
          }
        }

LABEL_34:
        SafeRelease(v13);
      }

      if (v25 == 1)
      {
        LOBYTE(v24) = 0;
        if (DERParseBoolean(&v26, &v24))
        {
          return 23;
        }

        if (v24)
        {
          v20 = kCFBooleanFalse;
        }

        else
        {
          v20 = kCFBooleanTrue;
        }

        if (!v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v25 != 2)
        {
          if (v25 == 4)
          {
            v18 = CFDataCreate(kCFAllocatorDefault, v26, v27);
          }

          else
          {
            if (v25 != 22)
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_3_2();
            v18 = CFStringCreateWithBytes(v14, v15, v16, v17, 0);
          }

          v21 = v18;
          if (v18)
          {
            CFDictionarySetValue(*a2, v13, v18);
          }

          v22 = v21;
          goto LABEL_33;
        }

        v24 = 0;
        if (DERParseInteger64(&v26, &v24))
        {
          return 23;
        }

        v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v24);
        if (!v19)
        {
LABEL_32:
          v22 = 0;
LABEL_33:
          SafeRelease(v22);
          goto LABEL_34;
        }

        v20 = v19;
      }

      CFDictionarySetValue(*a2, v13, v20);
      goto LABEL_32;
    }

    AMSupportLogInternal(3, "AMAuthInstallApImg4DecodeRestoreInfo", "can't parse top-level restoreinfo sequence");
  }

  return 99;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, void *a2, unsigned int *a3)
{
  v8 = 0;
  v43 = 0;
  v42 = 0;
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_7();
  if (!v12)
  {
LABEL_42:
    v40 = 3;
    goto LABEL_36;
  }

  v13 = v11;
  v3 = DEREncoderCreate(1);
  if (!v3)
  {
    v8 = 0;
    v4 = 0;
LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

  Count = CFDictionaryGetCount(v13);
  v15 = 8 * Count;
  v8 = malloc(v15);
  v16 = malloc(v15);
  v4 = v16;
  v5 = 0;
  if (!v8 || !v16)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_42;
  }

  CFDictionaryGetKeysAndValues(v13, v8, v16);
  if (Count)
  {
    v17 = 0;
    v18 = 8 * Count;
    v19 = "%s: unexpected restore property type";
    while (1)
    {
      v20 = v8[v17 / 8];
      if (!v20 || (v21 = CFGetTypeID(v8[v17 / 8]), v21 != CFStringGetTypeID()))
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "invalid overridesKey");
        goto LABEL_40;
      }

      v22 = v4[v17 / 8];
      if (!v22)
      {
        break;
      }

      v23 = CFGetTypeID(v22);
      if (v23 == CFDataGetTypeID())
      {
        if (AMAuthInstallApImg4AddDataProperty(v3, v20, v4[v17 / 8]))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = CFGetTypeID(v4[v17 / 8]);
        TypeID = CFBooleanGetTypeID();
        v26 = v4[v17 / 8];
        if (v24 == TypeID)
        {
          Value = CFBooleanGetValue(v26);
          if (AMAuthInstallApImg4AddBooleanProperty(v3, v20, Value))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v28 = CFGetTypeID(v26);
          if (v28 != CFNumberGetTypeID())
          {
            goto LABEL_38;
          }

          v29 = v4[v17 / 8];
          if (CFNumberGetType(v29) == kCFNumberSInt32Type)
          {
            if (AMAuthInstallApImg4AddInteger32Property(v3, v20, v29))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (CFNumberGetType(v29) != kCFNumberSInt64Type)
            {
              v19 = "%s: unexpected integer type";
LABEL_38:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v19, "AMAuthInstallApImg4EncodeRestoreDict");
LABEL_39:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore property");
              goto LABEL_40;
            }

            if (AMAuthInstallApImg4AddInteger64Property(v3, v8[v17 / 8], v29))
            {
              goto LABEL_39;
            }
          }
        }
      }

      v17 += 8;
      if (v18 == v17)
      {
        goto LABEL_25;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "invalid overridesValue");
    goto LABEL_40;
  }

LABEL_25:
  v5 = DEREncoderCreate(0);
  if (!v5)
  {
LABEL_41:
    v7 = 0;
    v6 = 0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_3_2();
  if (CFStringGetCString(v30, v31, v32, v33))
  {
    strlen(__s);
    OUTLINED_FUNCTION_5();
    if (DEREncoderAddData(v34, v35, v36, v37, v38, 0))
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to add %@ string", @"IM4M");
      goto LABEL_41;
    }
  }

  if (DEREncoderAddSetFromEncoder(v3, v5))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info properties as set");
    goto LABEL_41;
  }

  v6 = DEREncoderCreate(0);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_50;
  }

  if (DEREncoderAddSequenceFromEncoder(v5, v6))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info sequence");
    goto LABEL_52;
  }

  if (DEREncoderCreateEncodedBuffer(v6, &v42, &v43))
  {
LABEL_52:
    v7 = 0;
    goto LABEL_42;
  }

  v39 = DEREncoderCreate(0);
  v7 = v39;
  if (!v39)
  {
LABEL_50:
    v40 = 2;
    goto LABEL_36;
  }

  if (DEREncoderAddData(v39, 2, 1, v42, v43, 1) || DEREncoderCreateEncodedBuffer(v7, a2, a3))
  {
    goto LABEL_42;
  }

  v40 = 0;
LABEL_36:
  SafeFree(v8);
  SafeFree(v4);
  SafeFree(v42);
  DEREncoderDestroy(v3);
  DEREncoderDestroy(v5);
  DEREncoderDestroy(v7);
  DEREncoderDestroy(v6);
  return v40;
}

uint64_t AMAuthInstallApImg4LocalAddImages(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t *a3)
{
  if (!theDict)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "requestDict cannot be NULL");
LABEL_23:
    v7 = 0;
    v8 = 0;
    Mutable = 0;
LABEL_24:
    v18 = 1;
    goto LABEL_18;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "dstEncoder cannot be NULL");
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v7 = malloc(8 * Count);
  v8 = malloc(8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v7, v8);
  Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v18 = 2;
    goto LABEL_18;
  }

  if (Count >= 1)
  {
    v10 = 0;
    do
    {
      v11 = v7[v10];
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = v8[v10];
      v13 = CFGetTypeID(v7[v10]);
      if (v13 != CFStringGetTypeID() || v12 == 0)
      {
        goto LABEL_24;
      }

      v15 = CFGetTypeID(v12);
      if (v15 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(v12, @"Digest"))
        {
          v20.length = CFArrayGetCount(Mutable);
          v20.location = 0;
          if (CFArrayGetFirstIndexOfValue(Mutable, v20, v11) == -1)
          {
            CFArrayAppendValue(Mutable, v11);
            TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(v11);
            if (!TypeForEntryName)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "did not find a matching tag for requestTag %@", v11);
              goto LABEL_24;
            }

            v17 = AMAuthInstallApImg4LocalAddImageProperties(TypeForEntryName, a3, TypeForEntryName, v12);
            if (v17)
            {
              v18 = v17;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "failed to add %@ image to the ticket body", v11);
              goto LABEL_18;
            }
          }
        }
      }
    }

    while (Count != ++v10);
  }

  v18 = 0;
LABEL_18:
  SafeFree(v7);
  SafeFree(v8);
  SafeRelease(Mutable);
  return v18;
}

uint64_t AMAuthInstallApImg4LocalRegisterKeys(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  if (*(v1 + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "local signing is not available for production fused devices.");
    return 14;
  }

  if (!*(a1 + 392))
  {
    if (*(v1 + 88) || *(v1 + 16))
    {
      if (*(v1 + 89))
      {
        v3 = *(v1 + 8);
        if (v3 == 32784)
        {
          v4 = @"ap.ticket.insec.rsa4k.key.private";
        }

        else
        {
          if (v3 != 35168)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "unrecognized chipid: 0x%08X", v3);
            return 1;
          }

          v4 = @"ap.ticket.insec.rsa1k.key.private";
        }
      }

      else
      {
        v4 = @"ap.ticket.localpolicy.hacktivation.key.private";
        if (!*(a1 + 505))
        {
          v4 = @"ap.ticket.dev.key.private";
        }
      }
    }

    else
    {
      v4 = @"ap.ticket.unfused.key.private";
    }

    *(a1 + 392) = v4;
  }

  v5 = CFDictionaryContainsKey(*(a1 + 376), @"ap.ticket.dev.key.private");
  if (v5)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_3(v5, @"ap.ticket.insec.rsa1k.key", &kImg4TicketInsecureRsa1kPrivateKey);
  v20 = v6;
  v19 = OUTLINED_FUNCTION_1_3(v6, @"ap.ticket.insec.rsa4k.key", &kImg4TicketInsecureRsa4kPrivateKey);
  v7 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v8 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v9 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_1_3(v9, @"ap.ticket.dev.key", &kImg4TicketDevPrivateKey);
  v12 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_1_3(v12, @"ap.ticket.unfused.key", &kImg4TicketUnfusedPrivatekey);
  v15 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v16 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v17 = AMAuthInstallCryptoRegisterCertFromPEMBuffer();
  v18 = v17;
  result = OUTLINED_FUNCTION_1_3(v17, @"ap.ticket.localpolicy.hacktivation.key.private", &kImg4TicketLocalPolicyHacktivationKey);
  if ((!v20 || !v19 || !v11 || !v14 || !result) && (!v7 || !v8 || !v10 || !v13 || !v15 || !v16 || !v18))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available");
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFTypeRef *a2)
{
  memset(length, 0, sizeof(length));
  bytes = 0;
  if (!a1 || !a2)
  {
    v7 = 0;
    Mutable = 0;
    v8 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  if (!Mutable)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  if (!*(v6 + 20))
  {
    if (!*(a1 + 400))
    {
      if (*(a1 + 505))
      {
        v9 = @"ap.ticket.localpolicy.hacktivation.leaf.cert";
      }

      else if (*(v6 + 88) || *(v6 + 16))
      {
        if (*(v6 + 89))
        {
          v20 = *(v6 + 8);
          switch(v20)
          {
            case 32770:
              v9 = @"ap.ticket.8002.insec.cert";
              break;
            case 35168:
              if (!*(a1 + 408))
              {
                *(a1 + 408) = @"ap.ticket.ca.cert";
              }

              CertData = AMAuthInstallCryptoGetCertData();
              if (CertData)
              {
                goto LABEL_46;
              }

              BytePtr = CFDataGetBytePtr(*&length[1]);
              v22 = CFDataGetLength(*&length[1]);
              CFDataAppendBytes(Mutable, BytePtr, v22);
              v9 = @"ap.ticket.8960.insec.cert";
              break;
            case 32784:
              v9 = @"ap.ticket.8010.insec.cert";
              break;
            default:
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "unrecognized chipid: 0x%08X");
              goto LABEL_42;
          }
        }

        else
        {
          v9 = @"ap.ticket.8960.dev.cert";
        }
      }

      else
      {
        v9 = @"ap.ticket.8960.unfused.cert";
      }

      *(a1 + 400) = v9;
    }

    if (!*(a1 + 505))
    {
      v10 = *(a1 + 16);
      if (!*(v10 + 93))
      {
        v11 = *(v10 + 8);
        v12 = v11 == 32770 || v11 == 35168;
        if (!v12 && v11 != 32784)
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "chipid: 0x%08X unsupported for img4 local signing");
LABEL_42:
          v7 = 0;
          v8 = 1;
          goto LABEL_6;
        }
      }
    }

    CertData = AMAuthInstallCryptoGetCertData();
    if (!CertData)
    {
      v15 = CFDataGetBytePtr(*&length[1]);
      v16 = CFDataGetLength(*&length[1]);
      CFDataAppendBytes(Mutable, v15, v16);
      v7 = DEREncoderCreate(0);
      if (v7)
      {
        v17 = CFDataGetBytePtr(Mutable);
        v18 = CFDataGetLength(Mutable);
        if (DEREncoderAddData(v7, 0, 16, v17, v18, 1))
        {
          v8 = 3;
          goto LABEL_6;
        }

        if (!DEREncoderCreateEncodedBuffer(v7, &bytes, length))
        {
          v8 = 0;
          *a2 = CFDataCreate(0, bytes, length[0]);
          goto LABEL_26;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "%s: failed to create buffer", "AMAuthInstallApImg4LocalCreateEncodedCertificateChain");
      }

      v8 = 0;
      goto LABEL_26;
    }

LABEL_46:
    v8 = CertData;
    v7 = 0;
    goto LABEL_6;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "local signing is not available for production fused devices.");
  v7 = 0;
  v8 = 14;
LABEL_6:
  SafeRelease(*a2);
LABEL_26:
  SafeRelease(Mutable);
  SafeFree(bytes);
  DEREncoderDestroy(v7);
  return v8;
}

uint64_t AMAuthInstallApImg4LocalAddImageProperties(uint64_t a1, uint64_t *a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "toEncoder cannot be NULL", a4);
LABEL_28:
    v7 = 0;
    v11 = 1;
    goto LABEL_24;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "imageTag cannot be NULL", a4);
    goto LABEL_28;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "requestDict cannot be NULL", 0);
    goto LABEL_28;
  }

  v7 = DEREncoderCreate(1);
  if (!v7)
  {
    v11 = 2;
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"Digest");
  if (Value)
  {
    v9 = Value;
    if (CFDataGetLength(Value) < 1)
    {
      AMAuthInstallLog(6, "AMAuthInstallApImg4LocalAddImageProperties", "'%@' has zero length digest - skipping digest", a3);
    }

    else
    {
      v10 = AMAuthInstallApImg4AddDataProperty(v7, @"DGST", v9);
      if (v10)
      {
        v11 = v10;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add Digest property for '%@'", a3);
        goto LABEL_24;
      }
    }
  }

  v12 = CFDictionaryGetValue(a4, @"Trusted");
  if (v12 && (v13 = CFBooleanGetValue(v12), v14 = AMAuthInstallApImg4AddBooleanProperty(v7, @"EKEY", v13), v14))
  {
    v11 = v14;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EKEY property for '%@'", a3);
  }

  else
  {
    v15 = CFDictionaryGetValue(a4, @"DPRO");
    if (v15 && (v16 = CFBooleanGetValue(v15), v17 = AMAuthInstallApImg4AddBooleanProperty(v7, @"DPRO", v16), v17))
    {
      v11 = v17;
      AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DPRO property for '%@'", a3);
    }

    else
    {
      v18 = CFDictionaryGetValue(a4, @"DSEC");
      if (v18 && (v19 = CFBooleanGetValue(v18), v20 = AMAuthInstallApImg4AddBooleanProperty(v7, @"DSEC", v19), v20))
      {
        v11 = v20;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DSEC property for '%@'", a3);
      }

      else
      {
        v21 = CFDictionaryGetValue(a4, @"ESEC");
        if (v21 && (v22 = CFBooleanGetValue(v21), v23 = AMAuthInstallApImg4AddBooleanProperty(v7, @"ESEC", v22), v23))
        {
          v11 = v23;
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add ESEC property for '%@'", a3);
        }

        else
        {
          v24 = CFDictionaryGetValue(a4, @"EPRO");
          if (v24 && (v25 = CFBooleanGetValue(v24), v26 = AMAuthInstallApImg4AddBooleanProperty(v7, @"EPRO", v25), v26))
          {
            v11 = v26;
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EPRO property for '%@'", a3);
          }

          else
          {
            v27 = CFDictionaryGetValue(a4, @"TBMDigests");
            if (v27 && (v28 = AMAuthInstallApImg4AddDataProperty(v7, @"tbms", v27), v28))
            {
              v11 = v28;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add %@ property for '%@'", @"tbms", a3);
            }

            else
            {
              v11 = AMAuthInstallApImg4AddDictionaryProperty(v7, a2, a3);
              if (v11)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "AMAuthInstallApImg4LocalAddDictionaryProperty failed for '%@'", a3);
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  DEREncoderDestroy(v7);
  return v11;
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  cfa = 0;
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      if (*(cf + 46))
      {
        AMAuthInstallReleaseRsaKeyData();
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v13 = AMAuthInstallCopyRsaKeyDataForKey();
        if (v13)
        {
          v12 = v13;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v13);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", LocalizedStatusString, 0);
        }

        else
        {
          v15 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v15;
          if (v15)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  SafeRelease(cfa);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v2, v3, v4);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *");
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v5, v6, v7);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v8 = *(a1 + 280);

  SafeRelease(v8);
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    bzero(&v6, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v6);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v58 = 0;
  cf = 0;
  v57 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v11);
  }

  v12 = (a1 + 120);
  v13 = *(a1 + 120);
  v14 = v13;
  if (!v13)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.");
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.");
    v14 = *v12;
    if (!*v12)
    {
      v15 = *(a1 + 104);
      v16 = CFGetAllocator(a1);
      v17 = v15(a1, v16, a1 + 120, &v57);
      if (v17)
      {
        v9 = v17;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v57);
        Data = 0;
        goto LABEL_13;
      }

      v14 = *v12;
      if (!*v12)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.");
        Data = 0;
        v19 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(kCFAllocatorDefault, v14, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v12);
  if (!v13)
  {
    SafeRelease(*v12);
    *v12 = 0;
  }

LABEL_15:
  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_21;
  }

  if (*(v20 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, _ApplyTagPrefix, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v20 = *(a1 + 16);
      if (!v20)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure");
    Data = 0;
    v9 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v21 = *(v20 + 152);
  if (v21)
  {
    CFDictionaryApplyFunction(v21, _ApplyOverrideTags, theDict);
  }

LABEL_21:
  v22 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v22, @"@HostPlatformInfo", SimplePlatformInfoString);
  v24 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v24, @"@VersionInfo", LibraryVersionString);
  v26 = *(a1 + 16);
  if (!v26 || !*(v26 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", kCFBooleanTrue);
  }

  v27 = *(a1 + 96);
  if (v27)
  {
    CFDictionarySetValue(theDict, @"@UUID", v27);
  }

  v28 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v28)
  {
    v9 = v28;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v28);
LABEL_28:
    Data = 0;
    v19 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_1000A1550, *(a1 + 72));
  v19 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v19 + 24) = CFRetain(theDict);
  *(v19 + 16) = *(a1 + 80);
  *(v19 + 80) = *(a1 + 488);
  *(v19 + 88) = *(a1 + 512);
  if (*(v19 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorMalloc, 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  *(v19 + 32) = Mutable;
  v34 = *(a1 + 16);
  if (v34 && !*(v34 + 160))
  {
    _CFDictionarySetInteger64Str(Mutable, @"x-intnt-apchipid", *(v34 + 8));
    v35 = *(v19 + 32);
    v36 = *(*(a1 + 16) + 64);
    context = 0;
    if (v35 && v36 && CFNumberGetValue(v36, kCFNumberSInt64Type, &context))
    {
      _CFDictionarySetInteger64Str(v35, @"x-intnt-certcepo", context);
    }

    _CFDictionarySetInteger64Str(*(v19 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v37 = *(v19 + 32);
    if (v37)
    {
      v38 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v37, @"x-intnt-apsecuritymode", v38);
      v37 = *(v19 + 32);
      if (v37)
      {
        if (*(*(a1 + 16) + 20))
        {
          v39 = @"yes";
        }

        else
        {
          v39 = @"no";
        }

        CFDictionarySetValue(v37, @"x-intnt-approductionmode", v39);
        v37 = *(v19 + 32);
      }
    }

    _CFDictionarySetInteger64Str(v37, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    _CFDictionarySetInteger64Str(*(v19 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v40 = *(v19 + 32);
      if (v40)
      {
        CFDictionarySetValue(v40, @"x-intnt-authuserid", @"yes");
      }
    }

    v41 = *(*(a1 + 16) + 72);
    if (v41)
    {
      CFDictionarySetValue(*(v19 + 32), @"x-intnt-usbserialstr", v41);
    }

    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict(kCFAllocatorDefault, *(*(a1 + 128) + 32), @"Info.Variant");
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v19 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v43 = tss_submit(v19, v32, v33);
  v44 = v43;
  if (!v43)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v43 <= 0x2710)
  {
    v45 = *(v19 + 72);
    if (v45)
    {
      v9 = v43 + 3100;
      LODWORD(context) = v43 + 3100;
      if (v43 < 0x384)
      {
        v46 = CFGetAllocator(a1);
        v47 = CFNumberCreate(v46, kCFNumberIntType, &context);
        if (v47)
        {
          CFDictionarySetValue(*(a1 + 352), v47, v45);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", context, v45);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", context, v45);
        }

        SafeRelease(v47);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v43 + 3100);
    }
  }

  SafeRelease(0);
  if (v44 > 9999)
  {
    if ((v44 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_1000862D0[v44 - 10000];
    }
  }

  else
  {
    v9 = (v44 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", LocalizedStatusString);
LABEL_77:
  v49 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v49, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v50 = CFGetAllocator(a1);
    v51 = AMAuthInstallSupportBase64Encode(v50, Data, &v58);
    if (v44)
    {
      if (!v51)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v58);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>");
      }
    }

    else
    {
      if (!v51)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v58);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>");
      }

      Value = CFDictionaryGetValue(*(v19 + 40), @"@ServerVersion");
      v53 = @"unavailable";
      if (Value)
      {
        v53 = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v53);
      AMAuthInstallDebugWriteObject(a1, *(v19 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v19 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v58);
  SafeRelease(0);
  if (v19)
  {
    tss_close_session(v19);
  }

  return v9;
}

char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = _CopyHexStringFromData_kAsciiHexChars[v9 >> 4];
        result[(v8 + 1)] = _CopyHexStringFromData_kAsciiHexChars[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, const __CFData *a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v9 = AMAuthInstallSupportRemoveFile(cf);
    if (v9)
    {
LABEL_12:
      v4 = v9;
      goto LABEL_13;
    }

    v8 = 0;
LABEL_8:
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = cf;
    }

    v9 = AMSupportPlatformWriteDataToFileURL(a2, v10);
    goto LABEL_12;
  }

  v7 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v7)
  {
    v8 = cfa;
    goto LABEL_8;
  }

  v4 = v7;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.");
LABEL_13:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (OUTLINED_FUNCTION_1_6(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_6();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_6();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_6();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}