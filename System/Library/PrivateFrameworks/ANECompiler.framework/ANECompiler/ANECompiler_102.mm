uint64_t ZinAneTd<19u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1132) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1132) | 0x10000;
  }

  *(result + 1132) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1132) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 1132) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1132) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 1132) & 0xFFF3FFFF;
  }

  *(result + 1132) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 1132) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 1132) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 1132) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 1132) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1132) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 1132) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1132) | 0x1C0;
  }

  else
  {
    v2 = *(result + 1132) & 0xFFFFFE3F;
  }

  *(result + 1132) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 588) = *(result + 588) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 424), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 1032) = *(a1 + 1032) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 1036) = *(a1 + 1036) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 1040) = *(a1 + 1040) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 1044) = *(a1 + 1044) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 1048) = *(a1 + 1048) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<19u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1028) = *(result + 1028) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 1028) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 1028) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 1028) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 1028) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 1028) = v4;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<19u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 720);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 720) & 0xFFFFFFDF;
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
      v8 = *(a1 + 720) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 720) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 720) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 720) | 0x30;
  }

LABEL_20:
  *(a1 + 720) = v8;
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

  return ZinAneTd<19u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 720) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 720) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 720) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 720) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 720) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 720) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 720) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 720) | 0x3000;
LABEL_11:
      *(a1 + 720) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 720) = *(a1 + 720) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 616) = *(result + 616) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 616) = *(result + 616) & 0xFFFFFF0F | v4;
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
  *(result + 624) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 620) = *(result + 620) & 0xFFFFFF0F | v4;
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
  *(result + 628) = v6 | v5;
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 644) = *(a1 + 644) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 480), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 640) = *(a1 + 640) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 648) = *(a1 + 648) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 652) = *(a1 + 652) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<19u>::SetTileDmaSrc1WrapCfg(a1, a4);
  *(a1 + 800) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 624) = *(a1 + 624) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 4974, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<19u>::SetTileDmaSrc1WrapCfg(a1, a3);
}

void sub_1A6900B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return ZinAneTdHw_v19::AddRelocInfo(v4, a2, 4932, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 616) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 616) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 616) & 0xCFFFFFFF;
  }

  *(result + 616) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 620) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 620) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 620) & 0xCFFFFFFF;
  }

  *(result + 620) = v2;
  return result;
}

unint64_t ZinAneTd<19u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1464) + 640));
  *(a1 + 616) = *(a1 + 616) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<19u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1464) + 640));
  *(a1 + 620) = *(a1 + 620) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ***ZinAneTd<19u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 808) = result[3];
  }

  return result;
}

uint64_t ***ZinAneTd<19u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 812) = result[3];
  }

  return result;
}

int8x16_t ZinAneTd<19u>::SetTileDmaSrc1PixelOffset(int8x16_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, a1[48], v5);
  a1[48] = result;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 736);
  *(result + 736) = v4 | 1;
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
  *(result + 736) = v5;
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

  *(result + 736) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 736) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 740) = *(a1 + 740) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1464) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 744) = *(a1 + 744) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<19u>::SetTileDmaSrc1MetaData(int32x2_t *a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v19::AddRelocInfo(&a1[1], a2, 4944, a3, 1, 1, 0, 0);
  a1[92].i32[0] &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  a1[87] = vsli_n_s32(a1[87], __PAIR64__(a5, a4), 7uLL);
  a1[88].i32[0] = a1[88].i32[0] & 0x7F | (a6 << 7);
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 964) = *(a1 + 964) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 620) = *(result + 620) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<19u>::SetTileDmaSrc2WrapCfg(a1, a4);
  *(a1 + 804) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 628) = *(a1 + 628) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 4975, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<19u>::SetTileDmaSrc2WrapCfg(a1, a3);
}

void sub_1A6901194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t ZinAneTd<19u>::SetTileDmaSrc2PixelOffset(int8x16_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, a1[49], v5);
  a1[49] = result;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 752);
  *(result + 752) = v4 | 1;
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
  *(result + 752) = v5;
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

  *(result + 752) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 752) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 756) = *(a1 + 756) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1464) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 760) = *(a1 + 760) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<19u>::SetTileDmaSrc2MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v19::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 752) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 708) = vsli_n_s32(*(a1 + 708), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 716) = *(a1 + 716) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<19u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 1320);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 1320) & 0xFFFFFFDF;
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
      v8 = *(a1 + 1320) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 1320) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 1320) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 1320) | 0x30;
  }

LABEL_20:
  *(a1 + 1320) = v8;
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

  return ZinAneTd<19u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<19u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 1320) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 1320) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 1320) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 1320) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 1320) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 1320) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 1320) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 1320) | 0x3000;
LABEL_11:
      *(a1 + 1320) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 632), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1028) = *(a1 + 1028) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1464) + 632), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 1320) = *(a1 + 1320) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<19u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1028) = *(a1 + 1028) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 1028) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 1264) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 1264) = v4;
  *(result + 1028) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
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
      *(result + 1264) = *(result + 1264) & 0xFFFFFF0F | v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 544), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 1284) = *(a1 + 1284) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 536), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 1280) = *(a1 + 1280) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 1288) = *(a1 + 1288) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<19u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1464) + 560), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 1292) = *(a1 + 1292) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 1320) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 1320) = v2;
  *(result + 1320) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<19u>::SetTileDmaDstWrapCfg(a1, a4);
  *(a1 + 1316) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstWrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 1268) = *(a1 + 1268) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5197, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<19u>::SetTileDmaDstWrapCfg(a1, a3);
}

void sub_1A6901B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<19u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<19>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 19]");
  }
}

uint64_t ZinAneTd<19u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return ZinAneTdHw_v19::AddRelocInfo(v4, a2, 5186, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<19u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 1336) = *(a1 + 1336) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1464) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 1340) = *(a1 + 1340) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<19u>::SetTileDmaDstCompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 1328);
  *(result + 1328) = v4 | 1;
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
  *(result + 1328) = v5;
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

  *(result + 1328) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 1328) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

