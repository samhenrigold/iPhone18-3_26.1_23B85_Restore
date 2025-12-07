uint64_t DolbyGetFormatID(uint64_t a1)
{
  if (*(a1 + 5) - 88 >= 0x30)
  {
    return 1633889587;
  }

  else
  {
    return 1700998451;
  }
}

uint64_t DolbyGetSampleFrequency(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return DolbyAudioSampleFrequencies[v1];
  }
}

uint64_t DolbyGetFrameSize(_BYTE *a1)
{
  if (a1[5] - 136 <= 0xFFFFFFCF)
  {
    v1 = a1[4];
    v2 = v1 & 0x3F;
    if ((v1 & 0x3F) > 0x25)
    {
      return 0;
    }

    v3 = v1 >> 6;
    if (v3 == 3)
    {
      goto LABEL_9;
    }

    v4 = DolbyAudioSampleFrequencies[v3];
    if (v4 == 32000)
    {
      v5 = &DolbyAudioBitRates[4 * v2 + 1];
      goto LABEL_10;
    }

    if (v4 != 44100)
    {
LABEL_9:
      v5 = &DolbyAudioBitRates[4 * v2 + 3];
    }

    else
    {
      v5 = &DolbyAudioBitRates[4 * v2 + 2];
    }

LABEL_10:
    v6 = *v5;
    return (2 * v6);
  }

  v6 = (a1[3] | ((a1[2] & 7) << 8)) + 1;
  return (2 * v6);
}

uint64_t DolbyCreateMagicCookie(uint64_t a1, unsigned __int8 *a2, OpaqueCMBlockBuffer *a3, void *a4, size_t *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2[5];
  if ((v7 + 120) < 0xD0u)
  {
    v8 = a2[6];
    v9 = v8 >> 5;
    if (((v8 >> 5 != 1) & (v8 >> 5)) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 4;
    }

    if ((v8 & 0x80u) == 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 - 2;
    }

    if (v9 == 2)
    {
      v12 = v11 - 2;
    }

    else
    {
      v12 = v11;
    }

    if (v12 < 0)
    {
      v8 = a2[7];
      LOBYTE(v12) = v12 + 8;
    }

    v13 = a2[4];
    v14 = malloc_type_malloc(0xBuLL, 0x10000403B807CB7uLL);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *v15 = *"";
      v15[8] = v13 & 0xC0 | (v7 >> 2);
      v15[9] = (v7 << 6) | (8 * v9) | (4 * ((v8 >> v12) & 1)) | (v13 >> 4) & 3;
      v15[10] = (16 * v13) & 0xE0;
      *a4 = v15;
      *a5 = 11;
      return result;
    }

    DolbyCreateMagicCookie_cold_2(&v58);
    return v58;
  }

  v19 = *(a1 + 18);
  v20 = 3 * v19 + 10;
  if (*(a1 + 18))
  {
    v21 = (a1 + 19);
    do
    {
      if (*v21++)
      {
        ++v20;
      }

      --v19;
    }

    while (v19);
  }

  if (*(a1 + 17))
  {
    v23 = v20 + 2;
  }

  else
  {
    v23 = v20;
  }

  v24 = malloc_type_malloc(v23, 0x62C99DC2uLL);
  if (!v24)
  {
    DolbyCreateMagicCookie_cold_1(&v58);
    return v58;
  }

  v25 = v24;
  v46 = a4;
  v47 = a5;
  v45 = v23;
  *v24 = bswap32(v23);
  v24[1] = 862152036;
  v26 = *(a1 + 18);
  *(v24 + 4) = bswap32((v26 - 1) | (*(a1 + 8) / 0x7Du) & 0xFFF8) >> 16;
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = a1 + 19;
    v30 = 10;
    while (1)
    {
      returnedPointerOut = 0;
      CMBlockBufferAccessDataBytes(a3, v28, 0xAuLL, temporaryBlock, &returnedPointerOut);
      v48 = returnedPointerOut[2];
      v49 = returnedPointerOut[5];
      v31 = returnedPointerOut[4];
      v61 = 0;
      v60 = 0u;
      v59[0] = 0;
      v54 = 0;
      v58 = a3;
      v59[1] = (v28 + 2);
      if (!CMBlockBufferGetDataPointer(a3, v28 + 2, &v60, 0, v59))
      {
        *(&v60 + 1) = 0;
        v61 = 0;
      }

      v50 = v31;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      BitStreamFetch(&v58, 2, &v57 + 1);
      v61 += 14;
      BitStreamFetch(&v58, 2, &v57);
      BitStreamFetch(&v58, 2, &v55 + 1);
      BitStreamFetch(&v58, 3, &v56 + 1);
      BitStreamFetch(&v58, 1, &v56);
      v61 += 10;
      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 8;
      }

      v32 = HIDWORD(v56);
      if (!HIDWORD(v56))
      {
        v61 += 5;
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 8;
        }
      }

      v33 = HIDWORD(v57);
      if (HIDWORD(v57) == 1)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 16;
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (!v55)
      {
        goto LABEL_75;
      }

      if (v32 >= 3)
      {
        v34 = v61;
        v61 += 2;
        if (v32)
        {
          v61 = v34 + 8;
        }
      }

      if ((v32 & 4) != 0)
      {
        v61 += 6;
      }

      if (v56)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 5;
        }
      }

      if (v33)
      {
        goto LABEL_75;
      }

      v53 = 0;
      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 6;
      }

      if (!v32)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 6;
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 6;
      }

      BitStreamFetch(&v58, 2, &v53);
      if (v53 == 3)
      {
        v52 = 0;
        BitStreamFetch(&v58, 5, &v52);
        v35 = 8;
        goto LABEL_59;
      }

      if (v53 == 2)
      {
        break;
      }

      if (v53 == 1)
      {
        v35 = v61 + 5;
LABEL_59:
        v61 = v35;
      }

      if (v32 <= 1)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 14;
        }

        if (!v32)
        {
          BitStreamFetch(&v58, 1, &v55);
          if (v55)
          {
            v61 += 14;
          }
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        if (HIDWORD(v55))
        {
          if (DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v55)] <= 1u)
          {
            v36 = 1;
          }

          else
          {
            v36 = DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v55)];
          }

          do
          {
            BitStreamFetch(&v58, 1, &v55);
            if (v55)
            {
              v61 += 5;
            }

            --v36;
          }

          while (v36);
        }

        else
        {
          v61 += 5;
        }
      }

LABEL_75:
      BitStreamFetch(&v58, 1, &v55);
      v37 = v55;
      if (v55)
      {
        BitStreamFetch(&v58, 3, &v54);
        v37 = 16 * v54;
      }

      v38 = v25 + v30;
      *v38 = (v49 >> 2) & 0x3E | v48 & 0xC0;
      v38[1] = v50 & 0xF | ((v27 != 0) << 7) | v37;
      v38[2] = 2 * *(v29 + v27);
      v28 += DolbyGetFrameSize(returnedPointerOut);
      if (*(v29 + v27))
      {
        v39 = 0;
        v40 = 0;
        do
        {
          LOWORD(v58) = 0;
          CMBlockBufferAccessDataBytes(a3, v28, 0xAuLL, temporaryBlock, &returnedPointerOut);
          ChanMapForDependentStream = ddplusGetChanMapForDependentStream(returnedPointerOut, &v58);
          v42 = v58;
          if (!ChanMapForDependentStream)
          {
            v42 = 0;
          }

          v39 |= v42;
          v28 += DolbyGetFrameSize(returnedPointerOut);
          ++v40;
        }

        while (v40 < *(v29 + v27));
        v38[2] |= (v39 & 2) != 0;
        v38[3] = v39 & 0x20 | BYTE1(v39) & 2 | ((v39 & 0x400) != 0) | (v39 >> 6) & 4 | (v39 >> 4) & 8 | (v39 >> 2) & 0x10 | (((v39 & 0x10) != 0) << 6) | (16 * v39) & 0x80;
        v43 = 4;
      }

      else
      {
        v43 = 3;
      }

      v30 += v43;
      if (++v27 >= *(a1 + 18))
      {
        goto LABEL_87;
      }
    }

    v35 = v61 + 12;
    goto LABEL_59;
  }

  v30 = 10;
LABEL_87:
  if (*(a1 + 17))
  {
    v44 = v25 + v30;
    *v44 = 1;
    v44[1] = *(a1 + 17);
  }

  result = 0;
  *v46 = v25;
  *v47 = v45;
  return result;
}

uint64_t ddplusGetChanMapForDependentStream(uint64_t a1, _WORD *a2)
{
  v8 = 0;
  v6 = 0;
  v9[0] = 0;
  v9[1] = a1;
  v10 = xmmword_196E77360;
  v11 = xmmword_196E77370;
  BitStreamFetch(v9, 3, &v8);
  *(&v11 + 1) += 11;
  BitStreamFetch(v9, 1, &v6);
  if (v6)
  {
    *(&v11 + 1) += 8;
  }

  if (!v8)
  {
    *(&v11 + 1) += 5;
    BitStreamFetch(v9, 1, &v6);
    if (v6)
    {
      *(&v11 + 1) += 8;
    }
  }

  v7 = 0;
  BitStreamFetch(v9, 1, &v7);
  v3 = 0;
  v4 = v7;
  if (v7)
  {
    BitStreamFetch(v9, 16, &v6 + 1);
    v3 = WORD2(v6);
  }

  *a2 = v3;
  return v4;
}

void OUTLINED_FUNCTION_0_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a12 = 0;

  BitStreamFetch(&a24, 1, &a12);
}

void figCSSParseLWSP(UniChar *buffer, int64_t a2, int64_t a3, int64_t *a4)
{
  v5 = a2;
  if (a2 < a3 && (a2 & 0x8000000000000000) == 0)
  {
    v8 = -a2;
    v9 = a2 + 64;
    while (1)
    {
      if (v5 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v5;
      }

      v11 = *(buffer + 20);
      if (v11 <= v5)
      {
        break;
      }

      v12 = *(buffer + 17);
      if (v12)
      {
        v13 = (v12 + 2 * *(buffer + 19));
      }

      else
      {
        v15 = *(buffer + 18);
        if (v15)
        {
          v14 = *(v15 + *(buffer + 19) + v5);
          goto LABEL_13;
        }

        if (*(buffer + 22) <= v5 || (v19 = *(buffer + 21), v19 > v5))
        {
          v20 = -v10;
          v21 = v10 + v8;
          v22 = v9 - v10;
          v23 = v5 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v11)
          {
            v24 = *(buffer + 20);
          }

          *(buffer + 21) = v23;
          *(buffer + 22) = v24;
          if (v11 >= v22)
          {
            v11 = v22;
          }

          v25.location = v23 + *(buffer + 19);
          v25.length = v11 + v21;
          CFStringGetCharacters(*(buffer + 16), v25, buffer);
          v19 = *(buffer + 21);
        }

        v13 = &buffer[-v19];
      }

      v14 = v13[v5];
LABEL_13:
      v16 = v14;
      v17 = (1 << v14) & 0x100002600;
      if (v16 > 0x20 || v17 == 0)
      {
        break;
      }

      ++v5;
      --v8;
      ++v9;
      if (a3 == v5)
      {
        v5 = a3;
        break;
      }
    }
  }

  *a4 = v5;
}

uint64_t figCSSCopyColorComponentWithRangeCheck(float a1, uint64_t a2, float *a3)
{
  if (a1 < 0.0)
  {
    figCSSCopyColorComponentWithRangeCheck_cold_3(&v5);
    return v5;
  }

  else if (a1 > 1.0)
  {
    figCSSCopyColorComponentWithRangeCheck_cold_2(&v4);
    return v4;
  }

  else
  {
    result = 0;
    *a3 = a1;
  }

  return result;
}

void FigCSSParseDigitsAsUInt32(const __CFString *a1, _DWORD *a2)
{
  Length = CFStringGetLength(a1);
  v9 = 0;
  if (a2)
  {
    v5 = Length;
    v12 = a1;
    v15 = 0;
    v16 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtr = 0;
    v13 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    memset(v11, 0, sizeof(v11));
    v14 = CStringPtr;
    v17 = 0;
    v18 = 0;
    figCSSParseOneOrMoreDigits(v11, 0, v5, &v10, &v9);
    if (!v8)
    {
      *a2 = v9;
    }
  }

  else
  {
    FigCSSParseDigitsAsUInt32_cold_1(v11);
  }
}

uint64_t FigCSSParseFontSize(const __CFString *a1, uint64_t *a2)
{
  Length = CFStringGetLength(a1);
  v20 = 0;
  v19 = 0;
  v18 = 0.0;
  if (!a2)
  {
    FigCSSParseFontSize_cold_1(v21);
    LODWORD(result) = v21[0];
LABEL_11:
    if (result == -17821)
    {
      return 4294949474;
    }

    else
    {
      return result;
    }
  }

  v5 = Length;
  v22 = a1;
  v25 = 0;
  v26 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v23 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v21, 0, sizeof(v21));
  v27 = 0;
  v28 = 0;
  v24 = CStringPtr;
  figCSSParseOneOrMoreDigits(v21, 0, v5, &v20, &v19);
  if (result)
  {
    goto LABEL_11;
  }

  figCSSParseFraction(v21, v20, v5, &v20, &v18);
  figCSSParseCharacter(37, v21, v20, v5, &v20);
  if (v9)
  {
    figCSSParseString("em", v21, v20, v5, &v20);
    if (v12)
    {
      figCSSParseString("rem", v21, v20, v5, &v20);
      if (v13)
      {
        figCSSParseString("vw", v21, v20, v5, &v20);
        if (v14)
        {
          figCSSParseString("vh", v21, v20, v5, &v20);
          if (v15)
          {
            figCSSParseString("vmin", v21, v20, v5, &v20);
            if (v16)
            {
              figCSSParseString("vmax", v21, v20, v5, &v20);
              if (v17)
              {
                return 4294949474;
              }
            }
          }
        }
      }
    }
  }

  v10 = FigGeometryDimensionMake();
  result = 0;
  *a2 = v10;
  a2[1] = v11;
  return result;
}

void OUTLINED_FUNCTION_5_56(uint64_t a1@<X8>)
{
  *(v2 + 168) = v1;
  *(v2 + 176) = a1;
  v4 = *(v2 + 128);
  v5.location = *(v2 + 152) + v1;

  v5.length = a1 - v1;
  CFStringGetCharacters(v4, v5, v2);
}

double OUTLINED_FUNCTION_7_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a10;

  return figCSSParseDigits(v11, v13, v10, &a10, &a9);
}

double OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v14 = a11;

  return figCSSParseDigits(v12, v14, v11, &a11, &a10);
}

uint64_t RegisterFigMPEG2ParserBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMPEG2ParserGetTypeID()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_5, RegisterFigMPEG2ParserBaseType);

  return CMBaseClassGetCFTypeID();
}

malloc_zone_t *__FigMPEG2ParserCreate_block_invoke()
{
  result = malloc_create_zone(0, 0);
  gFigMPEG2ParserZone = result;
  if (result)
  {
    malloc_set_zone_name(result, "FigMPEG2ParserZone");
    v1 = *byte_1F0AE6688;
    result = CFAllocatorCreate(0, &v1);
    qword_1EAF195C0 = result;
  }

  return result;
}

void FigMPEG2ParserSetBaseTimestamp(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 3);
  v6 = (~v5 & 0x11) == 0 || (*(a2 + 3) & 9) == 9;
  v7 = ~v5 & 5;
  v9 = v6 || v7 == 0 || DerivedStorage == 0;
  if (v9 || *(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954326, "mpeg2parser", 433, v2);
  }

  else
  {
    v11 = *a2;
    *(DerivedStorage + 128) = *(a2 + 2);
    *(DerivedStorage + 112) = v11;
  }
}

void FigMPEG2ParserSetDecryptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 8))
    {
      *(DerivedStorage + 80) = a2;
      *(DerivedStorage + 88) = a3;
      return;
    }

    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954511;
    v10 = 446;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954326;
    v10 = 442;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "mpeg2parser", v10, v8);
}

uint64_t FigMPEG2ParserInjectData(CFTypeRef cf, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  if (!cf || (CFRetain(cf), !a2))
  {
    v13 = FigMPEG2ParserInjectData_cold_3(cf == 0, &v16);
    v9 = v16;
    if (v13)
    {
      return v9;
    }

    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    FigMPEG2ParserInjectData_cold_1(&v14);
    v9 = v14;
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 168);
  if (!v8)
  {
    if (MPEG2TSSniff(a2, *(DerivedStorage + 96)))
    {
      *(v7 + 448) = 1;
      MPEG2TSInitialize(v7);
      goto LABEL_7;
    }

    v11 = *(v7 + 96);
    if ((v11 & 4) != 0)
    {
      MPEG2PSSniff(a2, (v7 + 48));
      if (!v12)
      {
        MPEG2PSInitialize(v7);
        goto LABEL_7;
      }

      v11 = *(v7 + 96);
    }

    if ((v11 & 8) != 0 && !MPEG2VideoSniff(a2))
    {
      *(v7 + 48) = 4;
      MPEG2VideoInitialize(v7);
    }

LABEL_7:
    v8 = *(v7 + 168);
    if (!v8)
    {
      FigMPEG2ParserInjectData_cold_2(&v15);
      v9 = v15;
      goto LABEL_9;
    }
  }

  v9 = v8(v7, a2, a3);
LABEL_9:
  CFRelease(cf);
  return v9;
}

void FigMPEG2ParserAddTransportStreamTrack(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (!a1 || (a2 - 0x1FFF) <= 0xE001u)
  {
    emitter = fig_log_get_emitter();
    v10 = v4;
    v11 = 4294954326;
    v12 = 494;
    goto LABEL_6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();
    v10 = v4;
    v11 = 4294954511;
    v12 = 498;
LABEL_6:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "mpeg2parser", v12, v10);
    return;
  }

  v13 = *(DerivedStorage + 48);
  if (v13 >= 2 && v13 != 192)
  {
    emitter = fig_log_get_emitter();
    v10 = v4;
    v11 = 4294954326;
    v12 = 503;
    goto LABEL_6;
  }

  MPEG2TSAddTrack(DerivedStorage, a2, a3, a4);
}

