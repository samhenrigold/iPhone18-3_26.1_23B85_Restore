BOOL ZinAneTd<26u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 532) = *(a1 + 532) & 0xFFFFFF0F | (16 * (v4 & 0xF));
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 420) = *(result + 420) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1E4M3Overflow(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 == 1)
    {
      v2 = *(result + 532) | 0x1000000;
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v2 = *(result + 532) & 0xFEFFFFFF;
    }

    *(result + 532) = v2;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 420) = *(result + 420) & 0xFFFFFF0F | v4;
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
  *(result + 428) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 424) = *(result + 424) & 0xFFFFFF0F | v4;
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
  *(result + 432) = v6 | v5;
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 456) = *(a1 + 456) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 480), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 452) = *(a1 + 452) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 460) = *(a1 + 460) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 464) = *(a1 + 464) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 428) = *(a1 + 428) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 588) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 4970, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 428) = *(a1 + 428) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A690AED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return ZinAneTdHw_v26::AddRelocInfo(v4, a2, 4934, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 420) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 420) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 420) & 0xCFFFFFFF;
  }

  *(result + 420) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 424) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 424) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 424) & 0xCFFFFFFF;
  }

  *(result + 424) = v2;
  return result;
}

unint64_t ZinAneTd<26u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1312) + 640));
  *(a1 + 420) = *(a1 + 420) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<26u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1312) + 640));
  *(a1 + 424) = *(a1 + 424) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ***ZinAneTd<26u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 596) = result[3];
  }

  return result;
}

uint64_t ***ZinAneTd<26u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 600) = result[3];
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 548);
  *(result + 548) = v4 | 1;
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
  *(result + 548) = v5;
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

  *(result + 548) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 548) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 552) = *(a1 + 552) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1312) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 556) = *(a1 + 556) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<26u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v26::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 548) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 508) = vsli_n_s32(*(a1 + 508), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 516) = *(a1 + 516) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1DoubleRateMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 420) = v2 & 0x80000000 | *(result + 420) & 0x7FFFFFFF;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<26u>::SetTileDmaSrc2FormatMode(a1, a2);
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
        v7 = *(a1 + 536);
        v8 = 45056;
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

    v7 = *(a1 + 536) & 0xFFFFDFFF;
    v8 = 36864;
LABEL_18:
    v6 = v7 | v8;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 536) & 0xFFFF4FFF;
      goto LABEL_19;
    }

    if (v4 != 5)
    {
      v6 = *(a1 + 536) & 0xFFFF4FFF | 0x1000;
      goto LABEL_19;
    }

LABEL_15:
    v6 = *(a1 + 536) & 0xFFFF4FFF | 0x8000;
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

  v6 = *(a1 + 536) | 0x3000;
LABEL_19:
  *(a1 + 536) = v6;
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

  return ZinAneTd<26u>::SetTileDmaSrc2MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 536) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 536) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 536) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 536) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 536) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 536) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 536) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 536) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 536) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 536) = v4;
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 784) = *(a1 + 784) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 424) = *(result + 424) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2E4M3Overflow(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 == 1)
    {
      v2 = *(result + 536) | 0x1000000;
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v2 = *(result + 536) & 0xFEFFFFFF;
    }

    *(result + 536) = v2;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 432) = *(a1 + 432) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 592) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 432) = *(a1 + 432) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 4971, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 432) = *(a1 + 432) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A690B7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 564);
  *(result + 564) = v4 | 1;
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
  *(result + 564) = v5;
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

  *(result + 564) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 564) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 568) = *(a1 + 568) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1312) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 572) = *(a1 + 572) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<26u>::SetTileDmaSrc2MetaData(int32x2_t *a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v26::AddRelocInfo(&a1[1], a2, 4948, a3, 1, 1, 0, 0);
  a1[70].i32[1] &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  a1[65] = vsli_n_s32(a1[65], __PAIR64__(a5, a4), 7uLL);
  a1[66].i32[0] = a1[66].i32[0] & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc2DoubleRateMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 424) = v2 & 0x80000000 | *(result + 424) & 0x7FFFFFFF;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<26u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 1156);
        v7 = 45056;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 1156) & 0xFFFFDFFF;
        v7 = 36864;
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
      v8 = *(a1 + 1156) & 0xFFFF4FFF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 1156) & 0xFFFF4FFF | 0x8000;
      goto LABEL_20;
    }

    v8 = *(a1 + 1156) & 0xFFFF4FFF | 0x1000;
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

    v8 = *(a1 + 1156) | 0x3000;
  }

LABEL_20:
  *(a1 + 1156) = v8;
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

  return ZinAneTd<26u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<26u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 1156) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 1156) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 1156) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 1156) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 1156) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 1156) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 1156) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 1156) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 1156) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 1156) = v4;
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 632), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 848) = *(a1 + 848) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1312) + 632), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 1156) = *(a1 + 1156) & 0xFFFFFF0F | (16 * (v5 & 0xF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 848) = *(a1 + 848) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 848) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 1092) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 1092) = v4;
  *(result + 848) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = 32;
    }

    else
    {
      v2 = 224;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = 192;
LABEL_8:
      *(result + 1092) = *(result + 1092) & 0xFFFFFF0F | v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 544), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 1120) = *(a1 + 1120) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 536), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 1116) = *(a1 + 1116) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 1124) = *(a1 + 1124) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<26u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1312) + 560), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 1128) = *(a1 + 1128) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 1156) & 0xDFFFFFFF | ((*a2 == 0) << 29);
  *(result + 1156) = v2;
  v3 = v2 & 0xEFFFFFFF | ((a2[1] == 0) << 28);
  *(result + 1156) = v3;
  v4 = v3 & 0xBFFFFFFF | ((a2[2] == 0) << 30);
  *(result + 1156) = v4;
  *(result + 1156) = v4 & 0x7FFFFFFF | ((a2[3] == 0) << 31);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 1096) = *(a1 + 1096) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 1152) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5199, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 1096) = *(a1 + 1096) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A690C190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<26u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<26>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 26]");
  }
}

uint64_t ZinAneTd<26u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return ZinAneTdHw_v26::AddRelocInfo(v4, a2, 5188, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<26u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 1176) = *(a1 + 1176) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1312) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 1180) = *(a1 + 1180) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaDstCompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 1164);
  *(result + 1164) = v4 | 1;
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
  *(result + 1164) = v5;
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

  *(result + 1164) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 1164) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

double ZinAneTd<26u>::SetTileDmaDstMetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v26::AddRelocInfo((a1 + 8), a2, 5194, a3, 1, 1, 0, 0);
  *(a1 + 1164) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 1140) = vsli_n_s32(*(a1 + 1140), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 1148) = *(a1 + 1148) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1216) = *(result + 1216) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreFlush(uint64_t result, int a2, __int16 a3)
{
  *(result + 1216) = *(result + 1216) & 0xFFFFFFFE | a2;
  *(result + 1252) = a3;
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreTaskSync(uint64_t result, int a2, int a3)
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

  *(result + 1216) = v3 | v4 | *(result + 1216) & 0xFFFFFFF3;
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreEarlyTermination(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8, __int16 a9, __int16 a10, char a11, __int16 a12, char a13)
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

  *(result + 1216) = v14 | v13 | v15 | v16 | v17 | *(result + 1216) & 0xFFFFFE0F;
  if (a3)
  {
    *(result + 1248) = a8;
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

  *(result + 1250) = a9;
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
  *(result + 1256) = a11;
  if ((a5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(result + 1258) = a13;
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreTelemetryBackOff(uint64_t result, int a2, char a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v6 = *(result + 1260) & 0xFFFFFFFE | a2;
  if (a2)
  {
    v6 = (16 * (a3 & 0xF)) | (a4 << 8) | (a5 << 16) | (a6 << 24) | *(result + 1260) & 0xE | a2 & 0xF;
  }

  *(result + 1260) = v6;
  return result;
}

uint64_t ZinAneTd<26u>::SetCacheDmaPreFootprintLimiter(uint64_t result, int a2, __int16 a3, unsigned __int16 a4)
{
  if (a2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 1216) & 0xFFFFFDFF | v4;
  *(result + 1216) = v5;
  if (a2)
  {
    *(result + 1216) = v5 | (a4 << 16);
    *(result + 1244) = *(result + 1244) & 0xF001FFFF | ((a3 & 0x7FF) << 17);
  }

  return result;
}

void ZinAneTd<26u>::SetCacheDmaPreDSIDAndSize(uint64_t a1, unsigned __int16 *a2, int a3)
{
  *(a1 + 1240) = *(a1 + 1240) & 0xC000007F | ((a3 & 0x7FFFFF) << 7);
  if (*(a2 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5698, *a2, 0, 0, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A690C704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<26u>::SetCacheDmaPrePause(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (a3)
  {
    v7 = 0x20000;
  }

  else
  {
    v7 = 0;
  }

  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v7 = 0;
    if (a5)
    {
      if ((a4 & 1) == 0)
      {
        ZinAssertImpl("Pause Duration has to be 0 if nothing to pause on", v5, v6);
      }
    }
  }

  if (a2)
  {
    v8 = 0x40000;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  *(result + 1264) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(result + 1264) & 0xFFF80000;
  return result;
}

BOOL ZinAneTd<26u>::SetCacheDmaPreThrottle(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6)
{
  if (a3)
  {
    v7 = 0x200000;
  }

  else
  {
    v7 = 0;
  }

  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v7 = 0;
    if (a5)
    {
      if ((a4 & 1) == 0)
      {
        ZinAssertImpl("Throttle Duration has to be 0 if nothing to throttle on");
      }
    }
  }

  if (a2)
  {
    v8 = 0x400000;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = 0x100000;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 1268) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(a1 + 1268) & 0xFF8F0000;
  v11 = 0;
  result = ZinCodegenUtil::ValueToRegister(a6, (*(a1 + 1312) + 744), &v11);
  if (!result)
  {
    ZinAssertImpl("Illegal Throttle Rate");
  }

  *(a1 + 1268) = *(a1 + 1268) & 0xFFF8FFFF | ((v11 & 7) << 16);
  return result;
}

BOOL ZinAneTd<26u>::SetCacheDmaPrePrefetchRate(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 752), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal Prefetch Rate");
  }

  *(a1 + 1216) = *(a1 + 1216) & 0xFFFF1FFF | ((v4 & 7) << 13);
  return result;
}

uint64_t ZinAneTd<26u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 380) = *(result + 380) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetDoubleInt8Enable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1036) = *(result + 1036) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 1036) = *(result + 1036) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 1036) | 0x80000;
  }

  else
  {
    v2 = *(result + 1036) & 0xFFF7FFFF;
  }

  *(result + 1036) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::Set1DWinogradMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 380) = *(result + 380) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<26u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 52) |= 0x400u;
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 736), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 76) = *(a1 + 76) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1312) + 728), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 80) = *(a1 + 80) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<26u>::SetPaletteBlockSize(uint64_t result, char a2)
{
  *(result + 52) = *(result + 52) & 0xFFFFC7FF | ((a2 & 7) << 11);
  *(result + 1028) = *(result + 1028) & 0xF1FFFFFF | ((a2 & 7) << 25);
  return result;
}

uint64_t ZinAneTd<26u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 1052) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 1052) | 0x100000;
LABEL_7:
      *(result + 1052) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1052) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 1052) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1052) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 1052) & 0xFFFFCFFF;
LABEL_10:
    *(result + 1052) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xFFFFFBFF | v2;
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

uint64_t ZinAneTd<26u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xFFFFFEFF | v2;
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

uint64_t ZinAneTd<26u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  if (a2 > 14)
  {
    if (a2 <= 0x20)
    {
      if (((1 << a2) & 0xF800000) != 0 || ((1 << a2) & 0x780000) != 0)
      {
        goto LABEL_9;
      }

      if (((1 << a2) & 0x1F0000000) != 0)
      {
        goto LABEL_15;
      }
    }

    if (a2 - 15 >= 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    goto LABEL_10;
  }

  if (a2 - 7 < 8)
  {
LABEL_9:
    v4 = 4;
    goto LABEL_10;
  }

  if (!a2 || (v4 = 0, a2 == 3))
  {
LABEL_15:
    ZinAssertImpl("Unknown kernel format in codegen\n", v2, v3);
  }

LABEL_10:
  *(result + 1028) = *(result + 1028) & 0xFFFFFFFB | v4;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
{
  v4 = 128;
  if (a2 > 10)
  {
    if (a2 <= 0x20)
    {
      if (((1 << a2) & 0x780000) != 0)
      {
        v4 = 64;
        goto LABEL_18;
      }

      if (((1 << a2) & 0x7800000) != 0)
      {
        v4 = 96;
        goto LABEL_18;
      }

      if (((1 << a2) & 0x1F0000000) != 0)
      {
        goto LABEL_19;
      }
    }

    if (a2 - 15 >= 4)
    {
      v4 = 128;
    }

    else
    {
      v4 = 48;
    }

    if (a2 - 11 < 4)
    {
      v4 = 32;
    }
  }

  else
  {
    if (a2 - 7 < 4)
    {
      v4 = 16;
      goto LABEL_18;
    }

    if (!a2 || a2 == 3)
    {
LABEL_19:
      ZinAssertImpl("Unknown kernel format in codegen\n", v2, v3);
    }
  }

LABEL_18:
  *(result + 1028) = *(result + 1028) & 0xFFFFFF0F | v4;
  return result;
}

uint64_t ZinAneTd<26u>::SetMultiPaletteEnable(uint64_t result)
{
  *(result + 1032) |= 1u;
  *(result + 56) |= 1u;
  return result;
}

unint64_t ZinAneTd<26u>::SetPaletteGroupSize(uint64_t a1, unint64_t a2)
{
  *(a1 + 1032) = *(a1 + 1032) & 0xFFFFFFC1 | (2 * (ZinLog2OfPow2(a2) & 0x1F));
  result = ZinLog2OfPow2(a2);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFC1 | (2 * (result & 0x1F));
  return result;
}

unint64_t ZinAneTd<26u>::SetMultiPaletteSizeOneLut(uint64_t a1, unint64_t a2)
{
  result = ZinLog2OfPow2(a2);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFC3F | ((result & 0xF) << 6);
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelAsymQuantEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDetectZeros(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 1056) = *(result + 1056) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<26u>::SetQuantizationOutputZeroOffset(uint64_t result, int a2, char a3, int a4, uint64_t a5)
{
  v5 = *a5;
  v6 = *(a5 + 8);
  if (*a5 != v6)
  {
    while (*v5 != a4)
    {
      if (++v5 == v6)
      {
        return result;
      }
    }
  }

  if (v5 != v6)
  {
    if (!a2)
    {
      a3 = 0;
    }

    *(result + 1076) = a3;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
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

  *(result + 1036) = *(result + 1036) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<26u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1036) = *(result + 1036) & 0xFFFFBFFF | v9;
  *(result + 1048) = v10 | *(result + 1048) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<26u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1036) = *(result + 1036) & 0xFFFFFFEF | v9;
  *(result + 1044) = v10 | *(result + 1044) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<26u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
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

    *(a1 + 1040) = v8;
    v6 = 64;
  }

  *(a1 + 1036) = *(a1 + 1036) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<26u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 380) = *(result + 380) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = *(result + 380) & 0xFFFFFFF3;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v2 = *(result + 380) & 0xFFFFFFF3 | 4;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(result + 380) = *(result + 380) & 0xFFFFFFF3 | 4;
        *(result + 1036) |= 0x8000000u;
        break;
      case 3:
        v2 = *(result + 380) | 0xC;
        goto LABEL_13;
      case 4:
        v2 = *(result + 380) & 0xFFFFFFF3 | 8;
LABEL_13:
        *(result + 380) = v2;
        break;
    }
  }

  return result;
}

uint64_t ZinAneTd<26u>::GetNESmallSourceMode(uint64_t a1)
{
  v1 = (*(a1 + 380) >> 2) & 3;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      LOBYTE(v1) = 4;
    }

    else
    {
      LOBYTE(v1) = 3;
    }
  }

  else if (v1)
  {
    if ((*(a1 + 1039) & 8) != 0)
    {
      LOBYTE(v1) = 2;
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1;
}

int8x16_t ZinAneTd<26u>::SetKernelDmaSrcCoeffUserTag(uint64_t a1, unsigned __int8 a2)
{
  result = vorrq_s8((*(a1 + 84) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vdupq_n_s32(a2 << 16));
  *(a1 + 84) = result;
  return result;
}

uint64_t ZinAneTd<26u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 380) = *(result + 380) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = *(result + 320) & 0xFFFFFFF8 | 2;
      goto LABEL_10;
    }

    if (a2 == 12)
    {
      v4 = *(result + 320) & 0xFFFFFFF8 | 4;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src1 input format", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 320) & 0xFFFFFFF8 | 1;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 320) & 0xFFFFFFF8;
LABEL_10:
  *(result + 320) = v4;
  return result;
}

uint64_t ZinAneTd<26u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = *(result + 320) & 0xFFFFFFC7 | 0x10;
      goto LABEL_10;
    }

    if (a2 == 12)
    {
      v4 = *(result + 320) & 0xFFFFFFC7 | 0x20;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src2 input format", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 320) & 0xFFFFFFC7 | 8;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 320) & 0xFFFFFFC7;
LABEL_10:
  *(result + 320) = v4;
  return result;
}

uint64_t ZinAneTd<26u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) >= 9)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        v4 = *(result + 320) & 0xFFFFFE3F | 0x100;
        goto LABEL_3;
      }

      if (a2 == 13)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v4 = *(result + 320) & 0xFFFFFE3F | 0x40;
        goto LABEL_3;
      }

      if (a2 == 2)
      {
        v4 = *(result + 320) & 0xFFFFFE3F;
        goto LABEL_3;
      }
    }

    ZinAssertImpl("Error: Invalid output format", v2, v3);
  }

LABEL_2:
  v4 = *(result + 320) & 0xFFFFFE3F | 0x80;
LABEL_3:
  *(result + 320) = v4;
  return result;
}

BOOL ZinAneTd<26u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 216), &v4);
  if (result)
  {
    *(a1 + 372) = *(a1 + 372) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileOverlapPadReflect(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 376) = v2 & 0x80000000 | *(result + 376) & 0x7FFFFFFF;
  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 128), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 136), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 168), &v4);
  if (result)
  {
    *(a1 + 364) = *(a1 + 364) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 120), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 112), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 144), &v4);
  if (result)
  {
    *(a1 + 364) = *(a1 + 364) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 88), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 80), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 160), &v4);
  if (result)
  {
    *(a1 + 364) = *(a1 + 364) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 104), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 96), &v4);
  if (result)
  {
    *(a1 + 360) = *(a1 + 360) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 152), &v4);
  if (result)
  {
    *(a1 + 364) = *(a1 + 364) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 200), &v4);
  if (result)
  {
    *(a1 + 356) = *(a1 + 356) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 24), &v4);
  if (result)
  {
    *(a1 + 324) = *(a1 + 324) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 16), &v4);
  if (result)
  {
    *(a1 + 328) = *(a1 + 328) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 32), &v4);
  if (result)
  {
    *(a1 + 336) = *(a1 + 336) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 40), &v4);
  if (result)
  {
    *(a1 + 332) = *(a1 + 332) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 64), &v4);
  if (result)
  {
    *(a1 + 340) = *(a1 + 340) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 56), &v4);
  if (result)
  {
    *(a1 + 344) = *(a1 + 344) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 72), &v4);
  if (result)
  {
    *(a1 + 352) = *(a1 + 352) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<26u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 48), &v4);
  if (result)
  {
    *(a1 + 348) = *(a1 + 348) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 368) = *(result + 368) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<26u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 208), &v4);
  if (result)
  {
    *(a1 + 370) = v4;
  }

  return result;
}