double ZinAneTd<19u>::SetTileDmaDstMetaData(int32x2_t *a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v19::AddRelocInfo(&a1[1], a2, 5192, a3, 1, 1, 0, 0);
  a1[166].i32[0] &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  a1[163] = vsli_n_s32(a1[163], __PAIR64__(a5, a4), 7uLL);
  a1[164].i32[0] = a1[164].i32[0] & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1364) = *(result + 1364) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreFlush(uint64_t result, int a2, __int16 a3)
{
  *(result + 1364) = *(result + 1364) & 0xFFFFFFFE | a2;
  *(result + 1400) = a3;
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreTaskSync(uint64_t result, int a2, int a3)
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

  *(result + 1364) = v3 | v4 | *(result + 1364) & 0xFFFFFFF3;
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreEarlyTermination(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8, __int16 a9, __int16 a10, char a11, __int16 a12, char a13)
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

  *(result + 1364) = v14 | v13 | v15 | v16 | v17 | *(result + 1364) & 0xFFFFFE0F;
  if (a3)
  {
    *(result + 1396) = a8;
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

  *(result + 1398) = a9;
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
  *(result + 1404) = a11;
  if ((a5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(result + 1406) = a13;
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreTelemetryBackOff(uint64_t result, int a2, char a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v6 = *(result + 1408) & 0xFFFFFFFE | a2;
  if (a2)
  {
    v6 = (16 * (a3 & 0xF)) | (a4 << 8) | (a5 << 16) | (a6 << 24) | *(result + 1408) & 0xE | a2 & 0xF;
  }

  *(result + 1408) = v6;
  return result;
}

uint64_t ZinAneTd<19u>::SetCacheDmaPreFootprintLimiter(uint64_t result, int a2, __int16 a3, unsigned __int16 a4)
{
  if (a2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 1364) & 0xFFFFFDFF | v4;
  *(result + 1364) = v5;
  if (a2)
  {
    *(result + 1364) = v5 | (a4 << 16);
    *(result + 1392) = *(result + 1392) & 0xF001FFFF | ((a3 & 0x7FF) << 17);
  }

  return result;
}

void ZinAneTd<19u>::SetCacheDmaPreDSIDAndSize(uint64_t a1, unsigned __int16 *a2, int a3)
{
  *(a1 + 1388) = *(a1 + 1388) & 0xC000007F | ((a3 & 0x7FFFFF) << 7);
  if (*(a2 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5698, *a2, 0, 0, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A69020C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<19u>::SetCacheDmaPrePause(uint64_t result, int a2, int a3, int a4, int a5)
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

  *(result + 1412) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(result + 1412) & 0xFFF80000;
  return result;
}

BOOL ZinAneTd<19u>::SetCacheDmaPreThrottle(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6)
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

  *(a1 + 1416) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(a1 + 1416) & 0xFF8F0000;
  v11 = 0;
  result = ZinCodegenUtil::ValueToRegister(a6, (*(a1 + 1464) + 744), &v11);
  if (!result)
  {
    ZinAssertImpl("Illegal Throttle Rate");
  }

  *(a1 + 1416) = *(a1 + 1416) & 0xFFF8FFFF | ((v11 & 7) << 16);
  return result;
}

BOOL ZinAneTd<19u>::SetCacheDmaPrePrefetchRate(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 752), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal Prefetch Rate");
  }

  *(a1 + 1364) = *(a1 + 1364) & 0xFFFF1FFF | ((v4 & 7) << 13);
  return result;
}

uint64_t ZinAneTd<19u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetDoubleInt8Enable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1208) = *(result + 1208) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 1208) = *(result + 1208) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 1208) | 0x80000;
  }

  else
  {
    v2 = *(result + 1208) & 0xFFF7FFFF;
  }

  *(result + 1208) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::Set1DWinogradMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<19u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 52) |= 0x400u;
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 736), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 76) = *(a1 + 76) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1464) + 728), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 80) = *(a1 + 80) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<19u>::SetPaletteBlockSize(uint64_t result, char a2)
{
  *(result + 52) = *(result + 52) & 0xFFFFC7FF | ((a2 & 7) << 11);
  *(result + 1204) = *(result + 1204) & 0xF1FFFFFF | ((a2 & 7) << 25);
  return result;
}

uint64_t ZinAneTd<19u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 1224) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 1224) | 0x100000;
LABEL_7:
      *(result + 1224) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1224) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 1224) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1224) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 1224) & 0xFFFFCFFF;
LABEL_10:
    *(result + 1224) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xFFFFFBFF | v2;
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

uint64_t ZinAneTd<19u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xFFFFFEFF | v2;
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

uint64_t ZinAneTd<19u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
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
  *(result + 1204) = *(result + 1204) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
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
  *(result + 1204) = *(result + 1204) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelAsymQuantEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDetectZeros(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1204) = *(result + 1204) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 1228) = *(result + 1228) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<19u>::SetQuantizationOutputZeroOffset(uint64_t result, int a2, char a3, int a4, uint64_t a5)
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

    *(result + 1248) = a3;
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
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

  *(result + 1208) = *(result + 1208) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<19u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1208) = *(result + 1208) & 0xFFFFBFFF | v9;
  *(result + 1220) = v10 | *(result + 1220) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<19u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1208) = *(result + 1208) & 0xFFFFFFEF | v9;
  *(result + 1216) = v10 | *(result + 1216) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<19u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
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

    *(a1 + 1212) = v8;
    v6 = 64;
  }

  *(a1 + 1208) = *(a1 + 1208) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<19u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 576) & 0xFFFFFFF3 | 4;
    }

    else
    {
      v4 = *(result + 576) & 0xFFFFFFF3;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 576) | 0xC;
      goto LABEL_10;
    case 4:
      v4 = *(result + 576) & 0xFFFFFFF3 | 8;
LABEL_10:
      *(result + 576) = v4;
      return result;
    case 2:
      ZinAssertImpl("Error: Tiny source mode is not supported for this arch", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcCoeffUserTag(uint64_t result, unsigned __int8 a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(a2 << 16);
  do
  {
    *(result + 84 + v2) = vorrq_s8((*(result + 84 + v2) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

uint64_t ZinAneTd<19u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 576) = *(result + 576) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 516) & 0xFFFFFFFC | 2;
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
    v2 = *(result + 516) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 516) & 0xFFFFFFFC;
LABEL_8:
  *(result + 516) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 516) & 0xFFFFFFF3 | 8;
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
    v2 = *(result + 516) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 516) & 0xFFFFFFF3;