void FigMPEG2ParserIssueCommands(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954326;
    v9 = 514;
    goto LABEL_5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954511;
    v9 = 517;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "mpeg2parser", v9, v7);
    return;
  }

  v10 = DerivedStorage;
  v11 = *(DerivedStorage + 24);
  if (!v11)
  {
    if ((a2 & 2) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  do
  {
    if (a2)
    {
      v12 = *(v11 + 864);
      if (v12)
      {
        v12(v11);
      }
    }

    if ((a2 & 2) != 0)
    {
      PesReinitialize(v11);
    }

    v13 = *(v11 + 92);
    if (v13)
    {
      v13(a1, *(v11 + 60), *(v11 + 104), a2);
    }

    v11 = *(v11 + 32);
  }

  while (v11);
  if ((a2 & 2) != 0)
  {
LABEL_20:
    for (i = *(v10 + 16); i; i = *(i + 8))
    {
      *(i + 64) = 0;
      *(i + 88) = 0;
    }

    v15 = *(v10 + 176);
    if (v15)
    {
      v15(v10);
    }
  }
}

double FigMPEG2ParserInstallCallbacksForTrack(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, unsigned int a5)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954326;
    v15 = 560;
    goto LABEL_62;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954511;
    v15 = 563;
LABEL_62:

    *&v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v14, "mpeg2parser", v15, v13);
    return *&v11;
  }

  if ((a5 & 1) != 0 && *(DerivedStorage + 48) == 4)
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954326;
    v15 = 566;
    goto LABEL_62;
  }

  v16 = *(DerivedStorage + 24);
  if (!v16)
  {
LABEL_61:
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954324;
    v15 = 653;
    goto LABEL_62;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  PesPrivateForRawPes = 0;
  *&v11 = *&vshl_u16((*&vdup_n_s16(a5) & 0xFF00FF00FF00FFLL), 0xFFFDFFFEFFFFFFFCLL) & 0xFF01FF01FF01FF01;
  *&v11 = vuzp1_s8(*&v11, *&v11);
  v27 = v11;
  do
  {
    if (*(v16 + 60) != a2)
    {
      goto LABEL_52;
    }

    v21 = (v16 + 84);
    v17 = *v16;
    if (a3)
    {
      *v21 = *a3;
    }

    else
    {
      *v21 = 0;
      *(v16 + 92) = 0;
    }

    *(v16 + 104) = a4;
    *(v16 + 112) = a5;
    *&v11 = v27;
    *(v16 + 116) = v27;
    if (a5)
    {
      PesPrivateForRawPes = CreatePesPrivateForRawPes(v16);
      if (!PesPrivateForRawPes)
      {
        goto LABEL_50;
      }

      goto LABEL_21;
    }

    v22 = 0;
    v23 = *(v16 + 56);
    if (v23 <= 1701143346)
    {
      if (v23 <= 1700880738)
      {
        if (v23 == 1633891104)
        {
          goto LABEL_37;
        }

        if (v23 != 1633973363)
        {
          if (v23 != 1685353248)
          {
            goto LABEL_49;
          }

          PesPrivateForRawPes = CreatePesPrivateForDTS(v16);
          goto LABEL_48;
        }
      }

      else
      {
        if (v23 > 1700886114)
        {
          if (v23 == 1700886115)
          {
LABEL_44:
            PesPrivateForRawPes = CreatePesPrivateForH264(v16);
            goto LABEL_48;
          }

          v25 = 1700998451;
          goto LABEL_36;
        }

        if (v23 != 1700880739)
        {
          v25 = 1700881203;
LABEL_36:
          if (v23 != v25)
          {
            goto LABEL_49;
          }

          goto LABEL_37;
        }
      }

      PesPrivateForRawPes = CreatePesPrivateForADTS(v16);
      goto LABEL_48;
    }

    if (v23 <= 1836476771)
    {
      if (v23 > 1819304812)
      {
        if (v23 == 1819304813)
        {
          PesPrivateForRawPes = CreatePesPrivateForLPCM(v16);
        }

        else
        {
          if (v23 != 1835103588)
          {
            goto LABEL_49;
          }

          PesPrivateForRawPes = CreatePesPrivateForMP3(v16);
        }

        goto LABEL_48;
      }

      if (v23 != 1701143347)
      {
        v24 = 1748121140;
LABEL_43:
        if (v23 != v24)
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }

LABEL_37:
      PesPrivateForRawPes = CreatePesPrivateForDolby(v16);
LABEL_48:
      v22 = 1;
      goto LABEL_49;
    }

    if (v23 <= 1886614577)
    {
      if (v23 == 1836476772)
      {
        PesPrivateForRawPes = CreatePesPrivateForMPEG2Video(v16);
      }

      else
      {
        if (v23 != 1886612592)
        {
          goto LABEL_49;
        }

        PesPrivateForRawPes = CreatePesPrivateForPSLPCM(v16);
      }

      goto LABEL_48;
    }

    if (v23 != 1886614578)
    {
      v24 = 2053207651;
      goto LABEL_43;
    }

    fig_log_get_emitter();
    *&v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, DWORD2(v27), v28);
    v22 = 0;
LABEL_49:
    *(v16 + 80) = v22;
    if (!PesPrivateForRawPes)
    {
LABEL_50:
      ++v19;
      goto LABEL_51;
    }

LABEL_21:
    *v21 = 0;
    *(v16 + 92) = 0;
LABEL_51:
    v18 = 1;
LABEL_52:
    if (*(v16 + 80))
    {
      ++v19;
    }

    v16 = *(v16 + 32);
  }

  while (v16);
  if (!v18)
  {
    goto LABEL_61;
  }

  if (v17)
  {
    *(v17 + 72) = v19;
  }

  return *&v11;
}

uint64_t FigMPEG2ParserGetStreamType(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 8))
    {
      FigMPEG2ParserGetStreamType_cold_1(&v6);
      return v6;
    }

    else
    {
      v4 = DerivedStorage;
      result = 0;
      *a2 = *(v4 + 48);
    }
  }

  else
  {
    FigMPEG2ParserGetStreamType_cold_2(&v7);
    return v7;
  }

  return result;
}

void FigMPEG2ParserSniff(OpaqueCMBlockBuffer *a1, uint64_t a2, int *a3)
{
  if (a1 && a3)
  {
    v5 = a2;
    *a3 = 0;
    if ((a2 & 3) == 0 || !MPEG2TSSniff(a1, a2))
    {
      if ((v5 & 4) == 0 || (MPEG2PSSniff(a1, a3), v8))
      {
        if ((v5 & 8) != 0 && !MPEG2VideoSniff(a1))
        {
          *a3 = 4;
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954326, "mpeg2parser", 826, v3);
  }
}

double FigMPEG2ParserGetFrameRateForVideoTrack(uint64_t a1, int a2, float *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 8))
    {
      emitter = fig_log_get_emitter();
      v9 = v3;
      v10 = 4294954511;
      v11 = 859;
    }

    else
    {
      v12 = *(DerivedStorage + 24);
      if (v12)
      {
        while (*(v12 + 60) != a2)
        {
          v12 = *(v12 + 32);
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        v13 = *(v12 + 808);
        if (v13)
        {
          v14 = *(v12 + 804);
          if (v14)
          {
            *&result = v14 / v13;
            *a3 = *&result;
            return result;
          }
        }

        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954318;
        v11 = 864;
      }

      else
      {
LABEL_8:
        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954324;
        v11 = 873;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954326;
    v11 = 856;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "mpeg2parser", v11, v9);
}

void FigMPEG2ParserGetTimeCodeValueForVideoTrack(uint64_t a1, int a2, _DWORD *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 8))
    {
      emitter = fig_log_get_emitter();
      v8 = v3;
      v9 = 4294954511;
      v10 = 890;
    }

    else
    {
      v11 = *(DerivedStorage + 24);
      if (v11)
      {
        while (*(v11 + 60) != a2)
        {
          v11 = *(v11 + 32);
          if (!v11)
          {
            goto LABEL_8;
          }
        }

        v12 = *(v11 + 604);
        if (v12)
        {
          *a3 = v12;
          return;
        }

        emitter = fig_log_get_emitter();
        v8 = v3;
        v9 = 4294954318;
        v10 = 895;
      }

      else
      {
LABEL_8:
        emitter = fig_log_get_emitter();
        v8 = v3;
        v9 = 4294954324;
        v10 = 903;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954326;
    v10 = 887;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "mpeg2parser", v10, v8);
}

void FigMPEG2ParserFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  while (1)
  {
    v2 = DerivedStorage[2];
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    v4 = v2[2];
    if (v3)
    {
      *(v3 + 16) = v4;
    }

    *v4 = v3;
    free(v2);
  }

  for (i = DerivedStorage[3]; i; i = DerivedStorage[3])
  {
    PesCleanOutData(i);
    free(*(i + 824));
    v6 = *(i + 48);
    if (v6)
    {
      v7 = *(i + 856);
      if (v7)
      {
        v7(i);
      }

      else
      {
        free(v6);
      }
    }

    v8 = *(i + 32);
    v9 = *(i + 40);
    v10 = (v8 + 40);
    if (!v8)
    {
      v10 = DerivedStorage + 4;
    }

    *v10 = v9;
    *v9 = v8;
    PesFrameHeaderDestroy((i + 544));
    free(i);
  }

  v11 = DerivedStorage[57];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[57] = 0;
  }

  v12 = DerivedStorage[52];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[52] = 0;
  }

  v13 = DerivedStorage[5];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[5] = 0;
  }
}

__CFString *FigMPEG2ParserCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigMPEG2Parser");
  return Mutable;
}

double FigMPEG2ParserCopyProperty(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  emitter = fig_log_get_emitter();
  if (v2)
  {
    v4 = 4294954511;
    v5 = 264;
  }

  else
  {
    v4 = 4294954512;
    v5 = 266;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "mpeg2parser", v5, v1);
}

double FigMPEG2ParserSetProperty()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954326, "mpeg2parser", 277, v0);
}

void FigBufferedAirPlayAudioRenderPipelineCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  value = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    v52.value = 0;
    FigRenderPipelineGetClassID();
    if (CMDerivedObjectCreate())
    {
      goto LABEL_25;
    }

    v10 = v52.value;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 48) = FigSimpleMutexCreate();
    *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.notification", 0);
    *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.baoNotificationQueue", 0);
    *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.mixerNotificationQueue", 0);
    *(DerivedStorage + 32) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 40) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.processqueue", 0);
    v12 = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    *(DerivedStorage + 176) = v13;
    *(DerivedStorage + 184) = v12;
    *(DerivedStorage + 200) = v13;
    *(DerivedStorage + 208) = v12;
    *(DerivedStorage + 224) = v13;
    v14 = MEMORY[0x1E6960CC0];
    *(DerivedStorage + 276) = *(MEMORY[0x1E6960CC0] + 16);
    *(DerivedStorage + 260) = *v14;
    *(DerivedStorage + 240) = 0;
    *DerivedStorage = 0;
    *(DerivedStorage + 360) = 0;
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 144) = xmmword_196E77610;
    *(DerivedStorage + 160) = v12;
    *(DerivedStorage + 104) = 0;
    *(DerivedStorage + 384) = 0;
    *(DerivedStorage + 80) = 0;
    v15 = (DerivedStorage + 80);
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 416) = 0;
    *(DerivedStorage + 288) = 0;
    *(DerivedStorage + 296) = DerivedStorage + 288;
    *(DerivedStorage + 304) = 0;
    *(DerivedStorage + 424) = 0;
    if (a3)
    {
      if (CFDictionaryGetValueIfPresent(a3, @"LoggingID", &value))
      {
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, value);
        if (!MutableCopy)
        {
LABEL_25:
          if (value)
          {
            CFRelease(value);
          }

          return;
        }

        v17 = MutableCopy;
        FigBufferedAirPlayAudioRenderPipelineCreate_cold_11(MutableCopy, (DerivedStorage + 424));
      }

      else
      {
        FigBufferedAirPlayAudioRenderPipelineCreate_cold_10();
        v17 = 0;
      }

      value = CFStringCreateWithCString(a1, (DerivedStorage + 424), 0x8000100u);
      if (CFDictionaryGetValueIfPresent(a3, @"AudioSession", (DerivedStorage + 368)))
      {
        v18 = *(DerivedStorage + 368);
        if (v18)
        {
          CFRetain(v18);
        }
      }
    }

    else
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_12(DerivedStorage + 424, a1, &value);
      v17 = 0;
    }

    if (FigBufferedAirPlayOutputProxyCreateFactory(a1, a2, (DerivedStorage + 392)))
    {
      goto LABEL_20;
    }

    v48 = v17;
    v49 = v10;
    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = (DerivedStorage + 80);
    }

    if (FigSampleBufferConsumerCreateForSampleBufferConsumer("consumerToBAO", (DerivedStorage + 104)))
    {
      goto LABEL_20;
    }

    v21 = CMBaseObjectGetDerivedStorage();
    if (*(v21 + 392))
    {
      if (!*(v21 + 128))
      {
        FigSimpleMutexLock();
        v22 = CMBaseObjectGetDerivedStorage();
        *dictionaryRepresentation = 0;
        if (*v22)
        {
          FigBufferedAirPlayAudioRenderPipelineCreate_cold_2(&v52);
        }

        else
        {
          v23 = v22;
          v24 = (v22 + 128);
          if (*(v22 + 128))
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_3(&v52);
          }

          else if (*(v22 + 56))
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_4(&v52);
          }

          else
          {
            v25 = CFDictionaryGetValue(a3, @"FormatDescription");
            if (v25)
            {
              v26 = v25;
              CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
              v28 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, v24);
              if (v28)
              {
LABEL_35:
                v29 = v28;
                v30 = 0;
                goto LABEL_42;
              }

              Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
              *(v23 + 88) = Mutable;
              if (Mutable)
              {
                FigBufferedAirPlayOutputProxyGetCMBaseObject();
                v33 = v32;
                v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v34)
                {
                  v28 = v34(v33, @"PrerollDuration", *MEMORY[0x1E695E480], dictionaryRepresentation);
                  if (v28)
                  {
                    goto LABEL_35;
                  }

                  CMTimeMakeFromDictionary(&v52, *dictionaryRepresentation);
                  *(v23 + 336) = v52;
                  *(v23 + 120) = CFRetain(v26);
                  v35 = CMBaseObjectGetDerivedStorage();
                  *(v35 + 320) = FigGetCFPreferenceNumberWithDefault();
                  v36 = fbaprp_setupBufferedAirPlayMediaProcessor(v49);
                  if (v36)
                  {
                    v29 = v36;
                    v30 = 0;
                  }

                  else
                  {
                    if (FigGetCFPreferenceNumberWithDefault())
                    {
                      UInt32 = FigCFNumberCreateUInt32();
                      FigMediaProcessorSetProperty(*(v23 + 56), @"ActivitySchedulerPriority", UInt32);
                    }

                    else
                    {
                      UInt32 = 0;
                    }

                    FigMediaProcessorGo(*(v23 + 56));
                    v29 = v37;
                    v30 = UInt32;
                  }
                }

                else
                {
                  v30 = 0;
                  v29 = -12782;
                }
              }

              else
              {
                v30 = 0;
                v29 = -12853;
              }

LABEL_42:
              if (*dictionaryRepresentation)
              {
                CFRelease(*dictionaryRepresentation);
              }

              if (v30)
              {
                CFRelease(v30);
              }

              FigSimpleMutexUnlock();
              if (v29)
              {
                goto LABEL_47;
              }

              goto LABEL_57;
            }

            FigBufferedAirPlayAudioRenderPipelineCreate_cold_5(&v52);
          }
        }

        v30 = 0;
        v29 = v52.value;
        goto LABEL_42;
      }

      FigBufferedAirPlayAudioRenderPipelineCreate_cold_1(&v52);
    }

    else
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_6(&v52);
    }

    if (LODWORD(v52.value))
    {
LABEL_47:
      v20 = 0;
LABEL_48:
      v17 = v48;
      goto LABEL_21;
    }

LABEL_57:
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
    }

    v38 = _MergedGlobals_59;
    v39 = FigBufferedAirPlayOutputProxyRegisterRenderPipeline(*(DerivedStorage + 392), v49, *(DerivedStorage + 104), a3, value, DerivedStorage + 400);
    if (v38)
    {
      if (!v39)
      {
        v40 = CFDictionaryGetValue(a3, @"FormatDescription");
        v41 = v49;
        if (!v40)
        {
          FigBufferedAirPlayAudioRenderPipelineCreate_cold_8(&v52);
          v20 = 0;
          goto LABEL_48;
        }

        v17 = v48;
        if (fbaprp_copyOutputFormatDataFromContentFormatDescription(v49, v40, v15) || (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListeners()))
        {
LABEL_20:
          v20 = 0;
LABEL_21:
          if (v17)
          {
            CFRelease(v17);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_25;
        }

        v20 = 0;
        if (fbaprp_setWaterLevelsForRenderPipelineOutput(v49))
        {
          goto LABEL_21;
        }

LABEL_65:
        if (dword_1EAF17188)
        {
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v48;
          v41 = v49;
        }

        *a4 = v41;
        goto LABEL_21;
      }
    }

    else if (!v39)
    {
      v43 = CFDictionaryGetValue(a3, @"FormatDescription");
      if (v43)
      {
        v44 = v43;
        v17 = v48;
        if (fbaprp_copyOutputFormatDataFromContentFormatDescription(v49, v43, v15))
        {
          v20 = 0;
          goto LABEL_21;
        }

        v45 = FigCFDictionaryCreateMutableCopy();
        v20 = v45;
        if (!v45)
        {
          goto LABEL_21;
        }

        CFDictionarySetValue(v45, @"LoggingID", value);
        if (FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate(a1, *(DerivedStorage + 104), a2, v44, a3, v20, (DerivedStorage + 376)))
        {
          goto LABEL_21;
        }

        if (dword_1EAF17188)
        {
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v48;
        }

        v41 = v49;
        if (fbaprp_configureSubPipeManager(v49))
        {
          goto LABEL_21;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        if (FigNotificationCenterAddWeakListeners())
        {
          goto LABEL_21;
        }

        goto LABEL_65;
      }

      FigBufferedAirPlayAudioRenderPipelineCreate_cold_9(&v52);
      v20 = 0;
LABEL_69:
      v17 = v48;
      goto LABEL_21;
    }

    v20 = 0;
    goto LABEL_69;
  }

  v9 = qword_1EAF17180;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954444, "<<<< FigBufferedAirPlayRP >>>>", 5673, v4);
}

uint64_t FigBufferedAirPlayOutputProxyRegisterRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(a1, a2, a3, a4, a5, a6);
}

uint64_t fbaprp_copyOutputFormatDataFromContentFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    RichestDecodableFormatAndChannelLayout = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (RichestDecodableFormatAndChannelLayout)
    {
LABEL_3:
      v7 = RichestDecodableFormatAndChannelLayout;
      goto LABEL_9;
    }

    v8 = *(v5 + 392);
    v9 = *(v5 + 400);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v10)
    {
      v7 = 4294954514;
      goto LABEL_9;
    }

    RichestDecodableFormatAndChannelLayout = v10(v8, v9, cf, &v12);
    if (RichestDecodableFormatAndChannelLayout)
    {
      goto LABEL_3;
    }

    RichestDecodableFormatAndChannelLayout = CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    if (RichestDecodableFormatAndChannelLayout)
    {
      goto LABEL_3;
    }

    fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_2(&v14);
  }

  else
  {
    fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_3(&v14);
  }

  v7 = v14;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v7;
}

uint64_t fbaprp_configureSubPipeManager(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(v3, @"SourceSampleBufferConsumer", *MEMORY[0x1E695E480], cf);
    if (v5)
    {
LABEL_3:
      v6 = v5;
      goto LABEL_9;
    }

    v7 = *(DerivedStorage + 64);
    v8 = cf[0];
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v5 = v9(v7, @"DownstreamConsumer", v8);
      if (!v5)
      {
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v5 = FigNotificationCenterAddWeakListeners();
      }

      goto LABEL_3;
    }
  }

  v6 = 4294954514;
LABEL_9:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t fbaprp_setWaterLevelsForRenderPipelineOutput(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v4, 1000);
  v5 = *MEMORY[0x1E695E480];
  v6 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  if (!v6)
  {
    fbaprp_setWaterLevelsForRenderPipelineOutput_cold_2(&time);
    return LODWORD(time.value);
  }

  v7 = v6;
  CMTimeMake(&time, CFPreferenceNumberWithDefault, 1000);
  v8 = CMTimeCopyAsDictionary(&time, v5);
  if (!v8)
  {
    fbaprp_setWaterLevelsForRenderPipelineOutput_cold_1(v7, &time);
    return LODWORD(time.value);
  }

  v9 = v8;
  v10 = *(DerivedStorage + 104);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11(v10, @"StashHighWaterLevel", v7);
  if (!v12)
  {
    v13 = *(DerivedStorage + 104);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v12 = v14(v13, @"StashLowWaterLevel", v9);
      goto LABEL_10;
    }

LABEL_9:
    v12 = 4294954514;
  }

LABEL_10:
  CFRelease(v7);
  CFRelease(v9);
  return v12;
}

void FigCFRelease_4(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *FigBufferedAirPlayAudioRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCopyProperty(uint64_t a1, __CFString *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_1(v22);
    BufferedAirPlaySampleBufferConsumer = v22[0];
    goto LABEL_9;
  }

  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 256);
    goto LABEL_4;
  }

  if (CFEqual(@"Timebase", a2))
  {
    Float32 = *(DerivedStorage + 248);
    if (!Float32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"IsRunning", a2))
  {
    v14 = MEMORY[0x1E695E4D0];
    if (*(DerivedStorage + 240) == 0.0)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    *a4 = CFRetain(*v14);
    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    BufferedAirPlaySampleBufferConsumer = 0;
    goto LABEL_9;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    Float32 = *(DerivedStorage + 128);
    if (!Float32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"NeedsToFlushWhenRateChanges", a2))
  {
LABEL_22:
    v9 = MEMORY[0x1E695E4D0];
LABEL_6:
    Float32 = *v9;
LABEL_7:
    Float32 = CFRetain(Float32);
LABEL_8:
    BufferedAirPlaySampleBufferConsumer = 0;
    *a4 = Float32;
    goto LABEL_9;
  }

  if (CFEqual(@"PreferredClock", a2))
  {
    FigBufferedAirPlayOutputProxyGetCMBaseObject();
    v17 = @"PreferredClock";
    v18 = a3;
LABEL_26:
    v19 = CMBaseObjectCopyProperty(v16, v17, v18, a4);
LABEL_30:
    BufferedAirPlaySampleBufferConsumer = v19;
    goto LABEL_9;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    v19 = fbaprp_copyEndPresentationTimeForQueuedSamples(a1, a3, a4);
    goto LABEL_30;
  }

  if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
  {
    v19 = fbaprp_copyEndPresentationTimeForDecodedSamples(a1, a3, a4);
    goto LABEL_30;
  }

  if (CFEqual(@"SupportsGaplessTransitionsAcrossFormatChanges", a2) || CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    goto LABEL_22;
  }

  if (CFEqual(@"DecodingRate", a2))
  {
    Float32 = FigCFNumberCreateFloat32();
    goto LABEL_8;
  }

  if (CFEqual(@"Started", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 96);
    goto LABEL_4;
  }

  if (CFEqual(@"UsesSubPipe", a2))
  {
    goto LABEL_22;
  }

  if (!CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    if (!CFEqual(@"AllowsPrebuffering", a2))
    {
      if (CFEqual(@"LoggingIdentifier", a2))
      {
        if (a1)
        {
          v20 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v20 = "";
        }

        Float32 = CFStringCreateWithCString(a3, v20, 0x600u);
        goto LABEL_8;
      }

      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (_MergedGlobals_59)
      {
        v19 = FigBufferedAirPlayOutputProxyCopyPipelineProperty(*(DerivedStorage + 392), *(DerivedStorage + 400), a2, *MEMORY[0x1E695E480], a4);
        goto LABEL_30;
      }

      v21 = *MEMORY[0x1E695E480];
      FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
      v17 = a2;
      v18 = v21;
      goto LABEL_26;
    }

    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 384);
