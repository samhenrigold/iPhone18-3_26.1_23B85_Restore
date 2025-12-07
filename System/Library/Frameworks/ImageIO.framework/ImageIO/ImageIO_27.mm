uint64_t TIFFWriteCheck(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 12))
  {
    TIFFErrorExtR(a1, a3, "File not open for writing");
    return 0;
  }

  if (((*(a1 + 16) >> 10) & 1) != a2)
  {
    if (a2)
    {
      TIFFErrorExtR(a1, a3, "Can not write tiles to a striped image");
    }

    else
    {
      TIFFErrorExtR(a1, a3, "Can not write scanlines to a tiled image");
    }

    return 0;
  }

  _TIFFFillStriles(a1);
  if ((*(a1 + 72) & 2) == 0)
  {
    TIFFErrorExtR(a1, a3, "Must set ImageWidth before writing data");
    return 0;
  }

  if (!*(a1 + 232) && !TIFFSetupStrips(a1))
  {
    *(a1 + 228) = 0;
    TIFFErrorExtR(a1, a3, "No space for %s arrays");
    return 0;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    result = _cg_TIFFTileSize(a1, v5, v6, v7, v8, v9, v10, v11);
    *(a1 + 936) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 936) = -1;
  }

  result = _cg_TIFFScanlineSize(a1, v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 1104) = result;
  if (result)
  {
    v13 = *(a1 + 16);
    *(a1 + 16) = v13 | 0x40;
    if (!*(a1 + 256) || *(a1 + 264) || *(a1 + 258) || *(a1 + 272) || !*(a1 + 288) || *(a1 + 296) || *(a1 + 290))
    {
      return 1;
    }

    result = 1;
    if (!*(a1 + 304) && (v13 & 8) == 0)
    {
      TIFFForceStrileArrayWriting(a1);
      return 1;
    }
  }

  return result;
}

uint64_t TIFFWriteBufferSetup(uint64_t a1, uint64_t a2, uint64_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = size;
  v9 = a2;
  v11 = *(a1 + 1120);
  if (v11)
  {
    if ((*(a1 + 17) & 2) != 0)
    {
      free(v11);
      *(a1 + 16) &= ~0x200u;
    }

    *(a1 + 1120) = 0;
  }

  if (v8 == -1)
  {
    if ((*(a1 + 17) & 4) != 0)
    {
      v13 = *(a1 + 936);
    }

    else
    {
      v13 = _cg_TIFFStripSize(a1, a2, size, a4, a5, a6, a7, a8);
    }

    v14 = v13 / 10;
    if (v13 >= ((v13 / 10) ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 0;
    }

    v15 = v14 + v13;
    if (v15 <= 0x2000)
    {
      v8 = 0x2000;
    }

    else
    {
      v8 = v15;
    }
  }

  else if (v9)
  {
    v12 = *(a1 + 16) & 0xFFFFFDFF;
LABEL_18:
    *(a1 + 1120) = v9;
    *(a1 + 1128) = v8;
    *(a1 + 1160) = 0;
    *(a1 + 1152) = v9;
    result = 1;
    *(a1 + 16) = v12 | 0x10;
    return result;
  }

  v16 = malloc_type_malloc(v8, 0xE1B8167FuLL);
  if (v16)
  {
    v9 = v16;
    v12 = *(a1 + 16) | 0x200;
    goto LABEL_18;
  }

  TIFFErrorExtR(a1, "TIFFWriteBufferSetup", "No space for output buffer");
  return 0;
}

uint64_t TIFFGrowStrips(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 170) != 1)
  {
    TIFFGrowStrips_cold_1();
  }

  v4 = malloc_type_realloc(*(a1 + 232), 8 * (*(a1 + 228) + 1), 0x100004000313F17uLL);
  v5 = malloc_type_realloc(*(a1 + 240), 8 * (*(a1 + 228) + 1), 0x100004000313F17uLL);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v4)
    {
      free(v4);
    }

    if (v6)
    {
      free(v6);
    }

    *(a1 + 228) = 0;
    TIFFErrorExtR(a1, a2, "No space to expand strip arrays");
    return 0;
  }

  else
  {
    *(a1 + 232) = v4;
    *(a1 + 240) = v5;
    _TIFFmemset(&v4[8 * *(a1 + 228)], 0, 8uLL);
    _TIFFmemset((*(a1 + 240) + 8 * *(a1 + 228)), 0, 8uLL);
    ++*(a1 + 228);
    *(a1 + 16) |= 8u;
    return 1;
  }
}

uint64_t _TIFFReserveLargeEnoughWriteBuffer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 240) + 8 * a2);
  if (!v8)
  {
    return 1;
  }

  if (*(a1 + 1128) > v8 + 5)
  {
    return 1;
  }

  result = TIFFWriteBufferSetup(a1, 0, (v8 + 1028) & 0xFFFFFFFFFFFFFC00, a4, a5, a6, a7, a8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TIFFAppendToStrip(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 888);
  v8 = a2;
  if (v7)
  {
    v9 = *(a1 + 232);
    if (*(v9 + 8 * a2))
    {
      v10 = -1;
      goto LABEL_15;
    }

    v11 = 0;
    v12 = 1;
  }

  else
  {
    *(a1 + 896) = 0;
    v11 = *(*(a1 + 232) + 8 * a2);
    v12 = v11 == 0;
  }

  if (!*(a1 + 228))
  {
    TIFFAppendToStrip_cold_1();
  }

  v13 = *(*(a1 + 240) + 8 * v8);
  if (v13 < a4)
  {
    v12 = 1;
  }

  if (!v13 || v12)
  {
    v15 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
    v9 = *(a1 + 232);
    v14 = *(a1 + 240);
    *(v9 + 8 * v8) = v15;
    *(a1 + 16) |= 0x200000u;
  }

  else
  {
    if (!_TIFFSeekOK(a1, v11))
    {
      TIFFErrorExtR(a1, "TIFFAppendToStrip", "Seek error at scanline %lu");
      return 0;
    }

    v9 = *(a1 + 232);
    v14 = *(a1 + 240);
    *(a1 + 896) = *(v14 + 8 * v8) + *(v9 + 8 * v8);
    v15 = *(v9 + 8 * v8);
  }

  *(a1 + 888) = v15;
  v10 = *(v14 + 8 * v8);
  *(v14 + 8 * v8) = 0;
  v7 = *(a1 + 888);
LABEL_15:
  if ((*(a1 + 18) & 8) != 0)
  {
    v16 = v7 + a4;
  }

  else
  {
    v16 = (v7 + a4);
  }

  if (v16 < v7 || v16 < a4)
  {
LABEL_22:
    TIFFErrorExtR(a1, "TIFFAppendToStrip", "Maximum TIFF file size exceeded");
    return 0;
  }

  v18 = *(a1 + 896);
  if (v18)
  {
    if (v16 > v18)
    {
      v19 = *(*(a1 + 240) + 8 * v8);
      if (v19)
      {
        if (v19 >= 0x100000)
        {
          v20 = 0x100000;
        }

        else
        {
          v20 = *(*(a1 + 240) + 8 * v8);
        }

        v30 = *(v9 + 8 * v8);
        v21 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
        v22 = v21;
        if ((*(a1 + 18) & 8) != 0 || !((v19 + a4 + v21) >> 32))
        {
          v23 = malloc_type_malloc(v20, 0x63C634D6uLL);
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            *(a1 + 16) |= 0x200000u;
            v26 = *(a1 + 240);
            *(*(a1 + 232) + 8 * v8) = v22;
            *(v26 + 8 * v8) = 0;
            while (1)
            {
              if (!_TIFFSeekOK(a1, v30 + v25))
              {
LABEL_47:
                TIFFErrorExtR(a1, "TIFFAppendToStrip", "Seek error");
                goto LABEL_50;
              }

              if ((*(a1 + 1208))(*(a1 + 1200), v24, v20) != v20)
              {
                TIFFErrorExtR(a1, "TIFFAppendToStrip", "Cannot read");
                goto LABEL_50;
              }

              if (!_TIFFSeekOK(a1, v22 + v25))
              {
                goto LABEL_47;
              }

              if ((*(a1 + 1216))(*(a1 + 1200), v24, v20) != v20)
              {
                break;
              }

              *(*(a1 + 240) + 8 * v8) += v20;
              v25 += v20;
              if (v19 == v25)
              {
                free(v24);
                v16 = v22 + a4 + v25;
                goto LABEL_39;
              }
            }

            TIFFErrorExtR(a1, "TIFFAppendToStrip", "Cannot write");
LABEL_50:
            free(v24);
          }

          else
          {
            TIFFErrorExtR(a1, "TIFFAppendToStrip", "No space for output buffer");
          }

          return 0;
        }

        goto LABEL_22;
      }
    }
  }

LABEL_39:
  if ((*(a1 + 1216))(*(a1 + 1200), a3, a4) != a4)
  {
    TIFFErrorExtR(a1, "TIFFAppendToStrip", "Write error at scanline %lu");
    return 0;
  }

  *(a1 + 888) = v16;
  v27 = *(a1 + 240);
  v28 = *(v27 + 8 * v8) + a4;
  *(v27 + 8 * v8) = v28;
  if (v28 != v10)
  {
    *(a1 + 16) |= 0x200000u;
  }

  return 1;
}

uint64_t _cg_TIFFWriteTile(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  if (!TIFFCheckTile(a1, a3, a4, a5, a6))
  {
    return -1;
  }

  v12 = _cg_TIFFComputeTile(a1, v9, v8, v7, v6);

  return _cg_TIFFWriteEncodedTile(a1, v12, a2, -1, v13, v14, v15, v16);
}

uint64_t _cg_TIFFWriteEncodedTile(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 16) & 0x40) == 0 && !TIFFWriteCheck(a1, 1, "TIFFWriteEncodedTile"))
  {
    return -1;
  }

  if (*(a1 + 228) <= a2)
  {
    TIFFErrorExtR(a1, "TIFFWriteEncodedTile", "Tile %lu out of range, max %lu");
    return -1;
  }

  v12 = *(a1 + 16);
  if ((v12 & 0x10) == 0 || !*(a1 + 1120))
  {
    v13 = -1;
    if (!TIFFWriteBufferSetup(a1, 0, -1, a4, a5, a6, a7, a8))
    {
      return v13;
    }

    v12 = *(a1 + 16);
  }

  *(a1 + 16) = v12 | 0x100000;
  *(a1 + 932) = a2;
  *(a1 + 888) = 0;
  if (!_TIFFReserveLargeEnoughWriteBuffer(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  *(a1 + 1160) = 0;
  *(a1 + 1152) = *(a1 + 1120);
  v14 = *(a1 + 92);
  v15 = *(a1 + 104);
  if (v14 >= -v15 || (v16 = v14 - 1, v17 = __CFADD__(v16, v15), v18 = v16 + v15, v17) || (*(a1 + 876) = a2 % (v18 / v15) * v15, v19 = *(a1 + 88), v20 = *(a1 + 100), v19 >= -v20) || (v21 = v19 - 1, v17 = __CFADD__(v21, v20), v22 = v21 + v20, v17))
  {
    TIFFErrorExtR(a1, "TIFFWriteEncodedTile", "Zero tiles");
    return -1;
  }

  *(a1 + 928) = a2 % (v22 / v20) * v20;
  v24 = *(a1 + 16);
  if ((v24 & 0x20) == 0)
  {
    if (!(*(a1 + 976))(a1))
    {
      return -1;
    }

    v24 = *(a1 + 16) | 0x20;
  }

  *(a1 + 16) = v24 & 0xFFFFEFFF;
  if (*(a1 + 936) >= a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = *(a1 + 936);
  }

  if (a4 >= 1)
  {
    v13 = v25;
  }

  else
  {
    v13 = *(a1 + 936);
  }

  if (*(a1 + 120) != 1)
  {
    v26 = a2 / *(a1 + 224);
    if ((*(a1 + 992))(a1, v26))
    {
      (*(a1 + 1248))(a1, a3, v13);
      if ((*(a1 + 1048))(a1, a3, v13, v26))
      {
        if ((*(a1 + 1000))(a1))
        {
          if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
          {
            TIFFReverseBits(*(a1 + 1120), *(a1 + 1160));
          }

          v27 = *(a1 + 1160);
          if (v27 < 1 || TIFFAppendToStrip(a1, a2, *(a1 + 1120), v27))
          {
            *(a1 + 1160) = 0;
            *(a1 + 1152) = *(a1 + 1120);
            return v13;
          }
        }
      }
    }

    return -1;
  }

  (*(a1 + 1248))(a1, a3, v13);
  if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
  {
    TIFFReverseBits(a3, v13);
  }

  if (v13 >= 1 && !TIFFAppendToStrip(a1, a2, a3, v13))
  {
    return -1;
  }

  return v13;
}

uint64_t TIFFSetupStrips(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((*(a1 + 17) & 4) != 0)
  {
    if ((v2 & 4) == 0 || *(a1 + 92))
    {
      v3 = _cg_TIFFNumberOfTiles(a1);
      goto LABEL_9;
    }
  }

  else if ((v2 & 0x20000) == 0 || *(a1 + 92))
  {
    v3 = _cg_TIFFNumberOfStrips(a1);
    goto LABEL_9;
  }

  v3 = *(a1 + 130);
LABEL_9:
  *(a1 + 224) = v3;
  *(a1 + 228) = v3;
  if ((*(a1 + 18) & 8) != 0)
  {
    v4 = 0x10000000;
  }

  else
  {
    v4 = 0x20000000;
  }

  if (v3 >= v4)
  {
    TIFFErrorExtR(a1, "TIFFSetupStrips", "Too large Strip/Tile Offsets/ByteCounts arrays");
    return 0;
  }

  else
  {
    if (*(a1 + 170) == 2)
    {
      *(a1 + 224) = v3 / *(a1 + 130);
    }

    *(a1 + 232) = _TIFFCheckMalloc(a1, v3, 8, "for StripOffsets array");
    v5 = _TIFFCheckMalloc(a1, *(a1 + 228), 8, "for StripByteCounts array");
    result = 0;
    *(a1 + 240) = v5;
    if (*(a1 + 232))
    {
      if (v5)
      {
        _TIFFmemset(*(a1 + 232), 0, 8 * *(a1 + 228));
        _TIFFmemset(*(a1 + 240), 0, 8 * *(a1 + 228));
        *(a1 + 72) |= 0x3000000u;
        return 1;
      }
    }
  }

  return result;
}

uint64_t TIFFFlushData1(uint64_t a1)
{
  v1 = *(a1 + 1160);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if ((v3 & 0x100000) == 0)
  {
    return 1;
  }

  if ((v3 & (*(a1 + 126) | 0x100)) == 0)
  {
    TIFFReverseBits(*(a1 + 1120), v1);
    v3 = *(a1 + 16);
    v1 = *(a1 + 1160);
  }

  v5 = (v3 & 0x400) == 0;
  v6 = 932;
  if (v5)
  {
    v6 = 884;
  }

  result = TIFFAppendToStrip(a1, *(a1 + v6), *(a1 + 1120), v1);
  *(a1 + 1160) = 0;
  *(a1 + 1152) = *(a1 + 1120);
  return result;
}

uint64_t IIO_Reader_PSD::initThumbnail(IIO_Reader *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = IIO_Reader::osType(a1);
  PSDReadPlugin::PSDReadPlugin(v10, a2, v5, 0, v7);
  IIOReadPlugin::setDecodeMode(v10, 2);
  IIOReadPlugin::setDestMaxPixelSize(v10, a4);
  inited = PSDReadPlugin::initThumbnail(v10);
  PSDReadPlugin::~PSDReadPlugin(v10);
  return inited;
}

void sub_185FFC688(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FFC668);
}

uint64_t CreateMD5FromIIMBlock(void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_MD5_Init(&v7);
  CC_MD5_Update(&v7, a1, a2);
  return CC_MD5_Final(a3, &v7);
}

__CFString *CreateMD5StringFromIIMBlock(void *a1, CC_LONG a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = 0;
  v6 = 0;
  CreateMD5FromIIMBlock(a1, a2, v5);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 16);
  if (Mutable)
  {
    for (i = 0; i != 16; ++i)
    {
      CFStringAppendFormat(Mutable, 0, @"%02X", v5[i]);
    }
  }

  return Mutable;
}

uint64_t SizeOfIPTCData(IIODictionary *a1)
{
  context = 0;
  if (a1 && (v1 = *(a1 + 1)) != 0 && (CFDictionaryApplyFunction(v1, ApplierSizeOfIPTC, &context), context))
  {
    return context + 15;
  }

  else
  {
    return 0;
  }
}

void ApplierSizeOfIPTC(const __CFString *a1, const __CFString *cf, void *a3)
{
  if (a1 && cf && a3)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      for (i = &byte_1E6F08B48; CFStringCompare(a1, **(i - 2), 0); i += 24)
      {
        if (!*i)
        {
          return;
        }
      }

      SizeOfIPTCEntry(cf, a3);
    }

    else
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFArrayGetTypeID())
      {
        for (j = &byte_1E6F08B40; CFStringCompare(a1, **(j - 1), 0); j += 24)
        {
          if (!j[8])
          {
            return;
          }
        }

        if (*j == 1)
        {
          v14.length = CFArrayGetCount(cf);
          v14.location = 0;

          CFArrayApplyFunction(cf, v14, SizeOfIPTCEntry, a3);
        }
      }

      else
      {
        v12 = CFGetTypeID(cf);
        v13 = CFCopyTypeIDDescription(v12);
        memset(v16, 0, sizeof(v16));
        IIOString::IIOString(v16, a1);
        memset(v15, 0, sizeof(v15));
        IIOString::IIOString(v15, v13);
        IIOString::utf8String(v16);
        IIOString::utf8String(v15);
        _cg_jpeg_mem_term("ApplierSizeOfIPTC", 188, "*** ApplierSizeOfIPTC - skipping '%s' -- '%s'\n");
        CFRelease(v13);
        IIOString::~IIOString(v15);
        IIOString::~IIOString(v16);
      }
    }
  }
}

void sub_185FFCA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void WriteIPTCData(CFDictionaryRef *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0x47251B03005A011CLL;
      *(a2 + 2) = 540;
      *(a2 + 6) = 2;
      a2[14] = 2;
      v2[0] = 0;
      v2[1] = a2 + 15;
      CFDictionaryApplyFunction(a1[1], ApplierWriteIPTC, v2);
    }
  }
}

void ApplierWriteIPTC(const __CFString *a1, const __CFString *cf, char *a3)
{
  if (!a1 || !cf)
  {
    return;
  }

  v6 = CFGetTypeID(cf);
  if (CFStringGetTypeID() != v6)
  {
    if (CFArrayGetTypeID() == v6)
    {
      for (i = &byte_1E6F08B40; CFStringCompare(a1, **(i - 1), 0); i += 24)
      {
        if (!i[8])
        {
          return;
        }
      }
    }

    else
    {
      if (CFDictionaryGetTypeID() != v6)
      {
        if (v6 != CFNumberGetTypeID())
        {

          _cg_jpeg_mem_term("ApplierWriteIPTC", 289, "*** ApplierWriteIPTC - does not handle non-strings / non-arrays\n");
        }

        return;
      }

      for (i = &byte_1E6F08B40; CFStringCompare(a1, **(i - 1), 0); i += 24)
      {
        if (!i[8])
        {
          return;
        }
      }
    }

    if (*i == 1)
    {
      *a3 = *(i - 16);
      v12.length = CFArrayGetCount(cf);
      v12.location = 0;

      CFArrayApplyFunction(cf, v12, WriteIPTCEntry, a3);
    }

    return;
  }

  for (j = &iptcInfo; CFStringCompare(a1, **(j + 1), 0); j += 24)
  {
    if (!j[24])
    {
      return;
    }
  }

  *a3 = *j;

  WriteIPTCEntry(cf, a3);
}

void ReadIPTCProps(IIODictionary *a1, _BYTE *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >= 6)
  {
    v5 = 0;
    v6 = 0;
    alloc = *MEMORY[0x1E695E480];
    v7 = 5;
    do
    {
      v8 = &a2[v5];
      if (a2[v5] != 28)
      {
        break;
      }

      v9 = v8[1];
      if ((v9 - 1) > 1)
      {
        break;
      }

      v10 = v8[2];
      v11 = __rev16(*(v8 + 3));
      v12 = v11 + v7 <= v3 ? v11 : v3 - v7;
      if (v9 == 1 && (v10 == 90 ? (v13 = v12 == 3) : (v13 = 0), v13))
      {
        if (a2[v7] != 27)
        {
          goto LABEL_44;
        }

        v14 = v8[6];
        if (v14 == 47)
        {
          v15 = v8[7] == 65;
          v16 = 513;
        }

        else
        {
          if (v14 != 37)
          {
            goto LABEL_44;
          }

          v15 = v8[7] == 71;
          v16 = 134217984;
        }

        if (v15)
        {
          v6 = v16;
        }
      }

      else
      {
        if (v9 == 1)
        {
          goto LABEL_44;
        }

        if (v10 != 25 || v12 != 6 || v5 + 12 > 6 || (v17 = a2[v7], v17 < 0x35) || ((v18 = *(v8 + 6), v19 = *(v8 + 5), v18 == 1635013408) ? (v20 = v19 == 114) : (v20 = 0), !v20))
        {
          v21 = 3;
          v22 = &byte_1E6F08B40;
          while (1)
          {
            if (v21 == v10)
            {
              v23 = strnlen(&a2[v7], v12);
              if (v12 >= v23)
              {
                v24 = v23;
              }

              else
              {
                v24 = v12;
              }

              v25 = CFStringCreateWithBytes(alloc, &a2[v7], v24, v6, 1u);
              if (!v25)
              {
LABEL_40:
                v3 = a3;
                goto LABEL_44;
              }

              v26 = v25;
              v27 = *(v22 - 1);
              if (*v22 == 1)
              {
                ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a1, *v27, @"{IPTC}");
                if (!ObjectForKeyGroup)
                {
                  ObjectForKeyGroup = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
                  IIODictionary::setObjectForKeyGroup(a1, ObjectForKeyGroup, *v27, @"{IPTC}");
                  CFRelease(ObjectForKeyGroup);
                }

                memset(v34, 0, sizeof(v34));
                IIOArray::IIOArray(v34, ObjectForKeyGroup);
                IIOArray::addObject(v34, v26);
                IIOArray::~IIOArray(v34);
              }

              else
              {
                IIODictionary::setObjectForKeyGroup(a1, v25, *v27, @"{IPTC}");
              }

              CFRelease(v26);
            }

            v21 = v22[8];
            v22 += 24;
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }

        IIONumber::IIONumber(v34, v17 - 48);
        IIODictionary::setObjectForKeyGroup(a1, v34, @"StarRating", @"{IPTC}");
        IIONumber::~IIONumber(v34);
      }

LABEL_44:
      v5 = v12 + v7;
      v7 += v12 + 5;
    }

    while (v7 < v3);
  }

  MD5StringFromIIMBlock = CreateMD5StringFromIIMBlock(a2, v3);
  if (MD5StringFromIIMBlock)
  {
    v30 = MD5StringFromIIMBlock;
    IIODictionary::setObjectForKeyGroup(a1, MD5StringFromIIMBlock, @"iptcComputedMD5", @"{IPTC}");
    CFRelease(v30);
  }
}

void sub_185FFCF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CGImageMetadata *CreateMetadataFromIPTCDatabuffer(_BYTE *a1, unint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7);
  ReadIPTCProps(v7, a1, a2);
  v4 = CGImageMetadataCreateFromLegacyProps(v7);
  v5 = v4;
  if (v4)
  {
    CGImageMetadataSetValueWithPath(v4, 0, @"iio:hasIIM", *MEMORY[0x1E695E4D0]);
  }

  IIODictionary::~IIODictionary(v7);
  return v5;
}

void sub_185FFD004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImagePluginReadRawIPTCProps(__CFDictionary *a1, _BYTE *a2, unint64_t a3)
{
  IIOInitDebugFlags(a1, a2);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawIPTCProps", 0, 0, -1, 0);
  }

  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a1);
  ReadIPTCProps(v6, a2, a3);
  IIODictionary::~IIODictionary(v6);
}

void sub_185FFD0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

char *CreateIPTCDataFromProperties(char a1, IIODictionary *a2, unint64_t *a3)
{
  if (a2)
  {
    v6 = SizeOfIPTCData(a2);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    return 0;
  }

LABEL_7:
  v8 = v6 + (v6 & 1);
  v9 = malloc_type_calloc(v8 + 54, 1uLL, 0x100004077774924uLL);
  v7 = v9;
  if (v9)
  {
    *(v9 + 4) = 67390793;
    *v9 = *"Photoshop 3.0";
    *(v9 + 12) = bswap32(v6) >> 16;
    WriteIPTCData(a2, v9 + 26);
    IIMHashArrayForIIMBlock = CreateIIMHashArrayForIIMBlock(v7 + 26, v6);
    v11 = &v7[v8 + 26];
    if (IIMHashArrayForIIMBlock)
    {
      CreateIPTCDataFromProperties(v11, IIMHashArrayForIIMBlock);
      if (!a3)
      {
        return v7;
      }

      goto LABEL_11;
    }

    *(v11 + 20) = 0;
    *(v11 + 12) = 0;
  }

  if (a3)
  {
LABEL_11:
    *a3 = v8 + 54;
  }

  return v7;
}