uint64_t ZinUAneCodegenUtil::CalculateBaseAddressOffsetDueToPadding(ZinUAneCodegenUtil *this, const ZinANELayer *a2)
{
  v2 = a2;
  InputTensor = ZinIrOpLayer::GetInputTensor(this, a2);
  (*(*this + 384))(&v19, this);
  v5 = v2 != 0;
  v6 = *ZinMirL2Config::GetTileSrc(*(this + 65) + 112, v5);
  v18 = 0;
  if (ZinTensorFormatGetSizeInBytes(*(InputTensor + 104), &v18))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinUAneCodegenUtil::CalculateBaseAddressOffsetDueToPadding();
      return 0;
    }
  }

  else
  {
    L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(this + 65), v5);
    v9 = *(ZinIrSymbol::Descriptor::GetTensorDesc((L2RdSymbol + 216)) + 176);
    v10 = *(L2RdSymbol + 24);
    v11 = v19;
    v12 = v20;
    v13 = v18;
    Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
    v15 = *((*(*Hal + 16))(Hal) + 672);
    v16 = v11 * v13 + v6 % v15 * v12;
    v17 = v10 % v15;
    if (v16 > v17)
    {
      v16 += (v9 - 1) * v15 + (v9 - 1) * v15 * ((v16 + ~v17) / v15);
    }

    return (v16 + (v6 - v6 % v15) * v12);
  }

  return result;
}

uint64_t ZinIrLinearInfo::ZinIrLinearInfo(uint64_t a1, uint64_t a2, int a3)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 75);
  *result = &unk_1F19EFBC0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

void *ZinLinearLayer::ZinLinearLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, ZinIrKernel **a5)
{
  v6 = *a2;
  *a2 = 0;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  v12 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, a5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  *a1 = &unk_1F19EFBF8;
  return a1;
}

void sub_1A690E028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void ZinLinearLayer::Lower(ZinIrOpLayer *a1, ZinIrOpLayerGraph *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 11) + 16);
  if (*(a1 + 71) >= 0)
  {
    v4 = *(a1 + 71);
  }

  else
  {
    v4 = *(a1 + 7);
  }

  v5 = v31;
  std::string::basic_string[abi:ne200100](v31, v4 + 1);
  if ((v31[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v31[0].__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a1 + 71) >= 0)
    {
      v6 = a1 + 48;
    }

    else
    {
      v6 = *(a1 + 6);
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 95;
  ZinObjectNameFactory::ZinObjectNameFactory(&v30, v31);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  v7 = (*(*a1 + 40))(a1, 0);
  v8 = *(v7 + 80);
  v28[0] = *(v7 + 64);
  v28[1] = v8;
  v29 = *(v7 + 96);
  v9 = (*(*a1 + 40))(a1, 0);
  ZinIrTensor::CopyTensorMirInfo(&v27, v9);
  InputTensor = ZinIrOpLayer::GetInputTensor(a1, 0);
  v11 = *(a1 + 20);
  *(a1 + 20) = 0;
  v26 = v11;
  if (v3 >= 2)
  {
    v12 = InputTensor;
    *(&v28[0] + 1) *= v3;
    if (!SetValueAtDimension<ZinTensorDimensions>(v28, *(*(a1 + 11) + 24), 1))
    {
      v25 = *(v12 + 96);
      v13 = *(v12 + 80);
      v23 = *(v12 + 64);
      v24 = v13;
      if (!SetValueAtDimension<ZinTensorDimensions>(&v23, *(*(a1 + 11) + 24), 1))
      {
        *(&v23 + 1) = *(v12 + 72) * v3;
        v14 = *(a1 + 4);
        MemoryPools = ZinIrContext::GetMemoryPools(a1);
        (*(**(*(MemoryPools + 8) - 8) + 88))(v31);
        memset(v22, 0, sizeof(v22));
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v22, v31, &v32, 1uLL);
        DimensionOrderHint::DimensionOrderHint(&__p, 2);
        ZinBuilder::CreateReshape(v14, &v30, v22, &v23, &__p);
      }

      ZinAssertImpl("reshape fails in grouped Linear unit\n");
    }

    ZinAssertImpl("Resetting group dimension failed");
  }

  v16 = *(a1 + 4);
  v17 = ZinIrContext::GetMemoryPools(a1);
  (*(***v17 + 88))(v31);
  v23 = 0uLL;
  *&v24 = 0;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v23, v31, &v32, 1uLL);
  v18 = *((*(*a1 + 40))(a1, 0) + 104);
  v19 = v26;
  v26 = 0;
  v20 = v19;
  ZinBuilder::CreateConv(v16, &v30, &v23, v28, v18, &v20);
}

void sub_1A690E818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ZinIrKernel *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a10);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a39);
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a40, 0);
  a46 = &unk_1F19D0088;
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinLinearLayer::Clone(ZinIrCodegenStatsPerBasicBlock *a1, uint64_t *a2, const void **a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  v6 = &v17;
  std::string::basic_string[abi:ne200100](&v17, v5 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v17.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  std::string::basic_string[abi:ne200100]<0>(&v14, "linear_clone_kernel");
  v8 = std::string::append(&v14, "_xfm", 4uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v16 = v8->__r_.__value_.__r.__words[2];
  *v15 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  if (v16 >= 0)
  {
    v11 = HIBYTE(v16);
  }

  else
  {
    v11 = v15[1];
  }

  v12 = std::string::append(&v17, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v19 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1A690ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p)
  {
    (*(*__p + 16))(__p, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1AC55A070](v36, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100]((v37 - 88));
  _Unwind_Resume(a1);
}

void ZinLinearLayer::ValidateSemantics_Impl(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  (*(*a1 + 88))(v7, a1, 0);
  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("Linear layer must have only one single input.");
  }

  v6 = *(a1 + 32);
  ValidateKernelFormatSemantics((a1 + 160));
  ValidateKernelFormat((a1 + 160), a3);
  ValidateKernelQuantizationSemantics((a1 + 160));
  ValidateKernelFootprint((a1 + 160), *a2, v7, v6 + 216, a3);
  if (ZinIrKernel::GetWeightFormat(*(a1 + 160)) - 7 <= 0x14)
  {
    ValidatePaletteVectorSize((a1 + 160), *a2, v7, a3);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1A690EEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinHWEnumsUtils::DoHWKernelAndTensorFormatMatch(int a1, int a2)
{
  v3 = a2 == 2 && a1 == 2 || (a2 | a1) == 0;
  if (v3 || a1 == 1 && a2 == 1)
  {
    return 1;
  }

  return a1 == 3 && a2 == 4;
}

uint64_t ZinHWEnumsUtils::ZinIrReductionTypeToZinAtomicOpType(int a1)
{
  result = 4;
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 8)
      {
        return 5;
      }

      if ((a1 - 6) < 2)
      {
        goto LABEL_25;
      }
    }

    else
    {
      switch(a1)
      {
        case 9:
          return 6;
        case 10:
          return 7;
        case 11:
          goto LABEL_25;
      }
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 4)
      {
        return 1;
      }

      if (a1 == 5)
      {
        return 2;
      }

LABEL_25:
      ZinAssertImpl("Invalid reduction type", v1, v2);
    }

    if (a1 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    if (a1)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZinIrReductionUnitInfo::TensorDimensions(ZinIrReductionUnitInfo *this, const ZinTensorDimensions *a2, ZinTensorDimensions *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  *(a3 + 4) = *(a2 + 4);
  *a3 = v3;
  *(a3 + 1) = v4;
  v5 = *(this + 12);
  if ((v5 & 0x10) != 0)
  {
    *(a3 + 3) = 1;
    v5 = *(this + 12);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = 1;
  v5 = *(this + 12);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(a3 + 4) = 1;
    if ((*(this + 12) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(a3 + 1) = 1;
  v5 = *(this + 12);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v5)
  {
LABEL_6:
    *a3 = 1;
  }

  return 0;
}

uint64_t ZinIrOpt::ReverseCSEDuplicateNode(ZinIrOpLayerGraph *a1, uint64_t a2, ZinIrContext *this, uint64_t **a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (*(MemoryPools + 8) - *MemoryPools == 8)
  {
    v9 = **MemoryPools;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v10 = *a4;
    v11 = a4[1];
    if (*a4 == v11)
    {
      goto LABEL_17;
    }

    do
    {
      v12 = *v10;
      v29[0] = 0;
      if (v12)
      {
        (*(*this + 40))(this, 0);
        (*(*a2 + 16))(&__p, a2, 0);
        ZinIrTensor::CreateTensor();
      }

      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v36, v29);
      ++v10;
    }

    while (v10 != v11);
    v13 = v36;
    v14 = v37;
    if (v37 == v36)
    {
LABEL_17:
      LOBYTE(v16) = 1;
    }

    else
    {
      v15 = 0;
      LOBYTE(v16) = 1;
      do
      {
        if (v13[v15])
        {
          v32.n128_u64[0] = v13[v15];
          v33 = 0;
          v17 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v32);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v32, v17);
          v40[0] = this;
          v29[0] = v40;
          v29[1] = 1;
          Layer2TDMapper::SourceLayer::SourceLayer(&v30, v29);
          ZinIrOpLayerGraph::AddNode(a1, &v32, &v30, &__p);
          v18 = __p;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
          v30 = &unk_1F19C3950;
          v39 = &v31;
          std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v39);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32);
          v19 = ZinIrOpLayerGraph::AddEdge(a1, v9, v36[v15], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          v20 = *ZinIrContext::GetMemoryPools((*a4)[v15]);
          v21 = ZinIrContext::GetMemoryPools((*a4)[v15]);
          v22 = *(v21 + 8);
          if (v20 != v22)
          {
            while (*v20 != this)
            {
              if (++v20 == v22)
              {
                v20 = *(v21 + 8);
                break;
              }
            }
          }

          v23 = ZinIrContext::GetMemoryPools((*a4)[v15]);
          v16 = v19 & v18 & ZinIrOpLayerGraph::SwapEdgeSource(a1, this, v36[v15], (*a4)[v15], 0xFFFFFFFFFFFFFFFFLL, (v20 - *v23) >> 3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          v13 = v36;
          v14 = v37;
        }

        ++v15;
      }

      while (v15 < v14 - v13);
    }

    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(this);
    if (OutgoingLayers[1] == *OutgoingLayers)
    {
      v27.n128_u64[0] = this;
      v28 = 0;
      v25 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v27);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v27, v25);
      LOBYTE(v16) = v16 & ZinIrOpLayerGraph::RemoveNode(a1, &v27, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16 & 1;
}

void sub_1A690F494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a12);
  v37 = *(v35 - 136);
  if (v37)
  {
    *(v35 - 128) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrOpt::ReverseCSEDuplicateNodeFanInPattern(ZinIrOpLayerGraph *a1, uint64_t a2, char **a3, void *a4, ZinIrOpLayer *a5, ZinIrOpLayer *a6)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    goto LABEL_16;
  }

  do
  {
    v13 = *v8;
    v30[0] = 0;
    if (v13)
    {
      (*(*v13 + 40))(v13, 0);
      (*(*a2 + 16))(&__p, a2, 0);
      ZinIrTensor::CreateTensor();
    }

    std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v37, v30);
    v8 += 8;
  }

  while (v8 != v9);
  v15 = v37;
  v14 = v38;
  if (v38 - v37 != a3[1] - *a3)
  {
    ZinAssertImpl("There should be one clone layer for each fan in branch.");
  }

  if (v38 == v37)
  {
LABEL_16:
    v18 = 1;
  }

  else
  {
    v16 = 0;
    v17 = a5;
    v18 = 1;
    do
    {
      if (v15[v16])
      {
        if (!*&(*a3)[8 * v16])
        {
          ZinAssertImpl("preceding layer should not be nullptr if the corresponding clone layer exist.");
        }

        if (*a4 != a4[1] && *(*a4 + 8 * v16))
        {
          v17 = *(*a4 + 8 * v16);
        }

        v33.n128_u64[0] = v15[v16];
        v34 = 0;
        v19 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v33);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v33, v19);
        v20 = *&(*a3)[8 * v16];
        v41[0] = a6;
        v30[0] = v41;
        v30[1] = 1;
        Layer2TDMapper::SourceLayer::SourceLayer(&v31, v30);
        ZinIrOpLayerGraph::InsertNodeBetween(a1, &v33, v20, v17, &v31, 0, &__p);
        v18 = (v18 & __p);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v36);
        v31 = &unk_1F19C3950;
        v40 = &v32;
        std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v40);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33);
        v15 = v37;
        v14 = v38;
      }

      ++v16;
    }

    while (v16 < (v14 - v15) >> 3);
  }

  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  v21 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, a6, a5, v28, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v28);
  v26.n128_u64[0] = a6;
  v27 = 0;
  v22 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v26);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v26, v22);
  v23 = ZinIrOpLayerGraph::RemoveNode(a1, &v26, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v18 & v21 & v23;
}

void sub_1A690F92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 136);
  if (v38)
  {
    *(v36 - 128) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrOpt::ReverseCSE(void *a1, uint64_t a2, _BYTE *a3, int a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v14, "to_duplicate");
  v15[0] = &unk_1F19C6380;
  v15[1] = ZinIrOpt::IsView;
  v15[3] = v15;
  v16 = 0u;
  v17 = 0u;
  v18 = 1065353216;
  memset(v20, 0, sizeof(v20));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v20, v14, &v19, 1uLL);
  v5[0] = v20;
  std::string::basic_string[abi:ne200100]<0>(__p, "consumers");
  v7[0] = &unk_1F19C6380;
  v7[1] = ZinIrOpt::IsMatmult;
  v7[3] = v7;
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  memset(v13, 0, sizeof(v13));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v13, __p, &v11, 1uLL);
  v5[1] = v13;
  v21[0] = &unk_1F19CAB88;
  v21[1] = ZinIrOpt::IsQualified;
  v21[3] = v21;
  ZinOneToVariablePattern::ZinOneToVariablePattern(v12, v5, a2, 0, v21, 0);
  std::allocate_shared[abi:ne200100]<ZinOneToVariablePattern,std::allocator<ZinOneToVariablePattern>,ZinOneToVariablePattern,0>();
}

void sub_1A6911714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](&a65);
  STACK[0x588] = &a45;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  STACK[0x588] = &a49;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  STACK[0x588] = &a52;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  STACK[0x588] = &a55;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  STACK[0x588] = &a58;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  STACK[0x588] = &a61;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x588]);
  _Unwind_Resume(a1);
}

BOOL ZinIrOpt::IsQualified(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "consumers");
  ZinPattern::GetMatch(a3, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 == v12)
  {
    v7 = 0;
    if (!v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v4 = 0;
  v5 = v11;
  do
  {
    if (*v5++)
    {
      ++v4;
    }
  }

  while (v5 != v12);
  v7 = v4 > 1;
  if (v11)
  {
LABEL_9:
    v12 = v11;
    operator delete(v11);
  }

  return v7;
}

void sub_1A6912000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOpt::IsDeQuant(uint64_t a1)
{
  if (*(*(*(a1 + 8) + 88) + 8) == 119)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

uint64_t ZinIrOpt::IsBroadcast(uint64_t a1)
{
  if (*(*(*(a1 + 8) + 88) + 8) == 18)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

uint64_t ZinIrOpt::IsScaledEW(uint64_t a1)
{
  if (*(*(*(a1 + 8) + 88) + 8) == 6)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

uint64_t ZinIrOpt::IsPreScale(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(*(v1 + 88) + 8) == 2 && (v2 = *(v1 + 160)) != 0)
  {
    HasNoBiasNoWeightButSingularScale = ZinIrKernel::HasNoBiasNoWeightButSingularScale(v2, *(**(a1 + 16) + 1308));
  }

  else
  {
    HasNoBiasNoWeightButSingularScale = 0;
  }

  return HasNoBiasNoWeightButSingularScale | 0x100u;
}

uint64_t ZinIrOpt::IsConcat(uint64_t a1)
{
  if (*(*(*(a1 + 8) + 88) + 8) == 7)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

BOOL ZinIrOpt::IsSameFormat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "producers");
  ZinPattern::GetMatch(a3, __p, &v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "concat");
  SingleMatch = ZinPattern::GetSingleMatch(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "to_duplicate");
  v5 = ZinPattern::GetSingleMatch(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *((*(*v5 + 40))(v5, 0) + 104);
  v7 = *((*(*SingleMatch + 40))(SingleMatch, 0) + 104);
  v8 = v17;
  if (v7 != v6)
  {
    v12 = 0;
    if (!v17)
    {
      return v12;
    }

    goto LABEL_18;
  }

  v9 = v18;
  if (v17 == v18)
  {
    v12 = 1;
    if (!v17)
    {
      return v12;
    }

    goto LABEL_18;
  }

  v10 = v17 + 8;
  do
  {
    v11 = *((*(**(v10 - 1) + 40))(*(v10 - 1), 0) + 104);
    v12 = v11 == v6;
    v13 = v11 != v6 || v10 == v9;
    v10 += 8;
  }

  while (!v13);
  v8 = v17;
  if (v17)
  {
LABEL_18:
    v18 = v8;
    operator delete(v8);
  }

  return v12;
}

void sub_1A69122B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOpt::IsCHTranspose(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(v1 + 11) + 8) == 38 && ZinTransposeLayer::IsCHTranspose(v1);
  return v2 | 0x100u;
}

void std::vector<std::shared_ptr<ZinPattern>>::__assign_with_size[abi:ne200100]<std::shared_ptr<ZinPattern>*,std::shared_ptr<ZinPattern>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ZinPattern>>,std::shared_ptr<ZinPattern> const*,std::shared_ptr<ZinPattern> const*,std::shared_ptr<ZinPattern>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

__n128 std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19EFD88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, ZinIrOpLayer **a3)
{
  v4 = *a2;
  v5 = *a3;
  if (ZinIrOpLayer::IsIntermediate(*a3))
  {
    v6 = *(a1 + 8);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if ((*(**v7 + 8))(*v7, v4, v5))
        {
          v9 = *v7;
          std::string::basic_string[abi:ne200100]<0>(&__p, "to_duplicate");
          SingleMatch = ZinPattern::GetSingleMatch(v9, &__p);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          v11 = *v7;
          std::string::basic_string[abi:ne200100]<0>(&__p, "consumers");
          ZinPattern::GetMatch(v11, &__p, &v29);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          ZinObjectNameFactory::ZinObjectNameFactory(&__p, SingleMatch + 2);
          if (ZinIrOpt::ReverseCSEDuplicateNode(v4, &__p, SingleMatch, &v29))
          {
            ++**(a1 + 16);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(buf, &buf[1]);
          }

          __p = &unk_1F19D0088;
          if (v28 < 0)
          {
            operator delete(v26);
          }

          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }
        }

        v7 += 2;
      }

      while (v7 != v8);
    }

    v12 = *(a1 + 24);
    v14 = *v12;
    v13 = v12[1];
    if (*v12 != v13)
    {
      do
      {
        if ((*(**v14 + 8))(*v14, v4, v5))
        {
          v15 = *v14;
          std::string::basic_string[abi:ne200100]<0>(&__p, "producers");
          ZinPattern::GetMatch(v15, &__p, &v29);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          v16 = *v14;
          std::string::basic_string[abi:ne200100]<0>(&__p, "optional_mem_movements");
          ZinPattern::GetMatch(v16, &__p, v23);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          v17 = *v14;
          std::string::basic_string[abi:ne200100]<0>(&__p, "concat");
          v18 = ZinPattern::GetSingleMatch(v17, &__p);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          v19 = *v14;
          std::string::basic_string[abi:ne200100]<0>(&__p, "to_duplicate");
          v20 = ZinPattern::GetSingleMatch(v19, &__p);
          if (v27 < 0)
          {
            operator delete(__p);
          }

          ZinObjectNameFactory::ZinObjectNameFactory(&__p, v20 + 2);
          if (ZinIrOpt::ReverseCSEDuplicateNodeFanInPattern(v4, &__p, &v29, v23, v18, v20))
          {
            ++**(a1 + 16);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(v22, &v22[1]);
          }

          __p = &unk_1F19D0088;
          if (v28 < 0)
          {
            operator delete(v26);
          }

          if (v23[0])
          {
            v23[1] = v23[0];
            operator delete(v23[0]);
          }

          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }
        }

        v14 += 2;
      }

      while (v14 != v13);
    }
  }

  return 0;
}

