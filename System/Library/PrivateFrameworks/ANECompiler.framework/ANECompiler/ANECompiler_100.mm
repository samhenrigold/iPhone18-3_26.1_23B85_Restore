BOOL ZinAneTd<7u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 556) = *(a1 + 556) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 552) = *(a1 + 552) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 560) = *(a1 + 560) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 564) = *(a1 + 564) & 0x3F | (v4 << 6);
  return result;
}

void ZinAneTd<7u>::SetTileDmaSrc1CropOffset(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Invalid Crop Offset for architecture", v2, v3);
  }
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1BaseAddrLo(uint64_t result, uint64_t a2, char a3)
{
  if (*(a2 + 24) == 1)
  {
    ZinAssertImpl("An Src1BaseAddr offset can not be set for this target.", v3, v4);
  }

  *(result + 40) = *(result + 40) & 0xFFFFFFC0 | a3 & 0x1F | 0x20;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v3 = *(result + 540) & 0xFFF3FFFF | 0x40000;
LABEL_7:
    *(result + 540) = v3;
    return result;
  }

  if (a2 == 1)
  {
    v2 = *(result + 540);
    if ((v2 & 0xC0000) == 0)
    {
      v3 = v2 | 0x80000;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 604);
  *(result + 604) = v4 | 1;
  if (a4)
  {
    ZinAssertImpl("Architecture only supports lossless compression", a2, a3);
  }

  if (a3 == 2)
  {
    v5 = v4 | 0x10001;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v5 = v4 & 0xFFFEFFFE | 1;
  }

  *(result + 604) = v5;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 604) = v5 & 0xFFFFC0FF | dword_1A75D1AAC[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 608) = *(a1 + 608) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 840) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 612) = *(a1 + 612) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

void ZinAneTd<7u>::SetL2Src2Interleave(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("No Source2 for architecture", v2, v3);
  }
}

int8x16_t ZinAneTd<7u>::SetTileDmaSrc2PixelOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, *(a1 + 636), v5);
  *(a1 + 636) = result;
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 608) = *(a1 + 608) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 840) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 612) = *(a1 + 612) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<7u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) >= 2)
      {
        if (v4 != 7)
        {
          if (v4 == 8)
          {
            ZinAssertImpl("Packed10 format not supported");
          }

          goto LABEL_32;
        }

        v7 = *(a1 + 816) & 0xFFFFFFDF;
        v8 = 272;
      }

      else
      {
        v7 = *(a1 + 816);
        v8 = 304;
      }

      v6 = v7 | v8;
      goto LABEL_20;
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 == 11)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }

LABEL_32:
    ZinAssertImpl("Invalid format provided");
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 816) & 0xFFFFFECF;
    }

    else if (v4 == 5)
    {
      v6 = *(a1 + 816) & 0xFFFFFECF | 0x100;
    }

    else
    {
      v6 = *(a1 + 816) & 0xFFFFFECF | 0x10;
    }

    goto LABEL_20;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_21;
  }

  if (v4 != 3)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 816) | 0x30;
LABEL_20:
  *(a1 + 816) = v6;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<7u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<7u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 816) & 0xFFFFFFFC | 1;
      goto LABEL_7;
    }

    if (v5 == 3)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }
  }

  else
  {
    if (!v5)
    {
      v4 = *(a1 + 816) & 0xFFFFFFFC;
LABEL_7:
      *(a1 + 816) = v4;
      return result;
    }

    if (v5 == 1)
    {
      ZinAssertImpl("Packed10 format not supported");
    }
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 816) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 816) & 0xFFFFCFFF;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v4 = *(a1 + 816) & 0xFFFFCFFF | 0x2000;
LABEL_9:
    *(a1 + 816) = v4;
    return result;
  }

  if (v5 == 3 || v5 == 4)
  {
    ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 552), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 708) = *(a1 + 708) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 840) + 552), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 816) = *(a1 + 816) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 708) = *(a1 + 708) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 708) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 792) & 0xFBFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 792) = v4;
  *(result + 708) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstEnable(uint64_t result)
{
  *(result + 792) |= 1u;
  *(result + 32) |= 0x20000000u;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 792) & 0xFFFFFC3F | 0xC0;
    }

    else
    {
      v2 = *(result + 792) | 0x3C0;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 792) & 0xFFFFFC3F | 0x340;
LABEL_8:
      *(result + 792) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 480), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 804) = *(a1 + 804) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 472), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 800) = *(a1 + 800) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 808) = *(a1 + 808) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 840) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 812) = *(a1 + 812) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 816) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 816) = v2;
  *(result + 816) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

void ZinAneTd<7u>::SetTileDmaDstCropOffset(uint64_t a1, int a2, int a3)
{
  if (a3 | a2)
  {
    ZinAssertImpl("Invalid Crop Offset for architecture", v3, v4);
  }
}

void ZinAneTd<7u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<7>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 7]");
  }
}

uint64_t ZinAneTd<7u>::SetTileDmaDstBaseAddrLo(uint64_t result, uint64_t a2, char a3)
{
  if (*(a2 + 24) == 1)
  {
    ZinAssertImpl("An DstBaseAddr offset can not be set for this target.", v3, v4);
  }

  *(result + 40) = *(result + 40) & 0xFFFC0FFF | ((a3 & 0x1F) << 12) | 0x20000;
  return result;
}

uint64_t ZinAneTd<7u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 768) = *(result + 768) & 0xFF8FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 768) | 0x80000;
  }

  else
  {
    v2 = *(result + 768) & 0xFFF7FFFF;
  }

  *(result + 768) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 764) = *(result + 764) & 0xFFFFFBFF | v2;
  if (a2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(result + 52) = *(result + 52) & 0xFFFFFFEF | v3;
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 764) = *(result + 764) & 0xFFFFFEFF | v2;
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(result + 52) = *(result + 52) & 0xFFFFFFDF | v3;
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 764) = *(result + 764) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 14)
  {
    if (a2 - 7 >= 8)
    {
      if (a2 && a2 != 3)
      {
        goto LABEL_10;
      }

LABEL_13:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }

LABEL_9:
    v2 = 4;
    goto LABEL_10;
  }

  if (a2 > 0x20)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0xF800000) != 0 || ((1 << a2) & 0x780000) != 0)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1F0000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (a2 - 15 < 4)
  {
    ZinAssertImpl("Invalid kernel format");
  }

LABEL_10:
  *(result + 764) = *(result + 764) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
{
  v2 = 128;
  if (a2 > 10)
  {
    if (a2 <= 0x20)
    {
      if (((1 << a2) & 0x780000) != 0)
      {
        v2 = 64;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x7800000) != 0)
      {
        v2 = 96;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x1F0000000) != 0)
      {
        goto LABEL_18;
      }
    }

    if (a2 - 11 >= 4)
    {
      if (a2 - 15 < 4)
      {
        ZinAssertImpl("Invalid kernel format");
      }
    }

    else
    {
      v2 = 32;
    }
  }

  else
  {
    if (a2 - 7 < 4)
    {
      v2 = 16;
      goto LABEL_15;
    }

    if (!a2 || a2 == 3)
    {
LABEL_18:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }
  }