uint64_t SizeOfIPTCEntry(const __CFString *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7.length = CFStringGetLength(a1);
    usedBufLen = 0;
    v7.location = 0;
    result = CFStringGetBytes(a1, v7, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
    if (usedBufLen)
    {
      *a2 += usedBufLen + 5;
    }
  }

  return result;
}

uint64_t WriteIPTCEntry(const __CFString *a1, _BYTE **a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v8.location = 0;
    v8.length = Length;
    result = CFStringGetBytes(a1, v8, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
    if (usedBufLen)
    {
      *a2[1] = 28;
      a2[1][1] = 2;
      a2[1][2] = *a2;
      a2[1][3] = BYTE1(usedBufLen);
      a2[1][4] = usedBufLen;
      v9.location = 0;
      v9.length = Length;
      result = CFStringGetBytes(a1, v9, 0x8000100u, 0x3Fu, 0, a2[1] + 5, 0xFFFFLL, 0);
      a2[1] += usedBufLen + 5;
    }
  }

  return result;
}

uint64_t RGBE_ReadHeader(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
    *(a4 + 4) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(a4 + 20) = _D0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v25 = 0;
  if (!fgets(v26, 128, a1))
  {
    goto LABEL_51;
  }

  if (!a4 || v26[0] != 35 || v26[1] != 63)
  {
    goto LABEL_15;
  }

  v12 = 0;
  *a4 |= 1u;
  v13 = a4 + 4;
  v14 = MEMORY[0x1E69E9830];
  do
  {
    v15 = v26[v12 + 2];
    if (!v26[v12 + 2])
    {
      break;
    }

    if ((v15 & 0x80000000) != 0)
    {
      if (__maskrune(v26[v12 + 2], 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v14 + 4 * v15 + 60) & 0x4000) != 0)
    {
      break;
    }

    *(v13 + v12++) = v15;
  }

  while (v12 != 15);
  *(v13 + v12) = 0;
  if (!fgets(v26, 128, a1))
  {
    goto LABEL_51;
  }

  while (1)
  {
LABEL_15:
    if (v26[0] == 10 || v26[0] == 0)
    {
      v21 = *MEMORY[0x1E69E9848];
      v22 = "no FORMAT specifier found";
LABEL_39:
      fprintf(v21, "RGBE bad file format: %s\n", v22);
      return 0xFFFFFFFFLL;
    }

    if (*v26 == 0x333D54414D524F46 && *&v26[8] == 0x6C725F7469622D32 && v27 == 0xA656267725F65)
    {
      v23 = 8;
      goto LABEL_42;
    }

    if (*v26 == 0x663D54414D524F46 && *&v26[6] == 0xA74616F6C663DLL)
    {
      break;
    }

    if (a4)
    {
      if (sscanf(v26, "GAMMA=%g", &v25) == 1)
      {
        *(a4 + 20) = v25;
        v20 = 2;
LABEL_35:
        *a4 |= v20;
        goto LABEL_36;
      }

      if (sscanf(v26, "EXPOSURE=%g", &v25) == 1)
      {
        *(a4 + 24) = v25;
        v20 = 4;
        goto LABEL_35;
      }
    }

LABEL_36:
    if (!fgets(v26, 128, a1))
    {
      goto LABEL_51;
    }
  }

  v23 = 16;
LABEL_42:
  *a4 |= v23;
  while (fgets(v26, 128, a1))
  {
    if (v26[0] == 10)
    {
      if (!fgets(v26, 128, a1))
      {
        break;
      }

      if (sscanf(v26, "-Y %d +X %d", a3, a2) <= 1 && sscanf(v26, "+X %d +Y %d", a2, a3) <= 1 && sscanf(v26, "+Y %d +X %d", a3, a2) <= 1)
      {
        v21 = *MEMORY[0x1E69E9848];
        v22 = "missing image size specifier";
        goto LABEL_39;
      }

      return 0;
    }
  }

LABEL_51:
  perror("RGBE read error");
  return 0xFFFFFFFFLL;
}

uint64_t RGBE_ReadPixels(FILE *__stream, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  __ptr = 0;
  v7 = a3 + 1;
  while (fread(&__ptr, 4uLL, 1uLL, __stream))
  {
    rgbe2float(a2, (a2 + 4), (a2 + 8), &__ptr);
    *(a2 + 12) = 1065353216;
    --v7;
    a2 += 16;
    if (v7 <= 1)
    {
      return 0;
    }
  }

  perror("RGBE read error");
  return 0xFFFFFFFFLL;
}

void rgbe2float(float *a1, float *a2, float *a3, _BYTE *a4)
{
  if (a4[3])
  {
    v8 = ldexp(1.0, a4[3] - 136);
    LOBYTE(v9) = *a4;
    *&v10 = v8 * v9;
    *a1 = *&v10;
    LOBYTE(v10) = a4[1];
    *&v11 = v8 * v10;
    *a2 = *&v11;
    LOBYTE(v11) = a4[2];
    *a3 = v8 * v11;
  }

  else
  {
    *a3 = 0.0;
    *a2 = 0.0;
    *a1 = 0.0;
  }
}

uint64_t RGBE_ReadPixels_RLE(FILE *__stream, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a4;
  v6 = a2;
  v7 = __stream;
  if (a3 - 0x8000 < 0xFFFF8008)
  {
    v8 = a4 * a3;
    goto LABEL_3;
  }

  if (a4 < 1)
  {
    v10 = 0;
LABEL_41:
    free(v10);
    return 0;
  }

  v10 = 0;
  v11 = 4 * a3;
  __ptr = 0;
  v26 = 0;
  v25 = 2 * a3;
  v24 = 3 * a3;
  while (1)
  {
    if (!fread(&__ptr, 4uLL, 1uLL, v7))
    {
LABEL_42:
      free(v10);
      perror("RGBE read error");
      return 0xFFFFFFFFLL;
    }

    v12 = __ptr == 2 && BYTE1(__ptr) == 2;
    if (!v12 || SBYTE2(__ptr) < 0)
    {
      break;
    }

    if ((HIBYTE(__ptr) | (SBYTE2(__ptr) << 8)) != a3)
    {
LABEL_38:
      free(v10);
      fprintf(*MEMORY[0x1E69E9848], "RGBE bad file format: %s\n");
      return 0xFFFFFFFFLL;
    }

    if (!v10)
    {
      v10 = malloc_type_malloc(v11, 0x100004077774924uLL);
      if (!v10)
      {
        fprintf(*MEMORY[0x1E69E9848], "RGBE error: %s\n");
        return 0xFFFFFFFFLL;
      }
    }

    v23 = v11;
    v13 = 0;
    v14 = v10;
    do
    {
      v15 = &v10[++v13 * a3];
      while (v14 < v15)
      {
        if (!fread(&v26, 2uLL, 1uLL, v7))
        {
          goto LABEL_42;
        }

        v16 = v26;
        v17 = v15 - v14;
        if (v26 < 0x81u)
        {
          if (!v26 || v17 < v26)
          {
            goto LABEL_38;
          }

          *v14++ = HIBYTE(v26);
          v20 = (v16 - 1);
          if (v16 != 1)
          {
            if (!fread(v14, (v16 - 1), 1uLL, v7))
            {
              goto LABEL_42;
            }

            v14 += v20;
          }
        }

        else
        {
          if (v17 < v26 - 128)
          {
            goto LABEL_38;
          }

          v18 = HIBYTE(v26);
          v19 = v26 - 127;
          do
          {
            *v14++ = v18;
            --v19;
          }

          while (v19 > 1);
        }
      }
    }

    while (v13 != 4);
    v21 = 0;
    do
    {
      LOBYTE(__ptr) = v10[v21];
      BYTE1(__ptr) = v10[a3 + v21];
      BYTE2(__ptr) = v10[v25 + v21];
      HIBYTE(__ptr) = v10[v24 + v21];
      rgbe2float(v6, (v6 + 4), (v6 + 8), &__ptr);
      *(v6 + 12) = 1065353216;
      v6 += 16;
      ++v21;
    }

    while (a3 != v21);
    v22 = __OFSUB__(v4--, 1);
    v11 = v23;
    if ((v4 < 0) ^ v22 | (v4 == 0))
    {
      goto LABEL_41;
    }
  }

  rgbe2float(v6, (v6 + 4), (v6 + 8), &__ptr);
  *(v6 + 12) = 1065353216;
  free(v10);
  v8 = v4 * a3 - 1;
  a2 = v6 + 16;
  __stream = v7;
LABEL_3:

  return RGBE_ReadPixels(__stream, a2, v8);
}

size_t ImageIOSIMD_GetVectorLevelName(unint64_t a1, char *__str, size_t __size)
{
  if (!__size)
  {
    return -1;
  }

  if (!a1)
  {
    return snprintf(__str, __size, "<scalar only>");
  }

  if (a1 > 0x20)
  {
    return snprintf(__str, __size, "<invalid value>");
  }

  v8 = 0;
  v7 = 0;
  while (1)
  {
    if (1 << v8 > a1)
    {
LABEL_22:
      v13 = __size - 1;
      if (v7 < __size - 1)
      {
        v13 = v7;
      }

      __str[v13] = 0;
      return v7;
    }

    if (((1 << v8) & a1) != 0)
    {
      break;
    }

    ++v8;
LABEL_21:
    if (v8 == 6)
    {
      goto LABEL_22;
    }
  }

  if (!v7)
  {
LABEL_16:
    v11 = snprintf(&__str[v7], __size - v7, "%s", ImageIOSIMD_GetVectorLevelName::kVectorLevelNames[++v8]);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v12 = v11;
    if (v11 >= __size - v7)
    {
      v12 = __size - v7;
    }

    v7 += v12;
    goto LABEL_21;
  }

  v9 = snprintf(&__str[v7], __size - v7, " | ");
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v9;
    if (v9 >= __size - v7)
    {
      v10 = __size - v7;
    }

    v7 += v10;
    goto LABEL_16;
  }

  v15 = __size - 1;
  if (v7 < __size - 1)
  {
    v15 = v7;
  }

  __str[v15] = 0;
  return v7;
}

uint64_t ImageIOSIMD_GetVectorLevel(uint64_t a1, uint64_t a2)
{
  if (ImageIOSIMD_GetVectorLevel::vectorPredicate != -1)
  {
    ImageIOSIMD_GetVectorLevel_cold_1();
  }

  return vectorLevel;
}

uint64_t ImageIOSIMD_GetHardwareVectorLevel(uint64_t a1, uint64_t a2)
{
  if (ImageIOSIMD_GetHardwareVectorLevel::hardwarePredicate != -1)
  {
    __ImageIOSIMD_GetVectorLevel_block_invoke_cold_1();
  }

  return ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel;
}

void ImageIOSIMD_SetVectorLevel(uint64_t result, uint64_t a2)
{
  if (ImageIOSIMD_GetVectorLevel::vectorPredicate != -1)
  {
    ImageIOSIMD_GetVectorLevel_cold_1();
  }

  if (vectorLevel != result)
  {
    if (ImageIOSIMD_GetHardwareVectorLevel::hardwarePredicate != -1)
    {
      __ImageIOSIMD_GetVectorLevel_block_invoke_cold_1();
    }

    vectorLevel = ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel & result;
  }
}

void GlobalWebPInfo::clearFrameBuffer(GlobalWebPInfo *this)
{
  std::mutex::lock((this + 40));
  if (*this)
  {
    free(*this);
    *this = 0;
  }

  *(this + 36) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;

  std::mutex::unlock((this + 40));
}

void GlobalWebPInfo::setFrameBuffer(GlobalWebPInfo *this, unsigned __int8 *a2, size_t a3, int a4, int a5, int a6)
{
  std::mutex::lock((this + 40));
  if (a2 && a3 - 1073741825 > 0xFFFFFFFFBFFFFFFFLL)
  {
    if (*this)
    {
      free(*this);
      *this = 0;
    }

    *(this + 36) = 0;
    *(this + 6) = 0;
    *(this + 1) = a3;
    *(this + 2) = 0;
    v12 = malloc_type_malloc(a3, 0x100004077774924uLL);
    *this = v12;
    if (v12)
    {
      memcpy(v12, a2, a3);
      *(this + 4) = a4;
      *(this + 5) = a5;
      v13 = 1;
      *(this + 6) = a6;
    }

    else
    {
      v13 = 0;
      *(this + 1) = 0;
    }

    *(this + 36) = v13;
  }

  else
  {
    _cg_jpeg_mem_term("setFrameBuffer", 64, "*** ERROR: setFrameBuffer - bailing out\n");
  }

  std::mutex::unlock((this + 40));
}

BOOL GlobalWebPInfo::hasValidFrameBuffer(GlobalWebPInfo *this, int a2)
{
  std::mutex::lock((this + 40));
  v4 = *(this + 36) == 1 && *(this + 6) == a2;
  std::mutex::unlock((this + 40));
  return v4;
}

uint64_t WebPReadPlugin::WebPReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D6058;
  *(result + 464) = 0;
  return result;
}