LABEL_4:
    if (!v10)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_6;
  }

  BufferedAirPlaySampleBufferConsumer = fbaprp_createBufferedAirPlaySampleBufferConsumer(a1, a4);
  if (!BufferedAirPlaySampleBufferConsumer)
  {
    fbaprp_cleanFreedSampleBufferConsumers(a1);
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return BufferedAirPlaySampleBufferConsumer;
}

void FigBufferedAirPlayAudioRenderPipelineSetProperty(const void *a1, const void *a2, const void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_1(v55);
    return;
  }

  v8 = DerivedStorage;
  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v8[256] = *MEMORY[0x1E695E4D0] == a3;
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v35 = *(v8 + 49);
        v34 = *(v8 + 50);
        v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v36)
        {
          v36(v35, v34, @"RenderPipelineStateIsTimebaseStarter", a3);
        }

        return;
      }
    }

    v11 = qword_1EAF17180;
    v12 = v3;
    v13 = 4670;
    goto LABEL_8;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (!a3 || (v14 = CMTimebaseGetTypeID(), v14 == CFGetTypeID(a3)))
    {
      v15 = CMBaseObjectGetDerivedStorage();
      v16 = FigSimpleMutexLock();
      if (*v15)
      {
        FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_2(v16, v17, v18, v19, v20, v21, v22, v23, v52, v53, SHIDWORD(v53), v54);
      }

      else
      {
        v24 = *(v15 + 248);
        if (v24)
        {
          fbaprp_transitionRosterRemoveRecordByTimebase(a1, v24);
        }

        fbaprp_setTimebaseGuts(a1, a3);
      }

      FigSimpleMutexUnlock();
      if (dword_1EAF17188)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return;
    }

    v11 = qword_1EAF17180;
    v12 = v3;
    v13 = 4682;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954444, "<<<< FigBufferedAirPlayRP >>>>", v13, v12);
    return;
  }

  if (CFEqual(@"GoActive", a2))
  {
    v26 = CFBooleanGetTypeID();
    if (v26 != CFGetTypeID(a3))
    {
      v11 = qword_1EAF17180;
      v12 = v3;
      v13 = 4689;
      goto LABEL_8;
    }

    v27 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*v27)
    {
      FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_3(v55);
    }

    else if (*MEMORY[0x1E695E4D0] != a3)
    {
      FigMediaProcessorStop(*(v27 + 56));
      if (!v28)
      {
        FigMediaProcessorWaitUntilCompletelyStopped(*(v27 + 56));
      }

      FigSimpleMutexUnlock();
      if (dword_1EAF17188)
      {
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbaprp_postNotification(a1, @"PrerollLost", 0);
      return;
    }

    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(@"MXSession", a2))
  {
    return;
  }

  if (CFEqual(@"Muted", a2))
  {
    v30 = CFBooleanGetTypeID();
    if (v30 != CFGetTypeID(a3))
    {
      return;
    }

    FigBufferedAirPlayOutputProxyGetCMBaseObject();
    v32 = kFigBufferedAirPlayOutputProperty_Muted;
    goto LABEL_33;
  }

  if (CFEqual(@"AudioProcessingTap", a2))
  {
    if (!a3 || (v37 = MTAudioProcessingTapGetTypeID(), v37 == CFGetTypeID(a3)))
    {

      fbaprp_setAudioProcessingTap(a1, a3);
    }

    return;
  }

  if (CFEqual(@"PrerollRate", a2))
  {
    if (!a3 || (v38 = CFNumberGetTypeID(), v38 != CFGetTypeID(a3)))
    {
      v11 = qword_1EAF17180;
      v12 = v3;
      v13 = 4730;
      goto LABEL_8;
    }

    FigCFNumberGetFloat32();
    *(v8 + 38) = v39;
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    }

    if (_MergedGlobals_59)
    {
      v40 = *(v8 + 49);
      v41 = *(v8 + 50);
      v42 = kFigBufferedAirPlayOutputProxyPipelineProperty_DecodeForPrerollRate;
LABEL_70:
      v45 = *v42;

      FigBufferedAirPlayOutputProxySetPipelineProperty(v40, v41, v45, a3);
      return;
    }

    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
    v32 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_DecodeForPrerollRate;
    goto LABEL_33;
  }

  if (CFEqual(@"PipelineRate", a2))
  {
    if (!a3 || (v43 = CFNumberGetTypeID(), v43 != CFGetTypeID(a3)))
    {
      v11 = qword_1EAF17180;
      v12 = v3;
      v13 = 4750;
      goto LABEL_8;
    }

    FigCFNumberGetFloat32();
    *(v8 + 39) = v44;
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    }

    if (_MergedGlobals_59)
    {
      v40 = *(v8 + 49);
      v41 = *(v8 + 50);
      v42 = kFigBufferedAirPlayOutputProxyPipelineProperty_PipelineRate;
      goto LABEL_70;
    }

    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
    v32 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_PipelineRate;
LABEL_33:
    v33 = *v32;

    CMBaseObjectSetProperty(v31, v33, a3);
    return;
  }

  if (CFEqual(@"LoudnessInfo", a2))
  {
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    }

    if (_MergedGlobals_59)
    {
      v40 = *(v8 + 49);
      v41 = *(v8 + 50);
      v42 = kFigBufferedAirPlayOutputProxyPipelineProperty_LoudnessInfo;
      goto LABEL_70;
    }

    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
    v32 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_LoudnessInfo;
    goto LABEL_33;
  }

  if (CFEqual(@"SoftwareVolume1", a2) || CFEqual(@"SoftwareVolume2", a2) || CFEqual(@"SoftwareVolume3", a2) || CFEqual(@"SoftwareVolume5", a2) || CFEqual(@"SoftwareVolume1RampDuration", a2) || CFEqual(@"SoftwareVolume2RampDuration", a2) || CFEqual(@"STSLabel", a2))
  {
    return;
  }

  if (!CFEqual(@"AllowsPrebuffering", a2))
  {
    if (CFEqual(@"OverlapRange", a2))
    {
      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (_MergedGlobals_59)
      {
        if (!a3 || (v48 = CFDictionaryGetTypeID(), v48 == CFGetTypeID(a3)))
        {

          fbaprp_setOverlapRange(a1, a3);
        }
      }

      return;
    }

    if (CFEqual(@"WarehouseRetransmissionAvailable", a2))
    {
      if (!FigGetCFPreferenceNumberWithDefault())
      {
        return;
      }

      if (qword_1ED4CAB58 == -1)
      {
        goto LABEL_107;
      }
    }

    else
    {
      if (CFEqual(@"HardwarePassthrough", a2))
      {
        FigLogBacktrace();
      }

      if (qword_1ED4CAB58 == -1)
      {
        goto LABEL_107;
      }
    }

    FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
LABEL_107:
    if (_MergedGlobals_59)
    {
      v49 = FigBufferedAirPlayOutputProxySetPipelineProperty(*(v8 + 49), *(v8 + 50), a2, a3);
    }

    else
    {
      FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
      v49 = CMBaseObjectSetProperty(v50, a2, a3);
    }

    if (v49)
    {
      v51 = FigCFCopyCompactDescription();
      if (v51)
      {
        CFRelease(v51);
      }
    }

    return;
  }

  v46 = CFBooleanGetTypeID();
  if (v46 != CFGetTypeID(a3))
  {
    v11 = qword_1EAF17180;
    v12 = v3;
    v13 = 4805;
    goto LABEL_8;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    v8[384] = *MEMORY[0x1E695E4D0] == a3;
    if (dword_1EAF17188)
    {
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigBufferedAirPlayOutputProxySetRenderPipelineState(*(v8 + 49), *(v8 + 50), @"RenderPipelineStateAllowsPrebuffering", a3);
  }
}

uint64_t fbaprp_setTimebaseGuts(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 248))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v5 = *(DerivedStorage + 248);
    if (v5)
    {
      v6 = *(DerivedStorage + 408);
      if (v6)
      {
        CMTimebaseRemoveTimerDispatchSource(*(DerivedStorage + 248), v6);
        v7 = *(DerivedStorage + 408);
        if (v7)
        {
          dispatch_source_cancel(*(DerivedStorage + 408));
          dispatch_release(v7);
        }

        *(DerivedStorage + 408) = 0;
        v5 = *(DerivedStorage + 248);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 248) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(DerivedStorage + 248))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  result = fbaprp_setTimerForOverlapRangeOutroStart(a1);
  v9 = *(DerivedStorage + 392);
  if (v9)
  {
    v10 = *(DerivedStorage + 400);
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 16);
    result = VTable + 16;
    v13 = *(v12 + 8);
    if (v13)
    {

      return v13(v9, v10, @"RenderPipelineStateTimebase", a2);
    }
  }

  return result;
}

void fbaprp_transitionRosterRemoveAll(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 288);
  if (v2)
  {
    v3 = DerivedStorage;
    v4 = (DerivedStorage + 288);
    do
    {
      v5 = v2;
      v2 = *v2;
      v6 = *v4;
      if (*v4 == v5)
      {
        v9 = *v6;
        *v4 = v9;
        v7 = v4;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6 != v5);
        v8 = *v6;
        *v7 = v8;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      *(v3 + 296) = v7;
LABEL_7:
      fbaprp_transitionRosterFreeRecord(v5);
    }

    while (v2);
  }
}

void fbaprp_transitionIDFound(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 312) = 1;
  if (a5)
  {
    CFRetain(a5);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbaprp_transitionIDFound_block_invoke;
  block[3] = &__block_descriptor_tmp_50;
  block[4] = DerivedStorage;
  block[5] = a5;
  block[6] = a2;
  dispatch_async(v8, block);
}

uint64_t fbaprp_resetOutput(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fbaprp_suspendAudioChainGuts(a2);

  return FigSimpleMutexUnlock();
}

void fbaprp_transitionToNextTimebaseNow(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v37 = **&MEMORY[0x1E6960C70];
  v36 = v37;
  v35 = v37;
  Rate = CMTimebaseGetRate(*(a1 + 16));
  memset(&v34, 0, sizeof(v34));
  if (v2)
  {
    v4 = Rate;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSimpleMutexUnlock();

      CFRelease(v2);
    }

    else
    {
      Record = fbaprp_transitionRosterGetRecord(v2, *(a1 + 8));
      if (Record)
      {
        v7 = Record;
        v8 = *(a1 + 8);
        if (v8)
        {
          v31 = CFRetain(v8);
        }

        else
        {
          v31 = 0;
        }

        v38 = *(v7 + 56);
        v9 = *(a1 + 16);
        HostTimeClock = CMClockGetHostTimeClock();
        time = *(a1 + 56);
        CMSyncConvertTime(&v37, &time, v9, HostTimeClock);
        v11 = *(a1 + 104);
        *(DerivedStorage + 276) = *(a1 + 120);
        v12 = MEMORY[0x1E695E480];
        *(DerivedStorage + 260) = v11;
        v13 = *v12;
        time = *(a1 + 104);
        v32 = CMTimeCopyAsDictionary(&time, v13);
        v14 = *(DerivedStorage + 392);
        v15 = *(DerivedStorage + 400);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v14, v15, @"RenderPipelineStateTimebaseStartOutputTime", v32);
        }

        v17 = CMTimebaseCopySource(*(a1 + 24));
        v18 = CMClockGetHostTimeClock();
        time = v37;
        CMSyncConvertTime(&v34, &time, v18, v17);
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v20 = *(a1 + 24);
        time = v38;
        immediateSourceTime = v34;
        if (CMTimebaseSetRateAndAnchorTime(v20, v4, &time, &immediateSourceTime))
        {
          v21 = 0;
          v22 = 0;
        }

        else
        {
          v21 = *(v7 + 80);
          if (*(v7 + 88))
          {
            v22 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (!v22)
            {
              if (dword_1EAF17188)
              {
                v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v22 = 0;
              v21 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v24 = *(DerivedStorage + 248);
          if (v24)
          {
            CMTimebaseGetTime(&v36, v24);
            time = v36;
            immediateSourceTime = *(DerivedStorage + 260);
            CMTimeAdd(&v35, &time, &immediateSourceTime);
            v33 = v35;
            v25 = CMBaseObjectGetDerivedStorage();
            v26 = (v25 + 288);
            v27 = v25 + 288;
            while (1)
            {
              v27 = *v27;
              if (!v27)
              {
                break;
              }

              time = *(v27 + 104);
              immediateSourceTime = v33;
              if (CMTimeCompare(&time, &immediateSourceTime) <= 0)
              {
                for (i = *v26; i != v27; i = *i)
                {
                  v26 = i;
                }

                v29 = *i;
                *v26 = v29;
                if (!v29)
                {
                  *(v25 + 296) = v26;
                }

                fbaprp_transitionRosterFreeRecord(v27);
                if (v27 == v7)
                {
                  fbaprp_setTimebaseGuts(v2, *(a1 + 24));
                  goto LABEL_33;
                }

                break;
              }
            }
          }

          fbaprp_setTimebaseGuts(v2, *(a1 + 24));
        }

        if (v7 == fbaprp_transitionRosterGetRecord(v2, *(a1 + 8)))
        {
          *(v7 + 128) = 1;
          fbaprp_transitionRosterCancelAndReleaseTimerSource(v7);
        }

LABEL_33:
        FigSimpleMutexUnlock();
        if (v21)
        {
          v30 = v4;
          time = v38;
          immediateSourceTime = v37;
          v21(v22, v31, &time, &immediateSourceTime, v30);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (v22)
        {
          CFRelease(v22);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }
  }
}

double fbaprp_transitionRosterRemoveRecordByTimebase(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return fbaprp_transitionRosterRemoveRecordByTimebase_cold_1(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v17, v18, SHIDWORD(v18), v19);
  }

  v12 = DerivedStorage;
  v13 = (DerivedStorage + 288);
  v14 = (DerivedStorage + 288);
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    if (FigCFEqual())
    {
      for (i = *v13; i != v14; i = *i)
      {
        v13 = i;
      }

      v16 = *i;
      *v13 = v16;
      if (!v16)
      {
        *(v12 + 296) = v13;
      }

      fbaprp_transitionRosterFreeRecord(v14);
      return result;
    }
  }

  return result;
}

uint64_t FigBufferedAirPlayOutputProxySetRenderPipelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

void fbaprp_transitionRosterCancelAndReleaseTimerSource(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 96));
    *(a1 + 96) = 0;
  }
}

void fbaprp_transitionRosterFreeRecord(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *(a1 + 24) = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a1 + 40) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  *(a1 + 128) = 0;
  fbaprp_transitionRosterCancelAndReleaseTimerSource(a1);

  free(a1);
}

void fbaprp_startAudioChainGuts(uint64_t a1, int a2, __int128 *a3, __int128 *a4, float a5)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fbaprp_startAudioChainGuts_cold_1(&time);
    return;
  }

  v10 = DerivedStorage;
  FigMediaProcessorGo(*(DerivedStorage + 56));
  if (!v11)
  {
    if ((*(a3 + 3) & 0x1D) == 1)
    {
      v12 = *a3;
      *(v10 + 176) = *(a3 + 2);
      *(v10 + 160) = v12;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (*(v10 + 96))
    {
      if (!dword_1EAF17188)
      {
        return;
      }

      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      if (a2 == 1)
      {
        *(v10 + 144) = a5;
        v14 = *a4;
        *(v10 + 224) = *(a4 + 2);
        *(v10 + 208) = v14;
      }

      else
      {
        a5 = *(v10 + 144);
      }

      if (a5 != 0.0 && (*(v10 + 172) & 0x1D) == 1)
      {
        v15 = *(v10 + 136);
        v16 = *(v10 + 248);
        *(v10 + 136) = v16;
        if (v16)
        {
          CFRetain(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (dword_1EAF17188)
        {
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v19 = CMBaseObjectGetDerivedStorage();
        if (!*v19)
        {
          v20 = v19;
          UInt32 = FigCFNumberCreateUInt32();
          v22 = *(v20 + 7);
          if (v22)
          {
            FigMediaProcessorSetProperty(v22, @"ActivitySchedulerPriority", UInt32);
          }

          if (qword_1ED4CAB58 != -1)
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
          }

          if (!_MergedGlobals_59)
          {
            FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
            v28 = v27;
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v29)
            {
              v29(v28, @"ThreadPriority", UInt32);
            }
          }

          v23 = @"BufferedAirPlayUrgent";
          if (@"BufferedAirPlayUrgent")
          {
            v23 = CFRetain(@"BufferedAirPlayUrgent");
          }

          *(v20 + 41) = v23;
          if (UInt32)
          {
            CFRelease(UInt32);
          }
        }

        *(v10 + 148) = *(v10 + 144);
        *(v10 + 96) = 1;
        *(v10 + 232) = 0;
        v25 = *(v10 + 392);
        v24 = *(v10 + 400);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v26)
        {
          v26(v25, v24);
        }

        return;
      }

      if (!dword_1EAF17188)
      {
        return;
      }

      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void fbaprp_bufferedAirPlayOutputStartedCallback(const void **a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = **&MEMORY[0x1E6960C70];
  if (!a1)
  {
    fbaprp_bufferedAirPlayOutputStartedCallback_cold_1(0, a2, a3, a4, a5, a7, a8, a9, v34, v35, SHIDWORD(v35), v36);
    v13 = 0;
LABEL_47:
    fbaprp_releaseSetRateContext(a1);
    goto LABEL_45;
  }

  v12 = a2;
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v13)
  {
    goto LABEL_47;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    goto LABEL_47;
  }

  v15 = v14;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_50;
  }

  timebase = v15;
  if (*(DerivedStorage + 144) == 0.0)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v40.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_55;
    }

LABEL_50:
    Mutable = 0;
LABEL_51:
    v25 = 0;
    goto LABEL_41;
  }

  if (*(DerivedStorage + 256))
  {
    v17 = 1;
  }

  else
  {
    v17 = dword_1EAF17188 == 0;
  }

  if (!v17)
  {
    LODWORD(v40.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a6 != 0.0)
  {
    v19 = fig_log_handle();
    if (v13 + 1 >= 2)
    {
      v22 = v19;
      if (os_signpost_enabled(v19))
      {
        LODWORD(time.value) = 134218496;
        *(&time.value + 4) = v13;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a6;
        HIWORD(time.epoch) = 2048;
        v45 = v12;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v22, OS_SIGNPOST_INTERVAL_END, v13, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f, error=%llu", &time, 0x20u);
      }
    }
  }

  if (!v12 || v12 == -17323)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v40.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a3 + 12))
    {
      v15 = timebase;
      if (*(DerivedStorage + 272))
      {
        time = *(DerivedStorage + 260);
        time2 = *a3;
        if (CMTimeCompare(&time, &time2) <= 0)
        {
          time = *a3;
          time2 = *(DerivedStorage + 260);
          CMTimeSubtract(&v42, &time, &time2);
          if (dword_1EAF17188)
          {
            LODWORD(v40.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v15 = timebase;
          }

          *a3 = v42;
        }
      }
    }

    else
    {
      v15 = timebase;
      CMTimebaseGetTime(&time, timebase);
      *a3 = time;
      if (dword_1EAF17188)
      {
        LODWORD(v40.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v15 = timebase;
      }
    }

    v27 = *(a1 + 2);
    time = *a3;
    time2 = *a3;
    v40 = *a4;
    fbaprp_startTimebase(v13, v15, &time, &time2, &v40, v27);
    Mutable = 0;
    v25 = 0;
    if (v12 || !a5)
    {
      goto LABEL_35;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v25 = 0;
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  LODWORD(v40.value) = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v12 == -17326)
  {
    if (!dword_1EAF17188)
    {
LABEL_56:
      Mutable = 0;
      v25 = 0;
      v15 = timebase;
      goto LABEL_41;
    }

    LODWORD(v40.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
LABEL_55:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_56;
  }

  v25 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = timebase;
  if (v25)
  {
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    Mutable = 0;
LABEL_35:
    v28 = *(DerivedStorage + 136);
    if (v28 == v15)
    {
      CFRelease(v28);
      *(DerivedStorage + 136) = 0;
    }

    if (*(DerivedStorage + 234))
    {
      *(DerivedStorage + 234) = 0;
      v29 = *(DerivedStorage + 392);
      v30 = *(DerivedStorage + 400);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v31)
      {
        v31(v29, v30, @"RenderPipelineStateEndOfTrackReached", *MEMORY[0x1E695E4D0]);
      }

      fbaprp_postNotification(v13, @"PlayResourceReleased", 0);
    }

    goto LABEL_41;
  }

  Mutable = 0;
LABEL_41:
  CFRelease(v15);
  FigSimpleMutexUnlock();
  fbaprp_releaseSetRateContext(a1);
  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_45:
  fbaprp_releaseAsync(v13);
}

void fbaprp_releaseSetRateContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CMTime *fbaprp_startTimebase(const void *a1, OpaqueCMTimebase *a2, CMTime *a3, CMTime *a4, CMTime *a5, float a6)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = MEMORY[0x1E695FF58];
  v14 = a6;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a5;
    CMTimeGetSeconds(&time);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&immediateSourceTime, HostTimeClock);
    time = immediateSourceTime;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  immediateSourceTime = *a5;
  CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a5 = time;
  immediateSourceTime = *a3;
  CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a3 = time;
  immediateSourceTime = *a4;
  result = CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a4 = time;
  a5->value += ((a4->value - a3->value) / v14 + 0.5);
  if (a2)
  {
    v17 = CMTimebaseCopySource(a2);
    memset(&v22, 0, sizeof(v22));
    v18 = CMClockGetHostTimeClock();
    time = *a5;
    CMSyncConvertTime(&v22, &time, v18, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    immediateSourceTime = v22;
    CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v22 = time;
    if (*(DerivedStorage + 392))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v19 = *(DerivedStorage + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fbaprp_startTimebase_block_invoke;
      block[3] = &__block_descriptor_tmp_64_0;
      block[4] = DerivedStorage;
      block[5] = a1;
      dispatch_async(v19, block);
    }

    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = MEMORY[0x1E695FF58];
    }

    time = *a3;
    immediateSourceTime = v22;
    result = CMTimebaseSetRateAndAnchorTime(a2, v14, &time, &immediateSourceTime);
  }

  if (*v13 == 1)
  {
    time = *a3;
    CMTimeGetSeconds(&time);
    time = *a4;
    CMTimeGetSeconds(&time);
    time = *a5;
    CMTimeGetSeconds(&time);
    return kdebug_trace();
  }

  return result;
}