void sub_1A69128E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0,std::allocator<ZinIrOpt::ReverseCSE(ZinIrControlFlowGraph *,ZinIrParameters const&,BOOL &,ZinIrOpt::ReverseCSEType)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error during Reverse CSE: Unable to duplicate node.", buf, 2u);
}

void *ZinTypeCastLayer::ZinTypeCastLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, &v9);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19EFE08;
  return a1;
}

void sub_1A6912B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

void *ZinIrTypeCastInfo::ZinIrTypeCastInfo(uint64_t a1, uint64_t a2)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 72);
  *result = &unk_1F19EFF68;
  *(result + 12) = a2;
  return result;
}

void sub_1A6912D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    (*(*a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1AC55A070](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_1A6913074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a9, 0);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  a19 = &unk_1F19D0088;
  if (a25 < 0)
  {
    operator delete(a20);
  }

  (*(*v44 + 16))(v44);
  _Unwind_Resume(a1);
}

BOOL ZinTypeCastLayer::IsReadDMAConversion(ZinTypeCastLayer *this)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v3 = *((*(***MemoryPools + 40))(**MemoryPools, 0) + 104);
  v4 = (*(*this + 40))(this, 0);
  return CheckValidFormatConversion(v3, *(v4 + 104), 0) == 0;
}

uint64_t ZinTypeCastLayer::IsWriteDMAConversion(ZinTypeCastLayer *this)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v3 = *((*(***MemoryPools + 40))(**MemoryPools, 0) + 104);
  v4 = (*(*this + 40))(this, 0);
  if (*(*(this + 11) + 16))
  {
    return 0;
  }

  v5 = 1;
  if (CheckValidFormatConversion(v3, *(v4 + 104), 1))
  {
    return 0;
  }

  return v5;
}

uint64_t PartitionGraph::ZinIrPartitionGraph::ZinIrPartitionGraph(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  ZinIrNgraph<unsigned long long,std::less<unsigned long long>>::ZinIrNgraph(a1);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 168) = *(a5 + 2);
    *(a1 + 152) = v9;
  }

  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v10 = (a1 + 176);
  *(a1 + 208) = 1065353216;
  *(a1 + 680) = 0;
  v11 = MEMORY[0x1E69E5530] + 64;
  *(a1 + 632) = MEMORY[0x1E69E5530] + 64;
  v12 = *(MEMORY[0x1E69E54D0] + 16);
  v13 = *(MEMORY[0x1E69E54D0] + 8);
  *(a1 + 216) = v13;
  *(a1 + 216 + *(v13 - 24)) = v12;
  v14 = (a1 + 216 + *(*(a1 + 216) - 24));
  std::ios_base::init(v14, (a1 + 224));
  v15 = MEMORY[0x1E69E5530] + 24;
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  *(a1 + 216) = v15;
  *(a1 + 632) = v11;
  MEMORY[0x1AC559A60](a1 + 224);
  *(a1 + 792) = 0u;
  *(a1 + 784) = a1 + 792;
  *(a1 + 816) = 0u;
  *(a1 + 808) = a1 + 816;
  *(a1 + 840) = 0u;
  *(a1 + 832) = a1 + 840;
  *(a1 + 856) = a4;
  *(a1 + 872) = 0u;
  *(a1 + 864) = a1 + 872;
  v74.n128_u64[0] = &unk_1F19EFFD0;
  v74.n128_u64[1] = a1;
  v76 = &v74;
  *(a1 + 896) = 0u;
  std::__function::__value_func<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::__value_func[abi:ne200100](a1 + 912, &v74);
  *(a1 + 888) = a1 + 896;
  std::__function::__value_func<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](&v74);
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  v16 = *(a1 + 856);
  v17 = a2[2];
  if (v16 > v17)
  {
  }

  if (v16 <= 1)
  {
  }

  v18 = a2 + 1;
  v19 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v20 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v19 + 4));
      v21 = (**a3)(a3, v20);
      v22 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v19 + 4));
      PartitionGraph::ZinIrPartitionGraph::AddNode(a1, v22, v21);
      v23 = v19[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v19[2];
          v25 = *v24 == v19;
          v19 = v24;
        }

        while (!v25);
      }

      v19 = v24;
    }

    while (v24 != v18);
    v19 = *a2;
  }

  if (v19 != v18)
  {
    v26 = a1 + 8;
    do
    {
      v74.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v19 + 4));
      v27 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::find<ZinIrTensor *>(a1, &v74);
      v74.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v19 + 4));
      v28 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a2 + 3, &v74);
      v29 = (v28 + 3);
      if (!v28)
      {
        v29 = (a2 + 13);
      }

      v31 = *v29;
      v30 = v29[1];
      while (v31 != v30)
      {
        v74.n128_u64[0] = *v31;
        v75 = 0;
        v32 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v74);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v74, v32);
        v73 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v74);
        v33 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::find<ZinIrTensor *>(a1, &v73);
        if (v26 == v33)
        {
          ZinAssertImpl("Failed to find destination node in nodes_");
        }

        v72 = *(v27 + 32);
        v73 = &v72;
        v34 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<NodeKey<RawOrShared<ZinIrOpLayer>>,std::piecewise_construct_t const&,std::tuple<NodeKey<RawOrShared<ZinIrOpLayer>>&&>,std::tuple<>>((a1 + 24), &v72, &std::piecewise_construct, &v73);
        v73 = *(v33 + 32);
        std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v34 + 3), &v73);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v74);
        ++v31;
      }

      v74.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v19 + 4));
      v35 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a2 + 8, &v74);
      v36 = (v35 + 3);
      if (!v35)
      {
        v36 = (a2 + 13);
      }

      v38 = *v36;
      v37 = v36[1];
      while (v38 != v37)
      {
        v74.n128_u64[0] = *v38;
        v75 = 0;
        v39 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v74);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v74, v39);
        v73 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v74);
        v40 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::find<ZinIrTensor *>(a1, &v73);
        if (v26 == v40)
        {
          ZinAssertImpl("Failed to find destination node in nodes_");
        }

        v72 = *(v27 + 32);
        v73 = &v72;
        v41 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<NodeKey<RawOrShared<ZinIrOpLayer>>,std::piecewise_construct_t const&,std::tuple<NodeKey<RawOrShared<ZinIrOpLayer>>&&>,std::tuple<>>((a1 + 64), &v72, &std::piecewise_construct, &v73);
        v73 = *(v40 + 32);
        std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v41 + 3), &v73);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v74);
        ++v38;
      }

      v42 = v19[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v19[2];
          v25 = *v43 == v19;
          v19 = v43;
        }

        while (!v25);
      }

      v19 = v43;
      v10 = (a1 + 176);
    }

    while (v43 != a2 + 1);
  }

  PartitionGraph::ZinIrPartitionGraph::MergeMultipleEdges(a1);
  v44 = *a1;
  if (*a1 != a1 + 8)
  {
    __format = "outgoing costs should be the same size as outgoing edges";
    while (1)
    {
      v45 = v44 + 4;
      v74.n128_u64[0] = v44[4];
      v46 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 24), &v74);
      v47 = v46 + 3;
      if (!v46)
      {
        v47 = (a1 + 104);
      }

      v48 = *v47;
      v49 = v47[1];
      while (v48 != v49)
      {
        v73 = (*(*a3 + 8))(a3, *v45, *v48);
        v74.n128_u64[0] = (v44 + 4);
        v50 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(v10, v44 + 4, &std::piecewise_construct, &v74);
        std::vector<double>::push_back[abi:ne200100](v50 + 4, &v73);
        ++v48;
      }

      v74.n128_u64[0] = *v45;
      v51 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 24), &v74);
      v52 = v51 + 3;
      if (!v51)
      {
        v52 = (a1 + 104);
      }

      v54 = *v52;
      v53 = v52[1];
      v74.n128_u64[0] = (v44 + 4);
      v55 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(v10, v44 + 4, &std::piecewise_construct, &v74);
      if (v53 - v54 != v55[5] - v55[4])
      {
        goto LABEL_64;
      }

      v74.n128_u64[0] = *v45;
      v56 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 64), &v74);
      v57 = v56 + 3;
      if (!v56)
      {
        v57 = (a1 + 104);
      }

      v58 = *v57;
      v59 = v57[1];
      while (v58 != v59)
      {
        v73 = (*(*a3 + 8))(a3, *v58, *v45);
        v74.n128_u64[0] = (v44 + 4);
        v60 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(v10, v44 + 4, &std::piecewise_construct, &v74);
        std::vector<double>::push_back[abi:ne200100](v60 + 7, &v73);
        ++v58;
      }

      v74.n128_u64[0] = *v45;
      v61 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 64), &v74);
      v62 = v61 + 3;
      if (!v61)
      {
        v62 = (a1 + 104);
      }

      v64 = *v62;
      v63 = v62[1];
      v74.n128_u64[0] = (v44 + 4);
      v65 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(v10, v44 + 4, &std::piecewise_construct, &v74);
      if (v63 - v64 != v65[8] - v65[7])
      {
        break;
      }

      v66 = v44[1];
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v44[2];
          v25 = *v67 == v44;
          v44 = v67;
        }

        while (!v25);
      }

      v44 = v67;
      if (v67 == (a1 + 8))
      {
        goto LABEL_58;
      }
    }

    __format = "incoming costs should be the same size as incoming edges";
LABEL_64:
    ZinAssertImpl(__format);
  }

LABEL_58:
  if (ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsCyclicGraph(a2))
  {
    v69 = "input op_layer_graph has cycle";
    goto LABEL_69;
  }

  if (ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::IsCyclicGraph(a1))
  {
    v69 = "constructed partition graph has cycle";
LABEL_69:
    ZinAssertImpl(v69);
  }

  return a1;
}

void sub_1A6913AE4(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    *(v1 + 112) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table((v1 + 64));
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table((v1 + 24));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

BOOL PartitionGraph::ZinIrPartitionGraph::AddNode(uint64_t **this, ZinIrOpLayer *a2, double a3)
{
  v7 = a2;
  v5 = ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::AddNode(this, &v7);
  if (v5)
  {
    v8 = &v7;
    *(std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v7, &std::piecewise_construct, &v8) + 3) = a3;
  }

  return v5;
}

void PartitionGraph::ZinIrPartitionGraph::MergeMultipleEdges(PartitionGraph::ZinIrPartitionGraph *this)
{
  v1 = this + 8;
  v2 = *this;
  if (*this != (this + 8))
  {
    v4 = this + 104;
    do
    {
      v30 = *(v2 + 4);
      v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v30);
      if (v5)
      {
        v6 = v5 + 3;
      }

      else
      {
        v6 = v4;
      }

      v31[0] = 0;
      v31[1] = 0;
      v29 = 0;
      v30 = v31;
      v27 = 0;
      v28 = 0;
      v7 = *v6;
      if (v6[1] != *v6)
      {
        v8 = 0;
        do
        {
          v24 = *(v7 + 8 * v8);
          v22 = v24;
          if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(&v30, &v22))
          {
            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v27, &v24);
            v22 = v24;
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(&v30, &v22, &v22);
          }

          ++v8;
          v7 = *v6;
        }

        while (v8 < (v6[1] - *v6) >> 3);
      }

      v22 = *(v2 + 4);
      v24 = &v22;
      v9 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<NodeKey<RawOrShared<ZinIrOpLayer>>,std::piecewise_construct_t const&,std::tuple<NodeKey<RawOrShared<ZinIrOpLayer>>&&>,std::tuple<>>(this + 3, &v22, &std::piecewise_construct, &v24) + 3;
      if (v9 != &v27)
      {
        std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::__assign_with_size[abi:ne200100]<NodeKey<std::shared_ptr<ZinIrHazardNode>>*,NodeKey<std::shared_ptr<ZinIrHazardNode>>*>(v9, v27, v28, (v28 - v27) >> 3);
      }

      v22 = *(v2 + 4);
      v10 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v22);
      v11 = (v10 + 3);
      if (!v10)
      {
        v11 = v4;
      }

      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v24, *v11, v11[1], (v11[1] - *v11) >> 3);
      v23[0] = 0;
      v23[1] = 0;
      v21 = 0;
      v22 = v23;
      __p = 0;
      v20 = 0;
      v12 = v24;
      if (v25 != v24)
      {
        v13 = 0;
        do
        {
          v32 = v12[v13];
          v18 = v32;
          if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(&v22, &v18))
          {
            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&__p, &v32);
            v18 = v32;
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(&v22, &v18, &v18);
          }

          ++v13;
          v12 = v24;
        }

        while (v13 < (v25 - v24) >> 3);
      }

      v18 = *(v2 + 4);
      v32 = &v18;
      v14 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<NodeKey<RawOrShared<ZinIrOpLayer>>,std::piecewise_construct_t const&,std::tuple<NodeKey<RawOrShared<ZinIrOpLayer>>&&>,std::tuple<>>(this + 8, &v18, &std::piecewise_construct, &v32) + 3;
      if (v14 != &__p)
      {
        std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::__assign_with_size[abi:ne200100]<NodeKey<std::shared_ptr<ZinIrHazardNode>>*,NodeKey<std::shared_ptr<ZinIrHazardNode>>*>(v14, __p, v20, (v20 - __p) >> 3);
      }

      if (__p)
      {
        v20 = __p;
        operator delete(__p);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v22, v23[0]);
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v30, v31[0]);
      v15 = *(v2 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v2 + 2);
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v1);
  }
}

void sub_1A6914030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a13, a14);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsCyclicGraph(void *a1)
{
  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  v1 = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::TopologicalSortImpl<std::list<RawOrShared<ZinIrOpLayer>>>(a1, v3);
  std::__list_imp<RawOrShared<ZinIrOpLayer>>::clear(v3);
  return v1 ^ 1u;
}

void sub_1A69141D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<RawOrShared<ZinIrOpLayer>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::IsCyclicGraph(void *a1)
{
  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  v1 = ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::TopologicalSortImpl<std::list<ZinIrOpLayer *>>(a1, v3);
  std::__list_imp<ZinIrSection *>::clear(v3);
  return v1 ^ 1u;
}

void sub_1A691422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<ZinIrSection *>::clear(va);
  _Unwind_Resume(a1);
}

void PartitionGraph::ZinIrPartitionGraph::~ZinIrPartitionGraph(PartitionGraph::ZinIrPartitionGraph *this)
{
  v2 = (this + 216);
  if (*(this + 43) && !std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  v3 = *(this + 118);
  if (v3)
  {
    *(this + 119) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 888, *(this + 112));
  std::__function::__value_func<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](this + 912);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 864, *(this + 109));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 832, *(this + 105));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 808, *(this + 102));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 784, *(this + 99));
  v4 = MEMORY[0x1E69E54D0];
  v5 = *MEMORY[0x1E69E54D0];
  *(this + 27) = *MEMORY[0x1E69E54D0];
  *(v2 + *(v5 - 24)) = *(v4 + 24);
  MEMORY[0x1AC559A70](this + 224);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](this + 632);
  std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::~__hash_table(this + 176);
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 8);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 3);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this, *(this + 1));
}

BOOL PartitionGraph::ZinIrPartitionGraph::GainComparator(uint64_t **this, ZinIrOpLayer *a2, ZinIrOpLayer *a3)
{
  v8 = a3;
  v9 = a2;
  if (a2 && a3)
  {
    v10 = &v9;
    v4 = *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v9, &std::piecewise_construct, &v10) + 5);
    v10 = &v8;
    if (v4 <= *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v8, &std::piecewise_construct, &v10) + 5))
    {
      v10 = &v9;
      v7 = *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v9, &std::piecewise_construct, &v10) + 5);
      v10 = &v8;
      return v7 == *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v8, &std::piecewise_construct, &v10) + 5) && *(v9 + 3) > *(v8 + 3);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return a2 && a3 == 0;
  }
}

BOOL ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::AddNode(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(a1, a2);
  if (!v4)
  {
    std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(a1, a2, a2);
  }

  return v4 == 0;
}

double PartitionGraph::ZinIrPartitionGraph::GetNodeCost(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2)
{
  v5 = a2;
  if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(this, &v5))
  {
    ZinAssertImpl("node does not exist");
  }

  v3 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, &v5);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v3[3];
}

double PartitionGraph::ZinIrPartitionGraph::GetAllNodesCost(PartitionGraph::ZinIrPartitionGraph **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 0.0;
  }

  v4 = 0.0;
  do
  {
    NodeCost = PartitionGraph::ZinIrPartitionGraph::GetNodeCost(this, v2[4]);
    v6 = v2[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v4 = v4 + NodeCost;
    v2 = v7;
  }

  while (v7 != v1);
  return v4;
}

double PartitionGraph::ZinIrPartitionGraph::ComputeGain(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2, uint64_t a3)
{
  v23 = a2;
  PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, a2);
  v24 = a2;
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v24);
  if (v7)
  {
    v8 = v7 + 3;
  }

  else
  {
    v8 = (this + 104);
  }

  v24 = a2;
  v9 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v24);
  if (v9)
  {
    v10 = v9 + 3;
  }

  else
  {
    v10 = (this + 104);
  }

  v11 = 0.0;
  if (PartitionIdx != a3)
  {
    if (v8[1] != *v8)
    {
      v12 = 0;
      while (1)
      {
        v13 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, &v23);
        if (!v13)
        {
          break;
        }

        v14 = *(v13[7] + 8 * v12);
        v15 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(*v8 + 8 * v12));
        v16 = v11 + v14;
        if (v15 != a3)
        {
          v16 = v11;
        }

        if (PartitionIdx == v15)
        {
          v11 = v11 - v14;
        }

        else
        {
          v11 = v16;
        }

        if (++v12 >= ((v8[1] - *v8) >> 3))
        {
          goto LABEL_17;
        }
      }

LABEL_27:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

LABEL_17:
    if (v10[1] != *v10)
    {
      v17 = 0;
      while (1)
      {
        v18 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, &v23);
        if (!v18)
        {
          break;
        }

        v19 = *(v18[4] + 8 * v17);
        v20 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(*v10 + 8 * v17));
        v21 = v11 + v19;
        if (v20 != a3)
        {
          v21 = v11;
        }

        if (PartitionIdx == v20)
        {
          v11 = v11 - v19;
        }

        else
        {
          v11 = v21;
        }

        if (++v17 >= ((v10[1] - *v10) >> 3))
        {
          return v11;
        }
      }

      goto LABEL_27;
    }
  }

  return v11;
}

uint64_t PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2)
{
  v5 = a2;
  if (!std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__count_unique<ZinIrTensor *>(this, &v5))
  {
    ZinAssertImpl("node does not exist");
  }

  v3 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, &v5);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v3[10];
}

BOOL PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, &v4);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2[10] != -1;
}

BOOL PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(PartitionGraph::ZinIrPartitionGraph **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 1;
  }

  do
  {
    result = PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, v2[4]);
    if (!result)
    {
      break;
    }

    v5 = v2[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v2[2];
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v2 = v6;
  }

  while (v6 != v1);
  return result;
}

