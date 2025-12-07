uint64_t ZinAneTd<10u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 308) = *(result + 308) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 308) & 0xFFFFFFF3 | 4;
    }

    else
    {
      v4 = *(result + 308) & 0xFFFFFFF3;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 308) | 0xC;
      goto LABEL_10;
    case 4:
      v4 = *(result + 308) & 0xFFFFFFF3 | 8;
LABEL_10:
      *(result + 308) = v4;
      return result;
    case 2:
      ZinAssertImpl("Error: Tiny source mode is not supported for this arch", v2, v3);
  }

  return result;
}

int8x16_t ZinAneTd<10u>::SetKernelDmaSrcCoeffUserTag(uint64_t a1, unsigned __int8 a2)
{
  result = vorrq_s8((*(a1 + 68) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vdupq_n_s32(a2 << 16));
  *(a1 + 68) = result;
  return result;
}

uint64_t ZinAneTd<10u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 308) = *(result + 308) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 260) & 0xFFFFFFFC | 2;
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
    v2 = *(result + 260) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 260) & 0xFFFFFFFC;
LABEL_8:
  *(result + 260) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 260) & 0xFFFFFFF3 | 8;
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
    v2 = *(result + 260) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 260) & 0xFFFFFFF3;
LABEL_8:
  *(result + 260) = v2;
  return result;
}

uint64_t ZinAneTd<10u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 260) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 260) & 0xFFFFFFCF;
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
  v2 = *(result + 260) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 260) = v2;
  return result;
}

BOOL ZinAneTd<10u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 200), &v4);
  if (result)
  {
    *(a1 + 296) = *(a1 + 296) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 128), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 136), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 168), &v4);
  if (result)
  {
    *(a1 + 288) = *(a1 + 288) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 120), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 112), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 144), &v4);
  if (result)
  {
    *(a1 + 288) = *(a1 + 288) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 88), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 80), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 160), &v4);
  if (result)
  {
    *(a1 + 288) = *(a1 + 288) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 104), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 96), &v4);
  if (result)
  {
    *(a1 + 284) = *(a1 + 284) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 152), &v4);
  if (result)
  {
    *(a1 + 288) = *(a1 + 288) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 184), &v4);
  if (result)
  {
    *(a1 + 292) = *(a1 + 292) & 0xFFFFE000 | v4 & 0x1FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 24), &v4);
  if (result)
  {
    *(a1 + 252) = *(a1 + 252) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 16), &v4);
  if (result)
  {
    *(a1 + 252) = *(a1 + 252) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 32), &v4);
  if (result)
  {
    *(a1 + 256) = *(a1 + 256) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 40), &v4);
  if (result)
  {
    *(a1 + 264) = *(a1 + 264) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 64), &v4);
  if (result)
  {
    *(a1 + 272) = *(a1 + 272) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 56), &v4);
  if (result)
  {
    *(a1 + 272) = *(a1 + 272) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 72), &v4);
  if (result)
  {
    *(a1 + 276) = *(a1 + 276) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<10u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 48), &v4);
  if (result)
  {
    *(a1 + 268) = *(a1 + 268) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<10u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 292) = *(result + 292) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<10u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 992) + 192), &v4);
  if (result)
  {
    *(a1 + 294) = v4;
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
{
  if (*(a2 + 1387))
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
          *(result + 960) |= dword_1A75D1AF8[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 960) = *(result + 960) & 0xFFFFFFF | (a4 << 28);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetEventFlags(uint64_t result, int a2, int a3, int a4)
{
  *(result + 16) = a2 & 0xFFFFFF | (*(result + 19) << 24);
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 24) = a3 & 0xFFFFFF | (*(result + 27) << 24);
  return result;
}

BOOL ZinAneTd<11u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 296), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 804) = *(a1 + 804) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 304), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 808) = *(a1 + 808) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1040) + 316), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1040) + 312), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 812) = *(a1 + 812) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 328), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 816) = *(a1 + 816) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 820) = *(a1 + 820) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<11u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if (a2 == 11)
      {
        v2 = *(result + 800) | 0xC0;
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
    v2 = *(result + 800) & 0xFFFFFF3F | 0x40;
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

  v2 = *(result + 800) & 0xFFFFFF3F;
LABEL_7:
  *(result + 800) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
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
    v2 = *(result + 844) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 844) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 844) | 0xC0;
LABEL_10:
  *(result + 844) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 872) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 872) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 872) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 872) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 872) & 0xFFFFF8FF;
LABEL_12:
      *(result + 872) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 676), 2);
  *(a1 + 800) = *(a1 + 800) & 0x3FFFFFFF | (result << 30);
  return result;
}

uint64_t ZinAneTd<11u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 872) = *(result + 872) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 876) = a4 | (a3 << 16);
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 592), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 800) = *(a1 + 800) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<11u>::SetL2Src1SourceType(uint64_t result, int a2)
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

  *(result + 800) = *(result + 800) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<11u>::SetL2Src2SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 0x1000000;
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
      v4 = 25165824;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 0x800000;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 800) = *(result + 800) & 0xFE7FFFFF | v5;
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 824) = *(a1 + 824) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 828) = *(a1 + 828) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1040) + 364), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1040) + 360), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 832) = *(a1 + 832) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 368), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 836) = *(a1 + 836) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1040) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 840) = *(a1 + 840) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<11u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 800) & 0xF7F80FFF;
  *(result + 800) = v4 | 0x8000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xE7F80FFF | 0x8000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x18000000;
LABEL_7:
      *(result + 800) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 872) = *(result + 872) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 880) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<11u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 >= 4)
  {
    if (a2 <= 4)
    {
      v2 = *(result + 936) & 0xFFFFFFF8 | 2;
      goto LABEL_12;
    }

    switch(a2)
    {
      case 5:
        v2 = *(result + 936) & 0xFFFFFFF8 | 4;
LABEL_12:
        *(result + 936) = v2;
        return result;
      case 6:
        ZinAssertImpl("RCAS not valid for architecture");
      case 7:
        ZinAssertImpl("Transposed convolution is not supported");
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = *(result + 936) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 936) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_12;
    }

    if (!a2)
    {
      v2 = *(result + 936) & 0xFFFFFFF8;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 936) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 936) | 8;
LABEL_7:
      *(result + 936) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 932) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 932) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 932) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 932) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetKernelDmaSrcHeaderDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
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
      *(result + 4 * a3 + 260) = *(result + 4 * a3 + 260) & 0xFFFFFF0F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 568), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 196) = *(a1 + 4 * a3 + 196) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 560), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 132) = *(a1 + 4 * a3 + 132) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
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
  *(result + 796) = *(result + 796) & 0xFFFFFFF3 | v4;
  *(result + 936) = *(result + 936) & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<11u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 932) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 932) | 0x10000;
  }

  *(result + 932) = v2;
  return result;
}