void WebPReadPlugin::~WebPReadPlugin(WebPReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t WebPReadPlugin::loadDataFromXPCObject(WebPReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_webp", &length);
    if (length == 2)
    {
      v6 = data;
      result = 0;
      *(this + 232) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t WebPReadPlugin::saveDataToXPCObject(WebPReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_webp", this + 464, 2uLL);
  }

  return v4;
}

uint64_t WebPReadPlugin::handleChunks(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v4 = IIOSkipMetadata(*(a1 + 48));
  v5 = IIOSkipXMP_and_IPTC(*(a1 + 48));
  v6 = WebPDemuxInternal(a2, 0, 0, 263);
  if (!v6)
  {
    return 4294967246;
  }

  v7 = v6;
  if (WebPDemuxGetChunk(v6, "ICCP", 1, &v36))
  {
    _cg_jpeg_mem_term("handleChunks", 232, "ICCP: %p [%ld]\n");
    *(a1 + 160) = CGColorSpaceCreateWithCopyOfData(*(&v36 + 1), v37);
    _cg_jpeg_mem_term(&v36, v8, v9);
  }

  if (WebPDemuxGetChunk(v7, "EXIF", 1, &v36))
  {
    _cg_jpeg_mem_term("handleChunks", 241, "EXIF: %p [%ld]\n");
    MetadataFromDatabuffer = CreateMetadataFromDatabuffer(*(&v36 + 1), v37, 0);
    if (MetadataFromDatabuffer)
    {
      v13 = MetadataFromDatabuffer;
      if (v4)
      {
        TagWithPath = CGImageMetadataGetTagWithPath(MetadataFromDatabuffer, 0, @"tiff:Orientation");
        if (TagWithPath)
        {
          CGImageMetadataAddTag(*(a1 + 64), TagWithPath);
        }
      }

      else
      {
        CGImageMetadataMerge(*(a1 + 64), MetadataFromDatabuffer, *(a1 + 48));
      }

      CFRelease(v13);
    }

    _cg_jpeg_mem_term(&v36, v11, v12);
  }

  if (((v4 | v5) & 1) == 0 && WebPDemuxGetChunk(v7, "XMP ", 1, &v36))
  {
    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(*(&v36 + 1), v37);
    if (MetadataFromXMPBuffer)
    {
      v18 = MetadataFromXMPBuffer;
      CGImageMetadataMerge(*(a1 + 64), MetadataFromXMPBuffer, *(a1 + 48));
      CFRelease(v18);
    }

    _cg_jpeg_mem_term(&v36, v16, v17);
  }

  if (*(a1 + 464) == 1)
  {
    *v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    *v31 = 0u;
    WebPDemuxGetFrame(v7, (*(a1 + 224) + 1), v31);
    v19 = v32[2];
    if (v32[2] >= 11)
    {
      v20 = v32[2];
    }

    else
    {
      v20 = 100;
    }

    v21 = *(a1 + 56);
    IIONumber::IIONumber(v30, v20 / 1000.0);
    IIODictionary::setObjectForKeyGroup(v21, v30, @"DelayTime", @"{WebP}");
    IIONumber::~IIONumber(v30);
    v22 = *(a1 + 56);
    IIONumber::IIONumber(v30, v19 / 1000.0);
    IIODictionary::setObjectForKeyGroup(v22, v30, @"UnclampedDelayTime", @"{WebP}");
    IIONumber::~IIONumber(v30);
    if (*(a1 + 465) == 1)
    {
      v23 = *(a1 + 56);
      IIONumber::IIONumber(v30, v31[2]);
      IIODictionary::setObjectForKeyGroup(v23, v30, @"xOffset", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v24 = *(a1 + 56);
      IIONumber::IIONumber(v30, v31[3]);
      IIODictionary::setObjectForKeyGroup(v24, v30, @"yOffset", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v25 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[0]);
      IIODictionary::setObjectForKeyGroup(v25, v30, @"width", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v26 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[1]);
      IIODictionary::setObjectForKeyGroup(v26, v30, @"height", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v27 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[3]);
      IIODictionary::setObjectForKeyGroup(v27, v30, @"disposeOp", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v28 = *(a1 + 56);
      IIONumber::IIONumber(v30, v34[3]);
      IIODictionary::setObjectForKeyGroup(v28, v30, @"blendOp", @"{WebP}");
      IIONumber::~IIONumber(v30);
    }
  }

  WebPDemuxDelete(v7);
  return 0;
}

void sub_185FFE56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t WebPReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (!IIOImageReadSession::isFinal(this[3]))
  {
    goto LABEL_19;
  }

  v3 = this[6];
  if (v3)
  {
    LOBYTE(v3) = IIODictionary::getBoolForKey(v3, @"IIO_SKIP_WEBP_COMPOSING");
  }

  *(this + 465) = v3;
  v4 = IIOImageReadSession::retainBytePointer(this[3], &v23, 0);
  if (v4)
  {
    BytePtr = v4;
    v6 = 0;
  }

  else
  {
    v7 = IIOImageReadSession::copyData(this[3]);
    if (!v7)
    {
LABEL_19:
      v6 = 4294967246;
LABEL_30:
      kdebug_trace();
      return v6;
    }

    v6 = v7;
    BytePtr = CFDataGetBytePtr(v7);
  }

  v21 = BytePtr;
  Size = IIOImageReadSession::getSize(this[3]);
  v22 = Size;
  if (WebPGetFeaturesInternal(BytePtr, Size, v19, 521))
  {
    goto LABEL_17;
  }

  v9 = v19[0];
  v10 = DWORD1(v19[0]);
  if (SLODWORD(v19[0]) >= 0x4000 || SDWORD1(v19[0]) >= 0x4000)
  {
    v13 = "*** ERROR: 'WebP' bad dimension: %d x %d\n";
    v14 = 344;
    goto LABEL_16;
  }

  v11 = DWORD2(v19[0]);
  if (DWORD2(v19[0]))
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  if (80000 * Size < DWORD1(v19[0]) * LODWORD(v19[0]) * v12)
  {
    v13 = "*** ERROR: fileSize: %ld   canvas: %d x %d --> malformed image? (factor: %g)\n";
    v14 = 350;
LABEL_16:
    _cg_jpeg_mem_term("initialize", v14, v13);
LABEL_17:
    if (v6)
    {
      CFRelease(v6);
      goto LABEL_19;
    }

    v16 = 0;
    v6 = 4294967246;
    goto LABEL_26;
  }

  *(this + 464) = HIDWORD(v19[0]) != 0;
  if (v11)
  {
    v15 = 3;
  }

  else
  {
    v15 = 5;
  }

  *(this + 262) = v15;
  *(this + 61) = v9;
  *(this + 62) = v10;
  *(this + 130) = 4;
  *(this + 63) = 4 * v9;
  *(this + 64) = 2097160;
  *(this + 85) = 1380401696;
  this[20] = 0;
  *(this + 186) = 0;
  *(this + 374) = 0;
  WebPReadPlugin::handleChunks(this, &v21);
  v16 = 1;
  *(this + 204) = 1;
  if (v6)
  {
    CFRelease(v6);
    return 0;
  }

LABEL_26:
  if (BytePtr)
  {
    v17 = this[3];
    if (v17)
    {
      IIOImageReadSession::releaseBytePointer(v17, v23);
    }
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

  return v6;
}

uint64_t WebPReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

GlobalWebPInfo *releaseGlobalWebPInfo(GlobalWebPInfo *result)
{
  if (result)
  {
    GlobalWebPInfo::~GlobalWebPInfo(result);

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t WebPReadPlugin::decodeWebP(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*(a1 + 262))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a1 + 316);
    if (*(a1 + 437))
    {
      WebPDecodeRGBAInto(v6, v7, a3, a4, v8);
    }

    else
    {
      WebPDecodeBGRAInto(v6, v7, a3, a4, v8);
    }

    if (*(a1 + 438) == 1)
    {
      v9 = *(a1 + 312);
      v12.data = a3;
      v12.height = v9;
      v10 = *(a1 + 316);
      v12.width = *(a1 + 308);
      v12.rowBytes = v10;
      vImagePremultiplyData_RGBA8888(&v12, &v12, 0x10u);
    }
  }

  else
  {
    WebPDecodeRGBInto(*a2, a2[1], a3, a4, *(a1 + 316));
  }

  return 0;
}

uint64_t WebPReadPlugin::decodeImageData(IIOImageReadSession **this, unsigned __int8 *a2, size_t a3)
{
  v13 = 0;
  v6 = IIOImageReadSession::retainBytePointer(this[3], &v13, 0);
  if (v6)
  {
    BytePtr = v6;
    v8 = 0;
  }

  else
  {
    v9 = IIOImageReadSession::copyData(this[3]);
    if (!v9)
    {
      return 0;
    }

    v8 = v9;
    BytePtr = CFDataGetBytePtr(v9);
  }

  v14[0] = BytePtr;
  v14[1] = IIOImageReadSession::getSize(this[3]);
  if (*(this + 464) == 1)
  {
    v10 = WebPReadPlugin::decodeAnimatedWebPOptimized(this, v14, a2, a3);
    if (v10)
    {
      WebPReadPlugin::decodeImageData();
    }
  }

  else
  {
    WebPReadPlugin::decodeWebP(this, v14, a2, a3);
    v10 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  else if (BytePtr)
  {
    v11 = this[3];
    if (v11)
    {
      IIOImageReadSession::releaseBytePointer(v11, v13);
    }
  }

  return v10;
}

void BCWritePlugin::BCWritePlugin(BCWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, char a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1111695392);
  *v5 = &unk_1EF4D61A0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 57) = a4;
  *(v5 + 64) = 0;
}

void BCWritePlugin::BCWritePlugin(IIOWritePlugin *a1, IIOImageWriteSession *a2, IIOImageDestination *a3, uint64_t a4)
{
  IIOWritePlugin::IIOWritePlugin(a1, a2, a3, 1111695392);
  *v5 = &unk_1EF4D61A0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = a4;
}

void BCWritePlugin::~BCWritePlugin(BCWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

const __CFDictionary *BCWritePlugin::handleProperties(BCWritePlugin *this, IIODictionary *a2)
{
  *(this + 5) = 0;
  if (IIODictionary::containsKey(a2, @"kCGImagePropertyBCFormat"))
  {
    *(this + 12) = IIODictionary::getUint32ForKey(a2, @"kCGImagePropertyBCFormat");
  }

  if (IIODictionary::containsKey(a2, @"kCGImageDestinationLossyCompressionQuality"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a2, @"kCGImageDestinationLossyCompressionQuality");
    v5 = 0.0;
    if (FloatForKey >= 0.0)
    {
      v5 = FloatForKey;
      if (FloatForKey > 1.0)
      {
        v5 = 1.0;
      }
    }

    v6 = (1.0 - v5) * 0.0032;
    *(this + 13) = v6;
  }

  else
  {
    *(this + 13) = 978433815;
  }

  result = IIODictionary::containsKey(a2, @"kCGImagePropertyBCWeightChannelsEqually");
  if (result)
  {
    result = IIODictionary::getUint32ForKey(a2, @"kCGImagePropertyBCWeightChannelsEqually");
    if (result)
    {
      *(this + 5) |= 0x40uLL;
    }
  }

  return result;
}

uint64_t BCWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  BCWritePlugin::handleProperties(this, a3);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
  IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  v8 = *MEMORY[0x1E695E4D0];
  Property = CGImageProviderGetProperty();
  if (v8 == Property && (v11 = CGImageProviderGetProperty()) != 0)
  {
    IIONumber::IIONumber(&src, v11);
    v12 = IIONumber::uint32Num(&src);
    IIONumber::~IIONumber(&src);
    v10 = v12;
  }

  else
  {
    v10 = 4;
  }

  v49 = Property;
  if (AlphaInfo >= 7)
  {
    _cg_jpeg_mem_term("writeOne", 202, "### alpha not handled: %X\n");
    v13 = at_alpha_opaque;
  }

  else
  {
    v13 = dword_18620A158[AlphaInfo];
  }

  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  Error = _cg_GifLastError(a2);
  if (Model == kCGColorSpaceModelRGB)
  {
    v18 = 10;
    if ((BitmapInfo & 0x100) == 0)
    {
      v18 = 7;
    }

    if (Error == 16)
    {
      v17 = v18;
    }

    else
    {
      v17 = at_texel_format_rgba8_unorm;
    }

    goto LABEL_20;
  }

  if (Model)
  {
    v17 = at_texel_format_invalid;
LABEL_20:
    v53 = 1;
    goto LABEL_21;
  }

  if (Error == 16)
  {
    v53 = 0;
    if (AlphaInfo)
    {
      v17 = at_texel_format_la16_unorm;
    }

    else
    {
      v17 = at_texel_format_l16_unorm;
    }
  }

  else
  {
    v53 = 0;
    if (AlphaInfo)
    {
      v17 = at_texel_format_la8_unorm;
    }

    else
    {
      v17 = at_texel_format_l8_unorm;
    }
  }

LABEL_21:
  v19 = *(this + 12);
  v50 = v8;
  if (v19 <= 36282)
  {
    v20 = at_block_format_bc1;
    if (v19 > 33778)
    {
      if (v19 <= 35917)
      {
        if ((v19 - 35916) < 2)
        {
          goto LABEL_56;
        }

        v21 = 33779;
LABEL_46:
        if (v19 == v21)
        {
          v20 = at_block_format_bc3;
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v19 != 35918)
      {
        v21 = 35919;
        goto LABEL_46;
      }

LABEL_48:
      v20 = at_block_format_bc2;
      goto LABEL_56;
    }

    if ((v19 - 33776) < 2)
    {
      goto LABEL_56;
    }

    if (v19)
    {
      if (v19 != 33778)
      {
LABEL_55:
        v20 = at_block_format_invalid;
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    if (v17 - 1 <= 3)
    {
      v20 = qword_18620A178[v17 - 1];
      goto LABEL_56;
    }

LABEL_53:
    v20 = at_block_format_bc7;
    goto LABEL_56;
  }

  if (v19 > 36491)
  {
    if ((v19 - 36492) >= 2)
    {
      if (v19 == 36494)
      {
        v20 = at_block_format_bc6;
        goto LABEL_56;
      }

      if (v19 == 36495)
      {
        v20 = at_block_format_bc6u;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v19 > 36284)
  {
    if (v19 == 36285)
    {
      v20 = at_block_format_bc5;
      goto LABEL_56;
    }

    if (v19 == 36286)
    {
      v20 = at_block_format_bc5s;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v19 == 36283)
  {
    v20 = at_block_format_bc4;
  }

  else
  {
    v20 = at_block_format_bc4s;
  }

LABEL_56:
  v22 = IIOImageSource::count(a2);
  v23 = IIO_Reader::testHeaderSize(a2);
  if (*(this + 57) == 1)
  {
    if (v53)
    {
      if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0B8]))
      {
        v24 = 3;
      }

      else if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0A0]))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(this + 12);
    if (!v25)
    {
      if (v20 - 33 > 9)
      {
        v25 = 0;
      }

      else
      {
        v25 = dword_18620A198[v20 - 33];
      }

      *(this + 12) = v25;
    }

    KTXWritePlugin::writeKTXHeader(this[2], v22, v23, 0, v24, AlphaInfo, 0, 1, 0, v25, 0, 1);
  }

  v26 = at_encoder_create(v17, v13, v20, v13, 0);
  v27 = v26;
  if (!v26)
  {
    v34 = 0;
    v42 = 0;
    goto LABEL_81;
  }

  v54 = this;
  is_compression_monolithic = at_encoder_is_compression_monolithic(v26, at_flags_default);
  v52 = a2;
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  v30 = BytesPerRow;
  *&src.validSize.z = 0;
  v31 = v23;
  if (v50 == v49)
  {
    v31 = v23;
    if (!is_compression_monolithic)
    {
      do
      {
        v31 = v10;
        v32 = v10 * v22;
        v10 *= 2;
      }

      while ((v32 & 0xF) != 0);
    }
  }

  v33 = v31 * BytesPerRow;
  v34 = malloc_type_malloc(v31 * BytesPerRow, 0x100004077774924uLL);
  src.texels = 0;
  *&src.validSize.x = __PAIR64__(v23, v22);
  src.validSize.z = 1;
  src.rowBytes = v30;
  src.sliceBytes = 0;
  *&v58.x = __PAIR64__(v23, v22);
  v58.z = 1;
  block_counts = at_encoder_get_block_counts(v27, v58);
  v36 = block_counts;
  v37 = HIDWORD(block_counts);
  block_size = at_encoder_get_block_size(v27);
  v39 = v36 * block_size;
  v40 = v37 * v36 * block_size;
  dest.rowBytes = v39;
  dest.sliceBytes = v40;
  v41 = malloc_type_calloc(v40, 1uLL, 0x100004077774924uLL);
  v42 = v41;
  if (v40)
  {
    v43 = v41 == 0;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    LogError("writeOne", 359, "*** could not allocate dest buffer [%d bytes]\n", v40);
    goto LABEL_81;
  }

  v51 = v40;
  dest.blocks = v41;
  if (!v23)
  {
LABEL_95:
    v48 = v54[8];
    if (v48)
    {
      if ((*(*(v48 + 1) + 24))(v48) != v51 || (*(*(v54[8] + 1) + 64))(v54[8]))
      {
        goto LABEL_104;
      }
    }

    else if (*(v54 + 57))
    {
      __ptr = v51;
      if (IIOImageWriteSession::putBytes(v54[2], &__ptr, 4uLL) != 4)
      {
        goto LABEL_104;
      }

      IIOImageWriteSession::putBytes(v54[2], v42, v51);
    }

LABEL_81:
    v44 = 0;
    if (!v27)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v46 = 0;
  v47 = v54[5];
  while (1)
  {
    if (v31 + v46 > v23)
    {
      v31 = v23 - v46;
      v33 = v30 * v31;
    }

    src.validSize.y = v31;
    src.texels = v34;
    if (IIOImagePixelDataProvider::getBytes(v52, v34) != v33)
    {
      LogError("writeOne", 384, "failed to read %ld bytes\n");
      goto LABEL_104;
    }

    dest.blocks = &v42[dest.rowBytes * (v46 >> 2)];
    if (at_encoder_compress_texels(v27, &src, &dest, *(v54 + 13), v47) < 0.0)
    {
      break;
    }

    v46 += v31;
    if (v46 >= v23)
    {
      goto LABEL_95;
    }
  }

  LogError("writeOne", 394, "*** ERROR: at_encoder_compress_texels: %g (%ld)\n");
LABEL_104:
  v44 = 4294967246;
  if (v27)
  {
LABEL_82:
    CFRelease(v27);
  }

LABEL_83:
  if (v42)
  {
    free(v42);
  }

  if (v34)
  {
    free(v34);
  }

  return v44;
}

void sub_185FFF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t BCWritePlugin::GetVkFormat(uint64_t this, IIODictionary *a2)
{
  if (this)
  {
    v2 = this;
    this = IIODictionary::containsKey(this, @"kCGImagePropertyBCFormat");
    if (this)
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(v2, @"kCGImagePropertyBCFormat");
      if (Uint32ForKey > 36282)
      {
        if (Uint32ForKey > 36491)
        {
          if (Uint32ForKey > 36493)
          {
            if (Uint32ForKey == 36494)
            {
              return 144;
            }

            if (Uint32ForKey == 36495)
            {
              return 143;
            }

            return 0;
          }

          if (Uint32ForKey == 36492)
          {
            return 145;
          }

          else
          {
            return 146;
          }
        }

        else
        {
          if (Uint32ForKey > 36284)
          {
            if (Uint32ForKey == 36285)
            {
              return 141;
            }

            if (Uint32ForKey == 36286)
            {
              return 142;
            }

            return 0;
          }

          if (Uint32ForKey == 36283)
          {
            return 139;
          }

          else
          {
            return 140;
          }
        }
      }

      else
      {
        if (Uint32ForKey <= 35915)
        {
          if (Uint32ForKey > 33777)
          {
            if (Uint32ForKey == 33778)
            {
              return 135;
            }

            if (Uint32ForKey == 33779)
            {
              return 137;
            }
          }

          else
          {
            if (Uint32ForKey == 33776)
            {
              return 131;
            }

            if (Uint32ForKey == 33777)
            {
              return 133;
            }
          }

          return 0;
        }

        if (Uint32ForKey > 35917)
        {
          if (Uint32ForKey == 35918)
          {
            return 136;
          }

          if (Uint32ForKey == 35919)
          {
            return 138;
          }

          return 0;
        }

        if (Uint32ForKey == 35916)
        {
          return 132;
        }

        else
        {
          return 134;
        }
      }
    }
  }

  return this;
}

void IIO_Writer_BC::~IIO_Writer_BC(IIO_Writer_BC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_BC::write(IIO_Writer_BC *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_BC::write", 0, 0, -1, 0);
  }

  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  IIOWritePlugin::IIOWritePlugin(v9, a2, a3, 1111695392);
  v11 = 0;
  *&v9[0] = &unk_1EF4D61A0;
  *&v10 = 0;
  WORD4(v10) = 0;
  v5 = IIOWritePlugin::writeAll(v9);
  _cg_jpeg_mem_term(v9, v6, v7);
  return v5;
}

void sub_185FFF590(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FFF578);
}

uint64_t TIFFPredictorInit(int8x16_t *a1)
{
  v1 = a1[68].i64[1];
  if (!v1)
  {
    TIFFPredictorInit_cold_1();
  }

  v3 = 1;
  if (_TIFFMergeFields(a1->i64, predictFields, 1))
  {
    v4 = a1[80];
    a1[80].i64[1] = PredictorVGetField;
    *(v1 + 88) = vextq_s8(v4, v4, 8uLL);
    a1[80].i64[0] = PredictorVSetField;
    *(v1 + 104) = a1[81].i64[0];
    a1[81].i64[0] = PredictorPrintDir;
    *(v1 + 112) = a1[60].i64[0];
    a1[60].i64[0] = PredictorSetupDecode;
    *(v1 + 120) = a1[61].i64[0];
    a1[61].i64[0] = PredictorSetupEncode;
    *v1 = 1;
    *(v1 + 48) = 0;
    *(v1 + 80) = 0;
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFPredictorInit", "Merging Predictor codec-specific tags failed");
    return 0;
  }

  return v3;
}

uint64_t PredictorVGetField(uint64_t a1, int a2, _WORD **a3)
{
  v3 = *(a1 + 1096);
  if (!v3 || !*(v3 + 96))
  {
    return 0;
  }

  if (a2 != 317)
  {
    return (*(v3 + 88))();
  }

  **a3 = *v3;
  return 1;
}

uint64_t PredictorVSetField(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 96);
  if (!v4)
  {
    return 0;
  }

  if (a2 != 317)
  {
    return v4();
  }

  *v3 = *a3;
  *(a1 + 80) |= 4u;
  *(a1 + 16) |= 8u;
  return 1;
}

uint64_t PredictorPrintDir(uint64_t result, FILE *__stream, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 1096);
  if ((*(result + 80) & 4) != 0)
  {
    fwrite("  Predictor: ", 0xDuLL, 1uLL, __stream);
    v7 = *v6;
    if (*v6 == 3)
    {
      v8 = "floating point predictor ";
      v9 = 25;
    }

    else if (v7 == 2)
    {
      v8 = "horizontal differencing ";
      v9 = 24;
    }

    else
    {
      if (v7 != 1)
      {
LABEL_9:
        result = fprintf(__stream, "%d (0x%x)\n", *v6, *v6);
        goto LABEL_10;
      }

      v8 = "none ";
      v9 = 5;
    }

    fwrite(v8, v9, 1uLL, __stream);
    goto LABEL_9;
  }

LABEL_10:
  v10 = *(v6 + 13);
  if (v10)
  {

    return v10(v5, __stream, a3);
  }

  return result;
}

uint64_t PredictorSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  result = (*(v2 + 112))();
  if (result)
  {
    result = PredictorSetup(a1, v4, v5, v6, v7, v8, v9, v10);
    if (result)
    {
      if (*v2 == 3)
      {
        *(v2 + 80) = fpAcc;
        v16 = *(a1 + 1008);
        if (v16 != PredictorDecodeRow)
        {
          *(v2 + 56) = v16;
          *(a1 + 1008) = PredictorDecodeRow;
          *(v2 + 64) = *(a1 + 1024);
          *(a1 + 1024) = PredictorDecodeTile;
          *(v2 + 72) = *(a1 + 1040);
          *(a1 + 1040) = PredictorDecodeTile;
        }

        if ((*(a1 + 16) & 0x80) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (*v2 != 2)
        {
          return 1;
        }

        HIDWORD(v12) = *(a1 + 116) - 8;
        LODWORD(v12) = HIDWORD(v12);
        v11 = v12 >> 3;
        if (v11 <= 7 && ((0x8Bu >> v11) & 1) != 0)
        {
          *(v2 + 80) = off_1EF4D6260[v11];
        }

        v13 = *(a1 + 1008);
        if (v13 != PredictorDecodeRow)
        {
          *(v2 + 56) = v13;
          *(a1 + 1008) = PredictorDecodeRow;
          *(v2 + 64) = *(a1 + 1024);
          *(a1 + 1024) = PredictorDecodeTile;
          *(v2 + 72) = *(a1 + 1040);
          *(a1 + 1040) = PredictorDecodeTile;
        }

        if ((*(a1 + 16) & 0x80) == 0)
        {
          return 1;
        }

        v14 = *(v2 + 80);
        v15 = swabHorAcc16;
        if (v14 != horAcc16)
        {
          v15 = swabHorAcc32;
          if (v14 != horAcc32)
          {
            v15 = swabHorAcc64;
            if (v14 != horAcc64)
            {
              return 1;
            }
          }
        }

        *(v2 + 80) = v15;
      }

      *(a1 + 1248) = _TIFFNoPostDecode;
      return 1;
    }
  }

  return result;
}

uint64_t PredictorSetupEncode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  result = (*(v2 + 120))();
  if (result)
  {
    result = PredictorSetup(a1, v4, v5, v6, v7, v8, v9, v10);
    if (result)
    {
      if (*v2 == 3)
      {
        *(v2 + 48) = fpDiff;
        v16 = *(a1 + 1016);
        if (v16 != PredictorEncodeRow)
        {
          *(v2 + 24) = v16;
          *(a1 + 1016) = PredictorEncodeRow;
          *(v2 + 32) = *(a1 + 1032);
          *(a1 + 1032) = PredictorEncodeTile;
          *(v2 + 40) = *(a1 + 1048);
          *(a1 + 1048) = PredictorEncodeTile;
        }

        return 1;
      }

      if (*v2 == 2)
      {
        HIDWORD(v12) = *(a1 + 116) - 8;
        LODWORD(v12) = HIDWORD(v12);
        v11 = v12 >> 3;
        if (v11 <= 7 && ((0x8Bu >> v11) & 1) != 0)
        {
          *(v2 + 48) = off_1EF4D62A0[v11];
        }

        v13 = *(a1 + 1016);
        if (v13 != PredictorEncodeRow)
        {
          *(v2 + 24) = v13;
          *(a1 + 1016) = PredictorEncodeRow;
          *(v2 + 32) = *(a1 + 1032);
          *(a1 + 1032) = PredictorEncodeTile;
          *(v2 + 40) = *(a1 + 1048);
          *(a1 + 1048) = PredictorEncodeTile;
        }

        if ((*(a1 + 16) & 0x80) != 0)
        {
          v14 = *(v2 + 48);
          if (v14 == horDiff16)
          {
            v15 = swabHorDiff16;
            goto LABEL_19;
          }

          if (v14 == horDiff32)
          {
            v15 = swabHorDiff32;
            goto LABEL_19;
          }

          if (v14 == horDiff64)
          {
            v15 = swabHorDiff64;
LABEL_19:
            *(v2 + 48) = v15;
            *(a1 + 1248) = _TIFFNoPostDecode;
          }
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t TIFFPredictorCleanup(void *a1, uint64_t a2)
{
  v2 = a1[137];
  if (!v2)
  {
    TIFFPredictorCleanup_cold_1();
  }

  v3 = v2[12];
  a1[161] = v2[11];
  a1[160] = v3;
  v4 = v2[14];
  a1[162] = v2[13];
  a1[120] = v4;
  a1[122] = v2[15];
  return 1;
}

BOOL PredictorSetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  v9 = *v8;
  if (v9 == 1)
  {
    return v9;
  }

  if (v9 == 3)
  {
    if (*(a1 + 118) == 3)
    {
      v12 = *(a1 + 116);
      if ((((v12 - 16) >> 3) | ((v12 - 16) << 13)) <= 6u && ((1 << ((v12 - 16) >> 3)) & 0x47) != 0)
      {
        goto LABEL_15;
      }

      TIFFErrorExtR(a1, "PredictorSetup", "Floating point Predictor not supported with %hu-bit samples");
    }

    else
    {
      TIFFErrorExtR(a1, "PredictorSetup", "Floating point Predictor not supported with %hu data format");
    }

    return 0;
  }

  if (v9 != 2)
  {
    TIFFErrorExtR(a1, "PredictorSetup", "Predictor value %d not supported");
    return 0;
  }

  v10 = *(a1 + 116);
  if ((((v10 - 8) >> 3) | ((v10 - 8) << 13)) > 7u || ((1 << ((v10 - 8) >> 3)) & 0x8B) == 0)
  {
    TIFFErrorExtR(a1, "PredictorSetup", "Horizontal differencing Predictor not supported with %hu-bit samples");
    return 0;
  }

LABEL_15:
  if (*(a1 + 170) == 1)
  {
    v14 = *(a1 + 130);
  }

  else
  {
    v14 = 1;
  }

  *(v8 + 1) = v14;
  if ((*(a1 + 17) & 4) != 0)
  {
    v15 = _cg_TIFFTileRowSize(a1);
  }

  else
  {
    v15 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v8 + 2) = v15;
  return v15 != 0;
}

uint64_t horAcc8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = *(*(a1 + 1096) + 8);
  if (a3 % v5)
  {
    TIFFErrorExtR(a1, "horAcc8", "%s", "(cc%stride)!=0");
    return 0;
  }

  else
  {
    v7 = a3 - v5;
    if (a3 > v5)
    {
      if (v5 == 4)
      {
        if (a3 >= 5)
        {
          a4.i32[0] = *a2;
          v18 = vmovl_u16(*&vmovl_u8(a4));
          for (i = 4; i < a3; i += 4)
          {
            a5.i32[0] = *&a2[i];
            v18 = vaddw_u16(v18, *&vmovl_u8(a5));
            a5 = vuzp1_s8(vmovn_s32(v18), *v18.i8);
            *&a2[i] = a5.i32[0];
          }
        }
      }

      else if (v5 == 3)
      {
        if (a3 >= 4)
        {
          v8 = 0;
          v9 = a2[2];
          v10 = a2[1];
          v11 = *a2;
          do
          {
            v12 = &a2[v8];
            v11 += a2[v8 + 3];
            v12[3] = v11;
            v10 += a2[v8 + 4];
            v12[4] = v10;
            v9 += a2[v8 + 5];
            v12[5] = v9;
            v13 = v8 + 6;
            v8 += 3;
          }

          while (v13 < a3);
        }
      }

      else
      {
        do
        {
          if (v5)
          {
            if (v5 != 1)
            {
              if (v5 != 2)
              {
                if (v5 >= 5)
                {
                  v14 = v5 - 3;
                  do
                  {
                    a2[v5] += *a2;
                    ++a2;
                    --v14;
                  }

                  while (v14 > 1);
                }

                a2[v5] += *a2;
                v16 = a2[1];
                v15 = a2 + 1;
                v15[v5] += v16;
                a2 = v15 + 1;
              }

              a2[v5] += *a2;
              ++a2;
            }

            a2[v5] += *a2;
            ++a2;
          }

          v17 = v7 <= v5;
          v7 -= v5;
        }

        while (!v17);
      }
    }

    return 1;
  }
}

uint64_t horAcc16(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  if (a3 % (2 * v3))
  {
    TIFFErrorExtR(a1, "horAcc16", "%s", "cc%(2*stride))!=0");
    return 0;
  }

  v5 = a3 / 2 - v3;
  if (a3 / 2 > v3)
  {
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_11:
          if (v3 >= 5)
          {
            v6 = v3 - 3;
            do
            {
              a2[v3] += *a2;
              ++a2;
              --v6;
            }

            while (v6 > 1);
          }

          goto LABEL_14;
        }

LABEL_17:
        a2[v3] += *a2;
        ++a2;
      }

      v5 -= v3;
      if (v5 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_11;
        }

LABEL_14:
        a2[v3] += *a2;
        ++a2;
      }

      a2[v3] += *a2;
      ++a2;
    }

    a2[v3] += *a2;
    ++a2;
    goto LABEL_17;
  }

  return 1;
}

uint64_t horAcc32(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  v4 = a3 + 3;
  if (a3 >= 0)
  {
    v4 = a3;
  }

  if (a3 % (4 * v3))
  {
    TIFFErrorExtR(a1, "horAcc32", "%s", "cc%(4*stride))!=0");
    return 0;
  }

  v6 = v4 >> 2;
  v7 = v6 <= v3;
  v8 = v6 - v3;
  if (!v7)
  {
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_13:
          if (v3 >= 5)
          {
            v9 = v3 - 3;
            do
            {
              a2[v3] += *a2;
              ++a2;
              --v9;
            }

            while (v9 > 1);
          }

          goto LABEL_16;
        }

LABEL_19:
        a2[v3] += *a2;
        ++a2;
      }

      v8 -= v3;
      if (v8 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_13;
        }

LABEL_16:
        a2[v3] += *a2;
        ++a2;
      }

      a2[v3] += *a2;
      ++a2;
    }

    a2[v3] += *a2;
    ++a2;
    goto LABEL_19;
  }

  return 1;
}

uint64_t horAcc64(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  v4 = a3 + 7;
  if (a3 >= 0)
  {
    v4 = a3;
  }

  if (a3 % (8 * v3))
  {
    TIFFErrorExtR(a1, "horAcc64", "%s", "cc%(8*stride))!=0");
    return 0;
  }

  v6 = v4 >> 3;
  v7 = v6 <= v3;
  v8 = v6 - v3;
  if (!v7)
  {
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_13:
          if (v3 >= 5)
          {
            v9 = v3 - 3;
            do
            {
              a2[v3] += *a2;
              ++a2;
              --v9;
            }

            while (v9 > 1);
          }

          goto LABEL_16;
        }

LABEL_19:
        a2[v3] += *a2;
        ++a2;
      }

      v8 -= v3;
      if (v8 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_13;
        }

LABEL_16:
        a2[v3] += *a2;
        ++a2;
      }

      a2[v3] += *a2;
      ++a2;
    }

    a2[v3] += *a2;
    ++a2;
    goto LABEL_19;
  }

  return 1;
}