LABEL_8:
  *(result + 516) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 516) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 516) & 0xFFFFFFCF;
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
  v2 = *(result + 516) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 516) = v2;
  return result;
}

BOOL ZinAneTd<19u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 216), &v4);
  if (result)
  {
    *(a1 + 568) = *(a1 + 568) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 128), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 136), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 168), &v4);
  if (result)
  {
    *(a1 + 560) = *(a1 + 560) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 120), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 112), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 144), &v4);
  if (result)
  {
    *(a1 + 560) = *(a1 + 560) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 88), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 80), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 160), &v4);
  if (result)
  {
    *(a1 + 560) = *(a1 + 560) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 104), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 96), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 152), &v4);
  if (result)
  {
    *(a1 + 560) = *(a1 + 560) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 200), &v4);
  if (result)
  {
    *(a1 + 552) = *(a1 + 552) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 24), &v4);
  if (result)
  {
    *(a1 + 520) = *(a1 + 520) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 16), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 32), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 40), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 64), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 56), &v4);
  if (result)
  {
    *(a1 + 540) = *(a1 + 540) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 72), &v4);
  if (result)
  {
    *(a1 + 548) = *(a1 + 548) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<19u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 48), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 564) = *(result + 564) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<19u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 208), &v4);
  if (result)
  {
    *(a1 + 566) = v4;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
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
          *(result + 1300) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 1300) = *(result + 1300) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

_DWORD *ZinAneTd<20u>::SetEventFlags(_DWORD *result, int a2, int a3, int a4)
{
  result[4] = a2;
  result[8] = a4;
  result[6] = a3;
  return result;
}

BOOL ZinAneTd<20u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 312), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 1000) = *(a1 + 1000) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 1004) = *(a1 + 1004) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1512) + 332), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1512) + 328), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 1008) = *(a1 + 1008) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 1012) = *(a1 + 1012) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 1016) = *(a1 + 1016) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("Packed10 format not fully implemented yet\n");
        }

LABEL_13:
        ZinAssertImpl("Invalid Dma Format");
      }

      goto LABEL_8;
    }

LABEL_9:
    v2 = *(result + 988) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 988) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 988) | 0xC0;
LABEL_10:
  *(result + 988) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("Packed10 format not fully implemented yet\n");
        }

        goto LABEL_17;
      }

LABEL_10:
      v2 = *(result + 992) & 0xFFFFFF3F;
      goto LABEL_13;
    }

LABEL_8:
    v2 = *(result + 992) & 0xFFFFFF3F | 0x40;
    goto LABEL_13;
  }

  if (a2 > 11)
  {
    if ((a2 - 12) >= 2)
    {
      if (a2 == 14 || a2 == 17)
      {
        ZinAssertImpl("Src2 Int32,Uint32 not supported for architecture");
      }

LABEL_17:
      ZinAssertImpl("Invalid Dma Format");
    }

    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_8;
  }

  if (a2 != 11)
  {
    goto LABEL_17;
  }

  v2 = *(result + 992) | 0xC0;
LABEL_13:
  *(result + 992) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
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
    v2 = *(result + 1056) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 1056) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 1056) | 0xC0;
LABEL_10:
  *(result + 1056) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 1084) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 1084) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 1084) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 1084) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 1084) & 0xFFFFF8FF;
LABEL_12:
      *(result + 1084) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 792), 5);
  *(a1 + 1144) = *(a1 + 1144) & 0xFFFFE0FF | ((result & 0x1F) << 8);
  return result;
}

uint64_t ZinAneTd<20u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1084) = *(result + 1084) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 1088) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 988) = *(result + 988) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 988) = *(a1 + 988) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src1SourceType(uint64_t result, int a2)
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

  *(result + 988) = *(result + 988) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src2SourceType(uint64_t result, int a2)
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

  *(result + 992) = *(result + 992) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 1020) = *(a1 + 1020) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 1024) = *(a1 + 1024) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1512) + 372), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1512) + 368), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 1028) = *(a1 + 1028) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 1032) = *(a1 + 1032) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1512) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 1036) = *(a1 + 1036) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 808), 5);
  *(a1 + 1144) = *(a1 + 1144) & 0xE0FFFFFF | ((result & 0x1F) << 24);
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 988) & 0xFDF80FFF;
  *(result + 988) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 988) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 992) & 0xFDF80FFF;
  *(result + 992) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 992) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 1056) & 0xFDF80FFF;
  *(result + 1056) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 1056) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1084) = *(result + 1084) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 1092) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<20u>::SetL2Src2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 992) = *(result + 992) & 0xF7FFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 5)
      {
        ZinAssertImpl("ElementWise Mult is not supported");
      }

      v2 = *(result + 1240) & 0xFFFFFFF8 | 4;
      goto LABEL_12;
    }

    if (a2 == 6)
    {
      v2 = *(result + 1240) & 0xFFFFFFF8 | 5;
      goto LABEL_12;
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
      if (a2 != 2)
      {
        ZinAssertImpl("ElementWise Sqr is not supported");
      }

      v2 = *(result + 1240) & 0xFFFFFFF8 | 3;
      goto LABEL_12;
    }

    if (!a2)
    {
      v2 = *(result + 1240) & 0xFFFFFFF8;
LABEL_12:
      *(result + 1240) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 1240) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 1240) | 8;
LABEL_7:
      *(result + 1240) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1240) = *(result + 1240) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1236) & 0xFFFFFFFC | 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 1236) | 3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1236) & 0xFFFFFFFC | 1;
  }

  else
  {
    v2 = *(result + 1236) & 0xFFFFFFFC;
  }

  *(result + 1236) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
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
      *(result + 304) = *(result + 304) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
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
      *(result + 280) = *(result + 280) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 328) = *(result + 328) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 352) = *(result + 352) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 616), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 212) = *(a1 + 4 * a3 + 212) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 608), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 148) = *(a1 + 4 * a3 + 148) & 0x3F | (v6 << 6);
  }

  return result;
}