void ZinAneTd<11u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, char a5)
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
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1664, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1663, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1662, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1661, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a2[4])
    {
      if (*(a4 + 23) >= 0)
      {
        v22 = *(a4 + 23);
      }

      else
      {
        v22 = a4[1];
      }

      v23 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v22 + 5);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      if (v22)
      {
        if (*(a4 + 23) >= 0)
        {
          v24 = a4;
        }

        else
        {
          v24 = *a4;
        }

        memmove(v23, v24, v22);
      }

      strcpy(v23 + v22, "_bias");
      ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1658, v7, 0, 1, a5, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (a2[3])
  {
    if (*(a4 + 23) >= 0)
    {
      v25 = *(a4 + 23);
    }

    else
    {
      v25 = a4[1];
    }

    v26 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v25 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (v25)
    {
      if (*(a4 + 23) >= 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = *a4;
      }

      memmove(v26, v27, v25);
    }

    strcpy(v26 + v25, "_scale");
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1659, v7, 0, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[2])
  {
    if (*(a4 + 23) >= 0)
    {
      v28 = *(a4 + 23);
    }

    else
    {
      v28 = a4[1];
    }

    v29 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v28 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      if (*(a4 + 23) >= 0)
      {
        v30 = a4;
      }

      else
      {
        v30 = *a4;
      }

      memmove(v29, v30, v28);
    }

    strcpy(v29 + v28, "_pallut");
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1660, v7, 0, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a2[1])
  {
    if (*(a4 + 23) >= 0)
    {
      v31 = *(a4 + 23);
    }

    else
    {
      v31 = a4[1];
    }

    v32 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v31 + 7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    if (v31)
    {
      if (*(a4 + 23) >= 0)
      {
        v33 = a4;
      }

      else
      {
        v33 = *a4;
      }

      memmove(v32, v33, v31);
    }

    strcpy(v32 + v31, "_actlut");
    ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1661, v7, 0, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68F6B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<11u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFF3 | 8;
  result[233] = result[233] & 0xFFF9FFFF | 0x40000;
  result[77] = result[77] & 0x3F | (a3 << 6);
  result[65] |= 1u;
  return result;
}

_DWORD *ZinAneTd<11u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[11] = result[11] & 0xFFFFFFFC | 2;
  result[233] = result[233] & 0xFFE7FFFF | 0x100000;
  result[78] = result[78] & 0x3F | (a3 << 6);
  result[66] |= 1u;
  return result;
}

uint64_t ZinAneTd<11u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 316) = *(result + 316) & 0x3F | (a3 << 6);
  *(result + 268) |= 1u;
  return result;
}

uint64_t ZinAneTd<11u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 320) = *(result + 320) & 0x3F | (a3 << 6);
  *(result + 272) |= 1u;
  return result;
}

__int16 ZinAneTd<11u>::SetPEScale@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 910) = result;
  return result;
}

__int16 ZinAneTd<11u>::SetPEBias@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 908) = result;
  return result;
}

__int16 ZinAneTd<11u>::SetPEPreScale@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 914) = result;
  return result;
}

uint64_t ZinAneTd<11u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 796) = *(result + 796) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 544) = *(result + 544) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 544) = *(result + 544) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 544) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
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
        *(result + 544) |= v5;
      }
    }
  }

  return result;
}

BOOL ZinAneTd<11u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 904) = *(a1 + 904) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1040) + 608);
        v4 = 2;
        break;
      case 4:
        *(a1 + 904) = *(a1 + 904) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1040) + 608);
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
    *(a1 + 904) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1040) + 608);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 904) = *(a1 + 904) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1040) + 608);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 904) = *(a1 + 904) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1040) + 608));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 904) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 904) | 0x10000;
  }

  *(result + 904) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 904) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 904) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 904) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 904) & 0xFFF3FFFF;
  }

  *(result + 904) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: invalid PE Condition", v2, v3);
  }

  *(result + 904) |= 0x40u;
  return result;
}

__int16 ZinAneTd<11u>::SetPEOutputReLU@<H0>(uint64_t a1@<X0>, _DWORD *a2@<X1>)
{
  *(a1 + 904) |= 0x20u;
  if (*a2 == 7)
  {
    _S0 = a2[3];
    __asm { FCVT            H0, S0 }

    v7 = _S0;
    *(a1 + 920) = _S0;
    _S0 = a2[4];
    __asm { FCVT            H0, S0 }

    *(a1 + 920) = v7 | (_S0 << 16);
  }

  return _S0;
}

uint64_t ZinAneTd<11u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 544) = *(result + 544) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 848) = *(a1 + 848) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 392), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 852) = *(a1 + 852) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 400), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 856) = *(a1 + 856) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 408), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 860) = *(a1 + 860) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 416), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 864) = *(a1 + 864) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<11u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 844) = *(result + 844) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 844) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 844) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 844) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 844) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 844) = v4;
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<11u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 656);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 656) & 0xFFFFFFDF;
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
      v8 = *(a1 + 656) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 656) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 656) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 656) | 0x30;
  }

LABEL_20:
  *(a1 + 656) = v8;
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

  return ZinAneTd<11u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 656) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 656) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 656) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 656) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 656) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 656) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 656) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 656) | 0x3000;
LABEL_11:
      *(a1 + 656) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 592), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 656) = *(a1 + 656) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 576) = *(result + 576) & 0xFFFFFF0F | v4;
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
  *(result + 584) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 580) = *(result + 580) & 0xFFFFFF0F | v4;
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
  *(result + 588) = v6 | v5;
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 604) = *(a1 + 604) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 600) = *(a1 + 600) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 608) = *(a1 + 608) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 464), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 612) = *(a1 + 612) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v11::AddRelocInfo(v4, a2, 1092, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1DependencyMode(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
    *(result + 576) = *(result + 576) & 0xCFFFFFFF | 0x10000000;
  }

  return result;
}

unint64_t ZinAneTd<11u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1040) + 600));
  *(a1 + 576) = *(a1 + 576) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 664);
  *(result + 664) = v4 | 1;
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
  *(result + 664) = v5;
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

  *(result + 664) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 664) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 668) = *(a1 + 668) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1040) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 672) = *(a1 + 672) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, int a3)
{
  result = ZinAneTdHw_v11::AddRelocInfo((a1 + 8), a2, 1104, a3, 1, 1, 0, 0);
  *(a1 + 664) &= ~8u;
  return result;
}

int8x16_t ZinAneTd<11u>::SetTileDmaSrc2PixelOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, *(a1 + 696), v5);
  *(a1 + 696) = result;
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 668) = *(a1 + 668) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1040) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 672) = *(a1 + 672) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<11u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 992);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 992) & 0xFFFFFFDF;
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
      v8 = *(a1 + 992) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 992) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 992) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 992) | 0x30;
  }

LABEL_20:
  *(a1 + 992) = v8;
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

  return ZinAneTd<11u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<11u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 992) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 992) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 992) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 992) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 992) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 992) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 992) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 992) | 0x3000;
LABEL_11:
      *(a1 + 992) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 592), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 844) = *(a1 + 844) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1040) + 592), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 992) = *(a1 + 992) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<11u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 592), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 844) = *(a1 + 844) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 844) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 960) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 960) = v4;
  *(result + 844) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 960) & 0xFFFFFF0F | 0x30;
    }

    else
    {
      v2 = *(result + 960) | 0xF0;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 960) & 0xFFFFFF0F | 0xD0;