void fbaprp_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbaprp_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_65_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void fbaprp_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbaprp_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_66_1;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void __fbaprp_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];

  fbaprp_releaseAsync(v3);
}

double fbaprp_suspendAudioChainGuts(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return fbaprp_suspendAudioChainGuts_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v23, v24, SHIDWORD(v24), v25);
  }

  v10 = DerivedStorage;
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    v20 = *(v10 + 47);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v21)
    {
      v21(v20, 1);
    }
  }

  v12 = *(v10 + 49);
  v13 = *(v10 + 50);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v14 && !v14(v12, v13, a1, 1))
  {
    *(v10 + 18) = 0x3F80000000000000;
    *(v10 + 30) = 0;
    v16 = MEMORY[0x1E6960C70];
    v17 = *MEMORY[0x1E6960C70];
    *(v10 + 184) = *MEMORY[0x1E6960C70];
    v18 = *(v16 + 16);
    *(v10 + 25) = v18;
    *(v10 + 10) = v17;
    *(v10 + 22) = v18;
    *(v10 + 13) = v17;
    *(v10 + 28) = v18;
    v19 = MEMORY[0x1E6960CC0];
    v15 = *MEMORY[0x1E6960CC0];
    *(v10 + 260) = *MEMORY[0x1E6960CC0];
    *(v10 + 276) = *(v19 + 16);
    v10[96] = 0;
    *(v10 + 233) = 0;
    v10[232] = 0;
  }

  return *&v15;
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

void fbaprp_notificationsFromSubPipeManager(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    if (*DerivedStorage || (v9 = *(DerivedStorage + 392), v10 = *(DerivedStorage + 400), (v11 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v11(v9, v10, @"RenderPipelineStateEndOfTrackReached", *MEMORY[0x1E695E4D0]))
    {

      FigSimpleMutexUnlock();
      return;
    }

    FigSimpleMutexUnlock();
  }

  fbaprp_postNotification(a2, a3, a5);
}

void fabaprp_getOffsetToBAOTimeline(CMTime *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v10 = **&MEMORY[0x1E6960C70];
  v9 = v10;
  *a2 = **&MEMORY[0x1E6960CC0];
  FigBufferedAirPlayOutputProxyGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    if (!v6(v5, @"ZeroBasedTimebase", *MEMORY[0x1E695E480], &cf))
    {
      CMTimebaseGetTime(&v10, *(DerivedStorage + 248));
      v7 = *(DerivedStorage + 248);
      time = v10;
      CMSyncConvertTime(&v9, &time, v7, cf);
      time = v10;
      rhs = v9;
      CMTimeSubtract(a2, &time, &rhs);
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fbaprp_copyEndPresentationTimeForDecodedSamples(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (a3)
  {
    FigSampleBufferProcessorGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      result = v7(v6, 0x1F0B56078, a2, &v9);
      if (!result)
      {
        *a3 = v9;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fbaprp_copyEndPresentationTimeForDecodedSamples_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t fbaprp_createBufferedAirPlaySampleBufferConsumer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  memset(&v19, 0, sizeof(v19));
  CMTimeMake(&v19, 2, 1);
  memset(&v18, 0, sizeof(v18));
  CMTimeMake(&v18, 10, 1);
  if (!a2)
  {
    fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_3(&time);
LABEL_19:
    v7 = 0;
    value_low = LODWORD(time.value);
    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 128);
  time = v18;
  v16 = v19;
  FigSampleBufferConsumerCreateForBufferQueue(v4, &time.value, &v16.value, &v20);
  if (v5)
  {
    value_low = v5;
    v7 = 0;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E695E480];
  time = *(DerivedStorage + 336);
  v9 = CMTimeCopyAsDictionary(&time, v8);
  if (!v9)
  {
    fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_2(&time);
    goto LABEL_19;
  }

  v10 = v9;
  FigSampleBufferConsumerGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = v13(v12, @"PrerollDuration", v10);
    if (v14)
    {
      value_low = v14;
      v7 = 0;
    }

    else
    {
      v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v7)
      {
        CFArrayAppendValue(*(DerivedStorage + 88), v7);
        value_low = 0;
        *a2 = v20;
        v20 = 0;
      }

      else
      {
        fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_1(&time);
        value_low = LODWORD(time.value);
      }
    }
  }

  else
  {
    v7 = 0;
    value_low = 4294954514;
  }

  CFRelease(v10);
LABEL_10:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return value_low;
}

CFIndex fbaprp_cleanFreedSampleBufferConsumers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 88));
  if (result >= 1)
  {
    v3 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 88), v3);
      v4 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v4)
      {
        CFRelease(v4);
        ++v3;
      }

      else
      {
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 88), v3);
      }

      result = CFArrayGetCount(*(DerivedStorage + 88));
    }

    while (v3 < result);
  }

  return result;
}

uint64_t FigBufferedAirPlayOutputProxyCopyPipelineProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigBufferedAirPlayOutputProxySetPipelineProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t fbaprp_setOverlapRange(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v26 = 0;
  v24 = **&MEMORY[0x1E6960C70];
  v23 = v24;
  v21 = v24;
  dictionaryRepresentation = 0;
  FigSimpleMutexLock();
  v5 = DerivedStorage[52];
  DerivedStorage[52] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (!a2)
  {
    fbaprp_stopTimerForOverlapRangeOutroStart(a1);
    goto LABEL_31;
  }

  if (FigCFDictionaryGetBooleanValue() != *MEMORY[0x1E695E4D0])
  {
    a2 = 0;
    goto LABEL_30;
  }

  v6 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    FigSimpleMutexUnlock();
    v11 = 4294954510;
    goto LABEL_21;
  }

  a2 = MutableCopy;
  FigSampleBufferProcessorGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_19;
  }

  v11 = v10(v9, 0x1F0B311B8, v6, &dictionaryRepresentation);
  if (v11)
  {
LABEL_19:
    FigSimpleMutexUnlock();
LABEL_20:
    CFRelease(a2);
    goto LABEL_21;
  }

  CMTimeMakeFromDictionary(&v21, dictionaryRepresentation);
  FigCFDictionarySetCMTime();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v13 = FigCFDictionaryGetDictionaryValue();
  if (!fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 0, DictionaryValue, &v26) && v26)
  {
    CMTimeMakeFromDictionary(&v24, v26);
    FigCFDictionarySetCMTime();
  }

  if (!fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 0, v13, &v25) && v25)
  {
    CMTimeMakeFromDictionary(&v23, v25);
    FigCFDictionarySetCMTime();
  }

  v14 = DerivedStorage[52];
  DerivedStorage[52] = a2;
  CFRetain(a2);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_30:
  v11 = fbaprp_setTimerForOverlapRangeOutroStart(a1);
  if (v11)
  {
    goto LABEL_37;
  }

LABEL_31:
  v16 = DerivedStorage[49];
  v17 = DerivedStorage[50];
  v18 = DerivedStorage[52];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v19)
  {
    v11 = v19(v16, v17, @"OverlapRange", v18);
    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  v20 = FigCFCopyCompactDescription();
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_37:
  FigSimpleMutexUnlock();
  if (a2)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v11;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetRateAndAnchorTime(const void *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v101 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSetRateAndAnchorTime_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_73;
  }

  v87 = *a2;
  v10 = *(a2 + 12);
  v88 = *(a2 + 8);
  v82 = *(a2 + 16);
  *&v83.value = *a3;
  v83.epoch = *(a3 + 16);
  v11 = MEMORY[0x1E6960C70];
  v97 = *MEMORY[0x1E6960C70];
  v80 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v81 = *(MEMORY[0x1E6960C70] + 16);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = &dword_1EAF17000;
  if (dword_1EAF17188)
  {
    *v86 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = &dword_1EAF17000;
  }

  v15 = a4;
  if (a4 != 0.0)
  {
    v25 = fig_log_handle();
    if (a1 + 1 >= 2)
    {
      v38 = v25;
      if (os_signpost_enabled(v25))
      {
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = a1;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a4;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v38, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f", &time, 0x16u);
      }
    }

    if (*(v12 + 240) != v15)
    {
      v79 = mach_absolute_time();
      if (!*(v12 + 96))
      {
        goto LABEL_57;
      }

      if (*(v12 + 148) == a4)
      {
        goto LABEL_76;
      }

      if (dword_1EAF17188)
      {
        v26 = v10;
        LODWORD(lhs.value) = 0;
        v86[0] = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = lhs.value;
        v29 = v86[0];
        if (os_log_type_enabled(v27, v86[0]))
        {
          v30 = value;
        }

        else
        {
          v30 = value & 0xFFFFFFFE;
        }

        if (v30)
        {
          if (a1)
          {
            v31 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v31 = "";
          }

          v49 = *(v12 + 148);
          LODWORD(rhs.value) = 136315906;
          *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v90 = v31;
          v91 = 2048;
          v92 = v49;
          _os_log_send_and_compose_impl(v30, 0, &time, 128, &dword_1962D5000, v27, v29, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Restarting with new decodingRate (old: %1.3f)", &rhs, 42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = v26;
        v13 = &dword_1EAF17000;
      }

      fbaprp_suspendAudioChainGuts(a1);
      fbaprp_postNotification(a1, @"PrerollLost", 0);
      if (*(v12 + 96))
      {
LABEL_76:
        if (dword_1EAF17188)
        {
          v62 = v10;
          LODWORD(lhs.value) = 0;
          v86[0] = OS_LOG_TYPE_DEFAULT;
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v64 = lhs.value;
          v65 = v86[0];
          if (os_log_type_enabled(v63, v86[0]))
          {
            v66 = v64;
          }

          else
          {
            v66 = v64 & 0xFFFFFFFE;
          }

          if (v66)
          {
            if (a1)
            {
              v67 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v67 = "";
            }

            LODWORD(rhs.value) = 136315650;
            *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v90 = v67;
            LODWORD(v78) = 32;
            _os_log_send_and_compose_impl(v66, 0, &time, 128, &dword_1962D5000, v63, v65, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s was already started.", &rhs, v78);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v10 = v62;
          flags = v80;
          epoch = v81;
          v13 = &dword_1EAF17000;
        }

        else
        {
          flags = v80;
          epoch = v81;
        }
      }

      else
      {
LABEL_57:
        if (v10)
        {
          v97 = v87;
          timescale = v88;
          epoch = v82;
          flags = v10;
        }

        else
        {
          CMTimebaseGetTime(&time, *(v12 + 248));
          v97 = time.value;
          timescale = time.timescale;
          epoch = time.epoch;
          flags = time.flags;
          rhs = *(v12 + 160);
          CMTimeCompare(&time, &rhs);
        }

        if (dword_1EAF17188)
        {
          v50 = v10;
          LODWORD(lhs.value) = 0;
          v86[0] = OS_LOG_TYPE_DEFAULT;
          v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v52 = lhs.value;
          v53 = v86[0];
          if (os_log_type_enabled(v51, v86[0]))
          {
            v54 = v52;
          }

          else
          {
            v54 = v52 & 0xFFFFFFFE;
          }

          if (v54)
          {
            if (a1)
            {
              v55 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v55 = "";
            }

            time = v83;
            Seconds = CMTimeGetSeconds(&time);
            time.value = v97;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = epoch;
            v57 = CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v90 = v55;
            v91 = 2048;
            v92 = a4;
            v93 = 2048;
            v94 = Seconds;
            v95 = 2048;
            v96 = v57;
            LODWORD(v78) = 62;
            _os_log_send_and_compose_impl(v54, 0, &time, 128, &dword_1962D5000, v51, v53, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Trying to start audiochain with %1.2f hostTime %1.3f, itemTime=%0.3f ", &rhs, v78);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v10 = v50;
          v13 = &dword_1EAF17000;
        }

        time.value = v97;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        rhs = v83;
        fbaprp_startAudioChainGuts(a1, 1, &time.value, &rhs.value, a4);
        value_low = v58;
        if (v58)
        {
LABEL_72:
          v59 = fig_log_handle();
          if (a1 + 1 >= 2)
          {
            v61 = v59;
            if (os_signpost_enabled(v59))
            {
              LODWORD(time.value) = 134218496;
              *(&time.value + 4) = a1;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = a4;
              HIWORD(time.epoch) = 2048;
              v100 = value_low;
              _os_signpost_emit_with_name_impl(&dword_1962D5000, v61, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f, error=%llu", &time, 0x20u);
            }
          }

          goto LABEL_73;
        }
      }

      if ((flags & 1) != 0 && (*(v12 + 196) & 1) == 0 && (*(v12 + 184) = v97, *(v12 + 192) = timescale, *(v12 + 196) = flags, *(v12 + 200) = epoch, v13[98]))
      {
        v70 = epoch;
        v71 = v10;
        LODWORD(lhs.value) = 0;
        v86[0] = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v73 = lhs.value;
        v74 = v86[0];
        if (os_log_type_enabled(v72, v86[0]))
        {
          v75 = v73;
        }

        else
        {
          v75 = v73 & 0xFFFFFFFE;
        }

        if (v75)
        {
          if (a1)
          {
            v76 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v76 = "";
          }

          time = *(v12 + 184);
          v77 = CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136315906;
          *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v90 = v76;
          v91 = 2048;
          v92 = v77;
          LODWORD(v78) = 42;
          _os_log_send_and_compose_impl(v75, 0, &time, 128, &dword_1962D5000, v72, v74, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Set baoTimelineOffset to %1.3f\n", &rhs, v78);
        }

        v10 = v71;
        v47 = v79;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        epoch = v70;
        if (flags)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v47 = v79;
        if (flags)
        {
          goto LABEL_94;
        }
      }

LABEL_91:
      if (v10)
      {
        v97 = v87;
        timescale = v88;
        epoch = v82;
        flags = v10;
      }

      else
      {
        CMTimebaseGetTime(&time, *(v12 + 248));
        v97 = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }

      goto LABEL_94;
    }

LABEL_114:
    value_low = 0;
    goto LABEL_73;
  }

  if (*(v12 + 240) == v15)
  {
    CMTimebaseGetTime(&time, *(v12 + 248));
    rhs.value = v87;
    rhs.timescale = v88;
    rhs.flags = v10;
    rhs.epoch = v82;
    if (!CMTimeCompare(&rhs, &time))
    {
      goto LABEL_114;
    }
  }

  v16 = CMBaseObjectGetDerivedStorage();
  v17 = v16;
  if ((v10 & 0x1D) == 1)
  {
    v18 = CMTimebaseCopySource(*(v16 + 248));
    if (dword_1EAF17188)
    {
      v19 = v10;
      LODWORD(lhs.value) = 0;
      v86[0] = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = lhs.value;
      v22 = v86[0];
      if (os_log_type_enabled(v20, v86[0]))
      {
        v23 = v21;
      }

      else
      {
        v23 = v21 & 0xFFFFFFFE;
      }

      if (v23)
      {
        if (a1)
        {
          v24 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v24 = "";
        }

        time.value = v87;
        time.timescale = v88;
        time.flags = v19;
        time.epoch = v82;
        v39 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "fbaprp_stopTimebase";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v90 = v24;
        v91 = 2048;
        v92 = v39;
        _os_log_send_and_compose_impl(v23, 0, &time, 128, &dword_1962D5000, v20, v22, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s stopping at %1.3f", &rhs, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = v19;
    }

    v40 = *(v17 + 248);
    CMSyncGetTime(&time, v18);
    rhs.value = v87;
    rhs.timescale = v88;
    rhs.flags = v10;
    rhs.epoch = v82;
    CMTimebaseSetRateAndAnchorTime(v40, 0.0, &rhs, &time);
    epoch = v81;
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    if (dword_1EAF17188)
    {
      v32 = v10;
      LODWORD(lhs.value) = 0;
      v86[0] = OS_LOG_TYPE_DEFAULT;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = lhs.value;
      v35 = v86[0];
      if (os_log_type_enabled(v33, v86[0]))
      {
        v36 = v34;
      }

      else
      {
        v36 = v34 & 0xFFFFFFFE;
      }

      if (v36)
      {
        if (a1)
        {
          v37 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v37 = "";
        }

        CMTimebaseGetTime(&time, *(v17 + 248));
        v42 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "fbaprp_stopTimebase";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v90 = v37;
        v91 = 2048;
        v92 = v42;
        _os_log_send_and_compose_impl(v36, 0, &time, 128, &dword_1962D5000, v33, v35, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s stopping timebase (no stop time but clamp above anchor time). Current timebase time %1.3f", &rhs, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = v32;
    }

    *&time.value = *v11;
    epoch = v81;
    time.epoch = v81;
    *&rhs.value = *&time.value;
    rhs.epoch = v81;
    CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  if (*(v12 + 232))
  {
    *(v12 + 232) = 0;
    v43 = *(v12 + 392);
    v44 = *(v12 + 400);
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v45)
    {
      value_low = 4294954514;
      goto LABEL_73;
    }

    value_low = v45(v43, v44, @"RenderPipelineStateSynchronizeToTimebase", *MEMORY[0x1E695E4C0]);
    if (value_low)
    {
      goto LABEL_73;
    }
  }

  v47 = 0;
  flags = v80;
  if ((v80 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_94:
  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    v68 = *(v12 + 376);
    v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v69)
    {
      time.value = v97;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      rhs = v83;
      v69(v68, &time, &rhs, a4);
    }
  }

  time = *(v12 + 184);
  rhs.value = v87;
  rhs.timescale = v88;
  rhs.flags = v10;
  rhs.epoch = v82;
  lhs = v83;
  value_low = fbaprp_setRateOnAudioChainGuts(a1, a4, &time, &rhs, &lhs, v47);
  if (!value_low)
  {
    *(v12 + 240) = v15;
    goto LABEL_73;
  }

  if (a4 != 0.0)
  {
    goto LABEL_72;
  }

LABEL_73:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, OpaqueCMTimebase *a2, __int128 *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_5(&v20);
    return v20;
  }

  if (!a4)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_4(&v20);
    return v20;
  }

  if (CMTimebaseGetRate(a2) != 0.0)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_3(&v20);
    return v20;
  }

  FigSimpleMutexLock();
  v18 = *a3;
  v19 = *(a3 + 2);
  if (*CMBaseObjectGetDerivedStorage())
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v20);
    v15 = v20;
  }

  else
  {
    v11 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00404ABE07F3uLL);
    v12 = 0;
    if (a5 && a6 && (v12 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
    {
      FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_2(&v20);
      v15 = v20;
    }

    else
    {
      if (!v11)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, DWORD2(v18), v19);
        v15 = v17;
        if (v12)
        {
          CFRelease(v12);
        }

        goto LABEL_11;
      }

      *(v11 + 1) = CFRetain(a4);
      *(v11 + 6) = CFRetain(a2);
      *(v11 + 56) = v18;
      *(v11 + 9) = v19;
      *(v11 + 10) = a5;
      v13 = MEMORY[0x1E6960CC0];
      *(v11 + 104) = *MEMORY[0x1E6960CC0];
      *(v11 + 15) = *(v13 + 16);
      v11[128] = 0;
      *(v11 + 11) = v12;
      *(v11 + 12) = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v15 = 0;
      *v11 = 0;
      **(DerivedStorage + 296) = v11;
      *(DerivedStorage + 296) = v11;
      v11 = 0;
    }

    free(v11);
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSynchronizeToTimebase_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_12;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  v4 = CMTimebaseCopySource(*(v3 + 248));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v3 + 248), v4, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (RelativeRateAndAnchorTime)
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 392);
  v8 = *(v3 + 400);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    RelativeRateAndAnchorTime = v9(v7, v8, @"RenderPipelineStateSynchronizeToTimebase", *MEMORY[0x1E695E4D0]);
    if (!RelativeRateAndAnchorTime)
    {
      if (outRelativeRate == 0.0)
      {
        v12 = 1;
        goto LABEL_16;
      }

      fabaprp_getOffsetToBAOTimeline(&time);
      *(v3 + 184) = time;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ((*(v3 + 172) & 0x1D) != 1 || (RelativeRateAndAnchorTime = fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a1, outRelativeRate), !RelativeRateAndAnchorTime))
      {
        v12 = 0;
        *(v3 + 233) = 1;
LABEL_16:
        value_low = 0;
        *(v3 + 232) = v12;
        if (!v4)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_3:
    value_low = RelativeRateAndAnchorTime;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  value_low = 4294954514;
  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineReset_cold_1(v25);
    v8 = v25[0];
    goto LABEL_7;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigMediaProcessorStop(*(v5 + 56));
  if (v7)
  {
    goto LABEL_6;
  }

  FigMediaProcessorWaitUntilCompletelyStopped(*(v5 + 56));
  if (v7)
  {
    goto LABEL_6;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  v10 = *(v5 + 64);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_30;
  }

  v7 = v11(v10, @"DownstreamConsumer", 0);
  if (v7)
  {
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineReset(*(v5 + 376), a2);
  }

  CMBufferQueueReset(*(v5 + 128));
  if (!*(v5 + 256))
  {
    goto LABEL_17;
  }

  v12 = *(v5 + 392);
  v13 = *(v5 + 400);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14)
  {
LABEL_30:
    v8 = 4294954514;
    goto LABEL_7;
  }

  v7 = v14(v12, v13, a1, a2);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_17:
  *(v5 + 144) = 0x3F80000000000000;
  *(v5 + 240) = 0;
  v15 = MEMORY[0x1E6960C70];
  v16 = *MEMORY[0x1E6960C70];
  *(v5 + 160) = *MEMORY[0x1E6960C70];
  v17 = *(v15 + 16);
  *(v5 + 176) = v17;
  *(v5 + 184) = v16;
  *(v5 + 200) = v17;
  *(v5 + 208) = v16;
  *(v5 + 224) = v17;
  v18 = MEMORY[0x1E6960CC0];
  *(v5 + 260) = *MEMORY[0x1E6960CC0];
  *(v5 + 276) = *(v18 + 16);
  *(v5 + 96) = 0;
  *(v5 + 233) = 0;
  *(v5 + 232) = 0;
  fbaprp_transitionRosterRemoveAll(a1);
  v19 = *(v5 + 304);
  if (v19)
  {
    CFRelease(v19);
    *(v5 + 304) = 0;
  }

  v20 = *(v5 + 72);
  if (v20)
  {
    CFRelease(v20);
    *(v5 + 72) = 0;
  }

  v21 = *(v5 + 136);
  if (v21)
  {
    CFRelease(v21);
    *(v5 + 136) = 0;
  }

  v22 = *(v5 + 360);
  if (v22)
  {
    CFRelease(v22);
    *(v5 + 360) = 0;
  }

  v23 = *(v5 + 56);
  *(v5 + 56) = 0;
  v24 = fbaprp_setupBufferedAirPlayMediaProcessor(a1);
  if (!v24)
  {
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
    }

    if (_MergedGlobals_59 || (CMNotificationCenterGetDefaultLocalCenter(), v24 = FigNotificationCenterRemoveWeakListeners(), !v24) && (v24 = fbaprp_configureSubPipeManager(a1), !v24))
    {
      FigMediaProcessorGo(*(v5 + 56));
    }
  }

  v8 = v24;
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinishSettingRate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v17.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v17.epoch = v3;
  v12 = *&v17.value;
  *&v16.value = *&v17.value;
  v16.epoch = v3;
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_1(&v15);
LABEL_18:
    value_low = LODWORD(v15.value);
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 136))
  {
    value_low = 0;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 144) == 0.0)
  {
    FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_2(&v15);
    goto LABEL_18;
  }

  if (*(DerivedStorage + 220))
  {
    v17 = *(DerivedStorage + 208);
  }

  else
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v17, HostTimeClock);
  }

  if (*(DerivedStorage + 172))
  {
    v16 = *(DerivedStorage + 160);
  }

  else
  {
    CMTimebaseGetTime(&v16, *(DerivedStorage + 136));
  }

  v6 = *(DerivedStorage + 136);
  v7 = *(DerivedStorage + 144);
  v15 = v16;
  v14 = v16;
  v13 = v17;
  fbaprp_startTimebase(a1, v6, &v15, &v14, &v13, v7);
  v8 = *(DerivedStorage + 144);
  v15 = *(DerivedStorage + 160);
  v14 = *(DerivedStorage + 208);
  fbaprp_startAudioChainGuts(a1, 1, &v15.value, &v14.value, v8);
  value_low = v9;
  if (!v9)
  {
    v10 = *(DerivedStorage + 136);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 136) = 0;
    }

    value_low = 0;
    *(DerivedStorage + 160) = v12;
    *(DerivedStorage + 176) = v3;
    *(DerivedStorage + 208) = v12;
    *(DerivedStorage + 224) = v3;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t fbaprp_setupBufferedAirPlayMediaProcessor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[9])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_1(&v23);
    return v23;
  }

  v2 = DerivedStorage;
  if (DerivedStorage[7])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_2(&v23);
    return v23;
  }

  if (!DerivedStorage[13])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_3(&v23);
    return v23;
  }

  v4 = DerivedStorage + 8;
  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  v5 = FigSampleBufferConsumerCreateForSampleBufferConsumer("mediaProcessorConsumerForConsumer", v2 + 8);
  if (!v5)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = v2[16];
    v8 = v2[8];
    v9 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0;
    FigSampleBufferProviderCreateForBufferQueue(v6, v7, &cf);
    if (v10)
    {
      v5 = v10;
      v11 = 0;
      MutableCopy = 0;
    }

    else
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v11 = CFStringCreateWithCString(v6, (v9 + 424), 0x8000100u);
        if (v11)
        {
          CFDictionarySetValue(MutableCopy, @"LoggingID", v11);
          v13 = cf;
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigSampleBufferProcessorForBufferedAirPlayCreate(v13, AllocatorForMedia, MutableCopy, &v23);
          if (v15 || (FigActivitySchedulerCreateForNewThread(v6, 37, @"com.apple.coremedia.mediaprocessor.bufferedairplay", &v21), v15) || (v15 = FigMediaProcessorCreate(v6, v23, cf, v8, v21, &v20), v15))
          {
            v5 = v15;
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v5 = FigNotificationCenterAddWeakListeners();
            if (!v5)
            {
              v2[9] = v23;
              v23 = 0;
              v2[7] = v20;
              v20 = 0;
            }
          }

          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
      }

      v5 = 4294954443;
    }

