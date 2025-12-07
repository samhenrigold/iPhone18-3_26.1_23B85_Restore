void DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2E0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>t), sizeof(CU<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8C2E0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2E0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2F0;
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
    v13 = xmmword_24DA8C2F0;
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
      v13 = xmmword_24DA8C2F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C300;
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
    v13 = xmmword_24DA8C300;
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
      v13 = xmmword_24DA8C300;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C310;
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
    v13 = xmmword_24DA8C310;
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
      v13 = xmmword_24DA8C310;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C320;
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
    v13 = xmmword_24DA8C320;
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
      v13 = xmmword_24DA8C320;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C330;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
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
    v13 = xmmword_24DA8C330;
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
      v13 = xmmword_24DA8C330;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C340;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
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
    v13 = xmmword_24DA8C340;
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
      v13 = xmmword_24DA8C340;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C350;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C350;
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
      v13 = xmmword_24DA8C350;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C360;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C360;
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
      v13 = xmmword_24DA8C360;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setAccelerationStructureDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 5600323)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C370;
    v11 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  v13 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C370;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setAccelerationStructureState(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6975697569757443 || *(a2 + 39) != 0x69756975697569)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C380;
      v12 = "memcmp((const char*)bytes + offset, (Ctuiuiuiui), sizeof(Ctuiuiuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 28) = *(a2 + 76);
  if (a4)
  {
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C380;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C390;
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
      v10 = xmmword_24DA8C390;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3A0;
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
      v10 = xmmword_24DA8C3A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3B0;
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
      v10 = xmmword_24DA8C3B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3C0;
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
      v10 = xmmword_24DA8C3C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753240557443)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C3D0;
    v13 = "memcmp((const char*)bytes + offset, (CtU@2ul), sizeof(CtU@2ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v15 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 16 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C3D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3E0;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C3F0;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C3F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 50) != 0x6C7533406C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C400;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ul), sizeof(Ctululul@3ultulul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C400;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 52) != 0x6C756C7533406CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C410;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ulul), sizeof(Ctululul@3ultulul@3ulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C410;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C75746C757443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C420;
      v12 = "memcmp((const char*)bytes + offset, (Ctultulul), sizeof(Ctultulul)) == 0";
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
      v11 = xmmword_24DA8C420;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x406C753731407443 && *(a2 + 44) == 0x373140746C753731;
    if (!v8 || *(a2 + 52) != 0x6C753731406C75)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8C430;
      v37 = "memcmp((const char*)bytes + offset, (Ct@17ul@17ult@17ul@17ul), sizeof(Ct@17ul@17ult@17ul@17ul)) == 0";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  v10 = *(a2 + 92);
  v11 = *(a2 + 108);
  v12 = *(a2 + 140);
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  v13 = *(a2 + 156);
  v14 = *(a2 + 172);
  v15 = *(a2 + 188);
  *(a1 + 144) = *(a2 + 204);
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  *(a1 + 96) = v13;
  *(a1 + 152) = *(a2 + 212);
  v16 = *(a2 + 228);
  v17 = *(a2 + 244);
  v18 = *(a2 + 260);
  *(a1 + 216) = *(a2 + 276);
  *(a1 + 200) = v18;
  *(a1 + 184) = v17;
  *(a1 + 168) = v16;
  v19 = *(a2 + 292);
  v20 = *(a2 + 308);
  v21 = *(a2 + 324);
  *(a1 + 280) = *(a2 + 340);
  *(a1 + 264) = v21;
  *(a1 + 248) = v20;
  *(a1 + 232) = v19;
  *(a1 + 288) = *(a2 + 348);
  *(a1 + 296) = *(a2 + 356);
  v22 = *(a2 + 372);
  v23 = *(a2 + 388);
  v24 = *(a2 + 420);
  *(a1 + 344) = *(a2 + 404);
  *(a1 + 360) = v24;
  *(a1 + 312) = v22;
  *(a1 + 328) = v23;
  v25 = *(a2 + 436);
  v26 = *(a2 + 452);
  v27 = *(a2 + 468);
  *(a1 + 424) = *(a2 + 484);
  *(a1 + 392) = v26;
  *(a1 + 408) = v27;
  *(a1 + 376) = v25;
  *(a1 + 432) = *(a2 + 492);
  v28 = *(a2 + 508);
  v29 = *(a2 + 524);
  v30 = *(a2 + 556);
  *(a1 + 480) = *(a2 + 540);
  *(a1 + 496) = v30;
  *(a1 + 448) = v28;
  *(a1 + 464) = v29;
  v31 = *(a2 + 572);
  v32 = *(a2 + 588);
  v33 = *(a2 + 604);
  *(a1 + 560) = *(a2 + 620);
  *(a1 + 528) = v32;
  *(a1 + 544) = v33;
  *(a1 + 512) = v31;
  if (a4)
  {
    if (a3 <= 0x24F)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8C430;
      v37 = "offset <= length";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 50) != 0x6C756C756C7574)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C440;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultululul), sizeof(Ctulul@3ul@3ultululul)) == 0";
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
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C440;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C756C756C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C450;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulululul), sizeof(Ctulul@3ul@3ultulululul)) == 0";
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
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C450;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C7533406C756CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8C460;
      v16 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulul@3ul), sizeof(Ctulul@3ul@3ultulul@3ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  v12 = *(a2 + 164);
  *(a1 + 120) = *(a2 + 180);
  *(a1 + 104) = v12;
  if (a4)
  {
    if (a3 <= 0x97)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8C460;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C756C757443 || *(a2 + 44) != 0x6C756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C470;
      v12 = "memcmp((const char*)bytes + offset, (Ctulultulululul), sizeof(Ctulultulululul)) == 0";
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
      v11 = xmmword_24DA8C470;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_copyFromTexture_toTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C480;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C480;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C490;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C490;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4A0;
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
      v13 = xmmword_24DA8C4A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C753340777543)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8C4B0;
    v12 = "memcmp((const char*)bytes + offset, (Cuw@3ul), sizeof(Cuw@3ul)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v8 = *(a2 + 60);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 16) = v8;
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C4B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C4C0;
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
      v13 = xmmword_24DA8C4C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_dispatchThreadsWithIndirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4D0;
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
      v10 = xmmword_24DA8C4D0;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4E0;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_fillBuffer_range_value(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x62756C7532407443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C4F0;
    v11 = "memcmp((const char*)bytes + offset, (Ct@2ulub), sizeof(Ct@2ulub)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C4F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_generateMipmapsForTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C500;
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
      v10 = xmmword_24DA8C500;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C510;
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
      v10 = xmmword_24DA8C510;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C520;
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
      v10 = xmmword_24DA8C520;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C530;
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
      v11 = xmmword_24DA8C530;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C540;
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
      v10 = xmmword_24DA8C540;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C550;
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
      v11 = xmmword_24DA8C550;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C560;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C560;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C570;
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
      v10 = xmmword_24DA8C570;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C75324074557443 | *(a2 + 44))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C580;
    v13 = "memcmp((const char*)bytes + offset, (CtUt@2ul), sizeof(CtUt@2ul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v15 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  if (a4)
  {
    if (v9 + 24 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C580;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_options(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x6C75324074557443 || *(a2 + 39) != 0x6C756C75324074)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C590;
      v14 = "memcmp((const char*)bytes + offset, (CtUt@2ulul), sizeof(CtUt@2ulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = a2[6];
  *(a1 + 8) = a2[7];
  v16 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  *(a1 + 48) = *(v8 + v10 + 24);
  if (a4)
  {
    if (v10 + 32 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C590;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5A0;
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
      v10 = xmmword_24DA8C5A0;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C5B0;
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
      v10 = xmmword_24DA8C5B0;
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

void DYTraceDecode_MTL4ComputeCommandEncoder_setImageblockWidth_height(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5C0;
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
      v11 = xmmword_24DA8C5C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C5D0;
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
      v11 = xmmword_24DA8C5D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C5E0;
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
      v10 = xmmword_24DA8C5E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C5F0;
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
      v10 = xmmword_24DA8C5F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C600;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C600;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ComputeCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C610;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C610;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C620;
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
      v10 = xmmword_24DA8C620;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C630;
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
      v10 = xmmword_24DA8C630;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C640;
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
      v10 = xmmword_24DA8C640;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C650;
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
      v10 = xmmword_24DA8C650;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C660;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C660;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_dispatchNetworkWithIntermediatesHeap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C670;
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
      v10 = xmmword_24DA8C670;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C680;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C680;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C690;
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
      v10 = xmmword_24DA8C690;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6A0;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6B0;
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
      v10 = xmmword_24DA8C6B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6C0;
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
      v10 = xmmword_24DA8C6C0;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_setPipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C6D0;
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
      v10 = xmmword_24DA8C6D0;
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

void DYTraceDecode_MTL4MachineLearningCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6E0;
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
      v10 = xmmword_24DA8C6E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C6F0;
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
      v10 = xmmword_24DA8C6F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4MachineLearningPipelineState_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C700;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C700;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C710;
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
      v10 = xmmword_24DA8C710;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C720;
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
      v10 = xmmword_24DA8C720;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C730;
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
      v10 = xmmword_24DA8C730;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C740;
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
      v10 = xmmword_24DA8C740;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C750;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C750;
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

__n128 DYTraceDecode_MTL4RenderCommandEncoder_dispatchThreadsPerTile(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966293059 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C760;
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
      v12 = xmmword_24DA8C760;
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

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107959)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C770;
      v12 = "memcmp((const char*)bytes + offset, (Culululuwul), sizeof(Culululuwul)) == 0";
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
      v11 = xmmword_24DA8C770;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 42) != 0x6C756C7577756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C780;
      v12 = "memcmp((const char*)bytes + offset, (Culululuwulul), sizeof(Culululuwulul)) == 0";
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
      v11 = xmmword_24DA8C780;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x756C756C756C7543 | *(a2 + 44) ^ 0x6C756C6C756C7577 | *(a2 + 52))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C790;
    v11 = "memcmp((const char*)bytes + offset, (Culululuwulullul), sizeof(Culululuwulullul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
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
  if (a4)
  {
    if (a3 <= 0x5B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C790;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferLength_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7577756C756C7543 || *(a2 + 44) != 7828844)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7A0;
      v12 = "memcmp((const char*)bytes + offset, (Cululuwuluw), sizeof(Cululuwuluw)) == 0";
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
      v11 = xmmword_24DA8C7A0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7B0;
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
      v14 = xmmword_24DA8C7B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x406C753340777543 || *(a2 + 44) != 7107891)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C7C0;
      v14 = "memcmp((const char*)bytes + offset, (Cuw@3ul@3ul), sizeof(Cuw@3ul@3ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 16) = v9;
  v10 = *(a2 + 88);
  *(a1 + 56) = *(a2 + 104);
  *(a1 + 40) = v10;
  if (a4)
  {
    if (a3 <= 0x4B)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C7C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 42) != 0x6C7533406C7533)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C7D0;
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
      v14 = xmmword_24DA8C7D0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C7E0;
      v12 = "memcmp((const char*)bytes + offset, (Culuw), sizeof(Culuw)) == 0";
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
      v11 = xmmword_24DA8C7E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C7F0;
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
      v10 = xmmword_24DA8C7F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C800;
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
      v11 = xmmword_24DA8C800;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C810;
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
      v11 = xmmword_24DA8C810;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C820;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C820;
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

void DYTraceDecode_MTL4RenderCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C830;
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
      v10 = xmmword_24DA8C830;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C840;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C840;
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

void DYTraceDecode_MTL4RenderCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C850;
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
      v10 = xmmword_24DA8C850;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setArgumentTable_atStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C860;
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
      v10 = xmmword_24DA8C860;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717986883 || *(a2 + 40) != 102)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C870;
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
      v11 = xmmword_24DA8C870;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setColorAttachmentMap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966620739 || *(a2 + 40) != 98)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C880;
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
      v11 = xmmword_24DA8C880;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C890;
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
      v11 = xmmword_24DA8C890;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setCullMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8A0;
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
      v10 = xmmword_24DA8C8A0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x66666643 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C8B0;
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
      v10 = xmmword_24DA8C8B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8C0;
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
      v10 = xmmword_24DA8C8C0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8D0;
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
      v10 = xmmword_24DA8C8D0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C8E0;
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
      v10 = xmmword_24DA8C8E0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6710851)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C8F0;
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
      v10 = xmmword_24DA8C8F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C900;
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
      v10 = xmmword_24DA8C900;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setLineWidth(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C910;
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
      v10 = xmmword_24DA8C910;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C920;
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
      v11 = xmmword_24DA8C920;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C930;
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
      v10 = xmmword_24DA8C930;
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

__n128 DYTraceDecode_MTL4RenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966358595 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C940;
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
      v12 = xmmword_24DA8C940;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setScissorRects_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C950;
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
      v12 = xmmword_24DA8C950;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1969845571 || *(a2 + 40) != 105)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C960;
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
      v11 = xmmword_24DA8C960;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C970;
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
      v10 = xmmword_24DA8C970;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C980;
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
      v10 = xmmword_24DA8C980;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C990;
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
      v10 = xmmword_24DA8C990;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C9A0;
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
      v10 = xmmword_24DA8C9A0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setVertexAmplificationCount_viewMappings(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x3E623C556C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C9B0;
    v11 = "memcmp((const char*)bytes + offset, (CulU<b>), sizeof(CulU<b>)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v13 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C9B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

__n128 DYTraceDecode_MTL4RenderCommandEncoder_setViewport(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x64364043 | *(a2 + 40))
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C9C0;
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
      v13 = xmmword_24DA8C9C0;
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

void DYTraceDecode_MTL4RenderCommandEncoder_setViewports_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8C9D0;
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
      v12 = xmmword_24DA8C9D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_setVisibilityResultMode_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C9E0;
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
      v11 = xmmword_24DA8C9E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C9F0;
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
      v10 = xmmword_24DA8C9F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4RenderCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CA00;
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
      v10 = xmmword_24DA8CA00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA10;
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
      v10 = xmmword_24DA8CA10;
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

void DYTraceDecode_MTLAccelerationStructure_allocationInfo(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7577757775777543 || *(a2 + 42) != 0x6C756C756C7577)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CA20;
      v12 = "memcmp((const char*)bytes + offset, (Cuwuwuwululul), sizeof(Cuwuwuwululul)) == 0";
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
      v11 = xmmword_24DA8CA20;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_children(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CA30;
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
      v10 = xmmword_24DA8CA30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA40;
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
      v10 = xmmword_24DA8CA40;
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

void DYTraceDecode_MTLAccelerationStructure_heapOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA50;
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
      v10 = xmmword_24DA8CA50;
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

void DYTraceDecode_MTLAccelerationStructure_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA60;
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
      v10 = xmmword_24DA8CA60;
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

void DYTraceDecode_MTLAccelerationStructure_resourceUsage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA70;
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
      v10 = xmmword_24DA8CA70;
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

void DYTraceDecode_MTLAccelerationStructure_state(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7569756975697543 || *(a2 + 44) != 105)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CA80;
      v12 = "memcmp((const char*)bytes + offset, (Cuiuiuiui), sizeof(Cuiuiuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 12) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x23)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CA80;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CA90;
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
      v10 = xmmword_24DA8CA90;
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

void DYTraceDecode_MTLAccelerationStructure_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x7775 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAA0;
      v11 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAA0;
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

void DYTraceDecode_MTLAccelerationStructure_setDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CAB0;
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
      v10 = xmmword_24DA8CAB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CAC0;
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
      v10 = xmmword_24DA8CAC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructure_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAD0;
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
      v10 = xmmword_24DA8CAD0;
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

void DYTraceDecode_MTLAccelerationStructure_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAE0;
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

void DYTraceDecode_MTLAccelerationStructure_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CAF0;
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

void DYTraceDecode_MTLAccelerationStructure_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB00;
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
      v10 = xmmword_24DA8CB00;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB00;
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

void DYTraceDecode_MTLAccelerationStructure_waitUntilComplete(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB10;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB10;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_setAccelerationStructureDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 5600323)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CB20;
    v11 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  v13 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_setAccelerationStructureState(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6975697569757443 || *(a2 + 39) != 0x69756975697569)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CB30;
      v12 = "memcmp((const char*)bytes + offset, (Ctuiuiuiui), sizeof(Ctuiuiuiui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 28) = *(a2 + 76);
  if (a4)
  {
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CB30;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CB40;
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
      v10 = xmmword_24DA8CB40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CB50;
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
      v11 = xmmword_24DA8CB50;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1951757379 || *(a2 + 39) != 7107956)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CB60;
      v14 = "memcmp((const char*)bytes + offset, (CtUtul), sizeof(CtUtul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v16 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CB60;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CB70;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CB80;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB90;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CB90;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1951757379 || *(a2 + 39) != 7107956)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CBA0;
      v14 = "memcmp((const char*)bytes + offset, (CtUtul), sizeof(CtUtul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v16 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CBA0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x556C7574557443)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8CBB0;
    v13 = "memcmp((const char*)bytes + offset, (CtUtulU), sizeof(CtUtulU)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v15 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  v15 = v9 + 16;
  *(a1 + 40) = AppendString_13794((a1 + 40), v8, &v15);
  if (a4)
  {
    if (((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8CBB0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CBC0;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CBC0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 39) != 5598325)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CBD0;
      v12 = "memcmp((const char*)bytes + offset, (CttulU), sizeof(CttulU)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  v14 = 40;
  *(a1 + 32) = AppendString_13794((a1 + 32), a2 + 36, &v14);
  if (a4)
  {
    if (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CBD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CBE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CBE0;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CBF0;
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
      v10 = xmmword_24DA8CBF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CC00;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CC00;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CC10;
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
      v10 = xmmword_24DA8CC10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C757474557443)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8CC20;
    v13 = "memcmp((const char*)bytes + offset, (CtUttul), sizeof(CtUttul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v15 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  *(a1 + 40) = *(v8 + v9 + 16);
  if (a4)
  {
    if (v9 + 24 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8CC20;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C757474557443 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CC30;
      v14 = "memcmp((const char*)bytes + offset, (CtUttulul), sizeof(CtUttulul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v16 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  *(a1 + 40) = *(v8 + v10 + 16);
  *(a1 + 48) = *(v8 + v10 + 24);
  if (a4)
  {
    if (v10 + 32 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CC30;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 6911340)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CC40;
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
      v11 = xmmword_24DA8CC40;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1951757379 || *(a2 + 39) != 7107956)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CC50;
      v14 = "memcmp((const char*)bytes + offset, (CtUtul), sizeof(CtUtul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v16 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CC50;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CC60;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CC60;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CC70;
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
      v10 = xmmword_24DA8CC70;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_useHeap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CC80;
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
      v10 = xmmword_24DA8CC80;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_useHeaps_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8CC90;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_useResource_usage(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CCA0;
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
      v10 = xmmword_24DA8CCA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_useResources_count_usage(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutulul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  a1[3] = *&v7[v10 + 8];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8CCB0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CCC0;
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
      v10 = xmmword_24DA8CCC0;
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

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CCD0;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CCD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CCE0;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CCE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CCF0;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CCF0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C75747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD00;
    v11 = "memcmp((const char*)bytes + offset, (Cttulul), sizeof(Cttulul)) == 0";
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
      v10 = xmmword_24DA8CD00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C75746C757443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD10;
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
      v10 = xmmword_24DA8CD10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C75746C757443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD20;
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
      v10 = xmmword_24DA8CD20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970566211 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CD30;
      v12 = "memcmp((const char*)bytes + offset, (Cttul), sizeof(Cttul)) == 0";
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
      v11 = xmmword_24DA8CD30;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD40;
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
      v10 = xmmword_24DA8CD40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CD50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CD50;
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

void DYTraceDecode_MTLArgumentEncoder_newArgumentEncoderForBufferAtIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CD60;
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
      v10 = xmmword_24DA8CD60;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CD60;
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

void DYTraceDecode_MTLArgumentEncoder_setAccelerationStructure_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD70;
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
      v10 = xmmword_24DA8CD70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setArgumentBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CD80;
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
      v10 = xmmword_24DA8CD80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setArgumentBuffer_startOffset_arrayElement(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CD90;
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
      v11 = xmmword_24DA8CD90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CDA0;
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
      v11 = xmmword_24DA8CDA0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v13 = xmmword_24DA8CDB0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, v12);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setDepthStencilState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CDC0;
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
      v10 = xmmword_24DA8CDC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setDepthStencilStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CDD0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setIndirectCommandBuffer_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CDE0;
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
      v10 = xmmword_24DA8CDE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setIndirectCommandBuffers_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CDF0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setIntersectionFunctionTable_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CE00;
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
      v10 = xmmword_24DA8CE00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setIntersectionFunctionTables_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CE10;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setRenderPipelineState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CE20;
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
      v10 = xmmword_24DA8CE20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setRenderPipelineStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CE30;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CE40;
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
      v10 = xmmword_24DA8CE40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CE50;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CE60;
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
      v10 = xmmword_24DA8CE60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CE70;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setVisibleFunctionTable_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CE80;
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
      v10 = xmmword_24DA8CE80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLArgumentEncoder_setVisibleFunctionTables_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8CE90;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CEA0;
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
      v10 = xmmword_24DA8CEA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEB0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) ^ 0x6975 | *(v8 + v9 + 10))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEB0;
    v14 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 14) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 4 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CEB0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_addLibraryWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEC0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) ^ 0x6975 | *(v8 + v9 + 10))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEC0;
    v14 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 14) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 4 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CEC0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CED0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) ^ 0x6975 | *(v8 + v9 + 10))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CED0;
    v14 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 14) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 4 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CED0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEE0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) ^ 0x6975 | *(v8 + v9 + 10))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8CEE0;
    v14 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 14) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 4 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8CEE0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBinaryArchive_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CEF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CEF0;
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