LABEL_8:
      *(result + 960) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 980) = *(a1 + 980) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 976) = *(a1 + 976) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 984) = *(a1 + 984) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<11u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1040) + 512), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 988) = *(a1 + 988) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<11u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 992) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 992) = v2;
  *(result + 992) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

void ZinAneTd<11u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<11>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 11]");
  }
}

uint64_t ZinAneTd<11u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v11::AddRelocInfo(v4, a2, 1346, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<11u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 548) = *(result + 548) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 936) = *(result + 936) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 936) | 0x80000;
  }

  else
  {
    v2 = *(result + 936) & 0xFFF7FFFF;
  }

  *(result + 936) = v2;
  return result;
}

BOOL ZinAneTd<11u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 696), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 60) = *(a1 + 60) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1040) + 688), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 64) = *(a1 + 64) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<11u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 932) = *(result + 932) & 0xFFFFFBFF | v2;
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

uint64_t ZinAneTd<11u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 932) = *(result + 932) & 0xFFFFFEFF | v2;
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

uint64_t ZinAneTd<11u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 932) = *(result + 932) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
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
  *(result + 932) = *(result + 932) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
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
  *(result + 932) = *(result + 932) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
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

  *(result + 936) = *(result + 936) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<11u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
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

  *(result + 936) = *(result + 936) & 0xFFFFBFFF | v9;
  *(result + 948) = v10 | *(result + 948) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<11u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
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

  *(result + 936) = *(result + 936) & 0xFFFFFFEF | v9;
  *(result + 944) = v10 | *(result + 944) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<11u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
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

    *(a1 + 940) = v8;
    v6 = 64;
  }

  *(a1 + 936) = *(a1 + 936) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<11u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 548) = *(result + 548) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 548) & 0xFFFFFFF3 | 4;
    }

    else
    {
      v4 = *(result + 548) & 0xFFFFFFF3;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 548) | 0xC;
      goto LABEL_10;
    case 4:
      v4 = *(result + 548) & 0xFFFFFFF3 | 8;
LABEL_10:
      *(result + 548) = v4;
      return result;
    case 2:
      ZinAssertImpl("Error: Tiny source mode is not supported for this arch", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetKernelDmaSrcCoeffUserTag(uint64_t result, unsigned __int8 a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(a2 << 16);
  do
  {
    *(result + 68 + v2) = vorrq_s8((*(result + 68 + v2) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

int8x16_t ZinAneTd<11u>::SetKernelDmaSrcPostScaleUserTag(uint64_t a1, unsigned __int8 a2)
{
  result = vorrq_s8((*(a1 + 260) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vdupq_n_s32(a2 << 16));
  *(a1 + 260) = result;
  return result;
}

uint64_t ZinAneTd<11u>::SetCommonTaskType(uint64_t result, int a2)
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
      *(result + 548) = *(result + 548) & 0xFFFFFF8F | v4;
      return result;
    case 0:
      *(result + 548) &= 0xFFFFFF8F;
      goto LABEL_20;
    case 1:
LABEL_20:
      ZinAssertImpl("Error: Invalid Task Type", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 500) & 0xFFFFFFFC | 2;
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
    v2 = *(result + 500) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 500) & 0xFFFFFFFC;
LABEL_8:
  *(result + 500) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 500) & 0xFFFFFFF3 | 8;
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
    v2 = *(result + 500) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 500) & 0xFFFFFFF3;
LABEL_8:
  *(result + 500) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 500) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 500) & 0xFFFFFFCF;
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
  v2 = *(result + 500) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 500) = v2;
  return result;
}

uint64_t ZinAneTd<11u>::SetCommonSourceRouting(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 548) & 0xFFFFFFFC | 2;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 548) & 0xFFFFFFFC | 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 548) | 3;
  }

  *(result + 548) = v2;
  return result;
}

BOOL ZinAneTd<11u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 200), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 128), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 136), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 168), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 120), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 112), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 144), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 88), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 80), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 160), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 104), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 96), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 152), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 184), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFFE000 | v4 & 0x1FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 24), &v4);
  if (result)
  {
    *(a1 + 492) = *(a1 + 492) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 16), &v4);
  if (result)
  {
    *(a1 + 492) = *(a1 + 492) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 32), &v4);
  if (result)
  {
    *(a1 + 496) = *(a1 + 496) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 40), &v4);
  if (result)
  {
    *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 64), &v4);
  if (result)
  {
    *(a1 + 512) = *(a1 + 512) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 56), &v4);
  if (result)
  {
    *(a1 + 512) = *(a1 + 512) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 72), &v4);
  if (result)
  {
    *(a1 + 516) = *(a1 + 516) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<11u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 48), &v4);
  if (result)
  {
    *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 532) = *(result + 532) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<11u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1040) + 192), &v4);
  if (result)
  {
    *(a1 + 534) = v4;
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
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
          *(result + 1236) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 1236) = *(result + 1236) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

_DWORD *ZinAneTd<17u>::SetEventFlags(_DWORD *result, int a2, int a3, int a4)
{
  result[4] = result[4] & 0xF0000000 | a2 & 0xFFFFFFF;
  result[8] = result[8] & 0xFC000000 | a4 & 0x3FFFFFF;
  result[6] = result[6] & 0xF0000000 | a3 & 0xFFFFFFF;
  return result;
}

BOOL ZinAneTd<17u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 312), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 952) = *(a1 + 952) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 956) = *(a1 + 956) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1416) + 332), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1416) + 328), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 960) = *(a1 + 960) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 964) = *(a1 + 964) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 968) = *(a1 + 968) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if (a2 == 11)
      {
        v2 = *(result + 940) | 0xC0;
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
    v2 = *(result + 940) & 0xFFFFFF3F | 0x40;
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

  v2 = *(result + 940) & 0xFFFFFF3F;
LABEL_7:
  *(result + 940) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if (a2 >= 11)
    {
      if (a2 < 12)
      {
        v2 = *(result + 944) | 0xC0;
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
    v2 = *(result + 944) & 0xFFFFFF3F | 0x40;
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

  v2 = *(result + 944) & 0xFFFFFF3F;
LABEL_7:
  *(result + 944) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
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
    v2 = *(result + 1008) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 1008) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 1008) | 0xC0;
LABEL_10:
  *(result + 1008) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 1036) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 1036) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 1036) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 1036) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 1036) & 0xFFFFF8FF;
LABEL_12:
      *(result + 1036) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 736), 5);
  *(a1 + 1096) = *(a1 + 1096) & 0xFFFFE0FF | ((result & 0x1F) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1036) = *(result + 1036) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 1040) = a4 | (a3 << 16);
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 940) = *(a1 + 940) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src1SourceType(uint64_t result, int a2)
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

  *(result + 940) = *(result + 940) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src2SourceType(uint64_t result, int a2)
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

  *(result + 944) = *(result + 944) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 972) = *(a1 + 972) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 976) = *(a1 + 976) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1416) + 372), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1416) + 368), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 980) = *(a1 + 980) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 984) = *(a1 + 984) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1416) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 988) = *(a1 + 988) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 752), 5);
  *(a1 + 1096) = *(a1 + 1096) & 0xE0FFFFFF | ((result & 0x1F) << 24);
  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 940) & 0xFDF80FFF;
  *(result + 940) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 940) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 944) & 0xFDF80FFF;
  *(result + 944) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 944) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 1008) & 0xFDF80FFF;
  *(result + 1008) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 1008) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1036) = *(result + 1036) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 1044) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<17u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = *(result + 1180) & 0xFFFFFFF8 | 2;
      }

      else
      {
        v2 = *(result + 1180) & 0xFFFFFFF8 | 4;
      }

      goto LABEL_14;
    }

    if (a2 == 6)
    {
      v2 = *(result + 1180) & 0xFFFFFFF8 | 5;
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
        v2 = *(result + 1180) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 1180) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      v2 = *(result + 1180) & 0xFFFFFFF8;