double PartitionGraph::ZinIrPartitionGraph::GetInterPartitionEdgeCost(PartitionGraph::ZinIrPartitionGraph **this)
{
  if (!PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this))
  {
    ZinAssertImpl("All nodes should already be assigned to a partition with computing inter-partition edge costs");
  }

  v2 = *this;
  if (*this == (this + 1))
  {
    return 0.0;
  }

  v3 = 0.0;
  do
  {
    v15 = *(v2 + 4);
    v4 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v15);
    if (v4)
    {
      v5 = (v4 + 3);
    }

    else
    {
      v5 = this + 13;
    }

    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + v7);
        PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v2 + 4));
        if (PartitionIdx != PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, v8))
        {
          v10 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, v2 + 4);
          if (!v10)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v3 = v3 + *(v10[4] + 8 * v7);
        }

        ++v7;
        v6 = *v5;
      }

      while (v7 < (v5[1] - *v5) >> 3);
    }

    v11 = *(v2 + 1);
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = *(v2 + 2);
        v13 = *v12 == v2;
        v2 = v12;
      }

      while (!v13);
    }

    v2 = v12;
  }

  while (v12 != this + 1);
  return v3;
}

uint64_t PartitionGraph::ZinIrPartitionGraph::GetNodeCountInPartition(PartitionGraph::ZinIrPartitionGraph **this, uint64_t a2)
{
  v2 = this + 1;
  v3 = *this;
  if (*this == (this + 1))
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 22, v3 + 4);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v7[10] == a2)
    {
      ++v6;
    }

    v8 = v3[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    v3 = v9;
  }

  while (v9 != v2);
  return v6;
}

BOOL PartitionGraph::ZinIrPartitionGraph::IsReadyForPartition(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2)
{
  if (PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, a2))
  {
    return 0;
  }

  v10 = a2;
  v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v10);
  v6 = v5 + 3;
  if (!v5)
  {
    v6 = (this + 104);
  }

  v7 = v6[1];
  if (*v6 == v7)
  {
    return 1;
  }

  v8 = *v6 + 8;
  do
  {
    result = PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, *(v8 - 8));
    v9 = !result || v8 == v7;
    v8 += 8;
  }

  while (!v9);
  return result;
}

uint64_t PartitionGraph::ZinIrPartitionGraph::IsPartitionedGraphCyclic(PartitionGraph::ZinIrPartitionGraph **this)
{
  if (!PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this))
  {
    ZinAssertImpl("All nodes should be assigned to a partition before acyclic check");
  }

  ZinIrNgraph<unsigned long long,std::less<unsigned long long>>::ZinIrNgraph(v13);
  v2 = *this;
  if (*this != (this + 1))
  {
    do
    {
      PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v2 + 4));
      ZinIrNgraph<long,std::less<long>>::AddNode(v13, &PartitionIdx);
      v20 = *(v2 + 4);
      v3 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v20);
      v4 = (v3 + 3);
      if (!v3)
      {
        v4 = this + 13;
      }

      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v20 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *v5);
        ZinIrNgraph<long,std::less<long>>::AddNode(v13, &v20);
        if (PartitionIdx != v20)
        {
          ZinIrNgraph<long,std::less<long>>::AddEdge(v13, &PartitionIdx, &v20, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v5;
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != this + 1);
  }

  IsCyclicGraph = ZinIrNgraph<long,std::less<long>>::IsCyclicGraph(v13);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(&v15);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(&v14);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v13, v13[1]);
  return IsCyclicGraph;
}

void sub_1A6914D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ZinIrNgraph<long,std::less<long>>::~ZinIrNgraph(va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrNgraph<long,std::less<long>>::AddNode(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    std::__tree<long>::__emplace_unique_key_args<long,long>(a1, a2, a2);
    return 1;
  }

  v3 = *a2;
  while (1)
  {
    v4 = v2[4];
    if (v3 >= v4)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (v4 < v3)
  {
    ++v2;
    goto LABEL_6;
  }

  return 0;
}

uint64_t ZinIrNgraph<long,std::less<long>>::AddEdge(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a1 + 1;
  v9 = a1[1];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *a2;
  v11 = a1 + 1;
  v12 = a1[1];
  do
  {
    if (v12[4] >= v10)
    {
      v11 = v12;
    }

    v12 = v12[v12[4] < v10];
  }

  while (v12);
  if (v11 == v8 || v10 < v11[4])
  {
LABEL_8:
    v11 = a1 + 1;
  }

  if (!v9)
  {
    return 0;
  }

  v13 = *a3;
  v14 = a1 + 1;
  do
  {
    if (v9[4] >= v13)
    {
      v14 = v9;
    }

    v9 = v9[v9[4] < v13];
  }

  while (v9);
  if (v14 == v8)
  {
    return 0;
  }

  if (v13 < v14[4] || v11 == v8)
  {
    return 0;
  }

  __p = v11[4];
  v17 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>(a1 + 3, &__p);
  if (v17)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      __p = v14[4];
      std::vector<unsigned long>::push_back[abi:ne200100](v17 + 3, &__p);
    }

    else
    {
      v18 = v17[3];
      if (a4 > (v17[4] - v18) >> 3)
      {
        return 0;
      }

      __p = v14[4];
      std::vector<NodeKey<long>>::insert(v17 + 3, &v18[8 * a4], &__p);
    }
  }

  else
  {
    v27 = v14[4];
    v25 = 0;
    v26 = 0;
    __p = 0;
    std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &v27, &v28, 1uLL);
    v23 = v11[4];
    v27 = &v23;
    v19 = std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 3, &v23, &std::piecewise_construct, &v27) + 3;
    if (v19 != &__p)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v19, __p, v25, (v25 - __p) >> 3);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  __p = v14[4];
  v20 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>(a1 + 8, &__p);
  if (!v20)
  {
    v27 = v11[4];
    v25 = 0;
    v26 = 0;
    __p = 0;
    std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &v27, &v28, 1uLL);
    v23 = v14[4];
    v27 = &v23;
    v22 = std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::tuple<unsigned long long,BOOL>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v23, &std::piecewise_construct, &v27) + 3;
    if (v22 != &__p)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v22, __p, v25, (v25 - __p) >> 3);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    return 1;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __p = v11[4];
    std::vector<unsigned long>::push_back[abi:ne200100](v20 + 3, &__p);
    return 1;
  }

  v21 = v20[3];
  if (a5 <= (v20[4] - v21) >> 3)
  {
    __p = v11[4];
    std::vector<NodeKey<long>>::insert(v20 + 3, &v21[8 * a5], &__p);
    return 1;
  }

  return 0;
}

void sub_1A6915070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PartitionGraph::ZinIrPartitionGraph::SetInitialPartition(PartitionGraph::ZinIrPartitionGraph **this)
{
  AllNodesCost = PartitionGraph::ZinIrPartitionGraph::GetAllNodesCost(this);
  v3 = this[107];
  v4 = *this;
  v5 = (this + 1);
  if (*this == (this + 1))
  {
    v9 = this[107];
  }

  else
  {
    do
    {
      if (PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, *(v4 + 4)))
      {
        ZinAssertImpl("All nodes should not be assigned to a partition before initial partitioning");
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
    v9 = this[107];
  }

  if (v9 != 1)
  {
    v10 = 0;
    v11 = AllNodesCost * 0.9 / v3;
    v32 = (this + 109);
    do
    {
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy((this + 111), this[112]);
      this[111] = (this + 112);
      *(this + 56) = 0u;
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy((this + 108), this[109]);
      this[108] = v32;
      *v32 = 0u;
      if (this[113])
      {
        ZinAssertImpl("Error: heap map size is non-zero at start of partitioning");
      }

      v34[0] = 0;
      v34[1] = 0;
      v33 = v34;
      v12 = *this;
      if (*this != v5)
      {
        do
        {
          if (PartitionGraph::ZinIrPartitionGraph::IsReadyForPartition(this, *(v12 + 4)))
          {
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(&v33, v12 + 4, v12 + 4);
          }

          v13 = *(v12 + 1);
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = *(v12 + 2);
              v8 = *v14 == v12;
              v12 = v14;
            }

            while (!v8);
          }

          v12 = v14;
        }

        while (v14 != v5);
        v15 = v33;
        if (v33 != v34)
        {
          do
          {
            v16 = PartitionGraph::ZinIrPartitionGraph::ComputeGain(this, v15[4], v10);
            PartitionGraph::ZinIrPartitionGraph::AddNodeToHeap(this, v15[4], v16);
            v17 = v15[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v15[2];
                v8 = *v18 == v15;
                v15 = v18;
              }

              while (!v8);
            }

            v15 = v18;
          }

          while (v18 != v34);
        }
      }

      if (v11 > 0.0)
      {
        v19 = 0.0;
        do
        {
          if (!this[113])
          {
            break;
          }

          v20 = this[111];
          v21 = v20[4];
          std::__tree<ZinIrDimension>::__remove_node_pointer(this + 111, v20);
          operator delete(v20);
          if (PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, v21))
          {
            ZinAssertImpl("node should be free when poped from heap", v32);
          }

          v35 = v21;
          v36 = &v35;
          std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v35, &std::piecewise_construct, &v36)[10] = v10;
          if (!PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, v21))
          {
            ZinAssertImpl("node should not be free after being assigned", v32);
          }

          v36 = v21;
          v22 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v36);
          v23 = (v22 + 3);
          if (!v22)
          {
            v23 = this + 13;
          }

          v24 = *v23;
          v25 = v23[1];
          while (v24 != v25)
          {
            if (PartitionGraph::ZinIrPartitionGraph::IsReadyForPartition(this, *v24))
            {
              v26 = PartitionGraph::ZinIrPartitionGraph::ComputeGain(this, *v24, v10);
              PartitionGraph::ZinIrPartitionGraph::AddNodeToHeap(this, *v24, v26);
            }

            ++v24;
          }

          v19 = v19 + PartitionGraph::ZinIrPartitionGraph::GetNodeCost(this, v21);
        }

        while (v19 < v11);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v33, v34[0]);
      ++v10;
    }

    while (v10 < this[107] - 1);
  }

  v27 = *this;
  if (*this != v5)
  {
    do
    {
      if (!PartitionGraph::ZinIrPartitionGraph::IsNodeAssigned(this, *(v27 + 4)))
      {
        v28 = this[107] - 1;
        v36 = *(v27 + 4);
        v33 = &v36;
        std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v33)[10] = v28;
      }

      v29 = *(v27 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v27 + 2);
          v8 = *v30 == v27;
          v27 = v30;
        }

        while (!v8);
      }

      v27 = v30;
    }

    while (v30 != v5);
  }

  return PartitionGraph::ZinIrPartitionGraph::PostPartitionValidation(this);
}

void *PartitionGraph::ZinIrPartitionGraph::AddNodeToHeap(uint64_t **this, ZinIrOpLayer *a2, double a3)
{
  v8 = a2;
  v5 = std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::find<ZinIrOpLayer *>((this + 111), &v8);
  if (this + 112 != v5)
  {
    v6 = v5;
    std::__tree<ZinIrDimension>::__remove_node_pointer(this + 111, v5);
    operator delete(v6);
  }

  v9 = &v8;
  *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v8, &std::piecewise_construct, &v9) + 5) = a3;
  return std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(this + 111, &v8, &v8);
}

uint64_t PartitionGraph::ZinIrPartitionGraph::PostPartitionValidation(PartitionGraph::ZinIrPartitionGraph **this)
{
  if (!PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this))
  {
    ZinAssertImpl("All nodes should already be assigned to a partition");
  }

  v2 = this[107];
  v16 = 0;
  std::vector<long>::vector[abi:ne200100](&__p, v2, &v16);
  v3 = *this;
  if (*this == (this + 1))
  {
    v5 = __p;
  }

  else
  {
    do
    {
      PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v3 + 4));
      v5 = __p;
      ++*(__p + PartitionIdx);
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != this + 1);
  }

  if (v5 == v18)
  {
  }

  v9 = v5 + 1;
  if (v5 + 1 != v18)
  {
    v10 = *v5;
    v11 = v5 + 1;
    do
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 < v10)
      {
        v10 = v12;
        v5 = v9;
      }

      v9 = v11;
    }

    while (v11 != v18);
  }

  if (*v5)
  {
    if (PartitionGraph::ZinIrPartitionGraph::IsPartitionedGraphCyclic(this))
    {
      ZinAssertImpl("The partitioned graph should not be cyclic");
    }

    if ((PartitionGraph::ZinIrPartitionGraph::IsPartitionIdxTopoOrder(this) & 1) == 0)
    {
      ZinAssertImpl("The partition idx should follow topological order");
    }

    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Error: certain partition has zero node", &v16, 2u);
    }

    v14 = 3;
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_1A6915704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PartitionGraph::ZinIrPartitionGraph::IsPartitionIdxTopoOrder(PartitionGraph::ZinIrPartitionGraph **this)
{
  if (!PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this))
  {
    ZinAssertImpl("all nodes should not assigned before checking topological order");
  }

  v2 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v12 = *(v2 + 4);
      v3 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v12);
      v4 = (v3 + 3);
      if (!v3)
      {
        v4 = this + 13;
      }

      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v2 + 4));
        if (PartitionIdx > PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *v5))
        {
          return 0;
        }

        ++v5;
      }

      v8 = *(v2 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v2 + 2);
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != this + 1);
  }

  return 1;
}

void *PartitionGraph::ZinIrPartitionGraph::UpdateTargetPartitionCandidate(PartitionGraph::ZinIrPartitionGraph *this, ZinIrOpLayer *a2)
{
  v36 = a2;
  v4 = *(this + 107);
  v37 = a2;
  v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v37);
  if (v5)
  {
    v6 = (v5 + 3);
  }

  else
  {
    v6 = (this + 104);
  }

  v37 = a2;
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v37);
  if (v7)
  {
    v8 = (v7 + 3);
  }

  else
  {
    v8 = (this + 104);
  }

  v11 = v6;
  v10 = *v6;
  v9 = v11[1];
  if (v9 == v10)
  {
    PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, a2);
    if (PartitionIdx <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = PartitionIdx;
    }

    v12 = v16 - 1;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v14 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, v13);
      if (v12 <= v14)
      {
        v12 = v14;
      }
    }

    while (v10 != v9);
  }

  v19 = v8;
  v17 = *v8;
  v18 = v19[1];
  if (v18 == v17)
  {
    v23 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, a2);
    if (*(this + 107) - 1 >= v23 + 1)
    {
      v20 = v23 + 1;
    }

    else
    {
      v20 = *(this + 107) - 1;
    }
  }

  else
  {
    v20 = v4 - 1;
    do
    {
      v21 = *v17++;
      v22 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, v21);
      if (v22 < v20)
      {
        v20 = v22;
      }
    }

    while (v17 != v18);
  }

  if (v20 < v12)
  {
  }

  v24 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, a2);
  if (v12 == v24 && v20 == v24)
  {
    v37 = &v36;
    result = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v37);
    result[11] = v20;
    return result;
  }

  if (v12 == v24 || v20 != v24)
  {
    if (v20 == v24 || v12 != v24)
    {
      v30 = PartitionGraph::ZinIrPartitionGraph::ComputeGain(this, a2, v20);
      v31 = PartitionGraph::ZinIrPartitionGraph::ComputeGain(this, v36, v12);
      if (v30 <= v31)
      {
        v35 = v31;
        v37 = &v36;
        std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v37)[11] = v12;
        v32 = v36;
        v33 = this;
        v34 = v35;
      }

      else
      {
        v37 = &v36;
        std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v37)[11] = v20;
        v32 = v36;
        v33 = this;
        v34 = v30;
      }

      return PartitionGraph::ZinIrPartitionGraph::AddNodeToHeap(v33, v32, v34);
    }

    v37 = &v36;
    std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v37)[11] = v20;
    v26 = v36;
    v27 = this;
    v28 = v20;
  }

  else
  {
    v37 = &v36;
    std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v36, &std::piecewise_construct, &v37)[11] = v12;
    v26 = v36;
    v27 = this;
    v28 = v12;
  }

  v34 = PartitionGraph::ZinIrPartitionGraph::ComputeGain(v27, v26, v28);
  v32 = v36;
  v33 = this;
  return PartitionGraph::ZinIrPartitionGraph::AddNodeToHeap(v33, v32, v34);
}

uint64_t PartitionGraph::ZinIrPartitionGraph::SetRefinePartition(PartitionGraph::ZinIrPartitionGraph *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = (this + 888);
  v3 = this + 896;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 888, *(this + 112));
  *(this + 111) = v3;
  *(this + 56) = 0u;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 864, *(this + 109));
  *(this + 108) = this + 872;
  *(this + 872) = 0u;
  if (*(this + 113))
  {
    ZinAssertImpl("heap should be empty");
  }

  v48 = 0;
  v49 = 0;
  v47 = &v48;
  v4 = this + 8;
  v5 = *this;
  if (*this == (this + 8))
  {
    v11 = 0;
  }

  else
  {
    do
    {
      *buf = v5 + 4;
      v6 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, v5 + 4, &std::piecewise_construct, buf) + 10;
      v7 = *v6;
      if (*v6 == -1)
      {
        ZinAssertImpl("all nodes should have been assigned before refinement");
      }

      *buf = v5 + 4;
      std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 104, v5 + 4, &std::piecewise_construct, buf)[5] = v7;
      std::__tree<long>::__emplace_unique_key_args<long,long>(&v47, v6, v6);
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
    v11 = v49;
  }

  if (v11 != *(this + 107))
  {
    ZinAssertImpl("there should be %lu partition", *(this + 107));
  }

  InterPartitionEdgeCost = PartitionGraph::ZinIrPartitionGraph::GetInterPartitionEdgeCost(this);
  v13 = *this;
  if (*this != v4)
  {
    do
    {
      *buf = v13 + 4;
      *(std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, v13 + 4, &std::piecewise_construct, buf) + 96) = 0;
      PartitionGraph::ZinIrPartitionGraph::UpdateTargetPartitionCandidate(this, v13[4]);
      v14 = v13[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v13[2];
          v10 = *v15 == v13;
          v13 = v15;
        }

        while (!v10);
      }

      v13 = v15;
    }

    while (v15 != v4);
  }

  v16 = *(this + 110);
  if (v16 != *(this + 113))
  {
    ZinAssertImpl("heap (%lu) and gain (%lu) should be the same size", *(this + 113), v16);
  }

  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = InterPartitionEdgeCost;
    do
    {
      v20 = *(this + 110);
      if (v20 != v16)
      {
        ZinAssertImpl("heap (%lu) and gain (%lu) should always be the same size", v16, v20);
      }

      v46 = (*v2)[4];
      *buf = &v46;
      v21 = *(std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 108, &v46, &std::piecewise_construct, buf) + 5);
      if (v21 <= 0.0)
      {
        break;
      }

      v22 = *v2;
      std::__tree<ZinIrDimension>::__remove_node_pointer(v2, *v2);
      operator delete(v22);
      std::__tree<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::__map_value_compare<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::less<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>>>::__erase_unique<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 108, &v46);
      PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, v46);
      if (PartitionGraph::ZinIrPartitionGraph::GetNodeCountInPartition(this, PartitionIdx) == 1 || (*buf = &v46, v24 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf)[10], *buf = &v46, v24 == std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf)[11]))
      {
        *buf = &v46;
        *(std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf) + 96) = 1;
      }

      else
      {
        *buf = &v46;
        v25 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf)[11];
        *buf = &v46;
        std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf)[10] = v25;
        *buf = &v46;
        *(std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v46, &std::piecewise_construct, buf) + 96) = 1;
        v26 = v46;
        v50 = v17;
        *buf = &v50;
        std::__tree<std::__value_type<unsigned long,ZinIrOpLayer *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ZinIrOpLayer *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ZinIrOpLayer *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 784, &v50, &std::piecewise_construct, buf)[5] = v26;
        v50 = v17;
        *buf = &v50;
        v19 = v19 - v21;
        *(std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 808, &v50, &std::piecewise_construct, buf) + 5) = v19;
        if (v19 < InterPartitionEdgeCost)
        {
          v18 = v17;
          InterPartitionEdgeCost = v19;
        }

        *buf = v46;
        v27 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, buf);
        *buf = v46;
        v28 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, buf);
        v29 = (v27 + 3);
        if (!v27)
        {
          v29 = this + 104;
        }

        if (v28)
        {
          v30 = (v28 + 3);
        }

        else
        {
          v30 = this + 104;
        }

        *&buf[8] = 0;
        *&buf[16] = 0;
        *buf = &buf[8];
        if (*v29 != *(v29 + 1))
        {
          std::__tree<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_hint_unique_impl<NodeKey<ZinIrOpLayer *> const&>(buf, &buf[8], *v29);
        }

        if (*v30 != *(v30 + 1))
        {
          std::__tree<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_hint_unique_impl<NodeKey<ZinIrOpLayer *> const&>(buf, &buf[8], *v30);
        }

        v31 = *buf;
        if (*buf != &buf[8])
        {
          do
          {
            v50 = (v31 + 4);
            if ((std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, v31 + 4, &std::piecewise_construct, &v50)[12] & 1) == 0)
            {
              PartitionGraph::ZinIrPartitionGraph::UpdateTargetPartitionCandidate(this, v31[4]);
            }

            v32 = v31[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v31[2];
                v10 = *v33 == v31;
                v31 = v33;
              }

              while (!v10);
            }

            v31 = v33;
          }

          while (v33 != &buf[8]);
        }

        v17 = (v17 + 1);
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(buf, *&buf[8]);
      }

      v16 = *(this + 113);
    }

    while (v16);
  }

  else
  {
    v18 = 0;
    v19 = InterPartitionEdgeCost;
  }

  v34 = *(this + 100);
  if (v34)
  {
    v35 = v34 - 1;
    if (v34 - 1 > v18)
    {
      v36 = (this + 792);
      do
      {
        v37 = *v36;
        if (!*v36)
        {
          goto LABEL_68;
        }

        v38 = (this + 792);
        do
        {
          v39 = *(v37 + 4);
          v40 = v39 >= v35;
          v41 = v39 < v35;
          if (v40)
          {
            v38 = v37;
          }

          v37 = *&v37[8 * v41];
        }

        while (v37);
        if (v38 == v36 || v35 < v38[4])
        {
LABEL_68:
        }

        v50 = v38[5];
        *buf = &v50;
        v42 = std::__tree<std::__value_type<ZinIrTensor *,long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,long>,ZinIrIdComparator<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,long>>>::__emplace_unique_key_args<ZinIrTensor *,std::piecewise_construct_t const&,std::tuple<ZinIrTensor * const&>,std::tuple<>>(this + 104, &v50, &std::piecewise_construct, buf)[5];
        *buf = &v50;
        std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(this + 22, &v50, &std::piecewise_construct, buf)[10] = v42;
        --v35;
      }

      while (v35 > v18);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = InterPartitionEdgeCost;
      _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The chosen version: edge_cut_idx: %lu, edge_cut_min: %f", buf, 0x16u);
    }

    if (InterPartitionEdgeCost != PartitionGraph::ZinIrPartitionGraph::GetInterPartitionEdgeCost(this))
    {
      v45 = PartitionGraph::ZinIrPartitionGraph::GetInterPartitionEdgeCost(this);
      ZinAssertImpl("Inconsistency: edge_cut=%f, GetInterCut=%f\n", v19, v45);
    }
  }

  v43 = PartitionGraph::ZinIrPartitionGraph::PostPartitionValidation(this);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v47, v48);
  return v43;
}