LABEL_15:
  *(result + 764) = *(result + 764) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a2 = 0x10000;
    }

    else
    {
      v3 = *a3;
      v4 = *(a3 + 8);
      if (*a3 != v4)
      {
        while (*v3 != a2)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 == v4)
      {
LABEL_7:
        ZinAssertImpl("Error: illegal non-linear mode\n");
      }

      a2 = 0x20000;
    }
  }

  *(result + 768) = *(result + 768) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<7u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 26;
  if (a3)
  {
    v10 = -((a2 >> 16) & 0x1F0000) & 0x1F0000 | v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 15360;
  }

  *(result + 768) = *(result + 768) & 0xFFFFBFFF | v9;
  *(result + 780) = v10 | *(result + 780) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<7u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 36;
  v10 = (a2 >> 16) & 0x1F0000 | v8;
  if ((a3 & 1) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  *(result + 768) = *(result + 768) & 0xFFFFFFEF | v9;
  *(result + 776) = v10 | *(result + 776) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<7u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
{
  result = *a2;
  if (*a2)
  {
    _ZF = (a3 & 0x100000000) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v6 = 0;
  }

  else
  {
    _S8 = *&a3;
    result = ZinIrKernel::GetWeightFormat(result);
    if (result == 4)
    {
      __asm { FCVT            H0, S8 }

      LOWORD(v8) = _H0;
    }

    else
    {
      if (result != 2 && result != 1)
      {
        ZinAssertImpl("Error: Invalid kernel format");
      }

      v8 = _S8;
    }

    *(a1 + 772) = v8;
    v6 = 64;
  }

  *(a1 + 768) = *(a1 + 768) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<7u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 520) = *(result + 520) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 0)
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 520) & 0xFFFFFFFB;
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v2 = *(result + 520) | 4;
LABEL_6:
    *(result + 520) = v2;
    return result;
  }

  if ((a2 - 3) < 2)
  {
    ZinAssertImpl("Error: NP2 small source mode  is not supported for this arch");
  }

  if (a2 == 2)
  {
    ZinAssertImpl("Error: Tiny source mode is not supported for this arch");
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetNEKeepKernel(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(result + 764) = *(result + 764) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetNEUsePrevKernel(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 764) = *(result + 764) & 0xFFFFBFFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetCommonTaskType(uint64_t result, int a2)
{
  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v4 = 48;
        break;
      case 6:
        v4 = 32;
        break;
      case 7:
        v4 = 64;
        break;
      default:
        return result;
    }

    goto LABEL_14;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = 96;
    }

    else
    {
      v4 = 80;
    }

    goto LABEL_14;
  }

  switch(a2)
  {
    case 2:
      v4 = 16;
LABEL_14:
      *(result + 520) = *(result + 520) & 0xFFFFFF8F | v4;
      return result;
    case 0:
      *(result + 520) &= 0xFFFFFF8F;
      goto LABEL_20;
    case 1:
LABEL_20:
      ZinAssertImpl("Error: Invalid Task Type", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 476) & 0xFFFFFFFC | 2;
      goto LABEL_8;
    }

    if (a2 == 12)
    {
      ZinAssertImpl("Error: Invalid Common InFmt E4M3");
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src1 input format");
  }

  if (a2 == 1)
  {
    v2 = *(result + 476) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 476) & 0xFFFFFFFC;
LABEL_8:
  *(result + 476) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 476) & 0xFFFFFFF3 | 8;
      goto LABEL_8;
    }

    if (a2 == 12)
    {
      ZinAssertImpl("Error: Invalid TD programming for Src2 input format: E4M3");
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src2 input format");
  }

  if (a2 == 1)
  {
    v2 = *(result + 476) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 476) & 0xFFFFFFF3;
LABEL_8:
  *(result + 476) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 476) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 476) & 0xFFFFFFCF;
      goto LABEL_3;
    }

LABEL_12:
    ZinAssertImpl("Error: Invalid output format");
  }

  if (a2 != 13)
  {
    if (a2 == 12)
    {
      ZinAssertImpl("Error: E4M3 is not supported");
    }

    goto LABEL_12;
  }

LABEL_2:
  v2 = *(result + 476) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 476) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetCommonSourceRouting(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 520) & 0xFFFFFFFC | 2;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 520) & 0xFFFFFFFC | 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 520) | 3;
  }

  *(result + 520) = v2;
  return result;
}

BOOL ZinAneTd<7u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 200), &v4);
  if (result)
  {
    *(a1 + 508) = *(a1 + 508) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

void ZinAneTd<7u>::SetTileOverlapPadReflect(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Overlap pad reflect is not supported", v2, v3);
  }
}

BOOL ZinAneTd<7u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 136), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFFFFC1F | (32 * (v4 & 0x1F));
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 144), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 176), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 120), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 112), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 152), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 88), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 80), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 168), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 104), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 96), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 160), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 184), &v4);
  if (result)
  {
    *(a1 + 504) = *(a1 + 504) & 0xFFFFE000 | v4 & 0x1FFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 24), &v4);
  if (result)
  {
    *(a1 + 468) = *(a1 + 468) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 16), &v4);
  if (result)
  {
    *(a1 + 468) = *(a1 + 468) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 32), &v4);
  if (result)
  {
    *(a1 + 472) = *(a1 + 472) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 40), &v4);
  if (result)
  {
    *(a1 + 480) = *(a1 + 480) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 64), &v4);
  if (result)
  {
    *(a1 + 488) = *(a1 + 488) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 56), &v4);
  if (result)
  {
    *(a1 + 488) = *(a1 + 488) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 72), &v4);
  if (result)
  {
    *(a1 + 492) = *(a1 + 492) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<7u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 48), &v4);
  if (result)
  {
    *(a1 + 484) = *(a1 + 484) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 504) = *(result + 504) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<7u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 192), &v4);
  if (result)
  {
    *(a1 + 506) = v4;
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
{
  if ((*(a2 + 1387) & 1) == 0)
  {
    ZinAssertImpl("inconsistent WAR support");
  }

  if (a3)
  {
    v5 = *a5;
    v6 = a5[1];
    if (*a5 != v6)
    {
      do
      {
        v7 = *v5;
        if (v7 <= 2)
        {
          *(result + 1116) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 1116) = *(result + 1116) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetEventFlags(uint64_t result, int a2, int a3, int a4)
{
  *(result + 16) = *(result + 16) & 0xFC000000 | a2 & 0x3FFFFFF;
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 24) = *(result + 24) & 0xFC000000 | a3 & 0x3FFFFFF;
  return result;
}

BOOL ZinAneTd<8u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 296), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 880) = *(a1 + 880) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 304), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 884) = *(a1 + 884) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1296) + 316), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1296) + 312), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 888) = *(a1 + 888) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 892) = *(a1 + 892) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 328), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 896) = *(a1 + 896) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if (a2 == 11)
      {
        v2 = *(result + 872) | 0xC0;
        goto LABEL_7;
      }

      if ((a2 - 12) < 2)
      {
        ZinAssertImpl("E4M3 or E5M2 format not supported");
      }

LABEL_14:
      ZinAssertImpl("Invalid Dma Format");
    }

LABEL_6:
    v2 = *(result + 872) & 0xFFFFFF3F | 0x40;
    goto LABEL_7;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_6;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("Packed10 format not fully implemented yet\n");
    }

    goto LABEL_14;
  }

  v2 = *(result + 872) & 0xFFFFFF3F;
LABEL_7:
  *(result + 872) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if (a2 >= 11)
    {
      if (a2 < 12)
      {
        v2 = *(result + 876) | 0xC0;
        goto LABEL_7;
      }

      if ((a2 - 12) < 2)
      {
        ZinAssertImpl("E4M3 or E5M2 format not supported");
      }

      if (a2 == 14 || a2 == 17)
      {
        ZinAssertImpl("Src2 Int32,Uint32 not supported for architecture");
      }

LABEL_17:
      ZinAssertImpl("Invalid Dma Format");
    }

LABEL_6:
    v2 = *(result + 876) & 0xFFFFFF3F | 0x40;
    goto LABEL_7;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_6;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("Packed10 format not fully implemented yet\n");
    }

    goto LABEL_17;
  }

  v2 = *(result + 876) & 0xFFFFFF3F;
LABEL_7:
  *(result + 876) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("packed10 format not fully implemented yet");
        }

LABEL_13:
        ZinAssertImpl("Invalid tensor format");
      }

      goto LABEL_8;
    }

LABEL_9:
    v2 = *(result + 920) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 920) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 920) | 0xC0;
LABEL_10:
  *(result + 920) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 948) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 948) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 948) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 948) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 948) & 0xFFFFF8FF;
LABEL_12:
      *(result + 948) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 716), 5);
  *(a1 + 872) = *(a1 + 872) & 0x7FFFFFF | (result << 27);
  return result;
}

uint64_t ZinAneTd<8u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 948) = *(result + 948) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 952) = a4 | (a3 << 16);
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 872) = *(a1 + 872) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src1SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 872) = *(result + 872) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src2SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 876) = *(result + 876) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 900) = *(a1 + 900) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 904) = *(a1 + 904) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1296) + 356), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1296) + 352), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 908) = *(a1 + 908) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 912) = *(a1 + 912) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1296) + 368), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 916) = *(a1 + 916) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 732), 5);
  *(a1 + 876) = *(a1 + 876) & 0x7FFFFFF | (result << 27);
  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 872) & 0xFDF80FFF;
  *(result + 872) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 872) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 876) & 0xFDF80FFF;
  *(result + 876) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 876) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 920) & 0xFDF80FFF;
  *(result + 920) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 920) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 948) = *(result + 948) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 956) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<8u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = *(result + 1064) & 0xFFFFFFF8 | 2;
      }

      else
      {
        v2 = *(result + 1064) & 0xFFFFFFF8 | 4;
      }

      goto LABEL_14;
    }

    if (a2 == 6)
    {
      v2 = *(result + 1064) & 0xFFFFFFF8 | 5;
      goto LABEL_14;
    }

    if (a2 == 7)
    {
      ZinAssertImpl("Transposed convolution is not supported");
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = *(result + 1064) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 1064) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      v2 = *(result + 1064) & 0xFFFFFFF8;
LABEL_14:
      *(result + 1064) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 1064) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 1064) | 8;