LABEL_14:
      *(result + 1180) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 1180) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 1180) | 8;
LABEL_7:
      *(result + 1180) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1180) = *(result + 1180) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1176) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 1176) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1176) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 1176) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcConfigPrefetch(uint64_t result, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v2 = *(result + 56) | (*(a2 + 72) << 16);
    *(result + 56) = v2;
    v3 = v2 & 0xFFFFFFFE | *(a2 + 81);
    *(result + 56) = v3;
    *(result + 56) = v3 & 0xFFFFFFFD | (2 * (*(a2 + 82) & 1));
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
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
      *(result + 4 * a3 + 80) = *(result + 4 * a3 + 80) & 0xFFFFFF0F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
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
      *(result + 288) = *(result + 288) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
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
      *(result + 272) = *(result + 272) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
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
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 320) = *(result + 320) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 616), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 208) = *(a1 + 4 * a3 + 208) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 608), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 144) = *(a1 + 4 * a3 + 144) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 9)
      {
        v3 = 0;
        v4 = (a3 != 0) << 18;
        goto LABEL_16;
      }

      if (a2 == 6)
      {
        ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
      }

LABEL_20:
      ZinAssertImpl("Invalid padding mode: %d", a2);
    }

    if (!a3)
    {
      v4 = 0;
      v3 = 12;
      goto LABEL_16;
    }

LABEL_17:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 4;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 != 3)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    goto LABEL_17;
  }

  v3 = 8;
  v4 = 0x40000;
LABEL_16:
  *(result + 936) = v3 & 0xFF00FFFF | (a3 << 16) | *(result + 936) & 0xFF00FFF3;
  *(result + 1180) = *(result + 1180) & 0xFFFBFFFF | v4;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1176) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1176) | 0x10000;
  }

  *(result + 1176) = v2;
  return result;
}

void ZinAneTd<17u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, char a5)
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
    ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5510, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5506, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5502, v7, 1, 1, a5, 0);
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
    ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5498, v7, 1, 1, a5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68FABC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<17u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[12] = result[12] & 0xFFFFFFF3 | 8;
  result[294] = result[294] & 0xFFF9FFFF | 0x40000;
  result[69] = result[69] & 0x3F | (a3 << 6);
  result[68] |= 1u;
  return result;
}

_DWORD *ZinAneTd<17u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[12] = result[12] & 0xFFFFFFFC | 2;
  result[294] = result[294] & 0xFFE7FFFF | 0x100000;
  result[73] = result[73] & 0x3F | (a3 << 6);
  result[72] |= 1u;
  return result;
}

uint64_t ZinAneTd<17u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 308) = *(result + 308) & 0x3F | (a3 << 6);
  *(result + 304) |= 1u;
  return result;
}

uint64_t ZinAneTd<17u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 324) = *(result + 324) & 0x3F | (a3 << 6);
  *(result + 320) |= 1u;
  return result;
}

uint64_t ZinAneTd<17u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 936) = *(result + 936) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 576) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
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
        *(result + 576) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<17u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 1076) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 1076) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 1076) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 1076) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 1076) = v2;
      return;
    case 4:
      v2 = *(result + 1076) & 0xFFF8FFFF | 0x40000;
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

uint64_t ZinAneTd<17u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1076) = *(result + 1076) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
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
        *(result + 1076) |= v4;
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

BOOL ZinAneTd<17u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 1108) = *(a1 + 1108) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1416) + 648);
        v4 = 2;
        break;
      case 4:
        *(a1 + 1108) = *(a1 + 1108) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1416) + 648);
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
    *(a1 + 1108) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1416) + 648);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 1108) = *(a1 + 1108) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1416) + 648);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 1108) = *(a1 + 1108) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1416) + 648));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1108) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1108) | 0x10000;
  }

  *(result + 1108) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1108) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 1108) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1108) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 1108) & 0xFFF3FFFF;
  }

  *(result + 1108) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = *(result + 1108) & 0xFFFFFE3F | 0x40;
      }

      else
      {
        if (a2 != 7)
        {
          return result;
        }

        v2 = *(result + 1108) & 0xFFFFFE3F | 0xC0;
      }
    }

    else if (a2 == 4)
    {
      v2 = *(result + 1108) & 0xFFFFFE3F | 0x80;
    }

    else
    {
      v2 = *(result + 1108) & 0xFFFFFE3F | 0x140;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 1108) & 0xFFFFFE3F | 0x100;
    }

    else
    {
      v2 = *(result + 1108) & 0xFFFFFE3F | 0x180;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1108) | 0x1C0;
  }

  else
  {
    v2 = *(result + 1108) & 0xFFFFFE3F;
  }

  *(result + 1108) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 576) = *(result + 576) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 424), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 1012) = *(a1 + 1012) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 432), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 1016) = *(a1 + 1016) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 440), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 1020) = *(a1 + 1020) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 448), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 1024) = *(a1 + 1024) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 456), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 1028) = *(a1 + 1028) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<17u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1008) = *(result + 1008) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 1008) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 1008) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 1008) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 1008) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 1008) = v4;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<17u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 708);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 708) & 0xFFFFFFDF;
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
      v8 = *(a1 + 708) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 708) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 708) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 708) | 0x30;
  }

LABEL_20:
  *(a1 + 708) = v8;
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

  return ZinAneTd<17u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 708) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 708) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 708) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 708) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 708) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 708) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 708) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 708) | 0x3000;
LABEL_11:
      *(a1 + 708) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 708) = *(a1 + 708) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 604) = *(result + 604) & 0xFFFFFF0F | v4;
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
  *(result + 612) = v6 | v5;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
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
      *(result + 608) = *(result + 608) & 0xFFFFFF0F | v4;
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
  *(result + 616) = v6 | v5;
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 488), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 632) = *(a1 + 632) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1RowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 480), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 628) = *(a1 + 628) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Depth Stride");
  }

  *(a1 + 636) = *(a1 + 636) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Group Stride");
  }

  *(a1 + 640) = *(a1 + 640) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<17u>::SetTileDmaSrc1WrapCfg(a1, a4);
  *(a1 + 788) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 612) = *(a1 + 612) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 4974, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<17u>::SetTileDmaSrc1WrapCfg(a1, a3);
}

void sub_1A68FBC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1BaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v17::AddRelocInfo(v4, a2, 4932, a3, 1, 1, 0, 0);
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 604) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 604) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 604) & 0xCFFFFFFF;
  }

  *(result + 604) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = *(result + 608) & 0xCFFFFFFF | 0x10000000;
  }

  else if (a2 == 1)
  {
    v2 = *(result + 608) & 0xCFFFFFFF | 0x20000000;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 608) & 0xCFFFFFFF;
  }

  *(result + 608) = v2;
  return result;
}