LABEL_15:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (!v5)
    {
      v16 = v2[8];
      v17 = v2[13];
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v18)
      {
        return v18(v16, @"DownstreamConsumer", v17);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  return v5;
}

uint64_t fbaprp_flushTransitionInBufferQueue(uint64_t a1, uint64_t a2)
{
  queueOut = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v4 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v6 = CMBufferQueueCreate(v4, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
  if (!v6)
  {
    *&v8[0] = queueOut;
    *(&v8[0] + 1) = a2;
    BYTE8(v9) = 1;
    HIDWORD(v9) = -1;
    MEMORY[0x19A8CE710](a1, fbaprp_copySbufBeforeTransitionIDForBufferQueueResetCallback, v8);
    MEMORY[0x19A8CE710](queueOut, fbaprp_copySbufForBufferQueueResetCallback, a1);
    v6 = HIDWORD(v9);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  return v6;
}

uint64_t FigBufferedAirPlayOutputProxyFlushWithinTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t fbaprp_restoreAudioChainToStartOutputTime(uint64_t a1, const void *a2, uint64_t a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fbaprp_restoreAudioChainToStartOutputTime_cold_1(&v21);
    return LODWORD(v21.value);
  }

  else
  {
    v8 = DerivedStorage;
    v9 = MEMORY[0x1E6960CC0];
    v10 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 160) = *MEMORY[0x1E6960CC0];
    epoch = *(v9 + 16);
    *(DerivedStorage + 176) = epoch;
    v12 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 200) = *(MEMORY[0x1E6960C70] + 16);
    *(DerivedStorage + 184) = *v12;
    v13 = DerivedStorage + 260;
    if (*(a3 + 12))
    {
      lhs = *a4;
      v19 = *a3;
      CMTimeSubtract(&v21, &lhs, &v19);
      *v13 = *&v21.value;
      epoch = v21.epoch;
    }

    else
    {
      *v13 = v10;
    }

    *(v13 + 16) = epoch;
    *(v8 + 96) = 1;
    v14 = *(v8 + 304);
    *(v8 + 304) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(v8 + 136);
    if (v15)
    {
      CFRelease(v15);
      *(v8 + 136) = 0;
    }

    v16 = *(v8 + 72);
    v21 = *a3;
    lhs = *a4;
    result = FigSampleBufferProcessorRestoreBufferedAirPlayStates(v16, &v21.value, &lhs);
    if (!result)
    {
      v18 = *(v8 + 144);
      result = 0;
      if (v18 != 0.0)
      {
        *(v8 + 148) = v18;
      }
    }
  }

  return result;
}

uint64_t fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = (DerivedStorage + 288);
    v6 = (DerivedStorage + 288);
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        return 0;
      }

      if (FigCFEqual())
      {
        while (1)
        {
          v9 = v6;
          v6 = *v6;
          v10 = *v5;
          if (*v5 != v9)
          {
            break;
          }

          v7 = *v10;
          *v5 = v7;
          v8 = v5;
          if (!v7)
          {
            goto LABEL_11;
          }

LABEL_12:
          fbaprp_transitionRosterFreeRecord(v9);
          if (!v6)
          {
            return 0;
          }
        }

        do
        {
          v8 = v10;
          v10 = *v10;
        }

        while (v10 != v9);
        v11 = *v10;
        *v8 = v11;
        if (v11)
        {
          goto LABEL_12;
        }

LABEL_11:
        *(v4 + 296) = v8;
        goto LABEL_12;
      }
    }
  }

  else
  {
    fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID_cold_1(&v13);
    return v13;
  }
}

CFTypeRef fbaprp_copySbufBeforeTransitionIDForBufferQueueResetCallback(CFTypeRef result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v3 = result;
    result = CMGetAttachment(result, *MEMORY[0x1E6960550], 0);
    if (result == *(a2 + 8))
    {
      *(a2 + 40) = 0;
    }

    else if (*(a2 + 40))
    {
      result = CMBufferQueueEnqueue(*a2, v3);
      *(a2 + 44) = 0;
    }
  }

  return result;
}

void fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = **&MEMORY[0x1E6960C70];
  v17 = v18;
  if (!*(a2 + 40))
  {
    return;
  }

  v3 = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(&rhs, a1);
  value = rhs.value;
  flags = rhs.flags;
  timescale = rhs.timescale;
  if ((rhs.flags & 0x1D) != 1)
  {
    goto LABEL_15;
  }

  epoch = rhs.epoch;
  CMSampleBufferGetOutputDuration(&rhs, v3);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  CMTimeAdd(&v18, &lhs, &rhs);
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  lhs = *(a2 + 16);
  if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
  {
    *(a2 + 40) = 0;
    return;
  }

  rhs = v18;
  lhs = *(a2 + 16);
  if (CMTimeCompare(&rhs, &lhs) < 1)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E695E480];
  rhs.value = 0;
  if (!v3)
  {
    fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_2(&lhs);
LABEL_29:
    v10 = 0;
    v8 = lhs.value;
    goto LABEL_10;
  }

  Copy = CMSampleBufferCreateCopy(v6, v3, &rhs);
  if (!rhs.value)
  {
    fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_1(&lhs);
    goto LABEL_29;
  }

  v8 = Copy;
  v9 = CMCopyDictionaryOfAttachments(v6, v3, 0);
  v10 = rhs.value;
  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = v9;
  CMSetAttachments(rhs.value, v9, 0);
  v10 = rhs.value;
  rhs.value = 0;
  CFRelease(v11);
LABEL_10:
  if (rhs.value)
  {
    CFRelease(rhs.value);
  }

LABEL_12:
  if (!v8)
  {
    rhs = v18;
    lhs = *(a2 + 16);
    CMTimeSubtract(&v17, &rhs, &lhs);
    v12 = *MEMORY[0x1E6960558];
    v16 = v17;
    rhs = **&MEMORY[0x1E6960CC0];
    v13 = CMGetAttachment(v10, v12, 0);
    if (v13)
    {
      CMTimeMakeFromDictionary(&rhs, v13);
      v20 = rhs;
      v19 = v16;
      CMTimeAdd(&lhs, &v20, &v19);
      *&rhs.value = *&lhs.value;
      v14 = lhs.epoch;
    }

    else
    {
      *&rhs.value = *&v16.value;
      v14 = v16.epoch;
    }

    rhs.epoch = v14;
    *&lhs.value = *&rhs.value;
    lhs.epoch = v14;
    v15 = CMTimeCopyAsDictionary(&lhs, v6);
    CMSetAttachment(v10, v12, v15, 1u);
    if (v15)
    {
      CFRelease(v15);
    }

    v3 = v10;
LABEL_16:
    if (*(a2 + 40))
    {
      CMBufferQueueEnqueue(*a2, v3);
      *(a2 + 44) = 0;
    }

    if (v10)
    {
      goto LABEL_19;
    }

    return;
  }

  fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_3();
  if (v10)
  {
LABEL_19:
    CFRelease(v10);
  }
}

uint64_t __FigBufferedAirPlayAudioChainSubPipeIsSenderSideMixingArchitectureEnabled_block_invoke_0()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_59 = result;
  return result;
}

void fbaprp_baoBufferingPriorityChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && (Value = CFDictionaryGetValue(a5, @"bufferingPriority"), !FigCFEqual()) && (FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    UInt32 = FigCFNumberCreateUInt32();
    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      FigMediaProcessorSetProperty(v9, @"ActivitySchedulerPriority", UInt32);
    }

    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    }

    if (!_MergedGlobals_59)
    {
      FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, @"ThreadPriority", UInt32);
      }
    }

    v10 = *(DerivedStorage + 328);
    *(DerivedStorage + 328) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    FigSimpleMutexUnlock();
    if (UInt32)
    {

      CFRelease(UInt32);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t OUTLINED_FUNCTION_5_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return _os_log_send_and_compose_impl(v28, 0, va, 128, a5, v26, v27, a8);
}

void OUTLINED_FUNCTION_8_30(uint64_t a1@<X8>)
{
  *(v2 + 116) = 2048;
  *(v2 + 118) = v1;
  *(v2 + 126) = 2082;
  *(v2 + 128) = a1;
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_16_24(uint64_t a1@<X8>)
{
  *(v3 + 116) = 2048;
  *(v3 + 118) = v2;
  *(v3 + 126) = 2082;
  *(v3 + 128) = a1;
  *(v3 + 136) = 2048;
  *(v3 + 138) = v1;
}

BOOL OUTLINED_FUNCTION_18_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_22_20(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_23_23(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const CMSampleTimingInfo *a9, CMItemCount a10, const size_t *a11, CMSampleBufferRef *a12)
{

  return CMSampleBufferCreate(a1, 0, 1u, 0, 0, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_25_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_30_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_32_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *v32;
  time_16 = *(v32 + 16);

  return CMTimeGetSeconds(&timea);
}

BOOL OUTLINED_FUNCTION_38_12(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  *(v15 + 16) = a15;
  return result;
}

Float64 OUTLINED_FUNCTION_48_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *time, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *(v32 + 160);
  time_16 = *(v32 + 176);

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_51_11@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 216) = a1;

  return CMTimeGetSeconds((v2 - 256));
}

__n128 OUTLINED_FUNCTION_56_8()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_59_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, unint64_t a17)
{
  result = a16;
  v17[10] = a16;
  v17[11].n128_u64[0] = a17;
  return result;
}