LABEL_7:
      *(result + 1064) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1064) = *(result + 1064) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1060) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 1060) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1060) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 1060) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcNoReuseHint(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 44) = *(result + 44) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcConfigPrefetch(uint64_t result, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v2 = *(result + 52) | (*(a2 + 72) << 16);
    *(result + 52) = v2;
    v3 = v2 & 0xFFFFFFFE | *(a2 + 81);
    *(result + 52) = v3;
    *(result + 52) = v3 & 0xFFFFFFFD | (2 * (*(a2 + 82) & 1));
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = 32;
    }

    else
    {
      v5 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = 64;
      goto LABEL_10;
    case 3:
      v5 = 192;
LABEL_10:
      *(result + 4 * a3 + 76) = *(result + 4 * a3 + 76) & 0xFFFFFF0F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 284) = *(result + 284) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 268) = *(result + 268) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 300) = *(result + 300) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 316) = *(result + 316) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 568), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 204) = *(a1 + 4 * a3 + 204) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 560), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 140) = *(a1 + 4 * a3 + 140) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 3)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v3 = 0;
        v4 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_20;
      }

      if (!a3)
      {
        v3 = 0;
        v4 = 4;
        goto LABEL_14;
      }
    }

LABEL_15:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 <= 3)
  {
    if (!a3)
    {
      v4 = 8;
      v3 = 0x40000;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (a2 != 4)
  {
    if (a2 == 6)
    {
      ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
    }

    if (a2 == 9)
    {
      ZinAssertImpl("Platform doesn't support constant padding-mode", a2, a3);
    }

LABEL_20:
    ZinAssertImpl("Invalid padding mode: %d", a2);
  }

  if (a3)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = 12;
LABEL_14:
  *(result + 868) = *(result + 868) & 0xFFFFFFF3 | v4;
  *(result + 1064) = *(result + 1064) & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1060) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1060) | 0x10000;
  }

  *(result + 1060) = v2;
  return result;
}

void ZinAneTd<8u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, char a5)
{
  v7 = a3;
  if (a2[1])
  {
    if (*(a4 + 23) >= 0)
    {
      v10 = *(a4 + 23);
    }

    else
    {
      v10 = a4[1];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v10 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      memmove(p_p, v12, v10);
    }

    strcpy(p_p + v10, "_actlut");
    ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5510, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[2])
  {
    if (*(a4 + 23) >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = a4[1];
    }

    v14 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v13 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a4 + 23) >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = *a4;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, "_pallut");
    ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5506, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[3])
  {
    if (*(a4 + 23) >= 0)
    {
      v16 = *(a4 + 23);
    }

    else
    {
      v16 = a4[1];
    }

    v17 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v16 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(a4 + 23) >= 0)
      {
        v18 = a4;
      }

      else
      {
        v18 = *a4;
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, "_scale");
    ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5502, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[4])
  {
    if (*(a4 + 23) >= 0)
    {
      v19 = *(a4 + 23);
    }

    else
    {
      v19 = a4[1];
    }

    v20 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v19 + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a4 + 23) >= 0)
      {
        v21 = a4;
      }

      else
      {
        v21 = *a4;
      }

      memmove(v20, v21, v19);
    }

    strcpy(v20 + v19, "_bias");
    ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5498, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68ED040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<8u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFF3 | 8;
  result[265] = result[265] & 0xFFF9FFFF | 0x40000;
  result[68] = result[68] & 0x3F | (a3 << 6);
  result[67] |= 1u;
  return result;
}

_DWORD *ZinAneTd<8u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFFC | 2;
  result[265] = result[265] & 0xFFE7FFFF | 0x100000;
  result[72] = result[72] & 0x3F | (a3 << 6);
  result[71] |= 1u;
  return result;
}

uint64_t ZinAneTd<8u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 304) = *(result + 304) & 0x3F | (a3 << 6);
  *(result + 300) |= 1u;
  return result;
}

uint64_t ZinAneTd<8u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 320) = *(result + 320) & 0x3F | (a3 << 6);
  *(result + 316) |= 1u;
  return result;
}

uint64_t ZinAneTd<8u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 868) = *(result + 868) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 552) = *(result + 552) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 552) = *(result + 552) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 552) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = *(i + 4);
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 != 4 || (a3 & 1) != 0)
        {
          continue;
        }

        v5 = 16;
        goto LABEL_13;
      }

      if ((a3 & 1) == 0)
      {
        v5 = 32;
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v5 = 64;
        goto LABEL_13;
      }

      if (v4 == 2)
      {
        v5 = 128;
LABEL_13:
        *(result + 552) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<8u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 972) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 972) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 972) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 972) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 972) = v2;
      return;
    case 4:
      v2 = *(result + 972) & 0xFFF8FFFF | 0x40000;
      goto LABEL_16;
    case 5:
      v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v3)
      {
        ZinAneTd<8u>::SetPEIndexMode(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      break;
  }
}

uint64_t ZinAneTd<8u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 972) = *(result + 972) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 4);
      if (v3 == 2)
      {
        break;
      }

      if (v3 == 1)
      {
        v4 = 0x1000000;
LABEL_6:
        *(result + 972) |= v4;
      }

      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    v4 = 0x2000000;
    goto LABEL_6;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 996) = *(a1 + 996) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1296) + 600);
        v4 = 2;
        break;
      case 4:
        *(a1 + 996) = *(a1 + 996) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1296) + 600);
        v4 = 3;
        break;
      case 5:
        return 0;
      default:
        return 1;
    }

    return CheckRegValueRange(v4, v3);
  }

  if (!a2)
  {
    *(a1 + 996) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1296) + 600);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 996) = *(a1 + 996) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1296) + 600);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 996) = *(a1 + 996) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1296) + 600));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 996) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 996) | 0x10000;
  }

  *(result + 996) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 996) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 996) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 996) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 996) & 0xFFF3FFFF;
  }

  *(result + 996) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 996) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 996) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 996) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 996) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 996) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 996) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 996) | 0x1C0;
  }

  else
  {
    v2 = *(result + 996) & 0xFFFFFE3F;
  }

  *(result + 996) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 552) = *(result + 552) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 924) = *(a1 + 924) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 928) = *(a1 + 928) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 392), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 932) = *(a1 + 932) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 400), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 936) = *(a1 + 936) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 408), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 940) = *(a1 + 940) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<8u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 920) = *(result + 920) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 920) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 920) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 920) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 920) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 920) = v4;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<8u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 688);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 688) & 0xFFFFFFDF;
        v7 = 272;
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

LABEL_32:
      ZinAssertImpl("Invalid format provided");
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 11)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v8 = *(a1 + 688) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 688) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 688) & 0xFFFFFECF | 0x10;
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 3)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 688) | 0x30;
  }

LABEL_20:
  *(a1 + 688) = v8;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<8u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 688) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 688) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 688) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 688) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 688) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 688) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 688) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 688) | 0x3000;
LABEL_11:
      *(a1 + 688) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 688) = *(a1 + 688) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 584) = *(result + 584) & 0xFFFFFF0F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 32;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = -64;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 64;
    }

    else
    {
      v5 = 32;
    }

    if (!a4)
    {
      v5 = -32;
    }
  }

  v6 = 2;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (!a3)
  {
    v6 = 14;
  }

LABEL_31:
  *(result + 592) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 588) = *(result + 588) & 0xFFFFFF0F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 32;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = -64;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 64;
    }

    else
    {
      v5 = 32;
    }

    if (!a4)
    {
      v5 = -32;
    }
  }

  v6 = 2;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (!a3)
  {
    v6 = 14;
  }

LABEL_31:
  *(result + 596) = v6 | v5;
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 612) = *(a1 + 612) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 608) = *(a1 + 608) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 616) = *(a1 + 616) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 620) = *(a1 + 620) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<8u>::SetTileDmaSrc1WrapCfg(a1, a4);
  *(a1 + 768) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 592) = *(a1 + 592) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 4974, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<8u>::SetTileDmaSrc1WrapCfg(a1, a3);
}

