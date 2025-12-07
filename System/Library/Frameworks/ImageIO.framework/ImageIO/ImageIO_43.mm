uint64_t GetASTCBlockSize(IIODictionary *a1)
{
  ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImagePropertyASTCBlockSize");
  if (!ObjectForKey)
  {
    return 68;
  }

  v3 = ObjectForKey;
  v4 = CFGetTypeID(ObjectForKey);
  if (v4 != CFNumberGetTypeID())
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      v7 = 68;
      if (CFStringCompare(v3, @"kCGImagePropertyASTCBlockSize4x4", 0))
      {
        if (CFStringCompare(v3, @"kCGImagePropertyASTCBlockSize8x8", 0))
        {
          return 68;
        }

        else
        {
          return 136;
        }
      }

      return v7;
    }

    return 68;
  }

  return IIODictionary::getUint32ForKey(a1, @"kCGImagePropertyASTCBlockSize");
}

void *std::__shared_ptr_emplace<ASTCTextureImp>::__shared_ptr_emplace[abi:fe200100]<unsigned int &,std::allocator<ASTCTextureImp>,0>(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4DE6F8;
  ASTCTextureImp::ASTCTextureImp((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<ASTCTextureImp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4DE6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t _TIFFgetMode(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (v8 == 97 || v8 == 119)
  {
    if (v8 == 119)
    {
      return 1538;
    }

    else
    {
      return 514;
    }
  }

  else if (v8 == 114)
  {
    return 2 * (a3[1] == 43);
  }

  else
  {
    _TIFFErrorEarly(a1, a2, a4, "%s: Bad mode", a5, a6, a7, a8, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t TIFFClientOpenExt(const char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(), void (*a10)(), uint64_t a11)
{
  v19 = _TIFFgetMode(a11, a3, a2, "TIFFClientOpenExt", a5, a6, a7, a8);
  if (v19 == -1)
  {
    return 0;
  }

  v20 = v19;
  v21 = strlen(a1) + 1385;
  if (a11)
  {
    v26 = *(a11 + 32);
    if (v26 >= 1 && v21 > v26)
    {
      _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Memory allocation of %llu bytes is beyond the %llu byte limit defined in open options", v22, v23, v24, v25, a1, v21, v26);
      return 0;
    }

    v28 = *(a11 + 40);
    if (v28 >= 1 && v21 > v28)
    {
      _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Memory allocation of %llu bytes is beyond the %llu cumulated byte limit defined in open options", v22, v23, v24, v25, a1, v21, v28);
      return 0;
    }
  }

  v53 = a8;
  v30 = malloc_type_malloc(v21, 0x10F0040492197AFuLL);
  v35 = v30;
  if (!v30)
  {
    _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Out of memory (TIFF structure)", v31, v32, v33, v34, a1);
    return v35;
  }

  _TIFFmemset(v30, 0, 0x568uLL);
  *v35 = v35 + 1384;
  strcpy((v35 + 1384), a1);
  *(v35 + 12) = v20 & 0xFFFFF9FF;
  *(v35 + 888) = 0;
  *(v35 + 884) = -1;
  *(v35 + 876) = -1;
  *(v35 + 1200) = a3;
  *(v35 + 1208) = a4;
  *(v35 + 1216) = a5;
  *(v35 + 1224) = a6;
  *(v35 + 1232) = a7;
  *(v35 + 1240) = v53;
  if (a9)
  {
    v36 = a9;
  }

  else
  {
    v36 = _tiffDummyMapProc;
  }

  *(v35 + 1184) = v36;
  v37 = a10;
  if (!a10)
  {
    v37 = _tiffDummyUnmapProc;
  }

  *(v35 + 1192) = v37;
  if (a11)
  {
    *(v35 + 1328) = *a11;
    *(v35 + 1344) = *(a11 + 16);
    *(v35 + 1360) = *(a11 + 32);
  }

  if (!a4 || !a5 || !a6 || !a7 || !v53)
  {
    TIFFErrorExtR(v35, "TIFFClientOpenExt", "One of the client procedures is NULL pointer.");
    free(v35);
    return 0;
  }

  v38 = __dst + 2;
  _TIFFSetDefaultCompressionState(v35);
  if (v20)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2049;
  }

  *(v35 + 16) = v39;
  if ((v20 | 2) == 2)
  {
    v39 |= 0x8000u;
    *(v35 + 16) = v39;
  }

  for (i = a2; ; ++i)
  {
    v41 = *i;
    if (v41 > 0x4C)
    {
      if (*i > 0x62u)
      {
        if (v41 == 99)
        {
          if (v20)
          {
            continue;
          }

          v39 &= ~0x8000u;
          goto LABEL_66;
        }

        if (v41 == 104)
        {
          v39 |= 0x10000u;
          goto LABEL_66;
        }

        if (v41 == 109 && !v20)
        {
          v39 &= ~0x800u;
          goto LABEL_66;
        }
      }

      else
      {
        if (v41 == 77)
        {
          if (v20)
          {
            continue;
          }

          v39 |= 0x800u;
          goto LABEL_66;
        }

        if (v41 == 79)
        {
          if (v20)
          {
            continue;
          }

          v39 |= 0x3000000u;
          goto LABEL_66;
        }

        if (v41 == 98 && (v20 & 0x200) != 0)
        {
          v39 |= 0x80u;
LABEL_66:
          *(v35 + 16) = v39;
          continue;
        }
      }

      continue;
    }

    if (*i > 0x43u)
    {
      if (v41 == 68)
      {
        v39 |= 0x1000000u;
        goto LABEL_66;
      }

      if (v41 != 72)
      {
        if (v41 != 76)
        {
          continue;
        }

        v39 = v39 & 0xFFFFFFFC | 2;
        goto LABEL_66;
      }

      TIFFWarningExtR(v35, a1, "H(ost) mode is deprecated. Since libtiff 4.5.1, it is an alias of 'B' / FILLORDER_MSB2LSB.");
      v39 = *(v35 + 16);
LABEL_62:
      v39 = v39 & 0xFFFFFFFC | 1;
      goto LABEL_66;
    }

    if (*i > 0x41u)
    {
      if (v41 != 66)
      {
        if (v20)
        {
          continue;
        }

        v39 |= 0x8000u;
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v41 == 56)
    {
      if ((v20 & 0x200) == 0)
      {
        continue;
      }

      v39 |= 0x80000u;
      goto LABEL_66;
    }

    if (!*i)
    {
      break;
    }
  }

  if ((v20 & 0x400) != 0 || (*(v35 + 1208))(*(v35 + 1200), v35 + 856, 8) != 8)
  {
    if (!*(v35 + 12))
    {
      goto LABEL_110;
    }

    v44 = *(v35 + 16);
    if ((v44 & 0x80) != 0)
    {
      v45 = 19789;
    }

    else
    {
      v45 = 18761;
    }

    *(v35 + 856) = v45;
    __dst[0] = 0;
    __dst[1] = 0;
    if ((v44 & 0x80000) != 0)
    {
      *(v35 + 858) = 524331;
      *(v35 + 862) = 0;
      *(v35 + 864) = 0;
      *(v35 + 872) = 16;
      _TIFFmemcpy(__dst, (v35 + 856), 0x10uLL);
      if ((*(v35 + 16) & 0x80) == 0)
      {
LABEL_87:
        (*(v35 + 1224))(*(v35 + 1200), 0, 0);
        if ((*(v35 + 1216))(*(v35 + 1200), __dst, *(v35 + 872)) != *(v35 + 872))
        {
          TIFFErrorExtR(v35, a1, "Error writing TIFF header");
          goto LABEL_111;
        }

        if (!TIFFDefaultDirectory(v35))
        {
          goto LABEL_111;
        }

        *(v35 + 24) = 0;
        *(v35 + 40) = 0;
        *(v35 + 64) = 0;
        return v35;
      }

      TIFFSwabShort(__dst + 2);
      v38 = __dst + 4;
    }

    else
    {
      *(v35 + 858) = 42;
      *(v35 + 860) = 0;
      *(v35 + 872) = 8;
      _TIFFmemcpy(__dst, (v35 + 856), 0x10uLL);
      if ((*(v35 + 16) & 0x80) == 0)
      {
        goto LABEL_87;
      }
    }

    TIFFSwabShort(v38);
    goto LABEL_87;
  }

  v43 = *(v35 + 856);
  if (v43 != 18761)
  {
    if (v43 == 19789)
    {
      *(v35 + 16) |= 0x80u;
    }

    else if (v43 != 20549)
    {
      TIFFErrorExtR(v35, a1, "Not a TIFF or MDI file, bad magic number %hu (0x%hx)");
      goto LABEL_111;
    }
  }

  if ((*(v35 + 16) & 0x80) != 0)
  {
    TIFFSwabShort((v35 + 858));
  }

  v46 = *(v35 + 858);
  if ((v46 & 0xFFFE) != 0x2A)
  {
    TIFFErrorExtR(v35, a1, "Not a TIFF file, bad version number %hu (0x%hx)");
    goto LABEL_111;
  }

  if (v46 != 42)
  {
    if ((*(v35 + 1208))(*(v35 + 1200), v35 + 864, 8) == 8)
    {
      if ((*(v35 + 16) & 0x80) != 0)
      {
        TIFFSwabShort((v35 + 860));
        TIFFSwabLong8((v35 + 864));
      }

      if (*(v35 + 860) == 8)
      {
        if (!*(v35 + 862))
        {
          *(v35 + 872) = 16;
          v47 = *(v35 + 16) | 0x80000;
          goto LABEL_99;
        }

        TIFFErrorExtR(v35, a1, "Not a TIFF file, bad BigTIFF unused %hu (0x%hx)");
      }

      else
      {
        TIFFErrorExtR(v35, a1, "Not a TIFF file, bad BigTIFF offsetsize %hu (0x%hx)");
      }

LABEL_111:
      *(v35 + 12) = 0;
      TIFFCleanup(v35);
      return 0;
    }

LABEL_110:
    TIFFErrorExtR(v35, a1, "Cannot read TIFF header");
    goto LABEL_111;
  }

  v47 = *(v35 + 16);
  if ((v47 & 0x80) != 0)
  {
    TIFFSwabLong((v35 + 860), v42);
    v47 = *(v35 + 16);
  }

  *(v35 + 872) = 8;
LABEL_99:
  v48 = v47 | 0x200;
  *(v35 + 16) = v47 | 0x200;
  *(v35 + 1120) = 0u;
  *(v35 + 1136) = 0u;
  *(v35 + 1152) = 0;
  v49 = *a2;
  if (v49 == 97)
  {
    v52 = v35;
    goto LABEL_125;
  }

  if (v49 != 114)
  {
    goto LABEL_111;
  }

  if ((v47 & 0x80000) != 0)
  {
    v50 = *(v35 + 864);
  }

  else
  {
    v50 = *(v35 + 860);
  }

  *(v35 + 32) = v50;
  if ((v47 & 0x800) != 0)
  {
    __dst[0] = 0;
    if ((*(v35 + 1184))(*(v35 + 1200), v35 + 1168, __dst))
    {
      *(v35 + 1176) = __dst[0];
      v48 = *(v35 + 16);
    }

    else
    {
      v48 = *(v35 + 16) & 0xFFFFF7FF;
      *(v35 + 16) = v48;
    }
  }

  v52 = v35;
  if ((v48 & 0x10000) != 0)
  {
LABEL_125:
    if (TIFFDefaultDirectory(v52))
    {
      return v35;
    }

    goto LABEL_111;
  }

  if (!_cg_TIFFReadDirectory(v35))
  {
    goto LABEL_111;
  }

  return v35;
}

BOOL IIO_Reader_TGA::testHeader(uint64_t a1, unsigned __int8 *a2)
{
  result = 0;
  if (a2[1] <= 1u)
  {
    v2 = a2[2];
    v3 = v2 > 0xB;
    v4 = (1 << v2) & 0xE0E;
    v5 = v3 || v4 == 0;
    if (!v5 && a2[7] <= 0x20u && (a2[12] || a2[13]) && (a2[14] || a2[15]))
    {
      v6 = a2[16];
      if (v6 <= 0x20 && ((1 << v6) & 0x101018100) != 0 && a2[17] < 0x40u)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 IIOImagePixelDataProvider::srcFormat@<Q0>(uint64_t *__return_ptr a1@<X8>, IIOImagePixelDataProvider *this@<X0>)
{
  result = *(this + 40);
  v3 = *(this + 56);
  *a1 = result;
  *(a1 + 1) = v3;
  a1[4] = *(this + 9);
  return result;
}

unint64_t IIOImagePixelDataProvider::sourceBytesForCoordinates(IIOImagePixelDataProvider *this, CGPoint a2, CGPoint a3, double a4, double a5)
{
  if (a2.x <= 0.0 || a3.y <= a2.y)
  {
    v6 = 0;
    y = a2.y;
  }

  else
  {
    LODWORD(a5) = *(this + 11);
    v6 = (*(this + 16) + a2.x * *&a5 * -0.125);
    y = a2.y + 1.0;
    a2.x = 0.0;
  }

  if (a3.y > a2.y)
  {
    v6 += *(this + 16) * (a3.y - y);
  }

  return v6 + ((*(this + 11) * (a3.x - a2.x)) >> 3);
}

uint64_t IIOImagePixelDataProvider::getBytesCGAccessSessionNoConvert(IIOImagePixelDataProvider *this, char *a2, unint64_t a3)
{
  if (*(this + 32))
  {
    v6 = *(this + 19);
  }

  else
  {
    if (!CGImageGetDataProvider(*(this + 2)))
    {
      return 0;
    }

    v13 = CGAccessSessionCreate();
    *(this + 32) = v13;
    if (!v13)
    {
      return 0;
    }

    v6 = 0;
    *(this + 19) = 0;
  }

  v7 = 0;
  if (a2)
  {
    v8 = *(this + 21);
    if (v8 > v6)
    {
      if (v6 + a3 > v8)
      {
        a3 = v8 - v6;
      }

      BytesFromAccessSession = IIOImagePixelDataProvider::getBytesFromAccessSession(this, a2, a3);
      v10 = *(this + 20);
      v11 = *(this + 19) + BytesFromAccessSession;
      if (v11 >= *(this + 21))
      {
        v11 = *(this + 21);
      }

      *(this + 19) = v11;
      if (BytesFromAccessSession != a3 || v11 == v10)
      {
        v7 = BytesFromAccessSession;
        if (BytesFromAccessSession != a3)
        {
          _cg_jpeg_mem_term("getBytesCGAccessSessionNoConvert", 1402, "*** ERROR: 'getBytesFromAccessSession' - got %ld bytes, expected: %ld\n");
        }

        CGAccessSessionRelease();
        *(this + 32) = 0;
      }

      else
      {
        return a3;
      }
    }
  }

  return v7;
}

uint64_t IIOImagePixelDataProvider::getBytesDataProviderCIF10(IIOImagePixelDataProvider *this, void *a2, uint64_t a3)
{
  v4 = a3 / *(this + 18);
  v5 = *(this + 16);
  if (is_mul_ok(v4, v5))
  {
    v8 = malloc_type_malloc(v4 * v5, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      IIOImagePixelDataProvider::getBytesCGAccessSessionNoConvert(this, v8, *(this + 16) * v4);
      v10 = *(this + 18);
      if (is_mul_ok(v4, v10) && (v11 = malloc_type_malloc(v4 * v10, 0x100004077774924uLL)) != 0)
      {
        v12 = v11;
        if (*(this + 20) == 16)
        {
          v36 = 0;
          v37 = 0;
          IIOColorSpace::IIOColorSpace(&v36, *MEMORY[0x1E695F110]);
          *&v35.bitsPerComponent = 0x4000000010;
          v35.colorSpace = v37;
          v35.bitmapInfo = 4358;
          memset(&v35.version, 0, 20);
          v33 = 0;
          v34 = 0;
          IIOColorSpace::IIOColorSpace(&v33, *MEMORY[0x1E695F1C0]);
          v31 = 0;
          v32 = 0;
          v13 = *MEMORY[0x1E695F0B8];
          IIOColorSpace::IIOColorSpace(&v31, *MEMORY[0x1E695F0B8]);
          *&v30.bitsPerComponent = 0x4000000010;
          v30.colorSpace = v32;
          v30.bitmapInfo = 4358;
          memset(&v30.version, 0, 20);
          v28 = 0;
          v29 = 0;
          IIOColorSpace::IIOColorSpace(&v28, v13);
          v27[0] = 0;
          v27[1] = 0;
          IIOColorConverter::IIOColorConverter(v27, &v35, &v30, v34, v29);
          src.data = v9;
          src.height = v4;
          v14 = *(this + 16);
          src.width = *(this + 3);
          src.rowBytes = v14;
          dest.data = v12;
          dest.height = v4;
          v15 = *(this + 18);
          dest.width = src.width;
          dest.rowBytes = v15;
          v24.data = a2;
          v24.height = v4;
          v24.width = src.width;
          v24.rowBytes = v15;
          v23.data = a2;
          v23.height = v4;
          v23.width = 4 * src.width;
          v23.rowBytes = v15;
          *permuteMap = 50462976;
          v16 = CIF10MIN();
          v17 = CIF10MAX();
          v18 = vImageConvert_XRGB2101010ToARGB16F(&src, 1.0, &dest, v16, v17, permuteMap, 0x810u);
          if (v18 || (v18 = IIOColorConverter::colorConvert(v27, &dest, &v24)) != 0 || (v18 = vImageConvert_16Fto16U(&v23, &v23, 0x10u)) != 0)
          {
            v19 = IIO_vImageErrorString(v18);
            LogError("getBytesDataProviderCIF10", 1317, "*** ERROR: CIF10 to RGB16 failed: %d '%s'\n", v18, v19);
          }

          IIOColorConverter::~IIOColorConverter(v27);
          IIOColorSpace::~IIOColorSpace(&v28);
          IIOColorSpace::~IIOColorSpace(&v31);
          IIOColorSpace::~IIOColorSpace(&v33);
          IIOColorSpace::~IIOColorSpace(&v36);
        }

        free(v9);
        v20 = v12;
      }

      else
      {
        v20 = v9;
      }

      free(v20);
    }
  }

  return a3;
}

void sub_1860DF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CGColorSpaceRef a31)
{
  IIOColorSpace::~IIOColorSpace(&a31);
  IIOColorSpace::~IIOColorSpace((v31 - 184));
  IIOColorSpace::~IIOColorSpace((v31 - 168));
  IIOColorSpace::~IIOColorSpace((v31 - 112));
  _Unwind_Resume(a1);
}

uint64_t IIOImagePixelDataProvider::getBytesFromAccessSession(IIOImagePixelDataProvider *this, char *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  while (1)
  {
    Bytes = CGAccessSessionGetBytes();
    if (Bytes - 1 >= v3)
    {
      break;
    }

    v5 += Bytes;
    a2 += Bytes;
    v3 -= Bytes;
    if (!v3)
    {
      return v5;
    }
  }

  if (Bytes)
  {
    v7 = "*** CGAccessSessionGetBytes returned unexpected amount of data.";
    v8 = 1355;
  }

  else
  {
    v7 = "*** CGAccessSessionGetBytes did not return any data.";
    v8 = 1352;
  }

  _cg_jpeg_mem_term("getBytesFromAccessSession", v8, v7);
  return v5;
}

vImagePixelCount IIOImagePixelDataProvider::getBytesCGAccessSessionConvert(CGImageRef *this, unsigned __int8 *a2, unint64_t a3)
{
  if (!this[32])
  {
    if (!CGImageGetDataProvider(this[2]))
    {
      return 0;
    }

    v22 = CGAccessSessionCreate();
    this[32] = v22;
    if (!v22)
    {
      return 0;
    }
  }

  v6 = 0;
  if (a2)
  {
    v7 = this[19];
    v8 = this[20];
    if (v8 > v7)
    {
      if (v7 + a3 <= v8)
      {
        v6 = a3;
      }

      else
      {
        v6 = v8 - v7;
      }

      v9 = this[18];
      v10 = (8 * (v7 % v9) / *(this + 21));
      v11 = (v7 / v9);
      v12 = IIOImagePixelDataProvider::endingPointForByteCount(this, v6);
      v14 = v13;
      v24.x = v10;
      v24.y = v11;
      v26.x = v12;
      v26.y = v14;
      v17 = IIOImagePixelDataProvider::sourceBytesForCoordinates(this, v24, v26, v15, v16);
      v18 = v17;
      v19 = *(this + 264);
      v20 = a2;
      if ((v19 & 1) == 0)
      {
        v20 = malloc_type_malloc(v17, 0x100004077774924uLL);
        if (!v20)
        {
          return 0;
        }
      }

      if (IIOImagePixelDataProvider::getBytesFromAccessSession(this, v20, v18) == v18)
      {
        v25.x = v10;
        v25.y = v11;
        v27.x = v12;
        v27.y = v14;
        v21 = IIOImagePixelDataProvider::convertBytesWithRange(this, v20, a2, v25, v27, v6);
        if (v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        _cg_jpeg_mem_term("getBytesCGAccessSessionConvert", 1468, "CGAccessSessionGetBytes did not return enough bytes. Got %zd, expected %zd.\n");
        v21 = 0;
        if (v19)
        {
LABEL_17:
          if (this[19] == this[20] || v21 != v6)
          {
            CGAccessSessionRelease();
            this[32] = 0;
            return v21;
          }

          return v6;
        }
      }

      free(v20);
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t IIOImagePixelDataProvider::rewind(IIOImagePixelDataProvider *this)
{
  *(this + 19) = 0;
  result = *(this + 32);
  if (result)
  {
    return CGAccessSessionRewind();
  }

  return result;
}

unint64_t IIOImagePixelDataProvider::skipForward(IIOImagePixelDataProvider *this, uint64_t a2)
{
  v4 = *(this + 19);
  v3 = *(this + 20);
  v5 = v4 + a2;
  if (v4 + a2 >= v3)
  {
    v5 = *(this + 20);
  }

  if (v5 >= v4)
  {
    v3 = v5;
  }

  *(this + 19) = v3;
  if (*(this + 32))
  {
    CGAccessSessionSkipForward();
    v3 = *(this + 19);
  }

  return v3 - v4;
}

uint64_t TIFFFlush(uint64_t a1)
{
  if (!*(a1 + 12))
  {
    return 1;
  }

  result = TIFFFlushData(a1);
  if (result)
  {
    v3 = *(a1 + 16) & 0x200008;
    if (v3 == 0x200000)
    {
      if (*(a1 + 12) != 2)
      {
        goto LABEL_8;
      }

      if (TIFFForceStrileArrayWriting(a1))
      {
        return 1;
      }

      v3 = *(a1 + 16) & 0x200008;
    }

    if (v3)
    {
LABEL_8:
      result = TIFFRewriteDirectory(a1);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 1;
  }

  return result;
}

uint64_t TIFFFlushData(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x40) == 0)
  {
    return 1;
  }

  if ((v1 & 0x1000) == 0 || (*(a1 + 16) = v1 & 0xFFFFEFFF, result = (*(a1 + 1000))(a1), result))
  {

    return TIFFFlushData1(a1);
  }

  return result;
}

uint64_t TIFFForceStrileArrayWriting(uint64_t a1)
{
  v2 = _cg_TIFFIsTiled(a1);
  if (!*(a1 + 12))
  {
    TIFFErrorExtR(a1, *a1, "File opened in read-only mode");
    return 0;
  }

  if (!*(a1 + 24))
  {
    TIFFErrorExtR(a1, "TIFFForceStrileArrayWriting", "Directory has not yet been written");
    return 0;
  }

  v3 = *(a1 + 16);
  if ((v3 & 8) != 0)
  {
    TIFFErrorExtR(a1, "TIFFForceStrileArrayWriting", "Directory has changes other than the strile arrays. TIFFRewriteDirectory() should be called instead");
    return 0;
  }

  v4 = v2;
  if ((v3 & 0x200000) == 0)
  {
    if (*(a1 + 256) && !*(a1 + 264) && !*(a1 + 258) && !*(a1 + 272) && *(a1 + 288) && !*(a1 + 296) && !*(a1 + 290) && !*(a1 + 304))
    {
      if (!*(a1 + 232))
      {
        result = TIFFSetupStrips(a1);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

    TIFFErrorExtR(a1, "TIFFForceStrileArrayWriting", "Function not called together with TIFFDeferStrileArrayWriting()");
    return 0;
  }

LABEL_21:
  if (v4)
  {
    v6 = 324;
  }

  else
  {
    v6 = 273;
  }

  result = _TIFFRewriteField(a1, v6, 0x10u, *(a1 + 228), *(a1 + 232));
  if (result)
  {
    if (v4)
    {
      v7 = 325;
    }

    else
    {
      v7 = 279;
    }

    result = _TIFFRewriteField(a1, v7, 0x10u, *(a1 + 228), *(a1 + 240));
    if (result)
    {
      *(a1 + 16) &= 0xFFDFFFBF;
      return 1;
    }
  }

  return result;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertOldDOMtoNewDOM(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore::IMetadata_v1::CreateMetadata();
}

void sub_1860DFFE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(AdobeXMPCore::INode_v1 *a1, AdobeXMPCore::INode_v1 *a2)
{
  v4 = 0;
  if (a1)
  {
    a1 = (a1 + *(*a1 - 544));
  }

  AdobeXMPCore::INode_v1::MakeShared(&v3, a1, a2);
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertNewDOMtoOldDOM(&v3, a2, &v4);
}

void sub_1860E0084(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

void sub_1860E0360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::shared_ptr<AdobeXMPCore::INode_v1>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(void *a1, unsigned int a2, void *a3)
{
  v5 = a2;
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertNewDOMtoOldDOM(v4, a3, &v5);
}

void sub_1860E0480(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<AdobeXMPCore::INode_v1>::~shared_ptr[abi:fe200100](va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateAndPopulateNode(char **a1, XMP_Node *a2, int a3)
{
  v8 = 0;
  v9 = 0;
  *v7 = 0;
  XMP_Node::GetFullQualifiedName(a2, &v9, &v7[1], &v8, v7);
  if (!*v7)
  {
    v8 = "arrayItem";
    v9 = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
    v7[0] = 9;
    v7[1] = 43;
  }

  v5 = 0;
  v6 = 0;
  v4 = *(a2 + 2);
  if ((v4 & 0x1F00) == 0)
  {
    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
  }

  if ((v4 & 0x100) != 0)
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
  }

  if ((v4 & 0x200) != 0)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }
}

void sub_1860E08E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 544));
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName()
{
  v4 = 0;
  v5 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_1860E11F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  v29 = *(v27 - 152);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  v30 = *(v27 - 136);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  v31 = *(v27 - 120);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v32 = *(v27 - 104);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::INameSpacePrefixMap_I>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1 || !a4)
  {
    (**&a1[*(*a1 - 56)])(&a1[*(*a1 - 56)], a2, a3, a4);

    std::shared_ptr<AdobeXMPCore_Int::INameSpacePrefixMap_I>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::INameSpacePrefixMap_I,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a5, a1, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1860E146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:fe200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:fe200100]((a1 + 1), 16);
  return a1;
}

void sub_1860E15C8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1866027D0](v1);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName();
}

void sub_1860E1AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<XMP_Node *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v23 = v9 <= a3 || v4 > a3;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      *v4 = *&a3[v24];
      return v4;
    }

    __break(1u);
LABEL_30:
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    goto LABEL_30;
  }

  v12 = &__src[-v10];
  v13 = v7 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 3;
  v29 = a1;
  if (v14)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v14);
  }

  v26 = 0;
  v27 = 8 * v15;
  v28 = (8 * v15);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v26, a3);
  v16 = v27;
  memcpy(v28, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v27;
  *&v28 = v28 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v28;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v26 = v21;
  v27 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_1860E1CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AdobeXMPCore_Int::MetadataConverterUtilsImpl::FindPrefixFromUserSuppliedMap(AdobeXMPCore_Int::MetadataConverterUtilsImpl *this, void *a2, char *a3, const char **a4, unsigned int *a5)
{
  if (!this)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  (*(*this + 88))(&v9);
  v7 = v9;
  if (v9)
  {
    *a3 = (*(*v9 + 192))(v9);
    *a4 = (*(*v9 + 208))(v9);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v7 != 0;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(XMP_Node *a1, uint64_t a2, char *a3, uint64_t *a4, void *a5, int a6)
{
  (*(**a2 + 160))();
  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName();
}

void sub_1860E21F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  v23 = *(v21 - 72);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

XMP_Node *AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleStructureNode(void *a1, XMP_Node *a2, uint64_t *a3, void *a4, int a5, int a6)
{
  if (!a5)
  {
    goto LABEL_10;
  }

  v24 = 0uLL;
  (*(*(*a1 + *(**a1 - 544)) + 256))(&v24);
  v12 = v24;
  if (v24)
  {
    (*(*v24 + 736))(&v22, v24);
    v13 = (*(*v22 + 192))(v22);
    MEMORY[0x186602520](a2 + 16, v13);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
    }
  }

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v24 + 1));
  }

  if (!v12)
  {
LABEL_10:
    if (a6)
    {
      v14 = *a1;
      if (*a1)
      {
        v14 = (v14 + *(*v14 - 544));
      }

      v15 = a1[1];
      *&v24 = v14;
      *(&v24 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode(a2, &v24, "", a3, a4);
    }

    v16 = *a1;
    if (*a1)
    {
      v16 = (v16 + *(*v16 - 544));
    }

    v17 = a1[1];
    *&v24 = v16;
    *(&v24 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v24, "", a3, a4, a5);
  }

  if (a2)
  {
    *(a2 + 2) |= 0x100u;
    v24 = 0uLL;
    (*(*(*a1 + *(**a1 - 688)) + 552))(&v24, *a1 + *(**a1 - 688));
    while (v24)
    {
      v22 = 0;
      v23 = 0;
      (*(*v24 + 48))(&v22);
      AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(&v22, a2, a3, a4, 1, 0);
      (*(*v24 + 56))(&v21);
      v18 = v21;
      v21 = 0uLL;
      v19 = *(&v24 + 1);
      v24 = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v21 + 1));
        }
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      }
    }

    if (*(&v24 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v24 + 1));
    }
  }

  return a2;
}

