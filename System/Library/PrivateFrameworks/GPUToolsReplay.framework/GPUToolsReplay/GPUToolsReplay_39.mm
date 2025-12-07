__n128 DYTraceDecode_MTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C756C7543)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E310;
      v12 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 32) = *(a2 + 52);
    *(a1 + 40) = *(a2 + 60);
    *(a1 + 48) = *(a2 + 68);
    if (*(a2 + 76) ^ 0x6C753340 | *(a2 + 80))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E310;
      v12 = "memcmp((const char*)bytes + offset, (@3ul), sizeof(@3ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    result = *(a2 + 84);
    *(a1 + 24) = *(a2 + 100);
    *(a1 + 8) = result;
    if (a3 <= 0x47)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E310;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 32) = *(a2 + 52);
    *(a1 + 40) = *(a2 + 60);
    *(a1 + 48) = *(a2 + 68);
    result = *(a2 + 84);
    *(a1 + 24) = *(a2 + 100);
    *(a1 + 8) = result;
  }

  return result;
}

__n128 DYTraceDecode_MTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E320;
      v13 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 80);
  if (a4)
  {
    if (*(a2 + 88) ^ 0x6C753340 | *(a2 + 92))
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E320;
      v13 = "memcmp((const char*)bytes + offset, (@3ul), sizeof(@3ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    result = *(a2 + 96);
    *(a1 + 24) = *(a2 + 112);
    *(a1 + 8) = result;
    if (a3 <= 0x53)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E320;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    result = *(a2 + 96);
    *(a1 + 24) = *(a2 + 112);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLDevice_supportsPrimitiveType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E330;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6975 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E330;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E330;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    *(a1 + 16) = *(a2 + 60);
  }
}

void DYTraceDecode_MTLDevice_supportsRasterizationRateMapWithLayerCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E340;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6975 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E340;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E340;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    *(a1 + 16) = *(a2 + 60);
  }
}

void DYTraceDecode_MTLDevice_supportsSampleCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E350;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6975 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E350;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E350;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    *(a1 + 16) = *(a2 + 60);
  }
}

void DYTraceDecode_MTLDevice_supportsTextureSampleCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E360;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6975 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E360;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E360;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    *(a1 + 16) = *(a2 + 60);
  }
}

__n128 DYTraceDecode_MTLDevice_tileSizeWithSparsePageSize_textureType_pixelFormat_sampleCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E370;
      v13 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 80);
  if (a4)
  {
    if (*(a2 + 88) ^ 0x6C753340 | *(a2 + 92))
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E370;
      v13 = "memcmp((const char*)bytes + offset, (@3ul), sizeof(@3ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    result = *(a2 + 96);
    *(a1 + 24) = *(a2 + 112);
    *(a1 + 8) = result;
    if (a3 <= 0x53)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E370;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    result = *(a2 + 96);
    *(a1 + 24) = *(a2 + 112);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLDevice_unmapShaderSampleBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E380;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E380;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLDynamicLibrary_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E390;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E390;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLDynamicLibrary_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLDynamicLibrary_serializeToURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E3B0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>t), sizeof(CU<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) ^ 0x6975 | *(v8 + v10 + 10))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E3B0;
    v15 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 14) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 4 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E3B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLEvent_setEnableBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3C0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLEvent_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E3D0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLEvent_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFence_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E3F0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E3F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLFence_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E400;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E400;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFunction_setDescriptor_library(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8E410;
    v13 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 40);
  v15 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E410;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLFunction_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E420;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E420;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLFunction_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E430;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E430;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E440;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E440;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E440;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x746C7543 | *(a2 + 40))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E450;
      v11 = "memcmp((const char*)bytes + offset, (Cult), sizeof(Cult)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E450;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E450;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C556C7543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E460;
    v14 = "memcmp((const char*)bytes + offset, (CulU<b>t), sizeof(CulU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  v16 = 28;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E460;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E460;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLFunction_newFunctionWithPluginData_bitcodeType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x62753E623C5543)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E470;
    v15 = "memcmp((const char*)bytes + offset, (CU<b>ub), sizeof(CU<b>ub)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v9 = v17;
  *(a1 + 24) = *(v8 + v17);
  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v10 + 4) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E470;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 9) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E470;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLFunctionHandle_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E480;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E480;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFunctionHandle_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E490;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E490;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFunctionHandle_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFunctionPointerHandle_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4B0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFunctionPrivateArgument_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4C0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLHeap_currentAllocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4D0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLHeap_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4E0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLHeap_usedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4F0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E4F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLHeap_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E500;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E500;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLHeap_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E510;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E510;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLHeap_maxAvailableSizeWithAlignment(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E520;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6C75 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E520;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E520;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E530;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E530;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E530;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor_offset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E540;
    v14 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E540;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E540;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E550;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E550;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E550;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E560;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E560;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E560;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x77756C756C7543)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E570;
      v11 = "memcmp((const char*)bytes + offset, (Cululuw), sizeof(Cululuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[4] = *(a2 + 68);
    if (*(a2 + 76) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E570;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 80);
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E570;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[4] = *(a2 + 68);
    a1[1] = *(a2 + 80);
  }
}

void DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E580;
      v12 = "memcmp((const char*)bytes + offset, (Culuw), sizeof(Culuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E580;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E580;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLHeap_newBufferWithLength_options(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E590;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E590;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E590;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLHeap_newBufferWithLength_options_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C756C7543)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5A0;
      v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[4] = *(a2 + 68);
    if (*(a2 + 76) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5A0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 80);
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[4] = *(a2 + 68);
    a1[1] = *(a2 + 80);
  }
}

void DYTraceDecode_MTLHeap_newTextureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E5B0;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E5B0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E5B0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLHeap_newTextureWithDescriptor_offset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E5C0;
    v14 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E5C0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E5C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E5D0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_addBarrier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_addCompletedHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5F0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E5F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_barrier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E600;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E600;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_commit(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E610;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E610;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_copyStatusToBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E620;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E620;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E630;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E630;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_encodeSignalEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E640;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E640;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_encodeWaitForEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E650;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E650;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_enqueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E660;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E660;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C756C757443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E670;
      v12 = "memcmp((const char*)bytes + offset, (Ctulultul), sizeof(Ctulultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E670;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x746C753E623C5543 || *(a2 + 39) != 0x6C75746C753E62)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E680;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>ultul), sizeof(CU<b>ultul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = a2[6];
  v16 = 20;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  *(a1 + 32) = *(v8 + v10 + 16);
  if (a4)
  {
    if (v10 + 24 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E680;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x33406C756C756C75;
    if (!v8 || *(a2 + 50) != 0x6C75746C753340)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E690;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ululul@3ultul), sizeof(Ctulul@3ululul@3ultul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 64) = *(a2 + 124);
  v11 = *(a2 + 132);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 72) = v11;
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E690;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E6B0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_signalEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E6C0;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_tryCancel(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandBuffer_waitForEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E6E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandBuffer_waitUntilCompleted(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6F0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E6F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandQueue_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E700;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E700;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOCommandQueue_barrier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E710;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E710;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandQueue_commandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E720;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E720;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E720;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLIOCommandQueue_commandBufferWithUnretainedReferences(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E730;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E730;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E730;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLIOCommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E740;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E740;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOCommandQueue_enqueueBarrier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E750;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E750;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOFileHandle_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E760;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E760;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOFileHandle_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E770;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E770;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOHandle_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E780;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E780;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIOScratchBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E790;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E790;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOScratchBufferAllocator_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7B0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7B0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7C0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7D0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7E0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7F0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E7F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E800;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E800;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E810;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E810;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E820;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E820;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_indirectComputeCommandAtIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E830;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E830;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E830;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_indirectRenderCommandAtIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E840;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E840;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E840;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_isAliasable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E850;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E850;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E850;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 52);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_isPurgeable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E860;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E860;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E860;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 52);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E870;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E870;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

__n128 DYTraceDecode_MTLIndirectCommandBuffer_resetWithRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966227523 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E880;
      v13 = "memcmp((const char*)bytes + offset, (C@2ul), sizeof(C@2ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E880;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLIndirectComputeCommand_concurrentDispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E890;
      v14 = "memcmp((const char*)bytes + offset, (C@3ul@3ul), sizeof(C@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 8) = v9;
  v10 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 32) = v10;
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E890;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLIndirectComputeCommand_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIndirectComputeCommand_reset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8B0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIndirectComputeCommand_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8C0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectComputeCommand_setKernelBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E8D0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E8D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectComputeCommand_setKernelBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C756C756C757443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E8E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctululul), sizeof(Ctululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E8E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

__n128 DYTraceDecode_MTLIndirectComputeCommand_setStageInRegion(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966489667 || *(a2 + 40) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E8F0;
      v15 = "memcmp((const char*)bytes + offset, (C@6ul), sizeof(C@6ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    *(a1 + 40) = *(a2 + 84);
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
    if (a3 <= 0x3F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E8F0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v11 = *(a2 + 68);
    *(a1 + 40) = *(a2 + 84);
    *(a1 + 24) = v11;
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLIndirectComputeCommand_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E900;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E900;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E910;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E910;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C756C7543 && *(a2 + 44) == 0x756C756C75746C75;
    if (!v8 || *(a2 + 51) != 0x6C756C75746C75)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E920;
      v13 = "memcmp((const char*)bytes + offset, (Cululultultululultulul), sizeof(Cululultultululultulul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 60);
  a1[1] = *(a2 + 68);
  a1[2] = *(a2 + 76);
  a1[3] = *(a2 + 84);
  a1[4] = *(a2 + 92);
  a1[5] = *(a2 + 100);
  a1[6] = *(a2 + 108);
  a1[7] = *(a2 + 116);
  a1[8] = *(a2 + 124);
  a1[9] = *(a2 + 132);
  a1[10] = *(a2 + 140);
  a1[11] = *(a2 + 148);
  a1[12] = *(a2 + 156);
  if (a4)
  {
    if (a3 <= 0x7F)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E920;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x746C756C756C7543 || *(a2 + 44) != 0x6C756C6C756C75)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E930;
      v12 = "memcmp((const char*)bytes + offset, (Cululultulullul), sizeof(Cululultulullul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  a1[7] = *(a2 + 108);
  a1[8] = *(a2 + 116);
  if (a4)
  {
    if (a3 <= 0x57)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E930;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E940;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E940;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E950;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E950;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C756C7543 && *(a2 + 44) == 0x75746C756C756C75;
    if (!v8 || *(a2 + 52) != 7107948)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E960;
      v13 = "memcmp((const char*)bytes + offset, (Cululultululultulul), sizeof(Cululultululultulul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 56);
  a1[1] = *(a2 + 64);
  a1[2] = *(a2 + 72);
  a1[3] = *(a2 + 80);
  a1[4] = *(a2 + 88);
  a1[5] = *(a2 + 96);
  a1[6] = *(a2 + 104);
  a1[7] = *(a2 + 112);
  a1[8] = *(a2 + 120);
  a1[9] = *(a2 + 128);
  a1[10] = *(a2 + 136);
  if (a4)
  {
    if (a3 <= 0x6B)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E960;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E970;
      v12 = "memcmp((const char*)bytes + offset, (Cululululul), sizeof(Cululululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E970;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_reset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E980;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E980;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717986883 || *(a2 + 40) != 102)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E990;
      v12 = "memcmp((const char*)bytes + offset, (Cffff), sizeof(Cffff)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 20) = *(a2 + 64);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E990;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setCullMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9A0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x66666643 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E9B0;
    v11 = "memcmp((const char*)bytes + offset, (Cfff), sizeof(Cfff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9C0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6710851)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8E9E0;
    v11 = "memcmp((const char*)bytes + offset, (Cff), sizeof(Cff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 12) = *(a2 + 52);
  if (a4)
  {
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E9E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setFragmentBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E9F0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8E9F0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setMeshBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA10;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA10;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setObjectBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA20;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA20;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA30;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA30;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA40;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

__n128 DYTraceDecode_MTLIndirectRenderCommand_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966358595 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EA50;
      v13 = "memcmp((const char*)bytes + offset, (C@4ul), sizeof(C@4ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x2F)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EA50;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLIndirectRenderCommand_setScissorRects_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EA60;
    v13 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EA60;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1969845571 || *(a2 + 40) != 105)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA70;
      v12 = "memcmp((const char*)bytes + offset, (Cuiui), sizeof(Cuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x17)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EA70;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA80;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA90;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EA90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setVertexBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EAA0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EAA0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIndirectRenderCommand_setVertexBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C756C756C757443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EAB0;
    v11 = "memcmp((const char*)bytes + offset, (Ctululul), sizeof(Ctululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EAB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

__n128 DYTraceDecode_MTLIndirectRenderCommand_setViewport(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x64364043 | *(a2 + 40))
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8EAC0;
      v14 = "memcmp((const char*)bytes + offset, (C@6d), sizeof(C@6d)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v9 = *(a2 + 68);
    *(a1 + 40) = *(a2 + 84);
    *(a1 + 24) = v9;
    *(a1 + 8) = result;
    if (a3 <= 0x3F)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8EAC0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    *(a1 + 40) = *(a2 + 84);
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLIndirectRenderCommand_setViewports_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EAD0;
    v13 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EAD0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EAE0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EAE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EAF0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EAF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB00;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setBuffers(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EB10;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB20;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB30;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x7775 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB30;
      v11 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EB40;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB50;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB60;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB70;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EB70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EB80;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EB80;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v16 = 0;
  v17 = 0;
  sscanf((a2 + 36), "C@%zut@%zuul@2ul", &v17, &v16);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v17;
  *(a1 + 16) = &v7[8 * v17 + v9];
  v11 = v9 + 8 * (v10 + v16);
  *(a1 + 24) = *&v7[v11];
  if (a4)
  {
    if (v11 + 16 > a3)
    {
      v12[0] = *a4;
      v12[1] = 501;
      v13 = xmmword_24DA8EB90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, v12);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setFunction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EBA0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EBA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setFunctions_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8EBB0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EBC0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EBC0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C7532406C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EBD0;
    v11 = "memcmp((const char*)bytes + offset, (Cul@2ul), sizeof(Cul@2ul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EBD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EBE0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EBE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C7532406C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EBF0;
    v11 = "memcmp((const char*)bytes + offset, (Cul@2ul), sizeof(Cul@2ul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EBF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6C75 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC00;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLIntersectionFunctionTable_setVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EC10;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLLateEvalEvent_setEnableBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC20;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLLateEvalEvent_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EC30;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLLateEvalEvent_setSignaledValue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC40;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLLateEvalEvent_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLLateEvalEvent_newSharedEventHandle(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC60;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC60;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLLateEvalEvent_waitUntilSignaledValue_timeoutMS(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EC70;
      v12 = "memcmp((const char*)bytes + offset, (Cuwuw), sizeof(Cuwuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 60);
    if (*(a2 + 68) ^ 0x6975 | *(a2 + 70))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EC70;
      v12 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 24) = *(a2 + 72);
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EC70;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 60);
    *(a1 + 24) = *(a2 + 72);
  }
}

void DYTraceDecode_MTLLibrary_libraryIdentifier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EC80;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLLibrary_type(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC90;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6C75 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC90;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EC90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLLibrary_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8ECA0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ECA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLLibrary_setOverrideTriple(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8ECB0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ECB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLLibrary_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ECC0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ECC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLLibrary_newExternFunctionWithName(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5343 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECD0;
    v14 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECD0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ECD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECE0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECE0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ECE0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECF0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ECF0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ECF0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5343 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED00;
    v14 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED00;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ED00;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555343)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED10;
    v14 = "memcmp((const char*)bytes + offset, (CSU<b>t), sizeof(CSU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED10;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ED10;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74743E623C555343 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED20;
    v14 = "memcmp((const char*)bytes + offset, (CSU<b>tt), sizeof(CSU<b>tt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  *(a1 + 40) = *(v8 + v9 + 8);
  if (a4 && *(v8 + v9 + 16) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED20;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ED20;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74743E623C555343 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED30;
    v14 = "memcmp((const char*)bytes + offset, (CSU<b>tt), sizeof(CSU<b>tt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  *(a1 + 40) = *(v8 + v9 + 8);
  if (a4 && *(v8 + v9 + 16) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED30;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ED30;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED40;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8ED40;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8ED40;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLMotionEstimationPipeline_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8ED60;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8ED70;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8ED70;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED80;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED90;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8ED90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EDA0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDB0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EDC0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_renderCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDD0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDD0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EDD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EDE0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EDE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setColorStoreActionOptions_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EDF0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EDF0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setDepthStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE10;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE20;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLParallelRenderCommandEncoder_setStencilStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE30;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLPipelineLibrary_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE40;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLPipelineLibrary_newComputePipelineDescriptorWithName_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7623491)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EE50;
    v13 = "memcmp((const char*)bytes + offset, (CSt), sizeof(CSt)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 40);
  v15 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 85)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EE50;
    v13 = "memcmp((const char*)bytes + offset, (U), sizeof(U)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  v15 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  if (a4)
  {
    if (((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EE50;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLPipelineLibrary_newRenderPipelineDescriptorWithName_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7623491)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EE60;
    v13 = "memcmp((const char*)bytes + offset, (CSt), sizeof(CSt)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 40);
  v15 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 85)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8EE60;
    v13 = "memcmp((const char*)bytes + offset, (U), sizeof(U)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  v15 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  if (a4)
  {
    if (((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EE60;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRasterizationRateMap_copyParameterDataToBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EE70;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRasterizationRateMap_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE80;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EE80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLRasterizationRateMap_mapScreenToPhysicalCoordinates_forLayer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1714569283 || *(a2 + 39) != 7107942)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EE90;
      v12 = "memcmp((const char*)bytes + offset, (C@2ful), sizeof(C@2ful)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[3] = *(a2 + 52);
    a1[1] = *(a2 + 60);
    if (*(a2 + 68) != 6697536)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EE90;
      v12 = "memcmp((const char*)bytes + offset, (@2f), sizeof(@2f)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[2] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EE90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[3] = *(a2 + 52);
    a1[1] = *(a2 + 60);
    a1[2] = *(a2 + 72);
  }
}

__n128 DYTraceDecode_MTLRasterizationRateMap_physicalSizeForLayer(uint64_t a1, __n128 *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (a2[2].n128_u32[1] != 7107907)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EEA0;
      v12 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = a2[2].n128_u64[1];
    *(a1 + 32) = a2[3].n128_u64[0];
    if (a2[3].n128_u32[2] ^ 0x6C753340 | a2[3].n128_u8[12])
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EEA0;
      v12 = "memcmp((const char*)bytes + offset, (@3ul), sizeof(@3ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    result = a2[4];
    *(a1 + 24) = a2[5].n128_u64[0];
    *(a1 + 8) = result;
    if (a3 <= 0x33)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EEA0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = a2[2].n128_u64[1];
    *(a1 + 32) = a2[3].n128_u64[0];
    result = a2[4];
    *(a1 + 24) = a2[5].n128_u64[0];
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLRasterizationRateMap_resetUsingDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EEB0;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EEB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x55556C75747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EEC0;
    v11 = "memcmp((const char*)bytes + offset, (CttulUU), sizeof(CttulUU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  v13 = 40;
  *(a1 + 40) = AppendString_13794((a1 + 40), a2 + 36, &v13);
  *(a1 + 48) = AppendString_13794((a1 + 48), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EEC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_executeCommandsInBuffer_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x556C7532407443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EED0;
    v11 = "memcmp((const char*)bytes + offset, (Ct@2ulU), sizeof(Ct@2ulU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  v13 = 40;
  *(a1 + 40) = AppendString_13794((a1 + 40), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EED0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8EEE0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EEE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EEF0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EEF0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EF00;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8EF00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

__n128 DYTraceDecode_MTLRenderCommandEncoder_dispatchThreadsPerTile(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966293059 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EF10;
      v13 = "memcmp((const char*)bytes + offset, (C@3ul), sizeof(C@3ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x27)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EF10;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7536406C75334043 || *(a2 + 44) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EF20;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@6ul), sizeof(C@3ul@6ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 8) = v9;
  v10 = *(a2 + 80);
  v11 = *(a2 + 112);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 64) = v11;
  *(a1 + 32) = v10;
  if (a4)
  {
    if (a3 <= 0x5B)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EF20;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7536406C75334043 || *(a2 + 44) != 6911340)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EF30;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@6ului), sizeof(C@3ul@6ului)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 8) = v9;
  v10 = *(a2 + 80);
  v11 = *(a2 + 112);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 64) = v11;
  *(a1 + 32) = v10;
  *(a1 + 80) = *(a2 + 128);
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EF30;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C75746C7543 || *(a2 + 41) != 0x6C75746C75746CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF40;
      v12 = "memcmp((const char*)bytes + offset, (Cultultultul), sizeof(Cultultultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  a1[7] = *(a2 + 108);
  if (a4)
  {
    if (a3 <= 0x4F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF40;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C756C7543 && *(a2 + 44) == 0x756C756C75746C75;
    if (!v8 || *(a2 + 52) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EF50;
      v13 = "memcmp((const char*)bytes + offset, (Cululultultululul), sizeof(Cululultultululul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 56);
  a1[1] = *(a2 + 64);
  a1[2] = *(a2 + 72);
  a1[3] = *(a2 + 80);
  a1[4] = *(a2 + 88);
  a1[5] = *(a2 + 96);
  a1[6] = *(a2 + 104);
  a1[7] = *(a2 + 112);
  a1[8] = *(a2 + 120);
  a1[9] = *(a2 + 128);
  if (a4)
  {
    if (a3 <= 0x63)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8EF50;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset(void *a1, void *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x746C756C756C7543 || *(a2 + 39) != 0x6C75746C756C75)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF60;
      v12 = "memcmp((const char*)bytes + offset, (Cululultul), sizeof(Cululultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = a2[6];
  a1[1] = a2[7];
  a1[2] = a2[8];
  a1[3] = a2[9];
  a1[4] = a2[10];
  a1[5] = a2[11];
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF60;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x746C756C756C7543 || *(a2 + 41) != 0x6C756C75746C75)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF70;
      v12 = "memcmp((const char*)bytes + offset, (Cululultulul), sizeof(Cululultulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  if (a4)
  {
    if (a3 <= 0x47)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF70;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x746C756C756C7543 || *(a2 + 44) != 0x6C756C6C756C75)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF80;
      v12 = "memcmp((const char*)bytes + offset, (Cululultulullul), sizeof(Cululultulullul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  a1[7] = *(a2 + 108);
  a1[8] = *(a2 + 116);
  if (a4)
  {
    if (a3 <= 0x57)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF80;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C75746C756C7543 || *(a2 + 44) != 7107956)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF90;
      v12 = "memcmp((const char*)bytes + offset, (Culultultul), sizeof(Culultultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  a1[6] = *(a2 + 96);
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EF90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EFA0;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EFA0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C7533406C757443 || *(a2 + 41) != 0x6C7533406C7533)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8EFB0;
      v14 = "memcmp((const char*)bytes + offset, (Ctul@3ul@3ul), sizeof(Ctul@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  v9 = *(a2 + 76);
  *(a1 + 40) = *(a2 + 92);
  *(a1 + 24) = v9;
  v10 = *(a2 + 100);
  *(a1 + 64) = *(a2 + 116);
  *(a1 + 48) = v10;
  if (a4)
  {
    if (a3 <= 0x57)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8EFB0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EFC0;
      v15 = "memcmp((const char*)bytes + offset, (C@3ul@3ul@3ul), sizeof(C@3ul@3ul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  v9 = *(a2 + 60);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 8) = v9;
  v10 = *(a2 + 84);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 32) = v10;
  v11 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v11;
  if (a4)
  {
    if (a3 <= 0x5F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8EFC0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C75746C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFD0;
      v12 = "memcmp((const char*)bytes + offset, (Cultultul), sizeof(Cultultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x746C756C756C7543 || *(a2 + 43) != 0x6C756C756C7574)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFE0;
      v12 = "memcmp((const char*)bytes + offset, (Cululultululul), sizeof(Cululultululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[1] = *(a2 + 60);
  a1[2] = *(a2 + 68);
  a1[3] = *(a2 + 76);
  a1[4] = *(a2 + 84);
  a1[5] = *(a2 + 92);
  a1[6] = *(a2 + 100);
  a1[7] = *(a2 + 108);
  if (a4)
  {
    if (a3 <= 0x4F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPrimitives_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1953264963 || *(a2 + 39) != 7107956)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFF0;
      v12 = "memcmp((const char*)bytes + offset, (Cultul), sizeof(Cultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8EFF0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F000;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F000;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F010;
      v12 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x33)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F010;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F020;
      v12 = "memcmp((const char*)bytes + offset, (Cululululul), sizeof(Cululululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F020;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F030;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F030;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F040;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F040;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_memoryBarrierWithResources_count_afterStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutululul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  a1[3] = *&v7[v10 + 8];
  a1[4] = *&v7[v10 + 16];
  if (a4)
  {
    if (v10 + 24 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F050;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_memoryBarrierWithScope_afterStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F060;
    v11 = "memcmp((const char*)bytes + offset, (Cululul), sizeof(Cululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F060;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F070;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F070;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F080;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F080;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 6911340)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F090;
      v12 = "memcmp((const char*)bytes + offset, (Ctului), sizeof(Ctului)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x23)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F090;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setAlphaTestReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F0A0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F0A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717986883 || *(a2 + 40) != 102)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0B0;
      v12 = "memcmp((const char*)bytes + offset, (Cffff), sizeof(Cffff)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 20) = *(a2 + 64);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setColorAttachmentMap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966620739 || *(a2 + 40) != 98)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0C0;
      v12 = "memcmp((const char*)bytes + offset, (C@8ub), sizeof(C@8ub)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_atIndex(void *a1, void *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C756C757443 || *(a2 + 39) != 0x6C756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0D0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulululul), sizeof(Ctulululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = a2[6];
  a1[1] = a2[7];
  a1[2] = a2[8];
  a1[3] = a2[9];
  a1[4] = a2[10];
  a1[5] = a2[11];
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_yInvert_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C756C757443 || *(a2 + 41) != 0x6C7569756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0E0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulululuiul), sizeof(Ctulululuiul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 84);
  *(a1 + 48) = *(a2 + 92);
  *(a1 + 40) = *(a2 + 96);
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0F0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F0F0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setColorStoreActionOptions_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F100;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F100;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setCullMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F110;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F110;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x66666643 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F120;
    v11 = "memcmp((const char*)bytes + offset, (Cfff), sizeof(Cfff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 12) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F120;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthCleared(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F130;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F130;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F140;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F140;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C756C756C757443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F150;
    v11 = "memcmp((const char*)bytes + offset, (Ctululul), sizeof(Ctululul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F150;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level_yInvert(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C756C757443 || *(a2 + 39) != 0x69756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F160;
      v12 = "memcmp((const char*)bytes + offset, (Ctululului), sizeof(Ctululului)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x37)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F160;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F170;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F170;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F180;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F180;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F190;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F190;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6710851)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F1A0;
    v11 = "memcmp((const char*)bytes + offset, (Cff), sizeof(Cff)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 12) = *(a2 + 52);
  if (a4)
  {
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F1A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F1B0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F1B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F1C0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F1C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F1D0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F1D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v16 = 0;
  v17 = 0;
  sscanf((a2 + 36), "C@%zut@%zuul@2ul", &v17, &v16);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v17;
  *(a1 + 16) = &v7[8 * v17 + v9];
  v11 = v9 + 8 * (v10 + v16);
  *(a1 + 24) = *&v7[v11];
  if (a4)
  {
    if (v11 + 16 > a3)
    {
      v12[0] = *a4;
      v12[1] = 501;
      v13 = xmmword_24DA8F1E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, v12);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentBytes_length_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F1F0;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F1F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentIntersectionFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F200;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F200;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentIntersectionFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F210;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F220;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F220;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717990467 || *(a2 + 39) != 7107942)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F230;
      v12 = "memcmp((const char*)bytes + offset, (Ctfful), sizeof(Ctfful)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 24) = *(a2 + 60);
  *(a1 + 28) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F230;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v19 = 0;
  v20 = 0;
  v7 = (a2 + 36);
  v18 = 0;
  sscanf((a2 + 36), "C@%zut@%zuf@%zuf@2ul", &v20, &v19, &v18);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v19;
  v11 = v9 + 8 * v20;
  v12 = &v7[4 * v19 + v11];
  *(a1 + 32) = &v7[v11];
  *(a1 + 40) = v12;
  v13 = v11 + 4 * (v10 + v18);
  *(a1 + 16) = *&v7[v13];
  if (a4)
  {
    if (v13 + 16 > a3)
    {
      v14[0] = *a4;
      v14[1] = 501;
      v15 = xmmword_24DA8F240;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, v14);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F250;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F260;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F260;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C75746C757443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F270;
    v11 = "memcmp((const char*)bytes + offset, (Ctultul), sizeof(Ctultul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F270;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F280;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F290;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F290;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFragmentVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F2A0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F2B0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F2B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setLineWidth(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F2C0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F2C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F2D0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F2D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F2E0;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F2E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutU<b>@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v16 = v9 + 8 * v15;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F2F0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshBytes_length_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F300;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F300;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F310;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F310;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717990467 || *(a2 + 39) != 7107942)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F320;
      v12 = "memcmp((const char*)bytes + offset, (Ctfful), sizeof(Ctfful)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 24) = *(a2 + 60);
  *(a1 + 28) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F320;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutU<b>U<b>@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v16 = v9 + 8 * v15;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v7, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F330;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F340;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F350;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F350;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setMeshTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F360;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F370;
      v12 = "memcmp((const char*)bytes + offset, (Ctulul), sizeof(Ctulul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F370;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F380;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F380;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutU<b>@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v16 = v9 + 8 * v15;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F390;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectBytes_length_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F3A0;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8F3A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8F3B0;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8F3B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717990467 || *(a2 + 39) != 7107942)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F3C0;
      v12 = "memcmp((const char*)bytes + offset, (Ctfful), sizeof(Ctfful)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 24) = *(a2 + 60);
  *(a1 + 28) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8F3C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutU<b>U<b>@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v16 = v9 + 8 * v15;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v7, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F3D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setObjectSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zut@2ul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  *(a1 + 8) = &v7[v9];
  v10 = v9 + 8 * v15;
  *(a1 + 16) = *&v7[v10];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8F3E0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}