void sub_1A68EE0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == 1)
    {
      ZinAssertImpl("An Src1BaseAddr offset can not be set for this target.");
    }

    ZinAssertImpl("Expected a symbol name for Src1BaseAddrLo");
  }

  v4 = (a1 + 8);

  return ZinAneTdHw_v8::AddRelocInfo(v4, a2, 4932, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 584) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 584) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 584) & 0xCFFFFFFF;
  }

  *(result + 584) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 588) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 588) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 588) & 0xCFFFFFFF;
  }

  *(result + 588) = v2;
  return result;
}

unint64_t ZinAneTd<8u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1296) + 592));
  *(a1 + 584) = *(a1 + 584) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<8u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1296) + 592));
  *(a1 + 588) = *(a1 + 588) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  if (GetProgrammedDependencyOffsetAndDimension(a2, &v7, &v8))
  {
    ZinAssertImpl("Failed to get dependency offset or dimension.");
  }

  v3 = *(a1 + 776) & 0xFFFFFFFC;
  v4 = v3 | 2;
  if (v8 == 1)
  {
    v3 |= 1u;
  }

  if (v8 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(a1 + 776) = v5;
  result = ZinCodegenUtil::ConvertInt32ToCustomUnsignedType(v7, 0x1DuLL);
  *(a1 + 776) = *(a1 + 776) & 0x80000003 | (4 * (result & 0x1FFFFFFF));
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  if (GetProgrammedDependencyOffsetAndDimension(a2, &v7, &v8))
  {
    ZinAssertImpl("Failed to get dependency offset or dimension");
  }

  v3 = *(a1 + 780) & 0xFFFFFFFC;
  v4 = v3 | 2;
  if (v8 == 1)
  {
    v3 |= 1u;
  }

  if (v8 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(a1 + 780) = v5;
  result = ZinCodegenUtil::ConvertInt32ToCustomUnsignedType(v7, 0x1DuLL);
  *(a1 + 780) = *(a1 + 780) & 0x80000003 | (4 * (result & 0x1FFFFFFF));
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 704);
  *(result + 704) = v4 | 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = v4 & 0xFFFFCFFE | 0x2001;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v5 = v4 | 0x3001;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = v4 & 0xFFFFCFFE | 0x1001;
        goto LABEL_10;
      }

LABEL_18:
      ZinAssertImpl("Invalid Lossy Mode", a2, a3);
    }

    v5 = v4 & 0xFFFFCFFE | 1;
  }

LABEL_10:
  *(result + 704) = v5;
  if (a3 == 2)
  {
    v6 = v5 | 4;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(result + 704) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 704) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 708) = *(a1 + 708) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1296) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 712) = *(a1 + 712) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<8u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), a2, 4944, a3, 1, 1, 0, 0);
  *(a1 + 704) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 664) = vsli_n_s32(*(a1 + 664), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 672) = *(a1 + 672) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<8u>::SetTileDmaSrc2FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 0x11)
    {
      if (((1 << v4) & 0x27000) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << v4) & 0x600) != 0)
      {
        v7 = *(a1 + 692);
        v8 = 304;
        goto LABEL_18;
      }

      if (v4 == 11)
      {
        goto LABEL_15;
      }
    }

    if (v4 != 7)
    {
      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

      goto LABEL_31;
    }

    v7 = *(a1 + 692) & 0xFFFFFFDF;
    v8 = 272;
LABEL_18:
    v6 = v7 | v8;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 692) & 0xFFFFFECF;
      goto LABEL_19;
    }

    if (v4 != 5)
    {
      v6 = *(a1 + 692) & 0xFFFFFECF | 0x10;
      goto LABEL_19;
    }

LABEL_15:
    v6 = *(a1 + 692) & 0xFFFFFECF | 0x100;
    goto LABEL_19;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_20;
  }

  if (v4 != 3)
  {
LABEL_31:
    ZinAssertImpl("Invalid format provided");
  }

  v6 = *(a1 + 692) | 0x30;
LABEL_19:
  *(a1 + 692) = v6;
LABEL_20:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<8u>::SetTileDmaSrc2MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2FormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 692) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 692) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 692) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 692) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2MemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 692) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 692) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 692) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 692) | 0x3000;
LABEL_11:
      *(a1 + 692) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 692) = *(a1 + 692) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<8u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 876) = *(a1 + 876) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<8u>::SetTileDmaSrc2WrapCfg(a1, a4);
  *(a1 + 772) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 596) = *(a1 + 596) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 4975, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<8u>::SetTileDmaSrc2WrapCfg(a1, a3);
}

void sub_1A68EEA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t ZinAneTd<8u>::SetTileDmaSrc2PixelOffset(int8x16_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, a1[47], v5);
  a1[47] = result;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 720);
  *(result + 720) = v4 | 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = v4 & 0xFFFFCFFE | 0x2001;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v5 = v4 | 0x3001;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = v4 & 0xFFFFCFFE | 0x1001;
        goto LABEL_10;
      }

LABEL_18:
      ZinAssertImpl("Invalid Lossy Mode", a2, a3);
    }

    v5 = v4 & 0xFFFFCFFE | 1;
  }

LABEL_10:
  *(result + 720) = v5;
  if (a3 == 2)
  {
    v6 = v5 | 4;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(result + 720) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 720) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 724) = *(a1 + 724) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1296) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 728) = *(a1 + 728) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<8u>::SetTileDmaSrc2MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 720) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 676) = vsli_n_s32(*(a1 + 676), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 684) = *(a1 + 684) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<8u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 1168);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 1168) & 0xFFFFFFDF;
        v7 = 272;
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

LABEL_32:
      ZinAssertImpl("Invalid format provided");
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 11)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v8 = *(a1 + 1168) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 1168) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 1168) & 0xFFFFFECF | 0x10;
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 3)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 1168) | 0x30;
  }

LABEL_20:
  *(a1 + 1168) = v8;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<8u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<8u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 1168) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 1168) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 1168) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 1168) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 1168) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 1168) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 1168) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 1168) | 0x3000;
LABEL_11:
      *(a1 + 1168) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 920) = *(a1 + 920) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1296) + 584), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 1168) = *(a1 + 1168) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<8u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 920) = *(a1 + 920) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 920) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 1112) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 1112) = v4;
  *(result + 920) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 1112) & 0xFFFFFF0F | 0x30;
    }

    else
    {
      v2 = *(result + 1112) | 0xF0;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 1112) & 0xFFFFFF0F | 0xD0;
LABEL_8:
      *(result + 1112) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 1132) = *(a1 + 1132) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 1128) = *(a1 + 1128) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 1136) = *(a1 + 1136) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<8u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1296) + 512), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 1140) = *(a1 + 1140) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 1168) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 1168) = v2;
  *(result + 1168) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstCropOffset(uint64_t result, int a2, __int16 a3)
{
  *(result + 1192) = a3;
  if (a2)
  {
    ZinAssertImpl("Invalid Crop Offset X for architecture", v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<8u>::SetTileDmaDstWrapCfg(a1, a4);
  *(a1 + 1164) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstWrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 1116) = *(a1 + 1116) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5197, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<8u>::SetTileDmaDstWrapCfg(a1, a3);
}

void sub_1A68EF440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<8u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<8>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 8]");
  }
}

uint64_t ZinAneTd<8u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == 1)
    {
      ZinAssertImpl("An DstBaseAddr offset can not be set for this target.");
    }

    ZinAssertImpl("Expected a symbol name for Src1BaseAddrLo");
  }

  v4 = (a1 + 8);

  return ZinAneTdHw_v8::AddRelocInfo(v4, a2, 5186, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<8u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 1184) = *(a1 + 1184) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1296) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 1188) = *(a1 + 1188) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<8u>::SetTileDmaDstCompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 1176);
  *(result + 1176) = v4 | 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = v4 & 0xFFFFCFFE | 0x2001;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v5 = v4 | 0x3001;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = v4 & 0xFFFFCFFE | 0x1001;
        goto LABEL_10;
      }

LABEL_18:
      ZinAssertImpl("Invalid Lossy Mode", a2, a3);
    }

    v5 = v4 & 0xFFFFCFFE | 1;
  }

LABEL_10:
  *(result + 1176) = v5;
  if (a3 == 2)
  {
    v6 = v5 | 4;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(result + 1176) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 1176) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