void sub_1860E25E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(uint64_t *a1, XMP_Node *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  if (v7)
  {
    v8 = a6;
    v9 = a5;
    v13 = (*(*v7 + 40))(v7);
    switch(v13)
    {
      case 4:
        (*(**a1 + 240))(&v21);
        v14 = AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleStructureNode(&v21, a2, a3, a4, v9, v8);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v21 + 1));
        }

        break;
      case 2:
        (*(**a1 + 248))(&v21);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleArrayNode(&v21, a2, a3, a4, v9, v8);
      case 1:
        (*(**a1 + 232))(&v21);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleSimpleNode(&v21, a2, a3, a4, v9, v8);
      default:
        v14 = 0;
        break;
    }

    if ((*(**a1 + 184))())
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v21 = 0uLL;
      (*(**a1 + 112))(&v21);
      while (v21)
      {
        v19 = 0;
        v20 = 0;
        (*(*v21 + 48))(&v19);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(&v19, v14, a3, a4, 0, 1);
        (*(*v21 + 56))(&v18);
        v16 = v18;
        v18 = 0uLL;
        v17 = *(&v21 + 1);
        v21 = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v17);
          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v18 + 1));
          }
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v20);
        }
      }

      if (*(&v21 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v21 + 1));
      }
    }
  }
}

void sub_1860E28E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleArrayNode(void *a1, XMP_Node *a2, uint64_t *a3, void *a4, int a5, int a6)
{
  if (a6)
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = (v6 + *(*v6 - 544));
    }

    v7 = a1[1];
    v10 = v6;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode(a2, &v10, "", a3, a4);
  }

  v8 = *a1;
  if (*a1)
  {
    v8 = (v8 + *(*v8 - 544));
  }

  v9 = a1[1];
  v10 = v8;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v10, "", a3, a4, a5);
}

void sub_1860E2BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleSimpleNode(uint64_t *a1, XMP_Node *a2, uint64_t *a3, void *a4, int a5, int a6)
{
  if (a6)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = v10 + *(*v10 - 544);
    }

    else
    {
      v11 = 0;
    }

    v15 = a1[1];
    v20 = v11;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v10 = *a1;
    }

    (*(*v10 + 504))(&v19);
    v16 = (*(*v19 + 192))(v19);
    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode(a2, &v20, v16, a3, a4);
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = v13 + *(*v13 - 544);
  }

  else
  {
    v14 = 0;
  }

  v17 = a1[1];
  v20 = v14;
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    v13 = *a1;
  }

  (*(*v13 + 504))(&v19);
  v18 = (*(*v19 + 192))(v19);
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v20, v18, a3, a4, a5);
}

void sub_1860E2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::shared_ptr<AdobeXMPCore_Int::IError_I>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void sub_1860E301C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:fe200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x186602780](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:fe200100](a1);
  return a1;
}

void sub_1860E3220(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:fe200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) == 0)
  {
    return;
  }

  *(a1 + 88) = v4 + v5;
  if ((v3 & 0x80000000) != 0)
  {
    v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
  }

  std::string::resize(v2, v7, 0);
  v8 = *(a1 + 87);
  if (v8 < 0)
  {
    v8 = *(a1 + 72);
    if (v8 < 0)
    {
LABEL_19:
      __break(1u);
      return;
    }
  }

  *(a1 + 40) = v4;
  *(a1 + 48) = v4;
  *(a1 + 56) = v4 + v8;
  if ((*(a1 + 96) & 3) != 0)
  {
    if (v5 >> 31)
    {
      v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
      v4 = (v4 + v10 + 0x7FFFFFFF);
      v5 = v5 - v10 - 0x7FFFFFFF;
      *(a1 + 48) = v4;
    }

    if (v5)
    {
      *(a1 + 48) = v4 + v5;
    }
  }
}

void XMPUtils::SetNode(void *a1, char *a2, int a3)
{
  v4 = *a1;
  if (!v4)
  {
    return;
  }

  v5 = a3;
  if ((a3 & 0x20000000) != 0)
  {
    (*(*v4 + 224))(v4, 1, 1);
  }

  if (!a2)
  {
    v12 = (*(**a1 + 40))();
    if ((v5 & 0x200) == 0 || v12 != 4)
    {
      v13 = (*(**a1 + 40))();
      if ((v5 & 0x100) == 0 || v13 != 2)
      {
        v14 = *(**a1 + 224);

        v14();
        return;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v18 = "Requested and existing composite form mismatch";
LABEL_48:
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  if ((v5 & 0x1F00) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v18 = "Composite nodes can't have values";
    goto LABEL_48;
  }

  if (!*a1)
  {
    return;
  }

  if ((*(**a1 + 40))(*a1) != 1)
  {
    XMPUtils::SetNode();
  }

  v25 = 0;
  v26 = 0;
  (*(**a1 + 232))(&v25);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  if (v24 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_23;
  }

  while (v8 < 1)
  {
LABEL_21:
    v19[0] = 0;
    v21 = 0;
    CodePoint_from_UTF8(v7, 4uLL, v19, &v21);
    if (v19[0] >> 1 == 0x7FFF)
    {
      v16 = __cxa_allocate_exception(0x18uLL);
      *v16 = 205;
      v16[1] = "U+FFFE and U+FFFF are not allowed in XML";
      *(v16 + 16) = 0;
    }

    v7 += v21;
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_23;
    }
  }

  do
  {
    if (v8 > 0x1F)
    {
      if (v8 != 127)
      {
        goto LABEL_19;
      }

LABEL_15:
      *v7 = 32;
      goto LABEL_19;
    }

    if (v8 > 0xD || ((1 << v8) & 0x2600) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = *++v7;
    v8 = v9;
  }

  while (v9 > 0);
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_23:
  if ((v5 & 0x20) != 0)
  {
    (*(**a1 + 88))(&v21);
    v10 = (*(*v21 + 192))(v21);
    if (!strcmp(v10, "http://www.w3.org/XML/1998/namespace"))
    {
      (*(**a1 + 72))(v19);
      v15 = (*(**v19 + 192))(*v19);
      v11 = strcmp(v15, "lang") == 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v22);
    }

    if (v11)
    {
      NormalizeLangValue(__p);
    }
  }

  (*(*v25 + 512))();
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }
}

void sub_1860E37BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::ConvertNewArrayFormToOldArrayForm(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if ((*(*result + 640))(result) == 4)
    {
      return 2048;
    }

    else if ((*(**a1 + 640))(*a1) == 2)
    {
      return 1024;
    }

    else
    {
      return ((*(**a1 + 640))(*a1) == 1) << 9;
    }
  }

  return result;
}

void XMPUtils::CreateArrayChildNode(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 88))(&__p);
  v6 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(v20, v6);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v16);
  v7 = (*(*v16 + 192))(v16);
  std::string::basic_string[abi:fe200100]<0>(&__p, v7);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v16 + 1));
  }

  *a3 = 0;
  a3[1] = 0;
  if (!(*(*(*a1 + *(**a1 - 688)) + 560))(*a1 + *(**a1 - 688)))
  {
    XMPUtils::CreateTerminalNode(&v16, a2);
    v11 = v16;
    v16 = 0uLL;
    v12 = a3[1];
    *a3 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      v13 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

  (*(**a1 + 656))(&v16);
  v8 = v16;
  if (!v16 || (*(*v16 + 40))(v16) != 2)
  {
    v10 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  (*(*v8 + 248))(&v15, v8);
  v9 = *(&v15 + 1);
  v16 = v15;
  v15 = 0uLL;
  v10 = XMPUtils::ConvertNewArrayFormToOldArrayForm(&v16);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v15 + 1));
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_15:
    if ((*(*v8 + 40))(v8) == 4)
    {
      AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
    }
  }

LABEL_17:
  if ((a2 & 0x1F00) == 0 && (*(*v8 + 40))(v8) == 1)
  {
    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
  }

  if ((a2 & 0x800) != 0 && v10 >= 0x800)
  {
    AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode();
  }

  if ((a2 & 0x400) != 0 && (v10 & 0x400) != 0)
  {
    AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
  }

  if ((a2 & 0x200) != 0 && (v10 & 0x200) != 0)
  {
    AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode();
  }

  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Array has to be homogeneous";
    *(exception + 16) = 0;
  }

  if (*(&v8 + 1))
  {
    v13 = *(&v8 + 1);
LABEL_35:
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

LABEL_36:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1860E3E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v25);
  }

  v27 = *(v24 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::CreateTerminalNode(uint64_t *__return_ptr a1@<X8>, const char *a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  if ((a4 & 0x1F00) == 0)
  {
    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
  }

  if ((a4 & 0x100) != 0)
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
  }

  if ((a4 & 0x200) != 0)
  {
    if ((a4 & 0x800) == 0)
    {
      if ((a4 & 0x400) == 0)
      {
        AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode();
      }

      AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
    }

    AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode();
  }
}

void sub_1860E4040(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::IStructureNode_v1,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 544));
  }

  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void XMPUtils::DoSetArrayItem(void *a1, int a2, char *a3, int a4)
{
  v8 = *a1 + *(**a1 - 688);
  v9 = (*(*v8 + 560))(v8);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 88))(&__p);
  v10 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(v36, v10);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v32);
  v11 = (*(*v32 + 192))(v32);
  std::string::basic_string[abi:fe200100]<0>(&__p, v11);
  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v32 + 1));
  }

  v12 = VerifySetOptions(a4 & 0xFFFF3FFF, a3);
  v13 = a4 & 0xC000;
  if (a2 == -1)
  {
    v14 = v9;
  }

  else
  {
    v14 = a2;
  }

  if (v13 == 0x8000 && v14 == 0)
  {
    v13 = 0x4000;
    v14 = 1;
  }

  v15 = v14 == v9 && v13 == 0x8000;
  if (v14 == v9 && v13 == 0x8000)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = v14 + v15;
  v32 = 0uLL;
  if (v14 + v15 == v9 + 1)
  {
    if (v16 < 0x8000)
    {
      XMPUtils::CreateArrayChildNode(a1, v12, &v31);
      v18 = v31;
      v31 = 0uLL;
      v19 = *(&v32 + 1);
      v32 = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        if (*(&v31 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
        }
      }

      v20 = v9 + 1;
LABEL_31:
      (*(**a1 + 664))(*a1, &v32, v20);
      goto LABEL_32;
    }

    v27 = "Can't insert before or after implicit new item";
LABEL_47:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    exception[1] = v27;
    *(exception + 16) = 0;
  }

  if (v17 < 1 || v17 > v9)
  {
    v27 = "Array index out of bounds";
    goto LABEL_47;
  }

  if (v16)
  {
    XMPUtils::CreateArrayChildNode(a1, v12, &v31);
    v22 = v31;
    v31 = 0uLL;
    v23 = *(&v32 + 1);
    v32 = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      if (*(&v31 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
      }
    }

    if (v16 == 0x8000)
    {
      v20 = (v17 + 1);
    }

    else
    {
      v20 = v17;
    }

    goto LABEL_31;
  }

  (*(**a1 + 656))(&v29);
  (*(*v29 + 232))(&v31);
  v24 = v31;
  if (v31)
  {
    v24 = v31 + *(*v31 - 544);
  }

  v25 = *(&v31 + 1);
  v31 = 0uLL;
  v26 = *(&v32 + 1);
  *&v32 = v24;
  *(&v32 + 1) = v25;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
    if (*(&v31 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
    }
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

LABEL_32:
  XMPUtils::SetNode(&v32, a3, v12);
  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v32 + 1));
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_1860E44E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::GetNameSpaceAndNameFromStepValue(const std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::string::find(a1, 58, 0);
  memset(&v11, 0, sizeof(v11));
  std::string::basic_string(&v11, a1, 0, v8, &v10);
  (*(**a2 + 80))(&v10);
  v9 = (*(*v10.__r_.__value_.__l.__data_ + 192))(v10.__r_.__value_.__r.__words[0]);
  MEMORY[0x186602520](a3, v9);
  if (v10.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10.__r_.__value_.__l.__size_);
  }

  std::string::basic_string(&v10, a1, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1860E46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPUtils::HandleConstAliasStep(void *a1, void *a2, uint64_t *a3, int *a4)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a2, a1);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