_DWORD *ZinAneTd<20u>::SetPaddingMode(_DWORD *result, int a2, int a3)
{
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        result[154] |= 0x10000u;
        return result;
      }

      if (a2 == 9)
      {
        v4 = 0;
        v3 = (a3 != 0) << 18;
        goto LABEL_18;
      }

LABEL_21:
      ZinAssertImpl("Invalid padding mode: %d", a2);
    }

    if (!a3)
    {
      v3 = 0;
      v4 = 12;
      goto LABEL_18;
    }

LABEL_20:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      v3 = 0;
      v4 = 4;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a2 != 3)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    goto LABEL_20;
  }

  v3 = 0x40000;
  v4 = 8;
LABEL_18:
  result[246] = v4 & 0xFF00FFFF | (a3 << 16) | result[246] & 0xFF00FFF3;
  result[310] = result[310] & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1236) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1236) | 0x10000;
  }

  *(result + 1236) = v2;
  return result;
}

void ZinAneTd<20u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, char a5)
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
    ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5518, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5512, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5506, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5500, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A6904AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<20u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFF3 | 8;
  result[309] = result[309] & 0xFFF9FFFF | 0x40000;
  result[71] = result[71] & 0x3F | (a3 << 6);
  result[70] |= 1u;
  return result;
}

_DWORD *ZinAneTd<20u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFFC | 2;
  result[309] = result[309] & 0xFFE7FFFF | 0x100000;
  result[77] = result[77] & 0x3F | (a3 << 6);
  result[76] |= 1u;
  return result;
}

uint64_t ZinAneTd<20u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 332) = *(result + 332) & 0x3F | (a3 << 6);
  *(result + 328) |= 1u;
  return result;
}

uint64_t ZinAneTd<20u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 356) = *(result + 356) & 0x3F | (a3 << 6);
  *(result + 352) |= 1u;
  return result;
}

uint64_t ZinAneTd<20u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 984) = *(result + 984) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 624) = *(result + 624) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 624) = *(result + 624) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 624) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
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
        *(result + 624) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<20u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 1124) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 1124) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 1124) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 1124) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 1124) = v2;
      return;
    case 4:
      v2 = *(result + 1124) & 0xFFF8FFFF | 0x40000;
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

uint64_t ZinAneTd<20u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1124) = *(result + 1124) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
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
        *(result + 1124) |= v4;
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

BOOL ZinAneTd<20u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 1164) = *(a1 + 1164) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1512) + 648);
        v4 = 2;
        break;
      case 4:
        *(a1 + 1164) = *(a1 + 1164) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1512) + 648);
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
    *(a1 + 1164) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1512) + 648);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 1164) = *(a1 + 1164) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1512) + 648);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 1164) = *(a1 + 1164) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1512) + 648));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1164) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1164) | 0x10000;
  }

  *(result + 1164) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1164) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 1164) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1164) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 1164) & 0xFFF3FFFF;
  }

  *(result + 1164) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 1164) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 1164) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 1164) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 1164) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1164) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 1164) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1164) | 0x1C0;
  }

  else
  {
    v2 = *(result + 1164) & 0xFFFFFE3F;
  }

  *(result + 1164) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 624) = *(result + 624) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 424), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 1060) = *(a1 + 1060) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 1064) = *(a1 + 1064) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 1068) = *(a1 + 1068) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 1072) = *(a1 + 1072) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 1076) = *(a1 + 1076) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<20u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1056) = *(result + 1056) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 1056) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 1056) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 1056) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 1056) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 1056) = v4;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<20u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 764);
        v7 = 45056;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 764) & 0xFFFFDFFF;
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
      v8 = *(a1 + 764) & 0xFFFF4FFF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 764) & 0xFFFF4FFF | 0x8000;
      goto LABEL_20;
    }

    v8 = *(a1 + 764) & 0xFFFF4FFF | 0x1000;
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

    v8 = *(a1 + 764) | 0x3000;
  }

LABEL_20:
  *(a1 + 764) = v8;
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

  return ZinAneTd<20u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 764) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 764) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 764) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 764) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 764) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 764) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 764) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 764) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 764) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 764) = v4;
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 764) = *(a1 + 764) & 0xFFFFFF0F | (16 * (v4 & 0xF));
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 652) = *(result + 652) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1E4M3Overflow(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 == 1)
    {
      v2 = *(result + 764) | 0x1000000;
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v2 = *(result + 764) & 0xFEFFFFFF;
    }

    *(result + 764) = v2;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 652) = *(result + 652) & 0xFFFFFF0F | v4;
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
  *(result + 660) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 656) = *(result + 656) & 0xFFFFFF0F | v4;
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
  *(result + 664) = v6 | v5;
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 688) = *(a1 + 688) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 480), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 684) = *(a1 + 684) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 692) = *(a1 + 692) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 696) = *(a1 + 696) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 660) = *(a1 + 660) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 820) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 4970, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 660) = *(a1 + 660) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A6905B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v20::AddRelocInfo(v4, a2, 4934, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 652) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 652) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 652) & 0xCFFFFFFF;
  }

  *(result + 652) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 656) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 656) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 656) & 0xCFFFFFFF;
  }

  *(result + 656) = v2;
  return result;
}

unint64_t ZinAneTd<20u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1512) + 640));
  *(a1 + 652) = *(a1 + 652) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<20u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1512) + 640));
  *(a1 + 656) = *(a1 + 656) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ***ZinAneTd<20u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 828) = result[3];
  }

  return result;
}

uint64_t ***ZinAneTd<20u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 832) = result[3];
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 780);
  *(result + 780) = v4 | 1;
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
  *(result + 780) = v5;
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

  *(result + 780) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 780) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 784) = *(a1 + 784) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1512) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 788) = *(a1 + 788) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<20u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 780) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 740) = vsli_n_s32(*(a1 + 740), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 748) = *(a1 + 748) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<20u>::SetTileDmaSrc2FormatMode(a1, a2);
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
        v7 = *(a1 + 768);
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

    v7 = *(a1 + 768) & 0xFFFFDFFF;
    v8 = 36864;