uint64_t PredictorDecodeRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    PredictorDecodeRow_cold_3();
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    PredictorDecodeRow_cold_2();
  }

  if (!*(v3 + 80))
  {
    PredictorDecodeRow_cold_1();
  }

  result = v4();
  if (result)
  {
    v9 = *(v3 + 80);

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t PredictorDecodeTile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    PredictorDecodeTile_cold_4();
  }

  v4 = v3[9];
  if (!v4)
  {
    PredictorDecodeTile_cold_3();
  }

  result = v4();
  if (result)
  {
    v9 = v3[2];
    if (v9 <= 0)
    {
      PredictorDecodeTile_cold_2();
    }

    if (a3 % v9)
    {
      TIFFErrorExtR(a1, "PredictorDecodeTile", "%s", "occ0%rowsize != 0");
      return 0;
    }

    else
    {
      if (!v3[10])
      {
        PredictorDecodeTile_cold_1();
      }

      if (a3 < 1)
      {
        return 1;
      }

      else
      {
        while (1)
        {
          result = (v3[10])(a1, a2, v9);
          if (!result)
          {
            break;
          }

          a3 -= v9;
          a2 += v9;
          if (a3 <= 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t swabHorAcc16(uint64_t a1, _WORD *a2, uint64_t a3)
{
  TIFFSwabArrayOfShort(a2, a3 / 2);

  return horAcc16(a1, a2, a3);
}

uint64_t swabHorAcc32(uint64_t a1, __int32 *a2, uint64_t a3, uint8x8_t a4)
{
  TIFFSwabArrayOfLong(a2, a3 / 4, a4);

  return horAcc32(a1, a2, a3);
}

uint64_t swabHorAcc64(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  TIFFSwabArrayOfLong8(a2, a3 / 8);

  return horAcc64(a1, a2, a3);
}

uint64_t fpAcc(uint64_t a1, _BYTE *a2, int64_t size)
{
  v3 = *(a1 + 116);
  if (v3 < 8)
  {
    return 0;
  }

  v6 = *(*(a1 + 1096) + 8);
  v7 = v3 >> 3;
  if (size % (v6 * (v3 >> 3)))
  {
    TIFFErrorExtR(a1, "fpAcc", "%s", "cc%(bps*stride))!=0");
    return 0;
  }

  result = malloc_type_malloc(size, 0x100004077774924uLL);
  if (result)
  {
    v9 = result;
    v10 = size / v7;
    if (v6 < size)
    {
      v11 = a2;
      v12 = size;
      while (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
LABEL_15:
            if (v6 >= 5)
            {
              v13 = v6 - 3;
              do
              {
                v11[v6] += *v11;
                ++v11;
                --v13;
              }

              while (v13 > 1);
            }

            goto LABEL_18;
          }

LABEL_21:
          v11[v6] += *v11;
          ++v11;
        }

        v12 -= v6;
        if (v12 <= v6)
        {
          goto LABEL_23;
        }
      }

      if (v6 != 2)
      {
        if (v6 != 3)
        {
          if (v6 != 4)
          {
            goto LABEL_15;
          }

LABEL_18:
          v11[v6] += *v11;
          ++v11;
        }

        v11[v6] += *v11;
        ++v11;
      }

      v11[v6] += *v11;
      ++v11;
      goto LABEL_21;
    }

LABEL_23:
    _TIFFmemcpy(result, a2, size);
    if (v10 >= 1)
    {
      v14 = 0;
      if (v7 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v7;
      }

      do
      {
        v16 = v15;
        v17 = v7 - 1;
        v18 = a2;
        do
        {
          *v18++ = v9[v14 + v10 * v17--];
          --v16;
        }

        while (v16);
        ++v14;
        a2 += v7;
      }

      while (v14 != v10);
    }

    free(v9);
    return 1;
  }

  return result;
}

uint64_t horDiff8(uint64_t a1, char *a2, uint64_t a3, uint8x8_t a4, int16x4_t a5)
{
  v5 = *(*(a1 + 1096) + 8);
  if (a3 % v5)
  {
    TIFFErrorExtR(a1, "horDiff8", "%s", "(cc%stride)!=0");
    return 0;
  }

  else
  {
    v7 = a3 - v5;
    if (a3 > v5)
    {
      if (v5 == 4)
      {
        v17 = *a2;
        v16 = (a2 + 4);
        a4.i32[0] = v17;
        v18 = vmovl_u8(a4).u64[0];
        v19 = v7 + 4;
        do
        {
          a5.i32[0] = *v16;
          a5 = vmovl_u8(a5).u64[0];
          v20 = vsub_s16(a5, v18);
          *v16++ = vuzp1_s8(v20, v20).u32[0];
          v19 -= 4;
          v18 = a5;
        }

        while (v19 > 4);
      }

      else if (v5 == 3)
      {
        v8 = *a2;
        v9 = a2[1];
        v10 = v7 + 3;
        v11 = a2 + 5;
        v12 = a2[2];
        do
        {
          v13 = *(v11 - 2);
          *(v11 - 2) = v13 - v8;
          v14 = *(v11 - 1);
          *(v11 - 1) = v14 - v9;
          v15 = *v11;
          v10 -= 3;
          *v11 -= v12;
          v11 += 3;
          v8 = v13;
          v9 = v14;
          v12 = v15;
        }

        while (v10 > 3);
      }

      else
      {
        v21 = &a2[v7 - 1];
        do
        {
          if (v5)
          {
            if (v5 != 1)
            {
              if (v5 != 2)
              {
                if (v5 >= 5)
                {
                  v22 = -3;
                  do
                  {
                    v21[v5] -= *v21;
                    --v21;
                    --v22;
                  }

                  while ((v5 + v22) > 1);
                }

                v21[v5] -= *v21;
                v24 = *(v21 - 1);
                v23 = v21 - 1;
                v23[v5] -= v24;
                v21 = v23 - 1;
              }

              v21[v5] -= *v21;
              --v21;
            }

            v21[v5] -= *v21;
            --v21;
          }

          v25 = v7 <= v5;
          v7 -= v5;
        }

        while (!v25);
      }
    }

    return 1;
  }
}

uint64_t horDiff16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  if (a3 % (2 * v3))
  {
    TIFFErrorExtR(a1, "horDiff8", "%s", "(cc%(2*stride))!=0");
    return 0;
  }

  v5 = a3 / 2 - v3;
  if (a3 / 2 > v3)
  {
    v6 = (a2 + 2 * v5 - 2);
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_12:
          if (v3 >= 5)
          {
            v7 = v3 - 3;
            do
            {
              v6[v3] -= *v6;
              --v6;
              --v7;
            }

            while (v7 > 1);
          }

          goto LABEL_15;
        }

LABEL_18:
        v6[v3] -= *v6;
        --v6;
      }

      v5 -= v3;
      if (v5 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_12;
        }

LABEL_15:
        v6[v3] -= *v6;
        --v6;
      }

      v6[v3] -= *v6;
      --v6;
    }

    v6[v3] -= *v6;
    --v6;
    goto LABEL_18;
  }

  return 1;
}

uint64_t horDiff32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  v4 = a3 + 3;
  if (a3 >= 0)
  {
    v4 = a3;
  }

  if (a3 % (4 * v3))
  {
    TIFFErrorExtR(a1, "horDiff32", "%s", "(cc%(4*stride))!=0");
    return 0;
  }

  v6 = v4 >> 2;
  v7 = v6 <= v3;
  v8 = v6 - v3;
  if (!v7)
  {
    v9 = (a2 + 4 * v8 - 4);
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_14:
          if (v3 >= 5)
          {
            v10 = v3 - 3;
            do
            {
              v9[v3] -= *v9;
              --v9;
              --v10;
            }

            while (v10 > 1);
          }

          goto LABEL_17;
        }

LABEL_20:
        v9[v3] -= *v9;
        --v9;
      }

      v8 -= v3;
      if (v8 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9[v3] -= *v9;
        --v9;
      }

      v9[v3] -= *v9;
      --v9;
    }

    v9[v3] -= *v9;
    --v9;
    goto LABEL_20;
  }

  return 1;
}

uint64_t horDiff64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 1096) + 8);
  v4 = a3 + 7;
  if (a3 >= 0)
  {
    v4 = a3;
  }

  if (a3 % (8 * v3))
  {
    TIFFErrorExtR(a1, "horDiff64", "%s", "(cc%(8*stride))!=0");
    return 0;
  }

  v6 = v4 >> 3;
  v7 = v6 <= v3;
  v8 = v6 - v3;
  if (!v7)
  {
    v9 = (a2 + 8 * v8 - 8);
    while (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_14:
          if (v3 >= 5)
          {
            v10 = v3 - 3;
            do
            {
              v9[v3] -= *v9;
              --v9;
              --v10;
            }

            while (v10 > 1);
          }

          goto LABEL_17;
        }

LABEL_20:
        v9[v3] -= *v9;
        --v9;
      }

      v8 -= v3;
      if (v8 < 1)
      {
        return 1;
      }
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9[v3] -= *v9;
        --v9;
      }

      v9[v3] -= *v9;
      --v9;
    }

    v9[v3] -= *v9;
    --v9;
    goto LABEL_20;
  }

  return 1;
}

uint64_t PredictorEncodeRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 1096);
  if (!v4)
  {
    PredictorEncodeRow_cold_3();
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
    PredictorEncodeRow_cold_2();
  }

  if (!*(v4 + 24))
  {
    PredictorEncodeRow_cold_1();
  }

  result = v5();
  if (result)
  {
    v11 = *(v4 + 24);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t PredictorEncodeTile(uint64_t a1, const void *a2, int64_t size, uint64_t a4)
{
  v4 = *(a1 + 1096);
  if (!v4)
  {
    PredictorEncodeTile_cold_4();
  }

  if (!v4[6])
  {
    PredictorEncodeTile_cold_3();
  }

  if (!v4[5])
  {
    PredictorEncodeTile_cold_2();
  }

  v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v9)
  {
    TIFFErrorExtR(a1, "PredictorEncodeTile", "Out of memory allocating %lld byte temp buffer.", size);
    return 0;
  }

  v10 = v9;
  memcpy(v9, a2, size);
  v11 = v4[2];
  if (v11 <= 0)
  {
    PredictorEncodeTile_cold_1();
  }

  if (size % v11)
  {
    TIFFErrorExtR(a1, "PredictorEncodeTile", "%s", "(cc0%rowsize)!=0");
    free(v10);
    return 0;
  }

  if (size >= 1)
  {
    v13 = v10;
    v14 = size;
    do
    {
      (v4[6])(a1, v13, v11);
      v14 -= v11;
      v13 += v11;
    }

    while (v14 > 0);
  }

  v15 = (v4[5])(a1, v10, size, a4);
  free(v10);
  return v15;
}

uint64_t swabHorDiff16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = horDiff16(a1, a2, a3);
  if (result)
  {
    TIFFSwabArrayOfShort(a2, a3 / 2);
    return 1;
  }

  return result;
}

uint64_t swabHorDiff32(uint64_t a1, __int32 *a2, uint64_t a3)
{
  result = horDiff32(a1, a2, a3);
  if (result)
  {
    TIFFSwabArrayOfLong(a2, a3 / 4, v6);
    return 1;
  }

  return result;
}

uint64_t swabHorDiff64(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  result = horDiff64(a1, a2, a3);
  if (result)
  {
    TIFFSwabArrayOfLong8(a2, a3 / 8);
    return 1;
  }

  return result;
}

uint64_t fpDiff(uint64_t a1, char *a2, int64_t size)
{
  v3 = *(*(a1 + 1096) + 8);
  v4 = *(a1 + 116);
  v5 = v4 >> 3;
  if (size % (v3 * (v4 >> 3)))
  {
    TIFFErrorExtR(a1, "fpDiff", "%s", "(cc%(bps*stride))!=0");
    return 0;
  }

  v7 = size;
  result = malloc_type_malloc(size, 0x100004077774924uLL);
  if (result)
  {
    v9 = result;
    v10 = v7 / v5;
    _TIFFmemcpy(result, a2, v7);
    if (v7 / v5 >= 1)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (v4 >= 8)
        {
          v13 = v12;
          v14 = v5 - 1;
          do
          {
            v15 = *v13++;
            a2[v11 + v10 * v14--] = v15;
          }

          while (v14 != -1);
        }

        ++v11;
        v12 += v5;
      }

      while (v11 != v10);
    }

    free(v9);
    if (v3 < v7)
    {
      v16 = &a2[v7 + ~v3];
      while (v3 <= 1)
      {
        if (v3)
        {
          if (v3 != 1)
          {
LABEL_19:
            if (v3 >= 5)
            {
              v17 = -3;
              do
              {
                v16[v3] -= *v16;
                --v16;
                --v17;
              }

              while ((v3 + v17) > 1);
            }

            goto LABEL_22;
          }

LABEL_25:
          v16[v3] -= *v16;
          --v16;
        }

        v7 -= v3;
        if (v7 <= v3)
        {
          return 1;
        }
      }

      if (v3 != 2)
      {
        if (v3 != 3)
        {
          if (v3 != 4)
          {
            goto LABEL_19;
          }

LABEL_22:
          v16[v3] -= *v16;
          --v16;
        }

        v16[v3] -= *v16;
        --v16;
      }

      v16[v3] -= *v16;
      --v16;
      goto LABEL_25;
    }

    return 1;
  }

  return result;
}

uint64_t IIO_Reader_RAD::compareOptions(IIO_Reader_RAD *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  BoolForKey = IIODictionary::getBoolForKey(v7, @"kCGImageSourceShouldAllowFloat");
  LODWORD(a3) = BoolForKey ^ IIODictionary::getBoolForKey(v6, @"kCGImageSourceShouldAllowFloat");
  IIODictionary::~IIODictionary(v6);
  IIODictionary::~IIODictionary(v7);
  return a3 ^ 1;
}

void sub_1860013B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL TIFFWriteDirectorySec(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (*(a1 + 12))
  {
    _TIFFFillStriles(a1);
    if (a3)
    {
      v15 = *(a1 + 16);
      if ((v15 & 0x1000) != 0)
      {
        *(a1 + 16) = v15 & 0xFFFFEFFF;
        if (!(*(a1 + 1000))(a1))
        {
          TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Error post-encoding before directory write");
          return 0;
        }
      }

      (*(a1 + 1056))(a1);
      v16 = *(a1 + 16);
      if (*(a1 + 1160) >= 1 && (v16 & 0x40) != 0)
      {
        if (!TIFFFlushData1(a1))
        {
          TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Error flushing data before directory write");
          return 0;
        }

        v16 = *(a1 + 16);
      }

      if ((v16 & 0x200) != 0)
      {
        v17 = *(a1 + 1120);
        if (v17)
        {
          free(v17);
          *(a1 + 1160) = 0;
          v14 = 0;
          *(a1 + 1120) = 0u;
          *(a1 + 1136) = 0u;
          v16 = *(a1 + 16);
        }
      }

      *(a1 + 16) = v16 & 0xFFFFFFAF;
    }

    v197 = a3;
    v18 = (a1 + 72);
    if ((*(a1 + 72) & 0x80) != 0 && *(a1 + 120) == 32946)
    {
      TIFFWarningExtR(a1, "TIFFWriteDirectorySec", "Creating TIFF with legacy Deflate codec identifier, COMPRESSION_ADOBE_DEFLATE is more widely supported");
    }

    LODWORD(v19) = 0;
    v20 = 0;
    v200 = a2;
    while (1)
    {
      size = v19;
      v201 = 0;
      if (v20)
      {
        if (!a2)
        {
          goto LABEL_211;
        }
      }

      else
      {
        *(a1 + 432) = 0;
        if (!a2)
        {
          goto LABEL_211;
        }
      }

      v21 = *v18;
      if ((*v18 & 2) != 0)
      {
        if (!TIFFWriteDirectoryTagShortLong(a1, &v201, v20, 0x100u, *(a1 + 88), v14) || !TIFFWriteDirectoryTagShortLong(a1, &v201, v20, 0x101u, *(a1 + 92), v22))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 4) != 0)
      {
        if (!TIFFWriteDirectoryTagShortLong(a1, &v201, v20, 0x142u, *(a1 + 100), v14) || !TIFFWriteDirectoryTagShortLong(a1, &v201, v20, 0x143u, *(a1 + 104), v23))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 8) != 0)
      {
        if (!TIFFWriteDirectoryTagRational(a1, &v201, v20, 282, *(a1 + 160), v10, v11, v12, v13) || !TIFFWriteDirectoryTagRational(a1, &v201, v20, 283, *(a1 + 164), v24, v25, v26, v27))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x10) != 0)
      {
        if (!TIFFWriteDirectoryTagRational(a1, &v201, v20, 286, *(a1 + 172), v10, v11, v12, v13) || !TIFFWriteDirectoryTagRational(a1, &v201, v20, 287, *(a1 + 176), v28, v29, v30, v31))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x20) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedLong(a1, &v201, v20, 0xFEu, *(a1 + 112), v14))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x40) != 0)
      {
        if (!TIFFWriteDirectoryTagShortPerSample(a1, &v201, v20, 0x102u, *(a1 + 116)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x80) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x103u, *(a1 + 120)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x100) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x106u, *(a1 + 122)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x200) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x107u, *(a1 + 124)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x400) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x10Au, *(a1 + 126)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x8000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x112u, *(a1 + 128)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x10000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x115u, *(a1 + 130)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x20000) != 0)
      {
        if (!TIFFWriteDirectoryTagShortLong(a1, &v201, v20, 0x116u, *(a1 + 132), v14))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x40000) != 0)
      {
        if (!TIFFWriteDirectoryTagShortPerSample(a1, &v201, v20, 0x118u, *(a1 + 136)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x80000) != 0)
      {
        if (!TIFFWriteDirectoryTagShortPerSample(a1, &v201, v20, 0x119u, *(a1 + 138)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x100000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x11Cu, *(a1 + 170)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x400000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x128u, *(a1 + 168)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x800000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x129u, 2u, (a1 + 180)))
        {
          goto LABEL_422;
        }

        v21 = *v18;
      }

      if ((v21 & 0x1000000) != 0)
      {
        v32 = (*(a1 + 17) & 4) != 0 ? 325 : 279;
        if (!TIFFWriteDirectoryTagLongLong8Array(a1, &v201, v20, v32, *(a1 + 228), *(a1 + 240), v12, v13))
        {
LABEL_422:
          if (!v20)
          {
            return 0;
          }

          goto LABEL_423;
        }
      }

      if ((*(v18 + 3) & 2) != 0)
      {
        if ((*(a1 + 17) & 4) != 0)
        {
          v33 = *(a1 + 228);
          v11 = *(a1 + 232);
          v34 = a1;
          v35 = v20;
          v36 = 324;
        }

        else
        {
          v11 = *(a1 + 232);
          if (!v11)
          {
            goto LABEL_90;
          }

          v33 = *(a1 + 228);
          v34 = a1;
          v35 = v20;
          v36 = 273;
        }

        if (!TIFFWriteDirectoryTagLongLong8Array(v34, &v201, v35, v36, v33, v11, v12, v13))
        {
          goto LABEL_422;
        }
      }

LABEL_90:
      v37 = *v18;
      if ((*v18 & 0x4000000) == 0)
      {
        goto LABEL_95;
      }

      v38 = *(a1 + 116);
      v39 = 2 * (3 << v38);
      if (v20)
      {
        v40 = malloc_type_malloc(v39, 0x1000040BDFB0063uLL);
        if (!v40)
        {
          v184 = "TIFFWriteDirectoryTagColormap";
          goto LABEL_468;
        }

        v41 = v40;
        _TIFFmemcpy(v40, *(a1 + 184), 2 * (1 << v38));
        _TIFFmemcpy(v41 + 2 * (1 << v38), *(a1 + 192), 2 * (1 << v38));
        _TIFFmemcpy(v41 + 2 * (2 << v38), *(a1 + 200), 2 * (1 << v38));
        v42 = TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x140u, 3 << v38, v41);
        free(v41);
        if (!v42)
        {
          goto LABEL_423;
        }

        v18 = (a1 + 72);
        v37 = *(a1 + 72);
LABEL_95:
        if (v37 < 0)
        {
          goto LABEL_96;
        }

        goto LABEL_104;
      }

      v43 = 4;
      if ((*(a1 + 18) & 8) != 0)
      {
        v43 = 8;
      }

      if (v39 > v43)
      {
        *(a1 + 432) += v39;
      }

      ++v201;
      if (v37 < 0)
      {
LABEL_96:
        if (*(a1 + 212))
        {
          LOWORD(v203[0]) = 0;
          __src = 0;
          p_src = &__src;
          _cg_TIFFGetFieldDefaulted(a1, 338, v8, v9, v10, v11, v12, v13, v203);
          if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x152u, LOWORD(v203[0]), __src))
          {
            goto LABEL_422;
          }
        }
      }

LABEL_104:
      v44 = *(a1 + 76);
      if (v44)
      {
        if (!TIFFWriteDirectoryTagShortPerSample(a1, &v201, v20, 0x153u, *(a1 + 118)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 2) != 0)
      {
        if (!TIFFWriteDirectoryTagSampleformatArray(a1, &v201, v20, 0x154u, *(a1 + 130), *(a1 + 144)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 4) != 0)
      {
        if (!TIFFWriteDirectoryTagSampleformatArray(a1, &v201, v20, 0x155u, *(a1 + 130), *(a1 + 152)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 8) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedLong(a1, &v201, v20, 0x80E5u, *(a1 + 96), v14))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x10) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedLong(a1, &v201, v20, 0x80E6u, *(a1 + 108), v14))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x20) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x141u, 2u, (a1 + 208)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x80) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x212u, 2u, (a1 + 336)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x100) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x213u, *(a1 + 340)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x200) != 0)
      {
        if (!TIFFWriteDirectoryTagRationalArray(a1, &v201, v20, 0x214u, 6u, *(a1 + 368)))
        {
          goto LABEL_422;
        }

        v44 = *(a1 + 76);
      }

      if ((v44 & 0x1000) != 0)
      {
        v45 = 0;
        v46 = *(a1 + 116);
        v47 = 1 << v46;
        v48 = *(a1 + 130) - *(a1 + 212);
        do
        {
          if (!*(a1 + 8 * v45 + 344))
          {
            TIFFWarningExtR(a1, "TIFFWriteDirectoryTagTransferfunction", "Too few TransferFunctions provided. Tag not written to file");
            goto LABEL_156;
          }

          if (v48 < 2)
          {
            break;
          }

          v49 = v45++ > 1;
        }

        while (!v49);
        if (v48 < 2)
        {
          v50 = 1;
        }

        else if (_TIFFmemcmp(*(a1 + 344), *(a1 + 360), 2 * v47))
        {
          v50 = 3;
        }

        else if (_TIFFmemcmp(*(a1 + 344), *(a1 + 352), 2 * v47))
        {
          v50 = 3;
        }

        else
        {
          v50 = 1;
        }

        v51 = 2 * (v50 << v46);
        if (v20)
        {
          v52 = malloc_type_malloc(v51, 0x1000040BDFB0063uLL);
          if (!v52)
          {
            v184 = "TIFFWriteDirectoryTagTransferfunction";
LABEL_468:
            TIFFErrorExtR(a1, v184, "Out of memory");
            goto LABEL_423;
          }

          v53 = v52;
          _TIFFmemcpy(v52, *(a1 + 344), 2 * (1 << v46));
          if (v50 != 1)
          {
            _TIFFmemcpy(v53 + 2 * (1 << v46), *(a1 + 352), 2 * (1 << v46));
            _TIFFmemcpy(v53 + 2 * (2 << v46), *(a1 + 360), 2 * (1 << v46));
          }

          v54 = TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, 0x12Du, v50 << v46, v53);
          free(v53);
          v18 = (a1 + 72);
          if (!v54)
          {
            goto LABEL_423;
          }
        }

        else
        {
          v55 = 4;
          if ((*(a1 + 18) & 8) != 0)
          {
            v55 = 8;
          }

          if (v51 > v55)
          {
            *(a1 + 432) += v51;
          }

          ++v201;
        }
      }

LABEL_156:
      v56 = *(a1 + 76);
      if ((v56 & 0x4000) != 0)
      {
        if (!TIFFWriteDirectoryTagAscii(a1, &v201, v20, 0x14Du, *(a1 + 376), *(a1 + 384)))
        {
          goto LABEL_422;
        }

        v56 = *(a1 + 76);
      }

      if ((v56 & 0x40000) != 0)
      {
        if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, 0x14Eu, *(a1 + 392)))
        {
          goto LABEL_422;
        }

        v56 = *(a1 + 76);
      }

      if ((v56 & 0x20000) != 0)
      {
        v10 = *(a1 + 320);
        if (*(a1 + 320))
        {
          v57 = *(a1 + 904);
          if ((*(a1 + 18) & 8) != 0)
          {
            v66 = TIFFWriteDirectoryTagCheckedIfd8Array(a1, &v201, v20, 0x14Au, v10, *(a1 + 328));
          }

          else
          {
            v58 = malloc_type_malloc(4 * *(a1 + 320), 0x100004052888210uLL);
            if (!v58)
            {
              v182 = "TIFFWriteDirectoryTagSubifd";
              goto LABEL_470;
            }

            v60 = v58;
            v61 = *(a1 + 320);
            if (*(a1 + 320))
            {
              v62 = 0;
              v63 = *(a1 + 328);
              v64 = v58;
              do
              {
                if (!v63)
                {
                  TIFFWriteDirectorySec_cold_1();
                }

                v65 = *v63;
                if (HIDWORD(*v63))
                {
                  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSubifd", "Illegal value for SubIFD tag");
                  goto LABEL_420;
                }

                ++v63;
                *v64++ = v65;
                ++v62;
              }

              while (v62 < v61);
            }

            v66 = TIFFWriteDirectoryTagCheckedIfdArray(a1, &v201, v20, 0x14Au, v61, v58, v59);
            free(v60);
          }

          if (v20)
          {
            if (!v66)
            {
              goto LABEL_423;
            }

            *(a1 + 16) |= 0x2000u;
            v67 = *(a1 + 320);
            *(a1 + 912) = v67;
            if (v67 == 1)
            {
              v68 = 0;
            }

            else
            {
              v68 = v57;
            }

            *(a1 + 920) = v68;
          }

          else if (!v66)
          {
            return 0;
          }
        }
      }

      if ((*(a1 + 78) & 0x20) != 0)
      {
        TIFFWarning("TIFFWriteRichIPTCTag", "Unimplemented.", v8, v9, v10, v11, v12, v13);
      }

      if (*(a1 + 1264))
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = *(*(a1 + 1256) + 8 * v69);
          v72 = *(v71 + 12);
          if (v72 >= 0x42 && ((*(v18 + ((v72 >> 3) & 0x1FFC)) >> v72) & 1) != 0)
          {
            v73 = v71[5];
            if (v73 > 5)
            {
              if (v73 == 6)
              {
                LODWORD(__src) = 0;
                if (v71[2] != 4)
                {
                  TIFFWriteDirectorySec_cold_5();
                }

                if (*(v71 + 2) != 1)
                {
                  TIFFWriteDirectorySec_cold_6();
                }

                if (*(v71 + 27))
                {
                  TIFFWriteDirectorySec_cold_7();
                }

                _cg_TIFFGetField(a1, *v71, v8, v9, v10, v11, v12, v13, &__src);
                if (!TIFFWriteDirectoryTagCheckedLong(a1, &v201, v20, *v71, __src, v75))
                {
                  goto LABEL_422;
                }
              }

              else
              {
                if (v73 != 40)
                {
LABEL_443:
                  TIFFFieldTag(v71);
                  TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Cannot write tag %u (%s)");
                  goto LABEL_471;
                }

                v203[0] = 0;
                __src = 0;
                if (v71[2] != 7)
                {
                  TIFFWriteDirectorySec_cold_2();
                }

                if (*(v71 + 2) != -3)
                {
                  TIFFWriteDirectorySec_cold_3();
                }

                if (*(v71 + 27) != 1)
                {
                  TIFFWriteDirectorySec_cold_4();
                }

                p_src = &__src;
                _cg_TIFFGetField(a1, *v71, v8, v9, v10, v11, v12, v13, v203);
                if (!TIFFWriteDirectoryTagUndefinedArray(a1, &v201, v20, *v71, v203[0], __src))
                {
                  goto LABEL_422;
                }
              }
            }

            else if (v73 == 1)
            {
              __src = 0;
              if (v71[2] != 2)
              {
                TIFFWriteDirectorySec_cold_11();
              }

              if (*(v71 + 2) != -1)
              {
                TIFFWriteDirectorySec_cold_12();
              }

              if (*(v71 + 27))
              {
                TIFFWriteDirectorySec_cold_13();
              }

              _cg_TIFFGetField(a1, *v71, v8, v9, v10, v11, v12, v13, &__src);
              v74 = strlen(__src);
              if (!TIFFWriteDirectoryTagAscii(a1, &v201, v20, *v71, v74, __src))
              {
                goto LABEL_422;
              }
            }

            else
            {
              if (v73 != 4)
              {
                goto LABEL_443;
              }

              LOWORD(__src) = 0;
              if (v71[2] != 3)
              {
                TIFFWriteDirectorySec_cold_8();
              }

              if (*(v71 + 2) != 1)
              {
                TIFFWriteDirectorySec_cold_9();
              }

              if (*(v71 + 27))
              {
                TIFFWriteDirectorySec_cold_10();
              }

              _cg_TIFFGetField(a1, *v71, v8, v9, v10, v11, v12, v13, &__src);
              if (!TIFFWriteDirectoryTagCheckedShort(a1, &v201, v20, *v71, __src))
              {
                goto LABEL_422;
              }
            }
          }

          v69 = v70;
          v49 = *(a1 + 1264) > v70++;
        }

        while (v49);
      }