void DYTraceDecode_MTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C7532407443 || *(a2 + 42) != 0x3E623C556C7574)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CF00;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ultulU<b>), sizeof(Ct@2ultulU<b>)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 32) = *(a2 + 84);
  *(a1 + 40) = *(a2 + 92);
  v14 = 64;
  *(a1 + 48) = AppendString_13794((a1 + 48), a2 + 36, &v14);
  if (a4)
  {
    if (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CF00;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CF10;
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
      v10 = xmmword_24DA8CF10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CF20;
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
      v11 = xmmword_24DA8CF20;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 50) != 0x6C7533406C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF30;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ul), sizeof(Ctululul@3ultulul@3ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF30;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x6C756C756C757443 && *(a2 + 44) == 0x756C75746C753340;
    if (!v8 || *(a2 + 52) != 0x6C756C7533406CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF40;
      v15 = "memcmp((const char*)bytes + offset, (Ctululul@3ultulul@3ulul), sizeof(Ctululul@3ultulul@3ulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  v10 = *(a2 + 100);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 40) = v10;
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 88) = v11;
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF40;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C75746C757443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CF50;
      v12 = "memcmp((const char*)bytes + offset, (Ctultulul), sizeof(Ctultulul)) == 0";
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
      v11 = xmmword_24DA8CF50;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x406C753731407443 && *(a2 + 44) == 0x373140746C753731;
    if (!v8 || *(a2 + 52) != 0x6C753731406C75)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8CF60;
      v37 = "memcmp((const char*)bytes + offset, (Ct@17ul@17ult@17ul@17ul), sizeof(Ct@17ul@17ult@17ul@17ul)) == 0";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  v10 = *(a2 + 92);
  v11 = *(a2 + 108);
  v12 = *(a2 + 140);
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  v13 = *(a2 + 156);
  v14 = *(a2 + 172);
  v15 = *(a2 + 188);
  *(a1 + 144) = *(a2 + 204);
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  *(a1 + 96) = v13;
  *(a1 + 152) = *(a2 + 212);
  v16 = *(a2 + 228);
  v17 = *(a2 + 244);
  v18 = *(a2 + 260);
  *(a1 + 216) = *(a2 + 276);
  *(a1 + 200) = v18;
  *(a1 + 184) = v17;
  *(a1 + 168) = v16;
  v19 = *(a2 + 292);
  v20 = *(a2 + 308);
  v21 = *(a2 + 324);
  *(a1 + 280) = *(a2 + 340);
  *(a1 + 264) = v21;
  *(a1 + 248) = v20;
  *(a1 + 232) = v19;
  *(a1 + 288) = *(a2 + 348);
  *(a1 + 296) = *(a2 + 356);
  v22 = *(a2 + 372);
  v23 = *(a2 + 388);
  v24 = *(a2 + 420);
  *(a1 + 344) = *(a2 + 404);
  *(a1 + 360) = v24;
  *(a1 + 312) = v22;
  *(a1 + 328) = v23;
  v25 = *(a2 + 436);
  v26 = *(a2 + 452);
  v27 = *(a2 + 468);
  *(a1 + 424) = *(a2 + 484);
  *(a1 + 392) = v26;
  *(a1 + 408) = v27;
  *(a1 + 376) = v25;
  *(a1 + 432) = *(a2 + 492);
  v28 = *(a2 + 508);
  v29 = *(a2 + 524);
  v30 = *(a2 + 556);
  *(a1 + 480) = *(a2 + 540);
  *(a1 + 496) = v30;
  *(a1 + 448) = v28;
  *(a1 + 464) = v29;
  v31 = *(a2 + 572);
  v32 = *(a2 + 588);
  v33 = *(a2 + 604);
  *(a1 + 560) = *(a2 + 620);
  *(a1 + 528) = v32;
  *(a1 + 544) = v33;
  *(a1 + 512) = v31;
  if (a4)
  {
    if (a3 <= 0x24F)
    {
      v34 = *a4;
      v35 = 501;
      v36 = xmmword_24DA8CF60;
      v37 = "offset <= length";
      v38 = 0;
      GTError_addError(a4, &v34);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 50) != 0x6C756C756C7574)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF70;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultululul), sizeof(Ctulul@3ul@3ultululul)) == 0";
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
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF70;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C756C756C756CLL)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF80;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulululul), sizeof(Ctulul@3ul@3ultulululul)) == 0";
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
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 104) = *(a2 + 164);
  *(a1 + 112) = *(a2 + 172);
  if (a4)
  {
    if (a3 <= 0x8F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8CF80;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    if (!v8 || *(a2 + 52) != 0x6C7533406C756CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8CF90;
      v16 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulul@3ul), sizeof(Ctulul@3ul@3ultulul@3ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  v10 = *(a2 + 92);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 32) = v10;
  v11 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v11;
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  *(a1 + 96) = *(a2 + 156);
  v12 = *(a2 + 164);
  *(a1 + 120) = *(a2 + 180);
  *(a1 + 104) = v12;
  if (a4)
  {
    if (a3 <= 0x97)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8CF90;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x33406C756C757443 && *(a2 + 44) == 0x75746C7533406C75;
    v9 = v8 && *(a2 + 52) == 0x756C7533406C756CLL;
    if (!v9 || *(a2 + 60) != 108)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8CFA0;
      v17 = "memcmp((const char*)bytes + offset, (Ctulul@3ul@3ultulul@3ulul), sizeof(Ctulul@3ul@3ultulul@3ulul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  *a1 = *(a2 + 64);
  *(a1 + 8) = *(a2 + 72);
  *(a1 + 16) = *(a2 + 80);
  *(a1 + 24) = *(a2 + 88);
  v11 = *(a2 + 96);
  *(a1 + 48) = *(a2 + 112);
  *(a1 + 32) = v11;
  v12 = *(a2 + 120);
  *(a1 + 72) = *(a2 + 136);
  *(a1 + 56) = v12;
  *(a1 + 80) = *(a2 + 144);
  *(a1 + 88) = *(a2 + 152);
  *(a1 + 96) = *(a2 + 160);
  v13 = *(a2 + 168);
  *(a1 + 120) = *(a2 + 184);
  *(a1 + 104) = v13;
  *(a1 + 128) = *(a2 + 192);
  if (a4)
  {
    if (a3 <= 0xA3)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8CFA0;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C756C757443 || *(a2 + 44) != 0x6C756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CFB0;
      v12 = "memcmp((const char*)bytes + offset, (Ctulultulululul), sizeof(Ctulultulululul)) == 0";
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
      v11 = xmmword_24DA8CFB0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyFromTexture_toTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 7631939)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8CFC0;
    v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  a1[2] = *(a2 + 56);
  if (a4)
  {
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CFC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C7532407443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CFD0;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ultul), sizeof(Ct@2ultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8CFD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CFE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CFE0;
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

void DYTraceDecode_MTLBlitCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CFF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8CFF0;
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

void DYTraceDecode_MTLBlitCommandEncoder_fillBuffer_range_pattern4(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x69756C7532407443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D000;
    v11 = "memcmp((const char*)bytes + offset, (Ct@2ului), sizeof(Ct@2ului)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D000;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_fillBuffer_range_value(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x62756C7532407443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D010;
    v11 = "memcmp((const char*)bytes + offset, (Ct@2ulub), sizeof(Ct@2ulub)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 80);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D010;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_fillTexture_level_slice_region_bytes_length(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x36406C756C757443 | *(a2 + 44) ^ 0x6C753E623C556C75 | *(a2 + 52))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8D020;
    v15 = "memcmp((const char*)bytes + offset, (Ctulul@6ulU<b>ul), sizeof(Ctulul@6ulU<b>ul)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 72);
  *(a1 + 24) = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 120);
  *(a1 + 48) = *(a2 + 104);
  *(a1 + 64) = v10;
  *(a1 + 32) = v9;
  v17 = 100;
  *(a1 + 80) = AppendString_13794((a1 + 80), v8, &v17);
  v11 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 88) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D020;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_fillTexture_level_slice_region_color(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x36406C756C757443 || *(a2 + 42) != 0x6434406C753640)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D030;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@6ul@4d), sizeof(Ctulul@6ul@4d)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  v9 = *(a2 + 84);
  v10 = *(a2 + 116);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 64) = v10;
  *(a1 + 32) = v9;
  v11 = *(a2 + 148);
  *(a1 + 80) = *(a2 + 132);
  *(a1 + 96) = v11;
  if (a4)
  {
    if (a3 <= 0x7F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D030;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_fillTexture_level_slice_region_color_pixelFormat(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x36406C756C757443 || *(a2 + 44) != 0x6C756434406C75)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D040;
      v15 = "memcmp((const char*)bytes + offset, (Ctulul@6ul@4dul), sizeof(Ctulul@6ul@4dul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  v9 = *(a2 + 84);
  v10 = *(a2 + 116);
  *(a1 + 48) = *(a2 + 100);
  *(a1 + 64) = v10;
  *(a1 + 32) = v9;
  v11 = *(a2 + 148);
  *(a1 + 80) = *(a2 + 132);
  *(a1 + 96) = v11;
  *(a1 + 112) = *(a2 + 164);
  if (a4)
  {
    if (a3 <= 0x87)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D040;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_generateMipmapsForTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D050;
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
      v10 = xmmword_24DA8D050;
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

void DYTraceDecode_MTLBlitCommandEncoder_getTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C7536407443 || *(a2 + 44) != 0x6C757469756C75)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D060;
      v14 = "memcmp((const char*)bytes + offset, (Ct@6ulululuitul), sizeof(Ct@6ulululuitul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  v9 = *(a2 + 68);
  v10 = *(a2 + 100);
  *(a1 + 32) = *(a2 + 84);
  *(a1 + 48) = v10;
  *(a1 + 16) = v9;
  *(a1 + 64) = *(a2 + 116);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 96) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 136);
  *(a1 + 88) = *(a2 + 144);
  if (a4)
  {
    if (a3 <= 0x73)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D060;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D070;
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
      v10 = xmmword_24DA8D070;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_invalidateCompressedTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D080;
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
      v10 = xmmword_24DA8D080;
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

void DYTraceDecode_MTLBlitCommandEncoder_invalidateCompressedTexture_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D090;
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
      v11 = xmmword_24DA8D090;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_optimizeContentsForCPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D0A0;
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
      v10 = xmmword_24DA8D0A0;
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

void DYTraceDecode_MTLBlitCommandEncoder_optimizeContentsForCPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D0B0;
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
      v11 = xmmword_24DA8D0B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_optimizeContentsForGPUAccess(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D0C0;
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
      v10 = xmmword_24DA8D0C0;
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

void DYTraceDecode_MTLBlitCommandEncoder_optimizeContentsForGPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D0D0;
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
      v11 = xmmword_24DA8D0D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_optimizeIndirectCommandBuffer_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D0E0;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D0E0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D0F0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D0F0;
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

void DYTraceDecode_MTLBlitCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D100;
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
      v10 = xmmword_24DA8D100;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_resetCommandsInBuffer_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 843084867 || *(a2 + 39) != 7107890)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D110;
      v12 = "memcmp((const char*)bytes + offset, (Ct@2ul), sizeof(Ct@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D110;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_resetTextureAccessCounters_region_mipLevel_slice(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x6C756C7536407443 || *(a2 + 39) != 0x6C756C756C7536)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D120;
      v14 = "memcmp((const char*)bytes + offset, (Ct@6ululul), sizeof(Ct@6ululul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 96);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 48) = v10;
  *(a1 + 16) = v9;
  *(a1 + 64) = *(a2 + 112);
  *(a1 + 72) = *(a2 + 120);
  if (a4)
  {
    if (a3 <= 0x5B)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D120;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 6911340)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D130;
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
      v11 = xmmword_24DA8D130;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_synchronizeResource(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D140;
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
      v10 = xmmword_24DA8D140;
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

void DYTraceDecode_MTLBlitCommandEncoder_synchronizeTexture_slice_level(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D150;
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
      v11 = xmmword_24DA8D150;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBlitCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D160;
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
      v10 = xmmword_24DA8D160;
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

void DYTraceDecode_MTLBlitCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D170;
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
      v10 = xmmword_24DA8D170;
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

void DYTraceDecode_MTLBuffer_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D180;
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
      v10 = xmmword_24DA8D180;
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

void DYTraceDecode_MTLBuffer_gpuVirtualAddress(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D190;
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
      v10 = xmmword_24DA8D190;
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

void DYTraceDecode_MTLBuffer_heapOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D1A0;
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
      v10 = xmmword_24DA8D1A0;
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

void DYTraceDecode_MTLBuffer_parentGPUAddress_parentGPUSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D1B0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwuw), sizeof(Cuwuw)) == 0";
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
      v11 = xmmword_24DA8D1B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLBuffer_resourceUsage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D1C0;
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
      v10 = xmmword_24DA8D1C0;
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

void DYTraceDecode_MTLBuffer_saveContentsToPath(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D1D0;
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
      v10 = xmmword_24DA8D1D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBuffer_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D1E0;
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
      v10 = xmmword_24DA8D1E0;
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

void DYTraceDecode_MTLBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D1F0;
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
      v10 = xmmword_24DA8D1F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLBuffer_setParentGPUAddress(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D200;
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
      v10 = xmmword_24DA8D200;
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

void DYTraceDecode_MTLBuffer_setParentGPUSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D210;
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
      v10 = xmmword_24DA8D210;
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

void DYTraceDecode_MTLBuffer_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D220;
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
      v10 = xmmword_24DA8D220;
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

void DYTraceDecode_MTLBuffer_addDebugMarker_range(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 843076419 || *(a2 + 39) != 7107890)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D230;
      v14 = "memcmp((const char*)bytes + offset, (CS@2ul), sizeof(CS@2ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D230;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D240;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D240;
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

__n128 DYTraceDecode_MTLBuffer_didModifyRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966227523 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8D250;
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
      v12 = xmmword_24DA8D250;
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

void DYTraceDecode_MTLBuffer_isAliasable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D260;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D260;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D260;
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

void DYTraceDecode_MTLBuffer_isPurgeable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D270;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D270;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D270;
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

void DYTraceDecode_MTLBuffer_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D280;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D280;
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

void DYTraceDecode_MTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C756C756C755543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D290;
    v14 = "memcmp((const char*)bytes + offset, (CUululul), sizeof(CUululul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  *(a1 + 40) = *(v8 + v9 + 16);
  if (a4 && *(v8 + v9 + 24) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D290;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D290;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLBuffer_newRemoteBufferViewForDevice(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2A0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2A0;
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

void DYTraceDecode_MTLBuffer_newTensorWithDescriptor_offset_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D2B0;
      v15 = "memcmp((const char*)bytes + offset, (CUult), sizeof(CUult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8D2B0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D2B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7107948)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D2C0;
      v15 = "memcmp((const char*)bytes + offset, (CUulul), sizeof(CUulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8D2C0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D2C0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLCaptureManager_newCaptureScopeWithCommandQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2D0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2D0;
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

void DYTraceDecode_MTLCaptureManager_newCaptureScopeWithDevice(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2E0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D2E0;
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

void DYTraceDecode_MTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75643440746C7543 || *(a2 + 44) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8D2F0;
      v13 = "memcmp((const char*)bytes + offset, (Cult@4dul), sizeof(Cult@4dul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 24) = v9;
  *(a1 + 56) = *(a2 + 104);
  if (a4)
  {
    if (a3 <= 0x4B)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8D2F0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLCaptureManager_sharedCaptureManager(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D300;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D300;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D300;
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

void DYTraceDecode_MTLCaptureManager_startCaptureWithScope(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D310;
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
      v10 = xmmword_24DA8D310;
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

void DYTraceDecode_MTLCaptureScope_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D320;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D320;
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

void DYTraceDecode_MTLCommandBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D330;
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
      v10 = xmmword_24DA8D330;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_setProfilingEnabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D340;
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
      v10 = xmmword_24DA8D340;
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

void DYTraceDecode_MTLCommandBuffer_setSharedIndirectionTable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D350;
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
      v10 = xmmword_24DA8D350;
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

void DYTraceDecode_MTLCommandBuffer___waitUntilCompletedAsync(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D360;
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
      v10 = xmmword_24DA8D360;
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

void DYTraceDecode_MTLCommandBuffer___waitUntilScheduledAsync(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D370;
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
      v10 = xmmword_24DA8D370;
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

void DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D380;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D380;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D380;
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

void DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D390;
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
    v13 = xmmword_24DA8D390;
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
      v13 = xmmword_24DA8D390;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_addCompletedHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3A0;
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
      v10 = xmmword_24DA8D3A0;
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

void DYTraceDecode_MTLCommandBuffer_addPurgedHeap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3B0;
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
      v10 = xmmword_24DA8D3B0;
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

void DYTraceDecode_MTLCommandBuffer_addPurgedResource(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3C0;
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
      v10 = xmmword_24DA8D3C0;
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

void DYTraceDecode_MTLCommandBuffer_addScheduledHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3D0;
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
      v10 = xmmword_24DA8D3D0;
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