uint64_t *PartitionGraph::ZinIrPartitionGraph::ComputeHyperGraph@<X0>(uint64_t *__return_ptr a1@<X8>, PartitionGraph::ZinIrPartitionGraph **this@<X0>)
{
  if (!PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this))
  {
    ZinAssertImpl("all nodes should be assigned before computing hyper-graph");
  }

  result = ZinIrNgraph<unsigned long long,std::less<unsigned long long>>::ZinIrNgraph(a1);
  v5 = *this;
  if (*this != (this + 1))
  {
    do
    {
      PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v5 + 4));
      ZinIrNgraph<long,std::less<long>>::AddNode(a1, &PartitionIdx);
      v13 = *(v5 + 4);
      result = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v13);
      v6 = result + 3;
      if (!result)
      {
        v6 = (this + 13);
      }

      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        v13 = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *v7);
        result = ZinIrNgraph<long,std::less<long>>::AddNode(a1, &v13);
        if (PartitionIdx != v13)
        {
          result = ZinIrNgraph<long,std::less<long>>::AddEdge(a1, &PartitionIdx, &v13, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v7;
      }

      v9 = *(v5 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v5 + 2);
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != this + 1);
  }

  return result;
}

uint64_t *PartitionGraph::ZinIrPartitionGraph::ComputePartitionIdxToNodeSet@<X0>(uint64_t *__return_ptr a1@<X8>, PartitionGraph::ZinIrPartitionGraph **this@<X0>)
{
  result = PartitionGraph::ZinIrPartitionGraph::AreAllNodesAssigned(this);
  if ((result & 1) == 0)
  {
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v5 = *this;
  if (*this != (this + 1))
  {
    do
    {
      PartitionIdx = PartitionGraph::ZinIrPartitionGraph::GetPartitionIdx(this, *(v5 + 4));
      p_PartitionIdx = &PartitionIdx;
      v6 = std::__tree<std::__value_type<long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>,std::__map_value_compare<long,std::__value_type<long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a1, &PartitionIdx, &std::piecewise_construct, &p_PartitionIdx);
      result = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(v6 + 5, v5 + 4, v5 + 4);
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != this + 1);
  }

  return result;
}

uint64_t std::__function::__func<PartitionGraph::ZinIrPartitionGraph::ZinIrPartitionGraph(ZinIrOpLayerGraph *,PartitionGraph::CostModel *,long,std::string)::$_0,std::allocator<PartitionGraph::ZinIrPartitionGraph::ZinIrPartitionGraph(ZinIrOpLayerGraph *,PartitionGraph::CostModel *,long,std::string)::$_0>,BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EFFD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PartitionGraph::ZinIrPartitionGraph::ZinIrPartitionGraph(ZinIrOpLayerGraph *,PartitionGraph::CostModel *,long,std::string)::$_0,std::allocator<PartitionGraph::ZinIrPartitionGraph::ZinIrPartitionGraph(ZinIrOpLayerGraph *,PartitionGraph::CostModel *,long,std::string)::$_0>,BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer * const,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer * const,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,0>(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void *std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1A6916960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrOpLayer *,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer * const,PartitionGraph::ZinIrPartitionGraph::NodeInfo>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ZinIrNgraph<ZinIrOpLayer *,ZinIrIdComparator<ZinIrOpLayer *>>::TopologicalSortImpl<std::list<ZinIrOpLayer *>>(void *a1, void *a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  std::__list_imp<ZinIrSection *>::clear(a2);
  if (!a1[2])
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  v40 = &v41;
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    goto LABEL_49;
  }

  do
  {
    *&v35[0] = v4[4];
    v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, v35);
    v6 = v5 + 3;
    if (!v5)
    {
      v6 = a1 + 13;
    }

    if (v6[1] == *v6)
    {
      *&v35[0] = v4[4];
      std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(&v40, v35, v35);
    }

    v7 = v4[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != v3);
  if (!v42)
  {
LABEL_49:
    v30 = 0;
  }

  else
  {
    v39[0] = 0;
    v39[1] = 0;
    v38 = v39;
    v10 = *a1;
    if (*a1 != v3)
    {
      do
      {
        v37[0] = v10[4];
        *&v35[0] = v37;
        *(std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::less<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>&&>,std::tuple<>>(&v38, v37, &std::piecewise_construct, v35) + 40) = 0;
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v9 = *v12 == v10;
            v10 = v12;
          }

          while (!v9);
        }

        v10 = v12;
      }

      while (v12 != v3);
    }

    v37[0] = v37;
    v37[1] = v37;
    v37[2] = 0;
    v13 = v40;
    if (v40 != &v41)
    {
      v14 = 0uLL;
      do
      {
        v15 = v13[4];
        v35[1] = v14;
        v36 = v14;
        v35[0] = v14;
        v43[0] = v15;
        std::list<NodeKey<ZinIrOpLayer *>>::list(v33, v43, 1);
        std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::push_back(v35, v33);
        std::__list_imp<ZinIrSection *>::clear(v33);
        while (*(&v36 + 1))
        {
          v16 = *(*(*(*(&v35[0] + 1) + 8 * ((*(&v36 + 1) + v36 - 1) / 0xAAuLL)) + 24 * ((*(&v36 + 1) + v36 - 1) % 0xAAuLL) + 8) + 16);
          v33[0] = v16;
          v17 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::find<ZinIrTensor *>(&v38, v33);
          v18 = *(v17 + 40);
          if (v18 < 1)
          {
            v43[0] = v16;
            v33[0] = v43;
            v23 = std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::less<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>&&>,std::tuple<>>(&v38, v43, &std::piecewise_construct, v33);
            ++*(v23 + 40);
            v33[0] = v33;
            v33[1] = v33;
            v34 = 0;
            v43[0] = v16;
            v24 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, v43);
            if (v24)
            {
              v25 = v24[3];
              v26 = v24[4];
              while (v25 != v26)
              {
                v32 = *v25;
                v43[0] = &v32;
                v27 = *(std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>,std::less<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>&&>,std::tuple<>>(&v38, &v32, &std::piecewise_construct, v43) + 40);
                if (!v27)
                {
                  operator new();
                }

                if (v27 == 1)
                {
                  std::__list_imp<ZinIrSection *>::clear(v33);
                  std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::~deque[abi:ne200100](v35);
                  v30 = 0;
                  goto LABEL_51;
                }

                ++v25;
              }
            }

            if (v34)
            {
              std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::push_back(v35, v33);
            }

            std::__list_imp<ZinIrSection *>::clear(v33);
          }

          else
          {
            if (v18 == 1)
            {
              *(v17 + 40) = 2;
              operator new();
            }

            v19 = *(*(&v35[0] + 1) + 8 * ((*(&v36 + 1) + v36 - 1) / 0xAAuLL)) + 24 * ((*(&v36 + 1) + v36 - 1) % 0xAAuLL);
            v20 = *(v19 + 8);
            v22 = *v20;
            v21 = v20[1];
            *(v22 + 8) = v21;
            *v21 = v22;
            --*(v19 + 16);
            operator delete(v20);
            if (!*(*(*(&v35[0] + 1) + 8 * ((*(&v36 + 1) + v36 - 1) / 0xAAuLL)) + 24 * ((*(&v36 + 1) + v36 - 1) % 0xAAuLL) + 16))
            {
              std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::pop_back(v35);
            }
          }
        }

        std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::~deque[abi:ne200100](v35);
        v28 = v13[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v13[2];
            v9 = *v29 == v13;
            v13 = v29;
          }

          while (!v9);
        }

        v13 = v29;
        v14 = 0uLL;
      }

      while (v29 != &v41);
    }

    v30 = 1;
LABEL_51:
    std::__list_imp<ZinIrSection *>::clear(v37);
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v38, v39[0]);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v40, v41);
  return v30;
}

void sub_1A6916EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  std::__list_imp<ZinIrSection *>::clear(&a12);
  std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::~deque[abi:ne200100](&a15);
  std::__list_imp<ZinIrSection *>::clear(&a22);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a25, a26);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v26 - 136, *(v26 - 128));
  _Unwind_Resume(a1);
}

uint64_t *std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::push_back(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  result = std::construct_at[abi:ne200100]<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>*>(v8, a2);
  ++a1[5];
  return result;
}

void std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *,std::allocator<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *>>::emplace_back<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *&>(a1, &v9);
}

void sub_1A691714C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::list<NodeKey<ZinIrOpLayer *>>::list(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a3)
  {
    operator new();
  }

  return a1;
}

uint64_t *std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::list<NodeKey<ZinIrOpLayer *>>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  result = std::list<NodeKey<ZinIrOpLayer *>>::list(v8, a2);
  ++a1[5];
  return result;
}

uint64_t *std::list<NodeKey<ZinIrOpLayer *>>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

char *std::vector<NodeKey<long>>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
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
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<NodeKey<unsigned long long>>::emplace_back<NodeKey<unsigned long long>>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1A6917510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::find<ZinIrOpLayer *>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::operator()(a1 + 24, *(v3 + 32), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::operator()(a1 + 24, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(uint64_t **a1, uint64_t *a2, void *a3)
{
  v3 = *std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::__find_equal<ZinIrOpLayer *>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<ZinIrOpLayer *,std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>,std::allocator<ZinIrOpLayer *>>::__find_equal<ZinIrOpLayer *>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::operator()(a1 + 24, *a3, v4[4]))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::function<BOOL ()(ZinIrOpLayer *,ZinIrOpLayer *)>::operator()(a1 + 24, v8[4], *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t ZinIrPoolUnit::ZinIrPoolUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F0050;
  v5[7] = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 80) = *(a2 + 24);
    *(a1 + 64) = v6;
  }

  v7 = *(a2 + 32);
  *(a1 + 96) = 0;
  *(a1 + 88) = v7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 96), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 120) = *(a2 + 64);
  *(a1 + 56) = &unk_1F19CEE70;
  v8 = *(a2 + 80);
  *(a1 + 152) = *(a2 + 96);
  *(a1 + 136) = v8;
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  *(a1 + 216) = *(a2 + 160);
  *(a1 + 200) = v11;
  *(a1 + 184) = v10;
  *(a1 + 168) = v9;
  return a1;
}

float ZinIrPoolUnit::PoolUnitInfoToPoolParams@<S0>(uint64_t *__return_ptr a1@<X8>, ZinIrPoolUnit *this@<X0>)
{
  *(a1 + 36) = 0x100000001;
  *(a1 + 11) = 1;
  a1[9] = 0x100000001;
  *(a1 + 20) = 1;
  *(a1 + 26) = 0;
  *a1 = *(this + 88);
  v4 = *(this + 14);
  a1[2] = *(this + 13);
  a1[3] = v4;
  *(a1 + 8) = *(this + 30);
  a1[8] = *(this + 140);
  *(a1 + 3) = *(this + 124);
  v5 = ZinIrPoolingTypeToZinIrPoolingMode(*(this + 20));
  *(a1 + 21) = *(this + 38);
  *(a1 + 22) = v5;
  *(a1 + 92) = *(this + 148);
  result = *(this + 39);
  *(a1 + 24) = result;
  *(a1 + 100) = 0;
  return result;
}

void ZinIrPoolUnit::CreateOpcode(ZinIrPoolUnit *this)
{
  v3 = ZinIrPoolingTypeToZinIrPoolingMode(*(this + 34));
  v5 = *(this + 9);
  v4 = *(this + 21);
  v6 = *(this + 20);
  v7 = v4;
  v8 = *(this + 44);
  v9 = 0x100000001;
  v10 = 1;
  v11 = *(this + 180);
  v12 = *(this + 196);
  v13 = 0x100000001;
  LODWORD(v4) = *(this + 52);
  v14 = 1;
  v15 = v4;
  v16 = v3;
  v17 = *(this + 204);
  v18 = 1065353216;
  v19 = 0;
  ZinIrPoolingInfo::ZinIrPoolingInfo(v20, &v5);
  v21 = *(this + 53);
  v22 = 0;
  operator new();
}

void sub_1A6917AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  MEMORY[0x1AC55A070](v22, 0x1081C405A408107, a3, a4, a5, a6, a7, a8);
  ZinIrHalH13g::~ZinIrHalH13g(va);
  _Unwind_Resume(a1);
}

double ZinIrPoolUnit::TensorDimensions(ZinIrPoolUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, CFArrayRef *a4)
{
  v4 = *(this + 1);
  if (*(this + 2) - v4 == 136)
  {
    v14 = 0x100000001;
    v15 = 1;
    v6 = *(this + 34) - 3;
    if (v6 < 0xC && ((0xAE5u >> v6) & 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v4 + 16);
    }

    v10 = 0x100000001;
    v11 = 1;
    ZinGetOutputTensorDimension((v4 + 8), this + 18, this + 42, &v14, this + 45, v7, &v10, v12);
    result = *v12;
    v9 = v12[1];
    *a3 = v12[0];
    *(a3 + 1) = v9;
    *(a3 + 4) = v13;
  }

  else
  {
    ZinIrUnitStatus::SetError(a4, @"InvalidBottomCount");
  }

  return result;
}

void sub_1A6917D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 16))(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrPoolUnit::ValidateForDynamicShapes(ZinIrPoolUnit *this, CFArrayRef *a2)
{
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    ZinAssertImpl("Pooling layer does not have input tensor", a2);
  }

  v4 = *(this + 34);
  if (v4 == 4 || v4 == 2)
  {
    AxisType = ZinTensorAxisTypePacked::GetAxisType((v2 + 96), 3);
    v7 = *(this + 1);
    if (AxisType == 1 && *(v7 + 24) == *(this + 19) || ZinTensorAxisTypePacked::GetAxisType((v7 + 96), 4) == 1 && *(*(this + 1) + 32) == *(this + 18))
    {
      ZinAssertImpl("Dynamic shape cannot support global max/min pool, please use reduction to replace global max/min pool");
    }

    return 0;
  }

  if (v4 == 1 && *(this + 52) == 1)
  {
    return 0;
  }

  ZinIrUnitStatus::SetError(a2, @"InvalidUnit");
  return 3;
}

_BYTE *ZinIrDynamicGOCInfo::ZinIrDynamicGOCInfo(_BYTE *a1, float a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  v17 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 3);
  *v17 = &unk_1F19F0118;
  *(v17 + 12) = a2;
  *(v17 + 16) = a4;
  *(v17 + 17) = a5;
  ZinIrBroadcastInfo::ZinIrBroadcastInfo(v17 + 24, a6);
  a1[80] = a7;
  a1[81] = a8;
  a1[82] = a9;
  return a1;
}

uint64_t ZinIrDynamicGOCInfo::TensorDimensions(_BYTE *a1, uint64_t a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = (*(a2 + 8) - *a2) >> 3;
  v4 = 0xCCCCCCCCCCCCCCCDLL * v3 - 1;
  if (0xCCCCCCCCCCCCCCCDLL * v3 == 1)
  {
    ZinAssertImpl("GOC missing bias scale input");
  }

  v7 = *v2;
  v6 = v2[1];
  v9 = v2[3];
  v8 = v2[4];
  v10 = &v2[5 * v4];
  v11 = *v10;
  v12 = *(v10 + 1);
  v27 = v10[4];
  v25 = v11;
  v26 = v12;
  if (a1[80] == 1)
  {
    v31 = xmmword_1A75A3AA0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v22, &v31, v32, 2uLL);
    ZinIrTransposeInfo::ZinIrTransposeInfo(&v31, &v22);
    v14 = *a2 + 40 * v4;
    v16 = *v14;
    v15 = *(v14 + 16);
    v29 = *(v14 + 32);
    v28[0] = v16;
    v28[1] = v15;
    v20 = 0;
    v21 = 0;
    __p = 0;
    std::vector<ZinTensorDimensions>::__init_with_size[abi:ne200100]<std::__wrap_iter<ZinTensorDimensions const*>,std::__wrap_iter<ZinTensorDimensions const*>>(&__p, v28, &v30, 1uLL);
    v17 = ZinIrTransposeInfo::ComputeOutputDimensions(&v31, &__p, &v25);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      ZinAssertImpl("GOC bias scale transpose shape propagation failed");
    }

    *&v31 = &unk_1F19EC2A8;
    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    ZinIrHalH13g::~ZinIrHalH13g(&v31);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  if (a1[81] & 1) != 0 || (a1[82])
  {
    if (v26 != 1)
    {
      ZinAssertImpl("GOC individual bias or scale shape must have height of 1");
    }
  }

  else if (v26 != 2)
  {
    ZinAssertImpl("GOC concatenated bias scale shape must have height of 2");
  }

  if (v25 != 1 && v25 != v7 || v27 != 1 && v27 != v8 || *(&v25 + 1) != 1 && *(&v25 + 1) != v6 || *(&v26 + 1) != 1 && *(&v26 + 1) != v9)
  {
    ZinAssertImpl("GOC bias scale shape must match the data tensor");
  }

  ZinIrBroadcastInfo::GetBroadcastAxes(&v31, (a1 + 24));
  if (*(&v26 + 1) == 1 && v9 != 1)
  {
    LODWORD(v28[0]) = 4;
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(&v31, v28))
    {
      ZinAssertImpl("GOC bias scale shape must have width of 1 to support implicit broadcast");
    }
  }

  if (*(&v25 + 1) == 1 && v6 != 1)
  {
    LODWORD(v28[0]) = 2;
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(&v31, v28))
    {
      ZinAssertImpl("GOC bias scale shape must have channel of 1 to support implicit broadcast");
    }
  }

  if (v27 != v8)
  {
    LODWORD(v28[0]) = 1;
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(&v31, v28))
    {
      ZinAssertImpl("GOC bias scale shape must have depth of 1 to support implicit broadcast");
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v31);
  return 0;
}

