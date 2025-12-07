uint64_t VP8ParseProba(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 1195;
  v28 = a2 + 1195;
  v5 = a2 + 2256;
  v6 = &CoeffsUpdateProba;
  v7 = &CoeffsProba0;
  do
  {
    v32 = v5;
    v33 = v3;
    v8 = 0;
    v29 = v4;
    v30 = v7;
    v31 = v6;
    do
    {
      v34 = v4;
      v35 = v8;
      v9 = 0;
      v10 = v7;
      v11 = v6;
      do
      {
        for (i = 0; i != 11; ++i)
        {
          v13 = v11[i];
          v15 = *(a1 + 8);
          v14 = *(a1 + 12);
          if (v14 < 0)
          {
            v16 = *(a1 + 16);
            if (!v16)
            {
              VP8GetValue_cold_1();
            }

            if (v16 >= *(a1 + 32))
            {
              VP8LoadFinalBytes(a1, a2);
              v14 = *(a1 + 12);
            }

            else
            {
              v17 = *v16;
              *(a1 + 16) = v16 + 7;
              *(&v18 + 1) = *a1;
              *&v18 = bswap64(v17);
              *a1 = v18 >> 8;
              v14 += 56;
            }
          }

          v19 = (v15 * v13) >> 8;
          v20 = v14;
          v21 = *a1 >> v14;
          if (v19 >= v21)
          {
            v22 = v19 + 1;
          }

          else
          {
            v22 = v15 - v19;
            *a1 -= (v19 + 1) << v20;
          }

          v23 = __clz(v22) ^ 0x18;
          *(a1 + 8) = (v22 << v23) - 1;
          *(a1 + 12) = v20 - v23;
          if (v19 >= v21)
          {
            Value = v10[i];
          }

          else
          {
            Value = VP8GetValue(a1, 8);
          }

          *(v4 + i) = Value;
        }

        ++v9;
        v11 += 11;
        v10 += 11;
        v4 += 11;
      }

      while (v9 != 3);
      v8 = v35 + 1;
      v6 += 33;
      v7 += 33;
      v4 = v34 + 33;
    }

    while (v35 != 7);
    for (j = 0; j != 17; ++j)
    {
      *(v32 + 8 * j) = v28 + 264 * v33 + 33 * kBands[j];
    }

    v3 = v33 + 1;
    v6 = v31 + 264;
    v7 = v30 + 264;
    v4 = v29 + 264;
    v5 = v32 + 136;
  }

  while (v33 != 3);
  result = VP8GetValue(a1, 1);
  *(a2 + 2800) = result;
  if (result)
  {
    result = VP8GetValue(a1, 8);
    *(a2 + 2804) = result;
  }

  return result;
}

uint64_t WebPParseHeaders(uint64_t *a1)
{
  v4 = 0;
  v3 = 0;
  if (!a1)
  {
    WebPParseHeaders_cold_1();
  }

  v4 = ParseHeadersInternal(*a1, a1[1], 0, 0, 0, &v3, 0, a1);
  if (!v4)
  {
    if (!v3)
    {
      return v4;
    }

    return 4;
  }

  if (v4 == 7 && v3 != 0)
  {
    return 4;
  }

  return v4;
}

uint64_t ParseHeadersInternal(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6, int *a7, uint64_t a8)
{
  v43 = a2;
  v44 = a1;
  if (a8)
  {
    v13 = *(a8 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = 7;
  if (!a1 || a2 < 0xC)
  {
    return v14;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v15 = bswap32(*a1);
  v16 = v15 >= 0x52494646;
  v17 = v15 > 0x52494646;
  v18 = !v16;
  v19 = v17 - v18;
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    if (*(a1 + 8) != 1346520407)
    {
      return 3;
    }

    v20 = *(a1 + 4);
    if ((v20 + 9) < 0x15)
    {
      return 3;
    }

    if (v13 && a2 - 8 < v20)
    {
      return 7;
    }

    *(&v39 + 1) = *(a1 + 4);
    a1 += 12;
    v43 = a2 - 12;
    v44 = a1;
    if (a2 - 12 < 8)
    {
      return 7;
    }

    a2 -= 12;
  }

  v21 = bswap32(*a1);
  v16 = v21 >= 0x56503858;
  v22 = v21 > 0x56503858;
  v23 = !v16;
  v24 = v22 - v23;
  if (v22 != v23)
  {
    LOBYTE(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(a1 + 4) != 10)
  {
    return 3;
  }

  v16 = a2 >= 0x12;
  a2 -= 18;
  if (!v16)
  {
    return 7;
  }

  v29 = (*(a1 + 12) | (*(a1 + 14) << 16)) + 1;
  v28 = (*(a1 + 15) | (*(a1 + 17) << 16)) + 1;
  if (((v29 * v28) & 0xFFFFFFFF00000000) != 0)
  {
    return 3;
  }

  v27 = *(a1 + 8);
  a1 += 18;
  v43 = a2;
  v44 = a1;
  if (v19)
  {
    return 3;
  }

  v25 = (v27 >> 1) & 1;
  v26 = v25;
  if (a5)
  {
LABEL_16:
    *a5 = (v27 >> 4) & 1;
  }

LABEL_17:
  if (a6)
  {
    *a6 = v26;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v41 = v28;
  v42 = v29;
  if (a8)
  {
    LOBYTE(v25) = 0;
  }

  if ((v25 & 1) == 0)
  {
    if (a2 < 4)
    {
      goto LABEL_25;
    }

    if (v19 | v24)
    {
      if (!v19 || !v24)
      {
        goto LABEL_47;
      }

      if (*a1 != 1213221953)
      {
        v20 = 0;
        goto LABEL_47;
      }
    }

    v30 = ParseOptionalChunks(&v44, &v43, v20, &v38, &v38 + 1);
    if (v30)
    {
      goto LABEL_48;
    }

    v20 = *(&v39 + 1);
LABEL_47:
    v30 = ParseVP8Header(&v44, &v43, v13, v20, &v39, &v40);
    if (v30)
    {
LABEL_48:
      v14 = v30;
      if (a8)
      {
        return v14;
      }

LABEL_49:
      if (v24 || v14 != 7)
      {
        return v14;
      }

      goto LABEL_51;
    }

    v31 = v39;
    if (v39 > 0xFFFFFFF6)
    {
      return 3;
    }

    v33 = v40;
    if (a7 && !v26)
    {
      if (v40)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      *a7 = v34;
    }

    if (v33)
    {
      if (v43 >= 5)
      {
        if (!VP8LGetInfo(v44, v43, &v42, &v41, a5))
        {
          return 3;
        }

        goto LABEL_72;
      }
    }

    else if (v43 >= 0xA)
    {
      if (!VP8GetInfo(v44, v43, v31, &v42, &v41))
      {
        return 3;
      }

LABEL_72:
      if (!v24)
      {
        v14 = 3;
        if (v29 != v42 || v28 != v41)
        {
          return v14;
        }
      }

      if (a8)
      {
        *a8 = v37;
        *(a8 + 16) = 0u;
        v35 = v39;
        *(a8 + 32) = v38;
        *(a8 + 48) = v35;
        *(a8 + 64) = v40;
        v36 = &v44[-*a8];
        *(a8 + 24) = v36;
        if (v36 > 0xFFFFFFF5)
        {
          ParseHeadersInternal_cold_2();
        }

        if (v36 != (*(a8 + 8) - v43))
        {
          ParseHeadersInternal_cold_1();
        }
      }

      goto LABEL_51;
    }

LABEL_25:
    v14 = 7;
    if (a8)
    {
      return v14;
    }

    goto LABEL_49;
  }

LABEL_51:
  if (a5)
  {
    *a5 |= v38 != 0;
  }

  if (a3)
  {
    *a3 = v42;
  }

  v14 = 0;
  if (a4)
  {
    *a4 = v41;
  }

  return v14;
}

uint64_t DecodeIntoRGBABuffer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (!WebPInitDecBufferInternal(&v13, 521))
  {
    return 0;
  }

  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v28 = 0;
  v21 = &v13;
  *&v14 = a4;
  DWORD2(v14) = a5;
  *&v15 = a6;
  LODWORD(v13) = a1;
  HIDWORD(v13) = 1;
  if (DecodeInto(a2, a3, &v21))
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t DecodeInto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = a1;
  v13 = a2;
  LODWORD(v14) = 1;
  v4 = WebPParseHeaders(&v12);
  if (v4)
  {
    return v4;
  }

  if (!a3)
  {
    DecodeInto_cold_1();
  }

  if (!VP8InitIoInternal(v18, 521))
  {
    return 2;
  }

  *&v19 = v13 - *(&v14 + 1);
  *(&v19 + 1) = v12 + *(&v14 + 1);
  WebPInitCustomIo(a3, v18);
  if (!v17)
  {
    v8 = VP8New();
    if (!v8)
    {
      return 1;
    }

    v9 = v8;
    v10 = *(&v15 + 1);
    *(v8 + 371) = v15;
    *(v8 + 372) = v10;
    if (!VP8GetHeaders(v8, v18))
    {
      goto LABEL_21;
    }

    v4 = WebPAllocateDecBuffer(LODWORD(v18[0]), DWORD1(v18[0]), *(a3 + 40), *a3);
    if (v4)
    {
      goto LABEL_22;
    }

    v9[50] = VP8GetThreadMethod(*(a3 + 40), &v12);
    VP8InitDithering(*(a3 + 40), v9);
    if (VP8Decode(v9, v18))
    {
      v4 = 0;
    }

    else
    {
LABEL_21:
      v4 = *v9;
    }

LABEL_22:
    VP8Delete(v9);
    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v6 = VP8LNew();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if (!VP8LDecodeHeader(v6, v18))
  {
    goto LABEL_18;
  }

  v4 = WebPAllocateDecBuffer(LODWORD(v18[0]), DWORD1(v18[0]), *(a3 + 40), *a3);
  if (v4)
  {
    goto LABEL_19;
  }

  if (VP8LDecodeImage(v7))
  {
    v4 = 0;
  }

  else
  {
LABEL_18:
    v4 = *v7;
  }

LABEL_19:
  VP8LDelete(v7);
  if (v4)
  {
LABEL_20:
    WebPFreeDecBuffer(*a3);
    return v4;
  }

LABEL_23:
  v11 = *(a3 + 40);
  if (v11 && *(v11 + 48))
  {
    return WebPFlipBuffer(*a3);
  }

  else
  {
    return 0;
  }
}

BOOL WebPInitDecoderConfigInternal(_OWORD *a1, int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0xFFFFFF00) == 0x200)
  {
    a1[13] = 0u;
    a1[14] = 0u;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    *(a1 + 4) = 0;
    return WebPInitDecBufferInternal(a1 + 40, 521) != 0;
  }

  return v2;
}

uint64_t WebPGetFeaturesInternal(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (!a1 || !a3 || (a4 & 0xFFFFFF00) != 0x200)
  {
    return 2;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return ParseHeadersInternal(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 12), (a3 + 16), 0);
}

uint64_t WebPDecode(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 2;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = ParseHeadersInternal(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 12), (a3 + 16), 0);
  if (v6)
  {
    v7 = v6;
    if (v6 == 7)
    {
      return 3;
    }

    return v7;
  }

  v14 = 0u;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  *&v14 = a3 + 160;
  v11 = (a3 + 40);
  if (!WebPAvoidSlowMemory((a3 + 40), a3))
  {
    return DecodeInto(a1, a2, &v11);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!WebPInitDecBufferInternal(v9, 521))
  {
    return 2;
  }

  LODWORD(v9[0]) = *(a3 + 40);
  *(v9 + 4) = *a3;
  v11 = v9;
  v7 = DecodeInto(a1, a2, &v11);
  if (!v7)
  {
    v7 = WebPCopyDecBufferPixels(v9, a3 + 40);
  }

  WebPFreeDecBuffer(v9);
  return v7;
}

uint64_t WebPIoInitFromOptions(_DWORD *a1, unsigned int *a2, unsigned int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (a1)
  {
    v7 = a1[2];
    a2[29] = v7 != 0;
    if (v7)
    {
      v8 = 0;
      v9 = a1[5];
      v10 = a1[6];
      v11 = a1[3] & 0xFFFFFFFE;
      if (a3 > 0xA)
      {
        v12 = a1[4] & 0xFFFFFFFE;
      }

      else
      {
        v11 = a1[3];
        v12 = a1[4];
      }

      v17 = v10 > v5 || v5 <= v12 || v9 > v6 || v6 <= v11 || v10 < 1 || v9 < 1;
      if (v17 || (v12 | v11) < 0)
      {
        return v8;
      }

      if (v6 - v11 < v9 || v5 - v12 < v10)
      {
        return v8;
      }

      goto LABEL_32;
    }

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    a2[29] = 0;
  }

  v9 = v6;
  v10 = v5;
LABEL_32:
  a2[30] = v11;
  a2[31] = v9 + v11;
  a2[32] = v12;
  a2[33] = v10 + v12;
  a2[3] = v9;
  a2[4] = v10;
  if (a1)
  {
    v19 = a1[7];
    a2[34] = v19 != 0;
    if (v19)
    {
      v20 = a1[8];
      v27 = a1[9];
      v28 = v20;
      if (!WebPRescalerGetScaledDimensions(v9, v10, &v28, &v27))
      {
        return 0;
      }

      v21 = v27;
      a2[35] = v28;
      a2[36] = v21;
      v22 = a2[34] == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = a1[1];
    v24 = *a1 != 0;
    a2[28] = v24;
    a2[22] = v23 == 0;
    if (!v22)
    {
      v25 = a2[35] < 3 * v6 / 4 && a2[36] < 3 * v5 / 4;
      a2[28] = v25 || v24;
      a2[22] = 0;
    }

    return 1;
  }

  else
  {
    a2[34] = 0;
    a2[28] = 0;
    v8 = 1;
    a2[22] = 1;
  }

  return v8;
}

uint64_t ParseOptionalChunks(_DWORD **a1, unint64_t *a2, unint64_t a3, void *a4, void *a5)
{
  if (!a1)
  {
    ParseOptionalChunks_cold_4();
  }

  if (!a2)
  {
    ParseOptionalChunks_cold_3();
  }

  if (!a4)
  {
    ParseOptionalChunks_cold_2();
  }

  if (!a5)
  {
    ParseOptionalChunks_cold_1();
  }

  v5 = *a1;
  v6 = *a2;
  *a4 = 0;
  *a5 = 0;
  *a1 = v5;
  *a2 = v6;
  if (v6 < 8)
  {
    return 7;
  }

  LODWORD(v8) = 22;
  while (1)
  {
    v9 = v5[1];
    if (v9 > 0xFFFFFFF6)
    {
      return 3;
    }

    v10 = (v9 + 9) & 0xFFFFFFFE;
    v8 = (v10 + v8);
    if (a3)
    {
      if (v8 > a3)
      {
        return 3;
      }
    }

    if (*v5 == 540561494 || *v5 == 1278758998)
    {
      break;
    }

    if (v6 >= v10)
    {
      if (*v5 == 1213221953)
      {
        *a4 = v5 + 2;
        *a5 = v9;
      }

      v5 = (v5 + v10);
      v6 -= v10;
      *a1 = v5;
      *a2 = v6;
      if (v6 > 7)
      {
        continue;
      }
    }

    return 7;
  }

  return 0;
}

uint64_t ParseVP8Header(uint64_t *a1, unint64_t *a2, int a3, unint64_t a4, unint64_t *a5, _BOOL4 *a6)
{
  v7 = *a1;
  v8 = *v7 == 1278758998;
  if (!v7)
  {
    ParseVP8Header_cold_4();
  }

  if (!a2)
  {
    ParseVP8Header_cold_3();
  }

  if (!a5)
  {
    ParseVP8Header_cold_2();
  }

  if (!a6)
  {
    ParseVP8Header_cold_1();
  }

  v12 = *a2;
  if (*a2 >= 8)
  {
    if (*v7 != 540561494 && *v7 != 1278758998)
    {
      v16 = VP8LCheckSignature(v7, v12);
      v13 = 0;
      *a6 = v16;
      *a5 = *a2;
      return v13;
    }

    v15 = *(v7 + 4);
    if (a4 >= 0xC && a4 - 12 < v15)
    {
      return 3;
    }

    if (!a3 || *a2 - 8 >= v15)
    {
      v13 = 0;
      *a5 = v15;
      *a1 = v7 + 8;
      *a2 -= 8;
      *a6 = v8;
      return v13;
    }
  }

  return 7;
}

uint64_t VP8InitRandom(uint64_t result, float a2)
{
  *(result + 168) = xmmword_18622B458;
  *(result + 184) = unk_18622B468;
  *(result + 200) = xmmword_18622B478;
  *(result + 212) = *(&xmmword_18622B478 + 12);
  *(result + 104) = xmmword_18622B418;
  *(result + 120) = unk_18622B428;
  *(result + 136) = xmmword_18622B438;
  *(result + 152) = unk_18622B448;
  *(result + 40) = xmmword_18622B3D8;
  *(result + 56) = unk_18622B3E8;
  *(result + 72) = xmmword_18622B3F8;
  *(result + 88) = unk_18622B408;
  *(result + 8) = kRandomTable;
  *(result + 24) = unk_18622B3C8;
  v2 = vcvts_n_u32_f32(a2, 8uLL);
  if (a2 > 1.0)
  {
    v2 = 256;
  }

  *result = 0x1F00000000;
  if (a2 < 0.0)
  {
    v2 = 0;
  }

  *(result + 228) = v2;
  return result;
}

void WebPInitConvertARGBToYUVNEON()
{
  WebPConvertRGB24ToY = ConvertRGB24ToY_NEON;
  WebPConvertBGR24ToY = ConvertBGR24ToY_NEON;
  WebPConvertARGBToY = ConvertARGBToY_NEON;
  WebPConvertARGBToUV = ConvertARGBToUV_NEON;
  WebPConvertRGBA32ToUV = ConvertRGBA32ToUV_NEON;
}

const char *ConvertRGB24ToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = a2;
    do
    {
      v12 = vld3_s8(result);
      result += 24;
      v10 = vmovl_u8(v12.val[0]);
      v11 = vmovl_u8(v12.val[1]);
      *v12.val[0].i8 = vmovl_u8(v12.val[2]);
      *v9++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, *v6.i8), *v10.i8, *v5.i8), v12.val[0], *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v11, v6), v10, v5), *v12.val[0].i8, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3++] = (33059 * *(result + 1) + 16839 * *result + 6420 * *(result + 2) + 1081344) >> 16;
      result += 3;
    }

    while (v3 < a3);
  }

  return result;
}

const char *ConvertBGR24ToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = a2;
    do
    {
      v13 = vld3_s8(result);
      result += 24;
      v10 = vmovl_u8(v13.val[2]);
      v11 = vmovl_u8(v13.val[1]);
      *v13.val[0].i8 = vmovl_u8(v13.val[0]);
      *v9++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, *v6.i8), *v10.i8, *v5.i8), v13.val[0], *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v11, v6), v10, v5), *v13.val[0].i8, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v12 = result + 2;
    v3 = v3;
    do
    {
      a2->i8[v3++] = (33059 * *(v12 - 1) + 16839 * *v12 + 6420 * *(v12 - 2) + 1081344) >> 16;
      v12 += 3;
    }

    while (v3 < a3);
  }

  return result;
}

const char *ConvertARGBToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = result;
    v10 = a2;
    do
    {
      v14 = vld4_s8(v9);
      v9 += 32;
      v11 = vmovl_u8(v14.val[2]);
      v12 = vmovl_u8(v14.val[1]);
      v13 = vmovl_u8(v14.val[0]);
      *v10++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v12.i8, *v6.i8), *v11.i8, *v5.i8), *v13.i8, *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v12, v6), v11, v5), v13, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3] = (16839 * BYTE2(*&result[4 * v3]) + 6420 * *&result[4 * v3] + 33059 * BYTE1(*&result[4 * v3]) + 1081344) >> 16;
      ++v3;
    }

    while (v3 < a3);
  }

  return result;
}

const char *ConvertARGBToUV_NEON(const char *result, uint8x8_t *a2, uint8x8_t *a3, unsigned int a4, int a5)
{
  if (a4 >= 16)
  {
    v5 = a4 & 0x7FFFFFF0;
    v6 = vdupq_n_s16(0xDA09u);
    v7 = vdupq_n_s16(0xB577u);
    v8 = 16;
    v9 = vdupq_n_s16(0x7080u);
    v10.i64[0] = 0x100010001000100;
    v10.i64[1] = 0x100010001000100;
    v11 = vdupq_n_s16(0xA1CCu);
    v12 = vdupq_n_s16(0xEDB4u);
    v13 = result;
    do
    {
      v21 = vld4q_s8(v13);
      v14 = vpaddlq_u8(v21.val[2]);
      v15 = vpaddlq_u8(v21.val[1]);
      v21.val[0] = vpaddlq_u8(v21.val[0]);
      v21.val[1] = vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v15.i8, *v7.i8), *v14.i8, *v6.i8), vmull_s16(*v21.val[0].i8, *v9.i8)), vmlal_high_s16(vmull_high_s16(v15, v7), v14, v6), vmull_high_s16(v21.val[0], v9)), v10);
      v16 = vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v15.i8, *v11.i8), *v14.i8, *v9.i8), vmull_s16(*v21.val[0].i8, *v12.i8)), vmlal_high_s16(vmull_high_s16(v15, v11), v14, v9), vmull_high_s16(v21.val[0], v12)), v10);
      v17 = vqrshrun_n_s16(v21.val[1], 1uLL);
      v18 = vqrshrun_n_s16(v16, 1uLL);
      if (!a5)
      {
        v17 = vrhadd_u8(v17, *a2);
        v18 = vrhadd_u8(v18, *a3);
      }

      *a2++ = v17;
      *a3++ = v18;
      v8 += 16;
      v13 += 64;
    }

    while (v8 <= a4);
  }

  else
  {
    v5 = 0;
  }

  v19 = __OFSUB__(a4, v5);
  v20 = a4 - v5;
  if (!((v20 < 0) ^ v19 | (v20 == 0)))
  {
    return WebPConvertARGBToUV_C(&result[4 * v5], a2, a3, v20, a5);
  }

  return result;
}

const __int16 *ConvertRGBA32ToUV_NEON(const __int16 *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 8)
  {
    v5 = 0;
    LODWORD(v4) = a4 & 0x7FFFFFF8;
    v6 = vdupq_n_s16(0xDA09u);
    v7 = vdupq_n_s16(0xB577u);
    v8 = vdupq_n_s16(0x7080u);
    v9.i64[0] = 0x200020002000200;
    v9.i64[1] = 0x200020002000200;
    v10 = vdupq_n_s16(0xA1CCu);
    v11 = vdupq_n_s16(0xEDB4u);
    do
    {
      v20 = vld4q_s16(result);
      result += 32;
      *(a2 + v5) = vqrshrun_n_s16(vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v20.val[1].i8, *v7.i8), *v20.val[0].i8, *v6.i8), vmull_s16(*v20.val[2].i8, *v8.i8)), vmlal_high_s16(vmull_high_s16(v20.val[1], v7), v20.val[0], v6), vmull_high_s16(v20.val[2], v8)), v9), 2uLL);
      *(a3 + v5) = vqrshrun_n_s16(vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v20.val[1].i8, *v10.i8), *v20.val[0].i8, *v8.i8), vmull_s16(*v20.val[2].i8, *v11.i8)), vmlal_high_s16(vmull_high_s16(v20.val[1], v10), v20.val[0], v8), vmull_high_s16(v20.val[2], v11)), v9), 2uLL);
      v12 = v5 + 16;
      v5 += 8;
    }

    while (v12 <= a4);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v4 = v4;
    do
    {
      v13 = *result;
      v14 = *(result + 1);
      v15 = *(result + 2);
      v16 = -19081 * v14 - 9719 * v13 + 28800 * v15 + 33685504;
      v17 = (v16 >> 18) & ~(v16 >> 31);
      if (v17 >= 255)
      {
        LOBYTE(v17) = -1;
      }

      *(a2 + v4) = v17;
      v18 = -24116 * v14 + 28800 * v13 - 4684 * v15 + 33685504;
      v19 = (v18 >> 18) & ~(v18 >> 31);
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *(a3 + v4++) = v19;
      result += 4;
    }

    while (v4 < a4);
  }

  return result;
}