LABEL_103:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  if ((v9 - v8) <= 0x20)
  {
    goto LABEL_102;
  }

  if ((*(v8 + 56) & 0x10) == 0)
  {
    return 0;
  }

  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v8 + 32);
  if (sRegisteredAliasMap + 8 == v11)
  {
    XMPUtils::HandleConstAliasStep();
  }

  v12 = v11;
  __p[0] = 0;
  __p[1] = 0;
  v60 = 0;
  v13 = *(v11 + 56);
  if (*(v11 + 64) == v13)
  {
    goto LABEL_102;
  }

  if (v13[23] < 0)
  {
    v13 = *v13;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v13);
  v14 = *(v12 + 56);
  if ((*(v12 + 64) - v14) <= 0x20)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v15 = (v14 + 32);
  v16 = *(v14 + 55);
  if (v16 < 0)
  {
    v17 = *(v14 + 32);
    v16 = *(v14 + 40);
  }

  else
  {
    v17 = (v14 + 32);
  }

  if (v16 < 1)
  {
    goto LABEL_26;
  }

  v18 = &v17[v16];
  v19 = v17;
  while (1)
  {
    v20 = memchr(v19, 58, v16);
    if (!v20)
    {
      goto LABEL_26;
    }

    if (*v20 == 58)
    {
      break;
    }

    v19 = v20 + 1;
    v16 = v18 - v19;
    if (v18 - v19 < 1)
    {
      goto LABEL_26;
    }
  }

  if (v20 == v18 || v20 - v17 == -1)
  {
LABEL_26:
    __assert_rtn("HandleConstAliasStep", "XMPUtils.cpp", 296, "colonPos != std::string::npos");
  }

  memset(&v58, 0, sizeof(v58));
  std::string::basic_string(&v58, v15, v20 - v17 + 1, 0xFFFFFFFFFFFFFFFFLL, &v61);
  (*(*(*a1 + *(**a1 - 792)) + 648))(&v61);
  v21 = v61;
  v61 = 0uLL;
  v22 = a2[1];
  *a2 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
    if (*(&v61 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
    }

    v23 = *a2;
    if (!*a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v23 = v21;
    if (!v21)
    {
      goto LABEL_37;
    }
  }

  if (*(v12 + 64) - *(v12 + 56) != 64)
  {
    if ((*(*v23 + 40))(v23) != 2)
    {
      v51 = "destNode->GetNodeType() == INode::kNTArray";
      v52 = 301;
      goto LABEL_101;
    }

    v24 = *(v12 + 56);
    if ((*(v12 + 64) - v24) > 0x40)
    {
      v25 = (v24 + 64);
      v26 = *(v24 + 88);
      if (v26 == 5)
      {
        if (*(v24 + 87) < 0 && *(v24 + 72) == 23)
        {
          v29 = *v25;
          v30 = *v29;
          v31 = v29[1];
          v32 = *(v29 + 15);
          v33 = v30 == 0x616C3A6C6D783F5BLL && v31 == 0x65642D78223D676ELL;
          if (v33 && v32 == 0x5D22746C75616665)
          {
            v56 = 0;
            v57 = 0;
            v35 = a2[1];
            *&v61 = *a2;
            *(&v61 + 1) = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            XMPUtils::GetNodeChildIterator(&v61, &v56);
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v35);
            }

            v36 = v56;
            v37 = 1;
            do
            {
              v10 = v36 != 0;
              if (!v36)
              {
                break;
              }

              (*(*v36 + 48))(&v61, v36);
              v38 = v61;
              (*(*v61 + 128))(&v61, v61, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
              v39 = v61;
              if ((*(*v61 + 40))(v61) != 1)
              {
                goto LABEL_65;
              }

              (*(*v39 + 232))(&v61, v39);
              v40 = *(&v61 + 1);
              (*(*v61 + 504))(&v54);
              v41 = (*(*v54 + 192))(v54);
              v42 = strcmp("x-default", v41);
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v55);
              }

              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v40);
              }

              if (!v42)
              {
                if (*(&v38 + 1))
                {
                  atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v45 = a2[1];
                *a2 = v38;
                if (v45)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v45);
                }

                v44 = 0;
                if (a4)
                {
                  *a4 = v37;
                }
              }

              else
              {
LABEL_65:
                (*(*v36 + 56))(&v61, v36);
                v36 = v61;
                ++v37;
                v43 = v57;
                v57 = *(&v61 + 1);
                if (v43)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v43);
                }

                v44 = 1;
              }

              if (*(&v39 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v39 + 1));
              }

              if (*(&v38 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v38 + 1));
              }
            }

            while ((v44 & 1) != 0);
            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v57);
            }

            goto LABEL_38;
          }
        }

        v51 = "aliasPos->second[2].step == [?xml:lang=\\x-default\\]";
        v52 = 315;
LABEL_101:
        __assert_rtn("HandleConstAliasStep", "XMPUtils.cpp", v52, v51);
      }

      if (v26 == 3)
      {
        v27 = *(v24 + 87);
        if (v27 < 0)
        {
          if (*(v24 + 72) != 3)
          {
LABEL_100:
            v51 = "aliasPos->second[2].step == [1]";
            v52 = 304;
            goto LABEL_101;
          }

          v25 = *v25;
        }

        else if (v27 != 3)
        {
          goto LABEL_100;
        }

        v46 = *v25;
        v47 = *(v25 + 2);
        if (v46 == 12635 && v47 == 93)
        {
          (*(**a2 + 248))(&v56);
          (*(*v56 + 656))(&v61);
          v49 = v61;
          v61 = 0uLL;
          v50 = a2[1];
          *a2 = v49;
          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v50);
            if (*(&v61 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
            }
          }

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v57);
          }

          (*(**a2 + 40))();
          v10 = *a2 != 0;
          if (a4 && *a2)
          {
            v10 = 1;
            *a4 = 1;
          }

          goto LABEL_38;
        }

        goto LABEL_100;
      }

LABEL_37:
      v10 = 0;
      goto LABEL_38;
    }

    goto LABEL_102;
  }

  v10 = 1;
LABEL_38:
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1860E4E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::GetNodeChildIterator(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = (*(**a1 + 40))(*a1);
  v5 = *a1;
  if (v4 == 2)
  {
    (*(*v5 + 248))(&v7);
    v6 = *(&v7 + 1);
    (*(*(v7 + *(*v7 - 688)) + 552))(&v7, v7 + *(*v7 - 688));
  }

  else
  {
    if ((*(*v5 + 40))(v5) != 4)
    {
      return;
    }

    (*(**a1 + 240))(&v7);
    v6 = *(&v7 + 1);
    (*(*(v7 + *(*v7 - 688)) + 552))(&v7, v7 + *(*v7 - 688));
  }

  *a2 = v7;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_1860E5094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPUtils::HandleAliasStep(void *a1, uint64_t *a2, char a3, unsigned int a4, void *a5, int *a6)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a5, a1);
  v12 = *a2;
  v13 = a2[1];
  v14 = v13 - *a2;
  if (v13 == *a2)
  {
LABEL_150:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  if (v14 <= 0x20)
  {
    goto LABEL_149;
  }

  if ((*(v12 + 56) & 0x10) == 0)
  {
    return 0;
  }

  v16 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v12 + 32);
  if (sRegisteredAliasMap + 8 == v16)
  {
    XMPUtils::HandleAliasStep();
  }

  v17 = v16;
  __p[0] = 0;
  __p[1] = 0;
  v83 = 0;
  v18 = *(v16 + 56);
  if (*(v16 + 64) == v18)
  {
    goto LABEL_149;
  }

  if (v18[23] < 0)
  {
    v18 = *v18;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v18);
  v19 = *(v17 + 56);
  if ((*(v17 + 64) - v19) <= 0x20)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v20 = (v19 + 32);
  v21 = *(v19 + 55);
  if (v21 < 0)
  {
    v22 = *(v19 + 32);
    v21 = *(v19 + 40);
  }

  else
  {
    v22 = (v19 + 32);
  }

  if (v21 < 1)
  {
    goto LABEL_26;
  }

  v23 = &v22[v21];
  v24 = v22;
  while (1)
  {
    v25 = memchr(v24, 58, v21);
    if (!v25)
    {
      goto LABEL_26;
    }

    if (*v25 == 58)
    {
      break;
    }

    v24 = v25 + 1;
    v21 = v23 - v24;
    if (v23 - v24 < 1)
    {
      goto LABEL_26;
    }
  }

  if (v25 == v23 || v25 - v22 == -1)
  {
LABEL_26:
    __assert_rtn("HandleAliasStep", "XMPUtils.cpp", 362, "colonPos != std::string::npos");
  }

  memset(&v81, 0, sizeof(v81));
  std::string::basic_string(&v81, v20, v25 - v22 + 1, 0xFFFFFFFFFFFFFFFFLL, &v84);
  (*(*(*a1 + *(**a1 - 792)) + 648))(&v84);
  v26 = v84;
  v84 = 0uLL;
  v27 = a5[1];
  *a5 = v26;
  if (!v27)
  {
    v28 = v26;
    if (v26)
    {
      goto LABEL_30;
    }

LABEL_28:
    if ((a3 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  if (*(&v84 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
  }

  v28 = *a5;
  if (!*a5)
  {
    goto LABEL_28;
  }

LABEL_30:
  v29 = *(v17 + 56);
  v30 = (*(v17 + 64) - v29) >> 5;
  if (v30 == 2)
  {
    if (!v28)
    {
      std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a5, a1);
      if (v14 == 64)
      {
        v34 = a4;
      }

      else
      {
        v34 = 0;
      }

      v84 = 0uLL;
      XMPUtils::CreateTerminalNode(&v84, v34);
      if (v84)
      {
        (*(**a5 + 240))(&v80);
        (*(*(v80 + *(*v80 - 688)) + 520))(v80 + *(*v80 - 688), &v84);
        if (*(&v80 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
        }

        v36 = *(&v84 + 1);
        v35 = v84;
        if (*(&v84 + 1))
        {
          atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v37 = a5[1];
        *a5 = v35;
        a5[1] = v36;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v37);
          v35 = *a5;
        }

        v15 = v35 != 0;
      }

      else
      {
        v15 = 0;
      }

      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }

      goto LABEL_133;
    }

    goto LABEL_32;
  }

  if (v30 != 3)
  {
    v73 = "aliasPos->second.size() == 3";
    v74 = 381;
    goto LABEL_148;
  }

  v31 = (v29 + 64);
  v32 = *(v29 + 88);
  if (v32 == 5)
  {
    if ((*(v29 + 87) & 0x80000000) == 0 || *(v29 + 72) != 23 || ((v38 = *v31, v39 = *v38, v40 = v38[1], v41 = *(v38 + 15), v39 == 0x616C3A6C6D783F5BLL) ? (v42 = v40 == 0x65642D78223D676ELL) : (v42 = 0), v42 ? (v43 = v41 == 0x5D22746C75616665) : (v43 = 0), !v43))
    {
      v73 = "aliasPos->second[2].step == [?xml:lang=\\x-default\\]";
      v74 = 406;
      goto LABEL_148;
    }

    (*(*(*a1 + *(**a1 - 792)) + 648))(&v84);
    v44 = v84;
    v84 = 0uLL;
    v45 = a5[1];
    *a5 = v44;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v45);
      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }
    }

    if (*a5 || (a3 & 1) != 0)
    {
      v80 = 0uLL;
      XMPUtils::CreateTerminalNode(&v80, 0x1200);
      v46 = *a1 + *(**a1 - 688);
      (*(*v46 + 520))(v46, &v80);
      v48 = *(&v80 + 1);
      v47 = v80;
      if (*(&v80 + 1))
      {
        atomic_fetch_add_explicit((*(&v80 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v49 = a5[1];
      *a5 = v47;
      a5[1] = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v49);
        v47 = *a5;
        v48 = a5[1];
      }

      v78 = 0;
      v79 = 0;
      *&v84 = v47;
      *(&v84 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      XMPUtils::GetNodeChildIterator(&v84, &v78);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v48);
      }

      v50 = v78;
      v51 = 1;
      do
      {
        if (!v50)
        {
          v78 = 0;
          v84 = 0uLL;
          AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
        }

        (*(*v50 + 48))(&v84, v50);
        v52 = v84;
        (*(*v84 + 128))(&v84, v84, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
        v53 = v84;
        if ((*(*v84 + 40))(v84) != 1)
        {
          goto LABEL_81;
        }

        (*(*v53 + 232))(&v84, v53);
        v54 = *(&v84 + 1);
        (*(*v84 + 504))(&v76);
        v55 = (*(*v76 + 192))(v76);
        v56 = strcmp("x-default", v55);
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v77);
        }

        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v54);
        }

        if (!v56)
        {
          if (*(&v52 + 1))
          {
            atomic_fetch_add_explicit((*(&v52 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v59 = a5[1];
          *a5 = v52;
          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v59);
          }

          v58 = 0;
          if (a6)
          {
            *a6 = v51;
          }
        }

        else
        {
LABEL_81:
          (*(*v50 + 56))(&v84, v50);
          v50 = v84;
          ++v51;
          v57 = v79;
          v79 = *(&v84 + 1);
          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v57);
          }

          v58 = 1;
        }

        if (*(&v53 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
        }

        if (*(&v52 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v52 + 1));
        }
      }

      while ((v58 & 1) != 0);
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v79);
      }

      if (*(&v80 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
      }

LABEL_32:
      v15 = 1;
      goto LABEL_133;
    }
  }

  else if (v32 == 3)
  {
    v33 = *(v29 + 87);
    if (v33 < 0)
    {
      if (*(v29 + 72) != 3)
      {
LABEL_147:
        v73 = "aliasPos->second[2].step == [1]";
        v74 = 383;
LABEL_148:
        __assert_rtn("HandleAliasStep", "XMPUtils.cpp", v74, v73);
      }

      v31 = *v31;
    }

    else if (v33 != 3)
    {
      goto LABEL_147;
    }

    v60 = *v31;
    v61 = *(v31 + 2);
    if (v60 != 12635 || v61 != 93)
    {
      goto LABEL_147;
    }

    (*(*(*a1 + *(**a1 - 792)) + 648))(&v84);
    v63 = v84;
    v84 = 0uLL;
    v64 = a5[1];
    *a5 = v63;
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v64);
      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }

      v65 = *a5;
    }

    else
    {
      v65 = v63;
    }

    if (v65 || (a3 & 1) != 0)
    {
      if (!v65)
      {
        v84 = 0uLL;
        XMPUtils::CreateTerminalNode(&v84, 0x600);
        v66 = *a1 + *(**a1 - 688);
        (*(*v66 + 520))(v66, &v84);
        v67 = v84;
        if (*(&v84 + 1))
        {
          atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v68 = a5[1];
        *a5 = v67;
        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v68);
        }

        if (*(&v84 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
        }

        v65 = *a5;
      }

      (*(*v65 + 248))(&v80);
      (*(*v80 + 656))(&v84);
      v69 = v84;
      if (*(&v84 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
      }

      if (*(&v80 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
      }

      if (!v69)
      {
        v84 = 0uLL;
        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
      }

      (*(**a5 + 248))(&v80);
      (*(*v80 + 656))(&v84);
      v70 = v84;
      v84 = 0uLL;
      v71 = a5[1];
      *a5 = v70;
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v71);
        if (*(&v84 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v84 + 1));
        }
      }

      if (*(&v80 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
      }

      v15 = 1;
      if (a6)
      {
        *a6 = 1;
      }

      goto LABEL_133;
    }
  }

LABEL_29:
  v15 = 0;
LABEL_133:
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_1860E6194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v32 = *(v30 - 88);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::FindNode(AdobeXMPCore::INameSpacePrefixMap_v1 *a1, uint64_t *a2, int a3, unsigned int a4, uint64_t a5, _DWORD *a6, unsigned int a7)
{
  v165 = 0uLL;
  v13 = *a1;
  if (*a1)
  {
    v13 = (v13 + *(*v13 - 544));
  }

  v14 = *(a1 + 1);
  v165.n128_u64[0] = v13;
  v165.n128_u64[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 1);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (a4)
  {
LABEL_9:
    if ((a3 & 1) == 0)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 468, "(leafOptions == 0) || createNodes");
    }
  }

LABEL_10:
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  v163 = 0;
  v164 = 0;
  v16.n128_f64[0] = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v163);
  if ((a2[1] - *a2) <= 0x20)
  {
    goto LABEL_432;
  }

  if ((*(*a2 + 56) & 0x10) != 0)
  {
    if (!XMPUtils::HandleAliasStep(a1, a2, a3, a4, &v165, 0))
    {
      v117 = 0;
LABEL_416:
      if (v164)
      {
        v125 = v117;
        std::__shared_weak_count::__release_shared[abi:fe200100](v164);
        v117 = v125;
      }

      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v117);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }

      if (v165.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v165.n128_u64[1]);
      }

      return;
    }

    v136 = a3;
    v131 = a4;
    v133 = a5;
    v17 = 2;
  }

  else
  {
    v136 = a3;
    v131 = a4;
    v133 = a5;
    v17 = 1;
  }

  v137 = ((a2[1] - *a2) >> 5) - a7;
  if (v17 >= v137)
  {
    v135 = 0;
    goto LABEL_387;
  }

  v135 = 0;
  v18 = 0;
  v132 = 0;
  v19 = v15;
LABEL_18:
  if (!v165.n128_u64[0])
  {
    v15 = v19;
    goto LABEL_394;
  }

  memset(&v162, 0, sizeof(v162));
  if (v17 >= (a2[1] - *a2) >> 5)
  {
    goto LABEL_432;
  }

  v20 = *a2 + 32 * v17;
  if (*(v20 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, *v20, *(v20 + 8));
  }

  else
  {
    v21 = *v20;
    v162.__r_.__value_.__r.__words[2] = *(v20 + 16);
    *&v162.__r_.__value_.__l.__data_ = v21;
  }

  memset(&v161, 0, sizeof(v161));
  v22 = *a2;
  v23 = a2[1];
  if (v17 - 1 >= (v23 - *a2) >> 5)
  {
    goto LABEL_432;
  }

  v24 = v22 + 32 * (v17 - 1);
  if (*(v24 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, *v24, *(v24 + 8));
    v22 = *a2;
    v23 = a2[1];
  }

  else
  {
    v16 = *v24;
    v161.__r_.__value_.__r.__words[2] = *(v24 + 16);
    *&v161.__r_.__value_.__l.__data_ = v16;
  }

  memset(&v160, 0, sizeof(v160));
  if (v17 >= (v23 - v22) >> 5)
  {
    goto LABEL_432;
  }

  v25 = 0;
  v26 = *(v22 + 32 * v17 + 24);
  if (v26 > 3)
  {
    if (v26 != 4)
    {
      if (v26 != 5)
      {
        if (v26 != 6)
        {
          goto LABEL_130;
        }

        memset(&__str, 0, sizeof(__str));
        memset(&v158, 0, sizeof(v158));
        v154[0] = 0;
        v154[1] = 0;
        v155 = 0;
        SplitNameAndValue(&v162, &__str, &v158);
        v29 = v18;
        v30 = v165;
        if (v165.n128_u64[1])
        {
          atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v31 = std::string::find(&__str, 58, 0);
        memset(&v153, 0, sizeof(v153));
        std::string::basic_string(&v153, &__str, 0, v31, &__p);
        (*(*v163 + 80))(&__p);
        v32 = (*(*__p + 192))(__p);
        MEMORY[0x186602520](v154, v32);
        if (v146)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v146);
        }

        if (!v30.n128_u64[0] || (*(*v30.n128_u64[0] + 40))(v30.n128_u64[0]) != 2)
        {
          v42 = 5;
          v18 = v29;
          goto LABEL_289;
        }

        v156 = 0;
        v157 = 0;
        (*(*v30.n128_u64[0] + 248))(&v156, v30.n128_u64[0]);
        v33 = (*(*(v156 + *(*v156 - 688)) + 560))(v156 + *(*v156 - 688));
        if (!v33)
        {
          v110 = 0;
          v42 = 0;
          v18 = v29;
          goto LABEL_283;
        }

        v34 = v33;
        v129 = 0;
        v35 = 1;
        while (1)
        {
          v151 = 0;
          v152 = 0;
          (*(*v156 + 656))(&v151);
          if ((*(*v151 + 40))(v151) != 4)
          {
            v42 = 5;
            goto LABEL_76;
          }

          v149 = 0;
          v150 = 0;
          (*(*v151 + 240))(&__p);
          (*(*__p + 648))(&v149);
          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v146);
          }

          if (v149 && (*(*v149 + 40))(v149) == 1)
          {
            __p = 0;
            v146 = 0;
            v147 = 0;
            (*(*v149 + 232))(&v144);
            (*(*v144.n128_u64[0] + 504))(&v148);
            v36 = (*(*v148.n128_u64[0] + 192))(v148.n128_u64[0]);
            std::string::basic_string[abi:fe200100]<0>(&__p, v36);
            if (v148.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v148.n128_u64[1]);
            }

            if (v144.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v144.n128_u64[1]);
            }

            v37 = HIBYTE(v147);
            if (v147 >= 0)
            {
              v38 = HIBYTE(v147);
            }

            else
            {
              v38 = v146;
            }

            size = HIBYTE(v158.__r_.__value_.__r.__words[2]);
            if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v158.__r_.__value_.__l.__size_;
            }

            if (v38 == size && (v147 >= 0 ? (p_p = &__p) : (p_p = __p), (v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v41 = &v158) : (v41 = v158.__r_.__value_.__r.__words[0]), !memcmp(p_p, v41, v38)))
            {
              (*(*v156 + 656))(&v148);
              v16 = v148;
              v148 = 0uLL;
              v43 = v165.n128_u64[1];
              v165 = v16;
              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v43);
                if (v148.n128_u64[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v148.n128_u64[1]);
                }
              }

              v129 = 1;
              v42 = 16;
              if ((v147 & 0x8000000000000000) == 0)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v42 = 0;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_74;
              }
            }

            operator delete(__p);
          }

          else
          {
            v42 = 18;
          }