LABEL_211:
      if (*(a1 + 408))
      {
        v76 = 0;
        v198 = a4;
        while (1)
        {
          v77 = (*(a1 + 416) + 24 * v76);
          v78 = *v77;
          v79 = **v77;
          v80 = *(v77 + 2);
          switch(*(*v77 + 2))
          {
            case 1:
              if (!TIFFWriteDirectoryTagByteArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 2:
              if (!TIFFWriteDirectoryTagAscii(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 3:
              if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 4:
              if (!TIFFWriteDirectoryTagCheckedLongArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2], v14))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 5:
              v104 = TIFFFieldSetGetSize(v78);
              v105 = *(a1 + 416) + 24 * v76;
              v106 = *(v105 + 16);
              if (v104 == 8)
              {
                v107 = 4 * (2 * v80);
                if (v20)
                {
                  v108 = malloc_type_malloc(v107, 0x100004052888210uLL);
                  if (!v108)
                  {
                    v184 = "TIFFWriteDirectoryTagCheckedRationalDoubleArray";
                    goto LABEL_468;
                  }

                  v116 = v108;
                  if (v80)
                  {
                    v117 = v80;
                    v118 = v108;
                    do
                    {
                      v119 = *v106++;
                      DoubleToRational(v118, v118 + 1, v119, v109, v110, v111, v112, v113, v114, v195);
                      v118 += 2;
                      --v117;
                    }

                    while (v117);
                  }

                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabArrayOfLong(v116, (2 * v80), v115);
                  }

                  v90 = TIFFWriteDirectoryTagData(a1, &v201, v20, v79, 5u, v80, (8 * v80), v116);
                  free(v116);
                  a4 = v198;
                  v18 = (a1 + 72);
LABEL_299:
                  if (!v90)
                  {
                    goto LABEL_422;
                  }
                }

                else
                {
                  v138 = 4;
                  if ((*(a1 + 18) & 8) != 0)
                  {
                    v138 = 8;
                  }

                  a4 = v198;
                  if (v107 > v138)
                  {
                    *(a1 + 432) += v107;
                  }

                  ++v201;
                  v18 = (a1 + 72);
                }
              }

              else
              {
                v81 = v104;
                if (!TIFFWriteDirectoryTagRationalArray(a1, &v201, v20, v79, v80, *(v105 + 16)))
                {
                  goto LABEL_422;
                }

LABEL_312:
                v18 = (a1 + 72);
                if (v81 != 4)
                {
                  TIFFErrorExtR(a1, "TIFFLib: _TIFFWriteDirectorySec()", "Rational2Double: .set_field_type is not 4 but %d", v81);
                }
              }

LABEL_300:
              if (++v76 >= *(a1 + 408))
              {
                goto LABEL_319;
              }

              break;
            case 6:
              if (!TIFFWriteDirectoryTagSbyteArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 7:
              if (!TIFFWriteDirectoryTagUndefinedArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 8:
              if (!TIFFWriteDirectoryTagSshortArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 9:
              if (!TIFFWriteDirectoryTagCheckedSlongArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2], v14))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 0xA:
              v81 = TIFFFieldSetGetSize(v78);
              v82 = *(*(a1 + 416) + 24 * v76 + 16);
              v83 = 4 * (2 * v80);
              if (v81 != 8)
              {
                if (v20)
                {
                  v125 = malloc_type_malloc(v83, 0x100004052888210uLL);
                  if (!v125)
                  {
                    v184 = "TIFFWriteDirectoryTagCheckedSrationalArray";
                    goto LABEL_468;
                  }

                  v127 = v125;
                  if (v80)
                  {
                    v128 = v80;
                    v129 = v125;
                    do
                    {
                      v130 = *v82++;
                      DoubleToSrational(v129, v129 + 1, v130);
                      v129 += 2;
                      --v128;
                    }

                    while (v128);
                  }

                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabArrayOfLong(v127, (2 * v80), v126);
                  }

                  v131 = TIFFWriteDirectoryTagData(a1, &v201, v20, v79, 0xAu, v80, (8 * v80), v127);
                  free(v127);
                  a4 = v198;
                  if (!v131)
                  {
                    goto LABEL_422;
                  }
                }

                else
                {
                  v137 = 4;
                  if ((*(a1 + 18) & 8) != 0)
                  {
                    v137 = 8;
                  }

                  if (v83 > v137)
                  {
                    *(a1 + 432) += v83;
                  }

                  ++v201;
                  a4 = v198;
                }

                goto LABEL_312;
              }

              if (!v20)
              {
                v136 = 4;
                if ((*(a1 + 18) & 8) != 0)
                {
                  v136 = 8;
                }

                if (v83 > v136)
                {
                  *(a1 + 432) += v83;
                }

                ++v201;
                a4 = v198;
                goto LABEL_300;
              }

              v84 = malloc_type_malloc(v83, 0x100004052888210uLL);
              if (!v84)
              {
                v184 = "TIFFWriteDirectoryTagCheckedSrationalDoubleArray";
                goto LABEL_468;
              }

              v86 = v84;
              if (v80)
              {
                v87 = v80;
                v88 = v84;
                do
                {
                  v89 = *v82;
                  v82 += 2;
                  DoubleToSrational(v88, v88 + 1, v89);
                  v88 += 2;
                  --v87;
                }

                while (v87);
              }

              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabArrayOfLong(v86, (2 * v80), v85);
              }

              v90 = TIFFWriteDirectoryTagData(a1, &v201, v20, v79, 0xAu, v80, (8 * v80), v86);
              free(v86);
              v18 = (a1 + 72);
              a4 = v198;
              goto LABEL_299;
            case 0xB:
              if (!TIFFWriteDirectoryTagFloatArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2], v14))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 0xC:
              if (!TIFFWriteDirectoryTagDoubleArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2]))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 0xD:
              if (!TIFFWriteDirectoryTagCheckedIfdArray(a1, &v201, v20, **v77, *(v77 + 2), v77[2], v14))
              {
                goto LABEL_422;
              }

              goto LABEL_300;
            case 0x10:
              v91 = v77[2];
              if (!v20)
              {
                v132 = a1;
                v133 = 0;
LABEL_295:
                v90 = TIFFWriteDirectoryTagCheckedLong8Array(v132, &v201, v133, v79, v80, v91);
                goto LABEL_299;
              }

              if ((*(a1 + 18) & 8) != 0)
              {
                v132 = a1;
                v133 = v20;
                goto LABEL_295;
              }

              v92 = malloc_type_malloc(4 * v80, 0x100004052888210uLL);
              if (!v92)
              {
                v184 = "TIFFWriteDirectoryTagLong8Array";
                goto LABEL_468;
              }

              v94 = v92;
              if (v80)
              {
                v95 = 0;
                while (1)
                {
                  v96 = v91[v95];
                  if (HIDWORD(*&v96))
                  {
                    break;
                  }

                  v92[v95++] = v96.i32[0];
                  if (v80 == v95)
                  {
                    goto LABEL_240;
                  }
                }

                TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLong8Array", "Attempt to write unsigned long value %llu larger than 0xFFFFFFFF for tag %d in Classic TIFF file. TIFF file writing aborted", *&v91[v95], v79);
                v168 = v94;
                goto LABEL_421;
              }

LABEL_240:
              v90 = TIFFWriteDirectoryTagCheckedLongArray(a1, &v201, v20, v79, v80, v92, v93);
              v97 = v94;
LABEL_266:
              free(v97);
LABEL_291:
              v18 = (a1 + 72);
              goto LABEL_299;
            case 0x11:
              v98 = a4;
              v99 = v77[2];
              if (!v20)
              {
                v134 = a1;
                v135 = 0;
LABEL_297:
                v90 = TIFFWriteDirectoryTagCheckedSlong8Array(v134, &v201, v135, v79, v80, v99);
                goto LABEL_298;
              }

              if ((*(a1 + 18) & 8) != 0)
              {
                v134 = a1;
                v135 = v20;
                goto LABEL_297;
              }

              v100 = malloc_type_malloc(4 * v80, 0x100004052888210uLL);
              if (!v100)
              {
                v184 = "TIFFWriteDirectoryTagSlong8Array";
                goto LABEL_468;
              }

              v60 = v100;
              if (v80)
              {
                v102 = 0;
                while (1)
                {
                  v103 = v99[v102];
                  if (v103 >= 0x80000000)
                  {
                    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSlong8Array", "Attempt to write signed long value %lli larger than 0x7FFFFFFF (2147483647) for tag %d in Classic TIFF file. TIFF writing to file aborted");
                    goto LABEL_420;
                  }

                  if (v103 <= 0xFFFFFFFF7FFFFFFFLL)
                  {
                    break;
                  }

                  v100[v102++] = v103;
                  if (v80 == v102)
                  {
                    goto LABEL_249;
                  }
                }

                TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSlong8Array", "Attempt to write signed long value %lli smaller than 0x80000000 (-2147483648) for tag %d in Classic TIFF file. TIFF writing to file aborted");
                goto LABEL_420;
              }

LABEL_249:
              v90 = TIFFWriteDirectoryTagCheckedSlongArray(a1, &v201, v20, v79, v80, v100, v101);
              free(v60);
LABEL_298:
              a4 = v98;
              goto LABEL_299;
            case 0x12:
              v120 = v77[2];
              if ((*(a1 + 18) & 8) != 0)
              {
                v90 = TIFFWriteDirectoryTagCheckedIfd8Array(a1, &v201, v20, v79, v80, v120);
                goto LABEL_291;
              }

              v121 = malloc_type_malloc(4 * v80, 0x100004052888210uLL);
              if (!v121)
              {
                v182 = "TIFFWriteDirectoryTagIfdIfd8Array";
                goto LABEL_470;
              }

              v60 = v121;
              if (v80)
              {
                v123 = 0;
                while (1)
                {
                  v124 = v120[v123];
                  if (HIDWORD(*&v124))
                  {
                    break;
                  }

                  v121[v123++] = v124.i32[0];
                  if (v80 == v123)
                  {
                    goto LABEL_265;
                  }
                }

                TIFFErrorExtR(a1, "TIFFWriteDirectoryTagIfdIfd8Array", "Attempt to write value larger than 0xFFFFFFFF in Classic TIFF file.", v195, p_src);
LABEL_420:
                v168 = v60;
LABEL_421:
                free(v168);
                goto LABEL_422;
              }

LABEL_265:
              v90 = TIFFWriteDirectoryTagCheckedIfdArray(a1, &v201, v20, v79, v80, v121, v122);
              v97 = v60;
              goto LABEL_266;
            default:
              TIFFWriteDirectorySec_cold_14();
          }
        }
      }

LABEL_319:
      if (v20)
      {
        if (!v200 || (*(a1 + 78) & 2) == 0 || *(a1 + 920))
        {
          goto LABEL_429;
        }

        if (v201)
        {
          v191 = 0;
          v192 = v20;
          while (*v192 != 330)
          {
            ++v191;
            v192 += 16;
            if (v201 == v191)
            {
              goto LABEL_477;
            }
          }

          v193 = 20;
          if ((*(a1 + 16) & 0x80000) != 0)
          {
            v194 = 20;
          }

          else
          {
            v194 = 12;
          }

          if ((*(a1 + 16) & 0x80000) == 0)
          {
            v193 = 10;
          }

          *(a1 + 920) = v193 + *(a1 + 24) + (v191 * v194);
LABEL_429:
          v171 = malloc_type_malloc(size, 0xD60FAB32uLL);
          if (v171)
          {
            v173 = v171;
            v174 = *(a1 + 16);
            if ((v174 & 0x80000) != 0)
            {
              v185 = v201;
              *v171 = v201;
              if ((v174 & 0x80) != 0)
              {
                TIFFSwabLong8(v171);
              }

              if (v185)
              {
                v186 = 0;
                v187 = &v173[1] + 2;
                v188 = v20 + 1;
                do
                {
                  *(v187 - 1) = *(v188 - 1);
                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabShort(v187 - 2);
                    v189 = *(a1 + 16);
                    *v187 = *v188;
                    if ((v189 & 0x80) != 0)
                    {
                      TIFFSwabShort(v187);
                    }
                  }

                  else
                  {
                    *v187 = *v188;
                  }

                  _TIFFmemcpy(v187 + 2, v188 + 3, 8uLL);
                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabLong8((v187 + 2));
                  }

                  _TIFFmemcpy(v187 + 10, v188 + 7, 8uLL);
                  ++v186;
                  v187 += 20;
                  v188 += 16;
                }

                while (v186 < v201);
                v190 = (v187 - 2);
              }

              else
              {
                v190 = v173 + 1;
              }

              _TIFFmemcpy(v190, (a1 + 32), 8uLL);
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v190);
              }
            }

            else
            {
              LODWORD(__src) = 0;
              v175 = v201;
              v171->i16[0] = v201;
              if ((v174 & 0x80) != 0)
              {
                TIFFSwabShort(v171);
              }

              if (v175)
              {
                v176 = 0;
                v177 = v20 + 1;
                v178 = v173 + 6;
                do
                {
                  *(v178 - 2) = *(v177 - 1);
                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabShort(v178 - 4);
                    v179 = *(a1 + 16);
                    *(v178 - 1) = *v177;
                    if ((v179 & 0x80) != 0)
                    {
                      TIFFSwabShort(v178 - 2);
                    }
                  }

                  else
                  {
                    *(v178 - 1) = *v177;
                  }

                  LODWORD(__src) = *(v177 + 3);
                  _TIFFmemcpy(v178, &__src, 4uLL);
                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    TIFFSwabLong(v178, v180);
                  }

                  _TIFFmemcpy(v178 + 4, v177 + 7, 4uLL);
                  ++v176;
                  v177 += 16;
                  v178 += 12;
                }

                while (v176 < v201);
                v181 = v178 - 4;
              }

              else
              {
                v181 = v173 + 2;
              }

              LODWORD(__src) = *(a1 + 32);
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong(&__src, v172);
              }

              _TIFFmemcpy(v181, &__src, 4uLL);
            }

            free(v20);
            if (_TIFFSeekOK(a1, *(a1 + 24)) && (*(a1 + 1216))(*(a1 + 1200), v173, size) == size)
            {
              free(v173);
              if (v197)
              {
                _cg_TIFFFreeDirectory(a1);
                *(a1 + 16) &= 0xFFDFFFF7;
                (*(a1 + 1072))(a1);
                TIFFCreateDirectory(a1);
              }

              else
              {
                *(a1 + 440) = *(a1 + 432);
              }

              return 1;
            }

            TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "IO error writing directory");
            v169 = v173;
LABEL_424:
            free(v169);
            return 0;
          }

          v182 = "TIFFWriteDirectorySec";
LABEL_470:
          TIFFErrorExtR(a1, v182, "Out of memory", v195, p_src);
        }

        else
        {
LABEL_477:
          TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Cannot find SubIFD tag", v195, p_src);
        }

LABEL_471:
        if (!v20)
        {
          return 0;
        }

LABEL_423:
        v169 = v20;
        goto LABEL_424;
      }

      v139 = v201;
      if ((*(a1 + 16) & 0x80000) != 0)
      {
        v140 = 20;
      }

      else
      {
        v140 = 12;
      }

      if ((*(a1 + 16) & 0x80000) != 0)
      {
        v141 = 16;
      }

      else
      {
        v141 = 6;
      }

      *(a1 + 432) += v141 + v201 * v140;
      v142 = malloc_type_malloc(32 * v139, 0x100004022B81155uLL);
      a2 = v200;
      if (!v142)
      {
        TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Out of memory");
        return 0;
      }

      v20 = v142;
      if (v200)
      {
        if (*(a1 + 24))
        {
          if (*(a1 + 432) > *(a1 + 440))
          {
            free(v142);
            return TIFFRewriteDirectorySec(a1, v197, a4);
          }

          goto LABEL_399;
        }

        v144 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
        *(a1 + 24) = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v146 = *(a1 + 16);
        if ((v146 & 0x2000) != 0)
        {
          if ((v146 & 0x80000) != 0)
          {
            __src = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
            if ((v146 & 0x80) != 0)
            {
              v145.n128_u64[0] = TIFFSwabLong8(&__src);
            }

            (*(a1 + 1224))(*(a1 + 1200), *(a1 + 920), 0, v145);
            if ((*(a1 + 1216))(*(a1 + 1200), &__src, 8) == 8)
            {
              v158 = *(a1 + 912) - 1;
              *(a1 + 912) = v158;
              if (v158)
              {
                v153 = *(a1 + 920) + 8;
                goto LABEL_381;
              }

LABEL_387:
              *(a1 + 16) &= ~0x2000u;
              goto LABEL_388;
            }
          }

          else
          {
            LODWORD(__src) = (v144 + 1) & 0xFFFFFFFE;
            if ((v146 & 0x80) != 0)
            {
              v145.n128_u64[0] = TIFFSwabLong(&__src, v145.n128_u64[0]);
            }

            (*(a1 + 1224))(*(a1 + 1200), *(a1 + 920), 0, v145);
            if ((*(a1 + 1216))(*(a1 + 1200), &__src, 4) == 4)
            {
              v152 = *(a1 + 912) - 1;
              *(a1 + 912) = v152;
              if (v152)
              {
                v153 = *(a1 + 920) + 4;
LABEL_381:
                *(a1 + 920) = v153;
                goto LABEL_388;
              }

              goto LABEL_387;
            }
          }

          TIFFErrorExtR(a1, "TIFFLinkDirectory", "Error writing SubIFD directory link");
          goto LABEL_397;
        }

        if ((v146 & 0x80000) != 0)
        {
          __src = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
          if ((v146 & 0x80) != 0)
          {
            v145.n128_u64[0] = TIFFSwabLong8(&__src);
          }

          if (!*(a1 + 864))
          {
            v160 = *(a1 + 24);
            *(a1 + 864) = v160;
            *(a1 + 40) = v160;
            (*(a1 + 1224))(*(a1 + 1200), 8, 0, v145);
            if ((*(a1 + 1216))(*(a1 + 1200), &__src, 8) == 8)
            {
              goto LABEL_388;
            }

            goto LABEL_386;
          }

          if (*(a1 + 40))
          {
            v154 = *(a1 + 40);
          }

          else
          {
            v154 = *(a1 + 864);
          }

          v202 = 0;
          *v203 = 0;
          if (_TIFFSeekOK(a1, v154))
          {
            while (1)
            {
              if ((*(a1 + 1208))(*(a1 + 1200), v203, 8) != 8)
              {
                goto LABEL_375;
              }

              if ((*(a1 + 16) & 0x80) != 0)
              {
                v155.n128_u64[0] = TIFFSwabLong8(v203);
              }

              if (*v203 >> 16)
              {
                break;
              }

              v156 = v154 + 20 * *v203;
              (*(a1 + 1224))(*(a1 + 1200), v156 + 8, 0, v155);
              if ((*(a1 + 1208))(*(a1 + 1200), &v202, 8) != 8)
              {
LABEL_389:
                TIFFErrorExtR(a1, "TIFFLinkDirectory", "Error fetching directory link");
                goto LABEL_397;
              }

              if ((*(a1 + 16) & 0x80) != 0)
              {
                v157.n128_u64[0] = TIFFSwabLong8(&v202);
              }

              v154 = v202;
              if (!v202)
              {
                (*(a1 + 1224))(*(a1 + 1200), v156 + 8, 0, v157);
                v164 = (*(a1 + 1216))(*(a1 + 1200), &__src, 8);
                v8 = "Error writing directory link";
                v163 = v164 == 8;
                goto LABEL_393;
              }

              v202 = 0;
              *v203 = 0;
              if (!_TIFFSeekOK(a1, v154))
              {
                goto LABEL_375;
              }
            }

            TIFFErrorExtR(a1, "TIFFLinkDirectory", "Sanity check on tag count failed, likely corrupt TIFF");
          }

          else
          {
LABEL_375:
            TIFFErrorExtR(a1, "TIFFLinkDirectory", "Error fetching directory count");
          }

LABEL_397:
          v161 = 0;
LABEL_398:
          if (!v161)
          {
            goto LABEL_422;
          }

LABEL_399:
          if (!a4)
          {
            goto LABEL_401;
          }

LABEL_400:
          *a4 = *(a1 + 24);
          goto LABEL_401;
        }

        LODWORD(__src) = (v144 + 1) & 0xFFFFFFFE;
        if ((v146 & 0x80) != 0)
        {
          v145.n128_u64[0] = TIFFSwabLong(&__src, v145.n128_u64[0]);
        }

        v147 = *(a1 + 860);
        if (!v147)
        {
          v159 = *(a1 + 24);
          *(a1 + 860) = v159;
          *(a1 + 40) = v159;
          (*(a1 + 1224))(*(a1 + 1200), 4, 0, v145);
          if ((*(a1 + 1216))(*(a1 + 1200), &__src, 4) == 4)
          {
LABEL_388:
            v161 = 1;
            goto LABEL_398;
          }

LABEL_386:
          TIFFErrorExtR(a1, *a1, "Error writing TIFF header");
          goto LABEL_397;
        }

        v148 = *(a1 + 40);
        if (v148)
        {
          v149 = v148;
        }

        else
        {
          v149 = v147;
        }

        LOWORD(v202) = 0;
        v203[0] = 0;
        if (!_TIFFSeekOK(a1, v149))
        {
          goto LABEL_375;
        }

        while (1)
        {
          if ((*(a1 + 1208))(*(a1 + 1200), &v202, 2) != 2)
          {
            goto LABEL_375;
          }

          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(&v202);
          }

          v150 = v149 + 2;
          (*(a1 + 1224))(*(a1 + 1200), v149 + 2 + 12 * v202, 0);
          if ((*(a1 + 1208))(*(a1 + 1200), v203, 4) != 4)
          {
            goto LABEL_389;
          }

          if ((*(a1 + 16) & 0x80) != 0)
          {
            v151.n128_u64[0] = TIFFSwabLong(v203, v151.n128_u64[0]);
          }

          v149 = v203[0];
          if (!v203[0])
          {
            break;
          }

          LOWORD(v202) = 0;
          v203[0] = 0;
          if (!_TIFFSeekOK(a1, v149))
          {
            goto LABEL_375;
          }
        }

        (*(a1 + 1224))(*(a1 + 1200), v150 + 12 * v202, 0, v151);
        v162 = (*(a1 + 1216))(*(a1 + 1200), &__src, 4);
        v8 = "Error writing directory link";
        v163 = v162 == 4;