unint64_t ZinAneTd<17u>::SetTileDmaSrc1DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1416) + 640));
  *(a1 + 604) = *(a1 + 604) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

unint64_t ZinAneTd<17u>::SetTileDmaSrc2DependencyInterval(uint64_t a1, unsigned int a2)
{
  result = ZinIrCodegenValueToRegister(a2, (*(a1 + 1416) + 640));
  *(a1 + 608) = *(a1 + 608) & 0xF0FFFFFF | ((result & 0xF) << 24);
  return result;
}

uint64_t ***ZinAneTd<17u>::SetTileDmaSrc1DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 796) = result[3];
  }

  return result;
}

uint64_t ***ZinAneTd<17u>::SetTileDmaSrc2DependencyOffset(uint64_t a1, void *a2)
{
  v4 = 1;
  result = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a2, &v4);
  if (result)
  {
    *(a1 + 800) = result[3];
  }

  return result;
}

int8x16_t ZinAneTd<17u>::SetTileDmaSrc1PixelOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, *(a1 + 756), v5);
  *(a1 + 756) = result;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc1CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 724);
  *(result + 724) = v4 | 1;
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
  *(result + 724) = v5;
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

  *(result + 724) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 724) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc1CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Width");
  }

  *(a1 + 728) = *(a1 + 728) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1416) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Compressed Height");
  }

  *(a1 + 732) = *(a1 + 732) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<17u>::SetTileDmaSrc1MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), a2, 4944, a3, 1, 1, 0, 0);
  *(a1 + 724) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 684) = vsli_n_s32(*(a1 + 684), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 692) = *(a1 + 692) & 0x7F | (a6 << 7);
  return result;
}

BOOL ZinAneTd<17u>::SetL2Src2Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 944) = *(a1 + 944) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2WrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<17u>::SetTileDmaSrc2WrapCfg(a1, a4);
  *(a1 + 792) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2WrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 616) = *(a1 + 616) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2WrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 4975, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<17u>::SetTileDmaSrc2WrapCfg(a1, a3);
}

void sub_1A68FC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t ZinAneTd<17u>::SetTileDmaSrc2PixelOffset(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v6.i64[0] = 0xFFFF0000FFFF0000;
  v6.i64[1] = 0xFFFF0000FFFF0000;
  result = vbslq_s8(v6, *(a1 + 772), v5);
  *(a1 + 772) = result;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaSrc2CompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 740);
  *(result + 740) = v4 | 1;
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
  *(result + 740) = v5;
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

  *(result + 740) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 740) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaSrc2CompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Width");
  }

  *(a1 + 744) = *(a1 + 744) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1416) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Compressed Height");
  }

  *(a1 + 748) = *(a1 + 748) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

double ZinAneTd<17u>::SetTileDmaSrc2MetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), a2, 4946, a3, 1, 1, 0, 0);
  *(a1 + 740) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 696) = vsli_n_s32(*(a1 + 696), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 704) = *(a1 + 704) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<17u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) < 2)
      {
        v6 = *(a1 + 1288);
        v7 = 304;
LABEL_18:
        v8 = v6 | v7;
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        v6 = *(a1 + 1288) & 0xFFFFFFDF;
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
      v8 = *(a1 + 1288) & 0xFFFFFECF;
      goto LABEL_20;
    }

    if (v4 == 5)
    {
LABEL_15:
      v8 = *(a1 + 1288) & 0xFFFFFECF | 0x100;
      goto LABEL_20;
    }

    v8 = *(a1 + 1288) & 0xFFFFFECF | 0x10;
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

    v8 = *(a1 + 1288) | 0x30;
  }

LABEL_20:
  *(a1 + 1288) = v8;
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

  return ZinAneTd<17u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<17u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
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
      v4 = *(a1 + 1288) & 0xFFFFFFFC | 1;
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      v4 = *(a1 + 1288) | 3;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = *(a1 + 1288) & 0xFFFFFFFC;
LABEL_9:
    *(a1 + 1288) = v4;
    return result;
  }

  if (v5 == 1)
  {
    ZinAssertImpl("Packed10 format not supported");
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
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

      v4 = *(a1 + 1288) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 1288) & 0xFFFFCFFF;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 2:
      v4 = *(a1 + 1288) & 0xFFFFCFFF | 0x2000;
      goto LABEL_11;
    case 3:
      v4 = *(a1 + 1288) | 0x3000;
LABEL_11:
      *(a1 + 1288) = v4;
      return result;
    case 4:
      ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaDstandL2DstInterleave(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v3 = a2;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 632), &v6))
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1008) = *(a1 + 1008) & 0xFFFFF0FF | ((v6 & 0xF) << 8);
  v5 = 0;
  result = ZinCodegenUtil::ValueToRegister(v3, (*(a1 + 1416) + 632), &v5);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Interleave");
  }

  *(a1 + 1288) = *(a1 + 1288) & 0xF0FFFFFF | ((v5 & 0xF) << 24);
  return result;
}

BOOL ZinAneTd<17u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 1008) = *(a1 + 1008) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstandL2DstFifoMode(uint64_t result, int a2)
{
  v2 = *(result + 1008) & 0xFFFFFFF7;
  if (a2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(result + 1232) & 0xFEFFFFFF | v3;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(result + 1232) = v4;
  *(result + 1008) = v2 | v5;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 1232) & 0xFFFFFF0F | 0x30;
    }

    else
    {
      v2 = *(result + 1232) | 0xF0;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 1232) & 0xFFFFFF0F | 0xD0;
LABEL_8:
      *(result + 1232) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaDstChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 544), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 1252) = *(a1 + 1252) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaDstRowStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 536), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 1248) = *(a1 + 1248) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaDstDepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Depth Stride");
  }

  *(a1 + 1256) = *(a1 + 1256) & 0x3F | (v4 << 6);
  return result;
}

BOOL ZinAneTd<17u>::SetTileDmaDstGroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x1AuLL, (*(a1 + 1416) + 560), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Group Stride");
  }

  *(a1 + 1260) = *(a1 + 1260) & 0x3F | (v4 << 6);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 1288) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 1288) = v2;
  *(result + 1288) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstWrapStatic(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  result = ZinAneTd<17u>::SetTileDmaDstWrapCfg(a1, a4);
  *(a1 + 1284) = a3 | (a2 << 16);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstWrapCfg(uint64_t a1, unsigned int a2)
{
  if (a2 == 4)
  {
    ZinAssertImpl("Width wrap axis is not supported on this architecture");
  }

  result = ZinIrCodegenGetDMAWrapCfgDim(a2);
  *(a1 + 1236) = *(a1 + 1236) & 0xFFFFF8FF | ((result & 7) << 8);
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstWrapDynamic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5197, v4, 0, 0, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ZinAneTd<17u>::SetTileDmaDstWrapCfg(a1, a3);
}

void sub_1A68FCC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinAneTd<17u>::SetTileDmaDstAtomicEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Atomic read-modify-write is not supported for this arch - %s", "void ZinAneTd<17>::SetTileDmaDstAtomicEn(BOOL) [HWVersion = 17]");
  }
}