LABEL_18:
    v6 = v7 | v8;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 768) & 0xFFFF4FFF;
      goto LABEL_19;
    }

    if (v4 != 5)
    {
      v6 = *(a1 + 768) & 0xFFFF4FFF | 0x1000;
      goto LABEL_19;
    }

LABEL_15:
    v6 = *(a1 + 768) & 0xFFFF4FFF | 0x8000;
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

  v6 = *(a1 + 768) | 0x3000;
LABEL_19:
  *(a1 + 768) = v6;
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

  return ZinAneTd<20u>::SetTileDmaSrc2MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 768) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 768) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 768) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 768) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 768) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 768) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 768) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 768) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 768) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 768) = v4;
  return result;
}

BOOL ZinAneTd<20u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 992) = *(a1 + 992) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x40000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 656) = *(result + 656) & 0xBFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2E4M3Overflow(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 == 1)
    {
      v2 = *(result + 768) | 0x1000000;
    }

    else
    {
      if (a2)
      {
        return result;
      }

      v2 = *(result + 768) & 0xFEFFFFFF;
    }

    *(result + 768) = v2;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 664) = *(a1 + 664) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 824) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 664) = *(a1 + 664) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 4971, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 664) = *(a1 + 664) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A690648C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<20u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 796);
  *(result + 796) = v4 | 1;
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
  *(result + 796) = v5;
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

  *(result + 796) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 796) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 800) = *(a1 + 800) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1512) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 804) = *(a1 + 804) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<20u>::SetTileDmaSrc2MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), a2, 4948, a3, 1, 1, 0, 0);
  *(a1 + 796) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 752) = vsli_n_s32(*(a1 + 752), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 760) = *(a1 + 760) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<20u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 1360);
        v7 = 45056;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 1360) & 0xFFFFDFFF;
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
      v8 = *(a1 + 1360) & 0xFFFF4FFF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 1360) & 0xFFFF4FFF | 0x8000;
      goto LABEL_20;
    }

    v8 = *(a1 + 1360) & 0xFFFF4FFF | 0x1000;
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

    v8 = *(a1 + 1360) | 0x3000;
  }

LABEL_20:
  *(a1 + 1360) = v8;
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

  return ZinAneTd<20u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<20u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 1360) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 1360) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 1360) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 1360) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 1360) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 1360) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 1360) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 1360) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 1360) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 1360) = v4;
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 632), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1056) = *(a1 + 1056) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1512) + 632), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 1360) = *(a1 + 1360) & 0xFFFFFF0F | (16 * (v5 & 0xF));
  return result;
}

BOOL ZinAneTd<20u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1056) = *(a1 + 1056) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 1056) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 1296) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 1296) = v4;
  *(result + 1056) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
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
      *(result + 1296) = *(result + 1296) & 0xFFFFFF0F | v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 544), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 1324) = *(a1 + 1324) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 536), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 1320) = *(a1 + 1320) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 1328) = *(a1 + 1328) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<20u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1512) + 560), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 1332) = *(a1 + 1332) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 1360) & 0xDFFFFFFF | ((*a2 == 0) << 29);
  *(result + 1360) = v2;
  v3 = v2 & 0xEFFFFFFF | ((a2[1] == 0) << 28);
  *(result + 1360) = v3;
  v4 = v3 & 0xBFFFFFFF | ((a2[2] == 0) << 30);
  *(result + 1360) = v4;
  *(result + 1360) = v4 & 0x7FFFFFFF | ((a2[3] == 0) << 31);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned int a4)
{
  result = ZinIrCodegenGetDMAWrapCfgDim(a4);
  *(a1 + 1300) = *(a1 + 1300) & 0xFFFFF8FF | ((result & 7) << 8);
  *(a1 + 1356) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5199, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a3);
  *(a1 + 1300) = *(a1 + 1300) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

void sub_1A6906E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<20u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<20>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 20]");
  }
}

uint64_t ZinAneTd<20u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v20::AddRelocInfo(v4, a2, 5188, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<20u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 1380) = *(a1 + 1380) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1512) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 1384) = *(a1 + 1384) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<20u>::SetTileDmaDstCompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 1368);
  *(result + 1368) = v4 | 1;
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
  *(result + 1368) = v5;
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

  *(result + 1368) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 1368) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