LABEL_74:
          if (v150)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v150);
          }

LABEL_76:
          if (v152)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v152);
          }

          if (v42 && v42 != 18)
          {
            v18 = v29;
            if (v42 == 16)
            {
              v42 = 0;
            }

LABEL_282:
            v110 = v129;
LABEL_283:
            if (v157)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v157);
            }

            if (!v42)
            {
              if (v110)
              {
                v42 = 0;
              }

              else
              {
                v42 = 5;
              }
            }

LABEL_289:
            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            if (v30.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v30.n128_u64[1]);
            }

            if (SHIBYTE(v155) < 0)
            {
              operator delete(v154[0]);
            }

            if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v158.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v25 = 0;
            v15 = v19;
            if (!v42)
            {
LABEL_365:
              v42 = 0;
            }

LABEL_366:
            if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v160.__r_.__value_.__l.__data_);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v25);
            }

            if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v161.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v162.__r_.__value_.__l.__data_);
            }

            if (v42 <= 3)
            {
              if (v42)
              {
                goto LABEL_415;
              }

LABEL_378:
              ++v17;
              v19 = v15;
              if (v17 == v137)
              {
LABEL_387:
                v115 = v165;
                if (v165.n128_u64[1])
                {
                  atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
                }

                v116 = *(v133 + 8);
                *v133 = v115;
                if (v116)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v116);
                }

                goto LABEL_415;
              }

              goto LABEL_18;
            }

            if (v42 == 4)
            {
              goto LABEL_378;
            }

            if (v165.n128_u64[0])
            {
              goto LABEL_415;
            }

LABEL_394:
            if ((v132 & 1) == 0)
            {
              goto LABEL_415;
            }

            *&v162.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v18 + 56))(&v162, v18, v16);
            if ((*(*v162.__r_.__value_.__l.__data_ + 40))(v162.__r_.__value_.__r.__words[0]) == 2)
            {
              (*(*v162.__r_.__value_.__l.__data_ + 248))(&v161);
              (*(*v161.__r_.__value_.__l.__data_ + 680))(&v140);
              v118 = v141;
              if (v141)
              {
                goto LABEL_397;
              }

              goto LABEL_398;
            }

            if ((*(*v162.__r_.__value_.__l.__data_ + 40))(v162.__r_.__value_.__r.__words[0]) == 4)
            {
              (*(*v162.__r_.__value_.__l.__data_ + 240))(&v161);
              v119 = v161.__r_.__value_.__r.__words[0];
              (*(*v18 + 88))(&v160, v18);
              v120 = v18;
              v121 = (*(*v160.__r_.__value_.__l.__data_ + 192))(v160.__r_.__value_.__r.__words[0]);
              (*(*v120 + 88))(&__str, v120);
              v122 = (*(*__str.__r_.__value_.__l.__data_ + 208))(__str.__r_.__value_.__r.__words[0]);
              (*(*v120 + 72))(&v158, v120);
              v123 = (*(*v158.__r_.__value_.__l.__data_ + 192))(v158.__r_.__value_.__r.__words[0]);
              (*(*v120 + 72))(v154, v120);
              v124 = (*(*v154[0] + 208))(v154[0]);
              (*(*v119 + 672))(&v138, v119, v121, v122, v123, v124);
              if (v139)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v139);
              }

              if (v154[1])
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
              }

              if (v158.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v158.__r_.__value_.__l.__size_);
              }

              if (__str.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](__str.__r_.__value_.__l.__size_);
              }

              v118 = v160.__r_.__value_.__l.__size_;
              if (v160.__r_.__value_.__l.__size_)
              {
LABEL_397:
                std::__shared_weak_count::__release_shared[abi:fe200100](v118);
              }

LABEL_398:
              if (v161.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v161.__r_.__value_.__l.__size_);
              }
            }

            if (v162.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v162.__r_.__value_.__l.__size_);
            }

LABEL_415:
            v117 = v135;
            goto LABEL_416;
          }

          if (++v35 > v34)
          {
            v42 = 0;
            v18 = v29;
            goto LABEL_282;
          }
        }
      }

      if ((*(*v165.n128_u64[0] + 40))(v165.n128_u64[0]) != 2)
      {
        v25 = 0;
        v42 = 5;
        v15 = v19;
        goto LABEL_366;
      }

      v156 = 0;
      v157 = 0;
      (*(*v165.n128_u64[0] + 248))(&v156);
      memset(&__str, 0, sizeof(__str));
      memset(&v158, 0, sizeof(v158));
      v154[0] = 0;
      v154[1] = 0;
      v155 = 0;
      SplitNameAndValue(&v162, &__str, &v158);
      v77 = v165.n128_u64[1];
      v76 = v165.n128_u64[0];
      if (v165.n128_u64[1])
      {
        atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      v78 = std::string::find(&__str, 58, 0);
      memset(&v153, 0, sizeof(v153));
      std::string::basic_string(&v153, &__str, 0, v78, &__p);
      (*(*v163 + 80))(&__p);
      v79 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v154, v79);
      if (v146)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v146);
      }

      if (v76 && (*(*v76 + 40))(v76) == 2)
      {
        v151 = 0;
        v152 = 0;
        v130 = v77;
        (*(*v76 + 248))(&v151, v76);
        v80 = (*(*(v151 + *(*v151 - 688)) + 560))(v151 + *(*v151 - 688));
        if (v80)
        {
          v81 = v80;
          v82 = 0;
          v83 = 1;
          while (1)
          {
            v149 = 0;
            v150 = 0;
            (*(*v151 + 656))(&v149);
            v148 = 0uLL;
            (*(*v149 + 128))(&v148);
            if (!v148.n128_u64[0])
            {
              v91 = 15;
              goto LABEL_190;
            }

            __p = 0;
            v146 = 0;
            v147 = 0;
            (*(*v148.n128_u64[0] + 232))(&v142);
            (*(*v142 + 504))(&v144);
            v84 = (*(*v144.n128_u64[0] + 192))(v144.n128_u64[0]);
            std::string::basic_string[abi:fe200100]<0>(&__p, v84);
            if (v144.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v144.n128_u64[1]);
            }

            v85 = v18;
            if (v143)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v143);
            }

            v86 = HIBYTE(v147);
            if (v147 >= 0)
            {
              v87 = HIBYTE(v147);
            }

            else
            {
              v87 = v146;
            }

            v88 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
            if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v88 = v158.__r_.__value_.__l.__size_;
            }

            if (v87 == v88)
            {
              v89 = v147 >= 0 ? &__p : __p;
              v90 = (v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v158 : v158.__r_.__value_.__r.__words[0];
              if (!memcmp(v89, v90, v87))
              {
                break;
              }
            }

            v91 = 0;
            if (v86 < 0)
            {
              goto LABEL_187;
            }

LABEL_188:
            v18 = v85;
LABEL_190:
            if (v148.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v148.n128_u64[1]);
            }

            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v150);
            }

            if ((v91 == 15 || !v91) && ++v83 <= v81)
            {
              continue;
            }

            goto LABEL_303;
          }

          (*(*v151 + 656))(&v144);
          v16 = v144;
          v144 = 0uLL;
          v92 = v165.n128_u64[1];
          v165 = v16;
          if (v92)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v92);
            if (v144.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v144.n128_u64[1]);
            }
          }

          v82 = 1;
          v91 = 13;
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_188;
          }

LABEL_187:
          operator delete(__p);
          goto LABEL_188;
        }

        v82 = 0;
LABEL_303:
        if (v152)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v152);
        }

        if (v82)
        {
          v42 = 0;
        }

        else
        {
          v42 = 5;
        }

        v77 = v130;
      }

      else
      {
        v82 = 0;
        v42 = 5;
      }

      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77);
      }

      if (SHIBYTE(v155) < 0)
      {
        operator delete(v154[0]);
      }

      if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v158.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v157)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v157);
      }

      v25 = 0;
      v15 = v19;
      if (v82)
      {
        goto LABEL_365;
      }

      goto LABEL_366;
    }

    if ((*(*v165.n128_u64[0] + 40))(v165.n128_u64[0]) != 2)
    {
      goto LABEL_430;
    }

    v57 = v18;
    v154[0] = 0;
    v154[1] = 0;
    (*(*v165.n128_u64[0] + 248))(v154);
    v58 = std::string::find(&v161, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v161, 0, v58, &v153);
    (*(*v163 + 80))(&v158);
    v25 = v158.__r_.__value_.__l.__size_;
    v59 = v158.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v158, &v161, v58 + 1, 0xFFFFFFFFFFFFFFFFLL, &v153);
    if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v160.__r_.__value_.__l.__data_);
    }

    v160 = v158;
    v60 = v165;
    if (v165.n128_u64[1])
    {
      atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    *&v158.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v60.n128_u64[0] + 248))(&v158, v60.n128_u64[0]);
    if ((*(*v60.n128_u64[0] + 40))(v60.n128_u64[0]) == 2)
    {
      (*(*v60.n128_u64[0] + 248))(&v153, v60.n128_u64[0]);
      v61 = (*(*(v153.__r_.__value_.__r.__words[0] + *(*v153.__r_.__value_.__l.__data_ - 688)) + 560))(v153.__r_.__value_.__r.__words[0] + *(*v153.__r_.__value_.__l.__data_ - 688));
      if (v153.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v153.__r_.__value_.__l.__size_);
      }

      if (a6)
      {
        *a6 = v61 + 1;
      }

      if (v61)
      {
        (*(*v158.__r_.__value_.__l.__data_ + 656))(&v153);
        v16 = *&v153.__r_.__value_.__l.__data_;
        *&v153.__r_.__value_.__l.__data_ = 0uLL;
        v62 = v165.n128_u64[1];
        v165 = v16;
        v18 = v57;
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v62);
          if (v153.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v153.__r_.__value_.__l.__size_);
          }
        }

        v63 = 0;
        v42 = 4;
        goto LABEL_208;
      }

      if (v136)
      {
        v104 = (a2[1] - *a2) >> 5;
        v18 = v57;
        if (v17 == v104 - 1)
        {
          *&v153.__r_.__value_.__l.__data_ = 0uLL;
          (*(*v59 + 192))(v59);
          XMPUtils::CreateTerminalNode(&v153, v131);
          (*(*v158.__r_.__value_.__l.__data_ + 664))(v158.__r_.__value_.__r.__words[0], &v153, 1);
          v105 = *&v153.__r_.__value_.__l.__data_;
          if (v153.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v153.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v106 = v165.n128_u64[1];
          v165 = v105;
          if (v106)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v106);
          }

          if ((v132 & 1) == 0)
          {
            v107 = v165.n128_u64[1];
            v18 = v165.n128_u64[0];
            if (v165.n128_u64[1])
            {
              atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
            }

            if (v135)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v135);
            }

            v135 = v107;
          }

          if (v153.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v153.__r_.__value_.__l.__size_);
          }

          v63 = 0;
          v42 = 4;
          v132 = 1;
        }

        else
        {
          if (v104 <= v17 + 1)
          {
            goto LABEL_432;
          }

          v111 = *(*a2 + 32 * (v17 + 1) + 24);
          if ((v111 - 3) < 4)
          {
            *&v153.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v59 + 192))(v59);
            (*(*v59 + 208))(v59);
            AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
          }

          if (v111 == 1)
          {
            *&v153.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v59 + 192))(v59);
            (*(*v59 + 208))(v59);
            AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
          }

          if (v111 == 2)
          {
            *&v153.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v59 + 192))(v59);
            (*(*v59 + 208))(v59);
            AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
          }

          v42 = 0;
          v63 = 1;
        }

LABEL_208:
        if (v158.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v158.__r_.__value_.__l.__size_);
        }

        if (v60.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v60.n128_u64[1]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v154[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
        }

        v15 = v19;
        if (v63)
        {
          goto LABEL_365;
        }

        goto LABEL_366;
      }

      v63 = 0;
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v63 = 1;
    }

    v18 = v57;
    goto LABEL_208;
  }

  if (v26 == 1)
  {
    v44 = std::string::find(&v162, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v162, 0, v44, &v153);
    v45 = v18;
    (*(*v163 + 80))(&v158);
    v25 = v158.__r_.__value_.__l.__size_;
    v46 = v158.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v158, &v162, v44 + 1, 0xFFFFFFFFFFFFFFFFLL, &v153);
    if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v160.__r_.__value_.__l.__data_);
    }

    v160 = v158;
    if ((*(*v165.n128_u64[0] + 40))(v165.n128_u64[0]) != 4)
    {
      v42 = 5;
      v15 = v19;
      v18 = v45;
      goto LABEL_363;
    }

    *&v158.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v165.n128_u64[0] + 240))(&v158);
    v15 = v165.n128_u64[1];
    if (v165.n128_u64[1])
    {
      atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    }

    v47 = v158.__r_.__value_.__r.__words[0];
    v48 = (*(*v46 + 192))(v46);
    v49 = (*(*v46 + 208))(v46);
    v50 = &v162;
    if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v162.__r_.__value_.__r.__words[0];
    }

    (*(*v47 + 648))(v154, v47, v48, v49, v50->__r_.__value_.__r.__words + v44 + 1, -1);
    v16 = *v154;
    v154[0] = 0;
    v154[1] = 0;
    v51 = v165.n128_u64[1];
    v165 = v16;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v51);
      if (v154[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
      }
    }

    if (v165.n128_u64[0])
    {
      v42 = 4;
    }

    else
    {
      v42 = 1;
    }

    if (!v165.n128_u64[0] && (v136 & 1) != 0)
    {
      v52 = (a2[1] - *a2) >> 5;
      if (v17 == v52 - 1)
      {
        v154[0] = 0;
        v154[1] = 0;
        (*(*v46 + 192))(v46);
        XMPUtils::CreateTerminalNode(v154, v131);
        v18 = v45;
        (*(*v158.__r_.__value_.__l.__data_ + 656))(v158.__r_.__value_.__r.__words[0], v154);
        v54 = v154[0];
        v53 = v154[1];
        if (v154[1])
        {
          atomic_fetch_add_explicit(v154[1] + 1, 1uLL, memory_order_relaxed);
        }

        v55 = v165.n128_u64[1];
        v165.n128_u64[0] = v54;
        v165.n128_u64[1] = v53;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v55);
        }

        if ((v132 & 1) == 0)
        {
          v56 = v165.n128_u64[1];
          v18 = v165.n128_u64[0];
          if (v165.n128_u64[1])
          {
            atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          if (v135)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v135);
          }

          v135 = v56;
        }

        if (v154[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
        }

        v42 = 0;
        v132 = 1;
        goto LABEL_361;
      }

      if (v52 <= v17 + 1)
      {
        goto LABEL_432;
      }

      v108 = *(*a2 + 32 * (v17 + 1) + 24);
      if ((v108 - 3) < 4)
      {
        v154[0] = 0;
        v154[1] = 0;
        (*(*v46 + 192))(v46);
        (*(*v46 + 208))(v46);
        AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
      }

      if (v108 == 2)
      {
        v154[0] = 0;
        v154[1] = 0;
        (*(*v46 + 192))(v46);
        (*(*v46 + 208))(v46);
        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
      }

      if (v108 == 1)
      {
        v154[0] = 0;
        v154[1] = 0;
        (*(*v46 + 192))(v46);
        (*(*v46 + 208))(v46);
        AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
      }

      v42 = 0;
    }

    v18 = v45;
LABEL_361:
    if (v158.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v158.__r_.__value_.__l.__size_);
    }

LABEL_363:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v42)
      {
        goto LABEL_365;
      }

      goto LABEL_366;
    }

    goto LABEL_364;
  }

  if (v26 == 2)
  {
    v64 = &v162;
    if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v162.__r_.__value_.__r.__words[0];
    }

    if (v64->__r_.__value_.__s.__data_[0] != 63)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 728, "stepStr[0] == '?'");
    }

    std::string::basic_string(&__str, &v162, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v153);
    if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v162.__r_.__value_.__l.__data_);
    }

    v162 = __str;
    v65 = std::string::find(&v162, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v162, 0, v65, &v153);
    v66 = v18;
    (*(*v163 + 80))(&v158);
    v25 = v158.__r_.__value_.__l.__size_;
    v67 = v158.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v158, &v162, v65 + 1, 0xFFFFFFFFFFFFFFFFLL, &v153);
    if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v160.__r_.__value_.__l.__data_);
    }

    v160 = v158;
    v15 = v165.n128_u64[1];
    v68 = v165.n128_u64[0];
    if (v165.n128_u64[1])
    {
      atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    v69 = v68;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
      v69 = v165.n128_u64[0];
    }

    v70 = (*(*v67 + 192))(v67);
    v71 = (*(*v67 + 208))(v67);
    if ((v160.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v160;
    }

    else
    {
      v72 = v160.__r_.__value_.__r.__words[0];
    }

    if ((v160.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v160.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v160.__r_.__value_.__l.__size_;
    }

    (*(*v69 + 128))(&v158, v69, v70, v71, v72, v73);
    v16 = *&v158.__r_.__value_.__l.__data_;
    *&v158.__r_.__value_.__l.__data_ = 0uLL;
    v74 = v165.n128_u64[1];
    v165 = v16;
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v74);
      if (v158.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v158.__r_.__value_.__l.__size_);
      }
    }

    if (v165.n128_u64[0])
    {
      v75 = 0;
    }

    else
    {
      v75 = v136;
    }

    if (v165.n128_u64[0])
    {
      v42 = 4;
    }

    else
    {
      v42 = 1;
    }

    if (v75)
    {
      *&v158.__r_.__value_.__l.__data_ = 0uLL;
      (*(*v67 + 192))(v67);
      (*(*v67 + 208))(v67);
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }

    v18 = v66;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v75)
    {
      goto LABEL_365;
    }

    goto LABEL_366;
  }

  if (v26 != 3)
  {
LABEL_130:
    v15 = v19;
    goto LABEL_365;
  }

  if ((*(*v165.n128_u64[0] + 40))(v165.n128_u64[0]) != 2)
  {
LABEL_430:
    v127 = __cxa_allocate_exception(0x18uLL);
    *v127 = 102;
    v127[1] = "Indexing applied to non-array";
    *(v127 + 16) = 0;
  }

  *&v158.__r_.__value_.__l.__data_ = 0uLL;
  (*(*v165.n128_u64[0] + 248))(&v158);
  v27 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) >= 2 && v162.__r_.__value_.__s.__data_[0] == 91)
    {
      v28 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
      goto LABEL_221;
    }

    goto LABEL_426;
  }

  v28 = v162.__r_.__value_.__l.__size_;
  if (v162.__r_.__value_.__l.__size_ <= 1 || *v162.__r_.__value_.__l.__data_ != 91)
  {
    goto LABEL_426;
  }