uint64_t ZinAneTd<17u>::SetTileDmaDstBaseAddrLo(uint64_t a1, uint64_t a2, int a3)
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

  return ZinAneTdHw_v17::AddRelocInfo(v4, a2, 5186, a3, 1, 1, 0, 0);
}

BOOL ZinAneTd<17u>::SetTileDmaDstCompressedSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 24), &v7))
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Width");
  }

  *(a1 + 1304) = *(a1 + 1304) & 0xFFFE0000 | v7 & 0x1FFFF;
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1416) + 16), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Compressed Height");
  }

  *(a1 + 1308) = *(a1 + 1308) & 0xFFFE0000 | v6 & 0x1FFFF;
  return result;
}

uint64_t ZinAneTd<17u>::SetTileDmaDstCompressedInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 1296);
  *(result + 1296) = v4 | 1;
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
  *(result + 1296) = v5;
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

  *(result + 1296) = v6;
  if ((a2 - 1) >= 0x13)
  {
    ZinAssertImpl("Invalid packing format");
  }

  *(result + 1296) = v6 & 0xFFFFFC0F | dword_1A75D1B10[(a2 - 1)];
  return result;
}

double ZinAneTd<17u>::SetTileDmaDstMetaData(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  ZinAneTdHw_v17::AddRelocInfo((a1 + 8), a2, 5192, a3, 1, 1, 0, 0);
  *(a1 + 1296) &= ~8u;
  result = COERCE_DOUBLE(__PAIR64__(a5, a4));
  *(a1 + 1272) = vsli_n_s32(*(a1 + 1272), __PAIR64__(a5, a4), 7uLL);
  *(a1 + 1280) = *(a1 + 1280) & 0x7F | (a6 << 7);
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1324) = *(result + 1324) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreFlush(uint64_t result, int a2, __int16 a3)
{
  *(result + 1324) = *(result + 1324) & 0xFFFFFFFE | a2;
  *(result + 1360) = a3;
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreTaskSync(uint64_t result, int a2, int a3)
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

  *(result + 1324) = v3 | v4 | *(result + 1324) & 0xFFFFFFF3;
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreEarlyTermination(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8, __int16 a9, __int16 a10, char a11, __int16 a12, char a13)
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

  *(result + 1324) = v14 | v13 | v15 | v16 | v17 | *(result + 1324) & 0xFFFFFE0F;
  if (a3)
  {
    *(result + 1356) = a8;
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

  *(result + 1358) = a9;
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
  *(result + 1364) = a11;
  if ((a5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(result + 1366) = a13;
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreTelemetryBackOff(uint64_t result, int a2, char a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v6 = *(result + 1368) & 0xFFFFFFFE | a2;
  if (a2)
  {
    v6 = (16 * (a3 & 0xF)) | (a4 << 8) | (a5 << 16) | (a6 << 24) | *(result + 1368) & 0xE | a2 & 0xF;
  }

  *(result + 1368) = v6;
  return result;
}

uint64_t ZinAneTd<17u>::SetCacheDmaPreFootprintLimiter(uint64_t result, int a2, __int16 a3, unsigned __int16 a4)
{
  if (a2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 1324) & 0xFFFFFDFF | v4;
  *(result + 1324) = v5;
  if (a2)
  {
    *(result + 1324) = v5 | (a4 << 16);
    *(result + 1352) = *(result + 1352) & 0xF001FFFF | ((a3 & 0x7FF) << 17);
  }

  return result;
}

void ZinAneTd<17u>::SetCacheDmaPreDSIDAndSize(uint64_t a1, unsigned __int16 *a2, int a3)
{
  *(a1 + 1348) = *(a1 + 1348) & 0xC000007F | ((a3 & 0x7FFFFF) << 7);
  if (*(a2 + 2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ZinAneTdHw_v17::AddRelocInfo((a1 + 8), &__p, 5698, *a2, 0, 0, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68FD1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<17u>::SetFillLowerNEFirst(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 564) = *(result + 564) & 0xDFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetDoubleInt8Enable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1180) = *(result + 1180) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetArgOutputSelect(uint64_t result, int a2)
{
  if ((a2 - 6) > 5)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = dword_1A75D1B5C[a2 - 6];
  }

  *(result + 1180) = *(result + 1180) & 0xFF0FFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetMaxPoolMode(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x48E2) != 0)
  {
    v2 = *(result + 1180) | 0x80000;
  }

  else
  {
    v2 = *(result + 1180) & 0xFFF7FFFF;
  }

  *(result + 1180) = v2;
  return result;
}

BOOL ZinAneTd<17u>::SetKernelStrideRegisters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (!ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 736), &v7))
  {
    ZinAssertImpl("Illegal Kernel Group Stride");
  }

  *(a1 + 72) = *(a1 + 72) & 0x3F | (v7 << 6);
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a3, (*(a1 + 1416) + 728), &v6);
  if (!result)
  {
    ZinAssertImpl("Illegal Kernel OCG Stride");
  }

  *(a1 + 76) = *(a1 + 76) & 0x3F | (v6 << 6);
  return result;
}

uint64_t ZinAneTd<17u>::SetRcasMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = *(result + 1196) & 0xFFEFFFFF;
      goto LABEL_7;
    case 2:
      v4 = *(result + 1196) | 0x100000;
LABEL_7:
      *(result + 1196) = v4;
      return result;
    case 0:
      ZinAssertImpl("Unknown RCAS Mode.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetRcasSenseAxis(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1196) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(result + 1196) | 0x3000;
    }

    goto LABEL_10;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1196) & 0xFFFFCFFF | 0x2000;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v4 = *(result + 1196) & 0xFFFFCFFF;
LABEL_10:
    *(result + 1196) = v4;
    return result;
  }

  if ((a2 - 4) < 2)
  {
    ZinAssertImpl("Unknown RCAS Sense Axis.\n", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1176) = *(result + 1176) & 0xFFFFFBFF | v2;
  if (a2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(result + 48) = *(result + 48) & 0xFFFFFFEF | v3;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1176) = *(result + 1176) & 0xFFFFFEFF | v2;
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(result + 48) = *(result + 48) & 0xFFFFFFDF | v3;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelSparseBinary(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1176) = *(result + 1176) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
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
  *(result + 1176) = *(result + 1176) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
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
  *(result + 1176) = *(result + 1176) & 0xFFFFFF0F | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetKernelAsymQuantEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1176) = *(result + 1176) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetStochasticRoundMode(uint64_t result, int a2)
{
  if (a2 != 1 && a2 != 2)
  {
    if (!a2)
    {
      ZinAssertImpl("Invalid stochastic rounding mode", v2, v3);
    }

    a2 = 0;
  }

  *(result + 1200) = *(result + 1200) & 0xFFFFFFFC | a2;
  return result;
}

