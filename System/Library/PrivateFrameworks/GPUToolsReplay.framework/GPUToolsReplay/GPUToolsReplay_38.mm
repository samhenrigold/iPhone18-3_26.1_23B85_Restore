void DYTraceDecode_MTLCommandBuffer_blitCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3E0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D3E0;
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

void DYTraceDecode_MTLCommandBuffer_blitCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D3F0;
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
    v13 = xmmword_24DA8D3F0;
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
      v13 = xmmword_24DA8D3F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_commit(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D400;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D400;
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

void DYTraceDecode_MTLCommandBuffer_commitAndHold(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D410;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D410;
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

void DYTraceDecode_MTLCommandBuffer_commitAndWaitUntilSubmitted(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D420;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D420;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D420;
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

void DYTraceDecode_MTLCommandBuffer_commitAndWaitUntilSubmittedWithDeadline(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D430;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6975 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D430;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D430;
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

void DYTraceDecode_MTLCommandBuffer_commitWithDeadline(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D440;
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
      v10 = xmmword_24DA8D440;
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

void DYTraceDecode_MTLCommandBuffer_computeCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D450;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D450;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D450;
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

void DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D460;
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
    v13 = xmmword_24DA8D460;
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
      v13 = xmmword_24DA8D460;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDispatchType(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D470;
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
      v10 = xmmword_24DA8D470;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D470;
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

void DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDispatchType_substreamCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 105)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D480;
      v12 = "memcmp((const char*)bytes + offset, (Cului), sizeof(Cului)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 16) = *(a2 + 52);
    *(a1 + 24) = *(a2 + 60);
    if (*(a2 + 64) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D480;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D480;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 16) = *(a2 + 52);
    *(a1 + 24) = *(a2 + 60);
    *(a1 + 8) = *(a2 + 68);
  }
}

void DYTraceDecode_MTLCommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D490;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D490;
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

void DYTraceDecode_MTLCommandBuffer_debugCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D4A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D4A0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D4A0;
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

void DYTraceDecode_MTLCommandBuffer_doCorruptCBSPI(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D4B0;
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
      v10 = xmmword_24DA8D4B0;
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

void DYTraceDecode_MTLCommandBuffer_dropResourceGroups_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D4C0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_value_forIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C756C756C757443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D4D0;
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
      v10 = xmmword_24DA8D4D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_values_indices_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v17 = 0;
  v18 = 0;
  sscanf((a2 + 36), "Ctul@%zuul@%zuulul", &v18, &v17);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  a1[1] = *(v9 + 12);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 28;
  a1[2] = *(v9 + 20);
  a1[3] = &v7[v10];
  v11 = v18;
  a1[4] = &v7[8 * v18 + v10];
  v12 = v10 + 8 * (v11 + v17);
  a1[5] = *&v7[v12];
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13[0] = *a4;
      v13[1] = 501;
      v14 = xmmword_24DA8D4E0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, v13);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeDashboardTagForResourceGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D4F0;
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
      v10 = xmmword_24DA8D4F0;
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

void DYTraceDecode_MTLCommandBuffer_encodeSignalEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D500;
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
      v10 = xmmword_24DA8D500;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeSignalEvent_value_agentMask(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 2004186179 || *(a2 + 39) != 7828855)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D510;
      v12 = "memcmp((const char*)bytes + offset, (Ctuwuw), sizeof(Ctuwuw)) == 0";
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
      v11 = xmmword_24DA8D510;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeSignalEventScheduled_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D520;
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
      v10 = xmmword_24DA8D520;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeWaitForEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D530;
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
      v10 = xmmword_24DA8D530;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_encodeWaitForEvent_value_timeout(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 2004186179 || *(a2 + 39) != 6911351)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D540;
      v12 = "memcmp((const char*)bytes + offset, (Ctuwui), sizeof(Ctuwui)) == 0";
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
      v11 = xmmword_24DA8D540;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_enqueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D550;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D550;
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

void DYTraceDecode_MTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D560;
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
    v13 = xmmword_24DA8D560;
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
      v13 = xmmword_24DA8D560;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D570;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D570;
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

void DYTraceDecode_MTLCommandBuffer_presentDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D580;
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
      v10 = xmmword_24DA8D580;
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

void DYTraceDecode_MTLCommandBuffer_presentDrawable_afterMinimumDuration(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6583363)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D590;
    v11 = "memcmp((const char*)bytes + offset, (Ctd), sizeof(Ctd)) == 0";
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
      v10 = xmmword_24DA8D590;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_presentDrawable_atTime(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 6583363)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D5A0;
    v11 = "memcmp((const char*)bytes + offset, (Ctd), sizeof(Ctd)) == 0";
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
      v10 = xmmword_24DA8D5A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D5B0;
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
      v10 = xmmword_24DA8D5B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_renderCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D5C0;
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
    v13 = xmmword_24DA8D5C0;
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
      v13 = xmmword_24DA8D5C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D5D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D5D0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D5D0;
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

void DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D5E0;
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
    v13 = xmmword_24DA8D5E0;
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
      v13 = xmmword_24DA8D5E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C753E623C555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D5F0;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>ul), sizeof(CUU<b>ul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D5F0;
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
      v13 = xmmword_24DA8D5F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_setResourceGroups_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D600;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_useResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D610;
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
      v10 = xmmword_24DA8D610;
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

void DYTraceDecode_MTLCommandBuffer_useResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D620;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLCommandBuffer_videoCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D630;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D630;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D630;
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

void DYTraceDecode_MTLCommandBuffer_waitUntilCompleted(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D640;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D640;
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

void DYTraceDecode_MTLCommandBuffer_waitUntilScheduled(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D650;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D650;
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

void DYTraceDecode_MTLCommandQueue_setBackgroundTrackingPID(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D660;
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
      v10 = xmmword_24DA8D660;
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

void DYTraceDecode_MTLCommandQueue_setExecutionEnabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D670;
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
      v10 = xmmword_24DA8D670;
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

void DYTraceDecode_MTLCommandQueue_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D680;
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
      v10 = xmmword_24DA8D680;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandQueue_setProfilingEnabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D690;
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
      v10 = xmmword_24DA8D690;
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

void DYTraceDecode_MTLCommandQueue_setSkipRender(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6A0;
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
      v10 = xmmword_24DA8D6A0;
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

void DYTraceDecode_MTLCommandQueue_addResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6B0;
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
      v10 = xmmword_24DA8D6B0;
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

void DYTraceDecode_MTLCommandQueue_addResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D6C0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLCommandQueue_commandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6D0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6D0;
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

void DYTraceDecode_MTLCommandQueue_commandBufferWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8D6E0;
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
    v13 = xmmword_24DA8D6E0;
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
      v13 = xmmword_24DA8D6E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCommandQueue_commandBufferWithUnretainedReferences(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6F0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6F0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D6F0;
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

void DYTraceDecode_MTLCommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D700;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D700;
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

void DYTraceDecode_MTLCommandQueue_finish(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D710;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D710;
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

void DYTraceDecode_MTLCommandQueue_getSPIStats(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D720;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x3E623C55 | *(a2 + 52))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D720;
      v11 = "memcmp((const char*)bytes + offset, (U<b>), sizeof(U<b>)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }

  v13 = 20;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D720;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLCommandQueue_insertDebugCaptureBoundary(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D730;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D730;
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

void DYTraceDecode_MTLCommandQueue_removeResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D740;
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
      v10 = xmmword_24DA8D740;
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

void DYTraceDecode_MTLCommandQueue_removeResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D750;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLCommandQueue_setBackgroundGPUPriority(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D760;
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
      v10 = xmmword_24DA8D760;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D760;
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

void DYTraceDecode_MTLCommandQueue_setBackgroundGPUPriority_offset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 115)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D770;
      v12 = "memcmp((const char*)bytes + offset, (Culus), sizeof(Culus)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 20) = *(a2 + 60);
    if (*(a2 + 64) ^ 0x6975 | *(a2 + 66))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D770;
      v12 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 16) = *(a2 + 68);
    if (a3 <= 0x23)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D770;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 20) = *(a2 + 60);
    *(a1 + 16) = *(a2 + 68);
  }
}

void DYTraceDecode_MTLCommandQueue_setCompletionQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D780;
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
      v10 = xmmword_24DA8D780;
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

void DYTraceDecode_MTLCommandQueue_setGPUPriority(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D790;
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
      v10 = xmmword_24DA8D790;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 16) = *(a2 + 60);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D790;
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

void DYTraceDecode_MTLCommandQueue_setGPUPriority_offset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 115)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D7A0;
      v12 = "memcmp((const char*)bytes + offset, (Culus), sizeof(Culus)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 20) = *(a2 + 60);
    if (*(a2 + 64) ^ 0x6975 | *(a2 + 66))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D7A0;
      v12 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 16) = *(a2 + 68);
    if (a3 <= 0x23)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D7A0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 20) = *(a2 + 60);
    *(a1 + 16) = *(a2 + 68);
  }
}

void DYTraceDecode_MTLCommandQueue_setSubmissionQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D7B0;
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
      v10 = xmmword_24DA8D7B0;
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

void DYTraceDecode_MTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x55556C75747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D7C0;
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
      v10 = xmmword_24DA8D7C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_executeCommandsInBuffer_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x556C7532407443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D7D0;
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
      v10 = xmmword_24DA8D7D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D7E0;
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
      v10 = xmmword_24DA8D7E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D7F0;
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
      v11 = xmmword_24DA8D7F0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D800;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D800;
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

void DYTraceDecode_MTLComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D810;
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
      v13 = xmmword_24DA8D810;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C7533406C757443 | *(a2 + 44))
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8D820;
    v12 = "memcmp((const char*)bytes + offset, (Ctul@3ul), sizeof(Ctul@3ul)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v8 = *(a2 + 72);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 24) = v8;
  if (a4)
  {
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D820;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7533406C75334043 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D830;
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
      v13 = xmmword_24DA8D830;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_dispatchThreadsWithIndirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D840;
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
      v10 = xmmword_24DA8D840;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_enableNullBufferBinds(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D850;
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
      v10 = xmmword_24DA8D850;
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

void DYTraceDecode_MTLComputeCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D860;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D860;
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

void DYTraceDecode_MTLComputeCommandEncoder_insertCompressedTextureReinterpretationFlush(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D870;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D870;
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

void DYTraceDecode_MTLComputeCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D880;
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
      v10 = xmmword_24DA8D880;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_memoryBarrierWithResources_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D890;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_memoryBarrierWithScope(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D8A0;
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
      v10 = xmmword_24DA8D8A0;
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

void DYTraceDecode_MTLComputeCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D8B0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D8B0;
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

void DYTraceDecode_MTLComputeCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D8C0;
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
      v10 = xmmword_24DA8D8C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 6911340)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D8D0;
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
      v11 = xmmword_24DA8D8D0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D8E0;
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
      v10 = xmmword_24DA8D8E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7107948)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D8F0;
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
      v11 = xmmword_24DA8D8F0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C756C756C757443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D900;
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
      v10 = xmmword_24DA8D900;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D910;
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
      v11 = xmmword_24DA8D910;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBufferOffset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C756C7543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D920;
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
      v10 = xmmword_24DA8D920;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBuffers_offsets_attributeStrides_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D930;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v13 = xmmword_24DA8D940;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, v12);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBytes_length_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D950;
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
      v13 = xmmword_24DA8D950;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setBytes_length_attributeStride_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 7107948)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D960;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>ululul), sizeof(CU<b>ululul)) == 0";
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
  *(a1 + 32) = *(v8 + v10 + 16);
  if (a4)
  {
    if (v10 + 24 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8D960;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8D970;
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
      v10 = xmmword_24DA8D970;
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

void DYTraceDecode_MTLComputeCommandEncoder_setImageblockWidth_height(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D980;
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
      v11 = xmmword_24DA8D980;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setIntersectionFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D990;
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
      v10 = xmmword_24DA8D990;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setIntersectionFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D9A0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8D9B0;
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
      v10 = xmmword_24DA8D9B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717990467 || *(a2 + 39) != 7107942)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8D9C0;
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
      v11 = xmmword_24DA8D9C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v15 = xmmword_24DA8D9D0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, v14);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8D9E0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

__n128 DYTraceDecode_MTLComputeCommandEncoder_setStageInRegion(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966489667 || *(a2 + 40) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8D9F0;
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
      v14 = xmmword_24DA8D9F0;
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

void DYTraceDecode_MTLComputeCommandEncoder_setStageInRegionWithIndirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DA00;
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
      v10 = xmmword_24DA8DA00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setSubstream(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DA10;
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
      v10 = xmmword_24DA8DA10;
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

void DYTraceDecode_MTLComputeCommandEncoder_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DA20;
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
      v10 = xmmword_24DA8DA20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8DA30;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setThreadgroupDistributionMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DA40;
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
      v10 = xmmword_24DA8DA40;
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

void DYTraceDecode_MTLComputeCommandEncoder_setThreadgroupDistributionModeWithClusterGroupIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DA50;
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
      v10 = xmmword_24DA8DA50;
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

void DYTraceDecode_MTLComputeCommandEncoder_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DA60;
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
      v11 = xmmword_24DA8DA60;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setThreadgroupPackingDisabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DA70;
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
      v10 = xmmword_24DA8DA70;
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

void DYTraceDecode_MTLComputeCommandEncoder_setVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DA80;
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
      v10 = xmmword_24DA8DA80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_setVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8DA90;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_signalProgress(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DAA0;
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
      v10 = xmmword_24DA8DAA0;
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

void DYTraceDecode_MTLComputeCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DAB0;
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
      v10 = xmmword_24DA8DAB0;
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

void DYTraceDecode_MTLComputeCommandEncoder_useHeap(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DAC0;
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
      v10 = xmmword_24DA8DAC0;
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

void DYTraceDecode_MTLComputeCommandEncoder_useHeaps_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8DAD0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_useResource_usage(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DAE0;
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
      v10 = xmmword_24DA8DAE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_useResources_count_usage(void *a1, uint64_t a2, unint64_t a3, int *a4)
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
      v12 = xmmword_24DA8DAF0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTLComputeCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB00;
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
      v10 = xmmword_24DA8DB00;
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

void DYTraceDecode_MTLComputeCommandEncoder_waitForProgress(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB10;
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
      v10 = xmmword_24DA8DB10;
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

void DYTraceDecode_MTLComputePipelineState_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB20;
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
      v10 = xmmword_24DA8DB20;
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

void DYTraceDecode_MTLComputePipelineState_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB30;
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
      v10 = xmmword_24DA8DB30;
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

void DYTraceDecode_MTLComputePipelineState_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB40;
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
      v10 = xmmword_24DA8DB40;
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

void DYTraceDecode_MTLComputePipelineState_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB50;
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

void DYTraceDecode_MTLComputePipelineState_functionHandleWithFunction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB60;
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
      v10 = xmmword_24DA8DB60;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DB60;
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

void DYTraceDecode_MTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DB70;
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
    v13 = xmmword_24DA8DB70;
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
      v13 = xmmword_24DA8DB70;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputePipelineState_newIntersectionFunctionTableWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DB80;
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
    v13 = xmmword_24DA8DB80;
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
      v13 = xmmword_24DA8DB80;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLComputePipelineState_newVisibleFunctionTableWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DB90;
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
    v13 = xmmword_24DA8DB90;
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
      v13 = xmmword_24DA8DB90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLCounterSampleBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBA0;
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

void DYTraceDecode_MTLCounterSampleBuffer_resolveCounterRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1966227523 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DBB0;
      v12 = "memcmp((const char*)bytes + offset, (C@2ul), sizeof(C@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 16) = *(a2 + 52);
    if (*(a2 + 68) ^ 0x3E623C55 | *(a2 + 72))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DBB0;
      v12 = "memcmp((const char*)bytes + offset, (U<b>), sizeof(U<b>)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 16) = *(a2 + 52);
  }

  v14 = 40;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v14);
  if (a4)
  {
    if (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DBB0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLDeadlineProfile_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBC0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBC0;
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

void DYTraceDecode_MTLDepthStencilState_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBD0;
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
      v10 = xmmword_24DA8DBD0;
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

void DYTraceDecode_MTLDepthStencilState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBE0;
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
      v10 = xmmword_24DA8DBE0;
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

void DYTraceDecode_MTLDepthStencilState_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DBF0;
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

void DYTraceDecode_MTLDevice_compileVisibleFunction_withDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74557443 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DC00;
    v14 = "memcmp((const char*)bytes + offset, (CtUt), sizeof(CtUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v16 = 24;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DC00;
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
      v13 = xmmword_24DA8DC00;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_deviceReference(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DC10;
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
      v10 = xmmword_24DA8DC10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLDevice_newBufferWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 5592387)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DC20;
    v14 = "memcmp((const char*)bytes + offset, (CUU), sizeof(CUU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DC20;
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
      v13 = xmmword_24DA8DC20;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newSharedEvent(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DC30;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    if (*(a2 + 52) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DC30;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 56);
    if (a3 <= 0x1B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DC30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 8) = *(a2 + 56);
  }
}

void DYTraceDecode_MTLDevice_newSharedEventWithHandle(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1769305155 || *(a2 + 39) != 7828841)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC40;
      v12 = "memcmp((const char*)bytes + offset, (Ctuiuw), sizeof(Ctuiuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  *(a1 + 32) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 64);
  if (a4)
  {
    if (*(a2 + 72) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC40;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 76);
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC40;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 76);
  }
}

void DYTraceDecode_MTLDevice_newSharedEventWithMachPort(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1969845571 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC50;
      v12 = "memcmp((const char*)bytes + offset, (Cuiuw), sizeof(Cuiuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 24) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC50;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC50;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 24) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 68);
  }
}

void DYTraceDecode_MTLDevice_newSharedTextureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DC60;
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
    v13 = xmmword_24DA8DC60;
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
      v13 = xmmword_24DA8DC60;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_setCommandBufferErrorOptions(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DC70;
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
      v10 = xmmword_24DA8DC70;
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

void DYTraceDecode_MTLDevice_setMetalAssertionsEnabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DC80;
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
      v10 = xmmword_24DA8DC80;
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

void DYTraceDecode_MTLDevice_setPluginData(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1648121155 || *(a2 + 40) != 62)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC90;
      v12 = "memcmp((const char*)bytes + offset, (CU<b>), sizeof(CU<b>)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  v14 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v14);
  if (a4)
  {
    if (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DC90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLDevice_setRequiresLegacyCompilerProcessesCount(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DCA0;
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
      v10 = xmmword_24DA8DCA0;
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

void DYTraceDecode_MTLDevice_setWritableHeapsEnabled(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DCB0;
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
      v10 = xmmword_24DA8DCB0;
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

void DYTraceDecode_MTLDevice_compileVisibleFunction_withDescriptor_destinationBinaryArchive_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1951757379 || *(a2 + 40) != 116)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DCC0;
      v14 = "memcmp((const char*)bytes + offset, (CtUtt), sizeof(CtUtt)) == 0";
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
      v13 = xmmword_24DA8DCC0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_copyShaderCacheToPath(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5343 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DCD0;
    v14 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) ^ 0x6975 | *(v8 + v9 + 2))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DCD0;
    v14 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 4 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DCD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DCE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DCE0;
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

void DYTraceDecode_MTLDevice_deserializeInstanceAccelerationStructure_fromBytes_primitiveAccelerationStructures_withDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x55553E623C557443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DCF0;
    v11 = "memcmp((const char*)bytes + offset, (CtU<b>UU), sizeof(CtU<b>UU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  v13 = 28;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  *(a1 + 24) = AppendString_13794((a1 + 24), a2 + 36, &v13);
  *(a1 + 32) = AppendString_13794((a1 + 32), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DCF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLDevice_deserializePrimitiveAccelerationStructure_fromBytes_withDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x553E623C557443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8DD00;
    v11 = "memcmp((const char*)bytes + offset, (CtU<b>U), sizeof(CtU<b>U)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  v13 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  *(a1 + 24) = AppendString_13794((a1 + 24), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLDevice_functionHandleWithFunction(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD10;
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
      v10 = xmmword_24DA8DD10;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD10;
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

__n128 DYTraceDecode_MTLDevice_heapBufferSizeAndAlignWithLength_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8DD20;
      v13 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    *(a1 + 24) = *(a2 + 52);
    *(a1 + 32) = *(a2 + 60);
    if (*(a2 + 68) ^ 0x6C753240 | *(a2 + 72))
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8DD20;
      v13 = "memcmp((const char*)bytes + offset, (@2ul), sizeof(@2ul)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    result = *(a2 + 76);
    *(a1 + 8) = result;
    if (a3 <= 0x37)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8DD20;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 24) = *(a2 + 52);
    *(a1 + 32) = *(a2 + 60);
    result = *(a2 + 76);
    *(a1 + 8) = result;
  }

  return result;
}

__n128 DYTraceDecode_MTLDevice_heapTextureSizeAndAlignWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8DD30;
    v15 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  *a1 = *(a2 + 40);
  v17 = 12;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v9 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4)
  {
    v10 = v8 + v9;
    if (*v10 ^ 0x6C753240 | v10[4])
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DD30;
      v15 = "memcmp((const char*)bytes + offset, (@2ul), sizeof(@2ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    result = *(v10 + 8);
    *(a1 + 8) = result;
    if (v9 + 24 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DD30;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  else
  {
    result = *(v8 + v9 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLDevice_loadDynamicLibrariesForComputeDescriptor_options_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DD40;
      v14 = "memcmp((const char*)bytes + offset, (CUult), sizeof(CUult)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 85)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DD40;
    v14 = "memcmp((const char*)bytes + offset, (U), sizeof(U)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v16 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  if (a4)
  {
    if (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DD40;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x6C75553E623C5543 || *(a2 + 44) != 116)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DD50;
      v14 = "memcmp((const char*)bytes + offset, (CU<b>Uult), sizeof(CU<b>Uult)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 85)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DD50;
    v14 = "memcmp((const char*)bytes + offset, (U), sizeof(U)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v16 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  if (a4)
  {
    if (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DD50;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_minLinearTextureAlignmentForPixelFormat(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD60;
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
      v10 = xmmword_24DA8DD60;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD60;
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

void DYTraceDecode_MTLDevice_minLinearTextureBaseAddressAlignmentForDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DD70;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) ^ 0x6C75 | *(v8 + v9 + 2))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DD70;
    v14 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8DD70;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD80;
      v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
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
      v10 = xmmword_24DA8DD80;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DD80;
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

void DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7828844)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DD90;
      v12 = "memcmp((const char*)bytes + offset, (Ctuluw), sizeof(Ctuluw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[2] = *(a2 + 52);
  a1[3] = *(a2 + 60);
  a1[4] = *(a2 + 68);
  if (a4)
  {
    if (*(a2 + 76) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DD90;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 80);
    if (a3 <= 0x33)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DD90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 80);
  }
}

void DYTraceDecode_MTLDevice_newAccelerationStructureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DDA0;
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
    v13 = xmmword_24DA8DDA0;
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
      v13 = xmmword_24DA8DDA0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newAccelerationStructureWithSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DDB0;
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
      v10 = xmmword_24DA8DDB0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DDB0;
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

void DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DDC0;
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
      v11 = xmmword_24DA8DDC0;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DDC0;
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

void DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_withDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x556C7543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DDD0;
    v14 = "memcmp((const char*)bytes + offset, (CulU), sizeof(CulU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v16 = 24;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DDD0;
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
      v13 = xmmword_24DA8DDD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newArgumentEncoderWithBufferBinding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DDE0;
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
      v10 = xmmword_24DA8DDE0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DDE0;
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

void DYTraceDecode_MTLDevice_newArgumentTableWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DDF0;
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
    v13 = xmmword_24DA8DDF0;
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
      v13 = xmmword_24DA8DDF0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newBinaryArchiveWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DE00;
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
    v13 = xmmword_24DA8DE00;
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
      v13 = xmmword_24DA8DE00;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newBufferWithBytes_length_options_gpuAddress(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 7828844)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DE10;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>ululuw), sizeof(CU<b>ululuw)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8DE10;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DE10;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newBufferWithBytesNoCopy_length_options_deallocator(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 39) != 0x746C756C753E62)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DE20;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>ulult), sizeof(CU<b>ulult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = a2[6];
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8DE20;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DE20;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newBufferWithIOSurface(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DE30;
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
    v13 = xmmword_24DA8DE30;
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
      v13 = xmmword_24DA8DE30;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newBufferWithLength_options_gpuAddress(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x77756C756C7543)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE40;
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
      v10 = xmmword_24DA8DE40;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 80);
    if (a3 <= 0x33)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE40;
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

void DYTraceDecode_MTLDevice_newCommandAllocator(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE50;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE50;
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

void DYTraceDecode_MTLDevice_newCommandAllocatorWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DE60;
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
    v13 = xmmword_24DA8DE60;
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
      v13 = xmmword_24DA8DE60;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE70;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE70;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE70;
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

void DYTraceDecode_MTLDevice_newCommandQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE80;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE80;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DE80;
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

void DYTraceDecode_MTLDevice_newCommandQueueWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DE90;
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
    v13 = xmmword_24DA8DE90;
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
      v13 = xmmword_24DA8DE90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newCommandQueueWithMaxCommandBufferCount(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DEA0;
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
      v10 = xmmword_24DA8DEA0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DEA0;
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

void DYTraceDecode_MTLDevice_newCompilerWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DEB0;
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
    v13 = xmmword_24DA8DEB0;
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
      v13 = xmmword_24DA8DEB0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DEC0;
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
    v13 = xmmword_24DA8DEC0;
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
      v13 = xmmword_24DA8DEC0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DED0;
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
    v13 = xmmword_24DA8DED0;
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
      v13 = xmmword_24DA8DED0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DEE0;
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
    v14 = xmmword_24DA8DEE0;
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
      v14 = xmmword_24DA8DEE0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_completionHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DEF0;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DEF0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DEF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF00;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF00;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_completionHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 40) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DF10;
      v12 = "memcmp((const char*)bytes + offset, (Ctult), sizeof(Ctult)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[2] = *(a2 + 52);
  a1[3] = *(a2 + 60);
  a1[4] = *(a2 + 68);
  if (a4)
  {
    if (*(a2 + 76) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DF10;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 80);
    if (a3 <= 0x33)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8DF10;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 80);
  }
}

void DYTraceDecode_MTLDevice_newCounterSampleBufferWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DF20;
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
    v13 = xmmword_24DA8DF20;
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
      v13 = xmmword_24DA8DF20;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newDefaultLibrary(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF30;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF30;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF30;
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

void DYTraceDecode_MTLDevice_newDefaultLibraryWithBundle_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DF40;
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
    v14 = xmmword_24DA8DF40;
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
      v14 = xmmword_24DA8DF40;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newDepthStencilStateWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DF50;
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
    v13 = xmmword_24DA8DF50;
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
      v13 = xmmword_24DA8DF50;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newDynamicLibrary_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF60;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF60;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DF70;
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
    v14 = xmmword_24DA8DF70;
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
      v14 = xmmword_24DA8DF70;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_options_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x746C753E623C5543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DF80;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ult), sizeof(CU<b>ult)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  if (a4 && *(v8 + v9 + 16) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DF80;
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
      v13 = xmmword_24DA8DF80;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newEvent(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF90;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF90;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DF90;
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

void DYTraceDecode_MTLDevice_newFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DFA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DFA0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8DFA0;
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

void DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DFB0;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
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
    v13 = xmmword_24DA8DFB0;
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
      v13 = xmmword_24DA8DFB0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x623C553E623C5543 || *(a2 + 44) != 7107902)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DFC0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>ul), sizeof(CU<b>U<b>ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8DFC0;
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
      v14 = xmmword_24DA8DFC0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newFunctionWithGLESIR_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DFD0;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
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
    v13 = xmmword_24DA8DFD0;
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
      v13 = xmmword_24DA8DFD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newFunctionWithGLESIR_inputsDescription_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x623C553E623C5543 || *(a2 + 44) != 7107902)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8DFE0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>ul), sizeof(CU<b>U<b>ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8DFE0;
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
      v14 = xmmword_24DA8DFE0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newFunctionWithGLIR_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x6C753E623C5543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8DFF0;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ul), sizeof(CU<b>ul)) == 0";
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
    v13 = xmmword_24DA8DFF0;
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
      v13 = xmmword_24DA8DFF0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newFunctionWithGLIR_inputsDescription_functionType(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x623C553E623C5543 || *(a2 + 44) != 7107902)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E000;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>ul), sizeof(CU<b>U<b>ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E000;
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
      v14 = xmmword_24DA8E000;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newHeapWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E010;
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
    v13 = xmmword_24DA8E010;
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
      v13 = xmmword_24DA8E010;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newIOCommandQueueWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E020;
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
    v13 = xmmword_24DA8E020;
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
      v13 = xmmword_24DA8E020;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newIOFileHandleWithURL_compressionMethod_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x746C753E623C5543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E030;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ult), sizeof(CU<b>ult)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  if (a4 && *(v8 + v9 + 16) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E030;
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
      v13 = xmmword_24DA8E030;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newIOFileHandleWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E040;
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
    v14 = xmmword_24DA8E040;
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
      v14 = xmmword_24DA8E040;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newIOHandleWithURL_compressionMethod_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x746C753E623C5543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E050;
    v14 = "memcmp((const char*)bytes + offset, (CU<b>ult), sizeof(CU<b>ult)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  *(a1 + 32) = *(v8 + v9 + 8);
  if (a4 && *(v8 + v9 + 16) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E050;
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
      v13 = xmmword_24DA8E050;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newIOHandleWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E060;
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
    v14 = xmmword_24DA8E060;
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
      v14 = xmmword_24DA8E060;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7107948)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E070;
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
    v14 = xmmword_24DA8E070;
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
      v14 = xmmword_24DA8E070;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newIntersectionFunctionTableWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E080;
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
    v13 = xmmword_24DA8E080;
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
      v13 = xmmword_24DA8E080;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLateEvalEvent(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E090;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E090;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E090;
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

void DYTraceDecode_MTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x623C553E623C5543 || *(a2 + 39) != 0x743E623C553E62)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E0A0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>t), sizeof(CU<b>U<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = a2[6];
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E0A0;
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
      v14 = xmmword_24DA8E0A0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x623C553E623C5543 || *(a2 + 39) != 0x743E623C553E62)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E0B0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>t), sizeof(CU<b>U<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = a2[6];
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E0B0;
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
      v14 = xmmword_24DA8E0B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithDAG_functions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74555343 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E0C0;
    v14 = "memcmp((const char*)bytes + offset, (CSUt), sizeof(CSUt)) == 0";
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
    v13 = xmmword_24DA8E0C0;
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
      v13 = xmmword_24DA8E0C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithData_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E0D0;
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
    v14 = xmmword_24DA8E0D0;
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
      v14 = xmmword_24DA8E0D0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E0E0;
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
    v13 = xmmword_24DA8E0E0;
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
      v13 = xmmword_24DA8E0E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E0F0;
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
    v13 = xmmword_24DA8E0F0;
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
      v13 = xmmword_24DA8E0F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithDescriptorSPI_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E100;
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
    v13 = xmmword_24DA8E100;
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
      v13 = xmmword_24DA8E100;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E110;
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
    v13 = xmmword_24DA8E110;
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
      v13 = xmmword_24DA8E110;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E120;
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
    v13 = xmmword_24DA8E120;
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
      v13 = xmmword_24DA8E120;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptorSPI_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E130;
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
    v13 = xmmword_24DA8E130;
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
      v13 = xmmword_24DA8E130;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithURL_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E140;
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
    v14 = xmmword_24DA8E140;
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
      v14 = xmmword_24DA8E140;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newMTL4CommandQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E150;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E150;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E150;
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

void DYTraceDecode_MTLDevice_newMTL4CommandQueueWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E160;
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
    v13 = xmmword_24DA8E160;
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
      v13 = xmmword_24DA8E160;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newMotionEstimationPipelineWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E170;
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
    v13 = xmmword_24DA8E170;
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
      v13 = xmmword_24DA8E170;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newProfileWithExecutionSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E180;
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
      v10 = xmmword_24DA8E180;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E180;
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

void DYTraceDecode_MTLDevice_newRasterizationRateMapWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E190;
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
    v13 = xmmword_24DA8E190;
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
      v13 = xmmword_24DA8E190;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E1A0;
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
    v13 = xmmword_24DA8E1A0;
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
      v13 = xmmword_24DA8E1A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E1B0;
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
    v13 = xmmword_24DA8E1B0;
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
      v13 = xmmword_24DA8E1B0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E1C0;
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
    v14 = xmmword_24DA8E1C0;
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
      v14 = xmmword_24DA8E1C0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E1D0;
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
    v13 = xmmword_24DA8E1D0;
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
      v13 = xmmword_24DA8E1D0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E1E0;
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
    v13 = xmmword_24DA8E1E0;
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
      v13 = xmmword_24DA8E1E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E1F0;
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
    v14 = xmmword_24DA8E1F0;
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
      v14 = xmmword_24DA8E1F0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x3E623C556C755543 || *(a2 + 44) != 116)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E200;
      v16 = "memcmp((const char*)bytes + offset, (CUulU<b>t), sizeof(CUulU<b>t)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 48);
  v18 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8E200;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E200;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E210;
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
    v13 = xmmword_24DA8E210;
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
      v13 = xmmword_24DA8E210;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E220;
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
    v13 = xmmword_24DA8E220;
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
      v13 = xmmword_24DA8E220;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 40) != 116)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E230;
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
    v14 = xmmword_24DA8E230;
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
      v14 = xmmword_24DA8E230;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newResidencySetWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E240;
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
    v13 = xmmword_24DA8E240;
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
      v13 = xmmword_24DA8E240;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newResourceGroupFromResources_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v17 = 0;
  sscanf((a2 + 36), "C@%zutul", &v17);
  v8 = strlen(v7);
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  a1[2] = &v7[v9];
  v10 = v9 + 8 * v17;
  a1[3] = *&v7[v10];
  if (a4 && *&v7[v10 + 8] != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E250;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  a1[1] = *&v7[v11];
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E250;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newSamplerStateWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E260;
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
    v13 = xmmword_24DA8E260;
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
      v13 = xmmword_24DA8E260;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTensorWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E270;
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
    v13 = xmmword_24DA8E270;
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
      v13 = xmmword_24DA8E270;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x69755543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E280;
    v14 = "memcmp((const char*)bytes + offset, (CUui), sizeof(CUui)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 4) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E280;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E280;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureViewPoolWithDescriptor_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E290;
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
    v13 = xmmword_24DA8E290;
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
      v13 = xmmword_24DA8E290;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x556C753E623C5543 || *(a2 + 44) != 116)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2A0;
      v16 = "memcmp((const char*)bytes + offset, (CU<b>ulUt), sizeof(CU<b>ulUt)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 48);
  v18 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8E2A0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2A0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureWithDescriptor_iosurface_plane(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1968526659 || *(a2 + 40) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8E2B0;
      v15 = "memcmp((const char*)bytes + offset, (CUUul), sizeof(CUUul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8E2B0;
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
      v14 = xmmword_24DA8E2B0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x746C753E623C5543 || *(a2 + 42) != 0x6C756C7555746CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2C0;
      v16 = "memcmp((const char*)bytes + offset, (CU<b>ultUulul), sizeof(CU<b>ultUulul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 52);
  v18 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  v18 = v10 + 16;
  *(a1 + 40) = AppendString_13794((a1 + 40), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 48) = *(v8 + v11);
  *(a1 + 56) = *(v8 + v11 + 8);
  if (a4 && *(v8 + v11 + 16) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8E2C0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2C0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x556C753E623C5543 || *(a2 + 41) != 0x6C756C75556C75)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2D0;
      v16 = "memcmp((const char*)bytes + offset, (CU<b>ulUulul), sizeof(CU<b>ulUulul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 52);
  v18 = 24;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  *(a1 + 48) = *(v8 + v11 + 8);
  if (a4 && *(v8 + v11 + 16) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8E2D0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8E2D0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_requiredLinearTextureBytesPerRowForDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E2E0;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) ^ 0x6C75 | *(v8 + v9 + 2))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8E2E0;
    v14 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8E2E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_serializeStructType_version(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x69753E623C5543)
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8E2F0;
    v13 = "memcmp((const char*)bytes + offset, (CU<b>ui), sizeof(CU<b>ui)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 4) ^ 0x3E623C55 | *(v8 + v9 + 8))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8E2F0;
    v13 = "memcmp((const char*)bytes + offset, (U<b>), sizeof(U<b>)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  v15 = v9 + 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  if (a4)
  {
    if (((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8E2F0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLDevice_sparseTileSizeInBytesForSparsePageSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E300;
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
      v10 = xmmword_24DA8E300;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8E300;
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