double ZinAneTd<8u>::SetTileDmaDstMetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v8::AddRelocInfo((a1 + 8), a2, 5192, a3, 1, 1, 0, 0);
  *(a1 + 1176) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 1152) = vsli_n_s32(*(a1 + 1152), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 1160) = *(a1 + 1160) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreFlush(uint64_t result, int a2, __int16 a3)
{
  *(result + 1204) = *(result + 1204) & 0xFFFFFFFE | a2;
  *(result + 1240) = a3;
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreTaskSync(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(result + 1204) = v3 | v4 | *(result + 1204) & 0xFFFFFFF3;
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreEarlyTermination(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8, __int16 a9, __int16 a10, char a11, __int16 a12, char a13)
{
  if (a2)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  if (a3)
  {
    v14 = 32;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v15 = 64;
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v16 = 128;
  }

  else
  {
    v16 = 0;
  }

  if (a6)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  *(result + 1204) = v14 | v13 | v15 | v16 | v17 | *(result + 1204) & 0xFFFFFE0F;
  if (a3)
  {
    *(result + 1236) = a8;
    if (!a4)
    {
LABEL_18:
      if (!a6)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if (!a4)
  {
    goto LABEL_18;
  }

  *(result + 1238) = a9;
  if (!a6)
  {
LABEL_19:
    if (a5)
    {
      goto LABEL_25;
    }

LABEL_24:
    if (!a7)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  *(result + 1244) = a11;
  if ((a5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(result + 1246) = a13;
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreTelemetryBackOff(uint64_t result, int a2, char a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v6 = *(result + 1248) & 0xFFFFFFFE | a2;
  if (a2)
  {
    v6 = (16 * (a3 & 0xF)) | (a4 << 8) | (a5 << 16) | (a6 << 24) | *(result + 1248) & 0xE | a2 & 0xF;
  }

  *(result + 1248) = v6;
  return result;
}

uint64_t ZinAneTd<8u>::SetCacheDmaPreFootprintLimiter(uint64_t result, int a2, __int16 a3, unsigned __int16 a4)
{
  if (a2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 1204) & 0xFFFFFDFF | v4;
  *(result + 1204) = v5;
  if (a2)
  {
    *(result + 1204) = v5 | (a4 << 16);
    *(result + 1232) = *(result + 1232) & 0xF001FFFF | ((a3 & 0x7FF) << 17);
  }

  return result;
}

void ZinAneTd<8u>::SetCacheDmaPreDSIDAndSize(uint64_t a1, unsigned __int16 *a2, int a3)
{
  *(a1 + 1228) = *(a1 + 1228) & 0xC000007F | ((a3 & 0x7FFFFF) << 7);
  if (*(a2 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ZinAneTdHw_v8::AddRelocInfo((a1 + 8), &__p, 5698, *a2, 0, 0, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68EF9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<8u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 556) = *(result + 556) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 1064) = *(result + 1064) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 1064) | 0x80000;
  }

  else
  {
    v2 = *(result + 1064) & 0xFFF7FFFF;
  }

  *(result + 1064) = v2;
  return result;
}

BOOL ZinAneTd<8u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 688), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 68) = *(a1 + 68) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1296) + 680), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 72) = *(a1 + 72) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<8u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 1080) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 1080) | 0x100000;
LABEL_7:
      *(result + 1080) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1080) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 1080) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1080) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 1080) & 0xFFFFCFFF;
LABEL_10:
    *(result + 1080) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1060) = *(result + 1060) & 0xFFFFFBFF | v2;
  if (a2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(result + 44) = *(result + 44) & 0xFFFFFFEF | v3;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1060) = *(result + 1060) & 0xFFFFFEFF | v2;
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(result + 44) = *(result + 44) & 0xFFFFFFDF | v3;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1060) = *(result + 1060) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 14)
  {
    if (a2 - 7 >= 8)
    {
      if (a2 && a2 != 3)
      {
        goto LABEL_10;
      }

LABEL_13:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }

LABEL_9:
    v2 = 4;
    goto LABEL_10;
  }

  if (a2 > 0x20)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0xF800000) != 0 || ((1 << a2) & 0x780000) != 0)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1F0000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (a2 - 15 < 4)
  {
    ZinAssertImpl("Invalid kernel format");
  }

LABEL_10:
  *(result + 1060) = *(result + 1060) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
{
  v2 = 128;
  if (a2 > 10)
  {
    if (a2 <= 0x20)
    {
      if (((1 << a2) & 0x780000) != 0)
      {
        v2 = 64;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x7800000) != 0)
      {
        v2 = 96;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x1F0000000) != 0)
      {
        goto LABEL_18;
      }
    }

    if (a2 - 11 >= 4)
    {
      if (a2 - 15 < 4)
      {
        ZinAssertImpl("Invalid kernel format");
      }
    }

    else
    {
      v2 = 32;
    }
  }

  else
  {
    if (a2 - 7 < 4)
    {
      v2 = 16;
      goto LABEL_15;
    }

    if (!a2 || a2 == 3)
    {
LABEL_18:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }
  }

LABEL_15:
  *(result + 1060) = *(result + 1060) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 1084) = *(result + 1084) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<8u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a2 = 0x10000;
    }

    else
    {
      v3 = *a3;
      v4 = *(a3 + 8);
      if (*a3 != v4)
      {
        while (*v3 != a2)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 == v4)
      {
LABEL_7:
        ZinAssertImpl("Error: illegal non-linear mode\n");
      }

      a2 = 0x20000;
    }
  }

  *(result + 1064) = *(result + 1064) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<8u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 26;
  if (a3)
  {
    v10 = -((a2 >> 16) & 0x1F0000) & 0x1F0000 | v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 15360;
  }

  *(result + 1064) = *(result + 1064) & 0xFFFFBFFF | v9;
  *(result + 1076) = v10 | *(result + 1076) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<8u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 36;
  v10 = (a2 >> 16) & 0x1F0000 | v8;
  if ((a3 & 1) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  *(result + 1064) = *(result + 1064) & 0xFFFFFFEF | v9;
  *(result + 1072) = v10 | *(result + 1072) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<8u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
{
  result = *a2;
  if (*a2)
  {
    _ZF = (a3 & 0x100000000) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v6 = 0;
  }

  else
  {
    _S8 = *&a3;
    result = ZinIrKernel::GetWeightFormat(result);
    if (result == 4)
    {
      __asm { FCVT            H0, S8 }

      LOWORD(v8) = _H0;
    }

    else
    {
      if (result != 2 && result != 1)
      {
        ZinAssertImpl("Error: Invalid kernel format");
      }

      v8 = _S8;
    }

    *(a1 + 1068) = v8;
    v6 = 64;
  }

  *(a1 + 1064) = *(a1 + 1064) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<8u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 556) = *(result + 556) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 556) & 0xFFFFFFF3 | 4;
    }

    else
    {
      v4 = *(result + 556) & 0xFFFFFFF3;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 556) | 0xC;
      goto LABEL_10;
    case 4:
      v4 = *(result + 556) & 0xFFFFFFF3 | 8;
LABEL_10:
      *(result + 556) = v4;
      return result;
    case 2:
      ZinAssertImpl("Error: Tiny source mode is not supported for this arch", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetKernelDmaSrcCoeffUserTag(uint64_t result, unsigned __int8 a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(a2 << 16);
  do
  {
    *(result + 76 + v2) = vorrq_s8((*(result + 76 + v2) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

uint64_t ZinAneTd<8u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 556) = *(result + 556) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 508) & 0xFFFFFFFC | 2;
      goto LABEL_8;
    }

    if (a2 == 12)
    {
      ZinAssertImpl("Error: Invalid Common InFmt E4M3");
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src1 input format");
  }

  if (a2 == 1)
  {
    v2 = *(result + 508) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 508) & 0xFFFFFFFC;
LABEL_8:
  *(result + 508) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 508) & 0xFFFFFFF3 | 8;
      goto LABEL_8;
    }

    if (a2 == 12)
    {
      ZinAssertImpl("Error: Invalid TD programming for Src2 input format: E4M3");
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src2 input format");
  }

  if (a2 == 1)
  {
    v2 = *(result + 508) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 508) & 0xFFFFFFF3;
LABEL_8:
  *(result + 508) = v2;
  return result;
}

uint64_t ZinAneTd<8u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 508) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 508) & 0xFFFFFFCF;
      goto LABEL_3;
    }

LABEL_12:
    ZinAssertImpl("Error: Invalid output format");
  }

  if (a2 != 13)
  {
    if (a2 == 12)
    {
      ZinAssertImpl("Error: E4M3 is not supported");
    }

    goto LABEL_12;
  }