BOOL OUTLINED_FUNCTION_62_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_64_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_66_6(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  v65[16] = *MEMORY[0x1E69E9840];
  memset(&v60, 0, sizeof(v60));
  cf = 0;
  v57 = 0;
  valuePtr = 0x8000;
  v56 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v55 = 0;
  v53 = -1;
  v54 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_block_invoke;
  block[3] = &__block_descriptor_tmp_51;
  block[4] = a1;
  if (FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_once != -1)
  {
    dispatch_once(&FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_once, block);
  }

  if (!gOfflineMixersDictionary)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_9(v65);
LABEL_84:
    Mutable = 0;
    goto LABEL_85;
  }

  if (!gAPIMutex)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_8(v65);
    goto LABEL_84;
  }

  if (!a2)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_7(v65);
    goto LABEL_84;
  }

  if (!a4)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_6(v65);
    goto LABEL_84;
  }

  if (!a6)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_5(v65);
    goto LABEL_84;
  }

  if (!a7)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_4(v65);
    goto LABEL_84;
  }

  v49 = CFPreferenceNumberWithDefault;
  if (dword_1EAF171A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    FigSimpleMutexLock();
    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    v64 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 0x40000000;
    v65[2] = __fbapomf_getMixerForOutputFormat_block_invoke;
    v65[3] = &unk_1E7489780;
    v65[5] = a4;
    v65[6] = a3;
    v65[4] = &v61;
    FigCFDictionaryApplyBlock();
    v15 = v62[3];
    _Block_object_dispose(&v61, 8);
    v55 = v15;
    if (v15)
    {
      *a7 = v15;
      v55 = 0;
      if (dword_1EAF171A8)
      {
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v38 = 0;
      goto LABEL_45;
    }

    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
    if (ASBD)
    {
      v18 = ASBD;
      v60.mChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
      FigActivitySchedulerCreateForNewThread(a1, 36, @"com.apple.coremedia.BAPOfflineMixerFactory.mixer", &cf);
      if (v19)
      {
        v38 = v19;
      }

      else
      {
        v48 = a7;
        v20 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v20)
        {
          v21 = v20;
          v22 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
          if (!v22)
          {
            v47 = 243;
            goto LABEL_96;
          }

          v23 = v22;
          FigCFDictionarySetValue();
          v24 = *(v18 + 8);
          if (v24 == 1634754915 || v24 == 1902211171 || v24 == 1667330147)
          {
            CFRelease(v23);
            v25 = *MEMORY[0x1E695E480];
            v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v54);
            if (!v26)
            {
              v47 = 251;
              goto LABEL_96;
            }

            v27 = v26;
            FigCFDictionarySetValue();
            CFRelease(v27);
            v28 = CFNumberCreate(v25, kCFNumberIntType, &v53);
            if (!v28)
            {
              v47 = 256;
              goto LABEL_96;
            }

            v23 = v28;
            FigCFDictionarySetValue();
          }

          FigCFDictionarySetValue();
          v29 = FigAudioQueueOfflineMixerCreate(a1, v18, 0xCuLL, &v60, v21, a6, cf, &v55);
          if (v29)
          {
            goto LABEL_77;
          }

          CFRelease(v23);
          if (*(v18 + 28) >= 3u)
          {
            v30 = 32;
          }

          else
          {
            v30 = 64;
          }

          v57 = v30;
          v31 = CFNumberCreate(a1, kCFNumberIntType, &v57);
          if (!v31)
          {
            v47 = 277;
            goto LABEL_96;
          }

          v23 = v31;
          FigAudioQueueOfflineMixerSetProperty(v55, @"AudioQueueOfflineMixer_CodecQuality", v31);
          if (v29)
          {
LABEL_77:
            v38 = v29;
LABEL_68:
            FigSimpleMutexUnlock();
            CFRelease(v23);
LABEL_69:
            CFRelease(v21);
            goto LABEL_70;
          }

          v32 = *(v18 + 8);
          if (v32 > 1902928226)
          {
            v33 = a5;
            if (v32 == 1902928227)
            {
              goto LABEL_61;
            }

            v34 = 2053923171;
          }

          else
          {
            v33 = a5;
            if (v32 == 1634492771)
            {
              goto LABEL_61;
            }

            v34 = 1668047203;
          }

          if (v32 != v34)
          {
            CFRelease(v23);
            v35 = *(v18 + 8);
            if (v35 != 1634754915 && v35 != 1902211171 && v35 != 1667330147)
            {
              if (*(v18 + 28) <= 2u)
              {
                v40 = 256000;
              }

              else
              {
                v40 = 512000;
              }

              v56 = v40;
              v37 = v49;
LABEL_57:
              if (v37)
              {
                v56 = v37;
              }

              v41 = CFNumberCreate(a1, kCFNumberIntType, &v56);
              if (!v41)
              {
                v47 = 319;
                goto LABEL_96;
              }

              v23 = v41;
              FigAudioQueueOfflineMixerSetProperty(v55, @"AudioQueueOfflineMixer_BitRateForVBR", v41);
              if (v29)
              {
                goto LABEL_77;
              }

              goto LABEL_61;
            }

            v36 = *(v18 + 28);
            if (v36 > 9)
            {
              v37 = v49;
              if (v36 != 10)
              {
                if (v36 != 12)
                {
LABEL_54:
                  v39 = 256000;
                  goto LABEL_56;
                }

                v39 = 896000;
LABEL_56:
                v56 = v39;
                goto LABEL_57;
              }
            }

            else
            {
              v37 = v49;
              if (v36 == 6)
              {
                v39 = 512000;
                goto LABEL_56;
              }

              if (v36 != 8)
              {
                goto LABEL_54;
              }
            }

            v39 = 768000;
            goto LABEL_56;
          }

LABEL_61:
          v42 = v55;
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigAudioQueueOfflineMixerSetProperty(v42, @"AudioQueueOfflineMixer_SampleBufferAllocator", AllocatorForMedia);
          if (!v29)
          {
            CFArraySetValueAtIndex(Mutable, 0, a4);
            CFArraySetValueAtIndex(Mutable, 1, a3);
            CFRelease(v23);
            UInt32 = FigCFNumberCreateUInt32();
            if (UInt32)
            {
              v23 = UInt32;
              CFArraySetValueAtIndex(Mutable, 2, UInt32);
              if (v33)
              {
                CFArraySetValueAtIndex(Mutable, 3, v33);
              }

              FigCFDictionarySetValue();
              if (dword_1EAF171A8)
              {
                v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v38 = 0;
              *v48 = v55;
              goto LABEL_68;
            }

            v47 = 336;
LABEL_96:
            FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_1(v47, v65);
            v38 = LODWORD(v65[0]);
            goto LABEL_69;
          }

          goto LABEL_77;
        }

        v38 = 4294954510;
      }
    }

    else
    {
      FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_2(v65);
      v38 = LODWORD(v65[0]);
    }

LABEL_45:
    FigSimpleMutexUnlock();
    goto LABEL_70;
  }

  FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_3(v65);
LABEL_85:
  v38 = LODWORD(v65[0]);
LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v38;
}

uint64_t __FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_block_invoke(uint64_t a1)
{
  gOfflineMixersDictionary = CFDictionaryCreateMutable(*(a1 + 32), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gAPIMutex = FigSimpleMutexCreate();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!gOfflineMixersDictionary)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_4(v8);
    return v8[0];
  }

  if (!gAPIMutex)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_3(v8);
    return v8[0];
  }

  if (!a1)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_2(v8);
    return v8[0];
  }

  if (dword_1EAF171A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetValueIfPresent())
  {
    FigAudioQueueOfflineMixerInvalidate(a1);
    CFDictionaryRemoveValue(gOfflineMixersDictionary, a1);
    if (dword_1EAF171A8)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EAF171A8)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v5 = 0;
  }

  else
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294954516;
  }

  FigSimpleMutexUnlock();
  return v5;
}

void __fbapomf_getMixerForOutputFormat_block_invoke(void *a1, uint64_t a2, CFArrayRef theArray)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      FigCFArrayGetValueAtIndex();
      FigCFArrayGetValueAtIndex();
      if (FigCFEqual())
      {
        if (FigCFEqual())
        {
          FigCFArrayGetValueAtIndex();
          FigCFNumberGetUInt32();
          UInt32 = FigCFNumberCreateUInt32();
          if (UInt32)
          {
            v14 = UInt32;
            CFArraySetValueAtIndex(theArray, 2, UInt32);
            *(*(a1[4] + 8) + 24) = a2;

            CFRelease(v14);
          }

          else
          {
            __fbapomf_getMixerForOutputFormat_block_invoke_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), v17);
          }
        }
      }
    }
  }
}

uint64_t CreatePesPrivateForADTS(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
      a1[6] = 0;
    }
  }

  v3 = malloc_type_calloc(1uLL, 0x140uLL, 0x10B0040A484EC9DuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 311;
  v4[3] = 7;
  v4[4] = ADTSCheckHeader;
  v4[5] = ADTSCompareHeaders;
  v4[6] = ADTSGetSamplesInFrame;
  v4[7] = ADTSGetSampleFrequency;
  v4[8] = ADTSGetFrameSize;
  a1[105] = PesADTSProcessData;
  a1[106] = PesADTSCleanPrivateData;
  a1[107] = PesADTSDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t ADTSCompareHeaders(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  result = ADTSGetSampleFrequency(a2);
  if (result)
  {
    v5 = 0;
    return !CMBlockBufferAccessDataBytes(a1, 0, 4uLL, temporaryBlock, &v5) && bswap32(*a2 ^ *v5) < 0x10;
  }

  return result;
}

void PesADTSDeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

__CFString *playerReportingModeratorCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigPlayerReportingModerator : ");
  return Mutable;
}

uint64_t fprm_addToSessionStatsCountValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 64);
  if (v10)
  {

    return v10(v5, v6, a2, a3);
  }

  return result;
}

uint64_t fprm_setSessionEndReasonIfFatalError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 1;
  if (!a3 || (v12 = *(a1 + 80), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (result = v13(v12, a2, a3, &v26), v26 == 1))
  {
    v27 = 0;
    if (a2)
    {
      if (a4)
      {
        v15 = *(a1 + 80);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 144);
        if (v16)
        {
          if (!v16(v15, a2, a4, &v27))
          {
            v17 = *(a1 + 80);
            v18 = *(a1 + 88);
            v19 = v27;
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            if (v20)
            {
              v20(v17, v18, 0x1F0B65B58, v19);
            }
          }
        }
      }
    }

    fprm_setCFTypeFromKeyInStats(a1, a2, a6, 0x1F0B65B78);
    if (a5)
    {
      return fprm_setCFTypeFromKeyInStats(a1, a2, a5, 0x1F0B65B98);
    }

    else
    {
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      VTable = CMBaseObjectGetVTable();
      v24 = *(VTable + 16);
      result = VTable + 16;
      v25 = *(v24 + 80);
      if (v25)
      {
        return v25(v21, v22, 0x1F0B65B98, @"CoreMediaErrorDomain");
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_42()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return CMBaseObjectGetVTable();
}

uint64_t AddPesToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *result = a2;
    *(result + 8) = a3;
    if (a2)
    {
      *(result + 16) = 0;
      v3 = *(a2 + 32);
      *(result + 24) = v3;
      *v3 = result;
      *(a2 + 32) = result + 16;
    }

    v4 = *(a3 + 24);
    if (v4)
    {
      v5 = *(a3 + 32);
      v6 = *(result + 448);
      if (*(**(v5 + 8) + 448) >= v6)
      {
        do
        {
          if (*(v4 + 448) >= v6)
          {
            break;
          }

          v4 = *(v4 + 32);
        }

        while (v4);
        v7 = *(v4 + 40);
        *(result + 40) = v7;
        *(result + 32) = v4;
        *v7 = result;
        *(v4 + 40) = result + 32;
      }

      else
      {
        *(result + 32) = 0;
        *(result + 40) = v5;
        *v5 = result;
        *(a3 + 32) = result + 32;
      }
    }

    else
    {
      *(result + 32) = 0;
      *(a3 + 24) = result;
      *(a3 + 32) = result + 32;
      *(result + 40) = a3 + 24;
    }
  }

  return result;
}

uint64_t AddPes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, __int16 a8, char a9, void *a10)
{
  v18 = malloc_type_calloc(1uLL, 0x368uLL, 0x10B00407B0020A8uLL);
  if (!v18)
  {
    AddPes_cold_1(&v25);
    return v25;
  }

  v19 = v18;
  v18[120] = 0;
  *v18 = a2;
  *(v18 + 1) = a1;
  *(v18 + 16) = a7;
  if (!a5)
  {
    a6 = *(a1 + 184);
    *(a1 + 184) = a6 + 1;
  }

  *(v18 + 15) = a6;
  *(v18 + 224) = a8;
  *(v18 + 102) = -1;
  AddPesToList(v18, a2, a1);
  *(v19 + 91) = 0;
  *(v19 + 92) = v19 + 728;
  *(v19 + 98) = 0;
  *(v19 + 99) = v19 + 784;
  *(v19 + 65) = 0;
  *(v19 + 66) = v19 + 520;
  *(v19 + 163) = 2;
  if (a3)
  {
    goto LABEL_5;
  }

  *(v19 + 14) = a4;
  if (a4 <= 1748121139)
  {
    if (a4 <= 1700880738)
    {
      if (a4 > 1635017570)
      {
        if (a4 == 1635017571)
        {
          goto LABEL_42;
        }

        v21 = 1685353248;
        goto LABEL_27;
      }

      if (a4 == 1633891104)
      {
        goto LABEL_32;
      }

      if (a4 != 1633973363)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a4 > 1700886114)
      {
        if (a4 == 1700886115)
        {
          goto LABEL_40;
        }

        if (a4 == 1700998451)
        {
LABEL_32:
          v23 = 2048;
LABEL_41:
          *(v19 + 80) = v23;
          goto LABEL_42;
        }

        v22 = 1701143347;
LABEL_31:
        if (a4 != v22)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (a4 != 1700880739)
      {
        v22 = 1700881203;
        goto LABEL_31;
      }
    }

LABEL_33:
    v23 = 1024;
    goto LABEL_41;
  }

  if (a4 <= 1836476771)
  {
    if (a4 <= 1819304812)
    {
      if (a4 != 1748121140)
      {
        if (a4 != 1768174368)
        {
          goto LABEL_5;
        }

        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (a4 != 1819304813)
    {
      if (a4 != 1835103588)
      {
        v21 = 1836070006;
LABEL_27:
        if (a4 != v21)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      goto LABEL_33;
    }

LABEL_39:
    v23 = 4096;
    goto LABEL_41;
  }

  if (a4 <= 1886614577)
  {
    if (a4 != 1836476772)
    {
      if (a4 == 1886612592)
      {
        goto LABEL_39;
      }

LABEL_5:
      result = 0;
      *a10 = v19;
      v19[657] = 1;
      return result;
    }

LABEL_40:
    v23 = 0x4000;
    goto LABEL_41;
  }

  if (a4 != 1886614578)
  {
    if (a4 == 1970170734)
    {
      goto LABEL_42;
    }

    v21 = 2053207651;
    goto LABEL_27;
  }

  *(v19 + 80) = 1024;
  v19[121] = 1;
LABEL_42:
  *a10 = v19;
  v19[657] = 1;
  if (a9)
  {
    v24 = *(a1 + 56);
    if (v24)
    {
      v24(*a1, *(a1 + 72), *(a2 + 40), *(v19 + 15), a4);
    }

    return 0;
  }

  else
  {
    result = 0;
    v19[657] = 0;
  }

  return result;
}

uint64_t FrameQueueEntryInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = a1 + 64;
  *(result + 8) = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  if ((a2[6] & 0xC0) != 0x80)
  {
    v11 = 6;
    if (a4 >= 7)
    {
      while (1)
      {
        v12 = a2[v11];
        if (v12 != 255)
        {
          break;
        }

        if (a4 == ++v11)
        {
          v11 = a4;
          goto LABEL_16;
        }
      }

      if ((v12 & 0xC0) == 0x40)
      {
        v11 += 2;
      }
    }

LABEL_16:
    if (v11 + 10 > a4 || (v13 = &a2[v11], (a2[v11] & 0xF0) != 0x30))
    {
      if (v11 + 5 > a4 || a2[v11] < 0x20u)
      {
        goto LABEL_20;
      }

      if (!ReadPTSorDTSWithVerify(&a2[v11], a3, 33))
      {
        ReadTimestampFromPesHeader_cold_3(&v15);
        return v15;
      }

      result = 0;
      v14 = 1;
LABEL_29:
      *(a3 + 25) = v14;
      return result;
    }

    if (!ReadPTSorDTSWithVerify(&a2[v11], a3, 49))
    {
      ReadTimestampFromPesHeader_cold_2(&v15);
      return v15;
    }

    if (!ReadPTSorDTSWithVerify(v13 + 5, (a3 + 8), 17))
    {
      ReadTimestampFromPesHeader_cold_1(&v15);
      return v15;
    }

LABEL_26:
    result = 0;
    v14 = 257;
    goto LABEL_29;
  }

  *(a3 + 27) = 0;
  v9 = a2[7];
  if (a4 >= 0x13 && v9 >= 0xC0)
  {
    if (!ReadPTSorDTSWithVerify(a2 + 9, a3, 49))
    {
      ReadTimestampFromPesHeader_cold_6(&v15);
      return v15;
    }

    if (!ReadPTSorDTSWithVerify(a2 + 14, (a3 + 8), 17))
    {
      ReadTimestampFromPesHeader_cold_5(&v15);
      return v15;
    }

    goto LABEL_26;
  }

  if (a4 < 0xE || (v9 & 0x80) == 0)
  {
LABEL_20:
    result = 0;
    *(a3 + 25) = 0;
    return result;
  }

  if (!ReadPTSorDTSWithVerify(a2 + 9, a3, 33))
  {
    ReadTimestampFromPesHeader_cold_4(&v15);
    return v15;
  }

  *(a3 + 25) = 1;
  if (a6 == 192 || a6 == 1)
  {
    result = 0;
    *(a3 + 26) = 257;
    *(a3 + 8) = *a3;
  }

  else
  {
    result = 0;
    *(a3 + 26) = 0;
  }

  return result;
}

uint64_t ProcessPesData(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, char *a4, size_t a5, int a6, uint64_t a7, size_t *a8, _BYTE *a9)
{
  *a9 = 0;
  *a8 = 0;
  if (!a5)
  {
    return 0;
  }

  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  length = 0;
  returnedPointerOut = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  if (a6)
  {
    *(a1 + 122) = 1;
    *(a1 + 128) = a7;
    CheckPesHeaderLength(a2, a3, a4, a5, &length, &v44, a7, a8);
    if (TimestampFromPesHeader)
    {
      goto LABEL_78;
    }

    if (!v44)
    {
      v20 = CopyBytesAtOffset(v14, v13, v12, (a1 + 152), v11);
      if (!v20)
      {
        v41 = length;
        *(a1 + 424) = v11;
        *(a1 + 432) = v41;
        goto LABEL_54;
      }

      goto LABEL_66;
    }

    if (v14)
    {
      v31 = length;
      TimestampFromPesHeader = CMBlockBufferAccessDataBytes(v14, v13, length, (a1 + 152), &returnedPointerOut);
      if (TimestampFromPesHeader)
      {
        goto LABEL_78;
      }

      v13 += v31;
      v30 = returnedPointerOut;
    }

    else
    {
      returnedPointerOut = v12;
      v31 = length;
      v30 = v12;
      v12 += length;
    }

    v11 -= v31;
    *a8 = v31;
LABEL_32:
    BYTE8(v46) = 1;
    *&v46 = *(a1 + 128);
    if (*v30 || v30[1] || v30[2] != 1)
    {
      ProcessPesData_cold_3(&v49);
      goto LABEL_65;
    }

    v32 = __rev16(*(v30 + 2));
    *(a1 + 136) = v32;
    *(a1 + 144) = 0;
    *(a1 + 123) = v32 == 0;
    if (v32)
    {
      v33 = v32 >= v31 - 6;
      v34 = v32 - (v31 - 6);
      if (!v33)
      {
        ProcessPesData_cold_1(&v49);
LABEL_65:
        v20 = v49;
LABEL_66:
        PesErrorHandling(a1, v20);
LABEL_54:
        *a8 = v11;
        return v20;
      }

      *(a1 + 136) = v34;
    }

    else if (!*(a1 + 120))
    {
      ProcessPesData_cold_2(&v49);
      goto LABEL_65;
    }

    TimestampFromPesHeader = ReadTimestampFromPesHeader(0, v30, &v45, v31, 0, *(*(a1 + 8) + 48));
    if (!TimestampFromPesHeader)
    {
LABEL_41:
      if (*(a1 + 123))
      {
        if (!v11)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v11 >= *(a1 + 136) - *(a1 + 144))
        {
          v11 = *(a1 + 136) - *(a1 + 144);
        }

        if (!v11)
        {
          goto LABEL_49;
        }
      }

      v35 = *(a1 + 840);
      if (v35)
      {
        v20 = v35(a1, v14, v13, v12, v11, &v45);
        goto LABEL_50;
      }

LABEL_49:
      v20 = 0;
LABEL_50:
      v36 = *(a1 + 136);
      v37 = *(a1 + 144) + v11;
      *(a1 + 144) = v37;
      if (v37 >= v36 && !*(a1 + 123))
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *a9 = 1;
      }

      v11 += *a8;
      goto LABEL_54;
    }

LABEL_78:
    v20 = TimestampFromPesHeader;
    goto LABEL_66;
  }

  v16 = *(a1 + 424);
  if (!v16)
  {
    if (*(a1 + 122))
    {
      BYTE8(v46) = 0;
      goto LABEL_41;
    }

    goto LABEL_72;
  }

  v17 = *(a1 + 432);
  if (!v17)
  {
    v21 = 25;
    if (v16 < 9)
    {
      v21 = 9;
    }

    v22 = v21 - v16;
    if (v21 - v16 >= a5)
    {
      v23 = a5;
    }

    else
    {
      v23 = v21 - v16;
    }

    TimestampFromPesHeader = CopyBytesAtOffset(a2, a3, a4, (a1 + 152 + v16), v23);
    if (TimestampFromPesHeader)
    {
      goto LABEL_78;
    }

    CheckPesHeaderLength(0, 0, a1 + 152, *(a1 + 424) + v23, (a1 + 432), &v44, v25, v26);
    if (TimestampFromPesHeader)
    {
      goto LABEL_78;
    }

    if (v44)
    {
      v27 = *(a1 + 432) - *(a1 + 424);
      v14 = a2;
      if (a2)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(a1 + 432) - *(a1 + 424);
      }

      v12 = &a4[v28];
      if (a2)
      {
        v29 = *(a1 + 432) - *(a1 + 424);
      }

      else
      {
        v29 = 0;
      }

      v13 += v29;
      v11 -= v27;
      *a8 += v27;
      goto LABEL_31;
    }

    *(a1 + 424) += v23;
    if (v22 < v11)
    {
      if (a2)
      {
        v39 = 0;
      }

      else
      {
        v39 = v23;
      }

      if (a2)
      {
        v40 = v23;
      }

      else
      {
        v40 = 0;
      }

      v20 = ProcessPesData(a1, a2, v40 + v13, &a4[v39], v11 - v23, 0, a7, a8, a9);
      v11 = *a8 + v23;
      goto LABEL_54;
    }

LABEL_72:
    v20 = 0;
    goto LABEL_54;
  }

  v18 = v17 - v16;
  if (!v18)
  {
LABEL_31:
    v30 = (a1 + 152);
    v31 = *(a1 + 432);
    length = v31;
    returnedPointerOut = (a1 + 152);
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    goto LABEL_32;
  }

  if (v18 >= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18;
  }

  CopyBytesAtOffset(a2, a3, a4, (a1 + v16 + 152), v19);
  *(a1 + 424) += v19;
  *a8 = v19;
  v11 -= v19;
  if (v11)
  {
    if (v14)
    {
      v13 += v19;
    }

    else
    {
      v12 += v19;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t CopyBytesAtOffset(OpaqueCMBlockBuffer *a1, size_t a2, void *__src, void *__dst, size_t __n)
{
  if (a1)
  {

    return CMBlockBufferCopyDataBytes(a1, a2, __n, __dst);
  }

  else
  {
    memcpy(__dst, __src, __n);
    return 0;
  }
}

void *PesErrorHandling(uint64_t a1, uint64_t a2)
{
  FigMPEG2VideoFrameFlush(a1);
  result = PesCleanOutData(a1);
  if (a2)
  {
    v5 = *(a1 + 8);
    v6 = v5[8];
    if (v6)
    {
      v7 = *v5;
      v8 = v5[9];
      v9 = *(*a1 + 40);
      v10 = *(a1 + 60);

      return v6(v7, v8, v9, v10, a2);
    }
  }

  return result;
}

void PesPacketListClean(uint64_t a1)
{
  *(a1 + 8) = 0;
  for (i = *a1; *a1; i = *a1)
  {
    v3 = i[1];
    *a1 = *i;
    if (v3)
    {
      CFRelease(v3);
    }

    free(i);
  }
}

__n128 FrameQueueMove(uint64_t a1, uint64_t a2)
{
  PesFrameHeaderDestroy((a1 + 88));
  ClosedCaptionQueueClean((a1 + 64));
  for (i = *(a2 + 64); i; i = *(a2 + 64))
  {
    v5 = *i;
    v6 = i[1];
    v7 = (*i + 8);
    if (!*i)
    {
      v7 = (a2 + 72);
    }

    *v7 = v6;
    *v6 = v5;
    v8 = *(a1 + 72);
    *i = 0;
    i[1] = v8;
    *v8 = i;
    *(a1 + 72) = i;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  v11 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v11;
  *(a1 + 88) = result;
  *(a1 + 128) = *(a2 + 128);
  v12 = *(a2 + 132);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 132) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 148) = *(a2 + 148);
  *(a2 + 56) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  return result;
}

void PesFrameHeaderDestroy(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    free(v4);
    a1[4] = 0;
  }
}