LABEL_221:
  v93 = v162.__r_.__value_.__r.__words[0];
  if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = &v162;
  }

  if (v93->__r_.__value_.__s.__data_[v28 - 1] != 93)
  {
LABEL_426:
    __assert_rtn("FindNode", "XMPUtils.cpp", 577, "(stepStr.length() >= 2) && (*(stepStr.begin()) == '[') && (stepStr[stepStr.length() - 1] == ']')");
  }

  v94 = v18;
  if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v162.__r_.__value_.__l.__size_;
  }

  v95 = v27 - 2;
  if (v27 == 2)
  {
    goto LABEL_431;
  }

  v96 = 0;
  v97 = 1;
  do
  {
    if (v27 < v97)
    {
      goto LABEL_432;
    }

    v98 = v93->__r_.__value_.__s.__data_[v97];
    if ((v98 - 58) <= 0xFFFFFFF5)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 579, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
    }

    v96 = v98 + 10 * v96 - 48;
    ++v97;
    --v95;
  }

  while (v95);
  if (!v96)
  {
LABEL_431:
    v128 = __cxa_allocate_exception(0x18uLL);
    *v128 = 102;
    v128[1] = "Array index must be larger than one";
    *(v128 + 16) = 0;
  }

  if (a6)
  {
    *a6 = v96;
  }

  v99 = std::string::find(&v161, 58, 0);
  memset(&__str, 0, sizeof(__str));
  std::string::basic_string(&__str, &v161, 0, v99, &v153);
  (*(*v163 + 80))(v154);
  v100 = v154[0];
  v25 = v154[1];
  MEMORY[0x186602520](&v160, "[]");
  v15 = v165.n128_u64[1];
  v101 = v165.n128_u64[0];
  if (v165.n128_u64[1])
  {
    atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  (*(*v158.__r_.__value_.__l.__data_ + 656))(v154);
  v16 = *v154;
  v154[0] = 0;
  v154[1] = 0;
  v102 = v165.n128_u64[1];
  v165 = v16;
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v102);
    if (v154[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
    }
  }

  if (v165.n128_u64[0])
  {
    v42 = 4;
  }

  else
  {
    v42 = 1;
  }

  if (v165.n128_u64[0] || (v136 & 1) == 0)
  {
    v18 = v94;
    goto LABEL_350;
  }

  v154[0] = 0;
  v154[1] = 0;
  (*(*v101 + 248))(v154, v101);
  if ((*(*(v154[0] + *(*v154[0] - 688)) + 560))(v154[0] + *(*v154[0] - 688)) + 1 < v96)
  {
    v42 = 5;
    goto LABEL_248;
  }

  v103 = (a2[1] - *a2) >> 5;
  if (v17 == v103 - 1)
  {
    *&v153.__r_.__value_.__l.__data_ = 0uLL;
    if (v100)
    {
      (*(*v100 + 192))(v100);
    }

    XMPUtils::CreateTerminalNode(&v153, v131);
    (*(*v154[0] + 664))(v154[0], &v153, v96);
    v112 = *&v153.__r_.__value_.__l.__data_;
    if (v153.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v153.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v113 = v165.n128_u64[1];
    v165 = v112;
    if (v113)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v113);
    }

    if ((v132 & 1) == 0)
    {
      v114 = v165.n128_u64[1];
      v94 = v165.n128_u64[0];
      if (v165.n128_u64[1])
      {
        atomic_fetch_add_explicit((v165.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v135);
      }

      v135 = v114;
    }

    v18 = v94;
    if (v153.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v153.__r_.__value_.__l.__size_);
    }

    v42 = 0;
    v132 = 1;
    goto LABEL_348;
  }

  if (v103 > v17 + 1)
  {
    v109 = *(*a2 + 32 * (v17 + 1) + 24);
    if ((v109 - 3) < 4)
    {
      *&v153.__r_.__value_.__l.__data_ = 0uLL;
      (*(*v100 + 192))(v100);
      (*(*v100 + 208))(v100);
      AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
    }

    if (v109 == 2)
    {
      *&v153.__r_.__value_.__l.__data_ = 0uLL;
      (*(*v100 + 192))(v100);
      (*(*v100 + 208))(v100);
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }

    if (v109 == 1)
    {
      *&v153.__r_.__value_.__l.__data_ = 0uLL;
      (*(*v100 + 192))(v100);
      (*(*v100 + 208))(v100);
      AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
    }

    v42 = 0;
LABEL_248:
    v18 = v94;
LABEL_348:
    if (v154[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v154[1]);
    }

LABEL_350:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v158.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v158.__r_.__value_.__l.__size_);
      if (!v42)
      {
        goto LABEL_365;
      }

      goto LABEL_366;
    }

LABEL_364:
    if (!v42)
    {
      goto LABEL_365;
    }

    goto LABEL_366;
  }

LABEL_432:
  __break(1u);
}

void sub_1860E9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a44);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a50);
  }

  v51 = *(v50 - 240);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v51);
  }

  v52 = *(v50 - 216);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v52);
  }

  v53 = *(v50 - 184);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v53);
  }

  v54 = *(v50 - 152);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v54);
  }

  __cxa_end_catch();
  JUMPOUT(0x1860E9B04);
}

void XMPUtils::FindCnstNode(AdobeXMPCore::INameSpacePrefixMap_v1 *a1, uint64_t *a2, std::string::size_type *a3, _DWORD *a4, int *a5)
{
  v118 = 0;
  v119 = 0;
  AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v118);
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a3, a1);
  v9 = a2[1] - *a2;
  if (v9 <= 0x20)
  {
LABEL_248:
    __break(1u);
    return;
  }

  if ((*(*a2 + 56) & 0x10) != 0)
  {
    if (!XMPUtils::HandleConstAliasStep(a1, a3, a2, 0))
    {
      goto LABEL_238;
    }

    v95 = a4;
    v9 = a2[1] - *a2;
    v10 = 2;
  }

  else
  {
    v95 = a4;
    v10 = 1;
  }

  if (v10 >= v9 >> 5)
  {
    goto LABEL_232;
  }

  v11 = v9 >> 5;
  v96 = v9 >> 5;
  while (*a3)
  {
    memset(&v117, 0, sizeof(v117));
    if (v10 >= (a2[1] - *a2) >> 5)
    {
      goto LABEL_248;
    }

    v12 = *a2 + 32 * v10;
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v117, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      v117.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&v117.__r_.__value_.__l.__data_ = v13;
    }

    memset(&v116, 0, sizeof(v116));
    v14 = *a2;
    v15 = a2[1];
    if (v10 - 1 >= (v15 - *a2) >> 5)
    {
      goto LABEL_248;
    }

    v16 = v14 + 32 * (v10 - 1);
    if (*(v16 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v116, *v16, *(v16 + 8));
      v14 = *a2;
      v15 = a2[1];
    }

    else
    {
      v17 = *v16;
      v116.__r_.__value_.__r.__words[2] = *(v16 + 16);
      *&v116.__r_.__value_.__l.__data_ = v17;
    }

    if (v10 >= (v15 - v14) >> 5)
    {
      goto LABEL_248;
    }

    v18 = *(v14 + 32 * v10 + 24);
    if (v18 <= 3)
    {
      switch(v18)
      {
        case 1:
          v37 = std::string::find(&v117, 58, 0);
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, &v117, 0, v37, &v112);
          (*(*v118 + 80))(&v112);
          size = v112.__r_.__value_.__l.__size_;
          v39 = v112.__r_.__value_.__r.__words[0];
          if ((*(**a3 + 40))() != 4)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 102;
            exception[1] = "Named children only allowed for schemas and structs";
            *(exception + 16) = 0;
          }

          *&v112.__r_.__value_.__l.__data_ = 0uLL;
          (*(**a3 + 240))(&v112);
          v40 = v112.__r_.__value_.__r.__words[0];
          v41 = (*(*v39 + 192))(v39);
          v42 = (*(*v39 + 208))(v39);
          v43 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = v117.__r_.__value_.__r.__words[0];
          }

          (*(*v40 + 648))(v110, v40, v41, v42, v43->__r_.__value_.__r.__words + v37 + 1, -1);
          v44 = *v110;
          v110[0] = 0;
          v110[1] = 0;
          v45 = a3[1];
          *a3 = v44;
          v11 = v96;
          if (!v45)
          {
            goto LABEL_109;
          }

          std::__shared_weak_count::__release_shared[abi:fe200100](v45);
          v46 = v110[1];
          if (!v110[1])
          {
            goto LABEL_109;
          }

          break;
        case 2:
          v53 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v117.__r_.__value_.__r.__words[0];
          }

          if (v53->__r_.__value_.__s.__data_[0] != 63)
          {
            __assert_rtn("FindCnstNode", "XMPUtils.cpp", 954, "stepStr[0]=='?'");
          }

          std::string::basic_string(&__str, &v117, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v112);
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          v117 = __str;
          v54 = std::string::find(&v117, 58, 0);
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, &v117, 0, v54, &v112);
          (*(*v118 + 80))(&v112);
          size = v112.__r_.__value_.__l.__size_;
          v55 = v112.__r_.__value_.__r.__words[0];
          v56 = *a3;
          v57 = (*(*v112.__r_.__value_.__l.__data_ + 192))(v112.__r_.__value_.__r.__words[0]);
          v58 = (*(*v55 + 208))(v55);
          v59 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v117.__r_.__value_.__r.__words[0];
          }

          (*(*v56 + 128))(&v112, v56, v57, v58, v59->__r_.__value_.__r.__words + v54 + 1, -1);
          v60 = *&v112.__r_.__value_.__l.__data_;
          *&v112.__r_.__value_.__l.__data_ = 0uLL;
          v46 = a3[1];
          *a3 = v60;
          v11 = v96;
          if (!v46)
          {
LABEL_111:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_182;
          }

          break;
        case 3:
          if ((*(**a3 + 40))() == 2)
          {
            *&v112.__r_.__value_.__l.__data_ = 0uLL;
            (*(**a3 + 248))(&v112);
            v19 = SHIBYTE(v117.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v20 = v117.__r_.__value_.__l.__size_;
              if (v117.__r_.__value_.__l.__size_ <= 1 || *v117.__r_.__value_.__l.__data_ != 91)
              {
                goto LABEL_242;
              }
            }

            else
            {
              if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 2 || v117.__r_.__value_.__s.__data_[0] != 91)
              {
                goto LABEL_242;
              }

              v20 = SHIBYTE(v117.__r_.__value_.__r.__words[2]);
            }

            v78 = v117.__r_.__value_.__r.__words[0];
            if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = &v117;
            }

            if (v78->__r_.__value_.__s.__data_[v20 - 1] == 93)
            {
              if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v19 = v117.__r_.__value_.__l.__size_;
              }

              v79 = v19 - 2;
              if (v19 == 2)
              {
                goto LABEL_245;
              }

              v80 = 0;
              v81 = 1;
              do
              {
                if (v19 < v81)
                {
                  goto LABEL_248;
                }

                v82 = v78->__r_.__value_.__s.__data_[v81];
                if ((v82 - 58) <= 0xFFFFFFF5)
                {
                  __assert_rtn("FindCnstNode", "XMPUtils.cpp", 918, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
                }

                v80 = v82 + 10 * v80 - 48;
                ++v81;
                --v79;
              }

              while (v79);
              if (v80 < 1)
              {
LABEL_245:
                v90 = __cxa_allocate_exception(0x18uLL);
                *v90 = 102;
                v90[1] = "Array index must be larger than one";
                *(v90 + 16) = 0;
              }

              v83 = std::string::find(&v116, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v116, 0, v83, v110);
              (*(*v118 + 80))(v110);
              size = v110[1];
              (*(*v112.__r_.__value_.__l.__data_ + 656))(v110);
              v84 = *v110;
              v110[0] = 0;
              v110[1] = 0;
              v85 = a3[1];
              *a3 = v84;
              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v85);
                if (v110[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
                }
              }

              if (a5)
              {
                *a5 = v80;
              }

              goto LABEL_178;
            }

LABEL_242:
            __assert_rtn("FindCnstNode", "XMPUtils.cpp", 916, "(stepStr.length() >= 2) && (*( stepStr.begin()) == '[') && (stepStr[stepStr.length()-1] == ']')");
          }

LABEL_244:
          v89 = __cxa_allocate_exception(0x18uLL);
          *v89 = 102;
          v89[1] = "Indexes allowed for arrays only";
          *(v89 + 16) = 0;
        default:
          goto LABEL_184;
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v46);
LABEL_109:
      if (v112.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
      }

      goto LABEL_111;
    }

    if (v18 == 4)
    {
      if ((*(**a3 + 40))() == 2)
      {
        *&v112.__r_.__value_.__l.__data_ = 0uLL;
        (*(**a3 + 248))(&v112);
        v47 = std::string::find(&v116, 58, 0);
        memset(&__str, 0, sizeof(__str));
        std::string::basic_string(&__str, &v116, 0, v47, v110);
        (*(*v118 + 80))(v110);
        size = v110[1];
        v49 = *a3;
        v48 = a3[1];
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v49 && (*(*v49 + 40))(v49) == 2)
        {
          (*(*v49 + 248))(v110, v49);
          v50 = (*(*(v110[0] + *(*v110[0] - 688)) + 560))(v110[0] + *(*v110[0] - 688));
          if (v110[1])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
          }

          if (!v50)
          {
            v92 = __cxa_allocate_exception(0x18uLL);
            *v92 = 102;
            v92[1] = "Array index overflow";
            *(v92 + 16) = 0;
          }

          (*(*v112.__r_.__value_.__l.__data_ + 656))(v110);
          v51 = *v110;
          v110[0] = 0;
          v110[1] = 0;
          v52 = a3[1];
          *a3 = v51;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v52);
            if (v110[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
            }
          }

          if (a5)
          {
            *a5 = v50;
          }
        }

        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v48);
        }

LABEL_178:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v112.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
        }

LABEL_182:
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](size);
        }

        goto LABEL_184;
      }

      goto LABEL_244;
    }

    if (v18 == 5)
    {
      if ((*(**a3 + 40))() != 2)
      {
        goto LABEL_244;
      }

      v113 = 0;
      v114 = 0;
      (*(**a3 + 248))(&v113);
      memset(&__str, 0, sizeof(__str));
      memset(&v112, 0, sizeof(v112));
      v110[0] = 0;
      v110[1] = 0;
      v111 = 0;
      SplitNameAndValue(&v117, &__str, &v112);
      v62 = *a3;
      v61 = a3[1];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = std::string::find(&__str, 58, 0);
      memset(&v109, 0, sizeof(v109));
      std::string::basic_string(&v109, &__str, 0, v63, &__p);
      (*(*v118 + 80))(&__p);
      v64 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v110, v64);
      if (v102)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v102);
      }

      if (v62 && (*(*v62 + 40))(v62) == 2)
      {
        v107 = 0;
        v108 = 0;
        v94 = v61;
        (*(*v62 + 248))(&v107, v62);
        v65 = (*(*(v107 + *(*v107 - 688)) + 560))(v107 + *(*v107 - 688));
        if (v65)
        {
          v66 = v65;
          v67 = 0;
          v68 = 1;
          while (1)
          {
            v105 = 0;
            v106 = 0;
            (*(*v107 + 656))(&v105);
            v104 = 0uLL;
            (*(*v105 + 128))(&v104);
            if (!v104)
            {
              v75 = 11;
              goto LABEL_143;
            }

            __p = 0;
            v102 = 0;
            v103 = 0;
            (*(*v104 + 232))(&v98);
            (*(*v98 + 504))(&v100);
            v69 = (*(*v100 + 192))(v100);
            std::string::basic_string[abi:fe200100]<0>(&__p, v69);
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }

            if (v99)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v99);
            }

            v70 = HIBYTE(v103);
            if (v103 >= 0)
            {
              v71 = HIBYTE(v103);
            }

            else
            {
              v71 = v102;
            }

            v72 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v72 = v112.__r_.__value_.__l.__size_;
            }

            if (v71 == v72)
            {
              v73 = v103 >= 0 ? &__p : __p;
              v74 = (v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v112 : v112.__r_.__value_.__r.__words[0];
              if (!memcmp(v73, v74, v71))
              {
                break;
              }
            }

            v75 = 0;
            if (v70 < 0)
            {
              goto LABEL_141;
            }

LABEL_143:
            if (*(&v104 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
            }

            if (v106)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v106);
            }

            if ((v75 == 11 || !v75) && ++v68 <= v66)
            {
              continue;
            }

            goto LABEL_194;
          }

          if (a5)
          {
            *a5 = v68;
          }

          (*(*v107 + 656))(&v100);
          v76 = v100;
          v100 = 0uLL;
          v77 = a3[1];
          *a3 = v76;
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v77);
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }
          }

          v67 = 1;
          v75 = 9;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_143;
          }

LABEL_141:
          operator delete(__p);
          goto LABEL_143;
        }

        v67 = 0;
LABEL_194:
        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v108);
        }

        v11 = v96;
        v61 = v94;
      }

      else
      {
        v67 = 0;
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v61);
      }

      if (SHIBYTE(v111) < 0)
      {
        operator delete(v110[0]);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v114);
      }

      if ((v67 & 1) == 0)
      {
        v34 = 1;
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    if (v18 != 6)
    {
      goto LABEL_184;
    }

    memset(&__str, 0, sizeof(__str));
    memset(&v112, 0, sizeof(v112));
    v110[0] = 0;
    v110[1] = 0;
    v111 = 0;
    SplitNameAndValue(&v117, &__str, &v112);
    v22 = *a3;
    v21 = a3[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = std::string::find(&__str, 58, 0);
    memset(&v109, 0, sizeof(v109));
    std::string::basic_string(&v109, &__str, 0, v23, &__p);
    (*(*v118 + 80))(&__p);
    v24 = (*(*__p + 192))(__p);
    MEMORY[0x186602520](v110, v24);
    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v102);
    }

    if (!v22 || (*(*v22 + 40))(v22) != 2)
    {
      v34 = 1;
      goto LABEL_218;
    }

    v113 = 0;
    v114 = 0;
    (*(*v22 + 248))(&v113, v22);
    v25 = (*(*(v113 + *(*v113 - 688)) + 560))(v113 + *(*v113 - 688));
    if (!v25)
    {
      v86 = 0;
      v34 = 0;
      goto LABEL_214;
    }

    v26 = v25;
    v93 = 0;
    v27 = 1;
    while (1)
    {
      v107 = 0;
      v108 = 0;
      (*(*v113 + 656))(&v107);
      if ((*(*v107 + 40))(v107) != 4)
      {
        v34 = 1;
        goto LABEL_66;
      }

      v105 = 0;
      v106 = 0;
      (*(*v107 + 240))(&__p);
      (*(*__p + 648))(&v105);
      if (v102)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v102);
      }

      if (v105 && (*(*v105 + 40))(v105) == 1)
      {
        __p = 0;
        v102 = 0;
        v103 = 0;
        (*(*v105 + 232))(&v100);
        (*(*v100 + 504))(&v104);
        v28 = (*(*v104 + 192))(v104);
        std::string::basic_string[abi:fe200100]<0>(&__p, v28);
        if (*(&v104 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
        }

        if (*(&v100 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
        }

        v29 = HIBYTE(v103);
        if (v103 >= 0)
        {
          v30 = HIBYTE(v103);
        }

        else
        {
          v30 = v102;
        }

        v31 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
        if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v112.__r_.__value_.__l.__size_;
        }

        if (v30 == v31 && (v103 >= 0 ? (p_p = &__p) : (p_p = __p), (v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v33 = &v112) : (v33 = v112.__r_.__value_.__r.__words[0]), !memcmp(p_p, v33, v30)))
        {
          if (a5)
          {
            *a5 = v27;
          }

          (*(*v113 + 656))(&v104);
          v35 = v104;
          v104 = 0uLL;
          v36 = a3[1];
          *a3 = v35;
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v36);
            if (*(&v104 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
            }
          }

          v93 = 1;
          v34 = 12;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v34 = 0;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_64;
          }
        }

        operator delete(__p);
      }

      else
      {
        v34 = 14;
      }

LABEL_64:
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v106);
      }

LABEL_66:
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v108);
      }

      if (v34 && v34 != 14)
      {
        break;
      }

      if (++v27 > v26)
      {
        v34 = 0;
        v11 = v96;
        goto LABEL_213;
      }
    }

    v11 = v96;
    if (v34 == 12)
    {
      v34 = 0;
    }

LABEL_213:
    v86 = v93;
LABEL_214:
    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v114);
    }

    if (!v34)
    {
      v34 = (v86 & 1) == 0;
    }

LABEL_218:
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (SHIBYTE(v111) < 0)
    {
      operator delete(v110[0]);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v34)
      {
        goto LABEL_185;
      }

LABEL_184:
      v34 = 0;
      goto LABEL_185;
    }

    if (!v34)
    {
      goto LABEL_184;
    }

LABEL_185:
    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (!v34)
    {
      if (++v10 == v11)
      {
LABEL_232:
        v87 = *a3;
        if (*a3 && v95)
        {
          v88 = a3[1];
          v117.__r_.__value_.__r.__words[0] = v87;
          v117.__r_.__value_.__l.__size_ = v88;
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v95 = XMPUtils::GetIXMPOptions(&v117);
          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v88);
          }
        }

        break;
      }

      continue;
    }

    break;
  }