LABEL_2:
  v2 = *(result + 508) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 508) = v2;
  return result;
}

BOOL ZinAneTd<8u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 200), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 128), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 136), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 168), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 120), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 112), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 144), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 88), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 80), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 160), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 104), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 96), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 152), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 184), &v4);
  if (result)
  {
    *(a1 + 540) = *(a1 + 540) & 0xFFFFE000 | v4 & 0x1FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 24), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 16), &v4);
  if (result)
  {
    *(a1 + 500) = *(a1 + 500) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 32), &v4);
  if (result)
  {
    *(a1 + 504) = *(a1 + 504) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 40), &v4);
  if (result)
  {
    *(a1 + 512) = *(a1 + 512) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 64), &v4);
  if (result)
  {
    *(a1 + 520) = *(a1 + 520) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 56), &v4);
  if (result)
  {
    *(a1 + 520) = *(a1 + 520) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 72), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<8u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 48), &v4);
  if (result)
  {
    *(a1 + 516) = *(a1 + 516) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<8u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 540) = *(result + 540) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<8u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1296) + 192), &v4);
  if (result)
  {
    *(a1 + 542) = v4;
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
{
  if ((*(a2 + 1387) & 1) == 0)
  {
    ZinAssertImpl("inconsistent WAR support");
  }

  if (a3)
  {
    v5 = *a5;
    v6 = a5[1];
    if (*a5 != v6)
    {
      do
      {
        v7 = *v5;
        if (v7 <= 2)
        {
          *(result + 868) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 868) = *(result + 868) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetEventFlags(uint64_t result, int a2, int a3, int a4)
{
  *(result + 16) = *(result + 16) & 0xFC000000 | a2 & 0x3FFFFFF;
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 24) = *(result + 24) & 0xFC000000 | a3 & 0x3FFFFFF;
  return result;
}

BOOL ZinAneTd<10u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 296), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 632) = *(a1 + 632) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 304), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 636) = *(a1 + 636) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 992) + 316), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 992) + 312), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 640) = *(a1 + 640) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 644) = *(a1 + 644) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 328), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 648) = *(a1 + 648) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if (a2 == 11)
      {
        v2 = *(result + 624) | 0xC0;
        goto LABEL_7;
      }

      if ((a2 - 12) < 2)
      {
        ZinAssertImpl("E4M3 or E5M2 format not supported");
      }

LABEL_14:
      ZinAssertImpl("Invalid Dma Format");
    }

LABEL_6:
    v2 = *(result + 624) & 0xFFFFFF3F | 0x40;
    goto LABEL_7;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_6;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("Packed10 format not fully implemented yet\n");
    }

    goto LABEL_14;
  }

  v2 = *(result + 624) & 0xFFFFFF3F;
LABEL_7:
  *(result + 624) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if (a2 >= 11)
    {
      if (a2 < 12)
      {
        v2 = *(result + 628) | 0xC0;
        goto LABEL_7;
      }

      if ((a2 - 12) < 2)
      {
        ZinAssertImpl("E4M3 or E5M2 format not supported");
      }

      if (a2 == 14 || a2 == 17)
      {
        ZinAssertImpl("Src2 Int32,Uint32 not supported for architecture");
      }

LABEL_17:
      ZinAssertImpl("Invalid Dma Format");
    }

LABEL_6:
    v2 = *(result + 628) & 0xFFFFFF3F | 0x40;
    goto LABEL_7;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_6;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("Packed10 format not fully implemented yet\n");
    }

    goto LABEL_17;
  }

  v2 = *(result + 628) & 0xFFFFFF3F;
LABEL_7:
  *(result + 628) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("packed10 format not fully implemented yet");
        }

LABEL_13:
        ZinAssertImpl("Invalid tensor format");
      }

      goto LABEL_8;
    }

LABEL_9:
    v2 = *(result + 672) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 672) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 672) | 0xC0;
LABEL_10:
  *(result + 672) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 700) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 700) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 700) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 700) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 700) & 0xFFFFF8FF;
LABEL_12:
      *(result + 700) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 468), 5);
  *(a1 + 624) = *(a1 + 624) & 0x7FFFFFF | (result << 27);
  return result;
}

uint64_t ZinAneTd<10u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 700) = *(result + 700) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 704) = a4 | (a3 << 16);
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 624) = *(a1 + 624) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src1SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 624) = *(result + 624) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src2SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 628) = *(result + 628) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 652) = *(a1 + 652) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 656) = *(a1 + 656) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 992) + 356), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 992) + 352), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 660) = *(a1 + 660) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 664) = *(a1 + 664) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 992) + 368), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 668) = *(a1 + 668) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 484), 5);
  *(a1 + 628) = *(a1 + 628) & 0x7FFFFFF | (result << 27);
  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 624) & 0xFDF80FFF;
  *(result + 624) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 624) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 628) & 0xFDF80FFF;
  *(result + 628) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 628) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 672) & 0xFDF80FFF;
  *(result + 672) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 672) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 700) = *(result + 700) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 708) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<10u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = *(result + 816) & 0xFFFFFFF8 | 2;
      }

      else
      {
        v2 = *(result + 816) & 0xFFFFFFF8 | 4;
      }

      goto LABEL_14;
    }

    if (a2 == 6)
    {
      v2 = *(result + 816) & 0xFFFFFFF8 | 5;
      goto LABEL_14;
    }

    if (a2 == 7)
    {
      ZinAssertImpl("Transposed convolution is not supported");
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = *(result + 816) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 816) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      v2 = *(result + 816) & 0xFFFFFFF8;
LABEL_14:
      *(result + 816) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 816) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 816) | 8;
LABEL_7:
      *(result + 816) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 816) = *(result + 816) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 812) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 812) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 812) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 812) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = 32;
    }

    else
    {
      v5 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = 64;
      goto LABEL_10;
    case 3:
      v5 = 192;
LABEL_10:
      *(result + 4 * a3 + 68) = *(result + 4 * a3 + 68) & 0xFFFFFF0F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 132) = *(result + 132) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 116) = *(result + 116) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 148) = *(result + 148) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 164) = *(result + 164) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 568), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 100) = *(a1 + 4 * a3 + 100) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 560), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 84) = *(a1 + 4 * a3 + 84) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 3)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v3 = 0;
        v4 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_20;
      }

      if (!a3)
      {
        v3 = 0;
        v4 = 4;
        goto LABEL_14;
      }
    }

LABEL_15:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 <= 3)
  {
    if (!a3)
    {
      v4 = 8;
      v3 = 0x40000;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (a2 != 4)
  {
    if (a2 == 6)
    {
      ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
    }

    if (a2 == 9)
    {
      ZinAssertImpl("Platform doesn't support constant padding-mode", a2, a3);
    }

LABEL_20:
    ZinAssertImpl("Invalid padding mode: %d", a2);
  }

  if (a3)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = 12;
LABEL_14:
  *(result + 620) = *(result + 620) & 0xFFFFFFF3 | v4;
  *(result + 816) = *(result + 816) & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 812) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 812) | 0x10000;
  }

  *(result + 812) = v2;
  return result;
}

void ZinAneTd<10u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, char a5)
{
  v7 = a3;
  if (a2[1])
  {
    if (*(a4 + 23) >= 0)
    {
      v10 = *(a4 + 23);
    }

    else
    {
      v10 = a4[1];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v10 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      memmove(p_p, v12, v10);
    }

    strcpy(p_p + v10, "_actlut");
    ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 5472, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[2])
  {
    if (*(a4 + 23) >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = a4[1];
    }

    v14 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v13 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a4 + 23) >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = *a4;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, "_pallut");
    ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 5468, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[3])
  {
    if (*(a4 + 23) >= 0)
    {
      v16 = *(a4 + 23);
    }

    else
    {
      v16 = a4[1];
    }

    v17 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v16 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(a4 + 23) >= 0)
      {
        v18 = a4;
      }

      else
      {
        v18 = *a4;
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, "_scale");
    ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 5464, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[4])
  {
    if (*(a4 + 23) >= 0)
    {
      v19 = *(a4 + 23);
    }

    else
    {
      v19 = a4[1];
    }

    v20 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v19 + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a4 + 23) >= 0)
      {
        v21 = a4;
      }

      else
      {
        v21 = *a4;
      }

      memmove(v20, v21, v19);
    }

    strcpy(v20 + v19, "_bias");
    ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 5460, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68F20B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<10u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFF3 | 8;
  result[203] = result[203] & 0xFFF9FFFF | 0x40000;
  v3 = result[30] & 0x3F | (a3 << 6);
  result[29] |= 1u;
  result[30] = v3;
  return result;
}