LABEL_393:
        if (!v163)
        {
          TIFFErrorExtR(a1, "TIFFLinkDirectory", "Error writing directory link");
          goto LABEL_397;
        }

        *(a1 + 40) = *(a1 + 24);
        if (a4)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v143 = *(a1 + 440);
        if (v143 && *(a1 + 432) <= v143)
        {
          goto LABEL_399;
        }

        *(a1 + 24) = ((*(a1 + 1224))(*(a1 + 1200), 0, 2) + 1) & 0xFFFFFFFFFFFFFFFELL;
        if (a4)
        {
          goto LABEL_400;
        }
      }

LABEL_401:
      v165 = *(a1 + 24);
      if ((*(a1 + 18) & 8) != 0)
      {
        v19 = 20 * v201 + 16;
        v166 = v165 + v19;
      }

      else
      {
        v19 = 12 * v201 + 6;
        v166 = (v165 + v19);
      }

      *(a1 + 904) = v166;
      if (v166 < v165 || v166 < v19)
      {
        TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Maximum TIFF file size exceeded", v195, p_src);
        goto LABEL_471;
      }

      if (v166)
      {
        *(a1 + 904) = v166 + 1;
      }

      if (v200)
      {
        ++*(a1 + 880);
      }
    }
  }

  return 1;
}

BOOL TIFFRewriteDirectorySec(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = *(a1 + 24);
  if (!v4)
  {

    return TIFFWriteDirectorySec(a1, 1, 1u, 0);
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    v9 = *(a1 + 864);
    if (v9 == v4)
    {
      *(a1 + 864) = 0;
      *(a1 + 24) = 0;
      (*(a1 + 1224))(*(a1 + 1200), 8, 0);
      if ((*(a1 + 1216))(*(a1 + 1200), a1 + 864, 8) == 8)
      {
LABEL_45:
        _TIFFRemoveEntryFromDirectoryListByOffset(a1, v4);
        return TIFFWriteDirectorySec(a1, 1, a2, a3);
      }

      goto LABEL_11;
    }

    v13 = "Error fetching directory count";
    while (1)
    {
      v21 = 0;
      v22 = 0;
      if (!_TIFFSeekOK(a1, v9) || (*(a1 + 1208))(*(a1 + 1200), &v22, 8) != 8)
      {
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v14.n128_u64[0] = TIFFSwabLong8(&v22);
      }

      if (*&v22 >> 16)
      {
        v13 = "Sanity check on tag count failed, likely corrupt TIFF";
        break;
      }

      v15 = v9 + 20 * *&v22;
      (*(a1 + 1224))(*(a1 + 1200), v15 + 8, 0, v14);
      if ((*(a1 + 1208))(*(a1 + 1200), &v21, 8) != 8)
      {
LABEL_46:
        v13 = "Error fetching directory link";
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v16.n128_u64[0] = TIFFSwabLong8(&v21);
      }

      if (v21 == *(a1 + 24))
      {
        v20 = 0;
        (*(a1 + 1224))(*(a1 + 1200), v15 + 8, 0, v16);
        if ((*(a1 + 1216))(*(a1 + 1200), &v20, 8) == 8)
        {
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          v17 = 5;
        }

        else
        {
          TIFFErrorExtR(a1, "TIFFRewriteDirectory", "Error writing directory link");
          v17 = 1;
        }

        if (v17 == 5)
        {
          goto LABEL_45;
        }

        return 0;
      }

      v9 = v21;
    }
  }

  else
  {
    v7 = *(a1 + 860);
    if (v4 == v7)
    {
      *(a1 + 860) = 0;
      *(a1 + 24) = 0;
      (*(a1 + 1224))(*(a1 + 1200), 4, 0);
      if ((*(a1 + 1216))(*(a1 + 1200), a1 + 860, 4) == 4)
      {
        goto LABEL_45;
      }

LABEL_11:
      v10 = *a1;
      v11 = "Error updating TIFF header";
LABEL_14:
      v12 = a1;
      goto LABEL_49;
    }

    if (HIDWORD(v4))
    {
      v10 = "TIFFRewriteDirectory";
      v11 = "tif->tif_diroff exceeds 32 bit range allowed for Classic TIFF";
      goto LABEL_14;
    }

    v13 = "Error fetching directory count";
    while (1)
    {
      LOWORD(v20) = 0;
      v22.i32[0] = 0;
      if (!_TIFFSeekOK(a1, v7) || (*(a1 + 1208))(*(a1 + 1200), &v20, 2) != 2)
      {
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&v20);
      }

      (*(a1 + 1224))(*(a1 + 1200), v7 + 2 + 12 * v20, 0);
      if ((*(a1 + 1208))(*(a1 + 1200), &v22, 4) != 4)
      {
        goto LABEL_46;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v18.n128_u64[0] = TIFFSwabLong(&v22, v18.n128_u64[0]);
      }

      if (*(a1 + 24) == v22.u32[0])
      {
        LODWORD(v21) = 0;
        (*(a1 + 1224))(*(a1 + 1200), v7 + 2 + 12 * v20, 0, v18);
        if ((*(a1 + 1216))(*(a1 + 1200), &v21, 4) == 4)
        {
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          v19 = 3;
        }

        else
        {
          TIFFErrorExtR(a1, "TIFFRewriteDirectory", "Error writing directory link");
          v19 = 1;
        }

        if (v19 != 3)
        {
          return 0;
        }

        goto LABEL_45;
      }

      LODWORD(v7) = v22.i32[0];
    }
  }

  v10 = "TIFFRewriteDirectory";
  v12 = a1;
  v11 = v13;
LABEL_49:
  TIFFErrorExtR(v12, v10, v11);
  return 0;
}

uint64_t _TIFFRewriteField(uint64_t a1, int a2, unsigned int a3, uint64_t a4, const void *a5)
{
  v87[3] = *MEMORY[0x1E69E9840];
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  TIFFFindField(a1, a2, 0);
  if ((*(a1 + 17) & 8) != 0)
  {
    TIFFErrorExtR(a1, "TIFFResetField", "Memory mapped files not currently supported for this operation.");
    return 0;
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    TIFFErrorExtR(a1, "TIFFResetField", "Attempt to reset field on directory not already on disk.");
    return 0;
  }

  if (!_TIFFSeekOK(a1, v10))
  {
    goto LABEL_166;
  }

  v86 = 0;
  memset(v87, 0, 20);
  v11 = *(a1 + 24);
  if ((*(a1 + 18) & 8) == 0)
  {
    if ((*(a1 + 1208))(*(a1 + 1200), &v86, 2) == 2)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&v86);
      }

      v20 = v11 + 2;
      v21 = 12;
      if (v86)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_28:
    TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not read TIFF directory count");
    return 0;
  }

  v81 = 0;
  if ((*(a1 + 1208))(*(a1 + 1200), &v81, 8) != 8)
  {
    goto LABEL_28;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    v19 = TIFFSwabLong8(&v81);
  }

  v86 = v81.i16[0];
  v20 = v11 + 8;
  v21 = 20;
  if (v81.i16[0])
  {
LABEL_9:
    while ((*(a1 + 1208))(*(a1 + 1200), v87, v21) == v21)
    {
      v22 = v87[0].u16[0];
      v85 = v87[0].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&v85);
        v22 = v85;
      }

      if (v22 != a2)
      {
        v20 += v21;
        if (v86)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not read TIFF directory entry.");
    return 0;
  }

LABEL_21:
  v22 = v85;
LABEL_22:
  if (v22 != a2)
  {
    TIFFErrorExtR(a1, "TIFFResetField", "%s: Could not find tag %hu.");
    return 0;
  }

  v84 = v87[0].u16[1];
  v23 = *(a1 + 16);
  if ((v23 & 0x80) != 0)
  {
    TIFFSwabShort(&v84);
    v23 = *(a1 + 16);
  }

  if ((v23 & 0x80000) == 0)
  {
    v81.i32[0] = v87[0].i32[1];
    if ((v23 & 0x80) != 0)
    {
      v25 = TIFFSwabLong(&v81, v19);
      v26 = *(a1 + 16);
      v83 = v81.u32[0];
      v24.i32[0] = v87[1].i32[0];
      v81.i32[0] = v87[1].i32[0];
      if ((v26 & 0x80) != 0)
      {
        TIFFSwabLong(&v81, v25);
        v24.i32[0] = v81.i32[0];
      }
    }

    else
    {
      v83 = v87[0].u32[1];
      v24.i32[0] = v87[1].i32[0];
    }

    v24 = v24.u32[0];
    goto LABEL_36;
  }

  v83 = *(v87 + 4);
  if ((v23 & 0x80) == 0)
  {
    v24 = *(&v87[1] + 4);
LABEL_36:
    v82 = v24;
    goto LABEL_37;
  }

  TIFFSwabLong8(&v83);
  v29 = *(a1 + 16);
  v24 = *(&v87[1] + 4);
  v82 = *(&v87[1] + 4);
  if ((v29 & 0x80) != 0)
  {
    TIFFSwabLong8(&v82);
    v24 = v82;
  }

LABEL_37:
  if (!*&v24 && !*&v83 && !v84)
  {
    if (a2 == 324 || a2 == 273)
    {
      if ((*(a1 + 16) & 0x80000) != 0)
      {
        v27 = 16;
      }

      else
      {
        v27 = 4;
      }

      goto LABEL_45;
    }

    if (a2 == 279 && a4 > 1)
    {
      v39 = _cg_TIFFStripSize64(a1, v12, v13, v14, v15, v16, v17, v18);
      if (!_WriteAsType(a1, v39, 0xFFFFFFFFuLL))
      {
        v47 = _cg_TIFFStripSize64(a1, v40, v41, v42, v43, v44, v45, v46);
        goto LABEL_134;
      }
    }

    else
    {
      v27 = 16;
      if (a2 != 325 || a4 <= 1)
      {
        goto LABEL_45;
      }

      v50 = _cg_TIFFTileSize64(a1, v12, v13, v14, v15, v16, v17, v18);
      if (!_WriteAsType(a1, v50, 0xFFFFFFFFuLL))
      {
        v47 = _cg_TIFFTileSize64(a1, v51, v52, v53, v54, v55, v56, v57);
LABEL_134:
        if (_WriteAsType(a1, v47, 0xFFFFuLL))
        {
          v27 = 4;
        }

        else
        {
          v27 = 3;
        }

        goto LABEL_45;
      }
    }

    v27 = 16;
LABEL_45:
    v84 = v27;
  }

  if (TIFFDataWidth(a3) != 8 || (*(a1 + 18) & 8) != 0)
  {
    if (a3 == 18)
    {
      v30 = v84;
      v31 = v84 == 13;
      v32 = 18;
    }

    else
    {
      if (a3 != 17)
      {
        v28 = a3;
        if (a3 == 16 && v84 <= 0x10u && ((1 << v84) & 0x10018) != 0)
        {
          v28 = v84;
        }

        goto LABEL_67;
      }

      v30 = v84;
      v31 = v84 == 9;
      v32 = 17;
    }

    if (v31)
    {
      v28 = v30;
    }

    else
    {
      v28 = v32;
    }
  }

  else if (a3 == 18)
  {
    v28 = 13;
  }

  else if (a3 == 17)
  {
    v28 = 9;
  }

  else
  {
    v28 = a3;
    if (a3 == 16)
    {
      if (v84 == 3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }
    }
  }

LABEL_67:
  v33 = TIFFDataWidth(v28);
  result = _TIFFCheckMalloc(a1, a4, v33, "for field buffer.");
  if (!result)
  {
    return result;
  }

  v35 = result;
  if (v28 == a3)
  {
    v36 = TIFFDataWidth(a3);
    memcpy(v35, a5, v36 * a4);
    goto LABEL_70;
  }

  if (a3 == 17 && v28 == 9)
  {
    if (a4 < 1)
    {
      goto LABEL_70;
    }

    v37 = 0;
    while (1)
    {
      v38 = *(a5 + v37);
      *(result + 4 * v37) = v38;
      if (v38 != v38)
      {
        goto LABEL_94;
      }

      if (a4 == ++v37)
      {
        goto LABEL_70;
      }
    }
  }

  if (a3 == 16 && v28 == 4 || a3 == 18 && v28 == 13)
  {
    if (a4 < 1)
    {
      goto LABEL_70;
    }

    v48 = 0;
    while (1)
    {
      v49 = *(a5 + v48);
      *(result + 4 * v48) = v49;
      if (HIDWORD(v49))
      {
        break;
      }

      if (a4 == ++v48)
      {
        goto LABEL_70;
      }
    }

LABEL_94:
    free(result);
    TIFFErrorExtR(a1, "TIFFResetField", "Value exceeds 32bit range of output type.");
    return 0;
  }

  if (a3 == 16 && v28 == 3)
  {
    if (a4 >= 1)
    {
      v59 = 0;
      while (1)
      {
        v60 = *(a5 + v59);
        *(result + 2 * v59) = v60;
        if (v60 >= 0x10000)
        {
          break;
        }

        if (a4 == ++v59)
        {
          goto LABEL_70;
        }
      }

      free(result);
      TIFFErrorExtR(a1, "TIFFResetField", "Value exceeds 16bit range of output type.");
      return 0;
    }

LABEL_70:
    if (TIFFDataWidth(v28) >= 2 && (*(a1 + 16) & 0x80) != 0)
    {
      if (TIFFDataWidth(v28) == 2)
      {
        TIFFSwabArrayOfShort(v35, a4);
      }

      else if (TIFFDataWidth(v28) == 4)
      {
        TIFFSwabArrayOfLong(v35, a4, v58);
      }

      else if (TIFFDataWidth(v28) == 8)
      {
        TIFFSwabArrayOfLong8(v35, a4);
      }
    }

    v61 = *(a1 + 16);
    v62 = TIFFDataWidth(v28) * a4;
    if ((v61 & 0x80000) != 0)
    {
      if (v62 <= 8)
      {
        v63 = 0;
        v64 = (v20 + 12);
        goto LABEL_117;
      }
    }

    else if (v62 <= 4)
    {
      v63 = 0;
      v64 = (v20 + 8);
LABEL_117:
      v82 = v64;
      goto LABEL_119;
    }

    v63 = 1;
LABEL_119:
    if (a2 > 323)
    {
      if (a2 == 325)
      {
LABEL_128:
        if (!*(a1 + 296) && !*(a1 + 290) && !*(a1 + 304))
        {
          v65 = (a1 + 296);
          v66 = (a1 + 290);
LABEL_138:
          *v66 = v28;
          *v65 = a4;
        }

LABEL_139:
        if (*&v83 == a4 && v84 == v28)
        {
          if (_TIFFSeekOK(a1, *&v82))
          {
            v67 = *(a1 + 1216);
            v68 = *(a1 + 1200);
            v69 = TIFFDataWidth(v28);
            v70 = v67(v68, v35, v69 * a4);
            v71 = TIFFDataWidth(v28) * a4;
            free(v35);
            if (v70 == v71)
            {
              return 1;
            }

            goto LABEL_147;
          }

          free(v35);
        }

        else
        {
          if (v63)
          {
            v82 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
            v72 = *(a1 + 1216);
            v73 = *(a1 + 1200);
            v74 = TIFFDataWidth(v28);
            v75 = v72(v73, v35, v74 * a4);
            if (v75 != TIFFDataWidth(v28) * a4)
            {
              free(v35);
LABEL_147:
              TIFFErrorExtR(a1, "TIFFResetField", "Error writing directory link");
              return 0;
            }
          }

          else if (TIFFDataWidth(v28) * a4 == 4)
          {
            v81.i32[0] = 0;
            TIFFDataWidth(v28);
            __memcpy_chk();
            v82 = v81.u32[0];
          }

          else
          {
            TIFFDataWidth(v28);
            __memcpy_chk();
          }

          free(v35);
          v84 = v28;
          v83 = a4;
          v87[0].i16[1] = v28;
          v77 = *(a1 + 16);
          if ((v77 & 0x80) != 0)
          {
            TIFFSwabShort(v87 + 2);
            v77 = *(a1 + 16);
          }

          if ((v77 & 0x80000) != 0)
          {
            *(v87 + 4) = v83;
            if ((v77 & 0x80) != 0)
            {
              TIFFSwabLong8((v87 + 4));
              v80 = *(a1 + 16);
              *(&v87[1] + 4) = v82;
              if ((v80 & 0x80) != 0)
              {
                TIFFSwabLong8((&v87[1] + 4));
              }
            }

            else
            {
              *(&v87[1] + 4) = v82;
            }
          }

          else
          {
            v87[0].i32[1] = v83.i32[0];
            if ((v77 & 0x80) != 0)
            {
              v78 = TIFFSwabLong(v87 + 1, v76);
              v79 = *(a1 + 16);
              v87[1].i32[0] = v82.i32[0];
              if ((v79 & 0x80) != 0)
              {
                TIFFSwabLong(&v87[1], v78);
              }
            }

            else
            {
              v87[1].i32[0] = v82.i32[0];
            }
          }

          if (_TIFFSeekOK(a1, v20))
          {
            if ((*(a1 + 1216))(*(a1 + 1200), v87, v21) == v21)
            {
              return 1;
            }

            TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not write TIFF directory entry.");
            return 0;
          }
        }

LABEL_166:
        TIFFErrorExtR(a1, "TIFFResetField", "%s: Seek error accessing TIFF directory");
        return 0;
      }

      if (a2 != 324)
      {
        goto LABEL_139;
      }
    }

    else if (a2 != 273)
    {
      goto LABEL_127;
    }

    if (!*(a1 + 264) && !*(a1 + 258) && !*(a1 + 272))
    {
      v65 = (a1 + 264);
      v66 = (a1 + 258);
      goto LABEL_138;
    }

LABEL_127:
    if (a2 != 279)
    {
      goto LABEL_139;
    }

    goto LABEL_128;
  }

  TIFFErrorExtR(a1, "TIFFResetField", "Unhandled type conversion.");
  return 0;
}

uint64_t TIFFWriteDirectoryTagShortLong(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, uint8x8_t a6)
{
  if (HIWORD(a5))
  {
    return TIFFWriteDirectoryTagCheckedLong(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return TIFFWriteDirectoryTagCheckedShort(a1, a2, a3, a4, a5);
  }
}

uint64_t TIFFWriteDirectoryTagRational(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a5 >= 0.0)
  {
    if (a3)
    {
      v13 = a4;
      DoubleToRational(&v16, &v17, a5, a3, a4, a6, a7, a8, a9, 0);
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v15 = TIFFSwabLong(&v16, v14);
        TIFFSwabLong(&v17, v15);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, v13, 5u, 1u, 8uLL, &v16);
    }

    else
    {
      *(a1 + 432) += ~*(a1 + 18) & 8;
      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedRational", "Negative value is illegal", a4);
    return 0;
  }
}

uint64_t TIFFWriteDirectoryTagShortPerSample(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, __int16 a5)
{
  v9 = *(a1 + 130);
  if (a3)
  {
    v11 = malloc_type_malloc(2 * *(a1 + 130), 0x1000040BDFB0063uLL);
    if (v11)
    {
      v12 = v11;
      if (*(a1 + 130))
      {
        v13 = 0;
        v14 = v11;
        do
        {
          *v14 = a5;
          v14 = (v14 + 2);
          ++v13;
          v15 = *(a1 + 130);
        }

        while (v13 < v15);
      }

      else
      {
        v15 = 0;
      }

      v17 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, v15, v11);
      free(v12);
      return v17;
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagShortPerSample", "Out of memory");
      return 0;
    }
  }

  else
  {

    return TIFFWriteDirectoryTagCheckedShortArray(a1, a2, 0, a4, v9, 0);
  }
}

uint64_t TIFFWriteDirectoryTagLongLong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 424))
  {
    if (a3)
    {

      return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0, 0, 0, 0);
    }

    else
    {
      ++*a2;
      return 1;
    }
  }

  v14 = a5;
  if ((*(a1 + 18) & 8) != 0)
  {
    if (a4 == 279 && a5 >= 2)
    {
      v15 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, __src, a7, a8);
    }

    else
    {
      if (a4 != 325 || a5 < 2)
      {
        goto LABEL_15;
      }

      v15 = _cg_TIFFTileSize64(a1, a2, a3, a4, a5, __src, a7, a8);
    }

    if (_WriteAsType(a1, v15, 0xFFFFFFFFuLL))
    {
LABEL_15:

      return TIFFWriteDirectoryTagCheckedLong8Array(a1, a2, a3, a4, v14, __src);
    }
  }

  v16 = v14;
  if (a4 == 279 && v14 >= 2)
  {
    v17 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, __src, a7, a8);
  }

  else
  {
    if (a4 != 325 || v14 < 2)
    {
      goto LABEL_25;
    }

    v17 = _cg_TIFFTileSize64(a1, a2, a3, a4, a5, __src, a7, a8);
  }

  if (!_WriteAsType(a1, v17, 0xFFFFuLL))
  {
    v25 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      while (1)
      {
        v28 = __src[v27];
        if (v28 >= 0x10000)
        {
          break;
        }

        *(v25 + v27++) = v28;
        if (v16 == v27)
        {
          v23 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, v16, v25);
          v24 = v26;
          goto LABEL_36;
        }
      }

      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Attempt to write value larger than 0xFFFF in SHORT array.");
      v29 = v26;
      goto LABEL_40;
    }

LABEL_37:
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Out of memory");
    return 0;
  }

LABEL_25:
  v18 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  if (!v18)
  {
    goto LABEL_37;
  }

  v20 = v18;
  if (v14)
  {
    v21 = 0;
    while (1)
    {
      v22 = __src[v21];
      if (HIDWORD(*&v22))
      {
        break;
      }

      v18[v21++] = v22.i32[0];
      if (v14 == v21)
      {
        goto LABEL_30;
      }
    }

    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Attempt to write value larger than 0xFFFFFFFF in LONG array.");
    v29 = v20;
LABEL_40:
    free(v29);
    return 0;
  }

LABEL_30:
  v23 = TIFFWriteDirectoryTagCheckedLongArray(a1, a2, a3, a4, v14, v18, v19);
  v24 = v20;
LABEL_36:
  free(v24);
  return v23;
}

uint64_t TIFFWriteDirectoryTagSampleformatArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, size_t a5, int8x8_t *a6)
{
  v12 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  if (v12)
  {
    v14 = v12;
    v15 = a5;
    v16 = *(a1 + 118);
    switch(v16)
    {
      case 1:
        v25 = *(a1 + 116);
        if (v25 > 8)
        {
          if (v25 >= 0x11)
          {
            if (a5)
            {
              v13 = 0x41EFFFFFFFE00000;
              v38 = v12;
              do
              {
                v39 = *a6;
                if (*a6 >= 0.0)
                {
                  v40 = v39;
                  if (v39 > 4294967300.0)
                  {
                    v40 = -1;
                  }
                }

                else
                {
                  v40 = 0;
                }

                *v38++ = v40;
                ++a6;
                --v15;
              }

              while (v15);
            }

            v19 = TIFFWriteDirectoryTagCheckedLongArray(a1, a2, a3, a4, a5, v12, v13);
          }

          else
          {
            if (a5)
            {
              v32 = v12;
              do
              {
                v33 = *a6;
                if (*a6 >= 0.0)
                {
                  v34 = v33;
                  if (v33 > 65535.0)
                  {
                    LOWORD(v34) = -1;
                  }
                }

                else
                {
                  LOWORD(v34) = 0;
                }

                *v32 = v34;
                v32 = (v32 + 2);
                ++a6;
                --v15;
              }

              while (v15);
            }

            v19 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, a5, v12);
          }
        }

        else
        {
          if (a5)
          {
            v26 = v12;
            do
            {
              v27 = *a6;
              if (*a6 >= 0.0)
              {
                v28 = v27;
                if (v27 > 255.0)
                {
                  LOBYTE(v28) = -1;
                }
              }

              else
              {
                LOBYTE(v28) = 0;
              }

              *v26 = v28;
              v26 = (v26 + 1);
              ++a6;
              --v15;
            }

            while (v15);
          }

          v19 = TIFFWriteDirectoryTagByteArray(a1, a2, a3, a4, a5, v12);
        }

        break;
      case 2:
        v21 = *(a1 + 116);
        if (v21 > 8)
        {
          if (v21 >= 0x11)
          {
            if (a5)
            {
              v13 = 0x41DFFFFFFFC00000;
              v35 = v12;
              do
              {
                v36 = *a6;
                if (*a6 <= 2147483650.0)
                {
                  v37 = v36;
                  if (v36 < -2147483650.0)
                  {
                    v37 = 0x80000000;
                  }
                }

                else
                {
                  v37 = 0x7FFFFFFF;
                }

                *v35++ = v37;
                ++a6;
                --v15;
              }

              while (v15);
            }

            v19 = TIFFWriteDirectoryTagCheckedSlongArray(a1, a2, a3, a4, a5, v12, v13);
          }

          else
          {
            if (a5)
            {
              v29 = v12;
              do
              {
                v30 = *a6;
                if (*a6 <= 32767.0)
                {
                  v31 = v30;
                  if (v30 < -32768.0)
                  {
                    LOWORD(v31) = 0x8000;
                  }
                }

                else
                {
                  LOWORD(v31) = 0x7FFF;
                }

                *v29 = v31;
                v29 = (v29 + 2);
                ++a6;
                --v15;
              }

              while (v15);
            }

            v19 = TIFFWriteDirectoryTagSshortArray(a1, a2, a3, a4, a5, v12);
          }
        }

        else
        {
          if (a5)
          {
            v22 = v12;
            do
            {
              v23 = *a6;
              if (*a6 <= 127.0)
              {
                v24 = v23;
                if (v23 < -128.0)
                {
                  LOBYTE(v24) = 0x80;
                }
              }

              else
              {
                LOBYTE(v24) = 127;
              }

              *v22 = v24;
              v22 = (v22 + 1);
              ++a6;
              --v15;
            }

            while (v15);
          }

          v19 = TIFFWriteDirectoryTagSbyteArray(a1, a2, a3, a4, a5, v12);
        }

        break;
      case 3:
        if (*(a1 + 116) > 0x20u)
        {
          v19 = TIFFWriteDirectoryTagDoubleArray(a1, a2, a3, a4, a5, a6);
        }

        else
        {
          if (a5)
          {
            v17 = v12;
            do
            {
              v18 = *a6++;
              *v13.i32 = _TIFFClampDoubleToFloat(v18);
              *v17++ = v13.i32[0];
              --v15;
            }

            while (v15);
          }

          v19 = TIFFWriteDirectoryTagFloatArray(a1, a2, a3, a4, a5, v14, v13);
        }

        break;
      default:
        v20 = 0;
LABEL_66:
        free(v14);
        return v20;
    }

    v20 = v19;
    goto LABEL_66;
  }

  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSampleformatArray", "Out of memory");
  return 0;
}