LABEL_238:
  if (v119)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v119);
  }
}

void sub_1860EB148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a30);
  }

  v52 = *(v50 - 192);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v52);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v49);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v50 - 161) < 0)
  {
    operator delete(*(v50 - 184));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  v53 = *(v50 - 96);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v53);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::GetIXMPOptions(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  if ((*(*v2 + 184))(v2))
  {
    (*(**a1 + 128))(&v32);
    v3 = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if (v3)
    {
      v4 = 80;
    }

    else
    {
      v4 = 16;
    }

    (*(**a1 + 128))(&v32);
    v5 = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if (v5)
    {
      LODWORD(v6) = v4 | 0x80;
    }

    else
    {
      LODWORD(v6) = v4;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(**a1 + 88))(&__p);
  v7 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(&v32, v7);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  (*(**a1 + 72))(&v35);
  v8 = (*(*v35 + 192))(v35);
  std::string::basic_string[abi:fe200100]<0>(&__p, v8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
  }

  (*(**a1 + 56))(&v35);
  v9 = v36;
  if ((*(**a1 + 168))())
  {
    v6 = v6 | 0x20;
  }

  else
  {
    v6 = v6;
  }

  v10 = (*(**a1 + 40))();
  v11 = *a1;
  if (v10 != 1)
  {
    v15 = (*(*v11 + 40))(v11);
    v16 = *a1;
    if (v15 != 2)
    {
      if ((*(*v16 + 40))(v16) == 4)
      {
        (*(**a1 + 56))(&v35);
        v21 = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
        }

        if (v21)
        {
          v6 = v6 | 0x100;
        }
      }

      goto LABEL_28;
    }

    (*(*v16 + 248))(&v35);
    v18 = v35;
    v17 = v36;
    v19 = (*(*v35 + 640))(v35);
    v20 = v6 | 0x200;
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        v20 = v6 | 0x600;
      }

      else
      {
        if (v19 != 4)
        {
          v28 = 0;
          v6 = v6 | 0x200;
          if (v17)
          {
LABEL_62:
            std::__shared_weak_count::__release_shared[abi:fe200100](v17);
          }

LABEL_63:
          if ((v28 & 1) == 0)
          {
            v6 = 0;
          }

          goto LABEL_28;
        }

        v20 = v6 | 0xE00;
      }
    }

    v22 = (*(*v18 + 640))(v18) == 4;
    if ((*(*(v18 + *(*v18 - 688)) + 560))(v18 + *(*v18 - 688)))
    {
      v23 = 1;
      while (1)
      {
        (*(*v18 + 656))(&v35, v18, v23);
        v25 = v35;
        v24 = v36;
        if ((*(*v35 + 40))(v35) != 1)
        {
          break;
        }

        (*(*v25 + 128))(&v35, v25, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
        v26 = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (!v26)
          {
            break;
          }
        }

        else if (!v35)
        {
          break;
        }

        v27 = 0;
        if (v24)
        {
          goto LABEL_55;
        }

LABEL_56:
        if ((v27 & 1) == 0 && ++v23 <= (*(*(v18 + *(*v18 - 688)) + 560))(v18 + *(*v18 - 688)))
        {
          continue;
        }

        goto LABEL_58;
      }

      v22 = 0;
      v27 = 1;
      if (!v24)
      {
        goto LABEL_56;
      }

LABEL_55:
      std::__shared_weak_count::__release_shared[abi:fe200100](v24);
      goto LABEL_56;
    }

LABEL_58:
    if (v22)
    {
      v6 = v20 | 0x1000;
    }

    else
    {
      v6 = v20;
    }

    v28 = 1;
    if (v17)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  (*(*v11 + 232))(&v35);
  v12 = v36;
  v13 = (*(*v35 + 520))(v35);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v13)
  {
    v6 = v6 | 2;
  }

  else
  {
    v6 = v6;
  }

LABEL_28:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  return v6;
}

void sub_1860EBB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t XMPUtils::GetNodeChildCount(void *a1)
{
  v2 = (*(**a1 + 40))(*a1);
  v3 = *a1;
  if (v2 == 2)
  {
    (*(*v3 + 248))(v7);
  }

  else
  {
    if ((*(*v3 + 40))(v3) != 4)
    {
      return 0;
    }

    (*(**a1 + 240))(v7);
  }

  v4 = v7[1];
  v5 = (*(*(v7[0] + *(*v7[0] - 688)) + 560))(v7[0] + *(*v7[0] - 688));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v5;
}

void XMPUtils::FindChildNode(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  v11 = a1[1];
  v30 = *a1;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(&v30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if ((IXMPOptions & 0x300) == 0x200)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Named children not allowed for arrays";
    *(exception + 16) = 0;
  }

  v28 = 0;
  v29 = 0;
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&v30, &v28);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  v14 = v28;
  if (v28)
  {
    v24 = a4;
    v15 = v29;
    v16 = 1;
    while (1)
    {
      (*(*v14 + 48))(&v30, v14);
      v18 = v30;
      v17 = v31;
      if (v30)
      {
        (*(*v30 + 72))(&v30, v30);
        v19 = (*(*v30 + 192))(v30);
        if (!strcmp(v19, a2))
        {
          (*(*v18 + 88))(&v26, v18);
          v21 = (*(*v26 + 192))(v26);
          v20 = strcmp(v21, a3) == 0;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          }
        }

        else
        {
          v20 = 0;
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v31);
        }

        if (v20)
        {
          break;
        }
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
      }

      (*(*v14 + 56))(&v30, v14);
      v14 = v30;
      v22 = v31;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }

      ++v16;
      v15 = v22;
      if (!v14)
      {
        v29 = v22;
        a4 = v24;
        goto LABEL_26;
      }
    }

    v29 = v15;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a6 = v18;
    a6[1] = v17;
    if (a5)
    {
      *a5 = v16;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    }
  }

  else
  {
LABEL_26:
    if (a4)
    {
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }
}

void sub_1860EC11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v18 = *(v16 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::ComposeArrayItemPath(char *a1, char *a2, int a3, std::string *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  if (!a4)
  {
    XMPUtils::ComposeArrayItemPath();
  }

  memset(v10, 0, sizeof(v10));
  ExpandXPath(a1, a2, v10);
  if (a3 <= -2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Array index out of bounds";
    *(exception + 16) = 0;
  }

  v7 = strlen(a2);
  memset(&v9, 0, sizeof(v9));
  std::string::reserve(&v9, v7 + 34);
  MEMORY[0x186602520](&v9, a2);
  if (a3 == -1)
  {
    std::string::append(&v9, "[last()]");
  }

  else
  {
    *__str = 0u;
    v12 = 0u;
    snprintf(__str, 0x20uLL, "[%d]", a3);
    std::string::append(&v9, __str);
  }

  std::string::operator=(a4, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  *__str = v10;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](__str);
}

void sub_1860EC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a20 = &a17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a20);
  _Unwind_Resume(a1);
}

void XMPUtils::ComposeStructFieldPath(char *a1, char *a2, char *a3, _BYTE *a4, std::string *a5)
{
  if (!a1 || !a3)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a4 || !*a4)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  if (!a5)
  {
    XMPUtils::ComposeStructFieldPath();
  }

  memset(v19, 0, sizeof(v19));
  ExpandXPath(a1, a2, v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ExpandXPath(a3, a4, &v16);
  if (v17 - v16 != 64)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "The fieldName must be simple";
    *(exception + 16) = 0;
  }

  v9 = strlen(a2);
  v10 = *(v16 + 55);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = v16[5];
  }

  memset(&__str, 0, sizeof(__str));
  std::string::reserve(&__str, v9 + v10 + 1);
  MEMORY[0x186602520](&__str, a2);
  std::string::push_back(&__str, 47);
  if ((v17 - v16) <= 0x20)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v16 + 55);
    if (v11 >= 0)
    {
      v12 = (v16 + 4);
    }

    else
    {
      v12 = v16[4];
    }

    if (v11 >= 0)
    {
      v13 = *(v16 + 55);
    }

    else
    {
      v13 = v16[5];
    }

    std::string::append(&__str, v12, v13);
    std::string::operator=(a5, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &v16;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    v16 = v19;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  }
}

void sub_1860EC50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void XMPUtils::ComposeQualifierPath(char *a1, char *a2, char *a3, _BYTE *a4, std::string *a5)
{
  if (!a1 || !a3)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a2 || !*a2)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a4 || !*a4)
  {
    XMPUtils::ComposeQualifierPath();
  }

  if (!a5)
  {
    XMPUtils::ComposeQualifierPath();
  }

  memset(v19, 0, sizeof(v19));
  ExpandXPath(a1, a2, v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ExpandXPath(a3, a4, &v16);
  if (v17 - v16 != 64)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "The qualifier name must be simple";
    *(exception + 16) = 0;
  }

  v9 = strlen(a2);
  v10 = *(v16 + 55);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = v16[5];
  }

  memset(&__str, 0, sizeof(__str));
  std::string::reserve(&__str, v9 + v10 + 2);
  MEMORY[0x186602520](&__str, a2);
  std::string::append(&__str, "/?");
  if ((v17 - v16) <= 0x20)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v16 + 55);
    if (v11 >= 0)
    {
      v12 = (v16 + 4);
    }

    else
    {
      v12 = v16[4];
    }

    if (v11 >= 0)
    {
      v13 = *(v16 + 55);
    }

    else
    {
      v13 = v16[5];
    }

    std::string::append(&__str, v12, v13);
    std::string::operator=(a5, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &v16;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__str);
    v16 = v19;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  }
}

void sub_1860EC6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void XMPUtils::ConvertFromBool(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    JUMPOUT(0x186602520);
  }

  XMPUtils::ConvertFromBool();
}

uint64_t XMPUtils::ConvertFromInt(uint64_t a1, const char *a2, std::string *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || !this)
  {
    XMPUtils::ConvertFromInt();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "%d";
  }

  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, v6, a1);
  return MEMORY[0x186602520](this, __str);
}

uint64_t XMPUtils::ConvertFromInt64(uint64_t a1, const char *a2, std::string *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2 || !this)
  {
    XMPUtils::ConvertFromInt64();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "%lld";
  }

  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, v6, a1);
  return MEMORY[0x186602520](this, __str);
}

uint64_t XMPUtils::ConvertFromFloat(const char *a1, std::string *this, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1 || !this)
  {
    XMPUtils::ConvertFromFloat();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (*a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "%f";
  }

  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x40uLL, v6, *&a3);
  return MEMORY[0x186602520](this, __str);
}

void XMPUtils::ConvertFromDate(__int128 *a1, std::string *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    XMPUtils::ConvertFromDate();
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  v3 = a1[1];
  v9 = *a1;
  *v10 = v3;
  *&v10[16] = *(a1 + 4);
  VerifyDateTimeFlags(&v9);
  v4 = DWORD1(v9);
  if (DWORD1(v9))
  {
    if (SDWORD1(v9) < 1)
    {
      v4 = 1;
    }

    else
    {
      if (DWORD1(v9) < 0xD)
      {
        goto LABEL_11;
      }

      v4 = 12;
    }
  }

  else
  {
    v4 = 1;
    if (!DWORD2(v9) && !v10[9])
    {
      v4 = 0;
      goto LABEL_11;
    }
  }

  DWORD1(v9) = v4;
LABEL_11:
  if (!DWORD2(v9))
  {
    if (!v10[9])
    {
      if (v4)
      {
        snprintf(__str, 0x64uLL, "%.4d-%02d");
      }

      else
      {
        snprintf(__str, 0x64uLL, "%.4d");
      }

      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (SDWORD2(v9) < 1)
  {
LABEL_16:
    v5 = 1;
    goto LABEL_17;
  }

  if (DWORD2(v9) >= 0x20)
  {
    v5 = 31;
LABEL_17:
    DWORD2(v9) = v5;
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Invalid partial date";
    *(exception + 16) = 0;
  }

  if (v10[9])
  {
    FormatFullDateTime(&v9, __str);
  }

  else
  {
    snprintf(__str, 0x64uLL, "%.4d-%02d-%02d");
  }

LABEL_25:
  MEMORY[0x186602520](a2, __str);
  if (!v10[10])
  {
    return;
  }

  if (*&v10[12] > 0x17u)
  {
    goto LABEL_38;
  }

  if (*&v10[16] > 0x3Bu)
  {
    goto LABEL_38;
  }

  v6 = v10[11];
  if (v10[11] - 2 < 0xFD)
  {
    goto LABEL_38;
  }

  if (!v10[11])
  {
    if (!*&v10[12])
    {
      std::string::push_back(a2, 90);
      return;
    }

LABEL_38:
    v8 = __cxa_allocate_exception(0x18uLL);
    *v8 = 4;
    v8[1] = "Invalid time zone values";
    *(v8 + 16) = 0;
  }

  snprintf(__str, 0x64uLL, "+%02d:%02d", *&v10[12], *&v10[16]);
  if (v6 < 0)
  {
    __str[0] = 45;
  }

  std::string::append(a2, __str);
}

uint64_t VerifyDateTimeFlags(uint64_t result)
{
  if (*result || *(result + 4) || *(result + 8))
  {
    *(result + 24) = 1;
  }

  if (*(result + 12) || *(result + 16) || *(result + 20) || *(result + 36))
  {
    *(result + 25) = 1;
  }

  if (*(result + 27) || *(result + 28) || *(result + 32))
  {
    *(result + 26) = 1;
LABEL_14:
    *(result + 25) = 1;
    return result;
  }

  if (*(result + 26))
  {
    goto LABEL_14;
  }

  return result;
}

size_t FormatFullDateTime(int *a1, char *a2)
{
  AdjustTimeOverflow(a1);
  v4 = a1[9];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (!v4)
  {
    return snprintf(a2, 0x64uLL, "%.4d-%02d-%02dT%02d:%02d:%02d", v5, v6, v7, v8, a1[4], a1[5]);
  }

  snprintf(a2, 0x64uLL, "%.4d-%02d-%02dT%02d:%02d:%02d.%09d", v5, v6, v7, v8, a1[4], a1[5], v4);
  a2[99] = 0;
  result = strlen(a2);
  for (i = &a2[result]; ; *i = 0)
  {
    v11 = *--i;
    if (v11 != 48)
    {
      break;
    }
  }

  return result;
}

uint64_t XMPUtils::ConvertToBool(XMPUtils *this, const char *a2)
{
  if (!this || !*this)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    exception[1] = "Empty convert-from string";
    *(exception + 16) = 0;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::string::basic_string[abi:fe200100]<0>(&v21, this);
  v2 = HIBYTE(v23);
  v3 = v21;
  v4 = v22;
  if (v23 >= 0)
  {
    v5 = HIBYTE(v23);
  }

  else
  {
    v5 = v22;
  }

  v6 = v21;
  if (v5)
  {
    if (v23 >= 0)
    {
      v7 = &v21;
    }

    else
    {
      v7 = v21;
    }

    do
    {
      v8 = *v7;
      if ((v8 - 65) <= 0x19)
      {
        *v7 = v8 | 0x20;
        v2 = HIBYTE(v23);
        v3 = v21;
        v4 = v22;
        v6 = v21;
      }

      ++v7;
      v9 = (v2 & 0x80u) != 0;
      if ((v2 & 0x80u) == 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v3;
      }

      if ((v2 & 0x80u) == 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = v4;
      }
    }

    while (v7 != v10 + v11);
  }

  else
  {
    v9 = SHIBYTE(v23) >> 31;
  }

  v12 = v6;
  if (!v9)
  {
    if (v2 != 1)
    {
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      if (v21 != 1702195828)
      {
        goto LABEL_67;
      }

      return 1;
    }

    goto LABEL_31;
  }

  if (v4 == 1)
  {
    v12 = *v3;
LABEL_31:
    if (v12 == 116)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v4 != 4)
  {
    goto LABEL_36;
  }

  if (*v3 == 1702195828)
  {
LABEL_32:
    v13 = 1;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_48;
  }

LABEL_34:
  if (!v9)
  {
    if (v2 != 1)
    {
      goto LABEL_50;
    }

    if (v6 != 49)
    {
      goto LABEL_45;
    }

    return 1;
  }

  if (v4 == 1)
  {
    v18 = *v3;
    if (v18 == 49)
    {
      goto LABEL_32;
    }

    if (v9)
    {
      v6 = *v3;
      if (v18 != 102)
      {
LABEL_46:
        if (v6 == 48)
        {
          goto LABEL_47;
        }

LABEL_67:
        v20 = __cxa_allocate_exception(0x18uLL);
        *v20 = 4;
        v20[1] = "Invalid Boolean string";
        *(v20 + 16) = 0;
      }

      goto LABEL_47;
    }

    if (v2 == 1)
    {
      goto LABEL_45;
    }

LABEL_50:
    if (v2 != 5)
    {
      goto LABEL_67;
    }

    if (v21 != 1936482662 || BYTE4(v21) != 101)
    {
      goto LABEL_67;
    }

    return 0;
  }

LABEL_36:
  if (v4 != 5)
  {
    goto LABEL_67;
  }

  if (*v3 != 1936482662 || v3[4] != 101)
  {
    if (v2 == 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_67;
    }

LABEL_45:
    if (v6 != 102)
    {
      goto LABEL_46;
    }

    return 0;
  }

LABEL_47:
  v13 = 0;
  if (v9)
  {
LABEL_48:
    operator delete(v3);
  }

  return v13;
}

void sub_1860ECF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::ConvertToInt64(XMPUtils *this, const char *a2)
{
  if (!this || (v2 = *this, !*this))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    v6 = "Empty convert-from string";
    goto LABEL_10;
  }

  v8 = 0;
  v7 = 0;
  v3 = "%lld%c";
  if (v2 == 48 && *(this + 1) == 120)
  {
    v3 = "%llx%c";
  }

  if (sscanf(this, v3, &v7, &v8) != 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v6 = "Invalid integer string";
LABEL_10:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v7;
}

uint64_t XMPUtils::ConvertToDate(char *__s, uint64_t a2)
{
  if (!__s || !*__s)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    v42 = "Empty convert-from string";
    goto LABEL_102;
  }

  v43 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v4 = strlen(__s);
  v5 = 0;
  if (*__s == 84)
  {
    goto LABEL_4;
  }

  if (v4 >= 2 && (__s[1] == 58 || v4 != 2 && __s[2] == 58))
  {
LABEL_5:
    *(a2 + 25) = 1;
    v6 = GatherInt(__s, &v43, "Invalid hour in date string");
    v7 = v43;
    if (__s[v43] != 58)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after hour";
      goto LABEL_102;
    }

    if (v6 >= 23)
    {
      v8 = 23;
    }

    else
    {
      v8 = v6;
    }

    *(a2 + 12) = v8;
    v43 = v7 + 1;
    result = GatherInt(__s, &v43, "Invalid minute in date string");
    v10 = v43;
    v11 = __s[v43];
    if (((v11 - 43) > 0x2F || ((1 << (v11 - 43)) & 0x800000008005) == 0) && v11 != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after minute";
      goto LABEL_102;
    }

    if (result >= 59)
    {
      v14 = 59;
    }

    else
    {
      v14 = result;
    }

    *(a2 + 16) = v14;
    v15 = __s[v10];
    if (v15 == 58)
    {
      v43 = v10 + 1;
      result = GatherInt(__s, &v43, "Invalid whole seconds in date string");
      v10 = v43;
      v16 = __s[v43] - 43;
      if ((v16 > 0x2F || ((1 << v16) & 0x80000000000DLL) == 0) && __s[v43])
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v42 = "Invalid date string, after whole seconds";
        goto LABEL_102;
      }

      v17 = result >= 59 ? 59 : result;
      *(a2 + 20) = v17;
      v15 = __s[v10];
      if (v15 == 46)
      {
        v18 = v10 + 1;
        v43 = v10 + 1;
        result = GatherInt(__s, &v43, "Invalid fractional seconds in date string");
        v19 = v43;
        v20 = __s[v43] - 43;
        if ((v20 > 0x2F || ((1 << v20) & 0x800000000005) == 0) && __s[v43])
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Invalid date string, after fractional second";
          goto LABEL_102;
        }

        v21 = v43 - v18;
        if (v43 - v18 < 0xA)
        {
          if (v21 != 9)
          {
            v29.i64[1] = 0x100000001;
            v29.i64[0] = result | 0x100000000;
            v30 = vdupq_n_s64(v10 - v43 + 9);
            v31 = 4;
            v32.i64[0] = 0xA0000000ALL;
            v32.i64[1] = 0xA0000000ALL;
            do
            {
              v33 = v29;
              v29 = vmulq_s32(v29, v32);
              v31 -= 4;
            }

            while (((v10 - v43 + 13) & 0xFFFFFFFFFFFFFFFCLL) + v31 != 4);
            v34 = vdupq_n_s64(-v31);
            v35 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v34, xmmword_186205EC0), v30), vcgtq_u64(vorrq_s8(v34, xmmword_186205EB0), v30)), v33, v29);
            *v35.i8 = vmul_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
            result = (v35.i32[0] * v35.i32[1]);
          }

          if (result >= 1000000000)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 4;
            v42 = "Fractional second is out of range";
            goto LABEL_102;
          }
        }

        else
        {
          do
          {
            result = (result / 10);
            --v21;
          }

          while (v21 > 9);
        }

        *(a2 + 36) = result;
        v15 = __s[v19];
        v10 = v19;
      }
    }

    if (!v15)
    {
      return result;
    }

    v36 = 1;
    *(a2 + 26) = 1;
    v37 = __s[v10];
    if (v37 != 43)
    {
      if (v37 != 45)
      {
        if (v37 != 90)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Time zone must begin with 'Z', '+', or '-'";
          goto LABEL_102;
        }

        v38 = v10 + 1;
        goto LABEL_86;
      }

      v36 = -1;
    }

    *(a2 + 27) = v36;
    v43 = v10 + 1;
    v39 = GatherInt(__s, &v43, "Invalid time zone hour in date string");
    v40 = v43;
    if (__s[v43] != 58)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after time zone hour";
      goto LABEL_102;
    }

    if (v39 >= 24)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Time zone hour is out of range";
      goto LABEL_102;
    }

    *(a2 + 28) = v39;
    v43 = v40 + 1;
    result = GatherInt(__s, &v43, "Invalid time zone minute in date string");
    if (result >= 60)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Time zone minute is out of range";
      goto LABEL_102;
    }

    *(a2 + 32) = result;
    v38 = v43;