_DWORD *ZinAneTd<10u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFFC | 2;
  result[203] = result[203] & 0xFFE7FFFF | 0x100000;
  v3 = result[34] & 0x3F | (a3 << 6);
  result[33] |= 1u;
  result[34] = v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 152) & 0x3F | (a3 << 6);
  *(result + 148) |= 1u;
  *(result + 152) = v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 168) & 0x3F | (a3 << 6);
  *(result + 164) |= 1u;
  *(result + 168) = v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 620) = *(result + 620) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 304) = *(result + 304) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 304) = *(result + 304) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 304) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = *(i + 4);
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 != 4 || (a3 & 1) != 0)
        {
          continue;
        }

        v5 = 16;
        goto LABEL_13;
      }

      if ((a3 & 1) == 0)
      {
        v5 = 32;
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v5 = 64;
        goto LABEL_13;
      }

      if (v4 == 2)
      {
        v5 = 128;
LABEL_13:
        *(result + 304) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<10u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 724) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 724) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 724) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 724) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 724) = v2;
      return;
    case 4:
      v2 = *(result + 724) & 0xFFF8FFFF | 0x40000;
      goto LABEL_16;
    case 5:
      v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v3)
      {
        ZinAneTd<8u>::SetPEIndexMode(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      break;
  }
}

uint64_t ZinAneTd<10u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 724) = *(result + 724) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 4);
      if (v3 == 2)
      {
        break;
      }

      if (v3 == 1)
      {
        v4 = 0x1000000;
LABEL_6:
        *(result + 724) |= v4;
      }

      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    v4 = 0x2000000;
    goto LABEL_6;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 748) = *(a1 + 748) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 992) + 600);
        v4 = 2;
        break;
      case 4:
        *(a1 + 748) = *(a1 + 748) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 992) + 600);
        v4 = 3;
        break;
      case 5:
        return 0;
      default:
        return 1;
    }

    return CheckRegValueRange(v4, v3);
  }

  if (!a2)
  {
    *(a1 + 748) &= 0xFFFFFFE3;
    v3 = (*(a1 + 992) + 600);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 748) = *(a1 + 748) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 992) + 600);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 748) = *(a1 + 748) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 992) + 600));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 748) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 748) | 0x10000;
  }

  *(result + 748) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 748) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 748) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 748) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 748) & 0xFFF3FFFF;
  }

  *(result + 748) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 748) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 748) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 748) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 748) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 748) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 748) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 748) | 0x1C0;
  }

  else
  {
    v2 = *(result + 748) & 0xFFFFFE3F;
  }

  *(result + 748) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 304) = *(result + 304) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 676) = *(a1 + 676) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 680) = *(a1 + 680) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 392), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 684) = *(a1 + 684) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 400), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 688) = *(a1 + 688) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 408), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 692) = *(a1 + 692) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<10u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 672) = *(result + 672) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 672) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 672) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 672) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 672) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 672) = v4;
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<10u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 440);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 440) & 0xFFFFFFDF;
        v7 = 272;
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

LABEL_32:
      ZinAssertImpl("Invalid format provided");
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 11)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v8 = *(a1 + 440) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 440) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 440) & 0xFFFFFECF | 0x10;
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 3)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 440) | 0x30;
  }

LABEL_20:
  *(a1 + 440) = v8;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<10u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 440) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 440) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 440) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 440) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 440) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 440) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 440) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 440) | 0x3000;
LABEL_11:
      *(a1 + 440) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 440) = *(a1 + 440) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 336) = *(result + 336) & 0xFFFFFF0F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 32;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = -64;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 64;
    }

    else
    {
      v5 = 32;
    }

    if (!a4)
    {
      v5 = -32;
    }
  }

  v6 = 2;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (!a3)
  {
    v6 = 14;
  }

LABEL_31:
  *(result + 344) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 32;
    }

    else
    {
      v4 = 224;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 64;
      goto LABEL_10;
    case 3:
      v4 = 192;
LABEL_10:
      *(result + 340) = *(result + 340) & 0xFFFFFF0F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 32;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = -64;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 64;
    }

    else
    {
      v5 = 32;
    }

    if (!a4)
    {
      v5 = -32;
    }
  }

  v6 = 2;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (!a3)
  {
    v6 = 14;
  }

LABEL_31:
  *(result + 348) = v6 | v5;
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 364) = *(a1 + 364) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 360) = *(a1 + 360) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 368) = *(a1 + 368) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 372) = *(a1 + 372) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<10u>::SetTileDmaSrc1WrapCfg(a1, a4);
  *(a1 + 520) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 344) = *(a1 + 344) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 4974, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<10u>::SetTileDmaSrc1WrapCfg(a1, a3);
}

void sub_1A68F311C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == 1)
    {
      ZinAssertImpl("An Src1BaseAddr offset can not be set for this target.");
    }

    ZinAssertImpl("Expected a symbol name for Src1BaseAddrLo");
  }

  v4 = (a1 + 8);

  return ZinAneTdHw_v10::AddRelocInfo(v4, a2, 4932, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 336) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 336) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 336) & 0xCFFFFFFF;
  }

  *(result + 336) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 340) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 340) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 340) & 0xCFFFFFFF;
  }

  *(result + 340) = v2;
  return result;
}

unint64_t ZinAneTd<10u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 992) + 592));
  *(a1 + 336) = *(a1 + 336) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<10u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 992) + 592));
  *(a1 + 340) = *(a1 + 340) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  if (GetProgrammedDependencyOffsetAndDimension(a2, &v7, &v8))
  {
    ZinAssertImpl("Failed to get dependency offset or dimension.");
  }

  v3 = *(a1 + 528) & 0xFFFFFFFC;
  v4 = v3 | 2;
  if (v8 == 1)
  {
    v3 |= 1u;
  }

  if (v8 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(a1 + 528) = v5;
  result = ZinCodegenUtil::ConvertInt32ToCustomUnsignedType(v7, 0x1DuLL);
  *(a1 + 528) = *(a1 + 528) & 0x80000003 | (4 * (result & 0x1FFFFFFF));
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  if (GetProgrammedDependencyOffsetAndDimension(a2, &v7, &v8))
  {
    ZinAssertImpl("Failed to get dependency offset or dimension");
  }

  v3 = *(a1 + 532) & 0xFFFFFFFC;
  v4 = v3 | 2;
  if (v8 == 1)
  {
    v3 |= 1u;
  }

  if (v8 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(a1 + 532) = v5;
  result = ZinCodegenUtil::ConvertInt32ToCustomUnsignedType(v7, 0x1DuLL);
  *(a1 + 532) = *(a1 + 532) & 0x80000003 | (4 * (result & 0x1FFFFFFF));
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 456);
  *(result + 456) = v4 | 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = v4 & 0xFFFFCFFE | 0x2001;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v5 = v4 | 0x3001;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = v4 & 0xFFFFCFFE | 0x1001;
        goto LABEL_10;
      }

LABEL_18:
      ZinAssertImpl("Invalid Lossy Mode", a2, a3);
    }

    v5 = v4 & 0xFFFFCFFE | 1;
  }

LABEL_10:
  *(result + 456) = v5;
  if (a3 == 2)
  {
    v6 = v5 | 4;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(result + 456) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 456) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 460) = *(a1 + 460) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 992) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 464) = *(a1 + 464) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<10u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v10::AddRelocInfo((a1 + 8), a2, 4944, a3, 1, 1, 0, 0);
  *(a1 + 456) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 416) = vsli_n_s32(*(a1 + 416), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 424) = *(a1 + 424) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<10u>::SetTileDmaSrc2FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 0x11)
    {
      if (((1 << v4) & 0x27000) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << v4) & 0x600) != 0)
      {
        v7 = *(a1 + 444);
        v8 = 304;
        goto LABEL_18;
      }

      if (v4 == 11)
      {
        goto LABEL_15;
      }
    }

    if (v4 != 7)
    {
      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

      goto LABEL_31;
    }

    v7 = *(a1 + 444) & 0xFFFFFFDF;
    v8 = 272;
LABEL_18:
    v6 = v7 | v8;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 444) & 0xFFFFFECF;
      goto LABEL_19;
    }

    if (v4 != 5)
    {
      v6 = *(a1 + 444) & 0xFFFFFECF | 0x10;
      goto LABEL_19;
    }