uint64_t TIFFWriteDirectoryTagRationalArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, float *a6)
{
  v8 = 2 * a5;
  v9 = 4 * v8;
  if (a3)
  {
    v14 = malloc_type_malloc(v9, 0x100004052888210uLL);
    if (v14)
    {
      v22 = v14;
      if (a5)
      {
        v23 = a5;
        v24 = v14;
        do
        {
          v25 = *a6++;
          DoubleToRational(v24, v24 + 1, v25, v15, v16, v17, v18, v19, v20, v29);
          v24 += 2;
          --v23;
        }

        while (v23);
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabArrayOfLong(v22, v8, v21);
      }

      v26 = TIFFWriteDirectoryTagData(a1, a2, a3, a4, 5u, a5, 8 * a5, v22);
      free(v22);
      return v26;
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedRationalArray", "Out of memory");
      return 0;
    }
  }

  else
  {
    v28 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v28 = 4;
    }

    if (v9 > v28)
    {
      *(a1 + 432) += v9;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagAscii(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, size_t a5, int *__src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 2u, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagUndefinedArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, size_t a5, int *__src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 7u, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagByteArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, size_t a5, int *__src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 1u, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagSbyteArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, size_t a5, int *__src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 6u, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagSshortArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int *__src)
{
  if ((a5 & 0x80000000) != 0)
  {
    TIFFWriteDirectoryTagSshortArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 8u, a5, 2 * a5, __src);
  }

  else
  {
    v13 = 2 * a5;
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagFloatArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, __int32 *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagFloatArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0xBu, a5, 4 * a5, __src);
  }

  else
  {
    v14 = 4 * a5;
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagDoubleArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagDoubleArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0xCu, a5, 8 * a5, __src);
  }

  else
  {
    v13 = 8 * a5;
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedShort(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, __int16 a5)
{
  if (a3)
  {
    LOWORD(__src[0]) = a5;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(__src);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 3u, 1u, 2uLL, __src);
  }

  else
  {
    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLong(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, int a5, uint8x8_t a6)
{
  if (a3)
  {
    __src = a5;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&__src, a6);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 4u, 1u, 4uLL, &__src);
  }

  else
  {
    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagData(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int16 a5, unsigned int a6, size_t __n, int *__src)
{
  v9 = __n;
  v12 = *a2;
  if (v12)
  {
    v13 = 0;
    v14 = a3;
    while (1)
    {
      v15 = *v14;
      v14 += 16;
      v16 = v15 > a4;
      if (v15 == a4)
      {
        TIFFWriteDirectoryTagData_cold_1();
      }

      if (v16)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *a2;
        goto LABEL_11;
      }
    }

    if (v12 > v13)
    {
      v17 = &a3[16 * v12];
      do
      {
        --v12;
        v18 = *(v17 - 1);
        *v17 = *(v17 - 2);
        *(v17 + 1) = v18;
        v17 -= 16;
      }

      while (v12 > v13);
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_11:
  v19 = &a3[16 * v13];
  *v19 = a4;
  v19[1] = a5;
  *(v19 + 1) = a6;
  *(v19 + 2) = 0;
  v20 = (v19 + 8);
  v21 = *(a1 + 16);
  if ((v21 & 0x80000) != 0)
  {
    v22 = 8;
  }

  else
  {
    v22 = 4;
  }

  if (v22 >= __n)
  {
    if (!__n || !__src)
    {
      goto LABEL_27;
    }

    v26 = __n;
    v27 = v20;
    v28 = __src;
LABEL_26:
    _TIFFmemcpy(v27, v28, v26);
LABEL_27:
    ++*a2;
    return 1;
  }

  v23 = *(a1 + 904);
  if ((v21 & 0x80000) != 0)
  {
    v24 = v23 + __n;
  }

  else
  {
    v24 = (v23 + __n);
  }

  if (v24 >= v23 && v24 >= __n)
  {
    if (!_TIFFSeekOK(a1, *(a1 + 904)))
    {
      goto LABEL_35;
    }

    if ((v9 & 0x80000000) != 0)
    {
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagData", "libtiff does not allow writing more than 2147483647 bytes in a tag");
      return 0;
    }

    if ((*(a1 + 1216))(*(a1 + 1200), __src, v9) != v9)
    {
LABEL_35:
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagData", "IO error writing tag data");
      return 0;
    }

    *(a1 + 904) = (v24 & 1) + v24;
    v31 = *(a1 + 16);
    if ((v31 & 0x80000) != 0)
    {
      *v20 = v23;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong8(v20);
      }

      goto LABEL_27;
    }

    v32 = v23;
    if ((v31 & 0x80) != 0)
    {
      TIFFSwabLong(&v32, v30);
    }

    v28 = &v32;
    v27 = v20;
    v26 = 4;
    goto LABEL_26;
  }

  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagData", "Maximum TIFF file size exceeded");
  return 0;
}

_DWORD *DoubleToRational(_DWORD *result, int *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = result;
  if (a3 < 0.0)
  {
    *a2 = 0;
    *result = 0;

    return TIFFErrorExt(0, "TIFFLib: DoubleToRational()", " Negative Value for Unsigned Rational given.", a5, a6, a7, a8, a9);
  }

  if (a3 > 4294967300.0)
  {
    *result = -1;
    *a2 = 0;
    return result;
  }

  if (a3 == a3)
  {
    *result = a3;
    v13 = 1;
LABEL_11:
    *a2 = v13;
    return result;
  }

  if (a3 < 2.32830644e-10)
  {
    *result = 0;
    v13 = -1;
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  ToRationalEuclideanGCD(0, 0, &v27, &v26, a3);
  result = ToRationalEuclideanGCD(0, 1, &v25, &v24, a3);
  v19 = v26;
  v20 = v27;
  v21 = v24;
  if (HIDWORD(v27) || HIDWORD(v26) || HIDWORD(v25) || HIDWORD(v24))
  {
    TIFFErrorExt(0, "TIFFLib: DoubleToRational()", " Num or Denom exceeds ULONG: val=%14.6f, num=%12llu, denom=%12llu | num2=%12llu, denom2=%12llu", v14, v15, v16, v17, v18, *&a3, v27, v26, v25, v24);
    __assert_rtn("DoubleToRational", "tif_dirwrite.c", 2811, "0");
  }

  v22 = vabdd_f64(a3, v27 / v26);
  v23 = vabdd_f64(a3, v25 / v24);
  if (v22 >= v23)
  {
    v20 = v25;
  }

  *v11 = v20;
  if (v22 >= v23)
  {
    v19 = v21;
  }

  *a2 = v19;
  return result;
}

unint64_t ToRationalEuclideanGCD(int a1, int a2, unint64_t *a3, unint64_t *a4, double a5)
{
  v5 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2)
  {
    v5 = 0x3FFFFFFFLL;
  }

  v6 = v5;
  v7 = 0x7FFFFFFFLL;
  if (!a1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  if (floor(a5) == a5 || v6 <= a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v9 *= 2;
      a5 = a5 + a5;
    }

    while (a5 != floor(a5) && a5 < v6 && v9 < v5);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = a5;
  v16 = 1;
  v17 = 1;
  while (1)
  {
    result = v9;
    v19 = v15 / v9;
    v20 = v16 + v19 * v13;
    if (v20 >= v7)
    {
      break;
    }

    v21 = v14 + v19 * v17;
    if (v12 <= 0x3E)
    {
      v9 = v15 - v19 * result;
      ++v12;
      v15 = result;
      v16 = v13;
      v13 = v20;
      v14 = v17;
      v17 = v21;
      if (v9)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v22 = (v7 - v16) / v13;
  if (v19 <= 2 * v22)
  {
    v20 = v16 + v22 * v13;
    v21 = v14 + v22 * v17;
  }

  else
  {
    v21 = v17;
    v20 = v13;
  }

LABEL_27:
  while (v21 > v7 || v20 > v7)
  {
    v21 >>= 1;
    v20 >>= 1;
  }

  *a3 = v21;
  *a4 = v20;
  return result;
}

uint64_t TIFFWriteDirectoryTagCheckedShortArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int *__src)
{
  if ((a5 & 0x80000000) != 0)
  {
    TIFFWriteDirectoryTagCheckedShortArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 3u, a5, 2 * a5, __src);
  }

  else
  {
    v13 = 2 * a5;
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedLong8Array_cold_1();
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x80000) != 0)
  {
    if (a3)
    {
      v13 = a4;
      if ((v7 & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(__src, a5);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, v13, 0x10u, a5, 8 * a5, __src);
    }

    else
    {
      if (a5 >= 2)
      {
        *(a1 + 432) += 8 * a5;
      }

      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedLong8Array", "LONG8 not allowed for ClassicTIFF", a4);
    return 0;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLongArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedLongArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 4u, a5, 4 * a5, __src);
  }

  else
  {
    v14 = 4 * a5;
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedIfdArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedIfdArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0xDu, a5, 4 * a5, __src);
  }

  else
  {
    v14 = 4 * a5;
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedIfd8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedIfd8Array_cold_2();
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x80000) == 0)
  {
    TIFFWriteDirectoryTagCheckedIfd8Array_cold_1();
  }

  if (a3)
  {
    if ((v7 & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0x12u, a5, 8 * a5, __src);
  }

  else
  {
    if (a5 >= 2)
    {
      *(a1 + 432) += 8 * a5;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedSlongArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5, int *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedSlongArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 9u, a5, 4 * a5, __src);
  }

  else
  {
    v14 = 4 * a5;
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedSlong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedSlong8Array_cold_1();
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x80000) != 0)
  {
    if (a3)
    {
      v13 = a4;
      if ((v7 & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(__src, a5);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, v13, 0x11u, a5, 8 * a5, __src);
    }

    else
    {
      if (a5 >= 2)
      {
        *(a1 + 432) += 8 * a5;
      }

      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedSlong8Array", "SLONG8 not allowed for ClassicTIFF", a4);
    return 0;
  }
}

_DWORD *DoubleToSrational(_DWORD *result, int *a2, double a3)
{
  v4 = result;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  if (a3 >= 0.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5 <= 2147483650.0)
  {
    if (v5 == v5)
    {
      *result = (v5 * v6);
      v7 = 1;
    }

    else if (v5 >= 4.65661288e-10)
    {
      v20 = 0;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      ToRationalEuclideanGCD(1, 0, &v20, &v19, v5);
      result = ToRationalEuclideanGCD(1, 1, &v18, &v17, v5);
      v13 = v20;
      v7 = v19;
      v14 = v17;
      if (v20 >> 31 || v19 >> 31 || v18 >> 31 || v17 >> 31)
      {
        TIFFErrorExt(0, "TIFFLib: DoubleToSrational()", " Num or Denom exceeds LONG: val=%14.6f, num=%12llu, denom=%12llu | num2=%12llu, denom2=%12llu", v8, v9, v10, v11, v12, v5 * v6, v20, v19, v18, v17);
        __assert_rtn("DoubleToSrational", "tif_dirwrite.c", 2887, "0");
      }

      v15 = vabdd_f64(v5, v20 / v19);
      v16 = vabdd_f64(v5, v18 / v17);
      if (v15 >= v16)
      {
        v13 = v18;
      }

      *v4 = v6 * v13;
      if (v15 >= v16)
      {
        v7 = v14;
      }
    }

    else
    {
      *result = 0;
      v7 = 0x7FFFFFFF;
    }
  }

  else
  {
    v7 = 0;
    *result = 0x7FFFFFFF;
  }

  *a2 = v7;
  return result;
}

BOOL _WriteAsType(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 120);
  result = 1;
  if (v3 > 34886)
  {
    if ((v3 - 50000) < 3 || v3 == 34887 || v3 == 34925)
    {
      return a2 >= a3 / 0xA;
    }
  }

  else
  {
    if (v3 > 6)
    {
      if ((v3 - 7) >= 2 && v3 != 32946)
      {
        return result;
      }

      return a2 >= a3 / 0xA;
    }

    if (v3 == 1)
    {
      return a2 > a3;
    }

    if (v3 == 5)
    {
      return a2 >= a3 / 0xA;
    }
  }

  return result;
}

uint64_t ATXReadPlugin::loadDataFromXPCObject(std::__shared_weak_count **this, void *a2)
{
  DataFromXPCObject = CommonASTCReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_atx", &length);
    if (length == 152)
    {
      DataFromXPCObject = 0;
      v6 = data[1];
      *(this + 32) = *data;
      *(this + 33) = v6;
      v7 = data[2];
      v8 = data[3];
      v9 = data[5];
      *(this + 36) = data[4];
      *(this + 37) = v9;
      *(this + 34) = v7;
      *(this + 35) = v8;
      v10 = data[6];
      v11 = data[7];
      v12 = data[8];
      this[82] = *(data + 18);
      *(this + 39) = v11;
      *(this + 40) = v12;
      *(this + 38) = v10;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    (this[62]->__on_zero_shared)(this[62], a2);
  }

  return DataFromXPCObject;
}

uint64_t ATXReadPlugin::saveDataToXPCObject(ATXReadPlugin *this, void *a2)
{
  v4 = CommonASTCReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_atx", this + 512, 0x98uLL);
    (*(**(this + 62) + 24))(*(this + 62), a2);
  }

  return v4;
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_1EF4DE2D8;
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

vImage_Error ATXReadPlugin::decodeImageData(ATXReadPlugin *this, unsigned __int8 *a2, unint64_t a3)
{
  if (*(this + 76) || *(this + 79))
  {
    return ATXReadPlugin::decodeImageData420f(this, a2);
  }

  if (*(this + 75))
  {
    return ATXReadPlugin::decodeImageDataASTC(this, a2);
  }

  return 4294967292;
}

vImage_Error ATXReadPlugin::decodeImageData420f(ATXReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 77);
  v5 = *(this + 78);
  v6 = *(this + 79);
  v33 = 197121;
  v32 = 66051;
  v7 = *(this + 156);
  v8 = *(this + 155);
  v9 = v7 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    v24 = "*** ERROR: lumaPlaneSize overflow [%ld * %ld]\n";
    v25 = 635;
LABEL_26:
    _cg_jpeg_mem_term("decodeImageData420f", v25, v24);
    return 4294967292;
  }

  v10 = *(this + 162) * *(this + 161);
  if ((v10 & 0xFFFFFFFF00000000) != 0)
  {
    v24 = "*** ERROR: chromaPlaneSize overflow [%ld * %ld]\n";
    v25 = 638;
    goto LABEL_26;
  }

  v11 = *(this + 437);
  v12 = malloc_type_calloc(v7, v8, 0x100004077774924uLL);
  v28 = v11;
  if (*(this + 656) == 1)
  {
    v13 = a2;
    v14 = malloc_type_malloc(*(this + 157), 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(*(this + 3), v14, *(this + 76) + 8, *(this + 157));
    if (BytesAtOffset != *(this + 157))
    {
      _cg_jpeg_mem_term("decodeImageData420f", 649, "*** luma-lzfseBuffer-getBytesAtOffset failed: expected: %ld   got: %ld\n");
      v16 = 0;
      goto LABEL_32;
    }

    IIOReadPlugin::decodeLZFSEIntoBuffer(this, v14, BytesAtOffset, v12, v9);
  }

  else
  {
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v12, *(this + 76), v9) != v9)
    {
      _cg_jpeg_mem_term("decodeImageData420f", 655, "*** luma-getBytesAtOffset failed: expected: %ld   got: %ld\n");
      v16 = 0;
      v14 = 0;
      goto LABEL_32;
    }

    v13 = a2;
    v14 = 0;
  }

  v16 = malloc_type_calloc(*(this + 162), *(this + 161), 0x100004077774924uLL);
  if (*(this + 656) == 1)
  {
    v14 = reallocf(v14, *(this + 163));
    v17 = IIOImageReadSession::getBytesAtOffset(*(this + 3), v14, *(this + 79) + 8, *(this + 163));
    if (v17 == *(this + 163))
    {
      IIOReadPlugin::decodeLZFSEIntoBuffer(this, v14, v17, v16, v10);
      goto LABEL_12;
    }

    v26 = "*** chroma-lzfseBuffer-getBytesAtOffset failed: expected: %ld   got: %ld\n";
    v27 = 667;
    goto LABEL_31;
  }

  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v16, *(this + 79), v10) != v10)
  {
    v26 = "*** chroma-getBytesAtOffset failed: expected: %ld   got: %ld\n";
    v27 = 673;
LABEL_31:
    _cg_jpeg_mem_term("decodeImageData420f", v27, v26);
LABEL_32:
    v22 = 4294967292;
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_12:
  v18 = *(this + 77);
  v19.i64[0] = v18;
  v19.i64[1] = HIDWORD(v18);
  *&srcYp.height = vextq_s8(v19, v19, 8uLL);
  srcYp.rowBytes = *(this + 156);
  dest.rowBytes = v6;
  srcCbCr.data = v16;
  v20 = *(this + 80);
  v19.i64[0] = v20;
  v19.i64[1] = HIDWORD(v20);
  *&srcCbCr.height = vextq_s8(v19, v19, 8uLL);
  srcCbCr.rowBytes = *(this + 162);
  srcYp.data = v12;
  dest.height = v5;
  dest.width = v4;
  dest.data = v13;
  if (ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::YpCbCrToARGBCreate != -1)
  {
    ATXReadPlugin::decodeImageData420f();
  }

  if (v28)
  {
    v21 = &v33;
  }

  else
  {
    v21 = &v32;
  }

  v22 = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::conversion, v21, 0xFFu, 0);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v12);
LABEL_19:
  if (v16)
  {
    free(v16);
  }

  if (v14)
  {
    free(v14);
  }

  return v22;
}

uint64_t ATXReadPlugin::decodeImageDataASTC(ATXReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 62);
  if (v4)
  {
  }

  v5 = *(this + 69);
  v6 = *(this + 70);
  v7 = *(this + 79);
  v10.data = a2;
  v10.height = v6;
  v10.width = v5;
  v10.rowBytes = v7;
  v8 = *(this + 3);
  if (v8)
  {
    return ASTCTextureImp::decodeASTCtoRGBX(v4, v8, &v10, *(this + 326), *(this + 437) == 0);
  }

  else
  {
    return 4294967292;
  }
}

void ___ZN13ATXReadPlugin19decodeImageData420fEPhm_block_invoke()
{
  pixelRange = *ymmword_18620A4B8;
  *&matrix.Yp = xmmword_18620A4D8;
  matrix.Cb_B = 1.772;
  v0 = vImageConvert_YpCbCrToARGB_GenerateConversion(&matrix, &pixelRange, &ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::conversion, kvImage422YpCbYpCr8, kvImageARGB8888, 0);
  if (v0)
  {
    IIO_vImageErrorString(v0);
    _cg_jpeg_mem_term("decodeImageData420f_block_invoke", 708, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion returned %ld (%s)\n");
  }
}

void setByteArray(void **a1, const void *a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8)
  {
    free(v8);
    *a1 = 0;
  }

  if (a2)
  {
    v9 = _TIFFMultiplySSize(0, a3, a4, 0);
    v10 = v9;
    if (v9)
    {
      v11 = malloc_type_malloc(v9, 0xAE2DC9D2uLL);
      *a1 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *a1;
      if (!*a1)
      {
        return;
      }
    }

    _TIFFmemcpy(v11, a2, v10);
  }
}

uint64_t TIFFVSetField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6)
  {
    TIFFErrorExtR(a1, "TIFFSetField", "%s: Unknown %stag %u");
    return 0;
  }

  if (a2 != 257 && (*(a1 + 16) & 0x40) != 0 && !*(v6 + 26))
  {
    TIFFErrorExtR(a1, "TIFFSetField", "%s: Cannot modify tag %s while writing");
    return 0;
  }

  v7 = *(a1 + 1280);

  return v7(a1, a2, a3);
}

uint64_t TIFFVGetField(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6 || !WORD1(a2) && ((*(a1 + ((*(v6 + 12) >> 3) & 0x1FFCLL) + 72) >> *(v6 + 12)) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[161];

  return v7(a1, a2, a3);
}

void _cg_TIFFFreeDirectory(uint64_t a1)
{
  _TIFFmemset((a1 + 72), 0, 0x10uLL);
  v2 = *(a1 + 144);
  if (v2)
  {
    free(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    free(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    free(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    free(v5);
    *(a1 + 192) = 0;
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    free(v6);
    *(a1 + 200) = 0;
  }

  v7 = *(a1 + 216);
  if (v7)
  {
    free(v7);
    *(a1 + 216) = 0;
  }

  v8 = *(a1 + 328);
  if (v8)
  {
    free(v8);
    *(a1 + 328) = 0;
  }

  v9 = *(a1 + 384);
  if (v9)
  {
    free(v9);
    *(a1 + 384) = 0;
  }

  v10 = *(a1 + 368);
  if (v10)
  {
    free(v10);
    *(a1 + 368) = 0;
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    free(v11);
    *(a1 + 344) = 0;
  }

  v12 = *(a1 + 352);
  if (v12)
  {
    free(v12);
    *(a1 + 352) = 0;
  }

  v13 = *(a1 + 360);
  if (v13)
  {
    free(v13);
    *(a1 + 360) = 0;
  }

  v14 = *(a1 + 232);
  if (v14)
  {
    free(v14);
    *(a1 + 232) = 0;
  }

  v15 = *(a1 + 240);
  if (v15)
  {
    free(v15);
    *(a1 + 240) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 76) &= 0xFFFFFE7F;
  v16 = *(a1 + 408);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 16;
    do
    {
      v19 = *(*(a1 + 416) + v18);
      if (v19)
      {
        free(v19);
        v16 = *(a1 + 408);
      }

      ++v17;
      v18 += 24;
    }

    while (v17 < v16);
  }

  *(a1 + 408) = 0;
  v20 = *(a1 + 416);
  if (v20)
  {
    free(v20);
    *(a1 + 416) = 0;
  }

  v21 = *(a1 + 400);
  if (v21)
  {
    free(v21);
    *(a1 + 400) = 0;
  }

  _TIFFmemset((a1 + 256), 0, 0x20uLL);
  _TIFFmemset((a1 + 288), 0, 0x20uLL);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v22 = *(a1 + 456);
  if (v22)
  {
    free(v22);
    *(a1 + 456) = 0;
    *(a1 + 448) = 0;
  }
}

uint64_t TIFFCreateDirectory(uint64_t a1)
{
  _cg_TIFFFreeDirectory(a1);
  TIFFDefaultDirectory(a1);
  *(a1 + 888) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 876) = -1;
  *(a1 + 884) = -1;
  return 0;
}

uint64_t TIFFDefaultDirectory(uint64_t a1)
{
  v2 = _TIFFGetFields();
  _TIFFSetupFields(a1, v2);
  _TIFFmemset((a1 + 72), 0, 0x188uLL);
  *(a1 + 124) = 0x1000100010001;
  *(a1 + 132) = 0x10000FFFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 168) = 65538;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 336) = 131074;
  *(a1 + 340) = 1;
  *(a1 + 1248) = _TIFFNoPostDecode;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = _TIFFVSetField;
  *(a1 + 1288) = _TIFFVGetField;
  *(a1 + 1296) = 0;
  *(a1 + 120) = 1;
  *(a1 + 112) = 0x1000100000000;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  v9 = *(a1 + 1320);
  if (v9)
  {
    v10 = 0;
    v11 = (a1 + 1312);
    v12 = 1;
    do
    {
      v13 = *v11 + 24 * v10;
      if (*(v13 + 4))
      {
        free(*(v13 + 16));
        v9 = *(a1 + 1320);
      }

      v10 = v12;
    }

    while (v9 > v12++);
    free(*v11);
    *v11 = 0;
    *(a1 + 1320) = 0;
  }

  if (_TIFFextender)
  {
    _TIFFextender(a1);
  }

  _cg_TIFFSetField(a1, 259, v3, v4, v5, v6, v7, v8, 1);
  *(a1 + 16) &= 0xFFFFFBF7;
  return 1;
}