double ZinAneTd<20u>::SetTileDmaDstMetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v20::AddRelocInfo((a1 + 8), a2, 5194, a3, 1, 1, 0, 0);
  *(a1 + 1368) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 1344) = vsli_n_s32(*(a1 + 1344), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 1352) = *(a1 + 1352) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1412) = *(result + 1412) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreFlush(uint64_t result, int a2, __int16 a3)
{
  *(result + 1412) = *(result + 1412) & 0xFFFFFFFE | a2;
  *(result + 1448) = a3;
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreTaskSync(uint64_t result, int a2, int a3)
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

  *(result + 1412) = v3 | v4 | *(result + 1412) & 0xFFFFFFF3;
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreEarlyTermination(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8, __int16 a9, __int16 a10, char a11, __int16 a12, char a13)
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

  *(result + 1412) = v14 | v13 | v15 | v16 | v17 | *(result + 1412) & 0xFFFFFE0F;
  if (a3)
  {
    *(result + 1444) = a8;
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

  *(result + 1446) = a9;
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
  *(result + 1452) = a11;
  if ((a5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(result + 1454) = a13;
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreTelemetryBackOff(uint64_t result, int a2, char a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v6 = *(result + 1456) & 0xFFFFFFFE | a2;
  if (a2)
  {
    v6 = (16 * (a3 & 0xF)) | (a4 << 8) | (a5 << 16) | (a6 << 24) | *(result + 1456) & 0xE | a2 & 0xF;
  }

  *(result + 1456) = v6;
  return result;
}

uint64_t ZinAneTd<20u>::SetCacheDmaPreFootprintLimiter(uint64_t result, int a2, __int16 a3, unsigned __int16 a4)
{
  if (a2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 1412) & 0xFFFFFDFF | v4;
  *(result + 1412) = v5;
  if (a2)
  {
    *(result + 1412) = v5 | (a4 << 16);
    *(result + 1440) = *(result + 1440) & 0xF001FFFF | ((a3 & 0x7FF) << 17);
  }

  return result;
}

void ZinAneTd<20u>::SetCacheDmaPreDSIDAndSize(uint64_t a1, unsigned __int16 *a2, int a3)
{
  *(a1 + 1436) = *(a1 + 1436) & 0xC000007F | ((a3 & 0x7FFFFF) << 7);
  if (*(a2 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ZinAneTdHw_v20::AddRelocInfo((a1 + 8), &__p, 5698, *a2, 0, 0, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A6907390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<20u>::SetCacheDmaPrePause(uint64_t result, int a2, int a3, int a4, int a5)
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

  *(result + 1460) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(result + 1460) & 0xFFF80000;
  return result;
}

BOOL ZinAneTd<20u>::SetCacheDmaPreThrottle(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6)
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

  *(a1 + 1464) = (v9 | v8) & 0xFFFF0000 | a5 | v7 | *(a1 + 1464) & 0xFF8F0000;
  v11 = 0;
  result = ZinCodegenUtil::ValueToRegister(a6, (*(a1 + 1512) + 744), &v11);
  if (!result)
  {
    ZinAssertImpl("Illegal Throttle Rate");
  }

  *(a1 + 1464) = *(a1 + 1464) & 0xFFF8FFFF | ((v11 & 7) << 16);
  return result;
}

BOOL ZinAneTd<20u>::SetCacheDmaPrePrefetchRate(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 752), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal Prefetch Rate");
  }

  *(a1 + 1412) = *(a1 + 1412) & 0xFFFF1FFF | ((v4 & 7) << 13);
  return result;
}

uint64_t ZinAneTd<20u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 612) = *(result + 612) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetDoubleInt8Enable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1240) = *(result + 1240) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 1240) = *(result + 1240) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 1240) | 0x80000;
  }

  else
  {
    v2 = *(result + 1240) & 0xFFF7FFFF;
  }

  *(result + 1240) = v2;
  return result;
}

uint64_t ZinAneTd<20u>::Set1DWinogradMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 612) = *(result + 612) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<20u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 52) |= 0x400u;
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 736), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 76) = *(a1 + 76) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1512) + 728), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 80) = *(a1 + 80) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<20u>::SetPaletteBlockSize(uint64_t result, char a2)
{
  *(result + 52) = *(result + 52) & 0xFFFFC7FF | ((a2 & 7) << 11);
  *(result + 1236) = *(result + 1236) & 0xF1FFFFFF | ((a2 & 7) << 25);
  return result;
}

uint64_t ZinAneTd<20u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 1256) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 1256) | 0x100000;
LABEL_7:
      *(result + 1256) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1256) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 1256) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1256) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 1256) & 0xFFFFCFFF;
LABEL_10:
    *(result + 1256) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1236) = *(result + 1236) & 0xFFFFFBFF | v2;
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

uint64_t ZinAneTd<20u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1236) = *(result + 1236) & 0xFFFFFEFF | v2;
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

uint64_t ZinAneTd<20u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1236) = *(result + 1236) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
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
  *(result + 1236) = *(result + 1236) & 0xFFFFFFFB | v4;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
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
  *(result + 1236) = *(result + 1236) & 0xFFFFFF0F | v4;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelAsymQuantEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1236) = *(result + 1236) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetKernelDetectZeros(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1236) = *(result + 1236) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 1260) = *(result + 1260) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<20u>::SetQuantizationOutputZeroOffset(uint64_t result, int a2, char a3, int a4, uint64_t a5)
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

    *(result + 1280) = a3;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
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

  *(result + 1240) = *(result + 1240) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<20u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1240) = *(result + 1240) & 0xFFFFBFFF | v9;
  *(result + 1252) = v10 | *(result + 1252) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<20u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1240) = *(result + 1240) & 0xFFFFFFEF | v9;
  *(result + 1248) = v10 | *(result + 1248) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<20u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
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

    *(a1 + 1244) = v8;
    v6 = 64;
  }

  *(a1 + 1240) = *(a1 + 1240) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<20u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 612) = *(result + 612) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<20u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = *(result + 612) & 0xFFFFFFF3;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v2 = *(result + 612) & 0xFFFFFFF3 | 4;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(result + 612) = *(result + 612) & 0xFFFFFFF3 | 4;
        *(result + 1240) |= 0x8000000u;
        break;
      case 3:
        v2 = *(result + 612) | 0xC;
        goto LABEL_13;
      case 4:
        v2 = *(result + 612) & 0xFFFFFFF3 | 8;
LABEL_13:
        *(result + 612) = v2;
        break;
    }
  }

  return result;
}

uint64_t ZinAneTd<20u>::GetNESmallSourceMode(uint64_t a1)
{
  v1 = (*(a1 + 612) >> 2) & 3;
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
    if ((*(a1 + 1243) & 8) != 0)
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

uint64_t ZinAneTd<20u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 612) = *(result + 612) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = *(result + 552) & 0xFFFFFFF8 | 2;
      goto LABEL_10;
    }

    if (a2 == 12)
    {
      v4 = *(result + 552) & 0xFFFFFFF8 | 4;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src1 input format", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 552) & 0xFFFFFFF8 | 1;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 552) & 0xFFFFFFF8;
LABEL_10:
  *(result + 552) = v4;
  return result;
}

uint64_t ZinAneTd<20u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = *(result + 552) & 0xFFFFFFC7 | 0x10;
      goto LABEL_10;
    }

    if (a2 == 12)
    {
      v4 = *(result + 552) & 0xFFFFFFC7 | 0x20;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src2 input format", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 552) & 0xFFFFFFC7 | 8;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 552) & 0xFFFFFFC7;
LABEL_10:
  *(result + 552) = v4;
  return result;
}