LABEL_86:
    if (!__s[v38])
    {
      return result;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v42 = "Invalid date string, extra chars at end";
LABEL_102:
    exception[1] = v42;
    *(exception + 16) = 0;
  }

  *(a2 + 24) = 1;
  if (*__s == 45)
  {
    v43 = 1;
  }

  result = GatherInt(__s, &v43, "Invalid year in date string");
  v22 = v43;
  if (__s[v43] && __s[v43] != 45)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v42 = "Invalid date string, after year";
    goto LABEL_102;
  }

  if (*__s == 45)
  {
    v23 = -result;
  }

  else
  {
    v23 = result;
  }

  *a2 = v23;
  if (__s[v22])
  {
    v43 = v22 + 1;
    result = GatherInt(__s, &v43, "Invalid month in date string");
    v24 = v43;
    if (__s[v43] && __s[v43] != 45)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      v42 = "Invalid date string, after month";
      goto LABEL_102;
    }

    if (result <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = result;
    }

    if (*a2)
    {
      v26 = v25;
    }

    else
    {
      v26 = result;
    }

    if (v26 >= 12)
    {
      v26 = 12;
    }

    *(a2 + 4) = v26;
    if (__s[v24])
    {
      v43 = v24 + 1;
      result = GatherInt(__s, &v43, "Invalid day in date string");
      v5 = v43;
      if (__s[v43] && __s[v43] != 84)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 4;
        v42 = "Invalid date string, after day";
        goto LABEL_102;
      }

      v27 = result >= 31 ? 31 : result;
      *(a2 + 8) = v27;
      if (__s[v5])
      {
        v28 = *(a2 + 4);
        if (*a2 || v28 | result)
        {
          if (v28 <= 0)
          {
            *(a2 + 4) = 1;
          }

          if (result <= 0)
          {
            *(a2 + 8) = 1;
          }
        }

        if (__s[v5] != 84)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 4;
          v42 = "Invalid date string, missing 'T' after date";
          goto LABEL_102;
        }

LABEL_4:
        v43 = v5 + 1;
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t GatherInt(const char *a1, unint64_t *a2, const char *a3)
{
  v3 = *a2;
  v4 = a1[*a2];
  if ((v4 - 48) > 9)
  {
    goto LABEL_9;
  }

  v6 = 0;
  result = 0;
  v8 = a1 + 1;
  do
  {
    result = (v4 & 0xF) + 10 * result;
    if (result >= 0x80000000)
    {
      v9 = a3;
      exception = __cxa_allocate_exception(0x18uLL);
      v11 = 5;
      goto LABEL_8;
    }

    v4 = v8[v3];
    --v6;
    ++v8;
  }

  while ((v4 - 48) < 0xA);
  if (!v6)
  {
LABEL_9:
    v9 = a3;
    exception = __cxa_allocate_exception(0x18uLL);
    v11 = 4;
LABEL_8:
    *exception = v11;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  *a2 = v3 - v6;
  return result;
}

void XMPUtils::PackageForJPEG(const std::string *lpsrc, uint64_t a2, std::string *a3, std::string *a4)
{
  v4 = a4;
  v83 = *MEMORY[0x1E69E9840];
  if (sUseNewCoreAPIs)
  {
    if (!v8)
    {
      __cxa_bad_cast();
    }

    XMPUtils::PackageForJPEG(v8, a2, a3, v4);
    return;
  }

  if (!a2 || !a3 || !a4)
  {
    XMPUtils::PackageForJPEG();
  }

  if ((atomic_load_explicit(byte_1ED56A1A8, memory_order_acquire) & 1) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  memset(&__str, 0, sizeof(__str));
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  memset(v75, 0, sizeof(v75));
  v74 = 0u;
  memset(v73, 0, sizeof(v73));
  XMPMeta::XMPMeta(v73);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  XMPMeta::XMPMeta(v64);
  std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(v4, 0, 0xFFFFFFFFFFFFFFFFLL);
  (*(lpsrc->__r_.__value_.__r.__words[0] + 208))(lpsrc, &__str, 2112, 1, "", "", 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      DWORD2(v74) = lpsrc[9].__r_.__value_.__r.__words[2];
      std::string::operator=(v75, lpsrc + 10);
      std::string::operator=(&v75[1], lpsrc + 11);
      CloneOffspring(&lpsrc[9].__r_.__value_.__r.__words[1], &v74, 0);
      if (XMPMeta::DoesPropertyExist(v73, "http://ns.adobe.com/xap/1.0/", "Thumbnails"))
      {
        XMPMeta::DeleteProperty(v73, "http://ns.adobe.com/xap/1.0/", "Thumbnails");
        XMPMeta::SerializeToBuffer(v73, &__str, 0x840u, 1u, "", "", 0);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      XMPMeta::SetProperty(v73, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", "123456789-123456789-123456789-12", 0);
      *__dst.state = 0;
      SchemaNode = FindSchemaNode(&v74, "http://ns.adobe.com/camera-raw-settings/1.0/", 0, &__dst, 0, 0);
      *v61 = SchemaNode;
      if (SchemaNode)
      {
        *(SchemaNode + 64) = v65;
        std::vector<IIO_Writer *>::push_back[abi:fe200100](&v66 + 8, v61);
        v14 = *__dst.state;
        if (v77 == *__dst.state)
        {
          goto LABEL_146;
        }

        v15 = v77 - (*__dst.state + 8);
        if (v77 != *__dst.state + 8)
        {
          memmove(*__dst.state, (*__dst.state + 8), v77 - (*__dst.state + 8));
        }

        *&v77 = v14 + v15;
        XMPMeta::SerializeToBuffer(v73, &__str, 0x840u, 1u, "", "", 0);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
      {
        MoveOneProperty(v73, v64, "http://ns.adobe.com/photoshop/1.0/", "photoshop:History");
        if (v16)
        {
          XMPMeta::SerializeToBuffer(v73, &__str, 0x840u, 1u, "", "", 0);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
        {
          v62 = 0;
          v63 = 0;
          *v61 = &v62;
          if (v77 != *(&v76 + 1))
          {
            v17 = (v77 - *(&v76 + 1)) >> 3;
            while (1)
            {
              if (--v17 >= ((v77 - *(&v76 + 1)) >> 3))
              {
                goto LABEL_146;
              }

              v18 = *(*(&v76 + 1) + 8 * v17);
              v19 = *(v18 + 80) - *(v18 + 72);
              if (v19)
              {
                break;
              }

LABEL_80:
              if (!v17)
              {
                goto LABEL_81;
              }
            }

            v20 = v19 >> 3;
            v21 = v18 + 16;
            while (1)
            {
              --v20;
              v22 = *(v18 + 72);
              if (v20 >= (*(v18 + 80) - v22) >> 3)
              {
                break;
              }

              v23 = *(v22 + 8 * v20);
              if ((*(v18 + 39) & 0x80000000) == 0 || *(v18 + 24) != 29)
              {
                goto LABEL_58;
              }

              v24 = **v21 == 0x6E2F2F3A70747468 && *(*v21 + 8) == 0x2E65626F64612E73;
              v25 = v24 && *(*v21 + 16) == 0x2F706D782F6D6F63;
              if (!v25 || *(*v21 + 21) != 0x2F65746F6E2F706DLL)
              {
                goto LABEL_58;
              }

              v30 = (v23 + 16);
              v31 = *(v23 + 39);
              if (v31 < 0)
              {
                if (*(v23 + 24) != 22)
                {
                  goto LABEL_58;
                }

                v30 = *v30;
              }

              else if (v31 != 22)
              {
                goto LABEL_58;
              }

              v32 = *v30;
              v33 = v30[1];
              v34 = *(v30 + 14);
              v35 = v32 == 0x3A65746F4E706D78 && v33 == 0x6E65747845736148;
              if (!v35 || v34 != 0x504D586465646E65)
              {
LABEL_58:
                v27 = EstimateSizeForJPEG(v23);
                *__dst.state = v27;
                *&__dst.state[2] = v18 + 16;
                *__dst.count = v23 + 16;
                v28 = v62;
                v29 = &v62;
                if (v62)
                {
                  v29 = &v62;
                  do
                  {
                    if (v27 < v28[4])
                    {
                      v29 = v28;
                    }

                    v28 = v28[v27 >= v28[4]];
                  }

                  while (v28);
                }

                std::__tree<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>>>::__emplace_hint_multi<std::pair<unsigned long const,std::pair<std::string *,std::string *>> &>(v61, v29, &__dst);
              }

              if (!v20)
              {
                goto LABEL_80;
              }
            }

LABEL_146:
            __break(1u);
          }

LABEL_81:
          v37 = "MoveLargestProperty";
LABEL_82:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            size = __str.__r_.__value_.__l.__size_;
            if (__str.__r_.__value_.__l.__size_ >= 0xFDE9 && v63 != 0)
            {
              while (1)
              {
                v40 = *v61;
                v41 = *(*v61 + 8);
                v42 = *v61;
                if (v41)
                {
                  do
                  {
                    v43 = v41;
                    v41 = *v41;
                  }

                  while (v41);
                }

                else
                {
                  do
                  {
                    v43 = v42[2];
                    v24 = *v43 == v42;
                    v42 = v43;
                  }

                  while (!v24);
                }

                while (v43 != &v62)
                {
                  v40 = v43;
                  v44 = v43[1];
                  v45 = v43;
                  if (v44)
                  {
                    do
                    {
                      v43 = v44;
                      v44 = *v44;
                    }

                    while (v44);
                  }

                  else
                  {
                    do
                    {
                      v43 = v45[2];
                      v24 = *v43 == v45;
                      v45 = v43;
                    }

                    while (!v24);
                  }
                }

                v46 = v40[5];
                if (v46[23] < 0)
                {
                  v46 = *v46;
                }

                v47 = v40[6];
                if (v47[23] < 0)
                {
                  v47 = *v47;
                }

                v48 = v40[4];
                MoveOneProperty(v73, v64, v46, v47);
                if (!v49)
                {
                  break;
                }

                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v61, v40);
                operator delete(v40);
                if (!v48)
                {
                  v57 = 2979;
                  v37 = "PackageForJPEG";
                  v58 = "propSize > 0";
LABEL_142:
                  __assert_rtn(v37, "XMPUtils.cpp", v57, v58);
                }

                if (size >= v48)
                {
                  size -= v48;
                }

                else
                {
                  size = 0;
                }

                if (size < 0xFDE9 || !v63)
                {
                  XMPMeta::SerializeToBuffer(v73, &__str, 0x840u, 1u, "", "", 0);
                  goto LABEL_82;
                }
              }

              v57 = 1887;
              v58 = "moved";
              goto LABEL_142;
            }
          }

          std::__tree<unsigned long long>::destroy(v61, v62);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 110;
            exception[1] = "Can't reduce XMP enough for JPEG file";
            *(exception + 16) = 0;
          }
        }
      }
    }
  }

  if (*(&v66 + 1) == v67)
  {
    std::string::operator=(a2, &__str);
  }

  else
  {
    XMPMeta::SerializeToBuffer(v64, &__str, 0x850u, 0, "", "", 0);
    std::string::operator=(a3, &__str);
    *v61 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v62 = 0;
    MD5Init(&__dst);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = __str.__r_.__value_.__r.__words[1];
    }

    MD5Update(&__dst, p_str, v10);
    MD5Final(v61, &__dst);
    std::string::reserve(v4, 0x20uLL);
    for (i = 0; i != 16; ++i)
    {
      v12 = v61[i];
      std::string::push_back(v4, a0123456789abcd[v12 >> 4]);
      std::string::push_back(v4, a0123456789abcd[v12 & 0xF]);
    }

    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    XMPMeta::SetProperty(v73, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", v4, 0);
    XMPMeta::SerializeToBuffer(v73, &__str, 0x840u, 1u, "", "", 0);
    std::string::operator=(a2, &__str);
  }

  v50 = *(a2 + 23);
  if ((v50 & 0x8000000000000000) != 0)
  {
    v50 = *(a2 + 8);
    if (_MergedGlobals_5)
    {
      v51 = 19;
    }

    else
    {
      v51 = 0;
    }

    if (v50 > v51 && v50 <= 0xFDE8)
    {
      v52 = -19;
      if (!_MergedGlobals_5)
      {
        v52 = 0;
      }

      v53 = *a2 + v50;
      goto LABEL_130;
    }

LABEL_143:
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3036, "(stdStr->size() > kTrailerLen) && (stdStr->size() <= kStdXMPLimit)");
  }

  if (_MergedGlobals_5)
  {
    v51 = 19;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v50)
  {
    goto LABEL_143;
  }

  v52 = -19;
  if (!_MergedGlobals_5)
  {
    v52 = 0;
  }

  v53 = a2 + v50;
LABEL_130:
  if (strcmp((v53 + v52), "<?xpacket end=w?>"))
  {
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3038, "(strcmp((packetEnd),(kPacketTrailer)) == 0)");
  }

  std::string::erase(a2, v50 - v51, 0xFFFFFFFFFFFFFFFFLL);
  if (65000 - v50 >= 0x7FF)
  {
    v55 = 2047;
  }

  else
  {
    v55 = 65000 - v50;
  }

  std::string::append(a2, v55, 32);
  std::string::append(a2, "<?xpacket end=w?>");
  XMPMeta::~XMPMeta(v64);
  XMPMeta::~XMPMeta(v73);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1860EE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  XMPMeta::~XMPMeta(&a30);
  XMPMeta::~XMPMeta(&STACK[0x220]);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XMPUtils::PackageForJPEG(void *a1, uint64_t a2, std::string *a3, std::string *a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || (v5 = a4) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  if ((atomic_load_explicit(byte_1ED56A1B0, memory_order_acquire) & 1) == 0)
  {
    XMPUtils::PackageForJPEG();
  }

  memset(&__str, 0, sizeof(__str));
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  XMPMeta2::XMPMeta2(v88);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v83, 0, sizeof(v83));
  XMPMeta2::XMPMeta2(v83);
  std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase(v5, 0, 0xFFFFFFFFFFFFFFFFLL);
  (*(*a1 + 208))(a1, &__str, 2112, 1, "", "", 0);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  if (__str.__r_.__value_.__l.__size_ >= 0xFDE9)
  {
    (*(*(a1[50] + *(*a1[50] - 544)) + 264))(v80);
    (*(**v80 + 256))(&v79);
    v12 = *v79.state;
    *v79.state = 0;
    *&v79.state[2] = 0;
    v13 = *(&v89 + 1);
    v89 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      if (*&v79.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
      }
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v81);
    }

    if (XMPMeta2::DoesPropertyExist(v88, "http://ns.adobe.com/xap/1.0/", "Thumbnails"))
    {
      XMPMeta2::DeleteProperty(v88, "http://ns.adobe.com/xap/1.0/", "Thumbnails");
      XMPMeta2::SerializeToBuffer(v88, &__str);
    }
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __str.__r_.__value_.__l.__size_ < 0xFDE9)
  {
    goto LABEL_7;
  }

  XMPMeta2::SetProperty(v88, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", "123456789-123456789-123456789-12", 0);
  if (v89)
  {
    v14 = (v89 + *(*v89 - 792));
  }

  else
  {
    v14 = 0;
  }

  v21 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    atomic_fetch_add_explicit((*(&v89 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v68 = v21;
  *v80 = 0;
  v81 = 0;
  v82 = 0;
  v78 = 0uLL;
  (*(*&v14[*(*v14 - 688)] + 552))(&v78, &v14[*(*v14 - 688)]);
  for (i = v78; v78; i = v78)
  {
    while (1)
    {
      v76 = 0;
      v77 = 0;
      (*(*i + 48))(&v79);
      (*(**v79.state + 264))(&v76);
      if (*&v79.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
      }

      (*(*v76 + 88))(&v79);
      v23 = (*(**v79.state + 192))(*v79.state);
      v24 = strcmp(v23, "http://ns.adobe.com/camera-raw-settings/1.0/");
      if (*&v79.state[2])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
      }

      if (!v24)
      {
        (*(*(v84 + *(*v84 - 688)) + 520))(v84 + *(*v84 - 688), &v76);
        (*(*v76 + 72))(&v71);
        v25 = (*(*v71 + 192))(v71);
        std::string::basic_string[abi:fe200100]<0>(__p, v25);
        v26 = v81;
        if (v81 >= v82)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v81 - *v80) >> 3);
          v29 = v28 + 1;
          if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
          }

          if (0x5555555555555556 * ((v82 - *v80) >> 3) > v29)
          {
            v29 = 0x5555555555555556 * ((v82 - *v80) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v82 - *v80) >> 3) >= 0x555555555555555)
          {
            v30 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v30 = v29;
          }

          *&v79.buffer[8] = v80;
          if (v30)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(v80, v30);
          }

          v31 = 8 * ((v81 - *v80) >> 3);
          v32 = *__p;
          *(v31 + 16) = v74;
          *v31 = v32;
          __p[1] = 0;
          v74 = 0;
          __p[0] = 0;
          v33 = (24 * v28 + 24);
          v34 = 24 * v28 - (v81 - *v80);
          memcpy((v31 - (v81 - *v80)), *v80, v81 - *v80);
          v35 = *v80;
          v36 = v82;
          *v80 = v34;
          v81 = v33;
          v82 = 0;
          *v79.count = v35;
          *v79.buffer = v36;
          *v79.state = v35;
          *&v79.state[2] = v35;
          std::__split_buffer<std::string>::~__split_buffer(&v79);
          v81 = v33;
          if (SHIBYTE(v74) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v27 = *__p;
          v81->__shared_weak_owners_ = v74;
          v26->std::__shared_count = v27;
          __p[1] = 0;
          v74 = 0;
          __p[0] = 0;
          v81 = v26 + 1;
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v72);
        }
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77);
      }

      (*(*v78 + 56))(&v79);
      v37 = *v79.state;
      *v79.state = 0;
      *&v79.state[2] = 0;
      v38 = *(&v78 + 1);
      v78 = v37;
      if (v38)
      {
        break;
      }

      i = v37;
      if (!v37)
      {
        goto LABEL_88;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
    if (*&v79.state[2])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
    }
  }

LABEL_88:
  if (*(&v78 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v78 + 1));
  }

  if (v81 == *v80)
  {
    goto LABEL_98;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0xAAAAAAAAAAAAAAABLL * ((v81 - *v80) >> 3);
  do
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v81 - *v80) >> 3) <= v40)
    {
      __break(1u);
      return;
    }

    (*(*(v89 + *(*v89 - 792)) + 672))(&v69);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v70);
    }

    ++v40;
    v39 += 24;
  }

  while (v41 != v40);
  if (v81 != *v80)
  {
    XMPMeta2::SerializeToBuffer(v88, &__str);
  }