uint64_t _TIFFVSetField(const char **a1, int a2, unsigned __int16 *a3)
{
  v152 = a3;
  v151 = 0;
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = a1 + 9;
  v9 = *(v6 + 12);
  if (v9 == 65)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  if (v10 <= 319)
  {
    switch(v10)
    {
      case 254:
        v11 = v152;
        v152 += 4;
        *(a1 + 28) = *v11;
        goto LABEL_175;
      case 256:
        v47 = v152;
        v152 += 4;
        *(a1 + 22) = *v47;
        goto LABEL_175;
      case 257:
        v50 = v152;
        v152 += 4;
        *(a1 + 23) = *v50;
        goto LABEL_175;
      case 258:
        v41 = v152;
        v152 += 4;
        v42 = *v41;
        *(a1 + 58) = v42;
        if ((a1[2] & 0x80) == 0)
        {
          goto LABEL_175;
        }

        v18 = 1;
        if (v42 > 0x1Fu)
        {
          if (v42 == 32)
          {
            goto LABEL_181;
          }

          if (v42 == 64 || v42 == 128)
          {
            v43 = _TIFFSwab64BitData;
            goto LABEL_192;
          }
        }

        else
        {
          switch(v42)
          {
            case 8u:
              v43 = _TIFFNoPostDecode;
              goto LABEL_192;
            case 0x10u:
              goto LABEL_180;
            case 0x18u:
              v43 = _TIFFSwab24BitData;
              goto LABEL_192;
          }
        }

        goto LABEL_176;
      case 259:
        v57 = v152;
        v152 += 4;
        v58 = *v57;
        if ((*v8 & 0x80) == 0)
        {
          goto LABEL_81;
        }

        if (*(a1 + 60) == v58)
        {
          goto LABEL_175;
        }

        (a1[134])(a1);
        *(a1 + 4) &= ~0x20u;
LABEL_81:
        v18 = TIFFSetCompressionScheme(a1, v58);
        if (!v18)
        {
          return v18;
        }

        *(a1 + 60) = v58;
        goto LABEL_176;
      case 262:
        v40 = v152;
        v152 += 4;
        *(a1 + 61) = *v40;
        goto LABEL_175;
      case 263:
        v44 = v152;
        v152 += 4;
        *(a1 + 62) = *v44;
        goto LABEL_175;
      case 266:
        v51 = v152;
        v152 += 4;
        v52 = *v51;
        if (v52 - 3 < 0xFFFFFFFE)
        {
          goto LABEL_156;
        }

        *(a1 + 63) = v52;
        goto LABEL_175;
      case 274:
        v68 = v152;
        v152 += 4;
        v69 = *v68;
        if (v69 - 9 < 0xFFFFFFF8)
        {
          goto LABEL_156;
        }

        *(a1 + 64) = v69;
        goto LABEL_175;
      case 277:
        v53 = v152;
        v152 += 4;
        v54 = *v53;
        v55 = *v53;
        if (!*v53)
        {
          goto LABEL_156;
        }

        if (*(a1 + 65) != v54)
        {
          if (a1[18])
          {
            TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but SMinSampleValue tag was read with a different value. Canceling it");
            *(a1 + 19) &= ~2u;
            free(a1[18]);
            a1[18] = 0;
          }

          if (a1[19])
          {
            TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but SMaxSampleValue tag was read with a different value. Canceling it");
            *(a1 + 19) &= ~4u;
            free(a1[19]);
            a1[19] = 0;
          }

          if (a1[43])
          {
            v56 = *(a1 + 106);
            if ((v55 - v56) >= 2 && *(a1 + 65) - v56 <= 1)
            {
              TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but TransferFunction was read with a different value. Canceling it");
              *(a1 + 19) &= ~0x1000u;
              free(a1[43]);
              a1[43] = 0;
            }
          }
        }

        *(a1 + 65) = v54;
        goto LABEL_175;
      case 278:
        v59 = v152;
        v152 += 4;
        v60 = *v59;
        if (!v60)
        {
          goto LABEL_146;
        }

        v61 = *(a1 + 23);
        if (v60 >= v61)
        {
          v62 = *(a1 + 23);
        }

        else
        {
          v62 = v60;
        }

        if (v61)
        {
          v60 = v62;
        }

        *(a1 + 33) = v60;
        if ((a1[9] & 4) == 0)
        {
          *(a1 + 25) = *(a1 + 22);
          *(a1 + 26) = v60;
        }

        goto LABEL_175;
      case 280:
        v39 = v152;
        v152 += 4;
        *(a1 + 68) = *v39;
        goto LABEL_175;
      case 281:
        v70 = v152;
        v152 += 4;
        *(a1 + 69) = *v70;
        goto LABEL_175;
      case 282:
        v63 = v152;
        v152 += 4;
        if (*v63 < 0.0)
        {
          goto LABEL_103;
        }

        *(a1 + 40) = _TIFFClampDoubleToFloat(*v63);
        goto LABEL_175;
      case 283:
        v71 = v152;
        v152 += 4;
        if (*v71 < 0.0)
        {
LABEL_103:
          TIFFFieldWithTag(a1, a2);
          TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad value %f for %s tag");
          return 0;
        }

        *(a1 + 41) = _TIFFClampDoubleToFloat(*v71);
        break;
      case 284:
        v37 = v152;
        v152 += 4;
        v38 = *v37;
        if (v38 - 3 < 0xFFFFFFFE)
        {
          goto LABEL_156;
        }

        *(a1 + 85) = v38;
        goto LABEL_175;
      case 286:
        v45 = v152;
        v152 += 4;
        *(a1 + 43) = _TIFFClampDoubleToFloat(*v45);
        goto LABEL_175;
      case 287:
        v46 = v152;
        v152 += 4;
        *(a1 + 44) = _TIFFClampDoubleToFloat(*v46);
        goto LABEL_175;
      case 296:
        v48 = v152;
        v152 += 4;
        v49 = *v48;
        if (v49 - 4 < 0xFFFFFFFD)
        {
          goto LABEL_156;
        }

        *(a1 + 84) = v49;
        goto LABEL_175;
      case 297:
        v36 = v152;
        v152 += 4;
        *(a1 + 90) = *v36;
        v152 = v36 + 8;
        *(a1 + 91) = *(v36 + 2);
        goto LABEL_175;
      case 301:
        v64 = 0;
        if (*(a1 + 65) - *(a1 + 106) <= 1)
        {
          v65 = 1;
        }

        else
        {
          v65 = 3;
        }

        v151 = v65;
        v66 = (a1 + 43);
        do
        {
          v67 = v152;
          v152 += 4;
          v18 = 1;
          setByteArray(v66, *v67, 1 << *(a1 + 58), 2);
          ++v64;
          ++v66;
        }

        while (v64 < v151);
        goto LABEL_176;
      default:
        goto LABEL_138;
    }

    goto LABEL_175;
  }

  if (v10 > 340)
  {
    if (v10 > 32995)
    {
      if (v10 <= 32997)
      {
        if (v10 != 32996)
        {
          v35 = v152;
          v152 += 4;
          *(a1 + 24) = *v35;
          goto LABEL_175;
        }

        v83 = v152;
        v152 += 4;
        v84 = *v83;
        if ((v84 & 0xFFFC) == 0)
        {
          *(a1 + 59) = 0x3000100020004uLL >> (16 * (v84 & 3u));
          goto LABEL_175;
        }

        goto LABEL_156;
      }

      if (v10 != 32998)
      {
        if (v10 != 33723)
        {
          if (v10 != 65563)
          {
            goto LABEL_138;
          }

          v26 = v152;
          v152 += 4;
          v27 = *v26;
          v28 = *(a1 + 4);
          if (v27 == 1)
          {
            v29 = v28 | 0x400000;
          }

          else
          {
            v29 = v28 & 0xFFBFFFFF;
          }

LABEL_174:
          *(a1 + 4) = v29;
          goto LABEL_175;
        }

        v91 = v152;
        v152 += 4;
        v21 = *v91;
        *(a1 + 99) = v21;
        v152 = v91 + 8;
        p_src = *(v91 + 1);
        v18 = 1;
        v19 = a1 + 50;
        v77 = 1;
LABEL_128:
        setByteArray(v19, p_src, v21, v77);
        goto LABEL_176;
      }

      v95 = v152;
      v152 += 4;
      v96 = *v95;
      if (!v96)
      {
LABEL_146:
        TIFFFieldWithTag(a1, a2);
LABEL_157:
        TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad value %u for %s tag");
        return 0;
      }

      *(a1 + 27) = v96;
    }

    else
    {
      if (v10 > 530)
      {
        if (v10 == 531)
        {
          v94 = v152;
          v152 += 4;
          *(a1 + 170) = *v94;
          goto LABEL_175;
        }

        if (v10 == 532)
        {
          v87 = v152;
          v152 += 4;
          v14 = *v87;
          v16 = a1 + 46;
          v15 = 6;
          v88 = 4;
LABEL_154:
          setByteArray(v16, v14, v15, v88);
          goto LABEL_175;
        }

        if (v10 != 32995)
        {
          goto LABEL_138;
        }

        v17 = v152;
        v152 += 4;
        LODWORD(v17) = *v17;
        *(a1 + 106) = v17 != 0;
        v18 = 1;
        if (!v17)
        {
          goto LABEL_176;
        }

        LOWORD(__src) = 1;
        v19 = a1 + 27;
        p_src = &__src;
        v21 = 1;
LABEL_105:
        v77 = 2;
        goto LABEL_128;
      }

      if (v10 == 341)
      {
        if ((*(a1 + 18) & 0x40) != 0)
        {
          v104 = v152;
          v152 += 4;
          v14 = *v104;
          v15 = *(a1 + 65);
          v16 = a1 + 19;
          goto LABEL_153;
        }

        v78 = v152;
        v152 += 4;
        v23 = *v78;
        v24 = *(a1 + 65);
        v25 = a1 + 19;
        goto LABEL_108;
      }

      if (v10 != 530)
      {
        goto LABEL_138;
      }

      v31 = v152;
      v152 += 4;
      *(a1 + 168) = *v31;
      v152 = v31 + 8;
      *(a1 + 169) = *(v31 + 2);
    }
  }

  else
  {
    if (v10 <= 332)
    {
      if (v10 > 321)
      {
        if (v10 != 322)
        {
          if (v10 != 323)
          {
            if (v10 == 330)
            {
              if ((*(a1 + 17) & 0x20) == 0)
              {
                v12 = v152;
                v152 += 4;
                v13 = *v12;
                *(a1 + 160) = *v12;
                v152 = v12 + 8;
                v14 = *(v12 + 1);
                v15 = v13;
                v16 = a1 + 41;
LABEL_153:
                v88 = 8;
                goto LABEL_154;
              }

              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Sorry, cannot nest SubIFDs");
              return 0;
            }

LABEL_138:
            if (!*(v6 + 12))
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Ignored %stag %s (not supported by libtiff)");
              return 0;
            }

            if (v9 != 65)
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Invalid %stag %s (not supported by codec)");
              return 0;
            }

            v97 = *(a1 + 102);
            v98 = a1[52];
            if (v97 < 1)
            {
LABEL_144:
              v101 = v97 + 1;
              *(a1 + 102) = v101;
              v102 = malloc_type_realloc(v98, 24 * v101, 0x10E0040F5622EBCuLL);
              if (!v102)
              {
                TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Failed to allocate space for list of custom values");
                return 0;
              }

              a1[52] = v102;
              v103 = &v102[24 * *(a1 + 102)];
              *(v103 - 3) = v7;
              v100 = v103 - 24;
              *(v100 + 2) = 0;
              *(v100 + 2) = 0;
            }

            else
            {
              v99 = *(a1 + 102);
              v100 = a1[52];
              while (**v100 != a2)
              {
                v100 += 24;
                if (!--v99)
                {
                  goto LABEL_144;
                }
              }

              v109 = *(v100 + 2);
              if (v109)
              {
                free(v109);
                *(v100 + 2) = 0;
              }
            }

            Size = TIFFFieldSetGetSize(v7);
            if (!Size)
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad field type %d for %s");
              return 0;
            }

            if (*(v7 + 8) == 2)
            {
              if (*(v7 + 27))
              {
                if (*(v7 + 6) != -3)
                {
                  _TIFFVSetField_cold_3();
                }

                v111 = v152;
                v152 += 4;
                v112 = *v111;
                v152 = v111 + 8;
                v113 = *(v111 + 1);
              }

              else
              {
                v118 = v152;
                v152 += 4;
                v113 = *v118;
                v119 = strlen(*v118);
                v112 = v119 + 1;
                if ((v119 + 1) >> 31)
                {
                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Too long string value for %s. Maximum supported is 2147483647 bytes");
                  return 0;
                }
              }

              *(v100 + 2) = v112;
              setByteArray(v100 + 2, v113, v112, 1);
              v18 = 1;
              goto LABEL_176;
            }

            v114 = Size;
            v115 = *(v7 + 6);
            v116 = *(v7 + 6);
            if (*(v7 + 27))
            {
              v117 = v152;
              v152 += 4;
              v115 = *v117;
              goto LABEL_195;
            }

            if (v116 != 0xFFFF)
            {
              if (v116 == 65534)
              {
                v115 = *(a1 + 65);
              }

              else if (v116 == 65533)
              {
                goto LABEL_202;
              }

LABEL_195:
              *(v100 + 2) = v115;
              if (!v115)
              {
                TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Null count for %s (type %d, writecount %d, passcount %d)");
                return 0;
              }

              goto LABEL_203;
            }

LABEL_202:
            v115 = 1;
            *(v100 + 2) = 1;
LABEL_203:
            v120 = _TIFFCheckMalloc(a1, v115, Size, "custom tag binary object");
            *(v100 + 2) = v120;
            if (v120)
            {
              v121 = v120;
              if (*v7 == 336 && !strcmp(*(v7 + 32), "DotRange"))
              {
                v127 = v152;
                v152 += 4;
                LOWORD(__src) = *v127;
                v152 = v127 + 8;
                WORD1(__src) = *(v127 + 2);
                v128 = *(v100 + 2);
                v129 = 4;
LABEL_250:
                _TIFFmemcpy(v128, &__src, v129);
                goto LABEL_175;
              }

              if (*(v7 + 27) || *(v7 + 6) > 0xFFFCu || (v122 = *(v100 + 2), v122 >= 2))
              {
                v123 = v152;
                v152 += 4;
                _TIFFmemcpy(v121, *v123, *(v100 + 2) * v114);
                if ((*(a1 + 18) & 8) != 0)
                {
                  goto LABEL_175;
                }

                v124 = *(*v100 + 8);
                if (v124 == 17)
                {
                  v130 = *(v100 + 2);
                  if (v130 < 1)
                  {
                    goto LABEL_175;
                  }

                  v131 = 0;
                  while (1)
                  {
                    v132 = *(*(v100 + 2) + 8 * v131);
                    if (v132 != v132)
                    {
                      break;
                    }

                    ++v131;
                    v18 = 1;
                    if (v130 == v131)
                    {
                      goto LABEL_176;
                    }
                  }

                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad SLONG8 value %lli at %d. array position for %s tag %d in ClassicTIFF. Tag won't be written to file");
                }

                else
                {
                  if (v124 != 16)
                  {
                    goto LABEL_175;
                  }

                  v125 = *(v100 + 2);
                  if (v125 < 1)
                  {
                    goto LABEL_175;
                  }

                  v126 = 0;
                  while (!HIDWORD(*(*(v100 + 2) + 8 * v126)))
                  {
                    ++v126;
                    v18 = 1;
                    if (v125 == v126)
                    {
                      goto LABEL_176;
                    }
                  }

                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad LONG8 value %llu at %d. array position for %s tag %d in ClassicTIFF. Tag won't be written to file");
                }
              }

              else
              {
                if (v122 != 1)
                {
                  _TIFFVSetField_cold_1();
                }

                switch(*(v7 + 8))
                {
                  case 1:
                  case 6:
                  case 7:
                    v133 = v152;
                    v152 += 4;
                    LOBYTE(__src) = *v133;
                    goto LABEL_249;
                  case 3:
                  case 8:
                    v145 = v152;
                    v152 += 4;
                    LOWORD(__src) = *v145;
                    goto LABEL_249;
                  case 4:
                  case 9:
                  case 0xD:
                    v142 = v152;
                    v152 += 4;
                    LODWORD(__src) = *v142;
                    goto LABEL_249;
                  case 5:
                  case 0xA:
                    if (v114 == 8)
                    {
                      goto LABEL_243;
                    }

                    v147 = v152;
                    v152 += 4;
                    v148 = *v147;
                    *&__src = v148;
                    _TIFFmemcpy(v121, &__src, v114);
                    if (v114 != 4)
                    {
                      TIFFErrorExtR(a1, "_TIFFVSetField", "Rational2Double: .set_field_type in not 4 but %d");
                    }

                    goto LABEL_175;
                  case 0xB:
                    v146 = v152;
                    v152 += 4;
                    LODWORD(__src) = _TIFFClampDoubleToFloat(*v146);
                    goto LABEL_249;
                  case 0xC:
LABEL_243:
                    v143 = v152;
                    v152 += 4;
                    __src = *v143;
LABEL_249:
                    v128 = v121;
                    v129 = v114;
                    goto LABEL_250;
                  case 0x10:
                  case 0x12:
                    v144 = v152;
                    v152 += 4;
                    __src = *v144;
                    _TIFFmemcpy(v121, &__src, v114);
                    if ((*(a1 + 18) & 8) != 0 || !HIDWORD(__src))
                    {
                      goto LABEL_175;
                    }

                    TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad LONG8 or IFD8 value %llu for %s tag %d in ClassicTIFF. Tag won't be written to file");
                    break;
                  case 0x11:
                    v149 = v152;
                    v152 += 4;
                    __src = *v149;
                    _TIFFmemcpy(v121, &__src, v114);
                    if ((*(a1 + 18) & 8) != 0 || __src == __src)
                    {
                      goto LABEL_175;
                    }

                    TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad SLONG8 value %lli for %s tag %d in ClassicTIFF. Tag won't be written to file");
                    break;
                  default:
                    _TIFFmemset(v121, 0, v114);
                    return 0;
                }
              }

              v134 = *(a1 + 102);
              if (v134 < 1)
              {
LABEL_234:
                _TIFFVSetField_cold_2();
              }

              v135 = 0;
              v136 = a1[52];
              v137 = 16;
              while (**&v136[v137 - 16] != a2)
              {
                ++v135;
                v137 += 24;
                if (v134 == v135)
                {
                  goto LABEL_234;
                }
              }

              v138 = *&v136[v137];
              if (v138)
              {
                free(v138);
                *&v136[v137] = 0;
                LODWORD(v134) = *(a1 + 102);
              }

              v139 = v134 - 1;
              *(a1 + 102) = v139;
              if (v139 > v135)
              {
                v140 = v137 - 16;
                do
                {
                  v18 = 0;
                  v141 = &a1[52][v140];
                  ++v135;
                  *v141 = *(v141 + 24);
                  *(v141 + 2) = *(v141 + 5);
                  v140 += 24;
                }

                while (v135 < *(a1 + 102));
                return v18;
              }
            }

            return 0;
          }

          v85 = v152;
          v152 += 4;
          v86 = *v85;
          if ((*v85 & 0xF) == 0)
          {
            goto LABEL_117;
          }

          if (!*(a1 + 3))
          {
            TIFFWarningExtR(a1, *a1, "Nonstandard tile length %u, convert file", v86);
LABEL_117:
            *(a1 + 26) = v86;
LABEL_173:
            v29 = *(a1 + 4) | 0x400;
            goto LABEL_174;
          }

          goto LABEL_146;
        }

        v92 = v152;
        v152 += 4;
        v93 = *v92;
        if ((*v92 & 0xF) != 0)
        {
          if (*(a1 + 3))
          {
            goto LABEL_146;
          }

          TIFFWarningExtR(a1, *a1, "Nonstandard tile width %u, convert file", v93);
        }

        *(a1 + 25) = v93;
        goto LABEL_173;
      }

      if (v10 != 320)
      {
        v30 = v152;
        v152 += 4;
        *(a1 + 104) = *v30;
        v152 = v30 + 8;
        *(a1 + 105) = *(v30 + 2);
        goto LABEL_175;
      }

      v18 = 1;
      v72 = 1 << *(a1 + 58);
      v73 = v152;
      v152 += 4;
      v74 = v72;
      setByteArray(a1 + 23, *v73, v72, 2);
      v75 = v152;
      v152 += 4;
      setByteArray(a1 + 24, *v75, v74, 2);
      v76 = v152;
      v152 += 4;
      p_src = *v76;
      v19 = a1 + 25;
      v21 = v74;
      goto LABEL_105;
    }

    if (v10 > 337)
    {
      if (v10 == 338)
      {
        if (setExtraSamples(a1, a3, &v151))
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v10 != 339)
        {
          if ((*(a1 + 18) & 0x40) != 0)
          {
            v105 = v152;
            v152 += 4;
            v14 = *v105;
            v15 = *(a1 + 65);
            v16 = a1 + 18;
            goto LABEL_153;
          }

          v22 = v152;
          v152 += 4;
          v23 = *v22;
          v24 = *(a1 + 65);
          v25 = a1 + 18;
LABEL_108:
          setDoubleArrayOneValue(v25, v24, v23);
          goto LABEL_175;
        }

        v89 = v152;
        v152 += 4;
        v90 = *v89;
        if (v90 - 7 >= 0xFFFFFFFA)
        {
          *(a1 + 59) = v90;
          if (v90 == 5 && *(a1 + 58) == 32 && a1[156] == _TIFFSwab32BitData)
          {
LABEL_180:
            v43 = _TIFFSwab16BitData;
          }

          else
          {
            if (v90 - 5 > 1 || *(a1 + 58) != 64 || a1[156] != _TIFFSwab64BitData)
            {
              goto LABEL_175;
            }

LABEL_181:
            v43 = _TIFFSwab32BitData;
          }

LABEL_192:
          a1[156] = v43;
          goto LABEL_175;
        }
      }

LABEL_156:
      TIFFFieldWithTag(a1, a2);
      goto LABEL_157;
    }

    if (v10 == 333)
    {
      v79 = v152;
      v152 += 4;
      v80 = *v79;
      v151 = *v79;
      v152 = v79 + 8;
      v81 = *(v79 + 1);
      v18 = countInkNamesString(a1, v80, v81);
      if (!v18)
      {
        return v18;
      }

      setByteArray(a1 + 48, v81, v80, 1);
      *(a1 + 94) = v151;
      v82 = *(a1 + 19);
      if ((v82 & 0x40000) != 0)
      {
        v106 = *(a1 + 196);
        if (v106 != v18)
        {
          TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %hu of NumberOfInks is different from the number of inks %hu.\n  -> NumberOfInks value adapted to %hu", *a1, *(v7 + 32), v106, v18, v18);
          *(a1 + 196) = v18;
        }
      }

      else
      {
        *(a1 + 196) = v18;
        *(a1 + 19) = v82 | 0x40000;
      }

      if ((*(a1 + 74) & 1) != 0 && v18 != *(a1 + 65))
      {
        TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %hu of NumberOfInks is different from the SamplesPerPixel value %hu");
      }

      goto LABEL_175;
    }

    if (v10 != 334)
    {
      goto LABEL_138;
    }

    v32 = v152;
    v152 += 4;
    v33 = *v32;
    v34 = *v32;
    if ((*(a1 + 77) & 0x40) == 0)
    {
      *(a1 + 196) = v33;
      if ((*(a1 + 74) & 1) != 0 && v34 != *(a1 + 65))
      {
        TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %u of NumberOfInks is different from the SamplesPerPixel value %hu");
      }

      goto LABEL_175;
    }

    if (v34 != *(a1 + 196))
    {
      TIFFErrorExtR(a1, "_TIFFVSetField", "Error %s; Tag %s:\n  It is not possible to set the value %u for NumberOfInks\n  which is different from the number of inks in the InkNames tag (%hu)");
      return 0;
    }
  }

LABEL_175:
  v18 = 1;
LABEL_176:
  v107 = TIFFFieldWithTag(a1, a2);
  if (v107)
  {
    *(v8 + ((*(v107 + 12) >> 3) & 0x1FFC)) |= 1 << *(v107 + 12);
  }

  *(a1 + 4) |= 8u;
  return v18;
}