uint64_t ZinAneTd<20u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) >= 9)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        v4 = *(result + 552) & 0xFFFFFE3F | 0x100;
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
        v4 = *(result + 552) & 0xFFFFFE3F | 0x40;
        goto LABEL_3;
      }

      if (a2 == 2)
      {
        v4 = *(result + 552) & 0xFFFFFE3F;
        goto LABEL_3;
      }
    }

    ZinAssertImpl("Error: Invalid output format", v2, v3);
  }

LABEL_2:
  v4 = *(result + 552) & 0xFFFFFE3F | 0x80;
LABEL_3:
  *(result + 552) = v4;
  return result;
}

BOOL ZinAneTd<20u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 216), &v4);
  if (result)
  {
    *(a1 + 604) = *(a1 + 604) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetTileOverlapPadReflect(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 608) = v2 & 0x80000000 | *(result + 608) & 0x7FFFFFFF;
  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 128), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 136), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 168), &v4);
  if (result)
  {
    *(a1 + 596) = *(a1 + 596) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 120), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 112), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 144), &v4);
  if (result)
  {
    *(a1 + 596) = *(a1 + 596) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 88), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 80), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 160), &v4);
  if (result)
  {
    *(a1 + 596) = *(a1 + 596) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 104), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 96), &v4);
  if (result)
  {
    *(a1 + 592) = *(a1 + 592) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 152), &v4);
  if (result)
  {
    *(a1 + 596) = *(a1 + 596) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 200), &v4);
  if (result)
  {
    *(a1 + 588) = *(a1 + 588) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 24), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 16), &v4);
  if (result)
  {
    *(a1 + 560) = *(a1 + 560) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 32), &v4);
  if (result)
  {
    *(a1 + 568) = *(a1 + 568) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 40), &v4);
  if (result)
  {
    *(a1 + 564) = *(a1 + 564) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 64), &v4);
  if (result)
  {
    *(a1 + 572) = *(a1 + 572) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 56), &v4);
  if (result)
  {
    *(a1 + 576) = *(a1 + 576) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 72), &v4);
  if (result)
  {
    *(a1 + 584) = *(a1 + 584) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<20u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 48), &v4);
  if (result)
  {
    *(a1 + 580) = *(a1 + 580) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<20u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 600) = *(result + 600) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<20u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1512) + 208), &v4);
  if (result)
  {
    *(a1 + 602) = v4;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
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
          *(result + 1096) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 1096) = *(result + 1096) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

_DWORD *ZinAneTd<26u>::SetEventFlags(_DWORD *result, int a2, int a3, int a4)
{
  result[4] = a2;
  result[8] = a4;
  result[6] = a3;
  return result;
}

BOOL ZinAneTd<26u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 312), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 792) = *(a1 + 792) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 796) = *(a1 + 796) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1312) + 332), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1312) + 328), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 800) = *(a1 + 800) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 804) = *(a1 + 804) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 808) = *(a1 + 808) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("Packed10 format not fully implemented yet\n");
        }

LABEL_13:
        ZinAssertImpl("Invalid Dma Format");
      }

      goto LABEL_8;
    }

LABEL_9:
    v2 = *(result + 780) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 780) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 780) | 0xC0;
LABEL_10:
  *(result + 780) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src1DmaDoubleRateMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 780) = v2 & 0x80000000 | *(result + 780) & 0x7FFFFFFF;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 <= 8)
  {
    if ((a2 - 3) >= 5)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2 == 8)
        {
          ZinAssertImpl("Packed10 format not fully implemented yet\n");
        }

        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_13:
    v2 = *(result + 784) & 0xFFFFFF3F | 0x40;
    goto LABEL_16;
  }

  if (a2 <= 11)
  {
    if ((a2 - 9) < 2)
    {
      goto LABEL_13;
    }

    if (a2 != 11)
    {
      goto LABEL_10;
    }

LABEL_15:
    v2 = *(result + 784) | 0xC0;
    goto LABEL_16;
  }

  if ((a2 - 12) >= 2)
  {
    if (a2 != 14 && a2 != 17)
    {
LABEL_10:
      ZinAssertImpl("Invalid Dma Format");
    }

    goto LABEL_15;
  }

LABEL_11:
  v2 = *(result + 784) & 0xFFFFFF3F;
LABEL_16:
  *(result + 784) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2DmaDoubleRateMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 784) = v2 & 0x80000000 | *(result + 784) & 0x7FFFFFFF;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
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
    v2 = *(result + 848) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 848) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 848) | 0xC0;
LABEL_10:
  *(result + 848) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 876) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 876) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 876) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 876) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 876) & 0xFFFFF8FF;
LABEL_12:
      *(result + 876) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 560), 5);
  *(a1 + 936) = *(a1 + 936) & 0xFFFFE0FF | ((result & 0x1F) << 8);
  return result;
}

uint64_t ZinAneTd<26u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 876) = *(result + 876) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 880) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 780) = *(result + 780) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 780) = *(a1 + 780) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src1SourceType(uint64_t result, int a2)
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

  *(result + 780) = *(result + 780) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2SourceType(uint64_t result, int a2)
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

  *(result + 784) = *(result + 784) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 812) = *(a1 + 812) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 816) = *(a1 + 816) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1312) + 372), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1312) + 368), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 820) = *(a1 + 820) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 824) = *(a1 + 824) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1312) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 828) = *(a1 + 828) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 576), 5);
  *(a1 + 936) = *(a1 + 936) & 0xE0FFFFFF | ((result & 0x1F) << 24);
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 780) & 0xFDF80FFF;
  *(result + 780) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 780) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 784) & 0xFDF80FFF;
  *(result + 784) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 784) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 848) & 0xFDF80FFF;
  *(result + 848) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 848) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 876) = *(result + 876) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 884) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<26u>::SetL2Src2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 784) = *(result + 784) & 0xF7FFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 5)
      {
        ZinAssertImpl("ElementWise Mult is not supported");
      }

      v2 = *(result + 1036) & 0xFFFFFFF8 | 4;
      goto LABEL_12;
    }

    if (a2 == 6)
    {
      v2 = *(result + 1036) & 0xFFFFFFF8 | 5;
      goto LABEL_12;
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
      if (a2 != 2)
      {
        ZinAssertImpl("ElementWise Sqr is not supported");
      }

      v2 = *(result + 1036) & 0xFFFFFFF8 | 3;
      goto LABEL_12;
    }

    if (!a2)
    {
      v2 = *(result + 1036) & 0xFFFFFFF8;
LABEL_12:
      *(result + 1036) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 1036) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 1036) | 8;