void *ZinTernaryDynamicGOCLayer::ZinTernaryDynamicGOCLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, &v9);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F0150;
  return a1;
}

void sub_1A69184C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

uint64_t ZinTernaryDynamicGOCLayer::Lower(ZinTernaryDynamicGOCLayer *a1, ZinIrOpLayerGraph *a2, const ZinIrHalParameters ***a3)
{
  v4 = **a3;
  if ((*(v4 + 1162) & 1) == 0)
  {
    ZinTernaryDynamicGOCLayer::ValidateH11H12(a1, v4);
    ZinTernaryDynamicGOCLayer::LowerH11H12(a1, a2);
  }

  return 0;
}

uint64_t ZinTernaryDynamicGOCLayer::ValidateH11H12(ZinTernaryDynamicGOCLayer *this, const ZinIrHalParameters *a2)
{
  v2 = *(this + 11);
  if (*(v2 + 81) != 1 || *(v2 + 82) == 1)
  {
    ZinAssertImpl("Scale-Only and Default DynamicGOC are not supported", a2);
  }

  InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
  result = ZinIrOpLayer::GetInputTensor(this, 1uLL);
  if (*(InputTensor + 104) != 3 || *(result + 104) != 3)
  {
    ZinAssertImpl("DynamicGOC only supports FP16 bottoms format");
  }

  v7 = *(InputTensor + 72);
  v8 = *(result + 72);
  if (v7 != v8)
  {
    ZinAssertImpl("DynamicGOC must have the same bottoms channel size, but input N%zdD%zdC%zdH%zdW%zd and bias N%zdD%zdC%zdH%zdW%zd are given", *(InputTensor + 64), *(InputTensor + 96), v7, *(InputTensor + 80), *(InputTensor + 88), *(result + 64), *(result + 96), v8, *(result + 80), *(result + 88));
  }

  v9 = 0;
  do
  {
    v10 = *(a2 + v9 + 1752);
    if (v10 == v7)
    {
      break;
    }

    v13 = v9 == 32;
    v9 += 8;
  }

  while (!v13);
  v11 = *(InputTensor + 64);
  if (v10 != v7)
  {
    ZinAssertImpl("DynamicGOC input channel size must be one of [1, 2, 3, 4, 8], but N%zdD%zdC%zdH%zdW%zd are given", v11, *(InputTensor + 96), v7, *(InputTensor + 80), *(InputTensor + 88));
  }

  v12 = *(InputTensor + 96);
  v13 = v11 == 1 && v12 == 1;
  if (!v13 || *(InputTensor + 80) != 1)
  {
    ZinAssertImpl("DynamicGOC input dimensions N%zdD%zdC%zdH%zdW%zd are not within supported range, N[1-1]D[1-1]C[%zd-%zd]H[1-1]W[%zd-%zd].", v11, v12);
  }

  v15 = *(result + 64);
  if (v15 != 1)
  {
    v16 = *(result + 96);
    if (v16 != 1 && *(result + 80) != 1)
    {
      ZinAssertImpl("DynamicGOC bias dimensions N%zdD%zdC%zdH%zdW%zd are not within supported range, N[1-1]D[1-1]C[%zd-%zd]H[1-1]W[%zd-%zd].", v15, v16);
    }
  }

  return result;
}

void ZinTernaryDynamicGOCLayer::LowerH11H12(std::string *a1, ZinIrOpLayerGraph *a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  ZinObjectNameFactory::ZinObjectNameFactory(&v16, a1 + 2);
  v4 = **ZinIrContext::GetMemoryPools(a1);
  v5 = *(*ZinIrContext::GetMemoryPools(a1) + 8);
  v15 = 0;
  v6 = (*(*v5 + 40))(v5, 0);
  ZinMirTensorTransform::FixAllocation(v6, &v16, 2, &v15, 1, 1, 1);
  if (v15)
  {
    v21.__r_.__value_.__r.__words[0] = v15;
    LODWORD(v21.__r_.__value_.__r.__words[2]) = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v21);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v21, v7);
    v22[0] = a1;
    v20[0] = v22;
    v20[1] = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v17, v20);
    ZinIrOpLayerGraph::InsertNodeBetween(a2, &v21, v5, a1, &v17, 0, __p);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[1]);
    v17.__r_.__value_.__r.__words[0] = &unk_1F19C3950;
    p_size = &v17.__r_.__value_.__l.__size_;
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&p_size);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
    v5 = v15;
  }

  v8 = (*(*v5 + 40))(v5, 0);
  DimensionOrderHint::DimensionOrderHint(__p, 2);
  fixed = ZinMirTensorTransform::FixDimensionOrder(v8, a2, __p, 1u);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!fixed)
  {
    v10 = *(*ZinIrContext::GetMemoryPools(a1) + 8);
    (*(*v4 + 40))(v4, 0);
    v11 = (*(*v10 + 48))(v10, 0);
    v12 = v11[1];
    v22[0] = *v11;
    v22[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    (*(v16 + 16))(&v17, &v16, 0);
    v13 = std::string::append(&v17, "_bias_tensor", 0xCuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    __p[2] = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    ZinIrTensor::CreateTensor();
  }

  ZinAssertImpl("ANEC internal error: Ternary Dynamic GOC lowering failed to set dimension order hint");
}

void sub_1A6918FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  *(v47 - 232) = v46 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v47 - 232));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v47 - 144);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A6919404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    (*(*a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1AC55A070](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t ZinTernaryDynamicGOCLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A69196B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void ZinTernaryDynamicGOCLayer::ValidateScaleOrBias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a3 != 3)
  {
    if (*(a4 + 23) >= 0)
    {
      v6 = a4;
    }

    else
    {
      v6 = *a4;
    }

    ZinAssertImpl("DynamicGOC %s tensor format must be FP16", v6);
  }

  v4 = *(a3 + 16);
  if (v4 != 1)
  {
    v5 = *(a3 + 32);
    if (v5 != 1)
    {
      if (*(a4 + 23) >= 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = *a4;
      }

      ZinAssertImpl("DynamicGOC %s must set either width or channel size to 1, but C%ldW%ld are given", v8, *(a3 + 16), v5);
    }
  }

  if (*(a3 + 24) != 1)
  {
    if (*(a4 + 23) >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    ZinAssertImpl("DynamicGOC %s height dimension must be 1, but N%zdD%zdC%zdH%zdW%zd are provided", v7, *(a3 + 8), *(a3 + 40), v4, *(a3 + 24), *(a3 + 32));
  }
}

void ZinTernaryDynamicGOCLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  if ((a3[1988] & 1) == 0)
  {
    ZinAssertImpl("DynamicGOC is not supported", a2);
  }

  v6 = a2[1] - *a2;
  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  v7 = *(a1 + 11);
  v8 = *(v7 + 81);
  v9 = *(v7 + 82);
  if (v8 == 1)
  {
    if (v9)
    {
      ZinAssertImpl("Invalid DynamicGOC: Bias_Only and Scale_Only can't be true at the same time");
    }

    if (v6 != 272)
    {
      ZinAssertImpl("Bias_only DynamicGOC requires 2 inputs.");
    }

    v10 = *a2;
    v11 = std::string::basic_string[abi:ne200100]<0>(__p, "Bias");
    ZinTernaryDynamicGOCLayer::ValidateScaleOrBias(v11, v12, v10 + 136, __p);
  }

  else if (v9)
  {
    if (v6 != 272)
    {
      ZinAssertImpl("Scale_only DynamicGOC requires 2 inputs.");
    }

    v13 = *a2;
    v14 = std::string::basic_string[abi:ne200100]<0>(__p, "Scale");
    ZinTernaryDynamicGOCLayer::ValidateScaleOrBias(v14, v15, v13 + 136, __p);
  }

  else
  {
    if (v6 != 408)
    {
      ZinAssertImpl("DynamicGOC requires 3 inputs.");
    }

    if (!ZinTensorDimensionsEqual((*a2 + 144), (*a2 + 280)))
    {
      ZinAssertImpl("DynamicGOC Scale and Bias bias dimensions must be equal");
    }

    v16 = *a2;
    v17 = std::string::basic_string[abi:ne200100]<0>(__p, "Scale");
    ZinTernaryDynamicGOCLayer::ValidateScaleOrBias(v17, v18, v16 + 136, __p);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = *a2;
    v20 = std::string::basic_string[abi:ne200100]<0>(__p, "Bias");
    ZinTernaryDynamicGOCLayer::ValidateScaleOrBias(v20, v21, v19 + 272, __p);
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a3[1162] & 1) == 0 && *(*a2 + 168) != 1)
  {
    ZinAssertImpl("DynamicGOC Bias width dimension must be 1");
  }
}

void sub_1A6919944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrDynamicGOCInfo::~ZinIrDynamicGOCInfo(ZinIrDynamicGOCInfo *this)
{
  *this = &unk_1F19F0118;
  v2 = (this + 24);
  *(this + 3) = &unk_1F19DD770;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 40);
  ZinIrHalH13g::~ZinIrHalH13g(v2);

  ZinIrHalH13g::~ZinIrHalH13g(this);
}

{
  *this = &unk_1F19F0118;
  v2 = (this + 24);
  *(this + 3) = &unk_1F19DD770;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 40);
  ZinIrHalH13g::~ZinIrHalH13g(v2);
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void ZinIrDynamicGOCInfo::ZinIrDynamicGOCInfo(ZinIrDynamicGOCInfo *this, const ZinIrDynamicGOCInfo *a2)
{
  v4 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(this, a2);
  *v4 = &unk_1F19F0118;
  v5 = *(a2 + 3);
  *(v4 + 16) = *(a2 + 8);
  *(v4 + 12) = v5;
  ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(v4 + 24, a2 + 24);
  *(this + 3) = &unk_1F19DD770;
  std::unordered_map<ZinIrDimension,unsigned long>::unordered_map(this + 40, a2 + 40);
  v6 = *(a2 + 40);
  *(this + 82) = *(a2 + 82);
  *(this + 40) = v6;
}

void sub_1A6919B28(_Unwind_Exception *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(v2);
  ZinIrHalH13g::~ZinIrHalH13g(v1);
  _Unwind_Resume(a1);
}

uint64_t CpTransposeGraph::CpTransposeGraph(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  CpGraph::CpGraph(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1065353216;
  return a1;
}

void sub_1A6919BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CpTransposeGraph::~CpTransposeGraph(void **this)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((this + 62));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((this + 57));
  std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::~__hash_table(this + 52);
  std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::~__hash_table((this + 47));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((this + 42));

  CpGraph::~CpGraph(this);
}

void *CpTransposeGraph::SetTensorDimensions(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  v13 = a2;
  if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((a1 + 336), &v13))
  {
    v9 = &v13;
    result = std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 336), &v13, &std::piecewise_construct, &v9);
    v6 = *a3;
    v7 = a3[1];
    result[7] = *(a3 + 4);
    *(result + 5) = v7;
    *(result + 3) = v6;
  }

  else
  {
    v9 = v13;
    v8 = a3[1];
    v10 = *a3;
    v11 = v8;
    v12 = *(a3 + 4);
    return std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::TensorDimensions>>((a1 + 336), &v9, &v9);
  }

  return result;
}

__n128 CpTransposeGraph::GetTensorDimensions@<Q0>(CpTransposeGraph *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 42, &v7);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  result = *(v4 + 3);
  v6 = *(v4 + 5);
  *a3 = result;
  *(a3 + 16) = v6;
  *(a3 + 32) = v4[7];
  return result;
}