LABEL_98:
  *v79.state = v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v79);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v68);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
  {
    if (MoveOneProperty(v88, v83, "http://ns.adobe.com/photoshop/1.0/", "History"))
    {
      XMPMeta2::SerializeToBuffer(v88, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
    {
      v81 = 0;
      v82 = 0;
      *v80 = &v81;
      v42 = v89;
      if (v89)
      {
        v42 = (v89 + *(*v89 - 792));
      }

      v43 = *(&v89 + 1);
      if (*(&v89 + 1))
      {
        atomic_fetch_add_explicit((*(&v89 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      __p[0] = 0;
      __p[1] = 0;
      (*(*(v42 + *(*v42 - 688)) + 552))(__p);
      for (j = __p[0]; __p[0]; j = __p[0])
      {
        while (1)
        {
          (*(*j + 48))(&v78);
          (*(*v78 + 88))(&v79);
          v45 = (*(**v79.state + 192))(*v79.state);
          if (!strcmp(v45, "http://ns.adobe.com/xmp/note/"))
          {
            (*(*v78 + 72))(&v76);
            v47 = (*(*v76 + 192))(v76);
            v46 = strcmp(v47, "HasExtendedXMP") == 0;
            if (v77)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v77);
            }
          }

          else
          {
            v46 = 0;
          }

          if (*&v79.state[2])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
          }

          if (!v46)
          {
            v48 = EstimateSizeForJPEG(&v78);
            (*(*v78 + 88))(&v79);
            v49 = (*(**v79.state + 192))(*v79.state);
            (*(*v78 + 72))(&v76);
            v50 = (*(*v76 + 192))(v76);
            if (v77)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v77);
            }

            if (*&v79.state[2])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
            }

            *v79.state = v48;
            *&v79.state[2] = v49;
            *v79.count = v50;
            v51 = &v81;
            v52 = v81;
            if (v81)
            {
              v51 = &v81;
              do
              {
                if (v48 < v52[1].__shared_owners_)
                {
                  v51 = v52;
                }

                v52 = *(&v52->__vftable + (v48 >= v52[1].__shared_owners_));
              }

              while (v52);
            }

            std::__tree<std::__value_type<unsigned long,std::pair<char const*,char const*>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<char const*,char const*>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<char const*,char const*>>>>::__emplace_hint_multi<std::pair<unsigned long const,std::pair<char const*,char const*>> &>(v80, v51, &v79);
          }

          if (*(&v78 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v78 + 1));
          }

          (*(*__p[0] + 56))(&v79);
          v53 = *v79.state;
          *v79.state = 0;
          *&v79.state[2] = 0;
          v54 = __p[1];
          *__p = v53;
          if (v54)
          {
            break;
          }

          j = v53;
          if (!v53)
          {
            goto LABEL_136;
          }
        }

        std::__shared_weak_count::__release_shared[abi:fe200100](v54);
        if (*&v79.state[2])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*&v79.state[2]);
        }
      }

LABEL_136:
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v43);
      }

      v55 = "MoveLargestProperty";
LABEL_141:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __str.__r_.__value_.__l.__size_;
        v57 = __str.__r_.__value_.__l.__size_ < 0xFDE9 || v82 == 0;
        if (!v57)
        {
          while (1)
          {
            v58 = *v80;
            v59 = *(*v80 + 8);
            v60 = *v80;
            if (v59)
            {
              do
              {
                shared_weak_owners = v59;
                v59 = v59->__vftable;
              }

              while (v59);
            }

            else
            {
              do
              {
                shared_weak_owners = v60->__shared_weak_owners_;
                v57 = *shared_weak_owners == v60;
                v60 = shared_weak_owners;
              }

              while (!v57);
            }

            while (shared_weak_owners != &v81)
            {
              v58 = shared_weak_owners;
              v62 = shared_weak_owners[1];
              v63 = shared_weak_owners;
              if (v62)
              {
                do
                {
                  shared_weak_owners = v62;
                  v62 = v62->__vftable;
                }

                while (v62);
              }

              else
              {
                do
                {
                  shared_weak_owners = v63[2];
                  v57 = *shared_weak_owners == v63;
                  v63 = shared_weak_owners;
                }

                while (!v57);
              }
            }

            v64 = v58[4];
            if (!MoveOneProperty(v88, v83, v58[5], v58[6]))
            {
              break;
            }

            std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(v80, v58);
            operator delete(v58);
            if (!v64)
            {
              v66 = 3196;
              v55 = "PackageForJPEG";
              v67 = "propSize > 0";
LABEL_171:
              __assert_rtn(v55, "XMPUtils.cpp", v66, v67);
            }

            if (size >= v64)
            {
              size -= v64;
            }

            else
            {
              size = 0;
            }

            if (size < 0xFDE9 || !v82)
            {
              XMPMeta2::SerializeToBuffer(v88, &__str);
              goto LABEL_141;
            }
          }

          v66 = 1851;
          v67 = "moved";
          goto LABEL_171;
        }
      }

      std::__tree<unsigned long long>::destroy(v80, v81);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0xFDE9)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 110;
        exception[1] = "Can't reduce XMP enough for JPEG file";
        *(exception + 16) = 0;
      }
    }
  }

LABEL_7:
  if ((*(*(v84 + *(*v84 - 688)) + 560))(v84 + *(*v84 - 688)))
  {
    XMPMeta2::SerializeToBuffer(v83, &__str);
    std::string::operator=(a3, &__str);
    *v80 = 0;
    memset(&v79, 0, sizeof(v79));
    v81 = 0;
    MD5Init(&v79);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __str.__r_.__value_.__r.__words[1];
    }

    MD5Update(&v79, p_str, v9);
    MD5Final(v80, &v79);
    std::string::reserve(v5, 0x20uLL);
    for (k = 0; k != 16; ++k)
    {
      v11 = v80[k];
      std::string::push_back(v5, a0123456789abcd[v11 >> 4]);
      std::string::push_back(v5, a0123456789abcd[v11 & 0xF]);
    }

    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v5->__r_.__value_.__r.__words[0];
    }

    XMPMeta2::SetProperty(v88, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP", v5, 0);
    XMPMeta2::SerializeToBuffer(v88, &__str);
    std::string::operator=(a2, &__str);
  }

  else
  {
    std::string::operator=(a2, &__str);
  }

  v15 = *(a2 + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (byte_1ED56A1A0)
    {
      v16 = 19;
    }

    else
    {
      v16 = 0;
    }

    if (v16 < v15)
    {
      v17 = -19;
      if (!byte_1ED56A1A0)
      {
        v17 = 0;
      }

      v18 = a2 + v15;
      goto LABEL_50;
    }

LABEL_172:
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3254, "(stdStr->size() > kTrailerLen) && (stdStr->size() <= kStdXMPLimit)");
  }

  v15 = *(a2 + 8);
  if (byte_1ED56A1A0)
  {
    v16 = 19;
  }

  else
  {
    v16 = 0;
  }

  if (v15 <= v16 || v15 > 0xFDE8)
  {
    goto LABEL_172;
  }

  v17 = -19;
  if (!byte_1ED56A1A0)
  {
    v17 = 0;
  }

  v18 = *a2 + v15;
LABEL_50:
  if (strcmp((v18 + v17), "<?xpacket end=w?>"))
  {
    __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3256, "(strcmp((packetEnd),(kPacketTrailer)) == 0)");
  }

  std::string::erase(a2, v15 - v16, 0xFFFFFFFFFFFFFFFFLL);
  if (65000 - v15 >= 0x7FF)
  {
    v20 = 2047;
  }

  else
  {
    v20 = 65000 - v15;
  }

  std::string::append(a2, v20, 32);
  std::string::append(a2, "<?xpacket end=w?>");
  XMPMeta2::~XMPMeta2(v83);
  XMPMeta2::~XMPMeta2(v88);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1860EF288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v42);
  }

  std::__tree<unsigned long long>::destroy(&a39, a40);
  XMPMeta2::~XMPMeta2(&a42);
  XMPMeta2::~XMPMeta2(&STACK[0x2C0]);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MoveOneProperty(XMPMeta *a1, XMPMeta *a2, char *__s, char *a4)
{
  __dst = 0;
  SchemaNode = FindSchemaNode(a1 + 224, __s, 0, 0, 0, 0);
  if (SchemaNode)
  {
    v8 = SchemaNode;
    ChildNode = FindChildNode(SchemaNode, a4, 0, &__dst);
    v16 = ChildNode;
    if (ChildNode)
    {
      v10 = ChildNode;
      v11 = FindSchemaNode(a2 + 224, __s, 1, 0, 0, 0);
      *(v10 + 8) = v11;
      *(v11 + 8) &= ~0x8000u;
      std::vector<IIO_Writer *>::push_back[abi:fe200100](v11 + 72, &v16);
      v12 = __dst;
      v13 = v8[10];
      if (v13 == __dst)
      {
        __break(1u);
      }

      else
      {
        v14 = v13 - (__dst + 8);
        if (v13 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v13 - (__dst + 8));
        }

        v8[10] = &v12[v14];
        DeleteEmptySchema(v8);
      }
    }
  }
}

BOOL MoveOneProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 400);
  if (v7)
  {
    v8 = v7 + *(*v7 - 544);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 408);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    v24 = 0;
    v25 = 0;
    (*(*v8 + 240))(&v22, v8);
    (*(*v22 + 648))(&v24);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
    }

    v10 = v24 != 0;
    if (v24)
    {
      v22 = 0;
      v23 = 0;
      (*(*v24 + 264))(&v22);
      v11 = *(a2 + 400);
      if (v11)
      {
        v12 = v11 + *(*v11 - 792);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 408);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v12 + 648))(&v20, v12, a3, -1, a4, -1);
      v14 = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

      if (v14)
      {
        (*(*v12 + 672))(&v18, v12, a3, -1, a4, -1);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        }
      }

      (*(*&v12[*(*v12 - 688)] + 520))(&v12[*(*v12 - 688)], &v22);
      (*(*v8 + 240))(&v20, v8);
      (*(*v20 + 672))(&v16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      }
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v25);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v10;
}

void sub_1860EF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::MergeFromJPEG(XMPUtils *this, XMPMeta *a2, const XMPMeta *a3, unsigned int a4)
{
  XMPUtils::ApplyTemplate(this, a2, 3);
  v5 = *(*this + 80);

  return v5(this, "http://ns.adobe.com/xmp/note/", "HasExtendedXMP");
}

uint64_t XMPUtils::ConvertToUTCTime(uint64_t a1)
{
  if (!a1)
  {
    XMPUtils::ConvertToUTCTime();
  }

  result = VerifyDateTimeFlags(a1);
  if (*(a1 + 26))
  {
    v3 = *(a1 + 28);
    if (v3 >= 0x18)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v4 = *(a1 + 32);
    if (v4 >= 0x3C)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v5 = *(a1 + 27);
    if ((v5 - 2) <= 0xFC)
    {
      XMPUtils::ConvertToUTCTime();
    }

    v6 = v4 | v3;
    if (*(a1 + 27))
    {
      if (v6)
      {
        if (v5 == 255)
        {
          v7 = *(a1 + 12) + v3;
          v8 = *(a1 + 16) + v4;
          goto LABEL_14;
        }

        if (v5 == 1)
        {
          v7 = *(a1 + 12) - v3;
          v8 = *(a1 + 16) - v4;
LABEL_14:
          *(a1 + 12) = v7;
          *(a1 + 16) = v8;
        }

LABEL_15:
        result = AdjustTimeOverflow(a1);
        *(a1 + 35) = 0;
        *(a1 + 27) = 0;
        return result;
      }
    }

    else if (!v6)
    {
      goto LABEL_15;
    }

    XMPUtils::ConvertToUTCTime();
  }

  return result;
}

int *AdjustTimeOverflow(int *result)
{
  v1 = result;
  v2 = result[1];
  if (!*result)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if (!result[2])
    {
      goto LABEL_31;
    }

    goto LABEL_5;
  }

  v4 = *result;
  v3 = result[1];
  if (v2 <= 0)
  {
LABEL_5:
    if (v2 <= -11)
    {
      v6 = -11;
    }

    else
    {
      v6 = v2;
    }

    if (v2 >= -11)
    {
      v7 = v2;
    }

    else
    {
      v7 = v2 + 1;
    }

    v8 = (v6 - v7) / 0xCu;
    if (v2 < -11)
    {
      ++v8;
    }

    v4 = *result + ~v8;
    v3 = v2 + 12 * v8 + 12;
    *result = v4;
    result[1] = v3;
  }

  if (v3 >= 13)
  {
    v9 = v3 - 24;
    if (v3 < 0x18)
    {
      v9 = 0;
    }

    v10 = (v9 + 11) / 0xCu;
    v4 += v10 + 1;
    v3 = v3 - 12 * v10 - 12;
    *result = v4;
    result[1] = v3;
  }

  v5 = result[2];
  if (v5 <= 0)
  {
    do
    {
      if (v3 > 1)
      {
        --v3;
      }

      else
      {
        *v1 = --v4;
        v3 += 11;
      }

      result = DaysInMonth(v4, v3);
      v5 += result;
    }

    while (v5 < 1);
    v1[1] = v3;
    v1[2] = v5;
  }

  else
  {
    result = DaysInMonth(v4, v3);
  }

  if (v5 > result)
  {
    do
    {
      if (v3 < 12)
      {
        ++v3;
      }

      else
      {
        *v1 = ++v4;
        v3 -= 11;
      }

      v5 -= result;
      result = DaysInMonth(v4, v3);
    }

    while (v5 > result);
    v1[1] = v3;
    v1[2] = v5;
  }

LABEL_31:
  v11 = v1[3];
  if ((v11 & 0x80000000) != 0)
  {
    if (v11 <= 0xFFFFFFE8)
    {
      v12 = -24;
    }

    else
    {
      v12 = v1[3];
    }

    if (v11 >= 0xFFFFFFE8)
    {
      v13 = v1[3];
    }

    else
    {
      v13 = v11 + 1;
    }

    v14 = (v12 - v13) / 0x18;
    if (v11 < 0xFFFFFFE8)
    {
      ++v14;
    }

    v5 += ~v14;
    v11 += 24 * v14 + 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  if (v11 >= 24)
  {
    v15 = v11 - 47;
    if (v11 < 0x2F)
    {
      v15 = 0;
    }

    v16 = (v15 + 23) / 0x18;
    v5 += v16 + 1;
    v11 = v11 - 24 * v16 - 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  v17 = v1[4];
  if ((v17 & 0x80000000) != 0)
  {
    if (v17 <= 0xFFFFFFC4)
    {
      v18 = -60;
    }

    else
    {
      v18 = v1[4];
    }

    if (v17 >= 0xFFFFFFC4)
    {
      v19 = v1[4];
    }

    else
    {
      v19 = v17 + 1;
    }

    v20 = (v18 - v19) / 0x3C;
    if (v17 < 0xFFFFFFC4)
    {
      ++v20;
    }

    v11 += ~v20;
    v17 += 60 * v20 + 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  if (v17 >= 60)
  {
    v21 = v17 - 119;
    if (v17 < 0x77)
    {
      v21 = 0;
    }

    v22 = (v21 + 59) / 0x3C;
    v11 += v22 + 1;
    v17 = v17 - 60 * v22 - 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  v23 = v1[5];
  if ((v23 & 0x80000000) != 0)
  {
    if (v23 <= 0xFFFFFFC4)
    {
      v24 = -60;
    }

    else
    {
      v24 = v1[5];
    }

    if (v23 >= 0xFFFFFFC4)
    {
      v25 = v1[5];
    }

    else
    {
      v25 = v23 + 1;
    }

    v26 = (v24 - v25) / 0x3C;
    if (v23 < 0xFFFFFFC4)
    {
      ++v26;
    }

    v17 += ~v26;
    v23 += 60 * v26 + 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  if (v23 >= 60)
  {
    v27 = v23 - 119;
    if (v23 < 0x77)
    {
      v27 = 0;
    }

    v28 = (v27 + 59) / 0x3C;
    v17 += v28 + 1;
    v23 = v23 - 60 * v28 - 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  v29 = v1[9];
  if ((v29 & 0x80000000) != 0)
  {
    if (v29 <= 0xC4653600)
    {
      v30 = -1000000000;
    }

    else
    {
      v30 = v1[9];
    }

    if (v29 >= 0xC4653600)
    {
      v31 = v1[9];
    }

    else
    {
      v31 = v29 + 1;
    }

    v32 = (v30 - v31) / 0x3B9ACA00;
    if (v29 < 0xC4653600)
    {
      ++v32;
    }

    v23 += ~v32;
    v29 += 1000000000 * v32 + 1000000000;
    v1[5] = v23;
    v1[9] = v29;
  }

  if (v29 > 999999999)
  {
    v33 = v29 - 1999999999;
    if (v29 < 0x773593FF)
    {
      v33 = 0;
    }

    v34 = (v33 + 999999999) / 0x3B9ACA00;
    v23 += v34 + 1;
    v1[5] = v23;
    v1[9] = v29 - 1000000000 * v34 - 1000000000;
  }

  if ((v23 & 0x80000000) != 0)
  {
    if (v23 <= 0xFFFFFFC4)
    {
      v35 = -60;
    }

    else
    {
      v35 = v23;
    }

    if (v23 >= 0xFFFFFFC4)
    {
      v36 = v23;
    }

    else
    {
      v36 = v23 + 1;
    }

    v37 = (v35 - v36) / 0x3C;
    if (v23 < 0xFFFFFFC4)
    {
      ++v37;
    }

    v17 += ~v37;
    v23 += 60 * v37 + 60;
    v1[4] = v17;
    v1[5] = v23;
  }

  if (v23 >= 60)
  {
    v38 = v23 - 119;
    if (v23 < 0x77)
    {
      v38 = 0;
    }

    v39 = (v38 + 59) / 0x3C;
    v17 += v39 + 1;
    v1[4] = v17;
    v1[5] = v23 - 60 * v39 - 60;
  }

  if ((v17 & 0x80000000) != 0)
  {
    if (v17 <= 0xFFFFFFC4)
    {
      v40 = -60;
    }

    else
    {
      v40 = v17;
    }

    if (v17 >= 0xFFFFFFC4)
    {
      v41 = v17;
    }

    else
    {
      v41 = v17 + 1;
    }

    v42 = (v40 - v41) / 0x3C;
    if (v17 < 0xFFFFFFC4)
    {
      ++v42;
    }

    v11 += ~v42;
    v17 += 60 * v42 + 60;
    v1[3] = v11;
    v1[4] = v17;
  }

  if (v17 >= 60)
  {
    v43 = v17 - 119;
    if (v17 < 0x77)
    {
      v43 = 0;
    }

    v44 = (v43 + 59) / 0x3C;
    v11 += v44 + 1;
    v1[3] = v11;
    v1[4] = v17 - 60 * v44 - 60;
  }

  if ((v11 & 0x80000000) != 0)
  {
    if (v11 <= 0xFFFFFFE8)
    {
      v45 = -24;
    }

    else
    {
      v45 = v11;
    }

    if (v11 >= 0xFFFFFFE8)
    {
      v46 = v11;
    }

    else
    {
      v46 = v11 + 1;
    }

    v47 = (v45 - v46) / 0x18;
    if (v11 < 0xFFFFFFE8)
    {
      ++v47;
    }

    v5 += ~v47;
    v11 += 24 * v47 + 24;
    v1[2] = v5;
    v1[3] = v11;
  }

  if (v11 >= 24)
  {
    v48 = v11 - 47;
    if (v11 < 0x2F)
    {
      v48 = 0;
    }

    v49 = (v48 + 23) / 0x18;
    v5 += v49 + 1;
    v1[2] = v5;
    v1[3] = v11 - 24 * v49 - 24;
  }

  if (!(v4 | v3))
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_133;
  }

  if (v3 <= 0)
  {
LABEL_133:
    if (v3 <= -11)
    {
      v50 = -11;
    }

    else
    {
      v50 = v3;
    }

    if (v3 >= -11)
    {
      v51 = v3;
    }

    else
    {
      v51 = v3 + 1;
    }

    v52 = (v50 - v51) / 0xCu;
    if (v3 < -11)
    {
      ++v52;
    }

    v4 += ~v52;
    v3 += 12 * v52 + 12;
    *v1 = v4;
    v1[1] = v3;
  }

  if (v3 >= 13)
  {
    v53 = v3 - 24;
    if (v3 < 0x18)
    {
      v53 = 0;
    }

    v54 = (v53 + 11) / 0xCu;
    v4 += v54 + 1;
    v3 = v3 - 12 * v54 - 12;
    *v1 = v4;
    v1[1] = v3;
  }

  if (v5 <= 0)
  {
    do
    {
      if (v3 > 1)
      {
        --v3;
      }

      else
      {
        *v1 = --v4;
        v3 += 11;
      }

      result = DaysInMonth(v4, v3);
      v5 += result;
    }

    while (v5 < 1);
    v1[1] = v3;
    v1[2] = v5;
  }

  else
  {
    result = DaysInMonth(v4, v3);
  }

  if (v5 > result)
  {
    do
    {
      if (v3 < 12)
      {
        ++v3;
      }

      else
      {
        *v1 = ++v4;
        v3 -= 11;
      }

      v5 -= result;
      result = DaysInMonth(v4, v3);
    }

    while (v5 > result);
    v1[1] = v3;
    v1[2] = v5;
  }

  return result;
}