uint64_t ZinAneTd<17u>::SetQuantizationOutputZeroOffset(uint64_t result, int a2, char a3, int a4, uint64_t a5)
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

    *(result + 1220) = a3;
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
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

  *(result + 1180) = *(result + 1180) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<17u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1180) = *(result + 1180) & 0xFFFFBFFF | v9;
  *(result + 1192) = v10 | *(result + 1192) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<17u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
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

  *(result + 1180) = *(result + 1180) & 0xFFFFFFEF | v9;
  *(result + 1188) = v10 | *(result + 1188) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<17u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
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

    *(a1 + 1184) = v8;
    v6 = 64;
  }

  *(a1 + 1180) = *(a1 + 1180) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<17u>::SetOutputTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x10000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 564) = *(result + 564) & 0xEFFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 564) & 0xFFFFFFF3 | 4;
    }

    else
    {
      v4 = *(result + 564) & 0xFFFFFFF3;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 564) | 0xC;
      goto LABEL_10;
    case 4:
      v4 = *(result + 564) & 0xFFFFFFF3 | 8;
LABEL_10:
      *(result + 564) = v4;
      return result;
    case 2:
      ZinAssertImpl("Error: Tiny source mode is not supported for this arch", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetKernelDmaSrcCoeffUserTag(uint64_t result, unsigned __int8 a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(a2 << 16);
  do
  {
    *(result + 80 + v2) = vorrq_s8((*(result + 80 + v2) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

uint64_t ZinAneTd<17u>::SetCommonTaskType(uint64_t result, unsigned int a2)
{
  if (a2 <= 7)
  {
    *(result + 564) = *(result + 564) & 0xFFFFFF0F | dword_1A75D1B74[a2];
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 504) & 0xFFFFFFFC | 2;
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
    v2 = *(result + 504) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 504) & 0xFFFFFFFC;
LABEL_8:
  *(result + 504) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 504) & 0xFFFFFFF3 | 8;
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
    v2 = *(result + 504) & 0xFFFFFFF3 | 4;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 504) & 0xFFFFFFF3;
LABEL_8:
  *(result + 504) = v2;
  return result;
}

uint64_t ZinAneTd<17u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 504) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 504) & 0xFFFFFFCF;
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
  v2 = *(result + 504) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 504) = v2;
  return result;
}

BOOL ZinAneTd<17u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 216), &v4);
  if (result)
  {
    *(a1 + 556) = *(a1 + 556) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 128), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFFF03F | ((v4 & 0x3F) << 6);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 136), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFFFFC0 | v4 & 0x3F;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfg3dKd(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 168), &v4);
  if (result)
  {
    *(a1 + 548) = *(a1 + 548) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 120), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 112), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFFE7FFF | ((v4 & 3) << 15);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfg3dSz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 144), &v4);
  if (result)
  {
    *(a1 + 548) = *(a1 + 548) & 0xFFFFFF3F | ((v4 & 3) << 6);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 88), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 80), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfg3dOz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 160), &v4);
  if (result)
  {
    *(a1 + 548) = *(a1 + 548) & 0xFFFF9FFF | ((v4 & 3) << 13);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 104), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xFFC1FFFF | ((v4 & 0x1F) << 17);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 96), &v4);
  if (result)
  {
    *(a1 + 544) = *(a1 + 544) & 0xF83FFFFF | ((v4 & 0x1F) << 22);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetCommonConvCfg3dPz(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 152), &v4);
  if (result)
  {
    *(a1 + 548) = *(a1 + 548) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 200), &v4);
  if (result)
  {
    *(a1 + 540) = *(a1 + 540) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 24), &v4);
  if (result)
  {
    *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 16), &v4);
  if (result)
  {
    *(a1 + 512) = *(a1 + 512) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnDin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 32), &v4);
  if (result)
  {
    *(a1 + 520) = *(a1 + 520) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 40), &v4);
  if (result)
  {
    *(a1 + 516) = *(a1 + 516) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 64), &v4);
  if (result)
  {
    *(a1 + 524) = *(a1 + 524) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 56), &v4);
  if (result)
  {
    *(a1 + 528) = *(a1 + 528) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnDout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 72), &v4);
  if (result)
  {
    *(a1 + 536) = *(a1 + 536) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

BOOL ZinAneTd<17u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 48), &v4);
  if (result)
  {
    *(a1 + 532) = *(a1 + 532) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<17u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 552) = *(result + 552) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<17u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1416) + 208), &v4);
  if (result)
  {
    *(a1 + 554) = v4;
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4, unsigned __int8 **a5)
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
          *(result + 1268) |= dword_1A75D1B04[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 1268) = *(result + 1268) & 0x7FFFFFF | (a4 << 27);
  }

  return result;
}

_DWORD *ZinAneTd<19u>::SetEventFlags(_DWORD *result, int a2, int a3, int a4)
{
  result[4] = a2;
  result[8] = a4;
  result[6] = a3;
  return result;
}

BOOL ZinAneTd<19u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 312), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 972) = *(a1 + 972) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 320), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 976) = *(a1 + 976) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1464) + 332), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1464) + 328), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 980) = *(a1 + 980) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 984) = *(a1 + 984) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 988) = *(a1 + 988) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if (a2 == 11)
      {
        v2 = *(result + 960) | 0xC0;
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
    v2 = *(result + 960) & 0xFFFFFF3F | 0x40;
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

  v2 = *(result + 960) & 0xFFFFFF3F;
LABEL_7:
  *(result + 960) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src2DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if (a2 >= 11)
    {
      if (a2 < 12)
      {
        v2 = *(result + 964) | 0xC0;
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
    v2 = *(result + 964) & 0xFFFFFF3F | 0x40;
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

  v2 = *(result + 964) & 0xFFFFFF3F;
LABEL_7:
  *(result + 964) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
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
    v2 = *(result + 1028) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 9) < 2)
  {
    goto LABEL_9;
  }

  if ((a2 - 12) < 2)
  {
LABEL_8:
    v2 = *(result + 1028) & 0xFFFFFF3F;
    goto LABEL_10;
  }

  if (a2 != 11)
  {
    goto LABEL_13;
  }

  v2 = *(result + 1028) | 0xC0;
LABEL_10:
  *(result + 1028) = v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetL2ResultWrapCfg(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = *(result + 1056) & 0xFFFFF8FF | 0x300;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(result + 1056) & 0xFFFFF8FF | 0x100;
      }
    }

    else
    {
      v4 = *(result + 1056) & 0xFFFFF8FF | 0x400;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 3:
      v4 = *(result + 1056) & 0xFFFFF8FF | 0x200;
      goto LABEL_12;
    case 5:
      v4 = *(result + 1056) & 0xFFFFF8FF;
LABEL_12:
      *(result + 1056) = v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 748), 5);
  *(a1 + 1116) = *(a1 + 1116) & 0xFFFFE0FF | ((result & 0x1F) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetSourceWrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1056) = *(result + 1056) & 0xFFFFFFF8 | dword_1A75D1BC0[a2];
  *(result + 1060) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src1FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 960) = *(result + 960) & 0xF7FFFFFF | v2;
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 632), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 960) = *(a1 + 960) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src1SourceType(uint64_t result, int a2)
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

  *(result + 960) = *(result + 960) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src2SourceType(uint64_t result, int a2)
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

  *(result + 964) = *(result + 964) & 0xFFFFFFFC | v5;
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 992) = *(a1 + 992) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 360), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 996) = *(a1 + 996) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 1464) + 372), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 1464) + 368), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 1000) = *(a1 + 1000) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 1004) = *(a1 + 1004) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<19u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 1464) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 1008) = *(a1 + 1008) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src2OffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 764), 5);
  *(a1 + 1116) = *(a1 + 1116) & 0xE0FFFFFF | ((result & 0x1F) << 24);
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 960) & 0xFDF80FFF;
  *(result + 960) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 960) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src2CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 964) & 0xFDF80FFF;
  *(result + 964) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 964) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetL2ResultCfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 1028) & 0xFDF80FFF;
  *(result + 1028) = v4 | 0x2000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xF9F80FFF | 0x2000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x6000000;