void CpTransposeGraph::SetRootTensorConstraint(uint64_t a1, unint64_t *a2, char *a3)
{
  v9 = a2;
  if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((a1 + 416), &v9))
  {
    v6 = &v9;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 416), &v9, &std::piecewise_construct, &v6);
    *(v5 + 24) = *a3;
    std::string::operator=((v5 + 4), (a3 + 8));
  }

  else
  {
    v6 = v9;
    v7 = *a3;
    if (a3[31] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a3 + 1), *(a3 + 2));
    }

    else
    {
      __p = *(a3 + 8);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::RootTensorConstraint>>((a1 + 416), &v6, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A6919EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CpTransposeGraph::DisqualifyTranspose(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v9 = a2;
  v3 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((a1 + 416), &v9);
  if (!v3)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v4 = v3;
  *(v3 + 24) = 1;
  std::operator+<char>();
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  std::string::append((v4 + 4), v5, v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A6919F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CpTransposeGraph::SetLayerTruthTable(CpTransposeGraph *this, void *a2, std::string *a3)
{
  v9 = a2;
  if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>(this + 47, &v9))
  {
    v6 = &v9;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 47, &v9, &std::piecewise_construct, &v6);
    if (&v5[1] != a3)
    {
      std::vector<CpTransposeUtils::LayerConstraint>::__assign_with_size[abi:ne200100]<CpTransposeUtils::LayerConstraint*,CpTransposeUtils::LayerConstraint*>(&v5[1].__r_.__value_.__l.__data_, a3->__r_.__value_.__r.__words[0], a3->__r_.__value_.__l.__size_, 0x8E38E38E38E38E39 * ((a3->__r_.__value_.__l.__size_ - a3->__r_.__value_.__r.__words[0]) >> 3));
    }

    std::string::operator=(v5 + 2, a3 + 1);
  }

  else
  {
    v6 = v9;
    memset(v7, 0, sizeof(v7));
    std::vector<CpTransposeUtils::LayerConstraint>::__init_with_size[abi:ne200100]<CpTransposeUtils::LayerConstraint*,CpTransposeUtils::LayerConstraint*>(v7, a3->__r_.__value_.__r.__words[0], a3->__r_.__value_.__l.__size_, 0x8E38E38E38E38E39 * ((a3->__r_.__value_.__l.__size_ - a3->__r_.__value_.__r.__words[0]) >> 3));
    if (SHIBYTE(a3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, a3[1].__r_.__value_.__l.__data_, a3[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = a3[1];
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>>(this + 47, &v6, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = v7;
    std::vector<CpTransposeUtils::LayerConstraint>::__destroy_vector::operator()[abi:ne200100](&v10);
  }
}

void sub_1A691A0E0(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<CpTransposeUtils::LayerConstraint>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

void *CpTransposeGraph::GetRootTensorConstraint(CpTransposeGraph *this, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 52, &v4);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void *CpTransposeGraph::GetLayerTruthTable(CpTransposeGraph *this, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 47, &v4);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

uint64_t CpTransposeGraph::DebugPrintNode@<X0>(CpTransposeGraph *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  __p.__r_.__value_.__r.__words[0] = a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 29, &__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    CpGraph::GetLayerName(this, a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = a2;
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 34, &__p))
    {
      goto LABEL_19;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "T", 1);
    std::to_string(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, a3);
  v14[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v11;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v19);
}

void sub_1A691A3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t CpTransposeGraph::DebugPrint@<X0>(CpTransposeGraph *this@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "livein: ", 8);
  std::unordered_set<unsigned long long>::unordered_set(&v34, this + 456);
  for (i = v36; i; i = *i)
  {
    CpTransposeGraph::DebugPrintNode(this, i[2], __p);
    if (v33 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v33 >= 0)
    {
      v6 = HIBYTE(v33);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v34);
  LOBYTE(v34) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, &v34, 1);
  CpGraph::GetLayers(this, 0, &v34);
  v9 = v34;
  v8 = v35;
  if (v34 != v35)
  {
    do
    {
      v10 = *v9;
      __p[0] = *v9;
      if (std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 29, __p))
      {
        OutputTensor = CpGraph::GetOutputTensor(this, v10);
        CpGraph::GetInputTensors(this, v10, __p);
        *(&v40[1].__locale_ + *(v38 - 24)) = 40;
        CpTransposeGraph::DebugPrintNode(this, OutputTensor, &v31);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v31;
        }

        else
        {
          v12 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v31.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v12, size);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, " = ", 3);
        CpTransposeGraph::DebugPrintNode(this, v10, &v31);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v31;
        }

        else
        {
          v15 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = v31.__r_.__value_.__l.__size_;
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "  ", 2);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v18 = __p[0];
        v19 = __p[1];
        while (v18 != v19)
        {
          CpTransposeGraph::DebugPrintNode(this, *v18, &v31);
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v31;
          }

          else
          {
            v20 = v31.__r_.__value_.__r.__words[0];
          }

          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = v31.__r_.__value_.__l.__size_;
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v20, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          ++v18;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "\n", 1);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      ++v9;
    }

    while (v9 != v8);
    v9 = v34;
  }

  if (v9)
  {
    v35 = v9;
    operator delete(v9);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "liveout: ", 9);
  std::unordered_set<unsigned long long>::unordered_set(&v34, this + 496);
  for (j = v36; j; j = *j)
  {
    std::to_string(&v31, j[2]);
    v24 = std::string::insert(&v31, 0, "T", 1uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v33 = v24->__r_.__value_.__r.__words[2];
    *__p = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v33 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    if (v33 >= 0)
    {
      v27 = HIBYTE(v33);
    }

    else
    {
      v27 = __p[1];
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v26, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v34);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v37, a2);
  v37[0] = *MEMORY[0x1E69E54D8];
  v29 = *(MEMORY[0x1E69E54D8] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v38 = v29;
  v39 = MEMORY[0x1E69E5548] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v42);
}

uint64_t CpTransposeGraph::DebugPrint@<X0>(CpTransposeGraph *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "   ", 3);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n=====================================================\n", 55);
  CpTransposeGraph::DebugPrint(a1, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v11, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n=====================================================\n", 55);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, a3);
  v18[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v14;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v23);
}

void CpTransposeGraph::CreateDotStringRootTensorNode(unint64_t **a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v118 = 0;
  v119[0] = a2;
  v116 = 0;
  v117 = 0;
  v7 = std::string::basic_string[abi:ne200100]<0>(&v115, "\n\t\tstyle=filled");
  std::string::append(v7, "\n\t\tfontname=Arial Unicode MS\n\t\tfontsize=11\n\t\tmargin=.2", 0x38uLL);
  std::string::append(&v115, "\n\t\tfillcolor=white\n\t\tgradientangle=270", 0x26uLL);
  std::string::basic_string[abi:ne200100]<0>(&v114, "");
  CpGraph::GetTensorName(a1, v119[0], &v114);
  CpTransposeGraph::GetTensorDimensions(a1, v119[0], v113);
  std::string::basic_string[abi:ne200100]<0>(&v112, "[N");
  std::to_string(&v100, v113[0]);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v100;
  }

  else
  {
    v8 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  std::string::append(&v112, v8, size);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  std::to_string(&v111, v113[4]);
  v10 = std::string::insert(&v111, 0, "D", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v100;
  }

  else
  {
    v12 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v100.__r_.__value_.__l.__size_;
  }

  std::string::append(&v112, v12, v13);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  std::to_string(&v111, v113[1]);
  v14 = std::string::insert(&v111, 0, "C", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v100;
  }

  else
  {
    v16 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v100.__r_.__value_.__l.__size_;
  }

  std::string::append(&v112, v16, v17);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  std::to_string(&v111, v113[2]);
  v18 = std::string::insert(&v111, 0, "H", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v100;
  }

  else
  {
    v20 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v100.__r_.__value_.__l.__size_;
  }

  std::string::append(&v112, v20, v21);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  std::to_string(&v111, v113[3]);
  v22 = std::string::insert(&v111, 0, "W", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v100;
  }

  else
  {
    v24 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v100.__r_.__value_.__l.__size_;
  }

  std::string::append(&v112, v24, v25);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  std::string::append(&v112, "]", 1uLL);
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(&v100, "Dims", &v112);
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v116, &v100);
  if (v103 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  RootTensorConstraint = CpTransposeGraph::GetRootTensorConstraint(a1, v119[0]);
  v27 = RootTensorConstraint;
  if (*(RootTensorConstraint + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, RootTensorConstraint[1], RootTensorConstraint[2]);
  }

  else
  {
    v111 = *(RootTensorConstraint + 1);
  }

  v28 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v114.__r_.__value_.__l.__size_;
  }

  std::string::replace(&v111, 0, v28 + 1, "", 0);
  v29 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v111;
  }

  else
  {
    v30 = v111.__r_.__value_.__r.__words[0];
  }

  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v111.__r_.__value_.__l.__size_;
  }

  for (; v29; --v29)
  {
    if (v30->__r_.__value_.__s.__data_[0] == 58)
    {
      v30->__r_.__value_.__s.__data_[0] = 44;
    }

    v30 = (v30 + 1);
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(&v100, "Constraints", &v111);
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v116, &v100);
  if (v103 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v110.__r_.__value_.__r.__words[0] = v119[0];
  v31 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a1 + 8, &v110);
  std::string::basic_string[abi:ne200100]<0>(&v110, "");
  v32 = (v31 + 3);
  if (!v31)
  {
    v32 = a1 + 13;
  }

  v34 = v32;
  v33 = *v32;
  if (v34[1] - v33 == 8)
  {
    CpGraph::GetLayerName(a1, *v33, &v110);
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(&v100, "Def", &v110);
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v116, &v100);
    if (v103 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }
  }

  v109.__r_.__value_.__r.__words[0] = v119[0];
  v35 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a1 + 3, &v109);
  std::string::basic_string[abi:ne200100]<0>(&v109, "");
  v36 = (v35 + 3);
  if (!v35)
  {
    v36 = a1 + 13;
  }

  v37 = *v36;
  v38 = v36[1];
  if (*v36 != v38)
  {
    v39 = 1;
    do
    {
      CpGraph::GetLayerName(a1, *v37, &v109);
      std::to_string(&v107, v39);
      v40 = std::string::insert(&v107, 0, "Use ", 4uLL);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v108.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v108.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string,std::string&,0>(&v100, &v108, &v109);
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v116, &v100);
      if (v103 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      ++v37;
      ++v39;
    }

    while (v37 != v38);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v100);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100.__r_.__value_.__r.__words[2], "\tsubgraph ", 10);
  std::to_string(&v99, v119[0]);
  v43 = std::string::insert(&v99, 0, "cluster_", 8uLL);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&v107, " {", 2uLL);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v108;
  }

  else
  {
    v47 = v108.__r_.__value_.__r.__words[0];
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v108.__r_.__value_.__l.__size_;
  }

  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v47, v48);
  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &v115;
  }

  else
  {
    v50 = v115.__r_.__value_.__r.__words[0];
  }

  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = v115.__r_.__value_.__l.__size_;
  }

  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "\n\t\tlabel=<", 10);
  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n\t\t\t<font point-size='13' face='Arial Rounded MT Bold'>", 55);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v114;
  }

  else
  {
    v55 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v114.__r_.__value_.__l.__size_;
  }

  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "</font><br/><br align='left'/>", 30);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v58 = v116;
  for (i = v117; v58 != i; v58 += 48)
  {
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100.__r_.__value_.__r.__words[2], "\n\t\t\t<font face='Arial Rounded MT Bold'>", 39);
    v61 = *(v58 + 23);
    if (v61 >= 0)
    {
      v62 = v58;
    }

    else
    {
      v62 = *v58;
    }

    if (v61 >= 0)
    {
      v63 = *(v58 + 23);
    }

    else
    {
      v63 = *(v58 + 8);
    }

    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ":</font> ", 9);
    v66 = *(v58 + 47);
    if (v66 >= 0)
    {
      v67 = v58 + 24;
    }

    else
    {
      v67 = *(v58 + 24);
    }

    if (v66 >= 0)
    {
      v68 = *(v58 + 47);
    }

    else
    {
      v68 = *(v58 + 32);
    }

    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "<br align='left'/>", 18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100.__r_.__value_.__r.__words[2], "\n\t\t>\n", 5);
  std::string::basic_string[abi:ne200100]<0>(&v108, "<");
  std::string::basic_string[abi:ne200100]<0>(&v107, "white");
  if (*v27 == 1)
  {
    std::string::append(&v108, "Original", 8uLL);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      v107.__r_.__value_.__l.__size_ = 3;
      v70 = v107.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v107.__r_.__value_.__s + 23) = 3;
      v70 = &v107;
    }

    LODWORD(v70->__r_.__value_.__l.__data_) = 6579570;
  }

  else
  {
    if (*(a3 + 72) == 1)
    {
      if (*std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3, v119) == 1)
      {
        v71 = "Original | Transposed <font color='red'>(*)</font>";
      }

      else
      {
        v71 = "Original <font color='red'>(*)</font> | Transposed";
      }

      v72 = 50;
    }

    else
    {
      v71 = "Original | Transposed";
      v72 = 21;
    }

    std::string::append(&v108, v71, v72);
  }

  std::string::append(&v108, ">", 1uLL);
  std::to_string(&v93, v119[0]);
  v73 = std::string::insert(&v93, 0, "\t\tnode_", 8uLL);
  v74 = *&v73->__r_.__value_.__l.__data_;
  v94.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
  *&v94.__r_.__value_.__l.__data_ = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v94, " [label=", 9uLL);
  v76 = *&v75->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = &v108;
  }

  else
  {
    v77 = v108.__r_.__value_.__r.__words[0];
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v78 = v108.__r_.__value_.__l.__size_;
  }

  v79 = std::string::append(&v95, v77, v78);
  v80 = *&v79->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  v81 = std::string::append(&v96, ",shape=box,style=filled,fillcolor=", 0x22uLL);
  v82 = *&v81->__r_.__value_.__l.__data_;
  v97.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
  *&v97.__r_.__value_.__l.__data_ = v82;
  v81->__r_.__value_.__l.__size_ = 0;
  v81->__r_.__value_.__r.__words[2] = 0;
  v81->__r_.__value_.__r.__words[0] = 0;
  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v107;
  }

  else
  {
    v83 = v107.__r_.__value_.__r.__words[0];
  }

  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v107.__r_.__value_.__l.__size_;
  }

  v85 = std::string::append(&v97, v83, v84);
  v86 = *&v85->__r_.__value_.__l.__data_;
  v98.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
  *&v98.__r_.__value_.__l.__data_ = v86;
  v85->__r_.__value_.__l.__size_ = 0;
  v85->__r_.__value_.__r.__words[2] = 0;
  v85->__r_.__value_.__r.__words[0] = 0;
  v87 = std::string::append(&v98, ",fontname=Consolas, monospace, bold,fontsize=11]", 0x32uLL);
  v88 = *&v87->__r_.__value_.__l.__data_;
  v99.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
  *&v99.__r_.__value_.__l.__data_ = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = &v99;
  }

  else
  {
    v89 = v99.__r_.__value_.__r.__words[0];
  }

  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v90 = v99.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100.__r_.__value_.__r.__words[2], v89, v90);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100.__r_.__value_.__r.__words[2], ";\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "\t}\n", 3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v100, a4);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v100.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D8];
  v92 = *(MEMORY[0x1E69E54D8] + 72);
  *(v100.__r_.__value_.__r.__words + *(v100.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v100.__r_.__value_.__r.__words[2] = v92;
  __p = (MEMORY[0x1E69E5548] + 16);
  if (v105 < 0)
  {
    operator delete(v104);
  }

  __p = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v102);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC559F60](&v106);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v100.__r_.__value_.__r.__words[0] = &v116;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v100);
}

void sub_1A691B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 217) < 0)
  {
    operator delete(*(v37 - 240));
  }

  if (*(v37 - 153) < 0)
  {
    operator delete(*(v37 - 176));
  }

  if (*(v37 - 129) < 0)
  {
    operator delete(*(v37 - 152));
  }

  a37 = v37 - 128;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