LABEL_7:
      *(result + 1036) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1036) = *(result + 1036) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1028) & 0xFFFFFFFC | 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 1028) | 3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1028) & 0xFFFFFFFC | 1;
  }

  else
  {
    v2 = *(result + 1028) & 0xFFFFFFFC;
  }

  *(result + 1028) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDmaSrcConfigPrefetch(uint64_t result, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v2 = *(result + 64) | (*(a2 + 72) << 16);
    *(result + 64) = v2;
    v3 = v2 & 0xFFFFFFFE | *(a2 + 81);
    *(result + 64) = v3;
    *(result + 64) = v3 & 0xFFFFFFFD | (2 * (*(a2 + 82) & 1));
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
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
      *(result + 160) = *(result + 160) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
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
      *(result + 136) = *(result + 136) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 184) = *(result + 184) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 208) = *(result + 208) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 616), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 116) = *(a1 + 4 * a3 + 116) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<26u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 608), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 100) = *(a1 + 4 * a3 + 100) & 0x3F | (v6 << 6);
  }

  return result;
}

_DWORD *ZinAneTd<26u>::SetPaddingMode(_DWORD *result, int a2, int a3)
{
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        result[96] |= 0x10000u;
        return result;
      }

      if (a2 == 9)
      {
        v4 = 0;
        v3 = (a3 != 0) << 18;
        goto LABEL_18;
      }

LABEL_21:
      ZinAssertImpl("Invalid padding mode: %d", a2);
    }

    if (!a3)
    {
      v3 = 0;
      v4 = 12;
      goto LABEL_18;
    }

LABEL_20:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      v3 = 0;
      v4 = 4;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a2 != 3)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    goto LABEL_20;
  }

  v3 = 0x40000;
  v4 = 8;
LABEL_18:
  result[194] = v4 & 0xFF00FFFF | (a3 << 16) | result[194] & 0xFF00FFF3;
  result[259] = result[259] & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<26u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1028) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1028) | 0x10000;
  }

  *(result + 1028) = v2;
  return result;
}

void ZinAneTd<26u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, uint64_t a5)
{
  v5 = a5;
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
    ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5482, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5476, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5470, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v26::AddRelocInfo((a1 + 8), &__p, 5464, v7, 1, 1, v5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A6909E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<26u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFF3 | 8;
  result[257] = result[257] & 0xFFF9FFFF | 0x40000;
  v3 = result[35] & 0x3F | (a3 << 6);
  result[34] |= 1u;
  result[35] = v3;
  return result;
}

_DWORD *ZinAneTd<26u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFFC | 2;
  result[257] = result[257] & 0xFFE7FFFF | 0x100000;
  v3 = result[41] & 0x3F | (a3 << 6);
  result[40] |= 1u;
  result[41] = v3;
  return result;
}

uint64_t ZinAneTd<26u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 188) & 0x3F | (a3 << 6);
  *(result + 184) |= 1u;
  *(result + 188) = v3;
  return result;
}

uint64_t ZinAneTd<26u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 212) & 0x3F | (a3 << 6);
  *(result + 208) |= 1u;
  *(result + 212) = v3;
  return result;
}

uint64_t ZinAneTd<26u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 776) = *(result + 776) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 392) = *(result + 392) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 392) = *(result + 392) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 392) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
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
        *(result + 392) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<26u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 916) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 916) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 916) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 916) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 916) = v2;
      return;
    case 4:
      v2 = *(result + 916) & 0xFFF8FFFF | 0x40000;
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

uint64_t ZinAneTd<26u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 916) = *(result + 916) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
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
        *(result + 916) |= v4;
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

BOOL ZinAneTd<26u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 956) = *(a1 + 956) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1312) + 648);
        v4 = 2;
        break;
      case 4:
        *(a1 + 956) = *(a1 + 956) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1312) + 648);
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
    *(a1 + 956) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1312) + 648);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 956) = *(a1 + 956) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1312) + 648);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 956) = *(a1 + 956) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1312) + 648));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 956) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 956) | 0x10000;
  }

  *(result + 956) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 956) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 956) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 956) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 956) & 0xFFF3FFFF;
  }

  *(result + 956) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 956) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 956) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 956) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 956) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 956) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 956) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 956) | 0x1C0;
  }

  else
  {
    v2 = *(result + 956) & 0xFFFFFE3F;
  }

  *(result + 956) = v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 392) = *(result + 392) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 424), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 852) = *(a1 + 852) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 856) = *(a1 + 856) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 860) = *(a1 + 860) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 864) = *(a1 + 864) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<26u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1312) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 868) = *(a1 + 868) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<26u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 848) = *(result + 848) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<26u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 848) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 848) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 848) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 848) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 848) = v4;
  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<26u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 532);
        v7 = 45056;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 532) & 0xFFFFDFFF;
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
      v8 = *(a1 + 532) & 0xFFFF4FFF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 532) & 0xFFFF4FFF | 0x8000;
      goto LABEL_20;
    }

    v8 = *(a1 + 532) & 0xFFFF4FFF | 0x1000;
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

    v8 = *(a1 + 532) | 0x3000;
  }

LABEL_20:
  *(a1 + 532) = v8;
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

  return ZinAneTd<26u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 532) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 532) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 532) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 532) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<26u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 532) & 0xFFFFF8FF | 0x100;
    }

    else
    {
      v4 = *(a1 + 532) & 0xFFFFF8FF;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v4 = *(a1 + 532) & 0xFFFFF8FF | 0x200;
        break;
      case 3:
        v4 = *(a1 + 532) & 0xFFFFF8FF | 0x300;
        break;
      case 4:
        v4 = *(a1 + 532) & 0xFFFFF8FF | 0x400;
        break;
      default:
        return result;
    }
  }

  *(a1 + 532) = v4;
  return result;
}