void ClosedCaptionQueueClean(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = i[2];
    if (v6)
    {
      CFRelease(v6);
    }

    free(i);
  }
}

void FrameQueueEntryClean(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 56) = 0;
  ClosedCaptionQueueClean((a1 + 64));
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 146) = 0;
  *(a1 + 148) = 0;
}

void FrameQueueEntryDestroy(uint64_t a1)
{
  FrameQueueEntryClean(a1);
  PesFrameHeaderDestroy((a1 + 88));
  if (*(a1 + 145))
  {

    free(a1);
  }
}

void *FrameQueueClean(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      FrameQueueEntryDestroy(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t CloseCaptionQueueAdd(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040A8488062uLL);
  if (!v4)
  {
    return 4294954510;
  }

  v5 = v4;
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  v5[2] = v6;
  v8 = *(a1 + 8);
  *v5 = 0;
  v5[1] = v8;
  *v8 = v5;
  *(a1 + 8) = v5;
  return result;
}

void PesCleanAfterFrameEmit(uint64_t a1)
{
  FrameQueueEntryClean(a1 + 456);
  v2 = *(a1 + 608);
  if (v2)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E488], v2);
    *(a1 + 608) = 0;
  }

  *(a1 + 656) = 0;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  v3 = *(a1 + 648);
  if (v3 > *(a1 + 652))
  {
    if (v3 >= 0x18)
    {
      v3 = 24;
    }

    *(a1 + 652) = v3;
  }

  *(a1 + 648) = 0;
}

void *PesCleanOutData(uint64_t a1)
{
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  FigMPEG2VideoFrameDiscard(a1);
  PesCleanAfterFrameEmit(a1);
  result = FrameQueueClean((a1 + 728));
  *(a1 + 744) = 0;
  *(a1 + 451) = 0;
  *(a1 + 122) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  v3 = *(a1 + 848);
  if (v3)
  {
    result = v3(a1);
  }

  *(a1 + 816) = -1;
  return result;
}

void *PesReinitialize(uint64_t a1)
{
  result = PesCleanOutData(a1);
  *(a1 + 658) = 0;
  *(a1 + 704) = 0;
  return result;
}

uint64_t FindPesFromStreamID(uint64_t a1, int a2)
{
  for (result = *(a1 + 24); result; result = *(result + 32))
  {
    if (*(result + 64) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t PesCreateBlockBufferFromFrameMemory(uint64_t a1)
{
  if (*(a1 + 512))
  {
    return 0;
  }

  v3 = a1 + 608;
  v4 = *(a1 + 608);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E488];
    v1 = CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), v4, *(a1 + 632), *MEMORY[0x1E695E488], 0, 0, *(a1 + 616), 0, (a1 + 512));
    if (v1)
    {
      CFAllocatorDeallocate(v5, *v3);
    }
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 656) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  return v1;
}

uint64_t PesAddMemoryToFrameMemory(uint64_t a1, const void *a2, size_t a3, unint64_t a4, size_t *a5, char *a6)
{
  v9 = a3;
  if (*(a1 + 512))
  {

    return PesAddMemoryToFrameBlockBuffer(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 656))
  {
    v13 = *(a1 + 624);
  }

  else
  {
    *(a1 + 656) = 1;
    *(a1 + 624) = a4;
    v13 = a4;
  }

  if (!*(a1 + 608))
  {
    if (v13)
    {
      if (*(a1 + 119))
      {
        v18 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v18 = v13;
      }
    }

    else
    {
      v18 = *(a1 + 640);
      if (v18 < a3)
      {
        v18 = (a3 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        *(a1 + 640) = v18;
        if (v18 > *(*(a1 + 8) + 104))
        {
          goto LABEL_17;
        }
      }
    }

    v20 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], v18, 0x100004077774924, 0);
    *(a1 + 608) = v20;
    if (!v20)
    {
LABEL_41:
      PesAddMemoryToFrameMemory_cold_1(a1, &v24);
      return v24;
    }

    *(a1 + 632) = v18;
    *(a1 + 616) = 0;
    v21 = *(a1 + 624);
    if (v21 >= v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = *(a1 + 624);
    }

    if (v21)
    {
      v9 = v22;
    }

    goto LABEL_31;
  }

  v14 = *(a1 + 616);
  v15 = v13 - v14;
  if (v13 - v14 >= a3)
  {
    v15 = a3;
  }

  if (v13)
  {
    v9 = v15;
  }

  v16 = v9 + v14;
  if (*(a1 + 119))
  {
    v16 = (v9 + v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v16 <= *(a1 + 632))
  {
    goto LABEL_31;
  }

  v17 = (v16 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  *(a1 + 640) = v17;
  if (v17 <= *(*(a1 + 8) + 104))
  {
    v19 = MEMORY[0x19A8CC770](*MEMORY[0x1E695E488]);
    *(a1 + 608) = v19;
    *(a1 + 632) = *(a1 + 640);
    goto LABEL_32;
  }

LABEL_17:
  PesErrorHandling(a1, 4294954325);
  v9 = 0;
LABEL_31:
  v19 = *(a1 + 608);
LABEL_32:
  if (!v19)
  {
    goto LABEL_41;
  }

  if (a2)
  {
    memcpy((v19 + *(a1 + 616)), a2, v9);
  }

  *(a1 + 616) += v9;
  *a5 = v9;
  if (a4 && *(a1 + 616) >= a4)
  {
    result = PesCreateBlockBufferFromFrameMemory(a1);
    v23 = 1;
  }

  else
  {
    v23 = 0;
    result = 0;
  }

  *a6 = v23;
  return result;
}

uint64_t PesAddMemoryToFrameBlockBuffer(uint64_t a1, const void *a2, size_t a3, unint64_t a4, size_t *a5, char *a6)
{
  if (!a3)
  {
    PesAddMemoryToFrameBlockBuffer_cold_3(&v21);
    return v21;
  }

  if (!*(a1 + 116) || a3 <= a4 && !*(a1 + 119) && ((a2 & 3) == 0 || !*(a1 + 117)) && (*(a1 + 118) ? (v10 = (a2 & 0xF) == 0) : (v10 = 1), v10))
  {
    if (!*(a1 + 608))
    {
      if (*(a1 + 656))
      {
        a4 = *(a1 + 624);
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(a1 + 616) = 0;
        *(a1 + 624) = a4;
        *(a1 + 656) = 1;
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      if (a4 - *(a1 + 616) < a3)
      {
        a3 = a4 - *(a1 + 616);
      }

LABEL_20:
      *a5 = a3;
      v12 = *MEMORY[0x1E695E488];
      v13 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], a3, 0x100004077774924, 0);
      v14 = v13;
      if (a2)
      {
        if (!v13)
        {
          PesAddMemoryToFrameBlockBuffer_cold_1(&v19);
          return v19;
        }

        memcpy(v13, a2, *a5);
      }

      else
      {
        bzero(v13, *a5);
        if (!v14)
        {
          PesAddMemoryToFrameBlockBuffer_cold_2(&v20);
          return v20;
        }
      }

      v15 = *(a1 + 512);
      if (!v15)
      {
        Empty = CMBlockBufferCreateEmpty(*(*(a1 + 8) + 40), *(a1 + 652), 0, (a1 + 512));
        if (Empty)
        {
LABEL_34:
          v18 = Empty;
          CFAllocatorDeallocate(v12, v14);
          return v18;
        }

        v15 = *(a1 + 512);
      }

      Empty = CMBlockBufferAppendMemoryBlock(v15, v14, *a5, v12, 0, 0, *a5, 0);
      if (!Empty)
      {
        ++*(a1 + 648);
        v17 = *(a1 + 616) + *a5;
        *(a1 + 616) = v17;
        v18 = 0;
        if (*(a1 + 624) - 1 < v17)
        {
          *a6 = 1;
        }

        return v18;
      }

      goto LABEL_34;
    }
  }

  return PesAddMemoryToFrameMemory(a1, a2, a3, a4, a5, a6);
}

void *PesFrameHeadersInit(uint64_t a1, size_t a2)
{
  v4 = 8 * a2;
  *(a1 + 16) = malloc_type_realloc(*(a1 + 16), 8 * a2, 0x100004000313F17uLL);
  *(a1 + 24) = malloc_type_realloc(*(a1 + 24), v4, 0x100004000313F17uLL);
  result = malloc_type_realloc(*(a1 + 32), a2, 0x100004077774924uLL);
  *(a1 + 32) = result;
  v6 = *a1;
  if (*a1 >= a2)
  {
    v6 = a2;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return result;
}

BOOL PesFrameHeaderAddOffset(_BOOL8 result, uint64_t a2, char a3)
{
  if (result)
  {
    v5 = result;
    result = PesFrameHeaderCheckSize(result, 1uLL);
    if (result)
    {
      *(v5[2] + 8 * *v5) = a2;
      *(v5[4] + *v5) = a3;
      v6 = v5[3];
      *(v6 + 8 * *v5) = 0;
      if (*v5)
      {
        *(v6 + 8 * *v5 - 8) = a2 - *(v5[2] + 8 * *v5 - 8);
        v7 = *v5 + 1;
      }

      else
      {
        v7 = 1;
      }

      *v5 = v7;
    }
  }

  return result;
}

BOOL PesFrameHeaderCheckSize(void *a1, unint64_t a2)
{
  if (a1[2] && a1[3] && a1[4] && a1[1] > *a1 + a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if (__CFADD__(v3, a2))
  {
    v4 = 0;
  }

  PesFrameHeadersInit(a1, v4 + v3);
  return a1[2] && a1[3] && a1[4];
}

BOOL PesFrameHeaderAppendList(void *a1, unint64_t *a2, uint64_t a3)
{
  result = PesFrameHeaderCheckSize(a1, *a2);
  if (result && *a2)
  {
    v7 = 0;
    do
    {
      result = PesFrameHeaderAddOffset(a1, *(a2[2] + 8 * v7) + a3, *(a2[4] + v7));
      ++v7;
    }

    while (v7 < *a2);
  }

  return result;
}

uint64_t FigMPEG2ParserSetAudioCharacteristics(uint64_t result, int a2)
{
  if (*(result + 658))
  {
    v2 = *(result + 776);
    if (v2)
    {
      *(result + 680) += 90000 * v2 / *(result + 768);
      *(result + 776) = 0;
    }
  }

  *(result + 768) = a2;
  return result;
}

uint64_t GetMinimumPTSFromAdjustmentQueue(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (*(a1 + 768))
  {
    return v1[4];
  }

  v4 = v1[3];
  result = v1[4];
  v5 = v1 + 3;
  if (result != v4)
  {
    v6 = *v1;
    if (v6)
    {
      v9 = *(v6 + 24);
      v8 = (v6 + 24);
      v7 = v9;
      v10 = v9 ^ v4;
      v11 = v4 + 0x200000000;
      if ((v4 & 0x100000000) != 0)
      {
        v11 = v4 - 0x200000000;
      }

      if ((v10 & 0x100000000) != 0)
      {
        v4 = v11;
      }

      if (v4 - v7 <= 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = v8;
      }

      return *v12;
    }

    else
    {
      v13 = 90000 * *(a1 + 808) / *(a1 + 804) + result;
      v14 = v13 & 0x1FFFFFFFFLL;
      v15 = v13 ^ v4;
      v16 = v4 + 0x200000000;
      if ((v4 & 0x100000000) != 0)
      {
        v16 = v4 - 0x200000000;
      }

      if ((v15 & 0x100000000) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v4;
      }

      if (v17 - v14 <= 0)
      {
        return v4;
      }

      else
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t FigMPEG2MoveAdjustmentQueue(uint64_t result, uint64_t a2)
{
  v2 = *(result + 728);
  if (v2)
  {
    *(v2 + 80) |= 1u;
    **(a2 + 8) = v2;
    *(*(result + 728) + 8) = *(a2 + 8);
    *(a2 + 8) = *(result + 736);
    *(result + 728) = 0;
    *(result + 736) = result + 728;
  }

  *(result + 744) = 0;
  *(result + 658) = 0;
  *(result + 776) = 0;
  *(result + 800) = 0;
  return result;
}

uint64_t FigMPEG2ParseFromQueue(uint64_t **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *v1;
    v4 = v1[1];
    v5 = *v1 ? *v1 : a1;
    v5[1] = v4;
    *v4 = v3;
    v6 = v1[2];
    if (*(v6 + 768))
    {
      break;
    }

    FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(v6, v1);
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_7:
    v1 = *a1;
    if (!*a1)
    {
      return 0;
    }
  }

  v7 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(v6, v1);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_10:
  v8 = v7;
  while (1)
  {
    v9 = *a1;
    if (!*a1)
    {
      break;
    }

    v10 = *v9;
    v11 = v9[1];
    if (*v9)
    {
      v12 = *v9;
    }

    else
    {
      v12 = a1;
    }

    v12[1] = v11;
    *v11 = v10;
    FrameQueueEntryDestroy(v9);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_2_82(int a1, size_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char destination)
{

  return CMBlockBufferCopyDataBytes(v13, a2, 1uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_3_65@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  *(v2 + 736) = result;
  ++*(v2 + 744);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_67@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[83] = a2;
  v2[84] = a2;
  v2[85] = result;
  return result;
}

uint64_t CreatePesPrivateForDolby(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 48))
  {
    v3 = *(a1 + 856);
    if (v3)
    {
      v3(a1);
    }

    *(a1 + 48) = 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x1E8uLL, 0x10B0040826E28B2uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  FrameQueueEntryInit((v4 + 328));
  v5[473] = 0;
  if (v2 == 1701143347 || v2 == 1700998451)
  {
    *(v5 + 3) = 10;
    *(v5 + 9) = DolbyDoneWithFrame;
    *(a1 + 864) = DolbyFlushFrames;
  }

  else
  {
    *(v5 + 3) = 8;
  }

  result = 0;
  *v5 = v5 + 304;
  *(v5 + 2) = v5 + 314;
  *(v5 + 4) = DolbyCheckHeader;
  *(v5 + 5) = DolbyCompareHeaders;
  *(v5 + 6) = DolbyGetSamplesPerFrame;
  *(v5 + 7) = DolbyGetSampleFrequency;
  *(v5 + 8) = DolbyGetFrameSize;
  *(a1 + 840) = PesDolbyProcessData;
  *(a1 + 848) = PesDolbyCleanPrivateData;
  *(a1 + 856) = PesDolbyDeletePrivateData;
  *(a1 + 48) = v5;
  return result;
}

void DolbyFlushFrames(uint64_t *a1)
{
  v1 = a1[6];
  if (*(v1 + 384) && *(v1 + 480) >= 6 && !FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v1 + 328))
  {
    FrameQueueEntryClean(v1 + 328);
  }

  *(v1 + 480) = 0;
}

uint64_t DolbyCheckHeader(_BYTE *a1)
{
  if (*a1 != 30475)
  {
    return 0;
  }

  result = DolbyGetFrameSize(a1);
  if (result)
  {
    return DolbyGetSampleFrequency(a1) != 0;
  }

  return result;
}

uint64_t DolbyCompareHeaders(OpaqueCMBlockBuffer *a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  if (CMBlockBufferAccessDataBytes(a1, 0, 8uLL, temporaryBlock, &returnedPointerOut))
  {
    return 0;
  }

  if (DolbyGetFormatID(returnedPointerOut) == 1633889587)
  {
    if ((a2[4] ^ returnedPointerOut[4]) <= 0x3F && returnedPointerOut[5] == a2[5] && (a2[6] ^ returnedPointerOut[6]) < 0x20)
    {
      return 1;
    }
  }

  else if ((a2[5] ^ returnedPointerOut[5]) <= 7)
  {
    return 1;
  }

  return 0;
}

void PesDolbyCleanPrivateData(uint64_t a1)
{
  v1 = *(a1 + 48);
  MPEGAudioCleanPrivateData(v1);
  FrameQueueEntryClean(v1 + 328);
  *(v1 + 480) = 0;
}

void PesDolbyDeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  MPEGAudioCleanPrivateData(v2);
  FrameQueueEntryClean(v2 + 328);
  *(v2 + 480) = 0;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_0_89(OpaqueCMBlockBuffer *a1)
{
  v3 = *(v1 + 56);

  return CMBlockBufferAppendBufferReference(a1, v3, 0, 0, 0);
}

uint64_t sbcsbc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sbcsbc_detachFromDownstreamConsumer(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[6] = 0;
  }

  v5 = DerivedStorage[1];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[1] = 0;
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[2] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[3] = 0;
  }

  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[14] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcsbc_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForSampleBufferConsumer %p>", a1);
  return Mutable;
}

uint64_t sbcsbc_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"DownstreamConsumer"))
  {
    v7 = *(DerivedStorage + 40);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *a4 = v7;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t sbcsbc_applyPendingPropertiesDictionaryApplier(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = a2;
  if (CFEqual(@"sbcsbc_ItWasNull", a2))
  {
    v4 = 0;
  }

  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, v4);
  }

  return result;
}

uint64_t sbcsbc_applyPendingDeliveryArrayApplier(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionaryGetValue(a1, @"type");
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a1, @"buffer");
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {

      return v8(a2, Value);
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      FigCFDictionaryGetInt32IfPresent();
      v9 = CFDictionaryGetValue(a1, @"notificationName");
      v10 = CFDictionaryGetValue(a1, @"notificationPayload");
      v11 = CMBaseObjectGetVTable();
      v12 = *(v11 + 16);
      result = v11 + 16;
      v13 = *(v12 + 64);
      if (v13)
      {
        return v13(a2, v9, v10, 0);
      }
    }
  }

  return result;
}