void CpTransposeGraph::CreateDotStringLayerNode(unint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v282 = 0;
  v283[0] = a2;
  v280 = 0;
  v281 = 0;
  v7 = std::string::basic_string[abi:ne200100]<0>(&v279, "style=rounded,filled");
  std::string::append(v7, "\n\t\tfontname=Arial Unicode MS\n\t\tfontsize=11\n\t\tfontcolor=#222222\n\t\tpad=4", 0x4AuLL);
  std::string::append(&v279, "\n\t\tbgcolor=#EEEEEE\n\t", 0x16uLL);
  std::string::basic_string[abi:ne200100]<0>(&v278, "");
  CpGraph::GetLayerName(a1, v283[0], &v278);
  LayerTruthTable = CpTransposeGraph::GetLayerTruthTable(a1, v283[0]);
  v9 = LayerTruthTable;
  if (*(LayerTruthTable + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, LayerTruthTable[3], LayerTruthTable[4]);
  }

  else
  {
    v277 = *(LayerTruthTable + 1);
  }

  size = HIBYTE(v278.__r_.__value_.__r.__words[2]);
  if ((v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v278.__r_.__value_.__l.__size_;
  }

  std::string::replace(&v277, 0, size + 1, "", 0);
  v11 = HIBYTE(v277.__r_.__value_.__r.__words[2]);
  if ((v277.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v277;
  }

  else
  {
    v12 = v277.__r_.__value_.__r.__words[0];
  }

  if ((v277.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v277.__r_.__value_.__l.__size_;
  }

  for (; v11; --v11)
  {
    if (v12->__r_.__value_.__s.__data_[0] == 58)
    {
      v12->__r_.__value_.__s.__data_[0] = 44;
    }

    v12 = (v12 + 1);
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(&v268, "Constraints", &v277);
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v280, &v268);
  if (v271 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v260[0] = v283[0];
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a1 + 8, v260);
  v254 = a4;
  if (v13)
  {
    v14 = (v13 + 3);
  }

  else
  {
    v14 = a1 + 13;
  }

  std::string::basic_string[abi:ne200100]<0>(&v276, "");
  v15 = *v14;
  v16 = v14[1];
  if (*v14 != v16)
  {
    v17 = 1;
    do
    {
      CpGraph::GetTensorName(a1, *v15, &v276);
      std::to_string(&v275, v17);
      v18 = std::string::insert(&v275, 0, "Input ", 6uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v261 = v18->__r_.__value_.__r.__words[2];
      *v260 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string,std::string&,0>(&v268, v260, &v276);
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v280, &v268);
      if (v271 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v268.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v261) < 0)
      {
        operator delete(v260[0]);
      }

      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v275.__r_.__value_.__l.__data_);
      }

      ++v15;
      ++v17;
    }

    while (v15 != v16);
  }

  v260[0] = v283[0];
  v20 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a1 + 3, v260);
  std::string::basic_string[abi:ne200100]<0>(&v275, "");
  v21 = (v20 + 3);
  if (!v20)
  {
    v21 = a1 + 13;
  }

  v23 = v21;
  v22 = *v21;
  if (v23[1] - v22 == 8)
  {
    CpGraph::GetTensorName(a1, *v22, &v275);
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(&v268, "Output", &v275);
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v280, &v268);
    if (v271 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v268.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v268);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v268.__r_.__value_.__r.__words[2], "\tsubgraph ", 10);
  std::to_string(&v266, v283[0]);
  v25 = std::string::insert(&v266, 0, "cluster_", 8uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v267.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v267.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v267, " {", 2uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v261 = v27->__r_.__value_.__r.__words[2];
  *v260 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v261 >= 0)
  {
    v29 = v260;
  }

  else
  {
    v29 = v260[0];
  }

  if (v261 >= 0)
  {
    v30 = HIBYTE(v261);
  }

  else
  {
    v30 = v260[1];
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
  if ((v279.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v279;
  }

  else
  {
    v32 = v279.__r_.__value_.__r.__words[0];
  }

  if ((v279.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v279.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v279.__r_.__value_.__l.__size_;
  }

  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n\t\tlabel=<", 10);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n\t\t\t<font point-size='13' face='Arial Rounded MT Bold'>", 55);
  if ((v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v278;
  }

  else
  {
    v37 = v278.__r_.__value_.__r.__words[0];
  }

  if ((v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v278.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v278.__r_.__value_.__l.__size_;
  }

  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "</font><br/><br align='left'/>", 30);
  if (SHIBYTE(v261) < 0)
  {
    operator delete(v260[0]);
  }

  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  v41 = v280;
  for (i = v281; v41 != i; v41 += 48)
  {
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v268.__r_.__value_.__r.__words[2], "\n\t\t\t<font face='Arial Rounded MT Bold'>", 39);
    v43 = *(v41 + 23);
    if (v43 >= 0)
    {
      v44 = v41;
    }

    else
    {
      v44 = *v41;
    }

    if (v43 >= 0)
    {
      v45 = *(v41 + 23);
    }

    else
    {
      v45 = *(v41 + 8);
    }

    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ":</font> ", 9);
    v48 = *(v41 + 47);
    if (v48 >= 0)
    {
      v49 = v41 + 24;
    }

    else
    {
      v49 = *(v41 + 24);
    }

    if (v48 >= 0)
    {
      v50 = *(v41 + 47);
    }

    else
    {
      v50 = *(v41 + 32);
    }

    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "<br align='left'/>", 18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v268.__r_.__value_.__r.__words[2], "\n\t\t>\n", 5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v260);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<", 1);
  if (v14[1] - *v14 == 8)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Input 1    \t| Output     \t| Valid<br align='left'/>", 51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Original   \t| ", 28);
    v52 = "T";
    if ((*(*v9 + 24) & 1) == 0 && !*(*v9 + 25))
    {
      v52 = "<font color='red'>F</font>";
    }

    v53 = strlen(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v52, v53);
    if (*(*v9 + 32) != -1 && *(*v9 + 40) != -1)
    {
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
      v55 = MEMORY[0x1AC559B70](v54, *(*v9 + 32));
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " m:", 3);
      v57 = MEMORY[0x1AC559B70](v56, *(*v9 + 40));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ")", 1);
      if (*(*v9 + 25))
      {
        v58 = " (materialize transposed domain)";
      }

      else
      {
        v58 = "";
      }

      if (*(*v9 + 25))
      {
        v59 = 32;
      }

      else
      {
        v59 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v58, v59);
      if (*(*v9 + 40))
      {
        v60 = "";
      }

      else
      {
        v60 = " (dce candidate)";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v60, 16 * (*(*v9 + 40) == 0));
      if (*(*v9 + 26))
      {
        v61 = "";
      }

      else
      {
        v61 = " (has transpose=false)";
      }

      if (*(*v9 + 26))
      {
        v62 = 0;
      }

      else
      {
        v62 = 22;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v61, v62);
    }

    if (*(a3 + 72) == 1)
    {
      v63 = *(a3 + 56);
      if (v63)
      {
        v64 = a3 + 56;
        do
        {
          v65 = *(v63 + 32);
          v66 = v65 >= v283[0];
          v67 = v65 < v283[0];
          if (v66)
          {
            v64 = v63;
          }

          v63 = *(v63 + 8 * v67);
        }

        while (v63);
        if (v64 != a3 + 56 && v283[0] >= *(v64 + 32) && !*std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
        }
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Transposed \t| ", 28);
    v68 = "T";
    if ((*(*v9 + 96) & 1) == 0 && !*(*v9 + 97))
    {
      v68 = "<font color='red'>F</font>";
    }

    v69 = strlen(v68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v68, v69);
    if (*(*v9 + 104) != -1 && *(*v9 + 112) != -1)
    {
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
      v71 = MEMORY[0x1AC559B70](v70, *(*v9 + 104));
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " m:", 3);
      v73 = MEMORY[0x1AC559B70](v72, *(*v9 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ")", 1);
      if (*(*v9 + 97))
      {
        v74 = " (materialize transposed domain)";
      }

      else
      {
        v74 = "";
      }

      if (*(*v9 + 97))
      {
        v75 = 32;
      }

      else
      {
        v75 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v74, v75);
      if (*(*v9 + 112))
      {
        v76 = "";
      }

      else
      {
        v76 = " (dce candidate)";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v76, 16 * (*(*v9 + 112) == 0));
      if (*(*v9 + 98))
      {
        v77 = "";
      }

      else
      {
        v77 = " (has transpose=false)";
      }

      if (*(*v9 + 98))
      {
        v78 = 0;
      }

      else
      {
        v78 = 22;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v77, v78);
    }

    if (*(a3 + 72) == 1)
    {
      v79 = *(a3 + 56);
      if (v79)
      {
        v80 = a3 + 56;
        do
        {
          v81 = *(v79 + 32);
          v66 = v81 >= v283[0];
          v82 = v81 < v283[0];
          if (v66)
          {
            v80 = v79;
          }

          v79 = *(v79 + 8 * v82);
        }

        while (v79);
        if (v80 != a3 + 56 && v283[0] >= *(v80 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
        }
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Original   \t| ", 28);
    v83 = "T";
    if ((*(*v9 + 168) & 1) == 0 && !*(*v9 + 169))
    {
      v83 = "<font color='red'>F</font>";
    }

    v84 = strlen(v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v83, v84);
    if (*(*v9 + 176) != -1 && *(*v9 + 184) != -1)
    {
      v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
      v86 = MEMORY[0x1AC559B70](v85, *(*v9 + 176));
      v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, " m:", 3);
      v88 = MEMORY[0x1AC559B70](v87, *(*v9 + 184));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ")", 1);
      if (*(*v9 + 169))
      {
        v89 = " (materialize transposed domain)";
      }

      else
      {
        v89 = "";
      }

      if (*(*v9 + 169))
      {
        v90 = 32;
      }

      else
      {
        v90 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v89, v90);
      if (*(*v9 + 184))
      {
        v91 = "";
      }

      else
      {
        v91 = " (dce candidate)";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v91, 16 * (*(*v9 + 184) == 0));
      if (*(*v9 + 170))
      {
        v92 = "";
      }

      else
      {
        v92 = " (has transpose=false)";
      }

      if (*(*v9 + 170))
      {
        v93 = 0;
      }

      else
      {
        v93 = 22;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v92, v93);
    }

    if (*(a3 + 72) == 1)
    {
      v94 = *(a3 + 56);
      if (v94)
      {
        v95 = a3 + 56;
        do
        {
          v96 = *(v94 + 32);
          v66 = v96 >= v283[0];
          v97 = v96 < v283[0];
          if (v66)
          {
            v95 = v94;
          }

          v94 = *(v94 + 8 * v97);
        }

        while (v94);
        if (v95 != a3 + 56 && v283[0] >= *(v95 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 2)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
        }
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Transposed \t| ", 28);
    v98 = "T";
    if ((*(*v9 + 240) & 1) == 0 && !*(*v9 + 241))
    {
      v98 = "<font color='red'>F</font>";
    }

    v99 = strlen(v98);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v98, v99);
    if (*(*v9 + 248) != -1 && *(*v9 + 256) != -1)
    {
      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
      v101 = MEMORY[0x1AC559B70](v100, *(*v9 + 248));
      v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " m:", 3);
      v103 = MEMORY[0x1AC559B70](v102, *(*v9 + 256));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, ")", 1);
      if (*(*v9 + 241))
      {
        v104 = " (materialize transposed domain)";
      }

      else
      {
        v104 = "";
      }

      if (*(*v9 + 241))
      {
        v105 = 32;
      }

      else
      {
        v105 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v104, v105);
      if (*(*v9 + 256))
      {
        v106 = "";
      }

      else
      {
        v106 = " (dce candidate)";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v106, 16 * (*(*v9 + 256) == 0));
      if (*(*v9 + 242))
      {
        v107 = "";
      }

      else
      {
        v107 = " (has transpose=false)";
      }

      if (*(*v9 + 242))
      {
        v108 = 0;
      }

      else
      {
        v108 = 22;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v107, v108);
    }

    if (*(a3 + 72) != 1)
    {
      goto LABEL_463;
    }

    v111 = *(a3 + 56);
    v110 = a3 + 56;
    v109 = v111;
    if (!v111)
    {
      goto LABEL_463;
    }

    v112 = v110;
    do
    {
      v113 = *(v109 + 32);
      v66 = v113 >= v283[0];
      v114 = v113 < v283[0];
      if (v66)
      {
        v112 = v109;
      }

      v109 = *(v109 + 8 * v114);
    }

    while (v109);
    if (v112 == v110 || v283[0] < *(v112 + 32) || *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v110 - 8, v283) != 3)
    {
      goto LABEL_463;
    }

LABEL_462:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
    goto LABEL_463;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Input 1    \t| Input 2    \t| Output    \t| Valid<br align='left'/>", 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Original   \t| Original  \t| ", 41);
  v115 = "T";
  if ((*(*v9 + 24) & 1) == 0 && !*(*v9 + 25))
  {
    v115 = "<font color='red'>F</font>";
  }

  v116 = strlen(v115);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v115, v116);
  if (*(*v9 + 32) != -1 && *(*v9 + 40) != -1)
  {
    v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v118 = MEMORY[0x1AC559B70](v117, *(*v9 + 32));
    v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, " m:", 3);
    v120 = MEMORY[0x1AC559B70](v119, *(*v9 + 40));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, ")", 1);
    if (*(*v9 + 25))
    {
      v121 = " (materialize transposed domain)";
    }

    else
    {
      v121 = "";
    }

    if (*(*v9 + 25))
    {
      v122 = 32;
    }

    else
    {
      v122 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v121, v122);
    if (*(*v9 + 40))
    {
      v123 = "";
    }

    else
    {
      v123 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v123, 16 * (*(*v9 + 40) == 0));
    if (*(*v9 + 26))
    {
      v124 = "";
    }

    else
    {
      v124 = " (has transpose=false)";
    }

    if (*(*v9 + 26))
    {
      v125 = 0;
    }

    else
    {
      v125 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v124, v125);
  }

  if (*(a3 + 72) == 1)
  {
    v126 = *(a3 + 56);
    if (v126)
    {
      v127 = a3 + 56;
      do
      {
        v128 = *(v126 + 32);
        v66 = v128 >= v283[0];
        v129 = v128 < v283[0];
        if (v66)
        {
          v127 = v126;
        }

        v126 = *(v126 + 8 * v129);
      }

      while (v126);
      if (v127 != a3 + 56 && v283[0] >= *(v127 + 32) && !*std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Original   \t| Transposed\t| ", 41);
  v130 = "T";
  if ((*(*v9 + 96) & 1) == 0 && !*(*v9 + 97))
  {
    v130 = "<font color='red'>F</font>";
  }

  v131 = strlen(v130);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v130, v131);
  if (*(*v9 + 104) != -1 && *(*v9 + 112) != -1)
  {
    v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v133 = MEMORY[0x1AC559B70](v132, *(*v9 + 104));
    v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, " m:", 3);
    v135 = MEMORY[0x1AC559B70](v134, *(*v9 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, ")", 1);
    if (*(*v9 + 97))
    {
      v136 = " (materialize transposed domain)";
    }

    else
    {
      v136 = "";
    }

    if (*(*v9 + 97))
    {
      v137 = 32;
    }

    else
    {
      v137 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v136, v137);
    if (*(*v9 + 112))
    {
      v138 = "";
    }

    else
    {
      v138 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v138, 16 * (*(*v9 + 112) == 0));
    if (*(*v9 + 98))
    {
      v139 = "";
    }

    else
    {
      v139 = " (has transpose=false)";
    }

    if (*(*v9 + 98))
    {
      v140 = 0;
    }

    else
    {
      v140 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v139, v140);
  }

  if (*(a3 + 72) == 1)
  {
    v141 = *(a3 + 56);
    if (v141)
    {
      v142 = a3 + 56;
      do
      {
        v143 = *(v141 + 32);
        v66 = v143 >= v283[0];
        v144 = v143 < v283[0];
        if (v66)
        {
          v142 = v141;
        }

        v141 = *(v141 + 8 * v144);
      }

      while (v141);
      if (v142 != a3 + 56 && v283[0] >= *(v142 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Transposed \t| Original  \t| ", 41);
  v145 = "T";
  if ((*(*v9 + 168) & 1) == 0 && !*(*v9 + 169))
  {
    v145 = "<font color='red'>F</font>";
  }

  v146 = strlen(v145);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v145, v146);
  if (*(*v9 + 176) != -1 && *(*v9 + 184) != -1)
  {
    v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v148 = MEMORY[0x1AC559B70](v147, *(*v9 + 176));
    v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, " m:", 3);
    v150 = MEMORY[0x1AC559B70](v149, *(*v9 + 184));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, ")", 1);
    if (*(*v9 + 169))
    {
      v151 = " (materialize transposed domain)";
    }

    else
    {
      v151 = "";
    }

    if (*(*v9 + 169))
    {
      v152 = 32;
    }

    else
    {
      v152 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v151, v152);
    if (*(*v9 + 184))
    {
      v153 = "";
    }

    else
    {
      v153 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v153, 16 * (*(*v9 + 184) == 0));
    if (*(*v9 + 170))
    {
      v154 = "";
    }

    else
    {
      v154 = " (has transpose=false)";
    }

    if (*(*v9 + 170))
    {
      v155 = 0;
    }

    else
    {
      v155 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v154, v155);
  }

  if (*(a3 + 72) == 1)
  {
    v156 = *(a3 + 56);
    if (v156)
    {
      v157 = a3 + 56;
      do
      {
        v158 = *(v156 + 32);
        v66 = v158 >= v283[0];
        v159 = v158 < v283[0];
        if (v66)
        {
          v157 = v156;
        }

        v156 = *(v156 + 8 * v159);
      }

      while (v156);
      if (v157 != a3 + 56 && v283[0] >= *(v157 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 2)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Original   \t| Transposed \t| Transposed\t| ", 41);
  v160 = "T";
  if ((*(*v9 + 240) & 1) == 0 && !*(*v9 + 241))
  {
    v160 = "<font color='red'>F</font>";
  }

  v161 = strlen(v160);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v160, v161);
  if (*(*v9 + 248) != -1 && *(*v9 + 256) != -1)
  {
    v162 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v163 = MEMORY[0x1AC559B70](v162, *(*v9 + 248));
    v164 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, " m:", 3);
    v165 = MEMORY[0x1AC559B70](v164, *(*v9 + 256));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v165, ")", 1);
    if (*(*v9 + 241))
    {
      v166 = " (materialize transposed domain)";
    }

    else
    {
      v166 = "";
    }

    if (*(*v9 + 241))
    {
      v167 = 32;
    }

    else
    {
      v167 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v166, v167);
    if (*(*v9 + 256))
    {
      v168 = "";
    }

    else
    {
      v168 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v168, 16 * (*(*v9 + 256) == 0));
    if (*(*v9 + 242))
    {
      v169 = "";
    }

    else
    {
      v169 = " (has transpose=false)";
    }

    if (*(*v9 + 242))
    {
      v170 = 0;
    }

    else
    {
      v170 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v169, v170);
  }

  if (*(a3 + 72) == 1)
  {
    v171 = *(a3 + 56);
    if (v171)
    {
      v172 = a3 + 56;
      do
      {
        v173 = *(v171 + 32);
        v66 = v173 >= v283[0];
        v174 = v173 < v283[0];
        if (v66)
        {
          v172 = v171;
        }

        v171 = *(v171 + 8 * v174);
      }

      while (v171);
      if (v172 != a3 + 56 && v283[0] >= *(v172 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 3)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Original   \t| Original  \t| ", 41);
  v175 = "T";
  if ((*(*v9 + 312) & 1) == 0 && !*(*v9 + 313))
  {
    v175 = "<font color='red'>F</font>";
  }

  v176 = strlen(v175);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v175, v176);
  if (*(*v9 + 320) != -1 && *(*v9 + 328) != -1)
  {
    v177 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v178 = MEMORY[0x1AC559B70](v177, *(*v9 + 320));
    v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, " m:", 3);
    v180 = MEMORY[0x1AC559B70](v179, *(*v9 + 328));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v180, ")", 1);
    if (*(*v9 + 313))
    {
      v181 = " (materialize transposed domain)";
    }

    else
    {
      v181 = "";
    }

    if (*(*v9 + 313))
    {
      v182 = 32;
    }

    else
    {
      v182 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v181, v182);
    if (*(*v9 + 328))
    {
      v183 = "";
    }

    else
    {
      v183 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v183, 16 * (*(*v9 + 328) == 0));
    if (*(*v9 + 314))
    {
      v184 = "";
    }

    else
    {
      v184 = " (has transpose=false)";
    }

    if (*(*v9 + 314))
    {
      v185 = 0;
    }

    else
    {
      v185 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v184, v185);
  }

  if (*(a3 + 72) == 1)
  {
    v186 = *(a3 + 56);
    if (v186)
    {
      v187 = a3 + 56;
      do
      {
        v188 = *(v186 + 32);
        v66 = v188 >= v283[0];
        v189 = v188 < v283[0];
        if (v66)
        {
          v187 = v186;
        }

        v186 = *(v186 + 8 * v189);
      }

      while (v186);
      if (v187 != a3 + 56 && v283[0] >= *(v187 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Original   \t| Transposed\t| ", 41);
  v190 = "T";
  if ((*(*v9 + 384) & 1) == 0 && !*(*v9 + 385))
  {
    v190 = "<font color='red'>F</font>";
  }

  v191 = strlen(v190);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v190, v191);
  if (*(*v9 + 392) != -1 && *(*v9 + 400) != -1)
  {
    v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v193 = MEMORY[0x1AC559B70](v192, *(*v9 + 392));
    v194 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v193, " m:", 3);
    v195 = MEMORY[0x1AC559B70](v194, *(*v9 + 400));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, ")", 1);
    if (*(*v9 + 385))
    {
      v196 = " (materialize transposed domain)";
    }

    else
    {
      v196 = "";
    }

    if (*(*v9 + 385))
    {
      v197 = 32;
    }

    else
    {
      v197 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v196, v197);
    if (*(*v9 + 400))
    {
      v198 = "";
    }

    else
    {
      v198 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v198, 16 * (*(*v9 + 400) == 0));
    if (*(*v9 + 386))
    {
      v199 = "";
    }

    else
    {
      v199 = " (has transpose=false)";
    }

    if (*(*v9 + 386))
    {
      v200 = 0;
    }

    else
    {
      v200 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v199, v200);
  }

  if (*(a3 + 72) == 1)
  {
    v201 = *(a3 + 56);
    if (v201)
    {
      v202 = a3 + 56;
      do
      {
        v203 = *(v201 + 32);
        v66 = v203 >= v283[0];
        v204 = v203 < v283[0];
        if (v66)
        {
          v202 = v201;
        }

        v201 = *(v201 + 8 * v204);
      }

      while (v201);
      if (v202 != a3 + 56 && v283[0] >= *(v202 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 5)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Transposed \t| Original  \t| ", 41);
  v205 = "T";
  if ((*(*v9 + 456) & 1) == 0 && !*(*v9 + 457))
  {
    v205 = "<font color='red'>F</font>";
  }

  v206 = strlen(v205);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v205, v206);
  if (*(*v9 + 464) != -1 && *(*v9 + 472) != -1)
  {
    v207 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v208 = MEMORY[0x1AC559B70](v207, *(*v9 + 464));
    v209 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v208, " m:", 3);
    v210 = MEMORY[0x1AC559B70](v209, *(*v9 + 472));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v210, ")", 1);
    if (*(*v9 + 457))
    {
      v211 = " (materialize transposed domain)";
    }

    else
    {
      v211 = "";
    }

    if (*(*v9 + 457))
    {
      v212 = 32;
    }

    else
    {
      v212 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v211, v212);
    if (*(*v9 + 472))
    {
      v213 = "";
    }

    else
    {
      v213 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v213, 16 * (*(*v9 + 472) == 0));
    if (*(*v9 + 458))
    {
      v214 = "";
    }

    else
    {
      v214 = " (has transpose=false)";
    }

    if (*(*v9 + 458))
    {
      v215 = 0;
    }

    else
    {
      v215 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v214, v215);
  }

  if (*(a3 + 72) == 1)
  {
    v216 = *(a3 + 56);
    if (v216)
    {
      v217 = a3 + 56;
      do
      {
        v218 = *(v216 + 32);
        v66 = v218 >= v283[0];
        v219 = v218 < v283[0];
        if (v66)
        {
          v217 = v216;
        }

        v216 = *(v216 + 8 * v219);
      }

      while (v216);
      if (v217 != a3 + 56 && v283[0] >= *(v217 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a3 + 48, v283) == 6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " <font color='red'>(*)</font>", 29);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "Transposed \t| Transposed \t| Transposed\t| ", 41);
  v220 = "T";
  if ((*(*v9 + 528) & 1) == 0 && !*(*v9 + 529))
  {
    v220 = "<font color='red'>F</font>";
  }

  v221 = strlen(v220);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v220, v221);
  if (*(*v9 + 536) != -1 && *(*v9 + 544) != -1)
  {
    v222 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, " (p:", 4);
    v223 = MEMORY[0x1AC559B70](v222, *(*v9 + 536));
    v224 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v223, " m:", 3);
    v225 = MEMORY[0x1AC559B70](v224, *(*v9 + 544));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v225, ")", 1);
    if (*(*v9 + 529))
    {
      v226 = " (materialize transposed domain)";
    }

    else
    {
      v226 = "";
    }

    if (*(*v9 + 529))
    {
      v227 = 32;
    }

    else
    {
      v227 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v226, v227);
    if (*(*v9 + 544))
    {
      v228 = "";
    }

    else
    {
      v228 = " (dce candidate)";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v228, 16 * (*(*v9 + 544) == 0));
    if (*(*v9 + 530))
    {
      v229 = "";
    }

    else
    {
      v229 = " (has transpose=false)";
    }

    if (*(*v9 + 530))
    {
      v230 = 0;
    }

    else
    {
      v230 = 22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, v229, v230);
  }

  if (*(a3 + 72) == 1)
  {
    v233 = *(a3 + 56);
    v232 = a3 + 56;
    v231 = v233;
    if (v233)
    {
      v234 = v232;
      do
      {
        v235 = *(v231 + 32);
        v66 = v235 >= v283[0];
        v236 = v235 < v283[0];
        if (v66)
        {
          v234 = v231;
        }

        v231 = *(v231 + 8 * v236);
      }

      while (v231);
      if (v234 != v232 && v283[0] >= *(v234 + 32) && *std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v232 - 8, v283) == 7)
      {
        goto LABEL_462;
      }
    }
  }

LABEL_463:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, "<br align='left'/>", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v261, ">", 1);
  std::to_string(&v257, v283[0]);
  v237 = std::string::insert(&v257, 0, "\t\tnode_", 8uLL);
  v238 = *&v237->__r_.__value_.__l.__data_;
  v258.__r_.__value_.__r.__words[2] = v237->__r_.__value_.__r.__words[2];
  *&v258.__r_.__value_.__l.__data_ = v238;
  v237->__r_.__value_.__l.__size_ = 0;
  v237->__r_.__value_.__r.__words[2] = 0;
  v237->__r_.__value_.__r.__words[0] = 0;
  v239 = std::string::append(&v258, " [label=", 9uLL);
  v240 = *&v239->__r_.__value_.__l.__data_;
  v259.__r_.__value_.__r.__words[2] = v239->__r_.__value_.__r.__words[2];
  *&v259.__r_.__value_.__l.__data_ = v240;
  v239->__r_.__value_.__l.__size_ = 0;
  v239->__r_.__value_.__r.__words[2] = 0;
  v239->__r_.__value_.__r.__words[0] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v260, v255);
  if ((v256 & 0x80u) == 0)
  {
    v241 = v255;
  }

  else
  {
    v241 = v255[0];
  }

  if ((v256 & 0x80u) == 0)
  {
    v242 = v256;
  }

  else
  {
    v242 = v255[1];
  }

  v243 = std::string::append(&v259, v241, v242);
  v244 = *&v243->__r_.__value_.__l.__data_;
  v266.__r_.__value_.__r.__words[2] = v243->__r_.__value_.__r.__words[2];
  *&v266.__r_.__value_.__l.__data_ = v244;
  v243->__r_.__value_.__l.__size_ = 0;
  v243->__r_.__value_.__r.__words[2] = 0;
  v243->__r_.__value_.__r.__words[0] = 0;
  v245 = std::string::append(&v266, ",shape=box,style=filled,fillcolor=white,fontname=Consolas, monospace, bold,fontsize=11]", 0x59uLL);
  v246 = *&v245->__r_.__value_.__l.__data_;
  v267.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
  *&v267.__r_.__value_.__l.__data_ = v246;
  v245->__r_.__value_.__l.__size_ = 0;
  v245->__r_.__value_.__r.__words[2] = 0;
  v245->__r_.__value_.__r.__words[0] = 0;
  if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v247 = &v267;
  }

  else
  {
    v247 = v267.__r_.__value_.__r.__words[0];
  }

  if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v248 = HIBYTE(v267.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v248 = v267.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v268.__r_.__value_.__r.__words[2], v247, v248);
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  if (v256 < 0)
  {
    operator delete(v255[0]);
  }

  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v249 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v268.__r_.__value_.__r.__words[2], ";\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v249, "\t}\n", 3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v268, v254);
  v260[0] = *MEMORY[0x1E69E54D8];
  v250 = v260[0];
  v251 = *(MEMORY[0x1E69E54D8] + 72);
  v252 = *(MEMORY[0x1E69E54D8] + 64);
  *(v260 + *(v260[0] - 3)) = v252;
  v253 = v251;
  v261 = v251;
  v262 = MEMORY[0x1E69E5548] + 16;
  if (v264 < 0)
  {
    operator delete(v263[7].__locale_);
  }

  v262 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v263);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC559F60](&v265);
  v268.__r_.__value_.__r.__words[0] = v250;
  *(v268.__r_.__value_.__r.__words + *(v250 - 3)) = v252;
  v268.__r_.__value_.__r.__words[2] = v253;
  __p = (MEMORY[0x1E69E5548] + 16);
  if (v273 < 0)
  {
    operator delete(v272);
  }

  __p = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v270);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC559F60](&v274);
  if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v275.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v278.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  v268.__r_.__value_.__r.__words[0] = &v280;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v268);
}