void WebPInitUpsamplers()
{
  if (WebPInitUpsamplers_WebPInitUpsamplers_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPInitUpsamplersNEON();
    if (!qword_1EA8E14B8)
    {
      WebPInitUpsamplers_cold_11();
    }

    if (!qword_1EA8E14C8)
    {
      WebPInitUpsamplers_cold_10();
    }

    if (!qword_1EA8E14E8)
    {
      WebPInitUpsamplers_cold_9();
    }

    if (!qword_1EA8E14F0)
    {
      WebPInitUpsamplers_cold_8();
    }

    if (!WebPUpsamplers[0])
    {
      WebPInitUpsamplers_cold_7();
    }

    if (!qword_1EA8E14C0)
    {
      WebPInitUpsamplers_cold_6();
    }

    if (!qword_1EA8E14D0)
    {
      WebPInitUpsamplers_cold_5();
    }

    if (!qword_1EA8E14D8)
    {
      WebPInitUpsamplers_cold_4();
    }

    if (!qword_1EA8E14E0)
    {
      WebPInitUpsamplers_cold_3();
    }

    if (!qword_1EA8E14F8)
    {
      WebPInitUpsamplers_cold_2();
    }

    if (!qword_1EA8E1500)
    {
      WebPInitUpsamplers_cold_1();
    }

    WebPInitUpsamplers_WebPInitUpsamplers_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

unsigned __int8 *WebPYuv444ToRgba_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 3) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 2) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v24;
      *v5 = -1;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToBgra_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((33050 * v8) >> 8) + (v12 >> 8);
      v14 = v13 - 17685;
      v15 = (v13 - 17685) >> 6;
      if (v13 >= 0x4515)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 3) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 2) = v20;
      v21 = ((26149 * v10) >> 8) + (v12 >> 8);
      v22 = v21 - 14234;
      v23 = (v21 - 14234) >> 6;
      if (v21 >= 0x379A)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v24;
      *v5 = -1;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgb_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 2);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 3;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToBgr_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 2);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((33050 * v8) >> 8) + (v12 >> 8);
      v14 = v13 - 17685;
      v15 = (v13 - 17685) >> 6;
      if (v13 >= 0x4515)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((26149 * v10) >> 8) + (v12 >> 8);
      v22 = v21 - 14234;
      v23 = (v21 - 14234) >> 6;
      if (v21 >= 0x379A)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 3;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToArgb_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      *(v5 - 3) = -1;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgba4444_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 1);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -16;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 10;
      if (v17 >= -8708)
      {
        v20 = 15;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -16;
      }

      else
      {
        v24 = 0;
      }

      *(v5 - 1) = v16 & 0xF0 | v20;
      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24 | 0xF;
      v5 += 2;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgb565_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 1);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -8;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = 255;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 9;
      if (v21 >= 0x4515)
      {
        v24 = 31;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v16 & 0xF8 | (v20 >> 5);
      *v5 = (8 * v20) & 0xE0 | v24;
      v5 += 2;
      --a5;
    }

    while (a5);
  }

  return result;
}

void WebPInitYUV444Converters()
{
  if (WebPInitYUV444Converters_WebPInitYUV444Converters_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    qword_1EA8E25D8 = WebPYuv444ToRgba_C;
    qword_1EA8E25E8 = WebPYuv444ToBgra_C;
    WebPYUV444Converters[0] = WebPYuv444ToRgb_C;
    qword_1EA8E25E0 = WebPYuv444ToBgr_C;
    qword_1EA8E25F0 = WebPYuv444ToArgb_C;
    qword_1EA8E25F8 = WebPYuv444ToRgba4444_C;
    qword_1EA8E2600 = WebPYuv444ToRgb565_C;
    unk_1EA8E2608 = WebPYuv444ToRgba_C;
    qword_1EA8E2610 = WebPYuv444ToBgra_C;
    unk_1EA8E2618 = WebPYuv444ToArgb_C;
    qword_1EA8E2620 = WebPYuv444ToRgba4444_C;
    WebPInitYUV444Converters_WebPInitYUV444Converters_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

void VP8FiltersInitNEON()
{
  qword_1EA8E1410 = HorizontalUnfilter_NEON;
  qword_1EA8E1418 = VerticalUnfilter_NEON;
  qword_1EA8E1430 = HorizontalFilter_NEON;
  qword_1EA8E1438 = VerticalFilter_NEON;
  qword_1EA8E1440 = GradientFilter_NEON;
}

char *HorizontalUnfilter_NEON(char *result, _BYTE *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + *a2;
  *a3 = v5;
  if (a4 >= 2)
  {
    if (a4 >= 0x11)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        v9 = vaddq_s8(*&a2[v7 + 1], v8);
        v10 = vaddq_s8(vextq_s8(0, v9, 0xFuLL), v9);
        v11 = vaddq_s8(vextq_s8(0, v10, 0xEuLL), v10);
        v12 = vaddq_s8(vextq_s8(0, v11, 0xCuLL), v11);
        v13 = vaddq_s8(vextq_s8(0, v12, 8uLL), v12);
        v8 = vextq_s8(v13, 0, 0xFuLL);
        *&a3[v7 + 1] = v13;
        v14 = v7 + 33;
        v7 += 16;
      }

      while (v14 <= a4);
      v6 = ((a4 - 17) & 0xFFFFFFF0) + 17;
    }

    else
    {
      v6 = 1;
    }

    if (v6 < a4)
    {
      v15 = &a3[v6];
      v16 = *(v15 - 1);
      v17 = &a2[v6];
      do
      {
        v18 = *v17++;
        v16 += v18;
        *v15++ = v16;
        ++v6;
      }

      while (v6 < a4);
    }
  }

  return result;
}

char *VerticalUnfilter_NEON(char *result, _BYTE *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result)
  {
    if ((a4 & 0x80000000) != 0)
    {
      VerticalUnfilter_NEON_cold_1();
    }

    if (a4 >= 0x10)
    {
      v6 = 0;
      LODWORD(v5) = a4 & 0x7FFFFFF0;
      do
      {
        *&a3[v6] = vaddq_s8(*&result[v6], *&a2[v6]);
        v7 = v6 + 32;
        v6 += 16;
      }

      while (v7 <= a4);
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 < a4)
    {
      v5 = v5;
      do
      {
        a3[v5] = result[v5] + a2[v5];
        ++v5;
      }

      while (v5 < a4);
    }
  }

  else
  {

    return HorizontalUnfilter_NEON(0, a2, a3, a4);
  }

  return result;
}