LABEL_7:
      *(result + 1028) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetSource2Wrap(uint64_t result, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a2 >= 4)
  {
    ZinAssertImpl("Source wrapping dimension not acceptable\n", v4, v5);
  }

  *(result + 1056) = *(result + 1056) & 0xFFFFFF8F | dword_1A75D1BD0[a2];
  *(result + 1064) = a4 | (a3 << 16);
  return result;
}

uint64_t ZinAneTd<19u>::SetL2Src2FIFOMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 964) = *(result + 964) & 0xF7FFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = *(result + 1208) & 0xFFFFFFF8 | 2;
      }

      else
      {
        v2 = *(result + 1208) & 0xFFFFFFF8 | 4;
      }

      goto LABEL_14;
    }

    if (a2 == 6)
    {
      v2 = *(result + 1208) & 0xFFFFFFF8 | 5;
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
        v2 = *(result + 1208) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 1208) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      v2 = *(result + 1208) & 0xFFFFFFF8;
LABEL_14:
      *(result + 1208) = v2;
      return result;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 1208) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 1208) | 8;
LABEL_7:
      *(result + 1208) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetPassthroughEnable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1208) = *(result + 1208) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 1204) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 1204) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 1204) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 1204) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcConfigPrefetch(uint64_t result, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    v2 = *(result + 60) | (*(a2 + 72) << 16);
    *(result + 60) = v2;
    v3 = v2 & 0xFFFFFFFE | *(a2 + 81);
    *(result + 60) = v3;
    *(result + 60) = v3 & 0xFFFFFFFD | (2 * (*(a2 + 82) & 1));
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
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
      *(result + 4 * a3 + 84) = *(result + 4 * a3 + 84) & 0xFFFFFF0F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcPostScaleDmaCacheHint(uint64_t result, int a2)
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
      *(result + 292) = *(result + 292) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcBiasDmaCacheHint(uint64_t result, int a2)
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
      *(result + 276) = *(result + 276) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcPaletteLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 308) = *(result + 308) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PaletteLut Dma CacheHint", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(uint64_t result, int a2)
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
      *(result + 324) = *(result + 324) & 0xFFFFFF0F | v4;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 616), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 212) = *(a1 + 4 * a3 + 212) & 0x3F | (v6 << 6);
  }

  return result;
}

BOOL ZinAneTd<19u>::SetKernelDmaSrcCoeffBaseOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 1464) + 608), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 148) = *(a1 + 4 * a3 + 148) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 9)
      {
        v3 = 0;
        v4 = (a3 != 0) << 18;
        goto LABEL_16;
      }

      if (a2 == 6)
      {
        ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
      }

LABEL_20:
      ZinAssertImpl("Invalid padding mode: %d", a2);
    }

    if (!a3)
    {
      v4 = 0;
      v3 = 12;
      goto LABEL_16;
    }

LABEL_17:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (!a3)
    {
      v4 = 0;
      v3 = 4;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 != 3)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    goto LABEL_17;
  }

  v3 = 8;
  v4 = 0x40000;
LABEL_16:
  *(result + 956) = v3 & 0xFF00FFFF | (a3 << 16) | *(result + 956) & 0xFF00FFF3;
  *(result + 1208) = *(result + 1208) & 0xFFFBFFFF | v4;
  return result;
}

uint64_t ZinAneTd<19u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 1204) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 1204) | 0x10000;
  }

  *(result + 1204) = v2;
  return result;
}

void ZinAneTd<19u>::SetAlignedKernelRelocationCommand(uint64_t a1, void *a2, uint64_t a3, const void **a4, uint64_t a5)
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
    ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5510, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5506, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5502, v7, 1, 1, v5, 0);
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
    ZinAneTdHw_v19::AddRelocInfo((a1 + 8), &__p, 5498, v7, 1, 1, v5, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A68FFA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *ZinAneTd<19u>::SetAlignedKernelBias(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFF3 | 8;
  result[301] = result[301] & 0xFFF9FFFF | 0x40000;
  result[70] = result[70] & 0x3F | (a3 << 6);
  result[69] |= 1u;
  return result;
}

_DWORD *ZinAneTd<19u>::SetAlignedKernelPostScale(_DWORD *result, uint64_t a2, int a3)
{
  result[13] = result[13] & 0xFFFFFFFC | 2;
  result[301] = result[301] & 0xFFE7FFFF | 0x100000;
  result[74] = result[74] & 0x3F | (a3 << 6);
  result[73] |= 1u;
  return result;
}

uint64_t ZinAneTd<19u>::SetAlignedKernelPaletteLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 312) = *(result + 312) & 0x3F | (a3 << 6);
  *(result + 308) |= 1u;
  return result;
}

uint64_t ZinAneTd<19u>::SetAlignedKernelNonLinearLut(uint64_t result, uint64_t a2, int a3)
{
  *(result + 328) = *(result + 328) & 0x3F | (a3 << 6);
  *(result + 324) |= 1u;
  return result;
}

uint64_t ZinAneTd<19u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 956) = *(result + 956) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 588) = *(result + 588) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 588) = *(result + 588) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 588) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<19u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
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
        *(result + 588) |= v5;
      }
    }
  }

  return result;
}

void ZinAneTd<19u>::SetPEIndexMode(uint64_t result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = *(result + 1096) & 0xFFF8FFFF | 0x20000;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v2 = *(result + 1096) & 0xFFF8FFFF | 0x50000;
      }
    }

    else
    {
      v2 = *(result + 1096) & 0xFFF8FFFF | 0x10000;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 1096) & 0xFFF8FFFF | 0x30000;
LABEL_16:
      *(result + 1096) = v2;
      return;
    case 4:
      v2 = *(result + 1096) & 0xFFF8FFFF | 0x40000;
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

uint64_t ZinAneTd<19u>::SetPEIndexTranspose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 1096) = *(result + 1096) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t ZinAneTd<19u>::SetPEIndexBroadcast(uint64_t result, uint64_t a2)
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
        *(result + 1096) |= v4;
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

BOOL ZinAneTd<19u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 1132) = *(a1 + 1132) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 1464) + 648);
        v4 = 2;
        break;
      case 4:
        *(a1 + 1132) = *(a1 + 1132) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 1464) + 648);
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
    *(a1 + 1132) &= 0xFFFFFFE3;
    v3 = (*(a1 + 1464) + 648);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 1132) = *(a1 + 1132) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 1464) + 648);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 1132) = *(a1 + 1132) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 1464) + 648));
  if (result)
  {
    return 1;
  }

  return result;
}