LABEL_15:
    v6 = *(a1 + 444) & 0xFFFFFECF | 0x100;
    goto LABEL_19;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_20;
  }

  if (v4 != 3)
  {
LABEL_31:
    ZinAssertImpl("Invalid format provided");
  }

  v6 = *(a1 + 444) | 0x30;
LABEL_19:
  *(a1 + 444) = v6;
LABEL_20:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<10u>::SetTileDmaSrc2MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2FormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 444) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 444) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 444) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 444) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2MemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 444) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 444) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 444) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 444) | 0x3000;
LABEL_11:
      *(a1 + 444) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 444) = *(a1 + 444) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<10u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 628) = *(a1 + 628) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<10u>::SetTileDmaSrc2WrapCfg(a1, a4);
  *(a1 + 524) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 348) = *(a1 + 348) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 4975, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<10u>::SetTileDmaSrc2WrapCfg(a1, a3);
}

void sub_1A68F3A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t ZinAneTd<10u>::SetTileDmaSrc2PixelOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, *(a1 + 504), v5);
  *(a1 + 504) = result;
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 472);
  *(result + 472) = v4 | 1;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = v4 & 0xFFFFCFFE | 0x2001;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_18;
      }

      v5 = v4 | 0x3001;
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v5 = v4 & 0xFFFFCFFE | 0x1001;
        goto LABEL_10;
      }

LABEL_18:
      ZinAssertImpl("Invalid Lossy Mode", a2, a3);
    }

    v5 = v4 & 0xFFFFCFFE | 1;
  }

LABEL_10:
  *(result + 472) = v5;
  if (a3 == 2)
  {
    v6 = v5 | 4;
  }

  else
  {
    if (a3 != 1)
    {
      ZinAssertImpl("Unsupported macro block size", a2);
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(result + 472) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 472) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 476) = *(a1 + 476) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 992) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 480) = *(a1 + 480) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<10u>::SetTileDmaSrc2MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v10::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 472) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 428) = vsli_n_s32(*(a1 + 428), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 436) = *(a1 + 436) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<10u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 920);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 920) & 0xFFFFFFDF;
        v7 = 272;
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        ZinAssertImpl("Packed10 format not supported");
      }

LABEL_32:
      ZinAssertImpl("Invalid format provided");
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 11)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v8 = *(a1 + 920) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 920) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 920) & 0xFFFFFECF | 0x10;
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v4 != 3)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 920) | 0x30;
  }

LABEL_20:
  *(a1 + 920) = v8;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<10u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<10u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 920) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 920) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 920) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 920) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 920) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 920) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 920) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 920) | 0x3000;
LABEL_11:
      *(a1 + 920) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 672) = *(a1 + 672) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 992) + 584), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 920) = *(a1 + 920) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<10u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 584), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 672) = *(a1 + 672) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 672) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 864) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 864) = v4;
  *(result + 672) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 864) & 0xFFFFFF0F | 0x30;
    }

    else
    {
      v2 = *(result + 864) | 0xF0;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 864) & 0xFFFFFF0F | 0xD0;
LABEL_8:
      *(result + 864) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 884) = *(a1 + 884) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 880) = *(a1 + 880) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 888) = *(a1 + 888) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<10u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 992) + 512), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 892) = *(a1 + 892) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 920) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 920) = v2;
  *(result + 920) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstCropOffset(uint64_t result, int a2, __int16 a3)
{
  *(result + 944) = a3;
  if (a2)
  {
    ZinAssertImpl("Invalid Crop Offset X for architecture", v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<10u>::SetTileDmaDstWrapCfg(a1, a4);
  *(a1 + 916) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstWrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 868) = *(a1 + 868) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<10u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v10::AddRelocInfo((a1 + 8), &__p, 5197, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<10u>::SetTileDmaDstWrapCfg(a1, a3);
}

void sub_1A68F4480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<10u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<10>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 10]");
  }
}

uint64_t ZinAneTd<10u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == 1)
    {
      ZinAssertImpl("An DstBaseAddr offset can not be set for this target.");
    }

    ZinAssertImpl("Expected a symbol name for Src1BaseAddrLo");
  }

  v4 = (a1 + 8);

  return ZinAneTdHw_v10::AddRelocInfo(v4, a2, 5186, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<10u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 936) = *(a1 + 936) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 992) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 940) = *(a1 + 940) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<10u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 308) = *(result + 308) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 816) = *(result + 816) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 816) | 0x80000;
  }

  else
  {
    v2 = *(result + 816) & 0xFFF7FFFF;
  }

  *(result + 816) = v2;
  return result;
}

BOOL ZinAneTd<10u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 688), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 60) = *(a1 + 60) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 992) + 680), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 64) = *(a1 + 64) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<10u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 832) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 832) | 0x100000;
LABEL_7:
      *(result + 832) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 832) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 832) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 832) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 832) & 0xFFFFCFFF;
LABEL_10:
    *(result + 832) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 812) = *(result + 812) & 0xFFFFFBFF | v2;
  if (a2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(result + 44) = *(result + 44) & 0xFFFFFFEF | v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 812) = *(result + 812) & 0xFFFFFEFF | v2;
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(result + 44) = *(result + 44) & 0xFFFFFFDF | v3;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 812) = *(result + 812) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 14)
  {
    if (a2 - 7 >= 8)
    {
      if (a2 && a2 != 3)
      {
        goto LABEL_10;
      }

LABEL_13:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }

LABEL_9:
    v2 = 4;
    goto LABEL_10;
  }

  if (a2 > 0x20)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0xF800000) != 0 || ((1 << a2) & 0x780000) != 0)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1F0000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (a2 - 15 < 4)
  {
    ZinAssertImpl("Invalid kernel format");
  }

LABEL_10:
  *(result + 812) = *(result + 812) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
{
  v2 = 128;
  if (a2 > 10)
  {
    if (a2 <= 0x20)
    {
      if (((1 << a2) & 0x780000) != 0)
      {
        v2 = 64;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x7800000) != 0)
      {
        v2 = 96;
        goto LABEL_15;
      }

      if (((1 << a2) & 0x1F0000000) != 0)
      {
        goto LABEL_18;
      }
    }

    if (a2 - 11 >= 4)
    {
      if (a2 - 15 < 4)
      {
        ZinAssertImpl("Invalid kernel format");
      }
    }

    else
    {
      v2 = 32;
    }
  }

  else
  {
    if (a2 - 7 < 4)
    {
      v2 = 16;
      goto LABEL_15;
    }

    if (!a2 || a2 == 3)
    {
LABEL_18:
      ZinAssertImpl("Unknown kernel format in codegen\n");
    }
  }

LABEL_15:
  *(result + 812) = *(result + 812) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 836) = *(result + 836) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<10u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a2 = 0x10000;
    }

    else
    {
      v3 = *a3;
      v4 = *(a3 + 8);
      if (*a3 != v4)
      {
        while (*v3 != a2)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 == v4)
      {
LABEL_7:
        ZinAssertImpl("Error: illegal non-linear mode\n");
      }

      a2 = 0x20000;
    }
  }

  *(result + 816) = *(result + 816) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<10u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 26;
  if (a3)
  {
    v10 = -((a2 >> 16) & 0x1F0000) & 0x1F0000 | v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 15360;
  }

  *(result + 816) = *(result + 816) & 0xFFFFBFFF | v9;
  *(result + 828) = v10 | *(result + 828) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<10u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 36;
  v10 = (a2 >> 16) & 0x1F0000 | v8;
  if ((a3 & 1) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  *(result + 816) = *(result + 816) & 0xFFFFFFEF | v9;
  *(result + 824) = v10 | *(result + 824) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<10u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
{
  result = *a2;
  if (*a2)
  {
    _ZF = (a3 & 0x100000000) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v6 = 0;
  }

  else
  {
    _S8 = *&a3;
    result = ZinIrKernel::GetWeightFormat(result);
    if (result == 4)
    {
      __asm { FCVT            H0, S8 }

      LOWORD(v8) = _H0;
    }

    else
    {
      if (result != 2 && result != 1)
      {
        ZinAssertImpl("Error: Invalid kernel format");
      }

      v8 = _S8;
    }

    *(a1 + 820) = v8;
    v6 = 64;
  }

  *(a1 + 816) = *(a1 + 816) & 0xFFFFFFBF | v6;
  return result;
}