uint64_t HorizontalFilter_NEON(_BYTE *a1, int a2, int a3, unsigned int a4, _BYTE *a5)
{
  if (!a1)
  {
    HorizontalFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    HorizontalFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    HorizontalFilter_NEON_cold_4();
  }

  if (a2 <= 0)
  {
    HorizontalFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    HorizontalFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    HorizontalFilter_NEON_cold_1();
  }

  *a5 = *a1;
  v9 = a2 - 1;
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  v11 = a3 - 1;
  if (v11)
  {
    v12 = a4;
    v13 = &v6[-a4];
    do
    {
      v5 += v12;
      v6 += v12;
      v13 += v12;
      *v5 = *v6 - *v13;
      result = PredictLine_NEON((v6 + 1), v6, (v5 + 1), v9);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t VerticalFilter_NEON(_BYTE *a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  if (!a1)
  {
    VerticalFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    VerticalFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    VerticalFilter_NEON_cold_4();
  }

  v7 = a2;
  if (a2 <= 0)
  {
    VerticalFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    VerticalFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    VerticalFilter_NEON_cold_1();
  }

  *a5 = *a1;
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  for (i = a3 - 1; i; --i)
  {
    v5 += a4;
    result = PredictLine_NEON(&v6[a4], v6, v5, v7);
    v6 += a4;
  }

  return result;
}

uint64_t GradientFilter_NEON(_BYTE *a1, int a2, int a3, int a4, _BYTE *a5)
{
  if (!a1)
  {
    GradientFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    GradientFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    GradientFilter_NEON_cold_4();
  }

  if (a2 <= 0)
  {
    GradientFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    GradientFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    GradientFilter_NEON_cold_1();
  }

  *a5 = *a1;
  v10 = (a2 - 1);
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  if (a3 != 1)
  {
    v12 = 1;
    do
    {
      v5[a4] = v6[a4] - v6[a4 - a4];
      if (a2 >= 9)
      {
        v14 = 0;
        do
        {
          *&v5[a4 + 1 + v14] = vsub_s8(*&v6[a4 + 1 + v14], vqmovun_s16(vsubw_u8(vaddl_u8(*&v6[v14 + 1], *&v6[a4 + v14]), *&v6[v14])));
          v15 = v14 + 16;
          v14 += 8;
        }

        while (v15 <= v10);
        v13 = v10 & 0x7FFFFFF8;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v10)
      {
        v16 = v13;
        v17 = v10 - v13;
        v18 = a4 + v13;
        v19 = v16 + 1;
        do
        {
          v20 = v6[v19] + v6[v18] - v6[v19 - 1];
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            v21 = 255;
          }

          result = v6[v18 + 1] - v21;
          v5[++v18] = result;
          ++v19;
          --v17;
        }

        while (v17);
      }

      ++v12;
      v5 += a4;
      v6 += a4;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t PredictLine_NEON(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    PredictLine_NEON_cold_1();
  }

  if (a4 >= 0x10)
  {
    v5 = 0;
    LODWORD(v4) = a4 & 0x7FFFFFF0;
    do
    {
      *(a3 + v5) = vsubq_s8(*(result + v5), *(a2 + v5));
      v6 = v5 + 32;
      v5 += 16;
    }

    while (v6 <= a4);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v4 = v4;
    do
    {
      *(a3 + v4) = *(result + v4) - *(a2 + v4);
      ++v4;
    }

    while (v4 < a4);
  }

  return result;
}

BOOL VP8LGetInfo(unsigned __int8 *a1, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 0;
  if (a1 && a2 >= 5)
  {
    if (*a1 == 47 && a1[4] <= 0x1Fu)
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      VP8LInitBitReader(v11, a1, a2);
      result = ReadImageInfo(v11, &v14 + 1, &v14, &v13);
      if (result)
      {
        if (a3)
        {
          *a3 = HIDWORD(v14);
        }

        if (a4)
        {
          *a4 = v14;
        }

        if (a5)
        {
          *a5 = v13;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ReadImageInfo(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (VP8LReadBits(a1, 8u) == 47 && (*a2 = VP8LReadBits(a1, 0xEu) + 1, *a3 = VP8LReadBits(a1, 0xEu) + 1, *a4 = VP8LReadBits(a1, 1u), !VP8LReadBits(a1, 3u)))
  {
    return *(a1 + 36) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t ReadHuffmanCodesHelper(int a1, int a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, void **a7)
{
  v8 = 0;
  v9 = a2 != a3;
  if (a4)
  {
    v9 = 0;
  }

  if (a2 > a3 || v9)
  {
    goto LABEL_61;
  }

  v10 = a4;
  v13 = kTableSize[a1];
  v55 = 1 << a1;
  v14 = (1 << a1) + 280;
  if (a1 <= 0)
  {
    v14 = 280;
  }

  v8 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  v15 = VP8LHtreeGroupsNew(a2);
  *a7 = v15;
  if (!v15 || !v8 || !VP8LHuffmanTablesAllocate(v13 * a2, a6))
  {
    if (*a5 == 5 || !*a5)
    {
      *a5 = 1;
    }

    goto LABEL_61;
  }

  if (a3 < 1)
  {
LABEL_56:
    free(v8);
    return 1;
  }

  v16 = 0;
  v50 = a3;
  v51 = v10;
  v52 = a7;
LABEL_12:
  v53 = v16;
  if (!v10)
  {
    v17 = v16;
LABEL_25:
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = 0;
    v24 = *a7 + 568 * v17;
    v25 = 1;
    while (1)
    {
      v26 = v21 || a1 <= 0;
      v27 = kAlphabetSize[v21];
      v28 = v26 ? 0 : v55;
      v29 = (v28 + v27);
      HuffmanCode = ReadHuffmanCode(v29, a5, v8, a6);
      v31 = *(*(a6 + 32) + 8);
      *&v24[8 * v21] = v31;
      if (!HuffmanCode)
      {
        goto LABEL_60;
      }

      if (v25)
      {
        v32 = *v31;
        v25 = (v21 & 3) == 0 || v32 == 0;
      }

      else
      {
        v32 = *v31;
      }

      v23 = (v23 + v32);
      *(*(a6 + 32) + 8) += 4 * HuffmanCode;
      if (v21 != 4)
      {
        v33 = *v8;
        if (v29 >= 2)
        {
          v34 = v27 + v28 - 1;
          v35 = v8 + 1;
          do
          {
            v37 = *v35++;
            v36 = v37;
            if (v37 > v33)
            {
              v33 = v36;
            }

            --v34;
          }

          while (v34);
        }

        v22 += v33;
        if (++v21 != 5)
        {
          continue;
        }
      }

      *(v24 + 10) = v25;
      *(v24 + 12) = 0;
      if (!v25 || (v38 = *(*(v24 + 2) + 2) | (*(*(v24 + 1) + 2) << 16) | (*(*(v24 + 3) + 2) << 24), *(v24 + 11) = v38, v23) || (v39 = *(*v24 + 2), v39 > 0xFF))
      {
        *(v24 + 13) = v22 < 6;
        if (v22 <= 5)
        {
          v40 = 0;
          v41 = (v24 + 56);
          for (i = 2; i != 258; i += 4)
          {
            v43 = (*v24 + i);
            v44 = *(v43 - 2);
            v45 = *v43;
            if (v45 < 0x100)
            {
              v46 = *(v43 - 1);
              *v41 = 0;
              v29 = v29 & 0xFFFFFFFF00000000 | v44 | (v45 << 16) | (v46 << 8);
              v47 = v40 >> AccumulateHCode(v29, 8, v41);
              v28 = v28 & 0xFFFFFFFF00000000 | *(*(v24 + 1) + 4 * v47);
              v48 = v47 >> AccumulateHCode(v28, 16, v41);
              v21 = v21 & 0xFFFFFFFF00000000 | *(*(v24 + 2) + 4 * v48);
              v23 = v23 & 0xFFFFFFFF00000000 | *(*(v24 + 3) + 4 * (v48 >> AccumulateHCode(v21, 0, v41)));
              AccumulateHCode(v23, 24, v41);
            }

            else
            {
              *v41 = v44 | 0x100;
              v41[1] = v45;
            }

            ++v40;
            v41 += 2;
          }
        }
      }

      else
      {
        *(v24 + 11) = v38 | (v39 << 8);
        *(v24 + 6) = 1;
      }

LABEL_55:
      a7 = v52;
      v16 = v53 + 1;
      v10 = v51;
      if (v53 + 1 != v50)
      {
        goto LABEL_12;
      }

      goto LABEL_56;
    }
  }

  v17 = *(v10 + 4 * v16);
  if (v17 != -1)
  {
    goto LABEL_25;
  }

  v18 = 0;
  while (1)
  {
    v19 = v55;
    if (v18 * 2 || a1 <= 0)
    {
      v19 = 0;
    }

    if (!ReadHuffmanCode(v19 + kAlphabetSize[v18], a5, v8, 0))
    {
      break;
    }

    if (++v18 == 5)
    {
      goto LABEL_55;
    }
  }

LABEL_60:
  a7 = v52;
LABEL_61:
  free(v8);
  VP8LHuffmanTablesDeallocate(a6);
  VP8LHtreeGroupsFree(*a7);
  result = 0;
  *a7 = 0;
  return result;
}

uint64_t ReadHuffmanCode(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = VP8LReadBits(a2 + 40, 1u);
  bzero(a3, 4 * a1);
  if (v8)
  {
    v9 = VP8LReadBits(a2 + 40, 1u);
    if (VP8LReadBits(a2 + 40, 1u))
    {
      v10 = 8;
    }

    else
    {
      v10 = 1;
    }

    *&a3[4 * VP8LReadBits(a2 + 40, v10)] = 1;
    if (v9 == 1)
    {
      *&a3[4 * VP8LReadBits(a2 + 40, 8u)] = 1;
    }

    goto LABEL_36;
  }

  memset(v32, 0, 76);
  v11 = VP8LReadBits(a2 + 40, 4u) + 4;
  if (v11 > 19)
  {
    ReadHuffmanCode_cold_1();
  }

  if (v11 >= 1)
  {
    v12 = &kCodeLengthCodeOrder;
    do
    {
      v13 = VP8LReadBits(a2 + 40, 3u);
      v14 = *v12++;
      *(v32 + v14) = v13;
      --v11;
    }

    while (v11);
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  if (VP8LHuffmanTablesAllocate(128, v30))
  {
    if (VP8LBuildHuffmanTable(v30, 7, v32, 19))
    {
      v16 = a1;
      if (!VP8LReadBits(a2 + 40, 1u) || (v17 = VP8LReadBits(a2 + 40, 3u), v16 = VP8LReadBits(a2 + 40, 2 * v17 + 2) + 2, v16 <= a1))
      {
        if (a1 >= 1)
        {
          v18 = 0;
          v19 = 8;
          do
          {
            if (!v16)
            {
              break;
            }

            v20 = *(a2 + 72);
            if (v20 >= 32)
            {
              VP8LDoFillBitWindow(a2 + 40, v15);
              v20 = *(a2 + 72);
            }

            v21 = (*v31 + 4 * ((*(a2 + 40) >> v20) & 0x7FLL));
            *(a2 + 72) = v20 + *v21;
            v22 = *(v21 + 1);
            if (v22 > 0xF)
            {
              v23 = kCodeLengthRepeatOffsets[v22 - 16];
              v24 = VP8LReadBits(a2 + 40, kCodeLengthExtraBits[v22 - 16]);
              if (v24 + v23 + v18 > a1)
              {
                goto LABEL_15;
              }

              if (v22 == 16)
              {
                v25 = v19;
              }

              else
              {
                v25 = 0;
              }

              if (v24 + v23 >= 1)
              {
                v26 = &a3[4 * v18];
                v27 = v24 + v23 + 1;
                do
                {
                  *v26 = v25;
                  v26 += 4;
                  --v27;
                }

                while (v27 > 1);
                v18 += v24 + v23;
              }
            }

            else
            {
              *&a3[4 * v18++] = v22;
              if (v22)
              {
                v19 = v22;
              }
            }

            --v16;
          }

          while (v18 < a1);
        }

        VP8LHuffmanTablesDeallocate(v30);
LABEL_36:
        if (!*(a2 + 76))
        {
          result = VP8LBuildHuffmanTable(a4, 8, a3, a1);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_37;
      }
    }
  }

LABEL_15:
  VP8LHuffmanTablesDeallocate(v30);
  if (*a2 == 5 || !*a2)
  {
    *a2 = 3;
  }

LABEL_37:
  result = 0;
  if (*a2 == 5 || *a2 == 0)
  {
    *a2 = 3;
  }

  return result;
}

void *VP8LNew()
{
  v0 = malloc_type_calloc(1uLL, 0x190uLL, 0x10700402F08B545uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0x200000000;
    VP8LDspInit();
  }

  return v1;
}

void VP8LDelete(void *a1)
{
  if (a1)
  {
    VP8LClear(a1);

    free(a1);
  }
}

void VP8LClear(uint64_t a1)
{
  ClearMetadata(a1 + 152);
  free(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 272) >= 1)
  {
    v2 = 0;
    v3 = (a1 + 296);
    do
    {
      free(*v3);
      *v3 = 0;
      v3 += 3;
      ++v2;
    }

    while (v2 < *(a1 + 272));
  }

  *(a1 + 272) = 0;
  *(a1 + 376) = 0;
  free(*(a1 + 384));
  *(a1 + 384) = 0;
  *(a1 + 16) = 0;
}

uint64_t VP8LDecodeAlphaHeader(unsigned int *a1, unsigned __int8 *a2, unint64_t a3)
{
  result = VP8LNew();
  if (result)
  {
    if (!a1)
    {
      VP8LDecodeAlphaHeader_cold_1();
    }

    v7 = result;
    v8 = *a1;
    v9 = a1[1];
    *(result + 132) = *a1;
    *(result + 136) = v9;
    a1[8] = v8;
    *(result + 8) = a1 + 8;
    *(a1 + 11) = a1;
    a1[9] = v9;
    *result = 0;
    VP8LInitBitReader((result + 40), a2, a3);
    if (!DecodeImageStream(*a1, a1[1], 1, v7, 0))
    {
      goto LABEL_13;
    }

    if (*(v7 + 272) == 1 && *(v7 + 280) == 3 && Is8bOptimizable(v7 + 152))
    {
      a1[48] = 1;
      v10 = *(v7 + 136) * *(v7 + 132);
      *(v7 + 32) = 0;
      v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
      *(v7 + 24) = v11;
      if (!v11)
      {
        if (*v7 == 5 || !*v7)
        {
          *v7 = 1;
        }

        goto LABEL_13;
      }
    }

    else
    {
      a1[48] = 0;
      if (!AllocateInternalBuffers32b(v7, *a1))
      {
LABEL_13:
        VP8LClear(v7);
        free(v7);
        return 0;
      }
    }

    *(a1 + 3) = v7;
    return 1;
  }

  return result;
}

uint64_t DecodeImageStream(uint64_t a1, uint64_t a2, int a3, int *a4, void *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (a3 && VP8LReadBits((a4 + 10), 1u))
  {
    v65 = a5;
    while (1)
    {
      v10 = a4[68];
      v11 = VP8LReadBits((a4 + 10), 2u);
      v12 = a4[94];
      if ((v12 & (1 << v11)) != 0)
      {
        goto LABEL_93;
      }

      v13 = &a4[6 * v10 + 70];
      a4[94] = v12 | (1 << v11);
      *v13 = v11;
      v13[2] = v9;
      v13[3] = v8;
      *(v13 + 2) = 0;
      v14 = v13 + 4;
      v15 = a4[68];
      a4[68] = v15 + 1;
      if (v15 >= 4)
      {
        DecodeImageStream_cold_2();
      }

      if (v11 < 2)
      {
        break;
      }

      if (v11 == 2)
      {
LABEL_10:
        if (!VP8LReadBits((a4 + 10), 1u))
        {
          a5 = v65;
          v7 = a3;
          goto LABEL_34;
        }
      }

      else
      {
        if (v11 != 3)
        {
          DecodeImageStream_cold_1();
        }

        v17 = VP8LReadBits((a4 + 10), 8u);
        v18 = v17 + 1;
        if (v17 + 1 > 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }

        if (v18 > 4)
        {
          v19 = 1;
        }

        if (v18 <= 16)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v63 = v13[2];
        v13[1] = v20;
        if (!DecodeImageStream((v17 + 1), 1, 0, a4, v14))
        {
          goto LABEL_93;
        }

        v62 = v20;
        v21 = 4 << (8uLL >> v13[1]);
        v22 = malloc_type_malloc(v21, 0x100004052888210uLL);
        if (!v22)
        {
          v60 = *a4;
          v32 = 1;
          if (!*a4 || v60 == 5)
          {
            goto LABEL_100;
          }

          goto LABEL_94;
        }

        v23 = *v14;
        *v22 = **v14;
        v64 = v22;
        if (v18 < 2)
        {
          LODWORD(v24) = 4;
          v7 = a3;
          v28 = v63;
        }

        else
        {
          LODWORD(v24) = 4 * v18;
          if (4 * v18 <= 5)
          {
            v24 = 5;
          }

          else
          {
            v24 = v24;
          }

          v25 = v24 - 4;
          v26 = v22 + 1;
          v27 = (v23 + 1);
          v28 = v63;
          do
          {
            v29 = *v27++;
            *v26 = *(v26 - 4) + v29;
            ++v26;
            --v25;
          }

          while (v25);
          v7 = a3;
        }

        if (v24 < v21)
        {
          bzero(v22 + v24, (v21 + ~v24) + 1);
        }

        v9 = (v28 + (1 << v62) - 1) >> v62;
        free(*v14);
        *v14 = v64;
        a5 = v65;
        if (!VP8LReadBits((a4 + 10), 1u))
        {
          goto LABEL_34;
        }
      }
    }

    v16 = VP8LReadBits((a4 + 10), 3u);
    v13[1] = v16 + 2;
    if (!DecodeImageStream((v13[2] + ~(-1 << (v16 + 2))) >> (v16 + 2), (v13[3] + ~(-1 << (v16 + 2))) >> (v16 + 2), 0, a4, v14))
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

LABEL_34:
  if (VP8LReadBits((a4 + 10), 1u))
  {
    v30 = VP8LReadBits((a4 + 10), 4u);
    if ((v30 - 1) >= 0xB)
    {
      v31 = *a4;
      v32 = 3;
      if (!*a4)
      {
        goto LABEL_100;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v30 = 0;
  }

  v67 = 0;
  v68 = 0;
  if (*(a4 + 29))
  {
    DecodeImageStream_cold_3();
  }

  if (*(a4 + 33))
  {
    DecodeImageStream_cold_4();
  }

  if (!v7)
  {
    v44 = 0;
    v33 = 1;
LABEL_53:
    v45 = 1;
    goto LABEL_54;
  }

  v33 = 1;
  if (!VP8LReadBits((a4 + 10), 1u))
  {
    v44 = 0;
    goto LABEL_53;
  }

  v34 = a5;
  v35 = VP8LReadBits((a4 + 10), 3u);
  v36 = v35 + 2;
  v37 = 1 << (v35 + 2);
  v38 = (v9 + v37 - 1) >> (v35 + 2);
  v39 = (v8 + v37 - 1) >> (v35 + 2);
  if (!DecodeImageStream(v38, v39, 0, a4, &v68))
  {
LABEL_91:
    v44 = 0;
    goto LABEL_92;
  }

  v40 = v38 * v39;
  a4[49] = v36;
  if (v40 < 1)
  {
    v33 = 1;
    a5 = v34;
  }

  else
  {
    v41 = v68;
    v33 = 1;
    v42 = v40;
    a5 = v34;
    do
    {
      v43 = *(v41 + 1);
      *v41 = v43;
      v41 += 4;
      if (v43 >= v33)
      {
        v33 = v43 + 1;
      }

      --v42;
    }

    while (v42);
  }

  if (v33 <= 1000 && v33 <= v9 * v8)
  {
    v44 = 0;
    v45 = v33;
    goto LABEL_54;
  }

  v50 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
  if (!v50)
  {
    if (*a4 == 5 || !*a4)
    {
      v44 = 0;
      *a4 = 1;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v44 = v50;
  memset(v50, 255, 4 * v33);
  if (v40 < 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = 0;
    v51 = v68;
    do
    {
      v52 = *v51;
      v53 = v44[v52];
      if (v53 == -1)
      {
        v44[v52] = v45;
        v53 = v45++;
      }

      *v51++ = v53;
      --v40;
    }

    while (v40);
  }

LABEL_54:
  if (a4[19] || !ReadHuffmanCodesHelper(v30, v45, v33, v44, a4, (a4 + 58), &v67))
  {
LABEL_92:
    free(v44);
    free(v68);
    VP8LHuffmanTablesDeallocate((a4 + 58));
    VP8LHtreeGroupsFree(v67);
LABEL_93:
    v60 = *a4;
LABEL_94:
    if (v60)
    {
      v61 = v60 == 5;
    }

    else
    {
      v61 = 1;
    }

    if (!v61)
    {
      goto LABEL_101;
    }

    v32 = 3;
    goto LABEL_100;
  }

  v46 = v67;
  *(a4 + 26) = v68;
  a4[54] = v45;
  *(a4 + 28) = v46;
  free(v44);
  if (v30 < 1)
  {
    a4[38] = 0;
    v48 = a3;
LABEL_73:
    v54 = a4[49];
    a4[33] = v9;
    a4[34] = v8;
    a4[50] = (v9 + (1 << v54) - 1) >> v54;
    if (v54)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    a4[48] = v55;
    if (v48)
    {
      a4[1] = 1;
      if (a5)
      {
        *a5 = 0;
      }

      a4[36] = 0;
    }

    else
    {
      v57 = a5;
      v58 = malloc_type_malloc(4 * v8 * v9, 0x100004052888210uLL);
      if (!v58)
      {
        goto LABEL_86;
      }

      v59 = v58;
      if (!DecodeImageData(a4, v58, v9, v8, v8, 0) || a4[19])
      {
        goto LABEL_102;
      }

      if (!v57)
      {
        DecodeImageStream_cold_5();
      }

      *v57 = v59;
      a4[36] = 0;
      ClearMetadata((a4 + 38));
    }

    return 1;
  }

  a4[38] = 1 << v30;
  v47 = VP8LColorCacheInit((a4 + 40), v30);
  v48 = a3;
  if (v47)
  {
    goto LABEL_73;
  }

LABEL_86:
  v31 = *a4;
  v32 = 1;
  if (!*a4)
  {
    goto LABEL_100;
  }

LABEL_37:
  if (v31 != 5)
  {
LABEL_101:
    v59 = 0;
    goto LABEL_102;
  }

LABEL_100:
  v59 = 0;
  *a4 = v32;
LABEL_102:
  free(v59);
  ClearMetadata((a4 + 38));
  return 0;
}

uint64_t Is8bOptimizable(uint64_t a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    for (i = (*(a1 + 72) + 24); !**(i - 2) && !**(i - 1) && !**i; i += 71)
    {
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t AllocateInternalBuffers32b(uint64_t a1, int a2)
{
  v2 = *(a1 + 132);
  if (v2 > a2)
  {
    AllocateInternalBuffers32b_cold_1();
  }

  v4 = *(a1 + 136) * v2;
  v5 = a2;
  v6 = malloc_type_malloc((a2 << 6) + 4 * (v4 + a2), 0x100004052888210uLL);
  *(a1 + 24) = v6;
  if (v6)
  {
    *(a1 + 32) = &v6[4 * v4 + 4 * v5];
    return 1;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0;
    if (*a1 == 5 || *a1 == 0)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t VP8LDecodeAlphaImageStream(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    VP8LDecodeAlphaImageStream_cold_11();
  }

  v3 = a2;
  v4 = *(v2 + 136);
  if (v4 < a2)
  {
    VP8LDecodeAlphaImageStream_cold_10();
  }

  if (*(v2 + 140) >= a2)
  {
    return 1;
  }

  if (*(a1 + 192) || (WebPInitAlphaProcessing(), v4 = *(v2 + 136), *(a1 + 192)))
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 132);
    v8 = *(v2 + 144);
    LODWORD(v9) = v8 / v7;
    v10 = v8 % v7;
    v11 = v7 * v3;
    v12 = *(v2 + 192);
    if (v8 >= v7 * v3)
    {
      v14 = 0;
    }

    else
    {
      v13 = *(v2 + 196);
      if (v13)
      {
        v13 = *(*(v2 + 208) + 4 * ((v10 >> v13) + *(v2 + 200) * (v9 >> v13)));
      }

      if (v13 >= *(v2 + 216))
      {
        VP8LDecodeAlphaImageStream_cold_1();
      }

      v14 = (*(v2 + 224) + 568 * v13);
    }

    v65 = v4 * v7;
    if (v8 > v4 * v7)
    {
      VP8LDecodeAlphaImageStream_cold_9();
    }

    if (v4 < v3)
    {
      VP8LDecodeAlphaImageStream_cold_8();
    }

    if (!Is8bOptimizable(v2 + 152))
    {
      VP8LDecodeAlphaImageStream_cold_7();
    }

    v16 = v8 < v11 && *(v2 + 76) == 0;
    if (!v16)
    {
      goto LABEL_109;
    }

    v63 = v6 + 1;
    v67 = vdupq_n_s64(4uLL);
    v64 = v6;
    v66 = v12;
    while (1)
    {
      if ((v10 & v12) == 0)
      {
        v17 = *(v2 + 196);
        if (v17)
        {
          v17 = *(*(v2 + 208) + 4 * ((v10 >> v17) + *(v2 + 200) * (v9 >> v17)));
        }

        if (v17 >= *(v2 + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        v14 = (*(v2 + 224) + 568 * v17);
      }

      if (!v14)
      {
        VP8LDecodeAlphaImageStream_cold_6();
      }

      v18 = *(v2 + 72);
      if (v18 >= 32)
      {
        VP8LDoFillBitWindow(v2 + 40, v15);
        v18 = *(v2 + 72);
      }

      v19 = *(v2 + 40);
      v20 = (*v14 + 4 * (v19 >> v18));
      v21 = *v20;
      if (v21 >= 9)
      {
        v18 += 8;
        v20 += 4 * *(v20 + 1) + 4 * ((v19 >> v18) & ~(-1 << (v21 - 8)));
        v21 = *v20;
      }

      v22 = v18 + v21;
      *(v2 + 72) = v22;
      v23 = *(v20 + 1);
      if (v23 <= 0xFF)
      {
        *(v6 + v8++) = v23;
        if (++v10 < v7)
        {
          goto LABEL_99;
        }

        v10 = 0;
        if (v9 < v3 && ((v9 + 1) & 0xF) == 0)
        {
          ExtractPalettedAlphaRows(v2, (v9 + 1));
          v10 = 0;
        }

        LODWORD(v9) = v9 + 1;
LABEL_98:
        v12 = v66;
        goto LABEL_99;
      }

      if (v23 > 0x117)
      {
        goto LABEL_107;
      }

      v24 = v23 - 256;
      if (v23 - 256 >= 4)
      {
        v24 = VP8LReadBits(v2 + 40, (v23 - 258) >> 1) + ((v23 & 1 | 2) << v15);
        v19 = *(v2 + 40);
        v22 = *(v2 + 72);
      }

      v25 = (v14[4] + 4 * (v19 >> v22));
      v26 = *v25;
      if (v26 >= 9)
      {
        v22 += 8;
        v25 += 4 * *(v25 + 1) + 4 * ((v19 >> v22) & ~(-1 << (v26 - 8)));
        v26 = *v25;
      }

      *(v2 + 72) = v22 + v26;
      v27 = *(v25 + 1);
      if ((v22 + v26) >= 32)
      {
        VP8LDoFillBitWindow(v2 + 40, v15);
      }

      if (v27 >= 4)
      {
        v27 = VP8LReadBits(v2 + 40, (v27 - 2) >> 1) + ((v27 & 1 | 2) << v15);
      }

      if ((v27 + 1) < 121)
      {
        v28 = (kCodeToPlane[v27] >> 4) * v7 - (kCodeToPlane[v27] & 0xF) + 8;
        if (v28 <= 1)
        {
          v28 = 1;
        }
      }

      else
      {
        v28 = v27 - 119;
      }

      v29 = v24 + 1;
      v30 = v8 < v28 || v65 - v8 < v29;
      v6 = v64;
      if (v30)
      {
LABEL_107:
        v54 = 1;
        goto LABEL_113;
      }

      v31 = (v64 + v8);
      v32 = -v28;
      v15 = v31 - v28;
      if (v29 < 8)
      {
        break;
      }

      switch(v28)
      {
        case 4:
          v33 = *v15;
          break;
        case 2:
          v33 = *v15 | (*v15 << 16);
          break;
        case 1:
          v33 = 16843009 * *v15;
          break;
        default:
          goto LABEL_59;
      }

      if ((v31 & 3) != 0)
      {
        v35 = v63 + v8;
        v36 = v29;
        do
        {
          *v31 = *(v31 + v32);
          v31 = (v31 + 1);
          HIDWORD(v37) = v33;
          LODWORD(v37) = v33;
          v33 = v37 >> 8;
          --v36;
          v16 = (v35++ & 3) == 0;
        }

        while (!v16);
        v15 = v31 + v32;
      }

      else
      {
        v36 = v29;
      }

      v38 = (v36 >> 2);
      if (v38 < 1)
      {
        LODWORD(v38) = 0;
      }

      else
      {
        v39 = (v38 + 3) & 0xFFFFFFFC;
        v40 = vdupq_n_s64(v38 - 1);
        v41 = v31 + 2;
        v42 = xmmword_186205EC0;
        v43 = xmmword_186205EB0;
        do
        {
          v44 = vmovn_s64(vcgeq_u64(v40, v42));
          if (vuzp1_s16(v44, *v40.i8).u8[0])
          {
            *(v41 - 2) = v33;
          }

          if (vuzp1_s16(v44, *&v40).i8[2])
          {
            *(v41 - 1) = v33;
          }

          if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, *&v43))).i32[1])
          {
            *v41 = v33;
            v41[1] = v33;
          }

          v43 = vaddq_s64(v43, v67);
          v42 = vaddq_s64(v42, v67);
          v41 += 4;
          v39 -= 4;
        }

        while (v39);
      }

      if (v36 > 4 * v38)
      {
        v45 = v36 - 4 * v38;
        v46 = &v31[v38];
        v47 = (v15 + 4 * v38);
        do
        {
          v48 = *v47++;
          *v46 = v48;
          v46 = (v46 + 1);
          --v45;
        }

        while (v45);
      }

LABEL_86:
      for (v10 += v29; v10 >= v7; v10 -= v7)
      {
        v49 = v9;
        v9 = (v9 + 1);
        if (v49 < v3 && (v9 & 0xF) == 0)
        {
          ExtractPalettedAlphaRows(v2, v9);
        }
      }

      v8 += v29;
      if (v8 >= v11)
      {
        goto LABEL_98;
      }

      v12 = v66;
      if ((v10 & v66) != 0)
      {
        v50 = *(v2 + 196);
        if (v50)
        {
          v50 = *(*(v2 + 208) + 4 * ((v10 >> v50) + *(v2 + 200) * (v9 >> v50)));
        }

        if (v50 >= *(v2 + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        v14 = (*(v2 + 224) + 568 * v50);
      }

LABEL_99:
      v52 = *(v2 + 56);
      v51 = *(v2 + 64);
      if (v51 > v52)
      {
        ShiftBytes_cold_1();
      }

      if (*(v2 + 76))
      {
        *(v2 + 76) = 1;
LABEL_109:
        if (v9 >= v3)
        {
          v55 = v3;
        }

        else
        {
          v55 = v9;
        }

        ExtractPalettedAlphaRows(v2, v55);
        v54 = 0;
LABEL_113:
        v57 = *(v2 + 56);
        v56 = *(v2 + 64);
        if (v56 > v57)
        {
          ShiftBytes_cold_1();
        }

        if (*(v2 + 76))
        {
          v58 = 1;
        }

        else
        {
          v58 = v56 == v57 && *(v2 + 72) > 64;
        }

        *(v2 + 76) = v58;
        if ((v54 & 1) != 0 || v58 && v8 < v65)
        {
          if (*v2 != 5 && *v2)
          {
            return 0;
          }

          result = 0;
          if (v58)
          {
            v60 = 5;
          }

          else
          {
            v60 = 3;
          }

          *v2 = v60;
          return result;
        }

        *(v2 + 144) = v8;
        return 1;
      }

      v53 = v51 == v52 && *(v2 + 72) > 64;
      *(v2 + 76) = v53;
      if (v53 || v8 >= v11)
      {
        goto LABEL_109;
      }
    }

LABEL_59:
    if (v28 >= v29)
    {
      memcpy(v31, v15, v29);
    }

    else
    {
      v34 = v29;
      do
      {
        *v31 = *(v31 + v32);
        v31 = (v31 + 1);
        --v34;
      }

      while (v34);
    }

    goto LABEL_86;
  }

  v61 = *(v2 + 24);
  v62 = *(v2 + 132);

  return DecodeImageData(v2, v61, v62, v4, v3, ExtractAlphaRows);
}

uint64_t DecodeImageData(uint64_t HtreeGroupForPos, uint64_t a2, int a3, int a4, int a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = 0;
  v8 = *(HtreeGroupForPos + 152);
  v9 = *(HtreeGroupForPos + 144);
  v10 = (v9 / a3);
  LODWORD(i) = v9 % a3;
  v12 = a5 * a3;
  if (*(HtreeGroupForPos + 80))
  {
    v13 = v9 / a3;
  }

  else
  {
    v13 = 0x1000000;
  }

  v86 = v13;
  v78 = *(HtreeGroupForPos + 152);
  v80 = (HtreeGroupForPos + 160);
  if (v8 <= 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = HtreeGroupForPos + 160;
  }

  v83 = *(HtreeGroupForPos + 192);
  if (v9 < v12)
  {
    v15 = *(HtreeGroupForPos + 196);
    if (v15)
    {
      v15 = *(*(HtreeGroupForPos + 208) + 4 * ((i >> v15) + *(HtreeGroupForPos + 200) * (v10 >> v15)));
    }

    if (v15 >= *(HtreeGroupForPos + 216))
    {
      VP8LDecodeAlphaImageStream_cold_1();
    }

    v7 = *(HtreeGroupForPos + 224) + 568 * v15;
  }

  if (*(HtreeGroupForPos + 140) >= a5)
  {
    DecodeImageData_cold_2();
  }

  if (v12 > a4 * a3)
  {
    DecodeImageData_cold_15();
  }

  v82 = HtreeGroupForPos + 40;
  v16 = (a2 + 4 * v9);
  v84 = a2 + 4 * v12;
  if (v9 < v12)
  {
    v75 = HtreeGroupForPos + 152;
    v77 = a2 + 4 * a4 * a3;
    v76 = v8 + 280;
    v17 = (a2 + 4 * v9);
    while (1)
    {
      if (v10 >= v86)
      {
        if (!*(HtreeGroupForPos + 80))
        {
          DecodeImageData_cold_3();
        }

        v18 = *(v82 + 16);
        *(HtreeGroupForPos + 88) = *v82;
        *(HtreeGroupForPos + 104) = v18;
        *(HtreeGroupForPos + 120) = *(v82 + 32);
        *(HtreeGroupForPos + 128) = (v16 - a2) >> 2;
        if (*(HtreeGroupForPos + 152) >= 1)
        {
          VP8LColorCacheCopy(v80, HtreeGroupForPos + 176);
        }

        v86 = v10 + 8;
      }

      if ((i & v83) == 0)
      {
        v19 = *(HtreeGroupForPos + 196);
        if (v19)
        {
          v19 = *(*(HtreeGroupForPos + 208) + 4 * ((i >> v19) + *(HtreeGroupForPos + 200) * (v10 >> v19)));
        }

        if (v19 >= *(HtreeGroupForPos + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        v7 = *(HtreeGroupForPos + 224) + 568 * v19;
      }

      if (!v7)
      {
        DecodeImageData_cold_14();
      }

      if (*(v7 + 48))
      {
        break;
      }

      if (*(HtreeGroupForPos + 72) >= 32)
      {
        VP8LDoFillBitWindow(v82, a2);
      }

      if (!*(v7 + 52))
      {
        v26 = *(HtreeGroupForPos + 40);
        v31 = *(HtreeGroupForPos + 72);
        v32 = (*v7 + 4 * (v26 >> v31));
        v33 = *v32;
        if (v33 >= 9)
        {
          v31 += 8;
          v32 += 4 * *(v32 + 1) + 4 * ((v26 >> v31) & ~(-1 << (v33 - 8)));
          v33 = *v32;
        }

        *(HtreeGroupForPos + 72) = v31 + v33;
        v29 = *(v32 + 1);
        v35 = *(HtreeGroupForPos + 56);
        v34 = *(HtreeGroupForPos + 64);
LABEL_57:
        if (v34 > v35)
        {
          ShiftBytes_cold_1();
        }

        if (*(HtreeGroupForPos + 76) || v34 == v35 && *(HtreeGroupForPos + 72) > 64)
        {
          goto LABEL_117;
        }

        if (v29 > 255)
        {
          if (v29 <= 0x117)
          {
            v36 = v29 - 256;
            if ((v29 - 256) >= 4)
            {
              v37 = (v29 - 258) >> 1;
              v38 = (v29 & 1 | 2) << v37;
              v39 = VP8LReadBits(v82, v37);
              v26 = *v82;
              v36 = v39 + v38;
            }

            v40 = *(HtreeGroupForPos + 72);
            v41 = (*(v7 + 32) + 4 * (v26 >> v40));
            v42 = *v41;
            if (v42 >= 9)
            {
              v40 += 8;
              v41 += 4 * *(v41 + 1) + 4 * ((v26 >> v40) & ~(-1 << (v42 - 8)));
              v42 = *v41;
            }

            *(HtreeGroupForPos + 72) = v40 + v42;
            v43 = *(v41 + 1);
            if ((v40 + v42) >= 32)
            {
              VP8LDoFillBitWindow(v82, a2);
            }

            if (v43 >= 4)
            {
              v43 = VP8LReadBits(v82, (v43 - 2) >> 1) + ((v43 & 1 | 2) << a2);
            }

            if ((v43 + 1) < 121)
            {
              if ((kCodeToPlane[v43] >> 4) * a3 - (kCodeToPlane[v43] & 0xF) + 8 <= 1)
              {
                v44 = 1;
              }

              else
              {
                v44 = (kCodeToPlane[v43] >> 4) * a3 - (kCodeToPlane[v43] & 0xF) + 8;
              }
            }

            else
            {
              v44 = v43 - 119;
            }

            v63 = *(HtreeGroupForPos + 56);
            v62 = *(HtreeGroupForPos + 64);
            if (v62 > v63)
            {
              ShiftBytes_cold_1();
            }

            if (*(HtreeGroupForPos + 76) || v62 == v63 && *(HtreeGroupForPos + 72) > 64)
            {
              goto LABEL_117;
            }

            if (v44 > (v16 - a2) >> 2)
            {
              goto LABEL_137;
            }

            v64 = v36 + 1;
            if (v36 + 1 > (v77 - v16) >> 2)
            {
              goto LABEL_137;
            }

            CopyBlock32b(v16, v44, v64);
            for (i = (v64 + i); i >= a3; i = (i - a3))
            {
              v65 = v10;
              v10 = (v10 + 1);
              if (a6 && v65 < a5 && (v10 & 0xF) == 0)
              {
                a6(HtreeGroupForPos, v10);
              }
            }

            v21 = (v16 + 4 * v64);
            if (v21 > v77)
            {
              DecodeImageData_cold_8();
            }

            if ((i & v83) != 0)
            {
              v7 = GetHtreeGroupForPos(v75, i, v10);
            }

            if (v78 >= 1 && v17 < v21)
            {
              v66 = *v80;
              do
              {
                v67 = *v17;
                v17 = (v17 + 4);
                *(v66 + 4 * ((506832829 * v67) >> *(v14 + 8))) = v67;
              }

              while (v17 < v21);
            }

            goto LABEL_31;
          }

          if (v29 >= v76)
          {
            goto LABEL_137;
          }

          if (v17 < v16)
          {
            v45 = *v80;
            do
            {
              v46 = *v17;
              v17 = (v17 + 4);
              *(v45 + 4 * ((506832829 * v46) >> *(v14 + 8))) = v46;
            }

            while (v17 < v16);
          }

          if ((v29 - 280) >> *(v14 + 12))
          {
            DecodeImageData_cold_7();
          }

          v20 = *(*v14 + 4 * (v29 - 280));
        }

        else if (*(v7 + 40))
        {
          v20 = *(v7 + 44) | (v29 << 8);
        }

        else
        {
          v47 = *(HtreeGroupForPos + 72);
          v48 = (*(v7 + 8) + 4 * (v26 >> v47));
          v49 = *v48;
          if (v49 >= 9)
          {
            v47 += 8;
            v48 += 4 * *(v48 + 1) + 4 * ((v26 >> v47) & ~(-1 << (v49 - 8)));
            v49 = *v48;
          }

          v50 = v47 + v49;
          *(HtreeGroupForPos + 72) = v50;
          v51 = *(v48 + 1);
          if (v50 >= 32)
          {
            VP8LDoFillBitWindow(v82, a2);
            v26 = *(HtreeGroupForPos + 40);
            v50 = *(HtreeGroupForPos + 72);
          }

          v52 = (*(v7 + 16) + 4 * (v26 >> v50));
          v53 = *v52;
          if (v53 >= 9)
          {
            v50 += 8;
            v52 += 4 * *(v52 + 1) + 4 * ((v26 >> v50) & ~(-1 << (v53 - 8)));
            v53 = *v52;
          }

          v54 = v50 + v53;
          v55 = *(v52 + 1);
          v56 = (*(v7 + 24) + 4 * (v26 >> v54));
          v57 = *v56;
          if (v57 >= 9)
          {
            v54 += 8;
            v56 += 4 * *(v56 + 1) + 4 * ((v26 >> v54) & ~(-1 << (v57 - 8)));
            v57 = *v56;
          }

          v58 = v54 + v57;
          *(HtreeGroupForPos + 72) = v54 + v57;
          v60 = *(HtreeGroupForPos + 56);
          v59 = *(HtreeGroupForPos + 64);
          if (v59 > v60)
          {
            ShiftBytes_cold_1();
          }

          if (*(HtreeGroupForPos + 76))
          {
            goto LABEL_117;
          }

          v61 = *(v56 + 1);
          if (v59 == v60 && v58 > 64)
          {
            goto LABEL_117;
          }

          v20 = (v51 << 16) | (v29 << 8) | v55 | (v61 << 24);
        }

LABEL_29:
        *v16 = v20;
        goto LABEL_30;
      }

      v26 = *(HtreeGroupForPos + 40);
      v27 = *(HtreeGroupForPos + 72);
      v28 = *(v7 + 8 * ((v26 >> v27) & 0x3F) + 56);
      v29 = *(v7 + 8 * ((v26 >> v27) & 0x3F) + 60);
      v30 = v28 + v27;
      if (v28 > 255)
      {
        *(HtreeGroupForPos + 72) = v30 - 256;
        if (v29 <= 0xFF)
        {
          DecodeImageData_cold_5();
        }
      }

      else
      {
        *(HtreeGroupForPos + 72) = v30;
        *v16 = v29;
        v29 = 0;
      }

      v35 = *(HtreeGroupForPos + 56);
      v34 = *(HtreeGroupForPos + 64);
      if (v34 > v35)
      {
        ShiftBytes_cold_1();
      }

      if (*(HtreeGroupForPos + 76) || v34 == v35 && *(HtreeGroupForPos + 72) > 64)
      {
        goto LABEL_117;
      }

      if (v29)
      {
        goto LABEL_57;
      }

LABEL_30:
      v21 = (v16 + 4);
      LODWORD(i) = i + 1;
      if (i >= a3)
      {
        v22 = (v10 + 1);
        if (a6 && v10 < a5 && ((v10 + 1) & 0xF) == 0)
        {
          a6(HtreeGroupForPos, (v10 + 1));
        }

        LODWORD(i) = 0;
        if (v78 >= 1 && v17 < v21)
        {
          v23 = *v80;
          do
          {
            v24 = v17;
            v25 = *v17;
            v17 = (v17 + 4);
            *(v23 + 4 * ((506832829 * v25) >> *(v14 + 8))) = v25;
          }

          while (v24 < v16);
          LODWORD(i) = 0;
        }

        goto LABEL_41;
      }

LABEL_31:
      v22 = v10;
LABEL_41:
      v10 = v22;
      v16 = v21;
      if (v21 >= v84)
      {
        goto LABEL_118;
      }
    }

    v20 = *(v7 + 44);
    goto LABEL_29;
  }

LABEL_117:
  v21 = v16;
  LODWORD(v22) = v10;
LABEL_118:
  v69 = *(HtreeGroupForPos + 56);
  v68 = *(HtreeGroupForPos + 64);
  if (v68 > v69)
  {
    ShiftBytes_cold_1();
  }

  if (*(HtreeGroupForPos + 76))
  {
    v70 = 1;
    *(HtreeGroupForPos + 76) = 1;
    if (!*(HtreeGroupForPos + 80))
    {
      goto LABEL_137;
    }
  }

  else
  {
    v70 = v68 == v69 && *(HtreeGroupForPos + 72) > 64;
    *(HtreeGroupForPos + 76) = v70;
    if (!*(HtreeGroupForPos + 80))
    {
      goto LABEL_136;
    }
  }

  v71 = v21 < v84 && v70;
  if (!v71 && v21 < v84)
  {
    DecodeImageData_cold_10();
  }

  if (v71)
  {
    *HtreeGroupForPos = 5;
    v72 = *(HtreeGroupForPos + 104);
    *v82 = *(HtreeGroupForPos + 88);
    *(v82 + 16) = v72;
    *(v82 + 32) = *(HtreeGroupForPos + 120);
    *(HtreeGroupForPos + 144) = *(HtreeGroupForPos + 128);
    if (*(HtreeGroupForPos + 152) >= 1)
    {
      VP8LColorCacheCopy(HtreeGroupForPos + 176, v80);
    }

    return 1;
  }

  if (v21 >= v84)
  {
LABEL_140:
    if (a6)
    {
      if (v22 >= a5)
      {
        v74 = a5;
      }

      else
      {
        v74 = v22;
      }

      a6(HtreeGroupForPos, v74);
    }

    *HtreeGroupForPos = 0;
    *(HtreeGroupForPos + 144) = (v21 - a2) >> 2;
    return 1;
  }

LABEL_136:
  if (!v70)
  {
    goto LABEL_140;
  }

LABEL_137:
  if (*HtreeGroupForPos != 5 && *HtreeGroupForPos)
  {
    return 0;
  }

  result = 0;
  *HtreeGroupForPos = 3;
  return result;
}

uint64_t ExtractAlphaRows(uint64_t result, int a2)
{
  if (*(*(result + 8) + 132) < a2)
  {
    ExtractAlphaRows_cold_2();
  }

  v2 = result;
  v3 = *(result + 140);
  v4 = a2 - v3;
  if (a2 - v3 < 1)
  {
    v12 = *(result + 140);
  }

  else
  {
    v5 = (*(result + 24) + 4 * *(result + 132) * v3);
    do
    {
      if (v4 >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = v4;
      }

      v7 = *(v2 + 8);
      v8 = *(v7 + 7);
      v9 = *v7;
      v10 = *(v8 + 200) + v9 * v3;
      v11 = *(v2 + 32);
      ApplyInverseTransforms(v2, v3, v6, v5);
      WebPExtractGreen(v11, v10, (v9 * v6));
      v12 = v3 + v6;
      result = AlphaApplyFilter(v8, v3, v3 + v6, v10, v9);
      v5 += 4 * *(v2 + 132) * v6;
      v3 = (v3 + v6);
      v13 = __OFSUB__(v4, v6);
      v4 -= v6;
    }

    while (!((v4 < 0) ^ v13 | (v4 == 0)));
  }

  if (v12 != a2)
  {
    ExtractAlphaRows_cold_1();
  }

  *(v2 + 148) = a2;
  *(v2 + 140) = a2;
  return result;
}

uint64_t VP8LDecodeHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    v10 = 0;
    *(a1 + 8) = a2;
    *a1 = 0;
    VP8LInitBitReader((a1 + 40), *(a2 + 104), *(a2 + 96));
    if (!ReadImageInfo(a1 + 40, &v10 + 1, &v10, &v9))
    {
      if (*a1 == 5 || !*a1)
      {
        *a1 = 3;
      }

      goto LABEL_15;
    }

    *(a1 + 4) = 2;
    v5 = v10;
    v4 = HIDWORD(v10);
    *a2 = HIDWORD(v10);
    *(a2 + 4) = v5;
    v6 = 1;
    if (!DecodeImageStream(v4, v5, 1, a1, 0))
    {
LABEL_15:
      VP8LClear(a1);
      if (!*a1)
      {
        VP8LDecodeHeader_cold_1();
      }

      return 0;
    }
  }

  else
  {
    if (*a1 != 5 && *a1 != 0)
    {
      return 0;
    }

    v6 = 0;
    *a1 = 2;
  }

  return v6;
}

uint64_t VP8LDecodeImage(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*(result + 232))
  {
    VP8LDecodeImage_cold_8();
  }

  if (!*(result + 224))
  {
    VP8LDecodeImage_cold_7();
  }

  if (*(result + 216) <= 0)
  {
    VP8LDecodeImage_cold_6();
  }

  v2 = *(result + 8);
  if (!v2)
  {
    VP8LDecodeImage_cold_5();
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    VP8LDecodeImage_cold_4();
  }

  if (!*(result + 4))
  {
    goto LABEL_26;
  }

  v4 = *v3;
  *(result + 16) = *v3;
  if (!v4)
  {
    VP8LDecodeImage_cold_2();
  }

  if (WebPIoInitFromOptions(v3[5], v2, 3u))
  {
    if (!AllocateInternalBuffers32b(v1, *v2))
    {
      goto LABEL_33;
    }

    if (*(v2 + 136))
    {
      v5 = *(v2 + 12);
      v6 = *(v2 + 16);
      v7 = *(v2 + 144);
      v8 = *(v2 + 140);
      v9 = malloc_type_malloc(36 * v8 + 104, 0x100004077774924uLL);
      if (!v9)
      {
        goto LABEL_30;
      }

      if (*(v1 + 384))
      {
        VP8LDecodeImage_cold_1();
      }

      *(v1 + 384) = v9;
      *(v1 + 392) = v9;
      if (!WebPRescalerInit(v9, v5, v6, &v9[32 * v8 + 104], v8, v7, 0, 4, v9 + 104))
      {
        goto LABEL_33;
      }

      if (*(v2 + 136))
      {
        goto LABEL_17;
      }
    }

    v10 = **(v1 + 16);
    if (v10 - 11 >= 0xFFFFFFFC)
    {
LABEL_17:
      WebPInitAlphaProcessing();
      v10 = **(v1 + 16);
    }

    if (v10 >= 0xB)
    {
      WebPInitConvertARGBToYUV();
      if (*(*(v1 + 16) + 40))
      {
        WebPInitAlphaProcessing();
      }
    }

    if (!*(v1 + 80) || *(v1 + 152) < 1 || *(v1 + 176) || VP8LColorCacheInit(v1 + 176, *(v1 + 172)))
    {
      *(v1 + 4) = 0;
LABEL_26:
      if (DecodeImageData(v1, *(v1 + 24), *(v1 + 132), *(v1 + 136), *(v2 + 132), ProcessRows))
      {
        *(v3 + 8) = *(v1 + 148);
        return 1;
      }

      goto LABEL_33;
    }

LABEL_30:
    v11 = *v1;
    v12 = 1;
    if (!*v1)
    {
LABEL_32:
      *v1 = v12;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v11 = *v1;
  v12 = 2;
  if (!*v1)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v11 == 5)
  {
    goto LABEL_32;
  }

LABEL_33:
  VP8LClear(v1);
  if (!*v1)
  {
    VP8LDecodeImage_cold_3();
  }

  return 0;
}

unsigned int *ProcessRows(unsigned int *result, signed int a2)
{
  v2 = *(result + 1);
  if (v2[33] < a2)
  {
    ProcessRows_cold_9();
  }

  v3 = a2;
  v4 = result;
  v5 = result[35];
  v6 = v3 - v5;
  if (v3 - v5 >= 17)
  {
    ProcessRows_cold_8();
  }

  if (v6 >= 1)
  {
    v7 = *(result + 4);
    v8 = *v2;
    result = ApplyInverseTransforms(result, v5, v6, (*(result + 3) + 4 * (v5 * result[33])));
    v9 = v4[35];
    if (v9 >= v3)
    {
      ProcessRows_cold_1();
    }

    v10 = v2[31];
    v11 = v2[30];
    if (v10 <= v11)
    {
      ProcessRows_cold_2();
    }

    v12 = v2[32];
    if (v2[33] >= v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = v2[33];
    }

    if (v12 <= v9)
    {
      v14 = v4[35];
    }

    else
    {
      v14 = v2[32];
    }

    v15 = v13 - v14;
    if (v13 > v14)
    {
      v16 = __OFSUB__(v12, v9);
      v17 = v12 - v9;
      v37 = (v17 < 0) ^ v16 | (v17 == 0);
      v51 = 4 * v8;
      v18 = v17 * 4 * v8;
      if (v37)
      {
        v18 = 0;
      }

      v19 = (v7 + v18 + 4 * v11);
      v20 = (v10 - v11);
      v2[2] = v14 - v12;
      v2[3] = v20;
      v2[4] = v15;
      v21 = *(v4 + 2);
      v52 = *v21;
      v50 = v13 - v14;
      v47 = v3;
      v46 = v21;
      if (*v21 <= 0xAu)
      {
        v30 = v4[37];
        v31 = *(v21 + 24);
        v32 = (*(v21 + 16) + v31 * v30);
        if (v2[34])
        {
          if (v15 < 1)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v48 = *(v21 + 16) + v31 * v30;
            do
            {
              v35 = v15 - v33;
              v36 = WebPRescaleNeededLines(*(v4 + 49), v15 - v33);
              v37 = v36 >= 1 && v36 <= v35;
              if (!v37)
              {
                ProcessRows_cold_4();
              }

              v38 = v36;
              WebPMultARGBRows(v19 + v33 * v51, v51, *(*(v4 + 49) + 44), v36, 0);
              result = WebPRescalerImport(*(v4 + 49), v35, v19 + v33 * v51, v51);
              if (result != v38)
              {
                ProcessRows_cold_3();
              }

              v39 = *(v4 + 49);
              v49 = v34;
              v40 = 0;
              if (*(v39 + 64) < *(v39 + 56))
              {
                v41 = (v32 + v31 * v34);
                v42 = *(v39 + 72);
                v43 = *(v39 + 52);
                do
                {
                  if (*(v39 + 24) > 0)
                  {
                    break;
                  }

                  WebPRescalerExportRow(v39);
                  WebPMultARGBRow(v42, v43, 1);
                  result = VP8LConvertFromBGRA(v42, v43, v52, v41);
                  v41 = (v41 + v31);
                  ++v40;
                }

                while (*(v39 + 64) < *(v39 + 56));
              }

              v33 += v38;
              v15 = v50;
              v34 = v40 + v49;
              v32 = v48;
            }

            while (v33 < v50);
          }
        }

        else
        {
          if (v15 >= 1)
          {
            v45 = v15 + 1;
            do
            {
              result = VP8LConvertFromBGRA(v19, v20, v52, v32);
              v19 = (v19 + v51);
              v32 = (v32 + v31);
              --v45;
            }

            while (v45 > 1);
          }

          v34 = v15;
        }

        v22 = v4[37] + v34;
      }

      else
      {
        v22 = v4[37];
        if (v2[34])
        {
          if (v15 >= 1)
          {
            v23 = 0;
            v24 = v51;
            do
            {
              v25 = WebPRescaleNeededLines(*(v4 + 49), v15 - v23);
              WebPMultARGBRows(v19, v24, *(*(v4 + 49) + 44), v25, 0);
              result = WebPRescalerImport(*(v4 + 49), (v15 - v23), v19, v24);
              if (result != v25)
              {
                ProcessRows_cold_5();
              }

              v26 = *(v4 + 49);
              if (*(v26 + 64) >= *(v26 + 56))
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v28 = *(v26 + 72);
                v29 = *(v26 + 52);
                do
                {
                  if (*(v26 + 24) > 0)
                  {
                    break;
                  }

                  WebPRescalerExportRow(v26);
                  WebPMultARGBRow(v28, v29, 1);
                  result = ConvertToYUVA(v28, v29, v22 + v27++, *(v4 + 2));
                }

                while (*(v26 + 64) < *(v26 + 56));
              }

              v23 += v25;
              v24 = v51;
              v19 = (v19 + v25 * v51);
              v22 += v27;
              v15 = v50;
            }

            while (v23 < v50);
          }
        }

        else if (v15 >= 1)
        {
          v44 = v15 + 1;
          do
          {
            result = ConvertToYUVA(v19, v20, v22, *(v4 + 2));
            v19 = (v19 + v51);
            ++v22;
            --v44;
          }

          while (v44 > 1);
        }
      }

      v4[37] = v22;
      v3 = v47;
      if (v22 > *(v46 + 8))
      {
        ProcessRows_cold_7();
      }
    }
  }

  v4[35] = v3;
  if (v4[34] < v3)
  {
    ProcessRows_cold_6();
  }

  return result;
}

uint64_t AccumulateHCode(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *a3 + result;
  v4 = a3[1] | (WORD1(result) << a2);
  *a3 = v3;
  a3[1] = v4;
  if (v3 >= 9)
  {
    AccumulateHCode_cold_1();
  }

  return result;
}

double ClearMetadata(uint64_t a1)
{
  if (!a1)
  {
    ClearMetadata_cold_1();
  }

  free(*(a1 + 56));
  VP8LHuffmanTablesDeallocate(a1 + 80);
  VP8LHtreeGroupsFree(*(a1 + 72));
  VP8LColorCacheClear((a1 + 8));
  VP8LColorCacheClear((a1 + 24));
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t GetHtreeGroupForPos(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v3 = *(*(a1 + 56) + 4 * ((a2 >> v3) + *(a1 + 48) * (a3 >> v3)));
  }

  if (v3 >= *(a1 + 64))
  {
    VP8LDecodeAlphaImageStream_cold_1();
  }

  return *(a1 + 72) + 568 * v3;
}

uint64_t ExtractPalettedAlphaRows(uint64_t result, uint64_t a2)
{
  v2 = (result + 140);
  v3 = *(result + 140);
  v4 = *(result + 8);
  v5 = *(v4 + 7);
  if (*(v5 + 12) < 2u)
  {
    v2 = v4 + 32;
  }

  v6 = *v2;
  if (v3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v4[33] < a2)
  {
    ExtractPalettedAlphaRows_cold_3();
  }

  v8 = a2;
  v9 = result;
  if (v7 < a2)
  {
    if (*(result + 272) != 1)
    {
      ExtractPalettedAlphaRows_cold_1();
    }

    v10 = result + 280;
    if (*(v9 + 280) != 3)
    {
      ExtractPalettedAlphaRows_cold_2();
    }

    v11 = *v4;
    v12 = (*(v5 + 200) + v11 * v7);
    VP8LColorIndexInverseTransformAlpha(v10, v7, a2, (*(v9 + 24) + *(v9 + 132) * v7), v12);
    result = AlphaApplyFilter(v5, v7, v8, v12, v11);
  }

  *(v9 + 148) = v8;
  *(v9 + 140) = v8;
  return result;
}

uint64_t AlphaApplyFilter(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 12);
  if (v5)
  {
    if (!WebPUnfilters[v5])
    {
      AlphaApplyFilter_cold_1();
    }

    v6 = result;
    result = *(result + 208);
    v7 = a3 - a2;
    if (a3 > a2)
    {
      v10 = a5;
      do
      {
        (WebPUnfilters[*(v6 + 12)])(result, a4, a4, a5);
        v11 = a4 + v10;
        result = a4;
        a4 += v10;
        --v7;
      }

      while (v7);
      result = v11 - v10;
    }

    *(v6 + 208) = result;
  }

  return result;
}

uint64_t *CopyBlock32b(uint64_t *result, int a2, unsigned int a3)
{
  v4 = result - a2;
  if ((result & 3) == 0 && a2 <= 2 && a3 >= 4)
  {
    if (a2 == 1)
    {
      v5 = *v4;
      v6 = v5 | (v5 << 32);
      if ((result & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = *v4;
      v5 = *v4;
      if ((result & 4) == 0)
      {
LABEL_14:
        if ((result & 7) != 0)
        {
          CopyBlock32b_cold_1();
        }

        v10 = a3 >> 1;
        v11 = (v10 + 1) & 0xFFFFFFFE;
        v12 = vdupq_n_s64(v10 - 1);
        v13 = xmmword_186205EC0;
        v14 = result + 1;
        v15 = vdupq_n_s64(2uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v12, v13));
          if (v16.i8[0])
          {
            *(v14 - 1) = v6;
          }

          if (v16.i8[4])
          {
            *v14 = v6;
          }

          v13 = vaddq_s64(v13, v15);
          v14 += 2;
          v11 -= 2;
        }

        while (v11);
        if (a3)
        {
          *(result + (a3 & 0xFFFFFFFE)) = v4[a3 & 0xFFFFFFFE];
        }

        return result;
      }
    }

    ++v4;
    *result = v5;
    result = (result + 4);
    --a3;
    v6 = __ROR8__(v6, 32);
    goto LABEL_14;
  }

  if (a2 >= a3)
  {
    v17 = 4 * a3;

    return memcpy(result, v4, v17);
  }

  else if (a3 >= 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = -4 * v7;
    do
    {
      *result = *(result + v9);
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *ApplyInverseTransforms(int *result, uint64_t a2, int a3, char *__src)
{
  v5 = result[68];
  v6 = *(result + 4);
  if (v5 < 1)
  {
    if (v6 != __src)
    {
      v10 = 4 * result[33] * a3;
      v11 = *(result + 4);

      return memcpy(v11, __src, v10);
    }
  }

  else
  {
    v8 = v5 + 1;
    v9 = &result[6 * v5 + 64];
    do
    {
      result = VP8LInverseTransform(v9, a2, (a3 + a2), __src, v6);
      --v8;
      v9 -= 6;
      __src = v6;
    }

    while (v8 > 1);
  }

  return result;
}

uint64_t ConvertToYUVA(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  WebPConvertARGBToY(a1, *(a4 + 16) + *(a4 + 48) * a3, a2);
  result = WebPConvertARGBToUV(a1, *(a4 + 24) + *(a4 + 52) * (a3 >> 1), *(a4 + 32) + *(a4 + 56) * (a3 >> 1), a2, (a3 & 1) == 0);
  v9 = *(a4 + 40);
  if (v9)
  {
    v10 = v9 + *(a4 + 60) * a3;
    v11 = WebPExtractAlpha;

    return (v11)(a1 + 3, 0, a2, 1, v10, 0);
  }

  return result;
}

uint64_t WebPRescalerInit(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, char *a9)
{
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = a7;
  *(a1 + 4) = a3 < a6;
  *(a1 + 8) = a8;
  *a1 = a2 < a5;
  if (a2 >= a5)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5 - 1;
  }

  if (a2 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a2 - 1;
  }

  *(a1 + 36) = v9;
  *(a1 + 40) = v10;
  if (a2 >= a5)
  {
    *(a1 + 12) = 0x100000000uLL / a5;
  }

  v11 = a3 < a6;
  v12 = a3 - v11;
  v13 = a6 - v11;
  *(a1 + 28) = v12;
  *(a1 + 32) = v13;
  if (a3 >= a6)
  {
    v14 = (a6 << 32) / (v12 * v9);
    if (v14 >= 0x100000000)
    {
      LODWORD(v14) = 0;
    }

    *(a1 + 20) = v14;
    *(a1 + 24) = v12;
  }

  else
  {
    *(a1 + 24) = v13;
    v13 = v9;
  }

  *(a1 + 16) = 0x100000000uLL / v13;
  *(a1 + 88) = a9;
  *(a1 + 96) = &a9[4 * a8 * a5];
  bzero(a9, 8 * a5 * a8);
  WebPRescalerDspInit();
  return 1;
}

uint64_t WebPRescalerGetScaledDimensions(unsigned int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  if (!a3)
  {
    WebPRescalerGetScaledDimensions_cold_2();
  }

  if (!a4)
  {
    WebPRescalerGetScaledDimensions_cold_1();
  }

  LODWORD(v4) = *a3;
  LODWORD(v5) = *a4;
  if (a2 >= 1 && !v4)
  {
    v4 = (a2 + v5 * a1 - 1) / a2;
  }

  if (a1 >= 1 && !v5)
  {
    v5 = (a1 + v4 * a2 - 1) / a1;
  }

  if ((v4 - 0x40000000) < 0xC0000001 || (v5 - 0x40000000) < 0xC0000001)
  {
    return 0;
  }

  *a3 = v4;
  *a4 = v5;
  return 1;
}

uint64_t WebPRescaleNeededLines(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 24) + *(a1 + 32) - 1) / *(a1 + 32);
  if (v2 >= a2)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t WebPRescalerImport(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (*(a1 + 64) >= *(a1 + 56) || *(a1 + 24) >= 1)
  {
    if (*(a1 + 4))
    {
      *(a1 + 88) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    }

    WebPRescalerImportRow(a1, a3);
    if (!*(a1 + 4) && *(a1 + 52) * *(a1 + 8) >= 1)
    {
      v9 = 0;
      v11 = *(a1 + 88);
      v10 = *(a1 + 96);
      do
      {
        *(v11 + 4 * v9) += *(v10 + 4 * v9);
        ++v9;
      }

      while (v9 < *(a1 + 52) * *(a1 + 8));
    }

    ++*(a1 + 60);
    a3 += v8;
    v7 = (v7 + 1);
    *(a1 + 24) -= *(a1 + 32);
    if (v7 == a2)
    {
      return a2;
    }
  }

  return v7;
}

uint64_t WebPRescalerExport(int *a1)
{
  if (a1[16] >= a1[14])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    if (a1[6] > 0)
    {
      break;
    }

    WebPRescalerExportRow(a1);
    v2 = (v2 + 1);
  }

  while (a1[16] < a1[14]);
  return v2;
}

uint64_t WebPInitCustomIo(uint64_t result, void *a2)
{
  a2[7] = result;
  a2[8] = CustomPut;
  a2[9] = CustomSetup;
  a2[10] = CustomTeardown;
  return result;
}

uint64_t CustomPut(uint64_t a1)
{
  if (*(a1 + 8))
  {
    CustomPut_cold_1();
  }

  if (*(a1 + 12) < 1 || *(a1 + 16) < 1)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = (*(v4 + 88))(a1, *(a1 + 56));
  v6 = v5;
  v7 = *(v4 + 96);
  if (v7)
  {
    v7(a1, v4, v5);
  }

  *(v4 + 32) += v6;
  return 1;
}

uint64_t CustomSetup(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = **v2;
  if (v3 > 0xC || ((1 << v3) & 0x103A) == 0)
  {
    v5 = v3 - 11 < 0xFFFFFFFC;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    v6 = v2 + 10;
    if (v3 - 11 >= 0xFFFFFFFC)
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }
  }

  else
  {
    v5 = 0;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    v6 = v2 + 10;
    v7 = 11;
  }

  result = WebPIoInitFromOptions(v2[5], a1, v7);
  if (result)
  {
    v9 = v3 - 11 < 0xFFFFFFFC || v5;
    if ((v9 & 1) == 0)
    {
      WebPInitUpsamplers();
    }

    if (!*(a1 + 136))
    {
      if (v3 <= 0xA)
      {
        WebPInitSamplers();
        v2[11] = EmitSampledRGB;
        if (*(a1 + 88))
        {
          v39 = *(a1 + 12);
          v40 = v39 + 1;
          result = malloc_type_malloc(((v39 + 1) & 0xFFFFFFFFFFFFFFFELL) + v39, 0xF4CD80BCuLL);
          *v6 = result;
          if (!result)
          {
            return result;
          }

          v41 = (result + *(a1 + 12));
          v2[1] = result;
          v2[2] = v41;
          v2[3] = (v41 + (v40 >> 1));
          v2[11] = EmitFancyRGB;
          WebPInitUpsamplers();
        }
      }

      else
      {
        v2[11] = EmitYUV;
      }

      if (v5)
      {
        return 1;
      }

      if (v3 != 10 && v3 != 5)
      {
        v43 = EmitAlphaRGB;
        if (v3 > 0xA)
        {
          v43 = EmitAlphaYUV;
        }

        v2[12] = v43;
        if (v3 > 0xA)
        {
          return 1;
        }

        goto LABEL_65;
      }

      v25 = EmitAlphaRGBA4444;
      goto LABEL_64;
    }

    v10 = *v2;
    v11 = **v2;
    v12 = v11 - 1;
    if (v3 <= 0xA)
    {
      v14 = (v12 >= 0xC || ((0x81Du >> v12) & 1) == 0) && (v11 - 11) < 0xFFFFFFFC;
      v26 = *(a1 + 144);
      v27 = *(a1 + 140);
      v47 = *(a1 + 12);
      v48 = *(a1 + 16);
      v28 = 2 * v27;
      v29 = 3;
      if (!v14)
      {
        v29 = 4;
      }

      v30 = v28 * v29;
      v31 = v29 * v27 + 4 * v28 * v29;
      result = malloc_type_malloc(v31 + 104 * v29 + 31, 0x1C1E4B9EuLL);
      *v6 = result;
      if (result)
      {
        v32 = result;
        v33 = result + 4 * v30;
        v34 = (result + v31 + 31) & 0xFFFFFFFFFFFFFFE0;
        v2[6] = v34;
        v2[7] = (v34 + 104);
        v35 = v34 + 312;
        if (v14)
        {
          v35 = 0;
        }

        v2[8] = (v34 + 208);
        v2[9] = v35;
        result = WebPRescalerInit(v34, *(a1 + 12), *(a1 + 16), v33, v27, v26, 0, 1, v32);
        if (result)
        {
          result = WebPRescalerInit(v2[7], (v47 + 1) >> 1, (v48 + 1) >> 1, v33 + v27, v27, v26, 0, 1, &v32[8 * v27]);
          if (result)
          {
            result = WebPRescalerInit(v2[8], (v47 + 1) >> 1, (v48 + 1) >> 1, v33 + 2 * v27, v27, v26, 0, 1, &v32[16 * v27]);
            if (result)
            {
              v2[11] = EmitRescaledRGB;
              WebPInitYUV444Converters();
              if (!v14)
              {
                result = WebPRescalerInit(v2[9], *(a1 + 12), *(a1 + 16), v33 + 3 * v27, v27, v26, 0, 1, &v32[24 * v27]);
                if (!result)
                {
                  return result;
                }

                v2[12] = EmitRescaledAlphaRGB;
                v36 = **v2;
                v37 = v36 == 10 || v36 == 5;
                v38 = ExportAlpha;
                if (v37)
                {
                  v38 = ExportAlphaRGBA4444;
                }

                v2[13] = v38;
                goto LABEL_65;
              }

              return 1;
            }
          }
        }
      }
    }

    else
    {
      v13 = (v12 >= 0xC || ((0x81Du >> v12) & 1) == 0) && (v11 - 11) < 0xFFFFFFFC;
      v15 = *(a1 + 144);
      v16 = *(a1 + 140);
      v17 = v16 + 1;
      v45 = *(a1 + 12);
      v46 = *(a1 + 16);
      v44 = (v16 + 1) & 0xFFFFFFFE;
      v18 = 8 * v16;
      v19 = 447;
      if (v13)
      {
        v19 = 343;
        v18 = 0;
      }

      v20 = v18 + 4 * (2 * v16 + 2 * v44);
      result = malloc_type_malloc(v20 + v19, 0x691D5AE1uLL);
      *v6 = result;
      if (result)
      {
        v21 = result;
        v22 = (result + v20 + 31) & 0xFFFFFFFFFFFFFFE0;
        v2[6] = v22;
        v2[7] = (v22 + 104);
        v23 = v22 + 312;
        if (v13)
        {
          v23 = 0;
        }

        v2[8] = (v22 + 208);
        v2[9] = v23;
        result = WebPRescalerInit(v22, *(a1 + 12), *(a1 + 16), *(v10 + 2), v16, v15, v10[12], 1, v21);
        if (result)
        {
          v24 = &v21[8 * v16];
          result = WebPRescalerInit(v2[7], (v45 + 1) >> 1, (v46 + 1) >> 1, *(v10 + 3), v17 >> 1, ((v15 + 1) >> 1), v10[13], 1, v24);
          if (result)
          {
            result = WebPRescalerInit(v2[8], (v45 + 1) >> 1, (v46 + 1) >> 1, *(v10 + 4), v17 >> 1, ((v15 + 1) >> 1), v10[14], 1, &v24[4 * v44]);
            if (result)
            {
              v2[11] = EmitRescaledYUV;
              if (!v13)
              {
                result = WebPRescalerInit(v2[9], *(a1 + 12), *(a1 + 16), *(v10 + 5), v16, v15, v10[15], 1, &v24[8 * v44]);
                if (!result)
                {
                  return result;
                }

                v25 = EmitRescaledAlphaYUV;
LABEL_64:
                v2[12] = v25;
LABEL_65:
                WebPInitAlphaProcessing();
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void CustomTeardown(uint64_t a1)
{
  v1 = *(a1 + 56);
  free(*(v1 + 80));
  *(v1 + 80) = 0;
}

uint64_t EmitFancyRGB(uint64_t a1, void **a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 12);
  v27 = *a2;
  v5 = *(*a2 + 6);
  v6 = *(a1 + 8);
  v7 = *(*a2 + 2) + v5 * v6;
  v8 = WebPUpsamplers[**a2];
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v28 = v8;
  __n = v4;
  if (v6)
  {
    v8(a2[1], v9, a2[2], a2[3], v10, v11, v7 - v5, v7, v4);
    v12 = v3 + 1;
  }

  else
  {
    v8(v9, 0, v10, v11, v10, v11, v7, 0, v4);
    v12 = v3;
  }

  v29 = v12;
  v13 = (v6 + v3);
  if (v3 < 3)
  {
    v18 = v10;
    v19 = v11;
    v15 = __n;
  }

  else
  {
    v14 = v6 + 2;
    LODWORD(v15) = __n;
    do
    {
      v17 = *(a1 + 48);
      v16 = *(a1 + 52);
      v18 = &v10[v16];
      v19 = &v11[v16];
      v20 = *(v27 + 6);
      v7 += 2 * v20;
      v9 += 2 * v17;
      v21 = v11;
      v22 = v13;
      v28(v9 - v17, v9, v10, v21, v18, v19, v7 - v20, v7, v15);
      v13 = v22;
      v15 = __n;
      v14 += 2;
      v11 = v19;
      v10 = v18;
    }

    while (v14 < v13);
  }

  v23 = *(a1 + 48);
  if (*(a1 + 128) + v13 >= *(a1 + 132))
  {
    if ((v13 & 1) == 0)
    {
      v28(v9 + v23, 0, v18, v19, v18, v19, v7 + *(v27 + 6), 0, v15);
    }

    return v29;
  }

  else
  {
    v24 = (v15 + 1) / 2;
    memcpy(a2[1], (v9 + v23), v15);
    memcpy(a2[2], v18, v24);
    memcpy(a2[3], v19, v24);
    return v29 - 1;
  }
}

uint64_t EmitYUV(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 12);
  v5 = *(a1 + 8);
  v6 = (*(*a2 + 24) + *(*a2 + 52) * (v5 >> 1));
  v7 = (*(*a2 + 32) + *(*a2 + 56) * (v5 >> 1));
  v8 = *(a1 + 16);
  v9 = (v4 + 1) / 2;
  v10 = (v8 + 1) / 2;
  WebPCopyPlane(*(a1 + 24), *(a1 + 48), (*(*a2 + 16) + *(*a2 + 48) * v5), *(*a2 + 48), v4, v8);
  WebPCopyPlane(*(a1 + 32), *(a1 + 52), v6, *(v3 + 52), v9, v10);
  WebPCopyPlane(*(a1 + 40), *(a1 + 52), v7, *(v3 + 56), v9, v10);
  return *(a1 + 16);
}

uint64_t EmitAlphaRGBA4444(int *a1, int **a2, uint64_t a3)
{
  v24 = *(a1 + 19);
  if (v24)
  {
    v5 = a1[3];
    v6 = *a2;
    v7 = **a2;
    v23 = 0;
    AlphaSourceRow = GetAlphaSourceRow(a1, &v24, &v23);
    v9 = v6[6];
    v10 = *(v6 + 2) + v9 * AlphaSourceRow;
    v11 = v23;
    if (v23 < 1)
    {
      v20 = 1;
    }

    else
    {
      v12 = 0;
      v13 = v24;
      v14 = (v10 + 1);
      v15 = 15;
      do
      {
        if (v5 >= 1)
        {
          v16 = v5;
          v17 = v14;
          v18 = v13;
          do
          {
            v19 = *v18++;
            *v17 = *v17 & 0xF0 | (v19 >> 4);
            v17 += 2;
            v15 &= v19 >> 4;
            --v16;
          }

          while (v16);
          v9 = v6[6];
        }

        v13 += *a1;
        v14 += v9;
        ++v12;
      }

      while (v12 != v11);
      v20 = v15 == 15;
    }

    if (v11 != a3)
    {
      EmitAlphaRGBA4444_cold_1();
    }

    v21 = (v7 - 11) < 0xFFFFFFFC || v20;
    if ((v21 & 1) == 0)
    {
      WebPApplyAlphaMultiply4444(v10, v5, a3);
    }
  }

  return 0;
}

uint64_t EmitAlphaRGB(unsigned int *a1, int **a2, uint64_t a3)
{
  v18 = *(a1 + 19);
  if (v18)
  {
    v5 = a1[3];
    v6 = *a2;
    v7 = **a2;
    v9 = v7 == 4 || v7 == 9;
    v17 = 0;
    v10 = *(v6 + 2) + v6[6] * GetAlphaSourceRow(a1, &v18, &v17);
    v11 = 3;
    if (v9)
    {
      v11 = 0;
    }

    v12 = *a1;
    v13 = v17;
    v14 = WebPDispatchAlpha(v18, v12, v5, v17, v10 + v11);
    if (v13 != a3)
    {
      EmitAlphaRGB_cold_1();
    }

    if ((v7 - 11) >= 0xFFFFFFFC && v14 != 0)
    {
      WebPApplyAlphaMultiply(v10, v9, v5, a3, v6[6]);
    }
  }

  return 0;
}

uint64_t EmitAlphaYUV(int *a1, uint64_t *a2, int a3)
{
  if (a1[4] != a3)
  {
    EmitAlphaYUV_cold_1();
  }

  v3 = a3;
  v5 = *a2;
  v6 = *(*a2 + 40);
  v7 = a1[3];
  v8 = *(*a2 + 60);
  v9 = (v6 + v8 * a1[2]);
  v10 = *(a1 + 19);
  if (v10)
  {
    if (a3 >= 1)
    {
      do
      {
        memcpy(v9, v10, v7);
        v10 += *a1;
        v9 += *(v5 + 60);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3 >= 1 && v6)
  {
    do
    {
      memset(v9, 255, v7);
      v9 += v8;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t EmitRescaledRGB(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v20 = *(a1 + 16);
  v21 = (v2 + 1) >> 1;
  v8 = a2[6];
  do
  {
    v9 = WebPRescalerImport(v8, (v2 - v5), *(a1 + 24) + *(a1 + 48) * v5, *(a1 + 48));
    v10 = (v21 - v6);
    if (WebPRescaleNeededLines(a2[7], v21 - v6))
    {
      v11 = WebPRescalerImport(a2[7], v10, *(a1 + 32) + *(a1 + 52) * v6, *(a1 + 52));
      if (v11 != WebPRescalerImport(a2[8], v10, *(a1 + 40) + *(a1 + 52) * v6, *(a1 + 52)))
      {
        EmitRescaledRGB_cold_1();
      }

      v6 += v11;
    }

    v22 = v9;
    v8 = a2[6];
    if (v8[16] >= v8[14])
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = *(a2 + 8) + v7;
      v14 = *a2;
      v15 = WebPYUV444Converters[**a2];
      v16 = *(*a2 + 2) + (*a2)[6] * v13;
      do
      {
        if (v8[6] > 0)
        {
          break;
        }

        v17 = a2[7];
        if (v17[16] >= v17[14])
        {
          break;
        }

        v18 = v17[6];
        if (v18 > 0)
        {
          break;
        }

        if (v13 + v12 >= (*a2)[2])
        {
          EmitRescaledRGB_cold_2();
        }

        if (v18 != a2[8][6])
        {
          EmitRescaledRGB_cold_3();
        }

        WebPRescalerExportRow(v8);
        WebPRescalerExportRow(a2[7]);
        WebPRescalerExportRow(a2[8]);
        v15(*(a2[6] + 9), *(a2[7] + 9), *(a2[8] + 9), v16, a2[6][13]);
        v16 += *(v14 + 24);
        ++v12;
        v8 = a2[6];
      }

      while (v8[16] < v8[14]);
    }

    v5 += v22;
    v7 = (v12 + v7);
    v2 = v20;
  }

  while (v5 < v20);
  return v7;
}

uint64_t EmitRescaledAlphaRGB(int *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 19))
  {
    v3 = a3;
    if (a3 >= 1)
    {
      v6 = *(a2 + 72);
      v7 = *(a2 + 32) + a3;
      do
      {
        WebPRescalerImport(v6, (a1[2] - *(v6 + 60) + a1[4]), *(a1 + 19) + (*(v6 + 60) - a1[2]) * *a1, *a1);
        v8 = (*(a2 + 104))(a2, (v7 - v3), v3);
        v9 = __OFSUB__(v3, v8);
        v3 = (v3 - v8);
      }

      while (!((v3 < 0) ^ v9 | (v3 == 0)));
    }
  }

  return 0;
}

uint64_t ExportAlphaRGBA4444(int **a1, int a2, int a3)
{
  v4 = a1[9];
  if (v4[16] >= v4[14])
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(*a1 + 2) + (*a1)[6] * a2;
  v9 = **a1;
  v10 = v4[13];
  v11 = 0;
  if (v4[6] > 0 || a3 < 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = (v8 + 1);
    v15 = 15;
    do
    {
      if (v11 + a2 >= (*a1)[2])
      {
        ExportAlphaRGBA4444_cold_1();
      }

      WebPRescalerExportRow(v4);
      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v18 = *(*(a1[9] + 9) + v16);
          *v17 = *v17 & 0xF0 | (*(*(a1[9] + 9) + v16) >> 4);
          v17 += 2;
          v15 &= v18 >> 4;
          ++v16;
        }

        while (v10 != v16);
      }

      v11 = (v11 + 1);
      v4 = a1[9];
      if (v4[16] >= v4[14])
      {
        break;
      }

      v14 += v7[6];
    }

    while (v4[6] <= 0 && v11 < a3);
    v13 = v15 != 15;
  }

  if ((v9 - 7) <= 3 && v13)
  {
    WebPApplyAlphaMultiply4444(v8, v10, v11);
  }

  return v11;
}

uint64_t ExportAlpha(int **a1, int a2, int a3)
{
  v5 = *a1;
  v6 = **a1;
  v8 = v6 == 4 || v6 == 9;
  v9 = a1[9];
  if (v9[16] >= v9[14])
  {
    return 0;
  }

  v11 = v5[6];
  v12 = *(v5 + 2) + v11 * a2;
  v13 = v9[13];
  if (v9[6] > 0 || a3 < 1)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = 0;
    v25 = v8;
    v18 = 3;
    if (v8)
    {
      v18 = 0;
    }

    v24 = *(v5 + 2) + v11 * a2;
    v19 = v12 + v18;
    v20 = 1;
    do
    {
      v15 = v20;
      if (a2 >= (*a1)[2])
      {
        ExportAlpha_cold_1();
      }

      WebPRescalerExportRow(v9);
      v17 |= WebPDispatchAlpha(*(a1[9] + 9), 0, v13, 1, v19);
      v11 = v5[6];
      v9 = a1[9];
      if (v9[16] >= v9[14])
      {
        break;
      }

      v19 += v11;
      ++a2;
      v20 = (v15 + 1);
    }

    while (v9[6] <= 0 && v15 < a3);
    v16 = v17 != 0;
    v8 = v25;
    v12 = v24;
  }

  if ((v6 - 7) <= 3 && v16)
  {
    WebPApplyAlphaMultiply(v12, v8, v13, v15, v11);
  }

  return v15;
}

uint64_t EmitRescaledYUV(unsigned int *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = *(a2 + 48);
  v6 = **a2;
  v7 = v6 > 0xC || ((1 << v6) & 0x103A) == 0;
  if (!v7 || v6 - 11 >= 0xFFFFFFFC)
  {
    v8 = *(a1 + 19);
    if (v8)
    {
      WebPMultRows(*(a1 + 3), a1[12], v8, *a1, a1[3], v4, 0);
    }
  }

  v9 = ((v4 + 1) >> 1);
  v10 = Rescale(*(a1 + 3), a1[12], v4, v5);
  Rescale(*(a1 + 4), a1[13], v9, *(a2 + 56));
  Rescale(*(a1 + 5), a1[13], v9, *(a2 + 64));
  return v10;
}

uint64_t EmitRescaledAlphaYUV(unsigned int *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = *a2;
  v5 = *(*a2 + 40);
  v6 = *(a2 + 8);
  v7 = *(*a2 + 60);
  v8 = (v5 + v7 * v6);
  if (*(a1 + 19))
  {
    v10 = *(v4 + 16);
    v11 = *(v4 + 48);
    if (Rescale(*(a1 + 19), *a1, a1[4], a2[9]) != a3)
    {
      EmitRescaledAlphaYUV_cold_1();
    }

    if (v3 >= 1)
    {
      WebPMultRows(v10 + v11 * v6, *(v4 + 48), v8, *(v4 + 60), *(a2[9] + 52), v3, 1);
    }
  }

  else if (v5)
  {
    if (v6 + a3 > a1[36])
    {
      EmitRescaledAlphaYUV_cold_2();
    }

    if (a3 >= 1)
    {
      v12 = a1[35];
      do
      {
        memset(v8, 255, v12);
        v8 += v7;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

uint64_t Rescale(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  LODWORD(v8) = 0;
  do
  {
    v9 = WebPRescalerImport(a4, v5, a1, a2);
    a1 += v9 * a2;
    v5 = (v5 - v9);
    v8 = WebPRescalerExport(a4) + v8;
  }

  while (v5 > 0);
  return v8;
}

uint64_t GetAlphaSourceRow(unsigned int *a1, void *a2, unsigned int *a3)
{
  result = a1[2];
  v5 = a1[4];
  *a3 = v5;
  if (a1[22])
  {
    if (result)
    {
      result = (result - 1);
      *a2 -= *a1;
    }

    else
    {
      *a3 = v5 - 1;
      v5 = a1[4];
    }

    v6 = a1[32];
    v7 = a1[33];
    v8 = a1[2] + v6 + v5;
    if (v8 == v7)
    {
      *a3 = v8 - (v6 + result);
    }
  }

  return result;
}

void VP8FiltersInit()
{
  if (VP8FiltersInit_VP8FiltersInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPUnfilters[0] = NoneUnfilter_C;
    qword_1EA8E1420 = GradientUnfilter_C;
    WebPFilters = 0;
    VP8FiltersInitNEON();
    if (!WebPUnfilters[0])
    {
      VP8FiltersInit_cold_7();
    }

    if (!qword_1EA8E1410)
    {
      VP8FiltersInit_cold_6();
    }

    if (!qword_1EA8E1418)
    {
      VP8FiltersInit_cold_5();
    }

    if (!qword_1EA8E1420)
    {
      VP8FiltersInit_cold_4();
    }

    if (!qword_1EA8E1430)
    {
      VP8FiltersInit_cold_3();
    }

    if (!qword_1EA8E1438)
    {
      VP8FiltersInit_cold_2();
    }

    if (!qword_1EA8E1440)
    {
      VP8FiltersInit_cold_1();
    }

    VP8FiltersInit_VP8FiltersInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

void *NoneUnfilter_C(int a1, const void *a2, void *__dst, int a4)
{
  if (__dst != a2)
  {
    return memcpy(__dst, a2, a4);
  }

  return result;
}

unsigned __int8 *GradientUnfilter_C(unsigned __int8 *result, _BYTE *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result)
  {
    if (a4 >= 1)
    {
      v4 = *result;
      v5 = a4;
      v6 = *result;
      do
      {
        v8 = *result++;
        v7 = v8;
        LOBYTE(v8) = *a2++;
        v9 = v8;
        v10 = (v7 - v6 + v4) & ~((v7 - v6 + v4) >> 31);
        if (v10 >= 255)
        {
          LOBYTE(v10) = -1;
        }

        v4 = v9 + v10;
        *a3++ = v4;
        v6 = v7;
        --v5;
      }

      while (v5);
    }
  }

  else if (a4 >= 1)
  {
    v11 = 0;
    v12 = a4;
    do
    {
      v13 = *a2++;
      v11 += v13;
      *a3++ = v11;
      --v12;
    }

    while (v12);
  }

  return result;
}

unsigned int *WebPMultARGBRow_C(unsigned int *result, unsigned int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      v4 = HIBYTE(*result);
      if (v4 != 255)
      {
        if (v4)
        {
          v6 = 65793 * v4;
          v7 = 0xFF000000 / v4;
          if (!a3)
          {
            v7 = v6;
          }

          v8 = vand_s8(vshl_u32(vmla_s32(0x80000000800000, vdup_n_s32(v7), vand_s8(vshl_u32(vdup_n_s32(*result), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0xFFFFFFF8FFFFFFF0), 0xFF00000000FF00);
          v5 = *result & 0xFF000000 | ((v7 * *result + 0x800000) >> 24) | v8.i32[0] | v8.i32[1];
        }

        else
        {
          v5 = 0;
        }

        *result = v5;
      }

      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *WebPMultRow_C(_BYTE *result, unsigned __int8 *a2, unsigned int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (v6 != 255)
      {
        if (v5)
        {
          v7 = 65793 * v5;
          v8 = 0xFF000000 / v5;
          if (!a4)
          {
            v8 = v7;
          }

          *result = (v8 * *result + 0x800000) >> 24;
        }

        else
        {
          *result = 0;
        }
      }

      ++result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t WebPMultARGBRows(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v8 = result;
    v9 = a2;
    do
    {
      result = WebPMultARGBRow(v8, a3, a5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t WebPMultRows(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a6 >= 1)
  {
    v8 = a6;
    v11 = result;
    v12 = a2;
    v13 = a4;
    do
    {
      result = WebPMultRow(v11, a3, a5, a7);
      v11 += v12;
      a3 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

void WebPInitAlphaProcessing()
{
  if (WebPInitAlphaProcessing_WebPInitAlphaProcessing_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPMultARGBRow = WebPMultARGBRow_C;
    WebPMultRow = WebPMultRow_C;
    WebPApplyAlphaMultiply4444 = ApplyAlphaMultiply_16b_C;
    WebPPackRGB = PackRGB_C;
    WebPHasAlpha8b = HasAlpha8b_C;
    WebPHasAlpha32b = HasAlpha32b_C;
    WebPAlphaReplace = AlphaReplace_C;
    WebPInitAlphaProcessingNEON();
    if (!WebPMultARGBRow)
    {
      WebPInitAlphaProcessing_cold_12();
    }

    if (!WebPMultRow)
    {
      WebPInitAlphaProcessing_cold_11();
    }

    if (!WebPApplyAlphaMultiply)
    {
      WebPInitAlphaProcessing_cold_10();
    }

    if (!WebPApplyAlphaMultiply4444)
    {
      WebPInitAlphaProcessing_cold_9();
    }

    if (!WebPDispatchAlpha)
    {
      WebPInitAlphaProcessing_cold_8();
    }

    if (!WebPDispatchAlphaToGreen)
    {
      WebPInitAlphaProcessing_cold_7();
    }

    if (!WebPExtractAlpha)
    {
      WebPInitAlphaProcessing_cold_6();
    }

    if (!WebPExtractGreen)
    {
      WebPInitAlphaProcessing_cold_5();
    }

    if (!WebPPackRGB)
    {
      WebPInitAlphaProcessing_cold_4();
    }

    if (!WebPHasAlpha8b)
    {
      WebPInitAlphaProcessing_cold_3();
    }

    if (!WebPHasAlpha32b)
    {
      WebPInitAlphaProcessing_cold_2();
    }

    if (!WebPAlphaReplace)
    {
      WebPInitAlphaProcessing_cold_1();
    }

    WebPInitAlphaProcessing_WebPInitAlphaProcessing_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint64_t ApplyAlphaMultiply_16b_C(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = (result + 1);
    do
    {
      if (a2 >= 1)
      {
        v5 = v4;
        v6 = a2;
        do
        {
          v7 = *v5;
          v8 = 4369 * (v7 & 0xF);
          result = v7 & 0xF0 | (v7 >> 4);
          *(v5 - 1) = ((v8 * (*(v5 - 1) & 0xF0 | (*(v5 - 1) >> 4))) >> 16) & 0xF0 | ((v8 * (*(v5 - 1) & 0xFu | (16 * *(v5 - 1)))) >> 20);
          *v5 = ((v8 * result) >> 16) & 0xF0 | v7 & 0xF;
          v5 += 2;
          --v6;
        }

        while (v6);
      }

      v4 += a4;
    }

    while (a3-- > 1);
  }

  return result;
}

uint64_t PackRGB_C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = a4;
    do
    {
      *a6++ = (*(a2 + v6) << 8) | (*(result + v6) << 16) | *(a3 + v6) | 0xFF000000;
      v6 += a5;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t HasAlpha8b_C(unsigned __int8 *a1, int a2)
{
  while (1)
  {
    v2 = __OFSUB__(a2--, 1);
    if (a2 < 0 != v2)
    {
      break;
    }

    v3 = *a1++;
    if (v3 != 255)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HasAlpha32b_C(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a2 + 1;
  while (1)
  {
    v3 = *a1;
    a1 += 4;
    if (v3 != 255)
    {
      break;
    }

    if (--v2 < 2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AlphaReplace_C(uint64_t result, unsigned int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      if (!*(result + 3))
      {
        *result = a3;
      }

      result += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

double Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 8) = 0;
  return result;
}

uint64_t Reset(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 8);
  if (v2 != 1)
  {
    if (v2)
    {
      Reset_cold_1();
    }

    *(a1 + 8) = 1;
  }

  return 1;
}

BOOL Sync(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= 2u)
  {
    Reset_cold_1();
  }

  return *(a1 + 40) == 0;
}

void *Execute(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = v1(result[3], result[4]);
    *(v2 + 10) |= result == 0;
  }

  return result;
}

uint64_t End(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  if (*result)
  {
    End_cold_1();
  }

  return result;
}

uint64_t WebPAnimDecoderOptionsInitInternal(void *a1, int a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 & 0xFFFFFF00) == 0x100)
    {
      *a1 = 1;
      return 1;
    }
  }

  return result;
}

unsigned int **WebPAnimDecoderNewInternal(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = 0;
  if (a1)
  {
    if ((a3 & 0xFFFFFF00) == 0x100)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v3 = 0;
      if (!WebPGetFeaturesInternal(*a1, *(a1 + 8), v15, 521))
      {
        v6 = malloc_type_calloc(1uLL, 0x198uLL, 0x10F20402D34DE3CuLL);
        v3 = v6;
        if (v6)
        {
          if (a2)
          {
            v9 = *a2;
            if (*a2 > 8 || ((1 << v9) & 0x18A) == 0)
            {
              goto LABEL_17;
            }

            LODWORD(a2) = a2[1];
          }

          else
          {
            v9 = 1;
          }

          v10 = BlendPixelRowPremult;
          if ((v9 & 0xD) == 1)
          {
            v10 = BlendPixelRowNonPremult;
          }

          v6[31] = v10;
          if (WebPInitDecoderConfigInternal(v6 + 1, 521))
          {
            *(v3 + 12) = v9;
            *(v3 + 15) = 1;
            *(v3 + 52) = a2;
            v11 = WebPDemuxInternal(a1, 0, 0, 263);
            *v3 = v11;
            if (v11)
            {
              *(v3 + 64) = WebPDemuxGetI(v11, 1);
              *(v3 + 65) = WebPDemuxGetI(*v3, 2);
              *(v3 + 66) = WebPDemuxGetI(*v3, 3);
              *(v3 + 67) = WebPDemuxGetI(*v3, 4);
              *(v3 + 68) = WebPDemuxGetI(*v3, 5);
              v12 = malloc_type_calloc((4 * *(v3 + 64)), *(v3 + 65), 0x100004077774924uLL);
              v3[37] = v12;
              if (v12)
              {
                v13 = malloc_type_calloc((4 * *(v3 + 64)), *(v3 + 65), 0x100004077774924uLL);
                v3[38] = v13;
                if (v13)
                {
                  *(v3 + 78) = 0;
                  _cg_jpeg_mem_term(v3 + 40, v7, v8);
                  *(v3 + 23) = 0u;
                  *(v3 + 24) = 0u;
                  *(v3 + 21) = 0u;
                  *(v3 + 22) = 0u;
                  *(v3 + 20) = 0u;
                  v3[50] = 0x100000000;
                  return v3;
                }
              }
            }
          }
        }

LABEL_17:
        WebPAnimDecoderDelete(v3, v7, v8);
        return 0;
      }
    }
  }

  return v3;
}

void WebPAnimDecoderDelete(void **a1, uint64_t a2, const char *a3)
{
  if (a1)
  {
    _cg_jpeg_mem_term(a1 + 40, a2, a3);
    WebPDemuxDelete(*a1);
    free(a1[37]);
    free(a1[38]);

    free(a1);
  }
}

uint64_t WebPAnimDecoderGetInfo(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 256);
      v5 = *(a1 + 272);
      *(a2 + 32) = *(a1 + 288);
      *a2 = v4;
      *(a2 + 16) = v5;
      return 1;
    }
  }

  return result;
}

uint64_t WebPAnimDecoderGetNext(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 0;
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  v7 = *(a1 + 404);
  if (v7 > *(a1 + 272))
  {
    return 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v8 = *(a1 + 256);
  v9 = *(a1 + 260);
  v10 = *(a1 + 248);
  result = WebPDemuxGetFrame(*a1, v7, &v43);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 312);
  v12 = DWORD2(v44);
  v13 = IsKeyFrame(&v43, (a1 + 320), *(a1 + 400), v8, v9);
  if (v13)
  {
    bzero(*(a1 + 296), 4 * v8 * v9);
  }

  else
  {
    CopyCanvas(*(a1 + 304), *(a1 + 296), v8, v9);
  }

  v14 = 4 * v8;
  v15 = SDWORD1(v44) * v14;
  v17 = SDWORD2(v43);
  v16 = SHIDWORD(v43);
  v18 = *(&v45 + 1);
  v19 = v46;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 64) = *(a1 + 296) + v16 * v14 + 4 * v17;
  if (WebPDecode(v18, v19, a1 + 8))
  {
    _cg_jpeg_mem_term(&v43, v20, v21);
    return 0;
  }

  v39 = v12;
  v40 = v11;
  v42 = v13;
  v41 = v9;
  if (v43 >= 2 && !(HIDWORD(v46) | v13))
  {
    v22 = *(a1 + 348);
    if (!v22)
    {
      if (SDWORD1(v44) >= 1)
      {
        v23 = 0;
        do
        {
          v10(*(a1 + 296) + 4 * (DWORD2(v43) + (v23 + HIDWORD(v43)) * v8), *(a1 + 304) + 4 * (DWORD2(v43) + (v23 + HIDWORD(v43)) * v8), v44);
          ++v23;
        }

        while (v23 < SDWORD1(v44));
      }

      goto LABEL_47;
    }

    if (v22 != 1)
    {
      WebPAnimDecoderGetNext_cold_1();
    }

    if (SDWORD1(v44) < 1)
    {
      goto LABEL_47;
    }

    v24 = 0;
    while (1)
    {
      v25 = v24 + HIDWORD(v43);
      v21 = v44;
      v26 = v44 + DWORD2(v43);
      v27 = *(a1 + 328);
      v28 = *(a1 + 336) + v27;
      v29 = *(a1 + 332);
      v30 = v29 > v24 + HIDWORD(v43) || v29 + *(a1 + 340) <= v25;
      v31 = !v30 && SDWORD2(v43) < v28;
      if (!v31 || v26 <= v27)
      {
        break;
      }

      v35 = __OFSUB__(v26, v28);
      v36 = v26 - v28;
      if ((v36 < 0) ^ v35 | (v36 == 0))
      {
        v34 = -1;
      }

      else
      {
        v34 = *(a1 + 336) + v27;
      }

      if ((v36 < 0) ^ v35 | (v36 == 0))
      {
        v33 = 0;
      }

      else
      {
        v33 = v36;
      }

      v21 = (v27 - DWORD2(v43));
      if (v27 > SDWORD2(v43))
      {
        goto LABEL_42;
      }

LABEL_44:
      if (v33 >= 1)
      {
        v10(*(a1 + 296) + 4 * (v34 + v25 * v8), *(a1 + 304) + 4 * (v34 + v25 * v8), v33);
      }

      if (++v24 >= SDWORD1(v44))
      {
        goto LABEL_47;
      }
    }

    v33 = 0;
    v34 = -1;
LABEL_42:
    if (v21 >= 1)
    {
      (v10)(*(a1 + 296) + 4 * (DWORD2(v43) + v25 * v8), *(a1 + 304) + 4 * (DWORD2(v43) + v25 * v8));
    }

    goto LABEL_44;
  }

LABEL_47:
  *(a1 + 312) = v39 + v40;
  _cg_jpeg_mem_term(a1 + 320, v20, v21);
  v37 = v46;
  *(a1 + 352) = v45;
  *(a1 + 368) = v37;
  *(a1 + 384) = v47;
  v38 = v44;
  *(a1 + 320) = v43;
  *(a1 + 336) = v38;
  *(a1 + 400) = v42;
  CopyCanvas(*(a1 + 296), *(a1 + 304), v8, v41);
  if (*(a1 + 348) == 1)
  {
    ZeroFillFrameRect(*(a1 + 304), 4 * v8, *(a1 + 328), *(a1 + 332), *(a1 + 336), *(a1 + 340));
  }

  ++*(a1 + 404);
  *a2 = *(a1 + 296);
  *a3 = v39 + v40;
  return 1;
}

BOOL WebPAnimDecoderHasMoreFrames(_BOOL8 result)
{
  if (result)
  {
    return *(result + 404) <= *(result + 272);
  }

  return result;
}

BOOL IsKeyFrame(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  if (*a1 == 1)
  {
    return 1;
  }

  if ((!a1[14] || a1[15] == 1) && a1[4] == a4 && a1[5] == a5)
  {
    return 1;
  }

  if (!a2 || a2[7] != 1)
  {
    return 0;
  }

  v7 = a2[4] == a4 && a2[5] == a5;
  return (v7 | a3) != 0;
}

void *CopyCanvas(void *__src, void *__dst, unsigned int a3, unsigned int a4)
{
  if (!__src || !__dst)
  {
    CopyCanvas_cold_1();
  }

  v5 = 4 * a3 * a4;

  return memcpy(__dst, __src, v5);
}

void ZeroFillFrameRect(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (4 * a5 > a2)
  {
    ZeroFillFrameRect_cold_1();
  }

  v6 = a6;
  if (a6 >= 1)
  {
    v7 = (a1 + a4 * a2 + 4 * a3);
    v8 = 4 * a5;
    v9 = a2;
    do
    {
      bzero(v7, v8);
      v7 += v9;
      --v6;
    }

    while (v6);
  }
}

uint64_t WebPAnimDecoderSkipFrame(uint64_t a1, int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 404);
    if (v5 <= *(a1 + 272))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      result = WebPDemuxGetFrame(*a1, v5, &v11);
      if (result)
      {
        v8 = DWORD2(v12) + *(a1 + 312);
        *(a1 + 312) = v8;
        _cg_jpeg_mem_term(a1 + 320, v6, v7);
        v9 = v14;
        *(a1 + 352) = v13;
        *(a1 + 368) = v9;
        *(a1 + 384) = v15;
        v10 = v12;
        *(a1 + 320) = v11;
        *(a1 + 336) = v10;
        *(a1 + 400) = 0;
        ++*(a1 + 404);
        result = 1;
        *a2 = v8;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebPAnimDecoderRestoreCanvas(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = a3;
    if (a3 && *(a1 + 272) >= a3)
    {
      v9 = *(a1 + 256);
      v10 = *(a1 + 260);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      result = WebPDemuxGetFrame(*a1, a3, &v21);
      if (result)
      {
        CopyCanvas(a2, *(a1 + 296), v9, v10);
        *(a1 + 312) = a4;
        _cg_jpeg_mem_term(a1 + 320, v11, v12);
        v13 = v24;
        *(a1 + 352) = v23;
        *(a1 + 368) = v13;
        *(a1 + 384) = v25;
        v14 = v22;
        *(a1 + 320) = v21;
        *(a1 + 336) = v14;
        memset(v20, 0, sizeof(v20));
        if (v7 < 2)
        {
          v19 = v21;
          if (v21 != 1)
          {
            v19 = (!DWORD2(v24) || HIDWORD(v24) == 1) && v22 == __PAIR64__(v10, v9);
          }

          *(a1 + 400) = v19;
        }

        else
        {
          Frame = WebPDemuxGetFrame(*a1, (v7 - 1), v20);
          if (Frame)
          {
            v16 = v20;
          }

          else
          {
            v16 = 0;
          }

          *(a1 + 400) = IsKeyFrame(&v21, v16, 0, v9, v10);
          if (Frame)
          {
            _cg_jpeg_mem_term(v20, v17, v18);
          }
        }

        *(a1 + 404) = v7 + 1;
        CopyCanvas(*(a1 + 296), *(a1 + 304), v9, v10);
        if (*(a1 + 348) == 1)
        {
          ZeroFillFrameRect(*(a1 + 304), 4 * v9, *(a1 + 328), *(a1 + 332), *(a1 + 336), *(a1 + 340));
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned int *BlendPixelRowNonPremult(unsigned int *result, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *v4;
      if (BYTE3(v6) != 255)
      {
        v7 = *a2;
        if (BYTE3(v6))
        {
          v8 = HIBYTE(v7) * (256 - BYTE3(v6));
          v9 = (v8 >> 8) + BYTE3(v6);
          v13 = 0x1000000u / (BYTE1(v8) + HIBYTE(*v4));
          v10 = BYTE1(v8);
          v11 = BlendChannelNonPremult(v6, BYTE3(v6), v7, BYTE1(v8), v13, 0);
          v12 = BlendChannelNonPremult(v6, BYTE3(v6), v7, v10, v13, 8);
          result = BlendChannelNonPremult(v6, BYTE3(v6), v7, v10, v13, 16);
          if (v9 >= 0x100)
          {
            BlendPixelRowNonPremult_cold_1();
          }

          v7 = v11 | (v12 << 8) | (result << 16) | (v9 << 24);
        }

        *v4 = v7;
      }

      ++a2;
      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

_DWORD *BlendPixelRowPremult(_DWORD *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (HIBYTE(*result) != 255)
      {
        *result += ((((*a2 >> 8) & 0xFF00FF) * (256 - HIBYTE(*result))) & 0xFF00FF00) + ((((*a2 & 0xFF00FFu) * (256 - HIBYTE(*result))) >> 8) & 0xFF00FF);
      }

      ++a2;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t BlendChannelNonPremult(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, char a6)
{
  v6 = (a3 >> a6) * a4 + (a1 >> a6) * a2;
  if (0x100000000uLL / a5 <= v6)
  {
    BlendChannelNonPremult_cold_1();
  }

  return (v6 * a5) >> 24;
}

uint64_t VP8InitIoInternal(_OWORD *a1, int a2)
{
  if ((a2 & 0xFFFFFF00) != 0x200)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  v2 = 1;
  *a1 = 0u;
  a1[1] = 0u;
  return v2;
}

void *VP8New()
{
  v0 = malloc_type_calloc(1uLL, 0xBD0uLL, 0x10F0040C479A369uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = "OK";
    v2 = WebPGetWorkerInterface();
    (*v2)(v1 + 19);
    *(v1 + 1) = 0;
    *(v1 + 108) = 0;
    if (InitGetCoeffs_InitGetCoeffs_body_last_cpuinfo_used != VP8GetCPUInfo)
    {
      if (!VP8GetCPUInfo || (CPUInfo = VP8GetCPUInfo(2), v4 = GetCoeffsAlt, !CPUInfo))
      {
        v4 = GetCoeffsFast;
      }

      GetCoeffs = v4;
      InitGetCoeffs_InitGetCoeffs_body_last_cpuinfo_used = VP8GetCPUInfo;
    }
  }

  return v1;
}

void VP8Delete(void *a1)
{
  if (a1)
  {
    VP8Clear(a1);

    free(a1);
  }
}

double VP8Clear(uint64_t a1)
{
  if (a1)
  {
    v2 = WebPGetWorkerInterface();
    (v2[5])(a1 + 152);
    WebPDeallocateAlphaMemory(a1);
    free(*(a1 + 2888));
    result = 0.0;
    *(a1 + 2888) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 4) = 0;
  }

  return result;
}

uint64_t VP8SetError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 5 && !*(a1 + 64))
  {
    VP8SetError_cold_1();
  }

  if (!*a1)
  {
    *(a1 + 8) = a3;
    *a1 = a2;
    *(a1 + 4) = 0;
  }

  return 0;
}

uint64_t VP8GetInfo(unsigned __int8 *a1, unint64_t a2, unint64_t a3, int *a4, int *a5)
{
  result = 0;
  if (a1 && a2 >= 0xA)
  {
    if (a1[3] == 157 && a1[4] == 1 && a1[5] == 42)
    {
      result = 0;
      v7 = *a1;
      if ((v7 & 0x19) == 0x10 && ((a1[2] << 16) | (a1[1] << 8) | v7) >> 5 < a3)
      {
        result = 0;
        v8 = a1[6] | ((a1[7] & 0x3F) << 8);
        if (v8)
        {
          v9 = a1[8] | ((a1[9] & 0x3F) << 8);
          if (v9)
          {
            if (a4)
            {
              *a4 = v8;
            }

            if (a5)
            {
              *a5 = v9;
            }

            return 1;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VP8GetHeaders(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  *(a1 + 8) = "OK";
  if (!a2)
  {
    v5 = 0;
    *(a1 + 8) = "null VP8Io passed to VP8GetHeaders()";
    v7 = 2;
    goto LABEL_13;
  }

  v3 = *(a2 + 96);
  v4 = v3 - 3;
  if (v3 > 3)
  {
    v8 = *(a2 + 104);
    v9 = *v8;
    v10 = v9 | (v8[1] << 8) | (v8[2] << 16);
    v11 = v9 & 1;
    *(a1 + 68) = !(v9 & 1);
    v12 = (v9 >> 1) & 7;
    *(a1 + 69) = (v9 >> 1) & 7;
    v13 = (v9 >> 4) & 1;
    *(a1 + 70) = (v9 & 0x10) != 0;
    v14 = v10 >> 5;
    *(a1 + 72) = v10 >> 5;
    if (v12 >= 4)
    {
      v5 = 0;
      v15 = "Incorrect keyframe parameters.";
LABEL_9:
      *(a1 + 8) = v15;
      v7 = 3;
      goto LABEL_13;
    }

    if (!v13)
    {
      v5 = 0;
      v16 = "Frame not displayable.";
LABEL_12:
      *(a1 + 8) = v16;
      v7 = 4;
      goto LABEL_13;
    }

    v17 = (v8 + 3);
    if (!v11)
    {
      if (v4 <= 6)
      {
        v5 = 0;
        v6 = "cannot parse picture header";
        goto LABEL_5;
      }

      if (*v17 != 157 || v8[4] != 1 || v8[5] != 42)
      {
        v5 = 0;
        v15 = "Bad code word";
        goto LABEL_9;
      }

      v18 = v8[6] | ((v8[7] & 0x3F) << 8);
      *(a1 + 76) = v8[6] | ((v8[7] & 0x3F) << 8);
      *(a1 + 80) = v8[7] >> 6;
      v19 = v8[8] | ((v8[9] & 0x3F) << 8);
      *(a1 + 78) = v8[8] | ((v8[9] & 0x3F) << 8);
      *(a1 + 81) = v8[9] >> 6;
      v17 = (v8 + 10);
      v4 = v3 - 10;
      *(a1 + 408) = (v18 + 15) >> 4;
      *(a1 + 412) = (v19 + 15) >> 4;
      *a2 = v18;
      *(a2 + 4) = v19;
      *(a2 + 116) = 0;
      *(a2 + 120) = 0;
      *(a2 + 124) = v18;
      *(a2 + 132) = v19;
      *(a2 + 140) = v18;
      *(a2 + 144) = v19;
      *(a2 + 12) = v18;
      *(a2 + 16) = v19;
      VP8ResetProba(a1 + 1192);
      *(a1 + 132) = xmmword_186205EC0;
      *(a1 + 148) = 0;
      v14 = *(a1 + 72);
    }

    if (v4 >= v14)
    {
      VP8InitBitReader(a1 + 16, v17, v14);
      v20 = *(a1 + 72);
      if (*(a1 + 68))
      {
        *(a1 + 82) = VP8GetValue(a1 + 16, 1);
        *(a1 + 83) = VP8GetValue(a1 + 16, 1);
      }

      Value = VP8GetValue(a1 + 16, 1);
      *(a1 + 132) = Value;
      if (Value)
      {
        *(a1 + 136) = VP8GetValue(a1 + 16, 1);
        if (VP8GetValue(a1 + 16, 1))
        {
          v22 = 0;
          *(a1 + 140) = VP8GetValue(a1 + 16, 1);
          do
          {
            v23 = VP8GetValue(a1 + 16, 1);
            if (v23)
            {
              LOBYTE(v23) = VP8GetSignedValue(a1 + 16, 7);
            }

            *(a1 + 144 + v22++) = v23;
          }

          while (v22 != 4);
          for (i = 0; i != 4; ++i)
          {
            v25 = VP8GetValue(a1 + 16, 1);
            if (v25)
            {
              LOBYTE(v25) = VP8GetSignedValue(a1 + 16, 6);
            }

            *(a1 + 148 + i) = v25;
          }
        }

        if (*(a1 + 136))
        {
          for (j = 0; j != 3; ++j)
          {
            if (VP8GetValue(a1 + 16, 1))
            {
              v27 = VP8GetValue(a1 + 16, 8);
            }

            else
            {
              v27 = -1;
            }

            *(a1 + 1192 + j) = v27;
          }
        }
      }

      else
      {
        *(a1 + 136) = 0;
      }

      if (*(a1 + 56))
      {
        if (!*a1)
        {
          v5 = 0;
          v15 = "cannot parse segment header";
          goto LABEL_9;
        }
      }

      else if (ParseFilterHeader(a1 + 16, a1))
      {
        v28 = ParsePartitions(a1, (v17 + v20), v4 - v20);
        if (v28)
        {
          VP8SetError(a1, v28, "cannot parse partitions");
        }

        else
        {
          VP8ParseQuant(a1);
          if (*(a1 + 68))
          {
            v5 = 1;
            VP8GetValue(a1 + 16, 1);
            VP8ParseProba(a1 + 16, a1);
            *(a1 + 4) = 1;
            return v5;
          }

          if (!*a1)
          {
            v5 = 0;
            v16 = "Not a key frame.";
            goto LABEL_12;
          }
        }
      }

      else if (!*a1)
      {
        v5 = 0;
        v15 = "cannot parse filter header";
        goto LABEL_9;
      }
    }

    else if (!*a1)
    {
      v5 = 0;
      v6 = "bad partition length";
      goto LABEL_5;
    }

    return 0;
  }

  v5 = 0;
  v6 = "Truncated header.";
LABEL_5:
  *(a1 + 8) = v6;
  v7 = 7;
LABEL_13:
  *a1 = v7;
  return v5;
}

BOOL ParseFilterHeader(uint64_t a1, _DWORD *a2)
{
  a2[21] = VP8GetValue(a1, 1);
  a2[22] = VP8GetValue(a1, 6);
  a2[23] = VP8GetValue(a1, 3);
  Value = VP8GetValue(a1, 1);
  a2[24] = Value;
  if (Value && VP8GetValue(a1, 1))
  {
    for (i = 0; i != 4; ++i)
    {
      if (VP8GetValue(a1, 1))
      {
        a2[i + 25] = VP8GetSignedValue(a1, 6);
      }
    }

    for (j = 0; j != 4; ++j)
    {
      if (VP8GetValue(a1, 1))
      {
        a2[j + 29] = VP8GetSignedValue(a1, 6);
      }
    }
  }

  v7 = a2[22];
  if (v7)
  {
    if (a2[21])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  a2[730] = v7;
  return *(a1 + 40) == 0;
}

uint64_t ParsePartitions(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  Value = VP8GetValue(a1 + 16, 2);
  v7 = ~(-1 << Value);
  *(a1 + 432) = v7;
  v8 = a3 - 3 * v7;
  if (a3 < 3 * v7)
  {
    return 7;
  }

  v10 = (a2 + a3);
  v11 = (a2 + 3 * v7);
  if (Value)
  {
    v12 = a1 + 440;
    if (v7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = ~(-1 << Value);
    }

    do
    {
      v14 = *(a2 + 2);
      if ((*a2 | (v14 << 16)) >= v8)
      {
        v15 = v8;
      }

      else
      {
        v15 = *a2 | (v14 << 16);
      }

      VP8InitBitReader(v12, v11, v15);
      v11 = (v11 + v15);
      v8 -= v15;
      a2 = (a2 + 3);
      v12 += 48;
      --v13;
    }

    while (v13);
  }

  VP8InitBitReader(a1 + 48 * v7 + 440, v11, v8);
  if (v11 < v10)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    return 5;
  }

  return 7;
}

BOOL VP8DecodeMB(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2832);
  v5 = *(a1 + 2904);
  v6 = (v4 + 2 * v5);
  v7 = (*(a1 + 2912) + 800 * v5);
  if (*(a1 + 2800) && *(v7 + 797))
  {
    *v6 = 0;
    *(v4 - 2) = 0;
    if (!*(v7 + 768))
    {
      v6[1] = 0;
      *(v4 - 1) = 0;
    }

    v8 = 0;
    *(v7 + 796) = 0;
    *(v7 + 394) = 0;
  }

  else
  {
    v9 = a1 + 32 * *(v7 + 798) + 1060;
    bzero(v7, 0x300uLL);
    if (*(v7 + 768))
    {
      v10 = 0;
      v11 = a1 + 2664;
    }

    else
    {
      v11 = a1 + 2256;
      memset(v58, 0, sizeof(v58));
      Coeffs = GetCoeffs(a2, a1 + 2392, *(v4 - 1) + v6[1], v9 + 8, 0, v58);
      *(v4 - 1) = Coeffs > 0;
      v6[1] = Coeffs > 0;
      if (Coeffs < 2)
      {
        v13 = -16;
        v14 = (SLOWORD(v58[0]) + 3) >> 3;
        v15 = v7;
        do
        {
          *v15 = v14;
          v15 += 16;
          v13 += 16;
        }

        while (v13 < 0xF0);
      }

      else
      {
        VP8TransformWHT(v58, v7);
      }

      v10 = 1;
    }

    v53 = 0;
    v16 = 0;
    v46 = v6;
    v47 = v4;
    LOBYTE(v17) = *v6 & 0xF;
    LOBYTE(v18) = *(v4 - 2) & 0xF;
    v45 = v7;
    do
    {
      v54 = v18;
      v56 = v16;
      v19 = 0;
      v20 = v18 & 1;
      v21 = 4;
      do
      {
        v22 = v17;
        v23 = GetCoeffs(a2, v11, v20 + (v17 & 1), v9, v10, v7);
        v20 = v23 > v10;
        if (v23 <= v10)
        {
          v24 = 0;
        }

        else
        {
          v24 = -128;
        }

        v17 = (v22 >> 1) | (v20 << 7);
        v25 = *v7;
        v7 += 16;
        v26 = v25 != 0;
        if (v23 >= 2)
        {
          v26 = 2;
        }

        if (v23 > 3)
        {
          v26 = 3;
        }

        v19 = v26 | (4 * v19);
        --v21;
      }

      while (v21);
      v17 >>= 4;
      v18 = v24 | ((v54 & 0xFE) >> 1);
      v16 = v56 + 1;
      v53 = v19 | (v53 << 8);
    }

    while (v56 != 3);
    v27 = 0;
    v28 = 0;
    v29 = v18 >> 4;
    v30 = 1;
    do
    {
      v50 = v29;
      v51 = v27;
      v52 = v17;
      v31 = 0;
      v48 = v30;
      v49 = v28;
      v32 = *v46 >> (v28 | 4);
      v33 = *(v47 - 2) >> (v28 | 4);
      v34 = 1;
      do
      {
        v55 = v34;
        v57 = v33;
        v35 = v33 & 1;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = GetCoeffs(a2, a1 + 2528, (v32 & 1) + v35, v9 + 16, 0, v7);
          v36 = 0;
          v35 = v38 > 0;
          v32 = (v32 >> 1) | (8 * v35);
          v39 = *v7;
          v7 += 16;
          v40 = v39 != 0;
          if (v38 >= 2)
          {
            v40 = 2;
          }

          if (v38 > 3)
          {
            v40 = 3;
          }

          v31 = v40 | (4 * v31);
        }

        while ((v37 & 1) != 0);
        v34 = 0;
        v32 >>= 2;
        LOBYTE(v33) = (v57 >> 1) | (32 * (v38 > 0));
      }

      while ((v55 & 1) != 0);
      v30 = 0;
      v27 = (v31 << (4 * v49)) | v51;
      v17 = ((16 * v32) << v49) | v52;
      v29 = ((v33 & 0x70) << v49) | v50;
      v28 = 2;
    }

    while ((v48 & 1) != 0);
    v7 = v45;
    *v46 = v17;
    *(v47 - 2) = v29;
    *(v45 + 197) = v53;
    *(v45 + 198) = v27;
    if ((v27 & 0xAAAA) != 0)
    {
      LOBYTE(v41) = 0;
    }

    else
    {
      v41 = *(v9 + 28);
    }

    *(v45 + 796) = v41;
    v8 = (v27 | v53) != 0;
  }

  if (*(a1 + 2920) >= 1)
  {
    v42 = *(a1 + 2840) + 4 * *(a1 + 2904);
    v43 = *(a1 + 8 * *(v7 + 798) + 4 * *(v7 + 768) + 2924);
    *v42 = v43;
    *(v42 + 2) = v8 | BYTE2(v43);
  }

  return *(a2 + 40) == 0;
}

uint64_t VP8InitScanline(uint64_t result)
{
  *(*(result + 2832) - 2) = 0;
  *(result + 2816) = 0;
  *(result + 2904) = 0;
  return result;
}

uint64_t VP8Decode(uint64_t result, __int128 *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    if (!*result)
    {
      result = 0;
      *(v3 + 8) = "NULL VP8Io parameter in VP8Decode().";
      *v3 = 2;
      return result;
    }

    return 0;
  }

  if (!*(result + 4))
  {
    result = VP8GetHeaders(result, a2);
    if (!result)
    {
      return result;
    }

    if (!*(v3 + 4))
    {
      VP8Decode_cold_1();
    }
  }

  if (VP8EnterCritical(v3, a2))
  {
    goto LABEL_7;
  }

  if (!VP8InitFrame(v3, a2))
  {
    goto LABEL_26;
  }

  *(v3 + 2908) = 0;
  if (*(v3 + 428) < 1)
  {
LABEL_21:
    if (*(v3 + 200) >= 1)
    {
      v8 = WebPGetWorkerInterface();
      if (!(v8[2])(v3 + 152))
      {
        goto LABEL_26;
      }
    }

    v9 = 1;
    goto LABEL_27;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v3 + 432);
    if (!VP8ParseIntraModeRow((v3 + 16), v3))
    {
      if (*v3)
      {
        goto LABEL_26;
      }

      v9 = 0;
      v10 = "Premature end-of-partition0 encountered.";
      goto LABEL_30;
    }

    if (*(v3 + 2904) < *(v3 + 408))
    {
      v6 = v3 + 440 + 48 * (v5 & v4);
      while (VP8DecodeMB(v3, v6))
      {
        v7 = *(v3 + 2904) + 1;
        *(v3 + 2904) = v7;
        if (v7 >= *(v3 + 408))
        {
          goto LABEL_19;
        }
      }

      if (*v3)
      {
        goto LABEL_26;
      }

      v9 = 0;
      v10 = "Premature end-of-file encountered.";
LABEL_30:
      *(v3 + 8) = v10;
      v11 = 7;
LABEL_31:
      *v3 = v11;
      goto LABEL_27;
    }

LABEL_19:
    *(*(v3 + 2832) - 2) = 0;
    *(v3 + 2816) = 0;
    *(v3 + 2904) = 0;
    if (!VP8ProcessRow(v3, a2))
    {
      break;
    }

    v4 = *(v3 + 2908) + 1;
    *(v3 + 2908) = v4;
    if (v4 >= *(v3 + 428))
    {
      goto LABEL_21;
    }
  }

  if (!*v3)
  {
    v9 = 0;
    *(v3 + 8) = "Output aborted.";
    v11 = 6;
    goto LABEL_31;
  }

LABEL_26:
  v9 = 0;
LABEL_27:
  if ((VP8ExitCritical(v3, a2) & v9) != 0)
  {
    *(v3 + 4) = 0;
    return 1;
  }

LABEL_7:
  VP8Clear(v3);
  return 0;
}

uint64_t GetCoeffsAlt(unint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 > 15)
  {
    return 16;
  }

  v6 = a5;
  v8 = (*(a2 + 8 * a5) + 11 * a3);
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v11 = a2 + 8;
  while (1)
  {
    v12 = *v8;
    if (v9 < 0)
    {
      v13 = a1[2];
      if (!v13)
      {
        VP8GetValue_cold_1();
      }

      if (v13 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v9 = *(a1 + 3);
      }

      else
      {
        v14 = *v13;
        a1[2] = v13 + 7;
        *(&v15 + 1) = *a1;
        *&v15 = bswap64(v14);
        *a1 = v15 >> 8;
        v9 += 56;
        *(a1 + 3) = v9;
      }
    }

    v16 = (v10 * v12) >> 8;
    v17 = *a1;
    v18 = *a1 >> v9;
    if (v16 >= v18)
    {
      v20 = (v10 * v12) >> 8;
    }

    else
    {
      v19 = v16 + 1;
      v20 = v10 - v19;
      v17 -= v19 << v9;
      *a1 = v17;
    }

    if (v20 <= 0x7E)
    {
      v21 = kVP8Log2Range[v20];
      v20 = kVP8NewRange[v20];
      v9 -= v21;
      *(a1 + 3) = v9;
    }

    *(a1 + 2) = v20;
    if (v16 >= v18)
    {
      return v6;
    }

    v22 = v6;
    v23 = v6 << 32;
    v6 = (v6 + 1);
    while (1)
    {
      v24 = v8[1];
      if (v9 < 0)
      {
        v25 = a1[2];
        if (!v25)
        {
          VP8GetValue_cold_1();
        }

        if (v25 >= a1[4])
        {
          VP8LoadFinalBytes(a1, a2);
          v9 = *(a1 + 3);
          v17 = *a1;
        }

        else
        {
          v26 = *v25;
          a1[2] = v25 + 7;
          *(&v27 + 1) = v17;
          *&v27 = bswap64(v26);
          v17 = v27 >> 8;
          *a1 = v17;
          v9 += 56;
          *(a1 + 3) = v9;
        }
      }

      v28 = (v20 * v24) >> 8;
      v29 = v17 >> v9;
      if (v28 >= (v17 >> v9))
      {
        v20 = (v20 * v24) >> 8;
      }

      else
      {
        v30 = v28 + 1;
        v20 -= v30;
        v17 -= v30 << v9;
        *a1 = v17;
      }

      if (v20 <= 0x7E)
      {
        v31 = kVP8Log2Range[v20];
        v20 = kVP8NewRange[v20];
        v9 -= v31;
        *(a1 + 3) = v9;
      }

      *(a1 + 2) = v20;
      if (v28 < v29)
      {
        break;
      }

      v8 = *(v11 + 8 * v22);
      v23 += 0x100000000;
      v6 = (v6 + 1);
      if (++v22 == 16)
      {
        return 16;
      }
    }

    v32 = *(a2 + 8 * v6);
    v33 = v8[2];
    v34 = *(a1 + 3);
    if (v34 < 0)
    {
      v35 = a1[2];
      if (!v35)
      {
        VP8GetValue_cold_1();
      }

      if (v35 >= a1[4])
      {
        v54 = *(a2 + 8 * v6);
        VP8LoadFinalBytes(a1, a2);
        v32 = v54;
        v34 = *(a1 + 3);
        v17 = *a1;
      }

      else
      {
        v36 = *v35;
        a1[2] = v35 + 7;
        *(&v37 + 1) = v17;
        *&v37 = bswap64(v36);
        v17 = v37 >> 8;
        *a1 = v17;
        v34 += 56;
        *(a1 + 3) = v34;
      }
    }

    v38 = (v20 * v33) >> 8;
    v39 = v17 >> v34;
    v40 = v38;
    if (v38 < (v17 >> v34))
    {
      v41 = v38 + 1;
      v40 = v20 - v41;
      *a1 = v17 - (v41 << v34);
    }

    if (v40 <= 0x7E)
    {
      v42 = kVP8Log2Range[v40];
      v40 = kVP8NewRange[v40];
      v34 -= v42;
      *(a1 + 3) = v34;
    }

    *(a1 + 2) = v40;
    if (v38 >= v39)
    {
      v8 = (v32 + 11);
      LargeValue = 1;
      if (v34 < 0)
      {
LABEL_41:
        v46 = a1[2];
        if (!v46)
        {
          VP8GetValue_cold_1();
        }

        if (v46 >= a1[4])
        {
          VP8LoadFinalBytes(a1, a2);
          v34 = *(a1 + 3);
        }

        else
        {
          v47 = *v46;
          a1[2] = v46 + 7;
          *(&v48 + 1) = *a1;
          *&v48 = bswap64(v47);
          *a1 = v48 >> 8;
          v34 += 56;
        }
      }
    }

    else
    {
      v43 = v8;
      v44 = v32;
      LargeValue = GetLargeValue(a1, v43);
      v8 = (v44 + 22);
      v34 = *(a1 + 3);
      if (v34 < 0)
      {
        goto LABEL_41;
      }
    }

    v49 = v34;
    v50 = *(a1 + 2);
    v51 = *a1;
    v52 = (v50 >> 1) - (*a1 >> v34);
    v9 = v34 - 1;
    v10 = (v50 + (v52 >> 31)) | 1;
    *(a1 + 2) = v10;
    *(a1 + 3) = v9;
    *a1 = v51 - ((((v50 >> 1) + 1) & (v52 >> 31)) << v49);
    *(a6 + 2 * kZigzag[v23 >> 32]) = ((LargeValue ^ (v52 >> 31)) - (v52 >> 31)) * *(a4 + 4 * (v22 > 0));
    result = 16;
    if (v22 >= 15)
    {
      return result;
    }
  }
}

uint64_t GetCoeffsFast(unint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 > 15)
  {
    return 16;
  }

  v7 = a5;
  v9 = (*(a2 + 8 * a5) + 11 * a3);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = a2 + 8;
  while (1)
  {
    v13 = *v9;
    if (v10 < 0)
    {
      v14 = a1[2];
      if (!v14)
      {
        VP8GetValue_cold_1();
      }

      if (v14 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v10 = *(a1 + 3);
      }

      else
      {
        v15 = *v14;
        a1[2] = v14 + 7;
        *(&v16 + 1) = *a1;
        *&v16 = bswap64(v15);
        *a1 = v16 >> 8;
        v10 += 56;
      }
    }

    v17 = (v11 * v13) >> 8;
    v18 = *a1;
    v19 = v10;
    v20 = *a1 >> v10;
    if (v17 >= v20)
    {
      v21 = v17 + 1;
    }

    else
    {
      v21 = v11 - v17;
      v18 -= (v17 + 1) << v19;
      *a1 = v18;
    }

    v22 = __clz(v21) ^ 0x18;
    v23 = v21 << v22;
    v24 = v19 - v22;
    v25 = v23 - 1;
    *(a1 + 2) = v23 - 1;
    *(a1 + 3) = v19 - v22;
    if (v17 >= v20)
    {
      return v7;
    }

    v26 = v7;
    v27 = v7 << 32;
    v7 = (v7 + 1);
    while (1)
    {
      v28 = v9[1];
      if (v24 < 0)
      {
        v29 = a1[2];
        if (!v29)
        {
          VP8GetValue_cold_1();
        }

        if (v29 >= a1[4])
        {
          VP8LoadFinalBytes(a1, a2);
          v24 = *(a1 + 3);
          v18 = *a1;
        }

        else
        {
          v30 = *v29;
          a1[2] = v29 + 7;
          *(&v31 + 1) = v18;
          *&v31 = bswap64(v30);
          v18 = v31 >> 8;
          *a1 = v18;
          v24 += 56;
        }
      }

      v32 = (v25 * v28) >> 8;
      v33 = v24;
      v34 = v18 >> v24;
      if (v32 >= (v18 >> v24))
      {
        v35 = v32 + 1;
      }

      else
      {
        v35 = v25 - v32;
        v18 -= (v32 + 1) << v33;
        *a1 = v18;
      }

      v36 = __clz(v35) ^ 0x18;
      v37 = v35 << v36;
      v24 = v33 - v36;
      v25 = v37 - 1;
      *(a1 + 2) = v37 - 1;
      *(a1 + 3) = v33 - v36;
      if (v32 < v34)
      {
        break;
      }

      v9 = *(v12 + 8 * v26);
      v27 += 0x100000000;
      v7 = (v7 + 1);
      if (++v26 == 16)
      {
        return 16;
      }
    }

    v38 = a6;
    v39 = *(a2 + 8 * v7);
    v40 = v9[2];
    if (v24 < 0)
    {
      v41 = a1[2];
      if (!v41)
      {
        VP8GetValue_cold_1();
      }

      if (v41 >= a1[4])
      {
        v61 = *(a2 + 8 * v7);
        VP8LoadFinalBytes(a1, a2);
        v39 = v61;
        v24 = *(a1 + 3);
        v18 = *a1;
      }

      else
      {
        v42 = *v41;
        a1[2] = v41 + 7;
        *(&v43 + 1) = v18;
        *&v43 = bswap64(v42);
        v18 = v43 >> 8;
        *a1 = v18;
        v24 += 56;
      }
    }

    v44 = v24;
    v45 = (v25 * v40) >> 8;
    v46 = v44;
    v47 = v18 >> v44;
    if (v45 >= v47)
    {
      v48 = v45 + 1;
    }

    else
    {
      v48 = v25 - v45;
      *a1 = v18 - ((v45 + 1) << v46);
    }

    a6 = v38;
    v49 = __clz(v48) ^ 0x18;
    v50 = v48 << v49;
    v51 = v46 - v49;
    *(a1 + 2) = v50 - 1;
    *(a1 + 3) = v51;
    if (v45 >= v47)
    {
      v9 = (v39 + 11);
      LargeValue = 1;
      if (v51 < 0)
      {
LABEL_36:
        v54 = a1[2];
        if (!v54)
        {
          VP8GetValue_cold_1();
        }

        if (v54 >= a1[4])
        {
          VP8LoadFinalBytes(a1, a2);
          v51 = *(a1 + 3);
        }

        else
        {
          v55 = *v54;
          a1[2] = v54 + 7;
          *(&v56 + 1) = *a1;
          *&v56 = bswap64(v55);
          *a1 = v56 >> 8;
          v51 += 56;
        }
      }
    }

    else
    {
      v52 = v39;
      LargeValue = GetLargeValue(a1, v9);
      v9 = (v52 + 22);
      v51 = *(a1 + 3);
      if (v51 < 0)
      {
        goto LABEL_36;
      }
    }

    v57 = *(a1 + 2);
    v58 = *a1;
    v59 = (v57 >> 1) - (*a1 >> v51);
    v10 = v51 - 1;
    v11 = (v57 + (v59 >> 31)) | 1;
    *(a1 + 2) = v11;
    *(a1 + 3) = v51 - 1;
    *a1 = v58 - ((((v57 >> 1) + 1) & (v59 >> 31)) << v51);
    *(a6 + 2 * kZigzag[v27 >> 32]) = ((LargeValue ^ (v59 >> 31)) - (v59 >> 31)) * *(a4 + 4 * (v26 > 0));
    result = 16;
    if (v26 >= 15)
    {
      return result;
    }
  }
}

uint64_t GetLargeValue(unint64_t *a1, unsigned __int8 *a2)
{
  v4 = a2[3];
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (v5 < 0)
  {
    v7 = a1[2];
    if (!v7)
    {
      VP8GetValue_cold_1();
    }

    if (v7 >= a1[4])
    {
      VP8LoadFinalBytes(a1, a2);
      v5 = *(a1 + 3);
    }

    else
    {
      v8 = *v7;
      a1[2] = v7 + 7;
      *(&v9 + 1) = *a1;
      *&v9 = bswap64(v8);
      *a1 = v9 >> 8;
      v5 += 56;
    }
  }

  v10 = (v6 * v4) >> 8;
  v11 = *a1;
  v12 = v5;
  v13 = *a1 >> v5;
  if (v10 >= v13)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v6 - v10;
    v11 -= (v10 + 1) << v12;
    *a1 = v11;
  }

  v15 = __clz(v14) ^ 0x18;
  v16 = v14 << v15;
  v17 = v12 - v15;
  v18 = v16 - 1;
  *(a1 + 2) = v16 - 1;
  *(a1 + 3) = v12 - v15;
  if (v10 >= v13)
  {
    v23 = a2[4];
    if (v17 < 0)
    {
      v24 = a1[2];
      if (!v24)
      {
        VP8GetValue_cold_1();
      }

      if (v24 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v17 = *(a1 + 3);
        v11 = *a1;
      }

      else
      {
        v25 = *v24;
        a1[2] = v24 + 7;
        *(&v26 + 1) = v11;
        *&v26 = bswap64(v25);
        v11 = v26 >> 8;
        *a1 = v11;
        v17 += 56;
      }
    }

    v41 = (v18 * v23) >> 8;
    v42 = v17;
    v43 = v11 >> v17;
    if (v41 >= (v11 >> v17))
    {
      v44 = v41 + 1;
    }

    else
    {
      v44 = v18 - v41;
      v11 -= (v41 + 1) << v42;
      *a1 = v11;
    }

    v45 = __clz(v44) ^ 0x18;
    v46 = v44 << v45;
    v47 = v42 - v45;
    v48 = v46 - 1;
    *(a1 + 2) = v46 - 1;
    *(a1 + 3) = v42 - v45;
    if (v41 >= v43)
    {
      return 2;
    }

    v49 = a2[5];
    if (v47 < 0)
    {
      v50 = a1[2];
      if (!v50)
      {
        VP8GetValue_cold_1();
      }

      if (v50 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v47 = *(a1 + 3);
        v11 = *a1;
      }

      else
      {
        v51 = *v50;
        a1[2] = v50 + 7;
        *(&v52 + 1) = v11;
        *&v52 = bswap64(v51);
        v11 = v52 >> 8;
        *a1 = v11;
        v47 += 56;
      }
    }

    v79 = (v48 * v49) >> 8;
    v80 = v47;
    if (v79 >= (v11 >> v47))
    {
      v81 = v79 + 1;
      result = 3;
    }

    else
    {
      v81 = v48 - v79;
      *a1 = v11 - ((v79 + 1) << v80);
      result = 4;
    }

    goto LABEL_99;
  }

  v19 = a2[6];
  if (v17 < 0)
  {
    v20 = a1[2];
    if (!v20)
    {
      VP8GetValue_cold_1();
    }

    if (v20 >= a1[4])
    {
      VP8LoadFinalBytes(a1, a2);
      v17 = *(a1 + 3);
      v11 = *a1;
    }

    else
    {
      v21 = *v20;
      a1[2] = v20 + 7;
      *(&v22 + 1) = v11;
      *&v22 = bswap64(v21);
      v11 = v22 >> 8;
      *a1 = v11;
      v17 += 56;
    }
  }

  v27 = (v18 * v19) >> 8;
  v28 = v11 >> v17;
  if (v27 >= (v11 >> v17))
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v18 - v27;
    v11 -= (v27 + 1) << v17;
    *a1 = v11;
  }

  v30 = __clz(v29) ^ 0x18;
  v31 = v17 - v30;
  v32 = (v29 << v30) - 1;
  *(a1 + 2) = v32;
  *(a1 + 3) = v31;
  if (v27 < v28)
  {
    v33 = a2[8];
    if (v31 < 0)
    {
      v34 = a1[2];
      if (!v34)
      {
        VP8GetValue_cold_1();
      }

      if (v34 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v31 = *(a1 + 3);
        v11 = *a1;
      }

      else
      {
        v35 = *v34;
        a1[2] = v34 + 7;
        *(&v36 + 1) = v11;
        *&v36 = bswap64(v35);
        v11 = v36 >> 8;
        *a1 = v11;
        v31 += 56;
      }
    }

    v54 = (v32 * v33) >> 8;
    v55 = v11 >> v31;
    if (v54 >= (v11 >> v31))
    {
      v56 = v54 + 1;
    }

    else
    {
      v56 = v32 - v54;
      v11 -= (v54 + 1) << v31;
      *a1 = v11;
    }

    v57 = __clz(v56) ^ 0x18;
    v58 = v31 - v57;
    v59 = (v56 << v57) - 1;
    *(a1 + 2) = v59;
    *(a1 + 3) = v58;
    if (v54 >= v55)
    {
      v60 = a2;
    }

    else
    {
      v60 = a2 + 1;
    }

    v61 = v60[9];
    if (v58 < 0)
    {
      v62 = a1[2];
      if (!v62)
      {
        VP8GetValue_cold_1();
      }

      if (v62 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v58 = *(a1 + 3);
        v11 = *a1;
      }

      else
      {
        v63 = *v62;
        a1[2] = v62 + 7;
        *(&v64 + 1) = v11;
        *&v64 = bswap64(v63);
        v11 = v64 >> 8;
        *a1 = v11;
        v58 += 56;
      }
    }

    v82 = (v59 * v61) >> 8;
    v83 = v58;
    v84 = v11 >> v58;
    if (v82 >= v84)
    {
      v85 = v82 + 1;
    }

    else
    {
      v85 = v59 - v82;
      v11 -= (v82 + 1) << v83;
      *a1 = v11;
    }

    v86 = v82 < v84;
    v87 = v54 < v55;
    v88 = __clz(v85) ^ 0x18;
    v89 = v85 << v88;
    v90 = v83 - v88;
    v91 = v89 - 1;
    *(a1 + 2) = v89 - 1;
    *(a1 + 3) = v90;
    v92 = v86 | (2 * v87);
    v93 = *(&kCat3456 + v92);
    v94 = *v93;
    if (*v93)
    {
      v95 = 0;
      v96 = v93 + 1;
      do
      {
        if (v90 < 0)
        {
          v97 = a1[2];
          if (!v97)
          {
            VP8GetValue_cold_1();
          }

          if (v97 >= a1[4])
          {
            VP8LoadFinalBytes(a1, a2);
            v90 = *(a1 + 3);
            v11 = *a1;
          }

          else
          {
            v98 = *v97;
            a1[2] = v97 + 7;
            *(&v99 + 1) = v11;
            *&v99 = bswap64(v98);
            v11 = v99 >> 8;
            *a1 = v11;
            v90 += 56;
          }
        }

        v100 = (v91 * v94) >> 8;
        v101 = v90;
        v102 = v11 >> v90;
        if (v100 >= v102)
        {
          v103 = v100 + 1;
        }

        else
        {
          v103 = v91 - v100;
          v11 -= (v100 + 1) << v101;
          *a1 = v11;
        }

        v104 = v100 < v102;
        v105 = __clz(v103) ^ 0x18;
        v106 = v103 << v105;
        v90 = v101 - v105;
        v91 = v106 - 1;
        *(a1 + 2) = v106 - 1;
        *(a1 + 3) = v90;
        v95 = v104 | (2 * v95);
        v107 = *v96++;
        v94 = v107;
      }

      while (v107);
    }

    else
    {
      v95 = 0;
    }

    return (v95 + (8 << v92) + 3);
  }

  v37 = a2[7];
  if (v31 < 0)
  {
    v38 = a1[2];
    if (!v38)
    {
      VP8GetValue_cold_1();
    }

    if (v38 >= a1[4])
    {
      VP8LoadFinalBytes(a1, a2);
      v31 = *(a1 + 3);
      v11 = *a1;
    }

    else
    {
      v39 = *v38;
      a1[2] = v38 + 7;
      *(&v40 + 1) = v11;
      *&v40 = bswap64(v39);
      v11 = v40 >> 8;
      *a1 = v11;
      v31 += 56;
    }
  }

  v65 = (v32 * v37) >> 8;
  v66 = v31;
  v67 = v11 >> v31;
  if (v65 >= (v11 >> v31))
  {
    v68 = v65 + 1;
  }

  else
  {
    v68 = v32 - v65;
    v11 -= (v65 + 1) << v66;
    *a1 = v11;
  }

  v69 = __clz(v68) ^ 0x18;
  v70 = v68 << v69;
  v71 = v66 - v69;
  v72 = v70 - 1;
  *(a1 + 2) = v70 - 1;
  *(a1 + 3) = v66 - v69;
  if (v65 >= v67)
  {
    if (v71 < 0)
    {
      v76 = a1[2];
      if (!v76)
      {
        VP8GetValue_cold_1();
      }

      if (v76 >= a1[4])
      {
        VP8LoadFinalBytes(a1, a2);
        v71 = *(a1 + 3);
        v11 = *a1;
      }

      else
      {
        v77 = *v76;
        a1[2] = v76 + 7;
        *(&v78 + 1) = v11;
        *&v78 = bswap64(v77);
        v11 = v78 >> 8;
        *a1 = v11;
        v71 += 56;
      }
    }

    v117 = (159 * v72) >> 8;
    v80 = v71;
    if (v117 >= (v11 >> v71))
    {
      v81 = v117 + 1;
      result = 5;
    }

    else
    {
      v81 = v72 - v117;
      *a1 = v11 - ((v117 + 1) << v80);
      result = 6;
    }

LABEL_99:
    v118 = __clz(v81) ^ 0x18;
    *(a1 + 2) = (v81 << v118) - 1;
    *(a1 + 3) = v80 - v118;
    return result;
  }

  if (v71 < 0)
  {
    v73 = a1[2];
    if (!v73)
    {
      VP8GetValue_cold_1();
    }

    if (v73 >= a1[4])
    {
      VP8LoadFinalBytes(a1, a2);
      v71 = *(a1 + 3);
      v11 = *a1;
    }

    else
    {
      v74 = *v73;
      a1[2] = v73 + 7;
      *(&v75 + 1) = v11;
      *&v75 = bswap64(v74);
      v11 = v75 >> 8;
      *a1 = v11;
      v71 += 56;
    }
  }

  v108 = (165 * v72) >> 8;
  if (v108 >= (v11 >> v71))
  {
    v109 = v108 + 1;
    v110 = 7;
  }

  else
  {
    v109 = v72 - v108;
    v11 -= (v108 + 1) << v71;
    *a1 = v11;
    v110 = 9;
  }

  v111 = __clz(v109) ^ 0x18;
  v112 = v71 - v111;
  v113 = (v109 << v111) - 1;
  *(a1 + 2) = v113;
  *(a1 + 3) = v112;
  if (v112 < 0)
  {
    v114 = a1[2];
    if (!v114)
    {
      VP8GetValue_cold_1();
    }

    if (v114 >= a1[4])
    {
      VP8LoadFinalBytes(a1, a2);
      v112 = *(a1 + 3);
      v11 = *a1;
    }

    else
    {
      v115 = *v114;
      a1[2] = v114 + 7;
      *(&v116 + 1) = v11;
      *&v116 = bswap64(v115);
      v11 = v116 >> 8;
      *a1 = v11;
      v112 += 56;
    }
  }

  v119 = (145 * v113) >> 8;
  v120 = v112;
  v121 = v11 >> v112;
  if (v119 >= v121)
  {
    v122 = v119 + 1;
  }

  else
  {
    v122 = v113 - v119;
    *a1 = v11 - ((v119 + 1) << v120);
  }

  v123 = __clz(v122) ^ 0x18;
  *(a1 + 2) = (v122 << v123) - 1;
  *(a1 + 3) = v120 - v123;
  if (v119 >= v121)
  {
    return v110;
  }

  else
  {
    return v110 + 1;
  }
}

_BYTE *compute_ideal_colors_and_weights_1plane(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, uint64_t a4, unsigned __int32 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, int8x16_t a13)
{
  v69 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 3488);
  v17 = *(a1 + 3520);
  {
    v66 = v17;
    v67 = v16;
    compute_ideal_colors_and_weights_1plane();
    v17 = v66;
    v16 = v67;
  }

  v18 = vmovn_s32(vceqq_f32(v16, v17));
  v19 = 0;
  v19.i16[3] = v18.i16[3];
  v20 = vmovl_u16(v19);
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  v22 = vandq_s8(v20, v21);
  v23 = *&mask(vmask4)::shift;
  v24 = vshlq_u32(v22, mask(vmask4)::shift);
  v24.i32[0] = vaddvq_s32(v24);
  if (v24.i32[0])
  {

    return compute_ideal_colors_and_weights_3_comp(a1, a2, a3, 3, a5, a6, a7, a8, *v24.i64, v23, a11, a12, a13);
  }

  else
  {
    v26 = *(a1 + 3456);
    if (!*(a1 + 3456))
    {
      compute_ideal_colors_and_weights_1plane();
    }

    v27 = *a2;
    if (!*a2)
    {
      compute_ideal_colors_and_weights_1plane();
    }

    v28 = vadd_f32(*&vextq_s8(*(a1 + 3536), *(a1 + 3536), 8uLL), *(a1 + 3536));
    v29 = 0.25 * vpadd_f32(v28, v28).f32[0];
    memset(v68, 0, sizeof(v68));
    v34 = compute_avgs_and_dirs_4_comp(a2, a1, v68, a4, a5, a6, a7, a8);
    v31 = 0;
    v32 = a2 + 2;
    v33 = (a2 + 112);
    v34.i64[0] = 0;
    v35 = a3 + 160;
    result = a3 + 1024;
    v36 = 0.0;
    v37 = 1;
    do
    {
      v38 = &v68[2 * v31];
      v39 = v38[1];
      v30.f32[0] = COERCE_FLOAT(v38[1].i64[1]) + vaddv_f32(*v39.i8);
      v40 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v34, v30), 0), vsubq_f32(0, v39), v39);
      v41 = vmulq_f32(v40, v40);
      *v41.i8 = vadd_f32(*&vextq_s8(v41, v41, 8uLL), *v41.i8);
      v42 = vpadd_f32(*v41.i8, *v41.i8);
      if (*v42.i32 == 0.0)
      {
        v43.i64[0] = 0x3F0000003F000000;
        v43.i64[1] = 0x3F0000003F000000;
      }

      else
      {
        v43 = vdivq_f32(v40, vsqrtq_f32(vdupq_lane_s32(v42, 0)));
      }

      v30 = *v38;
      v44 = *(v32 + v31);
      v45 = -1.0e10;
      v46 = 1.0e10;
      if (*(v32 + v31))
      {
        v47 = v33;
        v48 = *(v32 + v31);
        v46 = 1.0e10;
        v45 = -1.0e10;
        do
        {
          v49 = *v47++;
          v50.i32[0] = *(a1 + 4 * v49);
          v50.i32[1] = *(a1 + 864 + 4 * v49);
          v50.i32[2] = *(a1 + 1728 + 4 * v49);
          v50.i32[3] = *(a1 + 2592 + 4 * v49);
          v51 = vmulq_f32(v43, vsubq_f32(v50, v30));
          *v51.i8 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), *v51.i8);
          v52 = vpadd_f32(*v51.i8, *v51.i8).f32[0];
          *&v35[4 * v49] = v52;
          if (v52 < v46)
          {
            v46 = v52;
          }

          if (v52 > v45)
          {
            v45 = v52;
          }

          --v48;
        }

        while (v48);
      }

      if (v45 <= v46)
      {
        v53 = 0.0000001;
      }

      else
      {
        v53 = v45;
      }

      if (v45 <= v46)
      {
        v46 = 0.0;
      }

      v54 = v53 - v46;
      if (v31)
      {
        v37 &= (v54 * v54) == v36;
      }

      else
      {
        v36 = v54 * v54;
      }

      *&a3[16 * v31 + 32] = vaddq_f32(v30, vmulq_n_f32(v43, v46));
      *&a3[16 * v31 + 96] = vaddq_f32(v30, vmulq_n_f32(v43, v53));
      if (v44)
      {
        v55 = 0;
        v56 = v29 * (v54 * v54);
        v57 = 1.0 / v54;
        do
        {
          v58 = v33[v55];
          v59 = v57 * (*&v35[4 * v58] - v46);
          v60 = fmaxf(v59, 0.0);
          if (v59 <= 1.0)
          {
            v61 = v60;
          }

          else
          {
            v61 = 1.0;
          }

          *&v35[4 * v58] = v61;
          *&result[4 * v58] = v56;
          ++v55;
        }

        while (v44 != v55);
      }

      ++v31;
      v33 += 216;
    }

    while (v31 != v27);
    v62 = (v26 + 3) & 0x1FC;
    if (v62 > v26)
    {
      v63 = v26 - v62;
      v64 = &a3[4 * v26];
      do
      {
        *(v64 + 40) = 0;
        *(v64 + 256) = 0;
        v64 += 4;
      }

      while (!__CFADD__(v63++, 1));
    }

    *a3 = v37 & 1;
  }

  return result;
}

void *compute_ideal_colors_and_weights_3_comp(int8x16_t *a1, unsigned __int16 *a2, uint64_t a3, unsigned __int32 *a4, unsigned __int32 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, int8x16_t a13)
{
  v73 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  *(a3 + 16) = v13;
  if (!v13)
  {
    compute_ideal_colors_and_weights_3_comp();
  }

  v15 = a1[216].u8[0];
  if (!a1[216].i8[0])
  {
    compute_ideal_colors_and_weights_3_comp();
  }

  v16 = a4;
  v19.i64[0] = 0;
  v19.i32[3] = 0;
  memset(v72, 0, sizeof(v72));
  v20 = a1[221];
  if (a4 == 2)
  {
    v19.i32[2] = HIDWORD(*&a1[221]);
    v23 = vadd_f32(*v20.i8, *&vextq_s8(v19, v19, 8uLL));
    v23.i32[0] = vpadd_f32(v23, v23).u32[0];
    v25 = 54;
    goto LABEL_9;
  }

  v21 = a1[221];
  if (a4 == 1)
  {
    v21.i32[1] = a1[221].i64[1];
    v21.i64[1] = v20.u32[3];
    v23 = vadd_f32(*&vextq_s8(v21, v21, 8uLL), *v21.i8);
    v23.i32[0] = vpadd_f32(v23, v23).u32[0];
    v25 = 108;
LABEL_9:
    v24 = a1;
    goto LABEL_10;
  }

  v21.i32[3] = 0;
  v21.i64[0] = vextq_s8(v21, v21, 8uLL).u64[0];
  v22 = vadd_f32(*v20.i8, *v21.i8);
  v23 = vpadd_f32(v22, v22);
  if (!a4)
  {
    v24 = a1 + 54;
    v25 = 108;
LABEL_10:
    v26 = &a1[v25];
    v27 = v23.f32[0] * 0.33333;
    v28 = 162;
    goto LABEL_11;
  }

  v26 = a1 + 54;
  v21.i32[0] = 1051372203;
  v27 = 0.33333 * v23.f32[0];
  if (a4 == 3)
  {
    v29 = compute_avgs_and_dirs_3_comp_rgb(a2, a1, v72, a4, a5, a6, a7, a8, *&v23, *v21.i64, a11, a12, a13);
    v28 = 108;
    v24 = a1;
    goto LABEL_12;
  }

  v28 = 108;
  v24 = a1;
LABEL_11:
  v29 = compute_avgs_and_dirs_3_comp(a2, a1, a4, v72);
LABEL_12:
  v32 = 0;
  v33 = a2 + 2;
  v34 = a2 + 112;
  v35 = a3 + 160;
  v29.i64[0] = 0;
  v36 = a3 + 32;
  result = &unk_18622B000;
  v38 = 1;
  v39 = 0.0;
  do
  {
    v40 = &v72[2 * v32];
    v41 = v40[1];
    v30.f32[0] = COERCE_FLOAT(v40[1].i64[1]) + vaddv_f32(*v41.i8);
    v42 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v29, v30), 0), vsubq_f32(0, v41), v41);
    v43 = vmulq_f32(v42, v42);
    *v43.i8 = vadd_f32(*&vextq_s8(v43, v43, 8uLL), *v43.i8);
    v44 = vpadd_f32(*v43.i8, *v43.i8);
    v45 = xmmword_18622B5B0;
    if (*v44.i32 != 0.0)
    {
      v45 = vdivq_f32(v42, vsqrtq_f32(vdupq_lane_s32(v44, 0)));
    }

    v46 = *v40;
    v47 = *(v33 + v32);
    v48 = -1.0e10;
    v49 = 1.0e10;
    if (*(v33 + v32))
    {
      v48 = -1.0e10;
      v49 = 1.0e10;
      v50 = *(v33 + v32);
      v51 = v34;
      do
      {
        v52 = *v51;
        v51 = (v51 + 1);
        v31.i32[0] = v24->i32[v52];
        v31.i32[1] = v26->i32[v52];
        v31.i32[2] = a1[v28].i32[v52];
        v31 = vmulq_f32(v45, vsubq_f32(v31, v46));
        v53 = vaddv_f32(*v31.f32);
        *(v35 + 4 * v52) = v31.f32[2] + v53;
        if ((v31.f32[2] + v53) < v49)
        {
          v49 = v31.f32[2] + v53;
        }

        if ((v31.f32[2] + v53) > v48)
        {
          v48 = v31.f32[2] + v53;
        }

        --v50;
      }

      while (v50);
    }

    if (v48 <= v49)
    {
      v48 = 0.0000001;
      v49 = 0.0;
    }

    v54 = v48 - v49;
    if (v32)
    {
      v38 &= (v54 * v54) == v39;
    }

    else
    {
      v39 = v54 * v54;
    }

    if (v47)
    {
      v55 = 0;
      v56 = v27 * (v54 * v54);
      v57 = 1.0 / v54;
      do
      {
        v58 = *(v34 + v55);
        v59 = v57 * (*(v35 + 4 * v58) - v49);
        v60 = fmaxf(v59, 0.0);
        if (v59 <= 1.0)
        {
          v61 = v60;
        }

        else
        {
          v61 = 1.0;
        }

        *(v35 + 4 * v58) = v61;
        *(a3 + 1024 + 4 * v58) = v56;
        ++v55;
      }

      while (v47 != v55);
    }

    v62 = vaddq_f32(v46, vmulq_n_f32(v45, v49));
    v63 = vaddq_f32(v46, vmulq_n_f32(v45, v48));
    v64 = a1[218];
    v65 = a1[220];
    if (v16)
    {
      if (v16 == 1)
      {
        v67 = vzip1q_s32(v64, v62);
        *(v36 + 16 * v32) = vtrn2q_s32(v67, vuzp1q_s32(v67, v62));
        v68 = vzip1q_s32(v65, v63);
        v30 = vtrn2q_s32(v68, vuzp1q_s32(v68, v63));
      }

      else if (v16 == 2)
      {
        v66 = vtrn1q_s32(v64, v62);
        v66.i64[0] = v62.i64[0];
        *(v36 + 16 * v32) = v66;
        v30 = vtrn1q_s32(v65, v63);
        v30.i64[0] = v63.i64[0];
      }

      else
      {
        v62.i32[3] = HIDWORD(*&a1[218]);
        *(v36 + 16 * v32) = v62;
        v63.i32[3] = v65.i32[3];
        v30 = v63;
      }
    }

    else
    {
      *(v36 + 16 * v32) = vextq_s8(vextq_s8(v64, v64, 4uLL), v62, 0xCuLL);
      v30 = vextq_s8(vextq_s8(v65, v65, 4uLL), v63, 0xCuLL);
    }

    *(a3 + 96 + 16 * v32++) = v30;
    v34 += 108;
  }

  while (v32 != v13);
  if (((v15 + 3) & 0x1FCu) > v15)
  {
    v69 = a3 + 4 * v15;
    v70 = v15 - ((v15 + 3) & 0x1FC);
    do
    {
      *(v69 + 160) = 0;
      *(v69 + 1024) = 0;
      v69 += 4;
    }

    while (!__CFADD__(v70++, 1));
  }

  *a3 = v38 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_2planes(block_size_descriptor *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  partition_info = block_size_descriptor::get_partition_info(a1, 1u, 0);
  v17 = *(a2 + 3488);
  v18 = *(a2 + 3520);
  {
    v30 = v18;
    v31 = v17;
    compute_ideal_colors_and_weights_1plane();
    v18 = v30;
    v17 = v31;
  }

  if (a3 >= 4)
  {
    compute_ideal_colors_and_weights_2planes();
  }

  v19 = vmovn_s32(vceqq_f32(v17, v18));
  v20 = 0;
  v20.i16[3] = v19.i16[3];
  v21 = vmovl_u16(v20);
  v22.i64[0] = 0x100000001;
  v22.i64[1] = 0x100000001;
  v23 = vshlq_u32(vandq_s8(v21, v22), mask(vmask4)::shift);
  v23.i32[0] = vaddvq_s32(v23);
  switch(a3)
  {
    case 2u:
      if (v23.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 0, 1, v10, v11, v12, *v23.i64, mask(vmask4)::shift, v14, v15);
        v24 = 2;
        goto LABEL_20;
      }

      v24 = 2;
      v25 = a2;
      v26 = partition_info;
      v27 = a4;
      v28 = 2;
      break;
    case 1u:
      if (v23.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 0, 2, v10, v11, v12, *v23.i64, mask(vmask4)::shift, v14, v15);
        v24 = 1;
        goto LABEL_20;
      }

      v24 = 1;
      v25 = a2;
      v26 = partition_info;
      v27 = a4;
      v28 = 1;
      break;
    case 0u:
      if (v23.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 1, 2, v10, v11, v12, *v23.i64, mask(vmask4)::shift, v14, v15);
      }

      else
      {
        compute_ideal_colors_and_weights_3_comp(a2, partition_info, a4, 0, v9, v10, v11, v12, *v23.i64, *&mask(vmask4)::shift, v14, *v15.i64, v16);
      }

      v24 = 0;
      goto LABEL_20;
    default:
      if (v23.i32[0])
      {
        compute_ideal_colors_and_weights_2planes();
      }

      v24 = 3;
      v25 = a2;
      v26 = partition_info;
      v27 = a4;
      v28 = 3;
      break;
  }

  compute_ideal_colors_and_weights_3_comp(v25, v26, v27, v28, v9, v10, v11, v12, *v23.i64, *&mask(vmask4)::shift, v14, *v15.i64, v16);
LABEL_20:

  return compute_ideal_colors_and_weights_1_comp(a2, partition_info, a5, v24);
}

char *block_size_descriptor::get_partition_info(block_size_descriptor *this, unsigned int a2, unsigned int a3)
{
  if (a2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 1024 * (a2 - 2) + a3 + 7330328);
    if (v3 == 0xFFFF)
    {
LABEL_10:
      block_size_descriptor::get_partition_info();
    }
  }

  if (v3 >= *(this + a2 + 11))
  {
    goto LABEL_10;
  }

  v4 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v4 = 3072;
  }

  v5 = this + 1088 * v4;
  result = &v5[1088 * v3 + 11317232];
  if (*&v5[1088 * v3 + 11317234] != a3)
  {
    block_size_descriptor::get_partition_info();
  }

  return result;
}

unint64_t compute_ideal_colors_and_weights_2_comp(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  *(a3 + 16) = v12;
  if (!v12)
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  v14 = *(a1 + 3456);
  if (!*(a1 + 3456))
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  v15 = a5;
  v16 = a4;
  memset(v66, 0, sizeof(v66));
  if (!a4 && a5 == 1)
  {
    a10.i32[1] = 0;
    v19 = vadd_f32(*(a1 + 3536), 0);
    v20 = vpadd_f32(v19, v19);
    v21 = 864;
LABEL_9:
    v25 = a1;
    goto LABEL_13;
  }

  if (!a4 && a5 == 2)
  {
    v22 = (a1 + 3536);
    *(&a10 - 8) = vld2_f32(v22);
    a11 = 0.0;
    v24 = vadd_f32(v23, 0);
    v20 = vpadd_f32(v24, v24);
    v21 = 1728;
    goto LABEL_9;
  }

  if (a4 != 1 || a5 != 2)
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  v26 = *(a1 + 3536);
  a10 = vextq_s8(v26, v26, 8uLL);
  *v26.i8 = vext_s8(*v26.i8, *a10.i8, 4uLL);
  a10.i32[1] = 0;
  *v26.i8 = vadd_f32(*v26.i8, 0);
  v20 = vpadd_f32(*v26.i8, *v26.i8);
  v25 = a1 + 864;
  v21 = 1728;
LABEL_13:
  v27 = a1 + v21;
  a10.i32[0] = 0.5;
  v28 = v20.f32[0] * 0.5;
  result = compute_avgs_and_dirs_2_comp(a2, a1, a4, a5, v66, *&v20, a10, a11, a12);
  v31 = 0;
  v32 = a2 + 2;
  v33 = a2 + 112;
  v34 = a3 + 160;
  v35.i64[0] = 0;
  v36 = 1;
  v37 = vceqq_s32(vdupq_n_s32(v15), xmmword_186205980);
  v38 = vceqq_s32(vdupq_n_s32(v16), xmmword_186205980);
  v39 = 0.0;
  do
  {
    v40 = &v66[2 * v31];
    v41 = v40[1];
    v42 = vextq_s8(v41, v41, 8uLL);
    *v42.f32 = vadd_f32(*v42.f32, *v41.i8);
    *v42.f32 = vpadd_f32(*v42.f32, *v42.f32);
    v43 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v35, v42), 0), vsubq_f32(0, v41), v41);
    v44 = vmulq_f32(v43, v43);
    *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
    v45 = vpadd_f32(*v44.i8, *v44.i8);
    v46 = xmmword_18622B5C0;
    if (*v45.i32 != 0.0)
    {
      v46 = vdivq_f32(v43, vsqrtq_f32(vdupq_lane_s32(v45, 0)));
    }

    v47 = *v40;
    v48 = *(v32 + v31);
    v49 = -1.0e10;
    v50 = 1.0e10;
    if (*(v32 + v31))
    {
      v51 = *(v32 + v31);
      result = v33;
      v50 = 1.0e10;
      v49 = -1.0e10;
      do
      {
        v52 = *result++;
        v30.i32[0] = *(v25 + 4 * v52);
        v30.i32[1] = *(v27 + 4 * v52);
        v30 = vmulq_f32(v46, vsubq_f32(v30, v47));
        *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), *v30.i8);
        *v30.i32 = vpadd_f32(*v30.i8, *v30.i8).f32[0];
        *(v34 + 4 * v52) = v30.i32[0];
        if (*v30.i32 < v50)
        {
          v50 = *v30.i32;
        }

        if (*v30.i32 > v49)
        {
          v49 = *v30.i32;
        }

        --v51;
      }

      while (v51);
    }

    if (v49 <= v50)
    {
      v49 = 0.0000001;
      v50 = 0.0;
    }

    v53 = v49 - v50;
    if (v31)
    {
      v36 &= (v53 * v53) == v39;
    }

    else
    {
      v39 = v53 * v53;
    }

    if (v48)
    {
      v54 = 0;
      v55 = v28 * (v53 * v53);
      v56 = 1.0 / v53;
      do
      {
        result = *(v33 + v54);
        v57 = v56 * (*(v34 + 4 * result) - v50);
        v58 = fmaxf(v57, 0.0);
        if (v57 <= 1.0)
        {
          v59 = v58;
        }

        else
        {
          v59 = 1.0;
        }

        *(v34 + 4 * result) = v59;
        *(a3 + 1024 + 4 * result) = v55;
        ++v54;
      }

      while (v48 != v54);
    }

    v60 = vaddq_f32(v47, vmulq_n_f32(v46, v50)).u64[0];
    v61 = vaddq_f32(v47, vmulq_n_f32(v46, v49)).u64[0];
    v30 = vdupq_lane_s32(v61, 0);
    v62 = vbslq_s8(v38, v30, *(a1 + 3520));
    *(a3 + 32 + 16 * v31) = vbslq_s8(v37, vdupq_lane_s32(v60, 1), vbslq_s8(v38, vdupq_lane_s32(v60, 0), *(a1 + 3488)));
    *(a3 + 96 + 16 * v31++) = vbslq_s8(v37, vdupq_lane_s32(v61, 1), v62);
    v33 += 108;
  }

  while (v31 != v12);
  if (((v14 + 3) & 0x1FCu) > v14)
  {
    v63 = a3 + 4 * v14;
    v64 = v14 - ((v14 + 3) & 0x1FC);
    do
    {
      *(v63 + 160) = 0;
      *(v63 + 1024) = 0;
      v63 += 4;
    }

    while (!__CFADD__(v64++, 1));
  }

  *a3 = v36 & 1;
  return result;
}