void sbcsbc_downstreamTriggerCallbackAsync(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    v3(*(DerivedStorage + 128));
  }

  FigSimpleMutexUnlock();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t sbcsbc_SendSampleBuffer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  else
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"type", @"typeBuffer");
    CFDictionarySetValue(Mutable, @"buffer", a2);
    CFArrayAppendValue(*(v7 + 8), Mutable);
    CMBufferQueueEnqueue(*(v7 + 16), a2);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t sbcsbc_IsQueueAtOrAboveHighWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v4 = v3(v2);
    }

    else
    {
      v4 = 0;
    }
  }

  else if (*(DerivedStorage + 76))
  {
    CMBufferQueueGetDuration(&time1, *(DerivedStorage + 16));
    v6 = *(DerivedStorage + 64);
    v4 = CMTimeCompare(&time1, &v6) >= 0;
  }

  else
  {
    v4 = 1;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t sbcsbc_IsQueueBelowLowWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 40);
  if (!v2)
  {
    if (*(DerivedStorage + 100))
    {
      CMBufferQueueGetDuration(&time1, *(DerivedStorage + 16));
      v6 = *(DerivedStorage + 88);
      v4 = CMTimeCompare(&time1, &v6) < 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v3)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v3(v2);
LABEL_7:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t sbcsbc_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[15])
  {
    sbcsbc_InstallLowWaterTrigger_cold_1(&v12);
    v8 = v12;
  }

  else if (a2)
  {
    DerivedStorage[15] = a2;
    DerivedStorage[16] = a3;
    *a4 = DerivedStorage + 15;
    v8 = DerivedStorage[5];
    if (v8)
    {
      v9 = DerivedStorage[6];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(v8, sbcsbc_downstreamTriggerCallback, v9, DerivedStorage + 7);
      }

      v8 = 0;
    }
  }

  else
  {
    sbcsbc_InstallLowWaterTrigger_cold_2(&v13);
    v8 = v13;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t sbcsbc_RemoveLowWaterTrigger(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage + 15 == a2)
  {
    DerivedStorage[15] = 0;
    DerivedStorage[16] = 0;
    v4 = DerivedStorage[5];
    if (v4)
    {
      v5 = DerivedStorage[7];
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v6(v4, v5);
        }

        v4 = 0;
        DerivedStorage[7] = 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    sbcsbc_RemoveLowWaterTrigger_cold_1(&v8);
    v4 = v8;
  }

  FigSimpleMutexUnlock();
  return v4;
}

CMItemCount sbcsbc_GetPendingSampleBufferCount(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 40);
  if (!v2)
  {
    BufferCount = CMBufferQueueGetBufferCount(*(DerivedStorage + 16));
    goto LABEL_6;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v3)
  {
    BufferCount = v3(v2);
LABEL_6:
    v5 = BufferCount;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t sbcsbc_PostNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v9)
    {
      v10 = v9(v8, a2, a3, a4);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v11 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"type", @"typeNotification");
    CFDictionarySetValue(Mutable, @"notificationName", a2);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"notificationPayload", a3);
    }

    FigCFDictionarySetInt32();
    CFArrayAppendValue(*(v11 + 8), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v10 = 0;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t sbcsbc_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v3)
    {
      v3(v2);
    }
  }

  else
  {
    CFArrayRemoveAllValues(*(DerivedStorage + 8));
    CMBufferQueueReset(*(DerivedStorage + 16));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigStreamingAssetProgressMarkDownloadComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMarkDownloadComplete_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v22, v23, SHIDWORD(v23), v24);
  }

  else
  {
    v10 = DerivedStorage;
    v11 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v11)
    {
      v19 = v11;
      if (a1)
      {
        v20 = CFRetain(a1);
      }

      else
      {
        v20 = 0;
      }

      *v19 = v20;
      dispatch_async_f(*v10, v19, dwpm_markDownloadCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMarkDownloadComplete_cold_2(0, v12, v13, v14, v15, v16, v17, v18, v22, v23, SHIDWORD(v23), v24);
    }
  }

  return 0;
}

void dwpm_markDownloadCompleteDispatch(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 108) = 1;
  *(DerivedStorage + 56) = *(DerivedStorage + 64);
  dwpm_sendProgressNotification(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete(const void *a1, const void *a2, const void *a3, uint64_t a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete_cold_1(DerivedStorage, v11, v12, v13, v14, v15, v16, v17, v33, v34, SHIDWORD(v34), v35);
  }

  else
  {
    v18 = DerivedStorage;
    v19 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v19)
    {
      v27 = v19;
      if (a1)
      {
        v28 = CFRetain(a1);
      }

      else
      {
        v28 = 0;
      }

      *v27 = v28;
      if (a2)
      {
        v29 = CFRetain(a2);
      }

      else
      {
        v29 = 0;
      }

      v27[2] = v29;
      if (a3)
      {
        v30 = CFRetain(a3);
      }

      else
      {
        v30 = 0;
      }

      v27[3] = v30;
      v27[7] = a4;
      v31 = *a5;
      v27[10] = *(a5 + 2);
      *(v27 + 4) = v31;
      dispatch_async_f(*v18, v27, dwpm_markAlternateAndMediaSelectionCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete_cold_2(0, v20, v21, v22, v23, v24, v25, v26, v33, v34, SHIDWORD(v34), v35);
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes(const void *a1, const void *a2, const void *a3, uint64_t a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes_cold_1(DerivedStorage, v11, v12, v13, v14, v15, v16, v17, v33, v34, SHIDWORD(v34), v35);
  }

  else
  {
    v18 = DerivedStorage;
    v19 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v19)
    {
      v27 = v19;
      if (a1)
      {
        v28 = CFRetain(a1);
      }

      else
      {
        v28 = 0;
      }

      *v27 = v28;
      if (a2)
      {
        v29 = CFRetain(a2);
      }

      else
      {
        v29 = 0;
      }

      v27[2] = v29;
      if (a3)
      {
        v30 = CFRetain(a3);
      }

      else
      {
        v30 = 0;
      }

      v27[3] = v30;
      v27[7] = a4;
      v31 = *a5;
      v27[10] = *(a5 + 2);
      *(v27 + 4) = v31;
      dispatch_async_f(*v18, v27, dwpm_upadateMediaDownloadedTimeAndBytesDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes_cold_2(0, v20, v21, v22, v23, v24, v25, v26, v33, v34, SHIDWORD(v34), v35);
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v22, v23, SHIDWORD(v23), v24);
  }

  else
  {
    v10 = DerivedStorage;
    v11 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v11)
    {
      v19 = v11;
      if (a1)
      {
        v20 = CFRetain(a1);
      }

      else
      {
        v20 = 0;
      }

      *v19 = v20;
      dispatch_async_f(*v10, v19, dwpm_markInitialEstimationOfExpectedBytesAsCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete_cold_2(0, v12, v13, v14, v15, v16, v17, v18, v22, v23, SHIDWORD(v23), v24);
    }
  }

  return 0;
}

void dwpm_markInitialEstimationOfExpectedBytesAsCompleteDispatch(CFTypeRef *a1)
{
  dwpm_sendProgressNotification(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload(const void *a1, const void *a2, const void *a3, __int128 *a4, uint64_t a5, char a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload_cold_1(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v35, v36, SHIDWORD(v36), v37);
  }

  else
  {
    v20 = DerivedStorage;
    v21 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v21)
    {
      v29 = v21;
      if (a1)
      {
        v30 = CFRetain(a1);
      }

      else
      {
        v30 = 0;
      }

      *v29 = v30;
      if (a2)
      {
        v31 = CFRetain(a2);
      }

      else
      {
        v31 = 0;
      }

      *(v29 + 2) = v31;
      if (a3)
      {
        v32 = CFRetain(a3);
      }

      else
      {
        v32 = 0;
      }

      *(v29 + 3) = v32;
      *(v29 + 12) = a5;
      v33 = *a4;
      *(v29 + 15) = *(a4 + 2);
      *(v29 + 104) = v33;
      v29[128] = a6;
      dispatch_async_f(*v20, v29, dwpm_updateExpectedMediaBytesToDownloadDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload_cold_2(0, v22, v23, v24, v25, v26, v27, v28, v35, v36, SHIDWORD(v36), v37);
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, context, SHIDWORD(context), v17);
    return 0;
  }

  else
  {
    context = a1;
    *(&v17 + 1) = a2;
    *&v18 = a3;
    dispatch_sync_f(*DerivedStorage, &context, dwpm_registerAlternateAndMediaSelectionsDispatch);
    return v17;
  }
}

void dwpm_registerAlternateAndMediaSelectionsDispatch(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_1(&v10);
    goto LABEL_14;
  }

  if (!v3)
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_4(&v10);
    goto LABEL_14;
  }

  if (!v2)
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_3(&v10);
    goto LABEL_14;
  }

  v5 = DerivedStorage;
  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040A2CCCE02uLL);
  if (!v6)
  {
    if (dwpm_registerAlternateAndMediaSelectionsDispatch_cold_2(&v10))
    {
      goto LABEL_6;
    }

LABEL_14:
    v9 = v10;
    goto LABEL_9;
  }

  v6[2] = CFRetain(v3);
  v6[3] = CFRetain(v2);
  *(v6 + 56) = 1;
LABEL_6:
  v7 = FigMediaSelectionArrayCopyDescription(*(v5 + 8), v2);
  *v6 = 0;
  v8 = *(v5 + 80);
  v6[1] = v8;
  *v8 = v6;
  *(v5 + 80) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = 0;
LABEL_9:
  *(a1 + 8) = v9;
}

uint64_t FigStreamingAssetDownloadProgressMonitorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadProgressMonitorGetClassID_sRegisterFigStreamingAssetProgressMonitorBaseTypeOnce, RegisterFigStreamingAssetProgressMonitorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate(const void *a1, __CFString *a2, const __CFDictionary *a3, uint64_t a4, NSObject *a5, void *a6, CFTypeRef *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v12 = CFGetTypeID(a2), v12 != FigAssetGetTypeID()))
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_4(v24);
    return v24[0];
  }

  if (!a7)
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_3(v24);
    return v24[0];
  }

  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadProgressMonitorGetClassID_sRegisterFigStreamingAssetProgressMonitorBaseTypeOnce, RegisterFigStreamingAssetProgressMonitorBaseType);
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 8) = v15;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (FigIsItOKToLogURLs())
  {
    v16 = FPSupport_GetAssetDoNotLogURLs(a2) == 0;
  }

  else
  {
    v16 = 0;
  }

  *(DerivedStorage + 110) = v16;
  if (a4)
  {
    if (a5)
    {
      if (a6)
      {
        dispatch_retain(a5);
        *(DerivedStorage + 48) = a5;
        *(DerivedStorage + 40) = *a6;
        v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 32) = v17;
        if (!v17)
        {
          FigStreamingAssetDownloadProgressMonitorCreate_cold_2(v24);
          return v24[0];
        }
      }
    }
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 24) = Value;
  }

  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 80) = DerivedStorage + 72;
  v19 = dispatch_queue_create("com.apple.coremedia.figstreamingassetdownloadprogressmonitor.state", 0);
  *DerivedStorage = v19;
  if (!v19)
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_1(v24);
    return v24[0];
  }

  if (dword_1EAF171E8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0;
  *a7 = 0;
  return v13;
}

void dworch_sendProgressNotificationOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dworch_sendProgressNotificationOnCallbackQueue_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), vars0);
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {
      v10(a1[11], *a1, a1[12], a1[7]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  free(a1);
}

void *dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(CMBaseObjectGetDerivedStorage() + 72); i; i = *i)
  {
    if (FigCFEqual() && FigCFEqual())
    {
      break;
    }
  }

  return i;
}

uint64_t RegisterFigStreamingAssetProgressMonitorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t dwpm_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  context = a1;
  dispatch_sync_f(*DerivedStorage, &context, dwpm_invalidateDispatch);
  return v5;
}

void dwpm_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dwpm_invalidateGutsOnQueue(a1);
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t dwpm_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  v13 = a3;
  dispatch_sync_f(*DerivedStorage, context, dwpm_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v11;
  }

  return result;
}

CFNumberRef dwpm_copyPropertyDispatch(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dwpm_copyPropertyDispatch_cold_1(&v7);
    result = 0;
    v6 = v7;
  }

  else
  {
    v4 = DerivedStorage;
    if (CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
    {
      result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v4 + 64));
      if (result)
      {
        v6 = 0;
      }

      else
      {
        dwpm_copyPropertyDispatch_cold_2(&v8);
        result = 0;
        v6 = v8;
      }
    }

    else
    {
      result = 0;
      v6 = -12784;
    }
  }

  *(a1 + 24) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_90(uint64_t *a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigVTTSpanCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTSpanCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTSpan_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTSpan_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFCopyCompactDescription();
  cf = 0;
  FigVTTNodeCopyValue(a1, &cf);
  v4 = *MEMORY[0x1E695E480];
  v5 = *(DerivedStorage + 24);
  if (!v5)
  {
    v5 = &stru_1F0B1AFB8;
  }

  if (cf)
  {
    v6 = CFStringCreateWithFormat(v4, 0, @"span: %@ %@ text=%@", v5, v3, cf);
  }

  else
  {
    v6 = CFStringCreateWithFormat(v4, 0, @"span: %@ %@", v5, v3);
  }

  v7 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

uint64_t figVTTSpan_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figVTTSpan_CopyProperty_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    figVTTSpan_CopyProperty_cold_1(&v11);
    return v11;
  }

  v7 = DerivedStorage;
  if (!CFEqual(@"WebVTTSpanNode_StyleReferences", a2))
  {
    if (!CFEqual(@"WebVTTSpanNode_MarkupElement", a2))
    {
      return 4294954512;
    }

    v8 = *(v7 + 24);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = CFRetain(v8);
LABEL_9:
  result = 0;
  *a4 = v9;
  return result;
}

double figVTTSpan_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(&v12);
    return result;
  }

  if (!a2)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(&v12);
    return result;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"WebVTTSpanNode_StyleReferences", a2))
  {
    if (!a3 || (v8 = CFGetTypeID(a3), v8 != CFArrayGetTypeID()))
    {
      figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(&v12);
      return result;
    }

    v9 = *(v7 + 16);
    *(v7 + 16) = a3;
    goto LABEL_7;
  }

  if (CFEqual(@"WebVTTSpanNode_MarkupElement", a2))
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFStringGetTypeID())
      {
        figVTTSpan_SetProperty_cold_2(&v12);
        return result;
      }

      v9 = *(v7 + 24);
      *(v7 + 24) = a3;
LABEL_7:
      CFRetain(a3);
      if (!v9)
      {
        return result;
      }

      goto LABEL_8;
    }

    v9 = *(v7 + 24);
    *(v7 + 24) = 0;
    if (v9)
    {
LABEL_8:
      CFRelease(v9);
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954512, "(Fig)", 128, v3);
  }

  return result;
}

uint64_t figVTTSpan_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 5;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTSpan_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTSpan_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTSpan_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTSpan_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t RegisterFigAggregateVideoDestinationType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAggregateVideoDestinationCreate(const __CFAllocator *a1, const __CFArray *a2, const void *a3, const opaqueCMFormatDescription *a4, uint64_t a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  tagCollection[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a7)
  {
    v23 = 1942;
LABEL_36:
    FigAggregateVideoDestinationCreate_cold_1(v23, tagCollection);
    return LODWORD(tagCollection[0]);
  }

  if (!a3)
  {
    v23 = 1943;
    goto LABEL_36;
  }

  if (!a4)
  {
    v23 = 1944;
    goto LABEL_36;
  }

  if (CMFormatDescriptionGetMediaType(a4) != 1986618469)
  {
    v23 = 1947;
    goto LABEL_36;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType);
  updated = CMDerivedObjectCreate();
  if (updated)
  {
    return updated;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (a6)
  {
    Value = CFDictionaryGetValue(a6, @"LoggingIdentifier");
    if (Value)
    {
      CFStringGetCString(Value, (DerivedStorage + 8), 32, 0x600u);
    }
  }

  *DerivedStorage = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = CFRetain(a3);
  *(DerivedStorage + 40) = 1;
  *(DerivedStorage + 48) = FigFormatDescriptionRetain();
  if (VTIsStereoMVHEVCDecodeSupported())
  {
    CMVideoFormatDescriptionCopyTagCollectionArray(a4, (DerivedStorage + 64));
  }

  tagCollection[0] = 0;
  *cf = 0;
  FigTagCollectionFromFormatDescriptionExtensions = FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a4, cf);
  if (FigTagCollectionFromFormatDescriptionExtensions)
  {
    v18 = FigTagCollectionFromFormatDescriptionExtensions;
  }

  else
  {
    v17 = *cf;
    FigGetAllocatorForMedia();
    if (v17)
    {
      FigTagCollectionCreateMutableCopy();
    }

    else
    {
      FigTagCollectionCreateMutable();
    }

    if (tagCollection[0])
    {
      v18 = CMTagCollectionAddTag(tagCollection[0], *MEMORY[0x1E6963150]);
      v19 = tagCollection[0];
      if (v18)
      {
        if (!tagCollection[0])
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      *(DerivedStorage + 88) = tagCollection[0];
      tagCollection[0] = 0;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
      v18 = v24;
      v19 = tagCollection[0];
      if (tagCollection[0])
      {
LABEL_18:
        CFRelease(v19);
      }
    }
  }

LABEL_20:
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (!v18)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 72) = Mutable;
    if (!Mutable)
    {
      return 4294948255;
    }

    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        updated = favd_UpdateImageQueuesToMatchOutputsArray(0, a5, a2);
        if (updated)
        {
          return updated;
        }
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
    *a7 = 0;
  }

  return v18;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate(const __CFAllocator *a1, const __CFArray *a2, const void *a3, const opaqueCMFormatDescription *a4, uint64_t a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_4(v33);
    return v33[0];
  }

  if (!a7)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_3(v33);
    return v33[0];
  }

  if (!a4)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_2(v33);
    return v33[0];
  }

  if (CMFormatDescriptionGetMediaType(a4) != 1835365473)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_1(v33);
    return v33[0];
  }

  v32 = a7;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType);
  v14 = CMDerivedObjectCreate();
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 40) = 0;
    if (a6)
    {
      Value = CFDictionaryGetValue(a6, @"LoggingIdentifier");
      if (Value)
      {
        CFStringGetCString(Value, (DerivedStorage + 40), 32, 0x600u);
      }
    }

    *DerivedStorage = FigSimpleMutexCreate();
    *(DerivedStorage + 8) = CFRetain(a3);
    *(DerivedStorage + 16) = 1;
    *(DerivedStorage + 24) = FigFormatDescriptionRetain();
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 32) = Mutable;
    if (Mutable)
    {
      v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v19 = 0;
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_17:
      for (i = 0; v19 < i; i = CFArrayGetCount(a2))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == FigVideoTargetGetTypeID())
        {
          MediaSubType = CMFormatDescriptionGetMediaSubType(a4);
          if (FPSupport_fvtSupportsMetadataTrack(ValueAtIndex, MediaSubType, v23, v24, v25, v26, v27, v28))
          {
            CFArrayAppendValue(v18, ValueAtIndex);
          }
        }

        ++v19;
        if (!a2)
        {
          goto LABEL_17;
        }

LABEL_16:
        ;
      }

      if (v18 && CFArrayGetCount(v18))
      {
        favddq_UpdateDataQueuesToMatchOutputsArray(0, a5, v18);
      }

      if (dword_1EAF17228)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *v32 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      return 0;
    }

    else
    {
      return 4294948255;
    }
  }

  return v14;
}

__CFString *favd_createDebugDescription(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAggregateVideoDestination %p retainCount: %ld ", a1, v4);
  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        theArray = 0;
        favd_copyImageQueuesForOutput(a1, ValueAtIndex, &theArray);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == FigVideoTargetGetTypeID())
        {
          CFStringAppendFormat(Mutable, 0, @"FVT:%p FIQ:", ValueAtIndex);
          for (i = 0; ; ++i)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (i >= Count)
            {
              break;
            }

            v12 = CFArrayGetValueAtIndex(theArray, i);
            CFStringAppendFormat(Mutable, 0, @"%p ", v12);
          }
        }

        else
        {
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 == FigVisualContextGetTypeID(v13, v14))
          {
            v15 = theArray;
            if (theArray)
            {
              v15 = CFArrayGetCount(theArray);
              if (v15)
              {
                v15 = CFArrayGetValueAtIndex(theArray, 0);
              }
            }

            CFStringAppendFormat(Mutable, 0, @"FVC:%p FIQ:%p ", ValueAtIndex, v15);
          }

          else
          {
            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 == CAImageQueueGetTypeID())
            {
              v17 = theArray;
              if (theArray)
              {
                v17 = CFArrayGetCount(theArray);
                if (v17)
                {
                  v17 = CFArrayGetValueAtIndex(theArray, 0);
                }
              }

              CFStringAppendFormat(Mutable, 0, @"CA:%p FIQ:%p ", ValueAtIndex, v17);
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFStringAppendFormat(Mutable, 0, @">");
    CFRelease(v6);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @">");
  }

  return Mutable;
}