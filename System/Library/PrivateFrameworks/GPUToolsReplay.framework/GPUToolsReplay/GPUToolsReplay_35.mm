size_t DecodeDYMTL4CompilerDescriptor(size_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a4;
  v8 = *(result + 8);
  v9 = *(result + 16);
  if (*result < 0x6Eu)
  {
    v17 = *(a3 + 152);
    *(a3 + 152) = v17 + 24;
    if (!a4)
    {
      return result;
    }

    v16 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v11 = *(result + 24);
  result += 24;
  v10 = v11;
  if (v11)
  {
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_13:
  *v13 = v14 + v15;
  if ((v6 & 1) == 0)
  {
    *(a3 + 152) += 24;
    return result;
  }

  result = memcpy(v16, v12, v15);
  v17 = *(a3 + 152);
  *(a3 + 152) = v17 + 24;
  if (a5)
  {
LABEL_15:
    result = GetAliasStream2(a5, v8);
    if (result)
    {
      v8 = *result;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_19:
  *v17 = v16;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  *(v17 + 17) = 0;
  *(v17 + 20) = 0;
  return result;
}

__n64 MakeDYMTL4RenderPipelineColorAttachmentDescriptor(void **a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = *(*a1)++;
  v5 = v3[1];
  *a1 = v3 + 2;
  v6 = v3[2];
  *a1 = v3 + 3;
  v7 = v3[3];
  *a1 = v3 + 4;
  v8 = v3[4];
  *a1 = v3 + 5;
  v9 = v3[5];
  *a1 = v3 + 6;
  v10 = v3[6];
  *a1 = v3 + 7;
  v11 = v3[7];
  *a1 = v3 + 8;
  v12 = v3[8];
  *a1 = v3 + 9;
  if (a3)
  {
    result.n64_u8[0] = v4;
    result.n64_u8[1] = v5;
    result.n64_u8[2] = v6;
    result.n64_u8[3] = v7;
    result.n64_u8[4] = v9;
    result.n64_u8[5] = v10;
    result.n64_u8[6] = v11;
    result.n64_u8[7] = v12;
    *a2 = v8;
    *(a2 + 2) = result;
    *(a2 + 10) = 0;
    *(a2 + 14) = 0;
  }

  return result;
}

size_t DecodeDYMTLResourceViewPoolDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  v17 = &v8[v10];
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x6A)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 2);
    v19 = v17[24];
  }

  v20 = *(v17 + 1);
  v21 = *(a3 + 168);
  *(a3 + 168) = v21 + 32;
  if (a4)
  {
    *v21 = v18;
    *(v21 + 8) = v16;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 25) = 0;
    *(v21 + 28) = 0;
  }

  return result;
}

size_t DecodeDYMTL4CommandQueueDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x72)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8[(v10 & 0xFFFFFFFFFFFFFFF8) + 8];
  }

  v18 = *(a3 + 184);
  *(a3 + 184) = v18 + 16;
  if (a4)
  {
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 9) = 0;
    *(v18 + 12) = 0;
  }

  return result;
}

__n128 MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(uint64_t **a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = (*a1 + 2);
  v5 = (*a1 + 3);
  v6 = *(*a1)++;
  v7 = v3[1];
  *a1 = v4;
  v8 = v3[2];
  *a1 = v5;
  v9 = v3[3];
  *a1 = v3 + 4;
  v10 = v3[4];
  *a1 = v3 + 5;
  v11 = v3[5];
  *a1 = v3 + 6;
  v12 = v3[6];
  *a1 = v3 + 7;
  v13 = v3[7];
  *a1 = v3 + 8;
  v14 = v3[8];
  *a1 = v3 + 9;
  v15 = v3[9];
  *a1 = v3 + 10;
  v16 = v3[10];
  *a1 = v3 + 11;
  v17 = v3[11];
  *a1 = v3 + 12;
  v18 = v3[12];
  *a1 = v3 + 13;
  v19 = v3[13];
  *a1 = v3 + 14;
  v20 = v3[14];
  *a1 = v3 + 15;
  if (a3)
  {
    *&v21 = v6;
    *(&v21 + 1) = v7;
    *&v22 = v8;
    *(&v22 + 1) = v9;
    *a2 = v21;
    *(a2 + 16) = v22;
    result.n128_u64[0] = v15;
    result.n128_u64[1] = v16;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    *(a2 + 32) = result;
    *(a2 + 48) = v22;
    *(a2 + 64) = v19;
    *(a2 + 72) = v10;
    *(a2 + 76) = v13;
    *(a2 + 80) = v14;
    *(a2 + 84) = v11;
    *(a2 + 85) = v12;
    *(a2 + 86) = v20;
    *(a2 + 87) = 0;
  }

  return result;
}

uint64_t **MakeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t **result, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = result;
  v10 = *result + 1;
  v11 = **result;
  *result = v10;
  if (v11)
  {
    v12 = *(a3 + 576);
    v13 = v11;
    do
    {
      v14 = *(*v9)++;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v14);
          if (result)
          {
            v14 = *result;
          }

          else
          {
            v14 = 0;
          }
        }

        v15 = *(a3 + 576);
        *v15 = v14;
      }

      else
      {
        v15 = *(a3 + 576);
      }

      *(a3 + 576) = v15 + 1;
      --v13;
    }

    while (v13);
    v10 = *v9;
  }

  else
  {
    v12 = 0;
  }

  v16 = *v10;
  *v9 = v10 + 1;
  v17 = v10[1];
  *v9 = v10 + 2;
  if (!v17)
  {
    v19 = 0;
    if ((a4 & 1) == 0)
    {
      return result;
    }

    goto LABEL_24;
  }

  v23 = v16;
  v18 = v12;
  v19 = *(a3 + 576);
  v20 = v17;
  do
  {
    v21 = *(*v9)++;
    if (a4)
    {
      if (a5)
      {
        result = GetAliasStream2(a5, v21);
        if (result)
        {
          v21 = *result;
        }

        else
        {
          v21 = 0;
        }
      }

      v22 = *(a3 + 576);
      *v22 = v21;
    }

    else
    {
      v22 = *(a3 + 576);
    }

    *(a3 + 576) = v22 + 1;
    --v20;
  }

  while (v20);
  v12 = v18;
  v16 = v23;
  if (a4)
  {
LABEL_24:
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v19;
    a2[4] = v17;
  }

  return result;
}

uint64_t *DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result[1];
  v9 = result + 2;
  if (v8)
  {
    v10 = *(a3 + 576);
    v11 = result[1];
    v12 = v10;
    do
    {
      v14 = *v9++;
      v13 = v14;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v13);
          if (result)
          {
            v13 = *result;
          }

          else
          {
            v13 = 0;
          }
        }

        v12 = *(a3 + 576);
        *v12 = v13;
      }

      *(a3 + 576) = ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v16 = *v9;
  v15 = v9[1];
  if (v15)
  {
    v17 = v9 + 2;
    v18 = *(a3 + 576);
    v19 = v15;
    v20 = v18;
    do
    {
      v22 = *v17++;
      v21 = v22;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v21);
          if (result)
          {
            v21 = *result;
          }

          else
          {
            v21 = 0;
          }
        }

        v20 = *(a3 + 576);
        *v20 = v21;
      }

      *(a3 + 576) = ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {
    v18 = 0;
  }

  v23 = *(a3 + 192);
  *(a3 + 192) = v23 + 5;
  if (a4)
  {
    *v23 = v10;
    v23[1] = v8;
    v23[2] = v16;
    v23[3] = v18;
    v23[4] = v15;
  }

  return result;
}

size_t MakeDYMTL4FunctionDescriptor(size_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *result;
  v11 = **result;
  *result += 8;
  if (v11 != 1)
  {
    if (v11 != 2)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v17 = 0;
LABEL_30:
      v24 = 0;
      goto LABEL_31;
    }

    v12 = *(v10 + 1);
    *result = v10 + 16;
    result = strlen(v10 + 16);
    *v9 = &v10[(result & 0xFFFFFFFFFFFFFFF8) + 24];
    if (v10[16])
    {
      v13 = v10 + 16;
    }

    else
    {
      v13 = 0;
    }

    if (v10[16])
    {
      result = strlen(v13);
      v14 = a3 + 74;
      v15 = a3[74];
      v16 = result + 1;
      if (result != -1)
      {
        v17 = a3[74];
LABEL_15:
        *v14 = v15 + v16;
        if (!a4)
        {
          return result;
        }

        result = memcpy(v17, v13, v16);
        if (a5)
        {
          result = GetAliasStream2(a5, v12);
          if (result)
          {
            v12 = *result;
          }

          else
          {
            v12 = 0;
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v14 = a3 + 74;
      v15 = a3[74];
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v18 = *(v10 + 1);
  *result = &v10[((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 16];
  if (v18)
  {
    v12 = a3[59];
    DecodeDYMTLFunctionConstantValues((v10 + 16), v18, a3, a4);
  }

  else
  {
    v12 = 0;
  }

  v17 = a3[58];
  a3[58] = v17 + 32;
  MakeDYMTL4FunctionDescriptor(v9, v17, a3, a4, a5);
  v19 = *v9;
  result = strlen(*v9);
  *v9 += (result & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = *v19;
  if (!*v19)
  {
    v19 = 0;
  }

  if (!v20)
  {
    v21 = a3 + 74;
    v22 = a3[74];
    goto LABEL_26;
  }

  result = strlen(v19);
  v21 = a3 + 74;
  v22 = a3[74];
  v23 = result + 1;
  if (result == -1)
  {
LABEL_26:
    v23 = 0;
    v24 = 0;
    goto LABEL_27;
  }

  v24 = a3[74];
LABEL_27:
  *v21 = v22 + v23;
  if (!a4)
  {
    return result;
  }

  result = memcpy(v24, v19, v23);
LABEL_31:
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v11;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

const char *DecodeDYMTL4CommandAllocatorDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 8);
  result = (a1 + 8);
  v7 = v8;
  if (v8)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    result = strlen(v9);
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
    v12 = (result + 1);
    if (result != -1)
    {
      v13 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
  }

  v12 = 0;
  v13 = 0;
LABEL_9:
  *v10 = v11 + v12;
  if (a4)
  {
    result = memcpy(v13, v9, v12);
    v14 = *(a3 + 200);
    *(a3 + 200) = v14 + 1;
    *v14 = v13;
  }

  else
  {
    *(a3 + 200) += 8;
  }

  return result;
}

uint64_t **MakeDYMTLRenderPassColorAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = (v7 + 16);
  v10 = *(v7 + 16);
  *result = (v7 + 24);
  v11 = *(v7 + 24);
  *result = (v7 + 32);
  v12 = *(v7 + 32);
  *result = (v7 + 40);
  v13 = *(v7 + 40);
  *result = (v7 + 48);
  v14 = *(v7 + 48);
  *result = (v7 + 56);
  v15 = *(v7 + 56);
  *result = (v7 + 64);
  v16 = *(v7 + 64);
  *result = (v7 + 72);
  v17 = *(v7 + 72);
  *result = (v7 + 80);
  v18 = (v7 + 88);
  if (a3 <= 0x12)
  {
    v19 = 0;
    v22 = 0;
    *&v20 = *(v7 + 80);
    *result = v18;
    *(&v20 + 1) = *v18;
    *result = (v7 + 96);
    *&v21 = *(v7 + 96);
    *result = (v7 + 104);
    *(&v21 + 1) = *(v7 + 104);
    *result = (v7 + 112);
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v19 = *(v7 + 80);
    *result = v18;
    *&v20 = *(v7 + 88);
    *result = (v7 + 96);
    *(&v20 + 1) = *(v7 + 96);
    *result = (v7 + 104);
    *&v21 = *(v7 + 104);
    *result = (v7 + 112);
    *(&v21 + 1) = *(v7 + 112);
    *result = (v7 + 120);
    if (a3 < 0x27)
    {
      v22 = 0;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v22 = *(v7 + 120);
      *result = (v7 + 128);
      if (!a4)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    v24 = v21;
    v25 = v20;
    v26 = v19;
    v27 = v17;
    v28 = v15;
    v29 = v16;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v15 = v28;
    v16 = v29;
    v19 = v26;
    v17 = v27;
    v21 = v24;
    v20 = v25;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v19;
  *(a2 + 29) = v22;
  *(a2 + 30) = 0;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  return result;
}

uint64_t **MakeDYMTLRenderPassDepthAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = (v7 + 16);
  v10 = *(v7 + 16);
  *result = (v7 + 24);
  v11 = *(v7 + 24);
  *result = (v7 + 32);
  v12 = *(v7 + 32);
  *result = (v7 + 40);
  v13 = *(v7 + 40);
  *result = (v7 + 48);
  v14 = *(v7 + 48);
  *result = (v7 + 56);
  v15 = *(v7 + 56);
  *result = (v7 + 64);
  v16 = *(v7 + 64);
  *result = (v7 + 72);
  v17 = *(v7 + 72);
  *result = (v7 + 80);
  if (a3 >= 0x13)
  {
    v18 = *(v7 + 80);
    *result = (v7 + 88);
    v19 = *(v7 + 88);
    v20 = (v7 + 120);
    *result = (v7 + 120);
    if (a3 < 0x27)
    {
      v21 = 0;
    }

    else
    {
      v20 = (v7 + 128);
      v21 = *(v7 + 120);
      *result = (v7 + 128);
    }

    goto LABEL_8;
  }

  v21 = 0;
  v18 = 0;
  v22 = 0;
  v19 = *(v7 + 80);
  v20 = (v7 + 112);
  *result = (v7 + 112);
  if (a3 >= 5)
  {
LABEL_8:
    v23 = *v20;
    *result = v20 + 1;
    v24 = v23;
    if (v23 == 255)
    {
      v22 = 0;
    }

    else
    {
      v22 = v24;
    }

    if (!a4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    return result;
  }

LABEL_12:
  if (a5)
  {
    v26 = v18;
    v27 = v17;
    v28 = v15;
    v29 = v16;
    v30 = v13;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v16 = v29;
    v13 = v30;
    v17 = v27;
    v15 = v28;
    v18 = v26;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v18;
  *(a2 + 29) = v21;
  *(a2 + 30) = 0;
  *(a2 + 32) = v19;
  *(a2 + 40) = v22;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t **MakeDYMTLRenderPassStencilAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = (v7 + 16);
  v10 = *(v7 + 16);
  *result = (v7 + 24);
  v11 = *(v7 + 24);
  *result = (v7 + 32);
  v12 = *(v7 + 32);
  *result = (v7 + 40);
  v13 = *(v7 + 40);
  *result = (v7 + 48);
  v14 = *(v7 + 48);
  *result = (v7 + 56);
  v15 = *(v7 + 56);
  *result = (v7 + 64);
  v16 = *(v7 + 64);
  *result = (v7 + 72);
  v17 = *(v7 + 72);
  *result = (v7 + 80);
  if (a3 <= 0x12)
  {
    v18 = 0;
    v20 = 0;
    v19 = *(v7 + 80);
    *result = (v7 + 112);
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v18 = *(v7 + 80);
    *result = (v7 + 88);
    v19 = *(v7 + 88);
    *result = (v7 + 120);
    if (a3 < 0x27)
    {
      v20 = 0;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 120);
      *result = (v7 + 128);
      if (!a4)
      {
        return result;
      }
    }
  }

  v21 = v19;
  if (a5)
  {
    v23 = v14;
    v24 = v13;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v10 = v26;
    v9 = v27;
    v13 = v24;
    v11 = v25;
    v14 = v23;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v18;
  *(a2 + 29) = v20;
  *(a2 + 30) = 0;
  *(a2 + 32) = v21;
  *(a2 + 36) = 0;
  return result;
}

void MakeDYMTLVertexDescriptor(uint64_t **a1, void *a2, unsigned int a3, int a4)
{
  bzero(__src, 0x2E8uLL);
  v8 = *a1;
  if (a3 < 0x1A)
  {
    v9 = 31;
  }

  else
  {
    v10 = *v8++;
    LODWORD(v9) = v10;
    *a1 = v8;
    if (v10 < 1)
    {
      goto LABEL_12;
    }

    v9 = v9;
  }

  v11 = &__src[11];
  do
  {
    v12 = *v8;
    *a1 = v8 + 1;
    v13 = v8[1];
    *a1 = v8 + 2;
    v14 = v8[2];
    v8 += 3;
    *a1 = v8;
    if (a4)
    {
      if (v12 == 0xFFFFFFFFLL)
      {
        v12 = -1;
      }

      *(v11 - 11) = v12;
      *(v11 - 3) = v13;
      *(v11 - 1) = v14;
      *v11 = 0;
      v11[4] = 0;
    }

    v11 += 16;
    --v9;
  }

  while (v9);
  if (a3 <= 0x19)
  {
    v15 = 31;
    goto LABEL_15;
  }

LABEL_12:
  v16 = *v8++;
  LODWORD(v15) = v16;
  *a1 = v8;
  if (v16 < 1)
  {
    goto LABEL_19;
  }

  v15 = v15;
LABEL_15:
  v17 = &__src[502];
  do
  {
    v18 = *v8;
    *a1 = v8 + 1;
    v19 = v8[1];
    *a1 = v8 + 2;
    v20 = v8[2];
    v8 += 3;
    *a1 = v8;
    if (a4)
    {
      *(v17 - 3) = v19;
      *(v17 - 2) = v20;
      *(v17 - 1) = v18;
      *v17 = 0;
    }

    v17 += 4;
    --v15;
  }

  while (v15);
LABEL_19:
  if (a4)
  {
    memcpy(a2, __src, 0x2E8uLL);
  }
}

size_t DecodeDYMTLMeshRenderPipelineDescriptor(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v46[1] = a2;
  memcpy(v45, &GTMTLMeshRenderPipelineDescriptorDefaults, sizeof(v45));
  v9 = *a1;
  v10 = (a1 + 8);
  result = strlen((a1 + 8));
  v46[0] = (a1 + 8 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 8))
  {
    result = strlen(v10);
    v14 = a3 + 74;
    v15 = a3[74];
    v12 = result + 1;
    if (result != -1)
    {
      v13 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v14 = v15 + v12;
  if (a4)
  {
    result = memcpy(v13, v10, v12);
  }

  *(&v45[22] + 8) = vextq_s8(*v46[0], *v46[0], 8uLL);
  v16 = v46[0][2];
  WORD3(v45[25]) = v46[0][3];
  v17 = v46[0][5];
  WORD2(v45[25]) = v46[0][4];
  v18 = v46[0][7];
  v19 = *(v46[0] + 4);
  v21 = v46[0][10];
  v20 = v46[0][11];
  v22 = v46[0] + 12;
  v23 = v46[0][6];
  v46[0] += 6;
  BYTE12(v45[31]) = v17;
  BYTE11(v45[31]) = v23;
  *(&v45[21] + 1) = v16;
  *&v45[22] = v13;
  *(&v45[23] + 1) = v18;
  v45[20] = v19;
  *&v45[21] = v21;
  if (v20)
  {
    v24 = &v45[29] + 8;
    do
    {
      if (a4)
      {
        *v24 = *v22;
      }

      ++v22;
      ++v24;
      --v20;
    }

    while (v20);
  }

  v27 = *v22;
  v25 = v22 + 1;
  v26 = v27;
  v46[0] = v25;
  if (v27)
  {
    v28 = &v45[27] + 9;
    do
    {
      if (a4)
      {
        *v28 = *v25;
      }

      ++v25;
      ++v28;
      --v26;
    }

    while (v26);
  }

  v31 = *v25;
  v29 = v25 + 1;
  v30 = v31;
  v46[0] = v29;
  if (v31)
  {
    v32 = &v45[25] + 10;
    do
    {
      if (a4)
      {
        *v32 = *v29;
      }

      ++v29;
      ++v32;
      --v30;
    }

    while (v30);
  }

  BYTE13(v45[31]) = *v29;
  BYTE7(v45[31]) = v29[1];
  BYTE8(v45[31]) = v29[2];
  BYTE14(v45[31]) = v29[3];
  BYTE10(v45[31]) = v29[4];
  HIDWORD(v45[24]) = v29[5];
  v33 = v29[6];
  v34 = v29 + 7;
  v46[0] = v34;
  if (v33)
  {
    v35 = v45;
    do
    {
      result = MakeDYMTLRenderPipelineColorAttachmentDescriptor(v46, v35++, a4);
      --v33;
    }

    while (v33);
    v34 = v46[0];
  }

  LOWORD(v45[25]) = *v34;
  WORD4(v45[25]) = v34[1];
  HIBYTE(v45[31]) = v34[2];
  if (v9 > 0x43)
  {
    v36 = v34[3];
    v46[0] = v34 + 4;
    DWORD2(v45[24]) = v36;
    if (v9 >= 0x46)
    {
      MakeDYMTLLinkedFunctions(v46, &v45[16], a3, a4, a5);
      MakeDYMTLLinkedFunctions(v46, &v45[12], a3, a4, a5);
      result = MakeDYMTLLinkedFunctions(v46, &v45[8], a3, a4, a5);
      if (v9 >= 0x4B)
      {
        v37 = v46[0][1];
        WORD1(v45[25]) = *v46[0];
        *&v45[24] = v37;
        if (v9 >= 0x6F)
        {
          BYTE9(v45[31]) = v46[0][2];
        }
      }
    }
  }

  v38 = a3[27];
  a3[27] = v38 + 512;
  if (a4)
  {
    if (a5)
    {
      AliasStream2 = GetAliasStream2(a5, *&v45[23]);
      if (AliasStream2)
      {
        v40 = *AliasStream2;
      }

      else
      {
        v40 = 0;
      }

      *&v45[23] = v40;
      v42 = GetAliasStream2(a5, *(&v45[22] + 1));
      if (v42)
      {
        v43 = *v42;
      }

      else
      {
        v43 = 0;
      }

      *(&v45[22] + 1) = v43;
      v41 = GetAliasStream2(a5, *(&v45[21] + 1));
      if (!v41)
      {
        v44 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v41 = &v45[21] + 1;
    }

    v44 = *v41;
LABEL_44:
    *(&v45[21] + 1) = v44;
    return memcpy(v38, v45, 0x200uLL);
  }

  return result;
}

size_t DecodeDYMTLDepthStencilDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 8);
  v8 = (a1 + 24);
  v9 = *(a1 + 16);
  result = strlen((a1 + 24));
  v11 = result;
  v12 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = strlen(v13);
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
    v16 = result + 1;
    if (result != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    v18 = &v8[v11 & 0xFFFFFFFFFFFFFFF8];
    result = memcpy(v17, v13, v16);
    v20 = *(v18 + 4);
    v19 = *(v18 + 5);
    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    v23 = vmovn_s64(*(v18 + 3));
    v25 = *(v18 + 11);
    v24 = *(v18 + 12);
    v27 = *(v18 + 9);
    v26 = *(v18 + 10);
    v28 = *(a3 + 224);
    v29 = vmovn_s64(*(v18 + 104));
    *(a3 + 224) = v28 + 48;
    *v28 = v29;
    *(v28 + 8) = v25;
    *(v28 + 9) = v24;
    *(v28 + 10) = v27;
    *(v28 + 11) = v26;
    *(v28 + 12) = 0;
    *(v28 + 16) = v23;
    *(v28 + 24) = v20;
    *(v28 + 25) = v19;
    *(v28 + 26) = v22;
    *(v28 + 27) = v21;
    *(v28 + 28) = 0;
    *(v28 + 32) = v17;
    *(v28 + 40) = v7;
    *(v28 + 41) = v9;
    *(v28 + 46) = 0;
    *(v28 + 42) = 0;
  }

  else
  {
    *(a3 + 224) += 48;
  }

  return result;
}

__n128 DecodeDYMTLTileRenderPipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v65[1] = a2;
  v61 = xmmword_24DA92DE8;
  v62 = unk_24DA92DF8;
  v63 = xmmword_24DA92E08;
  v64 = unk_24DA92E18;
  v57 = xmmword_24DA92DA8;
  v58 = unk_24DA92DB8;
  v59 = xmmword_24DA92DC8;
  v60 = unk_24DA92DD8;
  v53 = GTMTLTileRenderPipelineDescriptorDefaults;
  v54 = unk_24DA92D78;
  v55 = xmmword_24DA92D88;
  v56 = unk_24DA92D98;
  v9 = (a1 + 8);
  v10 = *a1;
  v65[0] = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = strlen(v13);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  *v15 = v16 + v17;
  if (a4)
  {
    memcpy(v18, v13, v17);
  }

  v19 = *v65[0];
  v20 = *(v65[0] + 8);
  *&v60 = v18;
  *(&v61 + 1) = v19;
  v62.n128_u16[3] = v20;
  v21 = *(v65[0] + 16);
  v22 = (v65[0] + 24);
  if (v21)
  {
    v23 = &v57;
    do
    {
      if (a4)
      {
        *v23 = *v22;
      }

      ++v22;
      v23 = (v23 + 2);
      --v21;
    }

    while (v21);
  }

  BYTE9(v64) = *v22;
  v24 = v22[1];
  v25 = v22 + 2;
  v65[0] = v25;
  if (v24)
  {
    v26 = &v62.n128_u8[8];
    do
    {
      if (a4)
      {
        *v26 = *v25;
      }

      ++v25;
      ++v26;
      --v24;
    }

    while (v24);
  }

  if (v10 > 0x2D)
  {
    v29 = *v25;
    v27 = v25 + 1;
    v28 = v29;
    v30 = (v27 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v65[0] = v30;
    if (v29)
    {
      v31 = a3[74];
    }

    else
    {
      v31 = 0;
    }

    a3[74] += v28;
    if (a4)
    {
      if (v28)
      {
        v32 = v27;
      }

      else
      {
        v32 = 0;
      }

      memcpy(v31, v32, v28);
    }

    *&v59 = v31;
    *(&v59 + 1) = v28;
    if (v10 >= 0x33)
    {
      v35 = *v30;
      v34 = v30 + 1;
      v33 = v35;
      v65[0] = v34;
      *&v61 = v35;
      if (v35)
      {
        v36 = a3[72];
        *(&v60 + 1) = v36;
        do
        {
          v38 = *v34++;
          v37 = v38;
          if (a4)
          {
            if (a5)
            {
              AliasStream2 = GetAliasStream2(a5, v37);
              if (AliasStream2)
              {
                v37 = *AliasStream2;
              }

              else
              {
                v37 = 0;
              }
            }

            v36 = a3[72];
            *v36 = v37;
          }

          a3[72] = ++v36;
          --v33;
        }

        while (v33);
        v65[0] = v34;
      }

      else
      {
        *(&v60 + 1) = 0;
      }

      if (v10 >= 0x37)
      {
        MakeDYMTLLinkedFunctions(v65, &v53, a3, a4, a5);
        if (v10 >= 0x42)
        {
          v40 = v65[0];
          BYTE8(v64) = *v65[0];
          if (v10 >= 0x45)
          {
            v62.n128_u16[1] = *(v65[0] + 8);
            if (v10 >= 0x4B)
            {
              v62.n128_u16[0] = *(v65[0] + 16);
              if (v10 >= 0x66)
              {
                v41 = *(v65[0] + 24);
                if (v41)
                {
                  v42 = a3[74];
                }

                else
                {
                  v42 = 0;
                }

                a3[74] += v41;
                if (a4)
                {
                  v43 = (v40 + 32);
                  if (v41)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  memcpy(v42, v44, v41);
                }

                *&v58 = v42;
                *(&v58 + 1) = v41;
              }
            }
          }
        }
      }
    }
  }

  v45 = a3[29];
  a3[29] = v45 + 192;
  if (a4)
  {
    v46 = *(&v61 + 1);
    if (a5)
    {
      v47 = GetAliasStream2(a5, *(&v61 + 1));
      if (v47)
      {
        v46 = *v47;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v61 + 1) = v46;
    v48 = v64;
    *(v45 + 160) = v63;
    *(v45 + 176) = v48;
    v49 = v58;
    *(v45 + 64) = v57;
    *(v45 + 80) = v49;
    v50 = v60;
    *(v45 + 96) = v59;
    *(v45 + 112) = v50;
    v51 = v54;
    *v45 = v53;
    *(v45 + 16) = v51;
    v52 = v56;
    *(v45 + 32) = v55;
    *(v45 + 48) = v52;
    result = v62;
    *(v45 + 128) = v61;
    *(v45 + 144) = result;
  }

  return result;
}

size_t DecodeDYMTLRasterizationRateMapDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = &v8[result & 0xFFFFFFFFFFFFFFF8];
  if (*(a1 + 8))
  {
    result = strlen(v8);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = result + 1;
    if (result != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    result = memcpy(v12, v8, v11);
  }

  v15 = *(v10 + 4);
  v16 = *(v10 + 8);
  v17 = *(v10 + 12);
  v18 = v10 + 40;
  v19 = *(v10 + 4);
  if (v19)
  {
    v20 = 0;
    v21 = a3[52];
    while (1)
    {
      v22 = a3[52];
      a3[52] = v22 + 24;
      v23 = *v18;
      v24 = *(v18 + 1);
      result = *(v18 + 8);
      v18 += 24;
      v25 = v23;
      if (v23)
      {
        v26 = a3[73];
        v27 = v26 + 4;
        do
        {
          if (a4)
          {
            *(v27 - 4) = *v18;
          }

          v18 += 8;
          a3[73] = v27;
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      else
      {
        v26 = 0;
      }

      v28 = v24;
      if (v24)
      {
        v29 = a3[73];
        v30 = v29 + 4;
        do
        {
          if (a4)
          {
            *(v30 - 4) = *v18;
          }

          v18 += 8;
          a3[73] = v30;
          v30 += 4;
          --v28;
        }

        while (v28);
        if ((a4 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v29 = 0;
        if ((a4 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *v22 = v26;
      *(v22 + 8) = v29;
      *(v22 + 16) = v23;
      *(v22 + 18) = result;
      *(v22 + 20) = v24;
      *(v22 + 22) = 0;
LABEL_24:
      if (++v20 == v19)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = 0;
LABEL_29:
  if (v7 <= 0x39)
  {
    v33 = 0;
    v32 = 2;
    v31 = 0;
  }

  else
  {
    v31 = *v18;
    v32 = v18[8];
    if (v7 < 0x44)
    {
      v33 = 0;
    }

    else
    {
      v33 = v18[16];
    }
  }

  v34 = a3[30];
  a3[30] = v34 + 40;
  if (a4)
  {
    *v34 = v12;
    *(v34 + 8) = v21;
    *(v34 + 16) = v19;
    *(v34 + 24) = v31;
    *(v34 + 28) = v17;
    *(v34 + 30) = v16;
    *(v34 + 32) = v15;
    *(v34 + 34) = v32;
    *(v34 + 35) = v33;
    *(v34 + 36) = 0;
  }

  return result;
}

size_t DecodeDYMTLIntersectionFunctionDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = (a1 + 16);
  v8 = *(a1 + 8);
  v9 = (a1 + 16 + (strlen((a1 + 16)) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 16))
  {
    v10 = strlen(v7);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = v10 + 1;
    if (v10 != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    memcpy(v12, v7, v11);
  }

  result = strlen(v9);
  v16 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v17 = *v9;
  if (!*v9)
  {
    v9 = 0;
  }

  if (v17)
  {
    result = strlen(v9);
    v18 = a3 + 74;
    v19 = a3[74];
    v20 = result + 1;
    if (result != -1)
    {
      v21 = a3[74];
      goto LABEL_15;
    }
  }

  else
  {
    v18 = a3 + 74;
    v19 = a3[74];
  }

  v20 = 0;
  v21 = 0;
LABEL_15:
  *v18 = v19 + v20;
  if (a4)
  {
    result = memcpy(v21, v9, v20);
  }

  v22 = *(v16 + 1);
  if (v22)
  {
    v23 = a3[59];
    result = DecodeDYMTLFunctionConstantValues((v16 + 16), v22, a3, a4);
  }

  else
  {
    v23 = 0;
  }

  v24 = a3[35];
  a3[35] = v24 + 48;
  if (a4)
  {
    *v24 = v23;
    *(v24 + 8) = v12;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v21;
    *(v24 + 40) = v8;
    *(v24 + 41) = 0;
    *(v24 + 44) = 0;
  }

  return result;
}

__n128 DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v28[0] = (a1 + 8);
  v28[1] = a2;
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v15, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v17 + 1, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v20, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v22 + 1, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v25, a3, a4, a5);
  v9 = *(a3 + 288);
  *(a3 + 288) = v9 + 200;
  if (a4)
  {
    v10 = v26;
    *(v9 + 160) = v25;
    *(v9 + 176) = v10;
    *(v9 + 192) = v27;
    v11 = v22;
    *(v9 + 96) = v21;
    *(v9 + 112) = v11;
    v12 = v24;
    *(v9 + 128) = v23;
    *(v9 + 144) = v12;
    v13 = v18;
    *(v9 + 32) = v17;
    *(v9 + 48) = v13;
    v14 = v20;
    *(v9 + 64) = v19;
    *(v9 + 80) = v14;
    result = v16;
    *v9 = v15;
    *(v9 + 16) = result;
  }

  return result;
}

uint64_t *DecodeDYMTLRenderPassDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v45[1] = a2;
  memcpy(__dst, &GTMTLRenderPassDescriptorDefaults, sizeof(__dst));
  v9 = *a1;
  v10 = (a1 + 16);
  __dst[99] = *(a1 + 8);
  while (1)
  {
    v11 = *v10;
    v45[0] = v10 + 1;
    if (v11 == -1)
    {
      break;
    }

    MakeDYMTLRenderPassColorAttachmentDescriptor(v45, &__dst[8 * v11], v9, a4, a5);
    v10 = v45[0];
  }

  MakeDYMTLRenderPassDepthAttachmentDescriptor(v45, &__dst[84], v9, a4, a5);
  result = MakeDYMTLRenderPassStencilAttachmentDescriptor(v45, &__dst[90], v9, a4, a5);
  if (v9 <= 6)
  {
    v14 = HIWORD(__dst[100]);
  }

  else
  {
    v13 = v45[0];
    v14 = *v45[0];
    HIWORD(__dst[100]) = *v45[0];
    if (v9 >= 0xD)
    {
      v15 = v45[0][7];
      v16 = v45[0][2];
      WORD2(__dst[100]) = v45[0][1];
      LODWORD(__dst[100]) = v16;
      v17 = v45[0][4];
      HIWORD(__dst[101]) = v45[0][3];
      WORD2(__dst[101]) = v17;
      v18 = v45[0][6];
      WORD1(__dst[101]) = v45[0][5];
      v45[0] += 7;
      LOWORD(__dst[101]) = v18;
      LOBYTE(__dst[102]) = v15;
      if (v9 != 13)
      {
        v19 = v13[8];
        v20 = v13 + 9;
        v21 = *(a3 + 584);
        __dst[95] = v21;
        __dst[96] = v19;
        if (v19 << 32)
        {
          v22 = 2 * v19;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          v23 = v21;
          do
          {
            if (a4)
            {
              *v23 = *v20;
            }

            ++v20;
            ++v23;
            --v22;
          }

          while (v22);
        }

        *(a3 + 584) = &v21[2 * v19];
        if (v9 >= 0x14)
        {
          BYTE4(__dst[94]) = *v20;
          if (v9 >= 0x18)
          {
            BYTE2(__dst[102]) = v20[1];
            if (v9 >= 0x21)
            {
              __dst[98] = v20[2];
              if (v9 >= 0x27)
              {
                BYTE1(__dst[102]) = v20[3];
                if (v9 >= 0x2A)
                {
                  __dst[97] = v20[4];
                  v24 = v20[5];
                  v25 = v20 + 6;
                  v45[0] = v20 + 6;
                  BYTE3(__dst[102]) = v24;
                  if (v9 >= 0x32)
                  {
                    while (1)
                    {
                      v26 = v25;
                      v27 = *v25;
                      if (*v25 == -1)
                      {
                        break;
                      }

                      v25 += 6;
                      if (a4)
                      {
                        v28 = v26[1];
                        v29 = v26[2];
                        v30 = v26[3];
                        v31 = v26[4];
                        v32 = v26[5];
                        if (a5)
                        {
                          v43 = v26[2];
                          result = GetAliasStream2(a5, v28);
                          if (result)
                          {
                            v28 = *result;
                          }

                          else
                          {
                            v28 = 0;
                          }

                          v29 = v43;
                        }

                        v33 = &__dst[5 * v27 + 64];
                        *v33 = v32;
                        v33[1] = v30;
                        v33[2] = v28;
                        v33[3] = v31;
                        v33[4] = v29;
                      }
                    }

                    if (v9 >= 0x43)
                    {
                      BYTE4(__dst[102]) = v25[1];
                      if (v9 >= 0x66)
                      {
                        BYTE6(__dst[102]) = v25[2];
                        if (v9 != 102)
                        {
                          BYTE5(__dst[102]) = v25[3];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v14 == 0xFFFF)
  {
    v34 = 0;
  }

  else
  {
    v34 = v14;
  }

  HIWORD(__dst[100]) = v34;
  if (WORD2(__dst[100]) == 0xFFFF)
  {
    v35 = 0;
  }

  else
  {
    v35 = WORD2(__dst[100]);
  }

  WORD2(__dst[100]) = v35;
  v36 = __dst[100];
  if (LODWORD(__dst[100]) == -1)
  {
    v36 = 0;
  }

  LODWORD(__dst[100]) = v36;
  __dst[101] = vbic_s8(__dst[101], vceq_s16(__dst[101], -1));
  v37 = __dst[102];
  if (LOBYTE(__dst[102]) == 255)
  {
    v37 = 0;
  }

  LOBYTE(__dst[102]) = v37;
  v38 = *(a3 + 296);
  *(a3 + 296) = v38 + 824;
  if (a4)
  {
    if (a5)
    {
      AliasStream2 = GetAliasStream2(a5, __dst[99]);
      if (AliasStream2)
      {
        v40 = *AliasStream2;
      }

      else
      {
        v40 = 0;
      }

      __dst[99] = v40;
      v41 = GetAliasStream2(a5, __dst[98]);
      if (!v41)
      {
        v42 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v41 = &__dst[98];
    }

    v42 = *v41;
LABEL_48:
    __dst[98] = v42;
    return memcpy(v38, __dst, 0x338uLL);
  }

  return result;
}

size_t DecodeDYMTLRenderPipelineDescriptor(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v91[1] = a2;
  memcpy(__dst, &GTMTLRenderPipelineDescriptorDefaults, sizeof(__dst));
  v9 = *a1;
  __dst[162] = *(a1 + 8);
  v10 = *(a1 + 16);
  v91[0] = (a1 + 24);
  __dst[147] = v10;
  MakeDYMTLVertexDescriptor(v91, __dst, v9, a4);
  __dst[159] = *v91[0];
  __dst[161] = v91[0][1];
  HIDWORD(__dst[166]) = *(v91[0] + 4);
  LOBYTE(__dst[185]) = v91[0][3];
  BYTE1(__dst[185]) = v91[0][4];
  BYTE6(__dst[186]) = v91[0][5];
  WORD2(__dst[167]) = v91[0][6];
  LOWORD(__dst[169]) = v91[0][7];
  v11 = v91[0][8];
  v12 = v91[0] + 9;
  v91[0] += 9;
  if (v11)
  {
    v13 = &__dst[93];
    do
    {
      MakeDYMTLRenderPipelineColorAttachmentDescriptor(v91, v13, a4);
      v13 += 2;
      --v11;
    }

    while (v11);
    v12 = v91[0];
  }

  result = strlen(v12);
  v91[0] = (v12 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  v15 = *v12;
  if (!*v12)
  {
    v12 = 0;
  }

  if (v15)
  {
    result = strlen(v12);
    v16 = a3 + 74;
    v17 = a3[74];
    v18 = result + 1;
    if (result != -1)
    {
      v19 = a3[74];
      goto LABEL_12;
    }
  }

  else
  {
    v16 = a3 + 74;
    v17 = a3[74];
  }

  v18 = 0;
  v19 = 0;
LABEL_12:
  *v16 = v17 + v18;
  if (a4)
  {
    result = memcpy(v19, v12, v18);
  }

  __dst[150] = v19;
  if (v9 > 6)
  {
    v20 = v91[0];
    BYTE6(__dst[185]) = *v91[0];
    if (v9 >= 9)
    {
      BYTE2(__dst[188]) = v91[0][1];
      __dst[151] = v91[0][2];
      HIBYTE(__dst[187]) = v91[0][3];
      BYTE6(__dst[187]) = v91[0][4];
      BYTE5(__dst[187]) = v91[0][5];
      v21 = v91[0][6];
      v91[0] += 6;
      LOBYTE(__dst[188]) = v21;
      BYTE1(__dst[188]) = v20[7];
      if (v9 >= 0x12)
      {
        v22 = v20[8];
        v23 = v20 + 9;
        if (v22)
        {
          v24 = &__dst[180] + 7;
          do
          {
            if (a4)
            {
              *v24 = *v23;
            }

            ++v23;
            ++v24;
            --v22;
          }

          while (v22);
        }

        v27 = *v23;
        v25 = v23 + 1;
        v26 = v27;
        v91[0] = v25;
        if (v27)
        {
          v28 = &__dst[169] + 2;
          do
          {
            v30 = *v25++;
            v29 = v30;
            v91[0] = v25;
            if (a4)
            {
              *v28 = v29;
            }

            ++v28;
            --v26;
          }

          while (v26);
        }

        if (v9 >= 0x17)
        {
          BYTE4(__dst[187]) = *v25;
          if (v9 >= 0x20)
          {
            BYTE4(__dst[188]) = v25[1];
            v31 = v25[2];
            v91[0] = v25 + 2;
            LODWORD(__dst[166]) = v31;
            if (v9 >= 0x26)
            {
              __dst[158] = v25[3];
              if (v9 != 38)
              {
                HIBYTE(__dst[185]) = v25[4];
                HIBYTE(__dst[184]) = v25[5];
                LODWORD(__dst[167]) = v25[6];
                HIDWORD(__dst[165]) = v25[7];
                LOBYTE(__dst[186]) = v25[8];
                BYTE2(__dst[186]) = v25[9];
                BYTE3(__dst[186]) = v25[10];
                BYTE4(__dst[186]) = v25[11];
                BYTE3(__dst[188]) = v25[12];
                BYTE6(__dst[184]) = v25[13];
                BYTE5(__dst[186]) = v25[14];
                BYTE2(__dst[185]) = v25[15];
                if (v9 >= 0x29)
                {
                  __dst[160] = v25[16];
                  if (v9 != 41)
                  {
                    __dst[145] = v25[17];
                    __dst[146] = v25[18];
                    HIBYTE(__dst[186]) = v25[19];
                    BYTE1(__dst[186]) = v25[20];
                    BYTE4(__dst[185]) = v25[21];
                    BYTE5(__dst[185]) = v25[22];
                    v32 = v25[23];
                    v33 = v25 + 24;
                    v34 = (v25 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 192);
                    v91[0] = v34;
                    if (v32)
                    {
                      v35 = a3[74];
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = (a3[74] + v32);
                    a3[74] = v36;
                    if (a4)
                    {
                      if (v32)
                      {
                        v37 = v33;
                      }

                      else
                      {
                        v37 = 0;
                      }

                      result = memcpy(v35, v37, v32);
                      v36 = a3[74];
                    }

                    __dst[143] = v35;
                    __dst[144] = v32;
                    v40 = *v34;
                    v39 = v34 + 1;
                    v38 = v40;
                    v41 = (v39 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8));
                    v91[0] = v41;
                    if (v40)
                    {
                      v42 = v36;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    a3[74] = &v36[v38];
                    if (a4)
                    {
                      if (v38)
                      {
                        v43 = v39;
                      }

                      else
                      {
                        v43 = 0;
                      }

                      result = memcpy(v42, v43, v38);
                    }

                    __dst[141] = v42;
                    __dst[142] = v38;
                    if (v9 >= 0x33)
                    {
                      v46 = *v41;
                      v45 = v41 + 1;
                      v44 = v46;
                      v91[0] = v45;
                      __dst[164] = v46;
                      if (v46)
                      {
                        v47 = 0;
                        v48 = a3[72];
                        __dst[163] = v48;
                        do
                        {
                          v50 = *v45++;
                          v49 = v50;
                          v91[0] = v45;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetAliasStream2(a5, v49);
                              if (result)
                              {
                                v49 = *result;
                              }

                              else
                              {
                                v49 = 0;
                              }
                            }

                            v48 = a3[72];
                            *v48 = v49;
                            v44 = __dst[164];
                          }

                          a3[72] = ++v48;
                          ++v47;
                        }

                        while (v44 > v47);
                      }

                      else
                      {
                        __dst[163] = 0;
                      }

                      v51 = *v45;
                      v91[0] = v45 + 1;
                      __dst[149] = v51;
                      if (v51)
                      {
                        v52 = 0;
                        v53 = a3[72];
                        __dst[148] = v53;
                        v54 = v45 + 2;
                        do
                        {
                          v55 = *(v54 - 1);
                          v91[0] = v54;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetAliasStream2(a5, v55);
                              if (result)
                              {
                                v55 = *result;
                              }

                              else
                              {
                                v55 = 0;
                              }
                            }

                            v53 = a3[72];
                            *v53 = v55;
                            v51 = __dst[149];
                          }

                          ++v54;
                          a3[72] = ++v53;
                          ++v52;
                        }

                        while (v51 > v52);
                      }

                      else
                      {
                        __dst[148] = 0;
                      }

                      if (v9 >= 0x37)
                      {
                        MakeDYMTLLinkedFunctions(v91, &__dst[133], a3, a4, a5);
                        result = MakeDYMTLLinkedFunctions(v91, &__dst[109], a3, a4, a5);
                        if (v9 >= 0x3C)
                        {
                          __dst[155] = *v91[0];
                          __dst[152] = v91[0][1];
                          v56 = v91[0][2];
                          v57 = v91[0] + 3;
                          if (v56)
                          {
                            v58 = &__dst[177];
                            do
                            {
                              if (a4)
                              {
                                *v58 = *v57;
                              }

                              ++v57;
                              ++v58;
                              --v56;
                            }

                            while (v56);
                          }

                          v61 = *v57;
                          v60 = v57 + 1;
                          v59 = v61;
                          v91[0] = v60;
                          if (v61)
                          {
                            v62 = &__dst[173] + 1;
                            do
                            {
                              v64 = *v60++;
                              v63 = v64;
                              v91[0] = v60;
                              if (a4)
                              {
                                *v62 = v63;
                              }

                              ++v62;
                              --v59;
                            }

                            while (v59);
                          }

                          v67 = *v60;
                          v66 = v60 + 1;
                          v65 = v67;
                          v91[0] = v66;
                          __dst[157] = v67;
                          if (v67)
                          {
                            v68 = 0;
                            v69 = a3[72];
                            __dst[156] = v69;
                            do
                            {
                              v71 = *v66++;
                              v70 = v71;
                              v91[0] = v66;
                              if (a4)
                              {
                                if (a5)
                                {
                                  AliasStream2 = GetAliasStream2(a5, v70);
                                  if (AliasStream2)
                                  {
                                    v70 = *AliasStream2;
                                  }

                                  else
                                  {
                                    v70 = 0;
                                  }
                                }

                                v69 = a3[72];
                                *v69 = v70;
                                v65 = __dst[157];
                              }

                              a3[72] = ++v69;
                              ++v68;
                            }

                            while (v65 > v68);
                          }

                          else
                          {
                            __dst[156] = 0;
                          }

                          v73 = *v66;
                          v91[0] = v66 + 1;
                          __dst[154] = v73;
                          if (v73)
                          {
                            v74 = 0;
                            v75 = a3[72];
                            __dst[153] = v75;
                            v76 = v66 + 2;
                            do
                            {
                              v77 = *(v76 - 1);
                              v91[0] = v76;
                              if (a4)
                              {
                                if (a5)
                                {
                                  v78 = GetAliasStream2(a5, v77);
                                  if (v78)
                                  {
                                    v77 = *v78;
                                  }

                                  else
                                  {
                                    v77 = 0;
                                  }
                                }

                                v75 = a3[72];
                                *v75 = v77;
                                v73 = __dst[154];
                              }

                              ++v76;
                              a3[72] = ++v75;
                              ++v74;
                            }

                            while (v73 > v74);
                          }

                          else
                          {
                            __dst[153] = 0;
                          }

                          MakeDYMTLLinkedFunctions(v91, &__dst[125], a3, a4, a5);
                          result = MakeDYMTLLinkedFunctions(v91, &__dst[117], a3, a4, a5);
                          if (v9 >= 0x42)
                          {
                            BYTE3(__dst[187]) = *v91[0];
                            LOBYTE(__dst[187]) = v91[0][1];
                            BYTE2(__dst[187]) = v91[0][2];
                            BYTE1(__dst[187]) = v91[0][3];
                            if (v9 >= 0x44)
                            {
                              LODWORD(__dst[165]) = v91[0][4];
                              if (v9 != 68)
                              {
                                HIWORD(__dst[168]) = v91[0][5];
                                LOWORD(__dst[168]) = v91[0][6];
                                WORD2(__dst[168]) = v91[0][7];
                                WORD1(__dst[168]) = v91[0][8];
                                if (v9 >= 0x4B)
                                {
                                  HIWORD(__dst[167]) = v91[0][9];
                                  if (v9 >= 0x6F)
                                  {
                                    BYTE3(__dst[185]) = v91[0][10];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (BYTE6(__dst[185]) == 255)
  {
    BYTE6(__dst[185]) = 0;
  }

  if (LODWORD(__dst[166]) == -1)
  {
    BYTE4(__dst[188]) = 0;
    LODWORD(__dst[166]) = 1;
  }

  v79 = a3[38];
  a3[38] = v79 + 1512;
  if (a4)
  {
    if (a5)
    {
      v80 = GetAliasStream2(a5, __dst[162]);
      if (v80)
      {
        v81 = *v80;
      }

      else
      {
        v81 = 0;
      }

      __dst[162] = v81;
      v83 = GetAliasStream2(a5, __dst[147]);
      if (v83)
      {
        v84 = *v83;
      }

      else
      {
        v84 = 0;
      }

      __dst[147] = v84;
      v85 = GetAliasStream2(a5, __dst[158]);
      if (v85)
      {
        v86 = *v85;
      }

      else
      {
        v86 = 0;
      }

      __dst[158] = v86;
      v87 = GetAliasStream2(a5, __dst[155]);
      if (v87)
      {
        v88 = *v87;
      }

      else
      {
        v88 = 0;
      }

      __dst[155] = v88;
      v82 = GetAliasStream2(a5, __dst[152]);
      if (!v82)
      {
        v89 = 0;
        goto LABEL_134;
      }
    }

    else
    {
      v82 = &__dst[152];
    }

    v89 = *v82;
LABEL_134:
    __dst[152] = v89;
    return memcpy(v79, __dst, 0x5E8uLL);
  }

  return result;
}

void DecodeDYMTLComputePipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v66[1] = a2;
  memcpy(v65, &GTMTLComputePipelineDescriptorDefaults, sizeof(v65));
  v9 = *a1;
  v10 = *(a1 + 16);
  v65[106] = *(a1 + 8);
  BYTE6(v65[119]) = v10;
  v66[0] = a1 + 24 + (strlen((a1 + 24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v12 = (a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = strlen(v12);
    v14 = a3 + 74;
    v15 = a3[74];
    v16 = v13 + 1;
    if (v13 != -1)
    {
      v17 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    memcpy(v17, v12, v16);
  }

  v65[109] = v17;
  if (v9 < 0xB)
  {
    goto LABEL_87;
  }

  bzero(__src, 0x2F0uLL);
  v18 = v66[0];
  if (v9 < 0x1A)
  {
    v19 = 31;
  }

  else
  {
    v18 = (v66[0] + 8);
    v19 = *v66[0];
    if (!*v66[0])
    {
      goto LABEL_23;
    }
  }

  v20 = &__src[11];
  do
  {
    if (a4)
    {
      v22 = v18[1];
      v21 = v18[2];
      v23 = *v18;
      if (*v18 == 0xFFFFFFFFLL)
      {
        v23 = -1;
      }

      *(v20 - 11) = v23;
      *(v20 - 3) = v22;
      *(v20 - 1) = v21;
      *v20 = 0;
      v20[4] = 0;
    }

    v18 += 3;
    v20 += 16;
    --v19;
  }

  while (v19);
  v66[0] = v18;
  if (v9 > 0x19)
  {
LABEL_23:
    v25 = *v18++;
    v24 = v25;
    v66[0] = v18;
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v24 = 31;
LABEL_26:
  v26 = &__src[502];
  do
  {
    if (a4)
    {
      v27 = v18[2];
      v28 = *v18;
      *(v26 - 3) = v18[1];
      *(v26 - 2) = v27;
      *(v26 - 1) = v28;
      *v26 = 0;
    }

    v18 += 3;
    v26 += 4;
    --v24;
  }

  while (v24);
LABEL_30:
  __src[745] = *v18;
  v29 = v18[1];
  v30 = v18 + 2;
  v66[0] = v18 + 2;
  __src[744] = v29;
  if (a4)
  {
    memcpy(v65, __src, 0x2F0uLL);
  }

  HIBYTE(v65[118]) = -1;
  if (v9 >= 0x12)
  {
    if (v9 < 0x1A)
    {
      v31 = 31;
    }

    else
    {
      v31 = v18[2];
      v30 = v18 + 3;
      v66[0] = v18 + 3;
      if (v31 < 1)
      {
        goto LABEL_39;
      }

      v31 = v31;
    }

    v32 = &v65[115];
    do
    {
      v33 = *v30++;
      *v32++ = v33;
      --v31;
    }

    while (v31);
LABEL_39:
    if (v9 >= 0x1B)
    {
      BYTE4(v65[119]) = *v30;
      if (v9 >= 0x25)
      {
        HIWORD(v65[114]) = v30[1];
        if (v9 != 37)
        {
          v65[110] = v30[2];
          if (v9 >= 0x28)
          {
            v34 = v30[3];
            v35 = v30 + 4;
            v66[0] = v35;
            v65[108] = v34;
            if (v34)
            {
              v36 = a3[72];
              v65[107] = v36;
              do
              {
                v38 = *v35++;
                v37 = v38;
                if (a4)
                {
                  if (a5)
                  {
                    AliasStream2 = GetAliasStream2(a5, v37);
                    if (AliasStream2)
                    {
                      v37 = *AliasStream2;
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  v36 = a3[72];
                  *v36 = v37;
                }

                a3[72] = ++v36;
                --v34;
              }

              while (v34);
            }

            else
            {
              v65[107] = 0;
            }

            if (v9 != 40)
            {
              v65[113] = *v35;
              if (v9 >= 0x2A)
              {
                BYTE5(v65[119]) = v35[1];
                LOWORD(v65[114]) = v35[2];
                BYTE2(v65[119]) = v35[3];
                BYTE1(v65[119]) = v35[4];
                LOBYTE(v65[119]) = v35[5];
                v40 = v35[6];
                v41 = v35 + 7;
                v42 = (v35 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
                v66[0] = v42;
                if (v40)
                {
                  v43 = a3[74];
                }

                else
                {
                  v43 = 0;
                }

                v44 = (a3[74] + v40);
                a3[74] = v44;
                if (a4)
                {
                  if (v40)
                  {
                    v45 = v41;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  memcpy(v43, v45, v40);
                  v44 = a3[74];
                }

                v65[104] = v43;
                v65[105] = v40;
                v48 = *v42;
                v47 = v42 + 1;
                v46 = v48;
                v49 = (v47 + ((v48 + 7) & 0xFFFFFFFFFFFFFFF8));
                v66[0] = v49;
                if (v48)
                {
                  v50 = v44;
                }

                else
                {
                  v50 = 0;
                }

                a3[74] = &v44[v46];
                if (a4)
                {
                  if (v46)
                  {
                    v51 = v47;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  memcpy(v50, v51, v46);
                }

                v65[102] = v50;
                v65[103] = v46;
                if (v9 >= 0x2D)
                {
                  v52 = *v49;
                  v66[0] = v49 + 1;
                  WORD2(v65[114]) = v52;
                  v53 = v49[1];
                  v66[0] = v49 + 2;
                  BYTE3(v65[119]) = v53;
                  MakeDYMTLLinkedFunctions(v66, &v65[94], a3, a4, a5);
                  if (v9 >= 0x30)
                  {
                    v54 = (v66[0] + 8);
                    v55 = *v66[0];
                    v65[112] = v55;
                    if (v55)
                    {
                      v56 = a3[72];
                      v65[111] = v56;
                      do
                      {
                        v58 = *v54++;
                        v57 = v58;
                        if (a4)
                        {
                          if (a5)
                          {
                            v59 = GetAliasStream2(a5, v57);
                            if (v59)
                            {
                              v57 = *v59;
                            }

                            else
                            {
                              v57 = 0;
                            }
                          }

                          v56 = a3[72];
                          *v56 = v57;
                        }

                        a3[72] = ++v56;
                        --v55;
                      }

                      while (v55);
                    }

                    else
                    {
                      v65[111] = 0;
                    }

                    if (v9 >= 0x4B)
                    {
                      WORD1(v65[114]) = *v54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_87:
  v60 = a3[39];
  a3[39] = v60 + 960;
  if (!a4)
  {
    return;
  }

  if (a5)
  {
    v61 = GetAliasStream2(a5, v65[106]);
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    v65[106] = v62;
    v63 = GetAliasStream2(a5, v65[110]);
    if (!v63)
    {
      v64 = 0;
      goto LABEL_96;
    }
  }

  else
  {
    v63 = &v65[110];
  }

  v64 = *v63;
LABEL_96:
  v65[110] = v64;
  memcpy(v60, v65, 0x3C0uLL);
}

size_t MakeDYMTL4PrimitiveAccelerationStructureDescriptor(size_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v6 = (*result + 8);
  v7 = **result;
  *result = v6;
  if (v7)
  {
    v60 = v7;
    v61 = a2;
    v59 = *(a3 + 432);
    while (1)
    {
      v9 = *(a3 + 432);
      *(a3 + 432) = v9 + 152;
      v10 = *v5;
      v11 = **v5;
      *v5 += 8;
      v12 = *(v10 + 1);
      *v5 = v10 + 16;
      result = strlen(v10 + 16);
      *v5 = &v10[(result & 0xFFFFFFFFFFFFFFF8) + 24];
      if (v10[16])
      {
        v13 = v10 + 16;
      }

      else
      {
        v13 = 0;
      }

      if (v10[16])
      {
        result = strlen(v13);
        v14 = *(a3 + 592);
        v15 = result + 1;
        if (result != -1)
        {
          v16 = *(a3 + 592);
          goto LABEL_11;
        }
      }

      else
      {
        v14 = *(a3 + 592);
      }

      v15 = 0;
      v16 = 0;
LABEL_11:
      *(a3 + 592) = v14 + v15;
      if (a4)
      {
        result = memcpy(v16, v13, v15);
      }

      v17 = *v5;
      v18 = **v5;
      *v5 += 8;
      v19 = *(v17 + 1);
      *v5 = v17 + 16;
      v20 = *(v17 + 2);
      *v5 = v17 + 24;
      v21 = *(v17 + 3);
      *v5 = v17 + 32;
      v22 = *(v17 + 4);
      *v5 = v17 + 40;
      v23 = v17[40];
      *v5 = v17 + 48;
      v65 = v11;
      v66 = v18;
      v63 = v21;
      v64 = v12;
      v62 = v22;
      if (v23 > 9)
      {
        if (v23 == 10)
        {
LABEL_24:
          *&v44 = *(v17 + 6);
          *v5 = v17 + 56;
          *(&v44 + 1) = *(v17 + 7);
          *v5 = v17 + 64;
          *&v43 = *(v17 + 8);
          *v5 = v17 + 72;
          *(&v43 + 1) = *(v17 + 9);
          *v5 = v17 + 80;
          if (a4)
          {
            v31 = 0;
            result = 0;
            v30 = 0;
            v33 = 0;
            LOBYTE(v26) = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v32) = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            LOBYTE(v40) = 0;
            LOBYTE(v41) = 0;
            LOBYTE(v42) = 0;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v23 == 11)
        {
          v49 = *(v17 + 6);
          *v5 = v17 + 56;
          v50 = *(v17 + 7);
          *v5 = v17 + 64;
          v30 = *(v17 + 8);
          *v5 = v17 + 72;
          v37 = *(v17 + 9);
          *v5 = v17 + 80;
          v33 = *(v17 + 10);
          *v5 = v17 + 88;
          v38 = *(v17 + 11);
          *v5 = v17 + 96;
          v39 = *(v17 + 12);
          *v5 = v17 + 104;
          v40 = *(v17 + 13);
          *v5 = v17 + 112;
          v51 = *(v17 + 14);
          *v5 = v17 + 120;
          v52 = *(v17 + 15);
          *v5 = v17 + 128;
          v41 = *(v17 + 16);
          *v5 = v17 + 136;
          v31 = *(v17 + 17);
          *v5 = v17 + 144;
          result = *(v17 + 18);
          *v5 = v17 + 152;
          v42 = *(v17 + 19);
          *v5 = v17 + 160;
          v26 = *(v17 + 20);
          *v5 = v17 + 168;
          v35 = *(v17 + 21);
          *v5 = v17 + 176;
          v36 = *(v17 + 22);
          *v5 = v17 + 184;
          if (a4)
          {
            *&v43 = v51;
            *(&v43 + 1) = v52;
            *&v44 = v49;
            *(&v44 + 1) = v50;
            v29 = v26 >> 8;
            v32 = v26 >> 16;
            v34 = v26 & 0xFFFFFFFFFF000000;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v23 != 12)
        {
LABEL_26:
          if (a4)
          {
            v31 = 0;
            result = 0;
            v30 = 0;
            v33 = 0;
            LOBYTE(v26) = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v32) = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            LOBYTE(v40) = 0;
            LOBYTE(v41) = 0;
            LOBYTE(v42) = 0;
            v44 = 0uLL;
            v43 = 0uLL;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v45 = *(v17 + 6);
        *v5 = v17 + 56;
        v46 = *(v17 + 7);
        *v5 = v17 + 64;
        v30 = *(v17 + 8);
        *v5 = v17 + 72;
        v37 = *(v17 + 9);
        *v5 = v17 + 80;
        v33 = *(v17 + 10);
        *v5 = v17 + 88;
        v38 = *(v17 + 11);
        *v5 = v17 + 96;
        v39 = *(v17 + 12);
        *v5 = v17 + 104;
        v40 = *(v17 + 13);
        *v5 = v17 + 112;
        v47 = *(v17 + 14);
        *v5 = v17 + 120;
        v48 = *(v17 + 15);
        *v5 = v17 + 128;
        v41 = *(v17 + 16);
        *v5 = v17 + 136;
        v31 = *(v17 + 17);
        *v5 = v17 + 144;
        result = *(v17 + 18);
        *v5 = v17 + 152;
        v42 = *(v17 + 19);
        *v5 = v17 + 160;
        v26 = *(v17 + 20);
        *v5 = v17 + 168;
        v35 = *(v17 + 21);
        *v5 = v17 + 176;
        v36 = *(v17 + 22);
        *v5 = v17 + 184;
        if (a4)
        {
          *&v43 = v47;
          *(&v43 + 1) = v48;
          *&v44 = v45;
          v29 = v26 >> 8;
          v32 = v26 >> 16;
          v34 = v26 & 0xFFFFFFFFFF000000;
          *(&v44 + 1) = v46;
          goto LABEL_30;
        }
      }

      else
      {
        if (v23 != 7)
        {
          if (v23 == 8)
          {
            goto LABEL_24;
          }

          if (v23 != 9)
          {
            goto LABEL_26;
          }
        }

        v24 = *(v17 + 6);
        *v5 = v17 + 56;
        v25 = *(v17 + 7);
        *v5 = v17 + 64;
        LOBYTE(v26) = v17[64];
        *v5 = v17 + 72;
        v27 = *(v17 + 9);
        *v5 = v17 + 80;
        v28 = *(v17 + 10);
        *v5 = v17 + 88;
        v29 = *(v17 + 11);
        *v5 = v17 + 96;
        v30 = *(v17 + 12);
        *v5 = v17 + 104;
        v31 = *(v17 + 13);
        *v5 = v17 + 112;
        result = *(v17 + 14);
        *v5 = v17 + 120;
        v32 = *(v17 + 15);
        *v5 = v17 + 128;
        v33 = *(v17 + 16);
        *v5 = v17 + 136;
        if (a4)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          LOBYTE(v37) = 0;
          LOBYTE(v38) = 0;
          LOBYTE(v39) = 0;
          LOBYTE(v40) = 0;
          LOBYTE(v41) = 0;
          LOBYTE(v42) = 0;
          *&v43 = v27;
          *(&v43 + 1) = v28;
          *&v44 = v24;
          *(&v44 + 1) = v25;
LABEL_30:
          *v9 = v44;
          *(v9 + 16) = v43;
          *(v9 + 32) = v31;
          *(v9 + 40) = result;
          *(v9 + 48) = v30;
          *(v9 + 56) = v33;
          *(v9 + 64) = v34 | (v32 << 16) | (v29 << 8) | v26;
          *(v9 + 72) = v35;
          *(v9 + 80) = v36;
          *(v9 + 88) = v37;
          *(v9 + 89) = v38;
          *(v9 + 90) = v39;
          *(v9 + 91) = v40;
          *(v9 + 92) = v41;
          *(v9 + 93) = v42;
          *(v9 + 94) = 0;
          *(v9 + 96) = v19;
          *(v9 + 104) = v20;
          *(v9 + 112) = v64;
          *(v9 + 120) = v16;
          *(v9 + 128) = v63;
          *(v9 + 136) = v62;
          *(v9 + 144) = v65;
          *(v9 + 145) = v66;
          *(v9 + 146) = v23;
          *(v9 + 147) = 0;
          *(v9 + 151) = 0;
        }
      }

LABEL_31:
      if (!--v7)
      {
        v6 = *v5;
        v7 = v60;
        a2 = v61;
        v53 = v59;
        goto LABEL_34;
      }
    }
  }

  v53 = 0;
LABEL_34:
  v54 = *v6;
  *v5 = v6 + 8;
  v55 = *(v6 + 2);
  *v5 = v6 + 16;
  v56 = *(v6 + 2);
  *v5 = v6 + 24;
  v57 = *(v6 + 3);
  *v5 = v6 + 32;
  v58 = *(v6 + 8);
  *v5 = v6 + 40;
  if (a4)
  {
    *a2 = v53;
    *(a2 + 8) = v7;
    *(a2 + 16) = v56;
    *(a2 + 24) = v55;
    *(a2 + 28) = v58;
    *(a2 + 32) = v54;
    *(a2 + 33) = v57;
    *(a2 + 34) = 0;
    *(a2 + 38) = 0;
  }

  return result;
}

size_t DecodeDYMTL4PipelineDescriptor(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v80[1] = a2;
  bzero(__dst, 0x3C8uLL);
  v9 = (a1 + 8);
  v10 = *a1;
  result = strlen((a1 + 8));
  v80[0] = (a1 + 8 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 8))
  {
    result = strlen(v9);
    v14 = a3 + 74;
    v15 = a3[74];
    v12 = result + 1;
    if (result != -1)
    {
      v13 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v14 = v15 + v12;
  if (a4)
  {
    result = memcpy(v13, v9, v12);
  }

  v76 = v13;
  v16 = vuzp1q_s32(*v80[0], *(v80[0] + 1));
  v17 = *(v80[0] + 32);
  v18 = *(v80[0] + 40);
  v19 = v80[0][6];
  v20 = v80[0][7];
  v21 = v80[0] + 8;
  v22 = v80[0] + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (v20)
  {
    v23 = a3[74];
  }

  else
  {
    v23 = 0;
  }

  a3[74] += v20;
  if (a4)
  {
    if (v20)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v77 = v16;
    result = memcpy(v23, v24, v20);
    v16 = v77;
  }

  v78 = a5;
  v25 = COERCE_DOUBLE(vmovn_s32(v16));
  v26 = v10;
  if (v10 < 0x69)
  {
    v27 = 0;
    v28 = (v22 + 16);
  }

  else
  {
    v27 = *(v22 + 2);
    v28 = (v22 + 24);
  }

  if (a4)
  {
    v29 = v23;
  }

  else
  {
    v29 = 0;
  }

  v73 = v29;
  if (a4)
  {
    v30 = v20;
  }

  else
  {
    v30 = 0;
  }

  v72 = v30;
  if (a4)
  {
    v31 = v19;
  }

  else
  {
    v31 = 0;
  }

  if (!a4)
  {
    v27 = 0;
  }

  v70 = v27;
  v71 = v31;
  if (a4)
  {
    v32 = *v22;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v32 = 0;
  }

  if (a4)
  {
    v33 = v22[8];
  }

  else
  {
    v33 = 0;
  }

  v74 = v33;
  v75 = v32;
  if (a4)
  {
    v34 = v25;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = v28 + 1;
  v36 = *v28;
  v80[0] = v28 + 1;
  if (v36 > 2)
  {
    if (v36 != 3)
    {
      if (v36 != 4)
      {
        if (v36 == 5)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          __src = 0u;
          v82 = 0u;
          v37 = v28[1];
          v38 = v28 + 2;
          v80[0] = v28 + 2;
          if (v37)
          {
            v39 = &v84 + 4;
            v40 = v78;
            do
            {
              v42 = *v38++;
              v41 = v42;
              v80[0] = v38;
              if (a4)
              {
                *v39 = v41;
              }

              ++v39;
              --v37;
            }

            while (v37);
          }

          else
          {
            v40 = v78;
          }

          *(&v85 + 1) = *v38;
          *&v86 = v38[1];
          v63 = v38[4];
          v83 = *(v38 + 1);
          *&v84 = v63;
          BYTE8(v86) = v38[5];
          v64 = v38[6];
          v80[0] = v38 + 7;
          BYTE9(v86) = v64;
          result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, a4, v40);
          if (a4)
          {
            __dst[2] = v83;
            __dst[3] = v84;
            __dst[4] = v85;
            __dst[5] = v86;
            __dst[0] = __src;
            __dst[1] = v82;
          }
        }

        goto LABEL_86;
      }

      v53 = v17;
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(v91, 0, sizeof(v91));
      memset(v90, 0, sizeof(v90));
      v88 = 0u;
      memset(v89, 0, sizeof(v89));
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      __src = 0u;
      LOBYTE(v95[7]) = v28[1];
      BYTE1(v95[7]) = v28[2];
      v54 = v28[3];
      v55 = v28 + 4;
      v80[0] = v28 + 4;
      if (v54)
      {
        p_src = &__src;
        v57 = v78;
        do
        {
          MakeDYMTL4RenderPipelineColorAttachmentDescriptor(v80, p_src++, a4);
          --v54;
        }

        while (v54);
        v55 = v80[0];
      }

      else
      {
        v57 = v78;
      }

      v59 = *v55;
      v80[0] = v55 + 1;
      v95[0] = v59;
      MakeDYMTL4FunctionDescriptor(v80, v89, a3, a4, v57);
      v60 = v80[0];
      *&v95[1] = *v80[0];
      v80[0] += 4;
      *&v95[3] = *(v60 + 1);
      MakeDYMTL4FunctionDescriptor(v80, v90, a3, a4, v57);
      v61 = *v80[0]++;
      BYTE3(v95[7]) = v61;
      result = MakeDYMTL4FunctionDescriptor(v80, v91, a3, a4, v57);
      BYTE4(v95[7]) = *v80[0];
      *&v95[5] = *(v80[0] + 1);
      BYTE5(v95[7]) = v80[0][3];
      v92 = *(v80[0] + 2);
      v93 = *(v80[0] + 3);
      v94 = *(v80[0] + 4);
      BYTE6(v95[7]) = v80[0][10];
      LOBYTE(v96) = v80[0][11];
      BYTE1(v96) = v80[0][12];
      HIBYTE(v95[7]) = v80[0][13];
      if (v26 > 0x6E)
      {
        BYTE2(v95[7]) = v80[0][14];
      }

      v17 = v53;
      if (a4)
      {
        v62 = 344;
LABEL_85:
        result = memcpy(__dst, &__src, v62);
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    __src = 0u;
    v82 = 0u;
    v80[0] = &v35[(strlen(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    if (*v35)
    {
      v47 = (v28 + 1);
    }

    else
    {
      v47 = 0;
    }

    if (*v35)
    {
      v48 = strlen(v47);
      v49 = a3[74];
      v50 = v48 + 1;
      v51 = v78;
      if (v48 != -1)
      {
        v52 = a3[74];
        goto LABEL_69;
      }
    }

    else
    {
      v49 = a3[74];
      v51 = v78;
    }

    v50 = 0;
    v52 = 0;
LABEL_69:
    a3[74] = v49 + v50;
    if (a4)
    {
      memcpy(v52, v47, v50);
      *&v83 = v52;
      result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, 1, v51);
      __dst[0] = __src;
      __dst[1] = v82;
      *&__dst[2] = v83;
    }

    else
    {
      result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, 0, v51);
    }

    goto LABEL_86;
  }

  if (v36 == 1)
  {
    *&v85 = 0;
    v83 = 0u;
    v84 = 0u;
    __src = 0u;
    v82 = 0u;
    result = MakeDYMTL4FunctionDescriptor(v80, &__src, a3, a4, v78);
    *(&v84 + 1) = *v80[0];
    v58 = v80[0][3];
    v83 = *(v80[0] + 1);
    *&v84 = v58;
    LOBYTE(v85) = v80[0][4];
    BYTE2(v85) = v80[0][5];
    BYTE1(v85) = v80[0][6];
    if (a4)
    {
      __dst[2] = v83;
      __dst[3] = v84;
      *&__dst[4] = v85;
      __dst[0] = __src;
      __dst[1] = v82;
    }
  }

  else if (v36 == 2)
  {
    v69 = v17;
    bzero(&__src, 0x3C8uLL);
    v101 = v28[1];
    v102 = v28[2];
    v43 = v28[3];
    v44 = v28 + 4;
    v80[0] = v28 + 4;
    if (v43)
    {
      v45 = &v97;
      v46 = v78;
      do
      {
        MakeDYMTL4RenderPipelineColorAttachmentDescriptor(v80, v45, a4);
        v45 += 2;
        --v43;
      }

      while (v43);
      v44 = v80[0];
    }

    else
    {
      v46 = v78;
    }

    v65 = *v44;
    v80[0] = v44 + 1;
    v99[4] = v65;
    MakeDYMTL4FunctionDescriptor(v80, &v98, a3, a4, v46);
    v104 = *v80[0];
    v100 = *(v80[0] + 1);
    v105 = v80[0][3];
    v106 = v80[0][4];
    v66 = v80[0][5];
    v80[0] += 6;
    v108 = v66;
    MakeDYMTLVertexDescriptor(v80, &__src, v26, a4);
    result = MakeDYMTL4FunctionDescriptor(v80, v99, a3, a4, v46);
    v107 = *v80[0];
    v17 = v69;
    if (v26 > 0x6E)
    {
      v103 = v80[0][1];
    }

    if (a4)
    {
      v62 = 968;
      goto LABEL_85;
    }
  }

LABEL_86:
  v67 = a3[42];
  a3[42] = v67 + 1024;
  if (a4)
  {
    result = memcpy(v67, __dst, 0x3C8uLL);
    *(v67 + 968) = v73;
    *(v67 + 976) = v72;
    *(v67 + 984) = v71;
    *(v67 + 992) = v70;
    *(v67 + 1000) = vuzp1_s8(*&v34, v68).u32[0];
    *(v67 + 1004) = v17;
    *(v67 + 1005) = v18;
    *(v67 + 1006) = v75;
    *(v67 + 1007) = v74;
    *(v67 + 1008) = v76;
    *(v67 + 1016) = v36;
    *(v67 + 1017) = 0;
    *(v67 + 1020) = 0;
  }

  return result;
}

void DecodeDYMTL4AccelerationStructureDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 8);
  v24[0] = (a1 + 16);
  v24[1] = a2;
  BYTE8(v23) = v6;
  if (v6 == 5)
  {
    MakeDYMTL4PrimitiveAccelerationStructureDescriptor(v24, &v18, a3, a4);
    goto LABEL_8;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(v24, &v18, a4);
    }

LABEL_8:
    v14 = *(a3 + 344);
    *(a3 + 344) = v14 + 6;
    if (!a4)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((a4 & 1) == 0)
  {
    *(a3 + 344) += 96;
    return;
  }

  v7 = *(a1 + 96);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v18 = *(a1 + 24);
  v19 = v12;
  *&v20 = v11;
  *(&v20 + 1) = v10;
  v21 = v13;
  LOBYTE(v22) = v9;
  BYTE1(v22) = v8;
  BYTE2(v22) = v7;
  *(&v22 + 3) = 0;
  BYTE7(v22) = 0;
  v14 = *(a3 + 344);
  *(a3 + 344) = v14 + 6;
LABEL_9:
  v15 = v21;
  v14[2] = v20;
  v14[3] = v15;
  v16 = v23;
  v14[4] = v22;
  v14[5] = v16;
  v17 = v19;
  *v14 = v18;
  v14[1] = v17;
}

void DecodeDYMTLAccelerationStructureDescriptor(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = 0;
  LODWORD(v9) = 0;
  v231[0] = a1;
  v231[1] = a2;
  v230 = 0;
  v10 = *a1;
  v11 = *(a1 + 8);
  v166 = *(a1 + 8);
  v167 = *(a1 + 16);
  v12 = 0uLL;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (v10 < 0x4E)
      {
        v20 = 0;
        v27 = 0;
        v28 = 0;
        if (!v6)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v20 = *(a1 + 120);
        v28 = *(a1 + 128);
        v27 = *(a1 + 136);
        if (!v6)
        {
          goto LABEL_184;
        }
      }

      v148 = *(a1 + 24);
      v8 = *(a1 + 32);
      LOBYTE(v13) = *(a1 + 36);
      LOBYTE(v14) = *(a1 + 37);
      LOWORD(v15) = *(a1 + 38);
      v149 = *(a1 + 40);
      v185 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      v9 = *(a1 + 88);
      LODWORD(v21) = *(a1 + 96);
      v22 = *(a1 + 104);
      v26 = *(a1 + 112);
      if (v5)
      {
        v201 = *(a1 + 112);
        v205 = v28;
        v207 = v27;
        v213 = *(a1 + 36);
        v217 = *(a1 + 72);
        v210 = *(a1 + 80);
        v150 = *(a1 + 56);
        v223 = *(a1 + 38);
        v226 = *(a1 + 37);
        v229 = *(a1 + 64);
        AliasStream2 = GetAliasStream2(v5, v148);
        v152 = v167;
        if (AliasStream2)
        {
          v220 = *AliasStream2;
        }

        else
        {
          v220 = 0;
        }

        v161 = GetAliasStream2(v5, v149);
        if (v161)
        {
          v162 = *v161;
        }

        else
        {
          v162 = 0;
        }

        v163 = GetAliasStream2(v5, v150);
        if (v163)
        {
          v164 = *v163;
        }

        else
        {
          v164 = 0;
        }

        v165 = GetAliasStream2(v5, v217);
        v169 = v162;
        if (v165)
        {
          v18 = *v165;
        }

        else
        {
          v18 = 0;
        }

        v19 = v210;
        LOBYTE(v13) = v213;
        LOBYTE(v14) = v226;
        v17 = v229;
        v148 = v220;
        LOWORD(v15) = v223;
        v16 = v164;
        v27 = v207;
        v28 = v205;
        v26 = v201;
      }

      else
      {
        v169 = *(a1 + 40);
        v152 = *(a1 + 16);
      }

      v155 = HIDWORD(v148);
      v23 = v22 >> 8;
      v24 = v22 >> 16;
      v25 = v22 >> 24;
      goto LABEL_220;
    }

    v185 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    v169 = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (*(a1 + 8) != 4)
    {
      goto LABEL_199;
    }

    v236 = 0uLL;
    v237 = 0uLL;
    v234 = 0uLL;
    v235 = 0uLL;
    v232 = 0uLL;
    v233 = 0uLL;
    v38 = *(a1 + 24);
    v231[0] = (a1 + 32);
    BYTE8(v237) = v38;
    if (v38 == 5)
    {
      MakeDYMTL4PrimitiveAccelerationStructureDescriptor(v231, &v232, v7, v6);
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v38 == 6)
      {
        if (!v6)
        {
          v169 = 0;
          v185 = 0;
          v8 = 0;
          LOBYTE(v13) = 0;
          LOBYTE(v14) = 0;
          LOWORD(v15) = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          LODWORD(v21) = 0;
          LODWORD(v9) = 0;
          LOBYTE(v22) = 0;
          LOBYTE(v23) = 0;
          LOBYTE(v24) = 0;
          LODWORD(v25) = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          goto LABEL_199;
        }

        v29 = 0;
        v28 = 0;
        v27 = 0;
        v26 = 0;
        LODWORD(v22) = 0;
        v21 = 0;
        v19 = *(a1 + 104);
        v157 = *(a1 + 112);
        v18 = *(a1 + 96);
        v12 = *(a1 + 80);
        v158 = *(a1 + 72);
        v17 = *(a1 + 56);
        v159 = *(a1 + 40);
        v16 = *(a1 + 32);
        LOBYTE(v236) = *(a1 + 64);
        BYTE1(v236) = v158;
        BYTE2(v236) = v157;
        *(&v236 + 3) = 0;
        BYTE7(v236) = 0;
        v8 = DWORD2(v12);
        v13 = HIDWORD(*(&v12 + 1));
        v14 = *(&v12 + 1) >> 40;
        v15 = HIWORD(*(&v12 + 1));
        v185 = *(&v159 + 1);
        v169 = v159;
        goto LABEL_193;
      }

      if (v38 == 7)
      {
        MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(v231, &v232, v6);
      }

      if (v6)
      {
LABEL_21:
        v185 = *(&v232 + 1);
        v169 = v232;
        *&v12 = v233;
        v8 = DWORD2(v233);
        LOBYTE(v13) = BYTE12(v233);
        LOBYTE(v14) = BYTE13(v233);
        LOWORD(v15) = HIWORD(v233);
        v17 = *(&v234 + 1);
        v16 = v234;
        v19 = *(&v235 + 1);
        v18 = v235;
        v21 = *(&v236 + 1);
        LODWORD(v22) = v237;
        v26 = BYTE4(v237);
        v27 = BYTE5(v237);
        v28 = BYTE6(v237);
        v29 = BYTE7(v237);
LABEL_193:
        v9 = HIDWORD(v21);
        LODWORD(v23) = v22 >> 8;
        LODWORD(v24) = WORD1(v22);
        LODWORD(v25) = BYTE3(v22);
        v20 = v236;
        v230 = *(&v237 + 1);
LABEL_199:
        v156 = v7[44];
        v7[44] = v156 + 104;
        if (!v6)
        {
          return;
        }

        LODWORD(v148) = v12;
        LODWORD(v155) = DWORD1(v12);
        goto LABEL_201;
      }
    }

    v169 = 0;
    v185 = 0;
    v8 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    LODWORD(v9) = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v12 = 0;
    goto LABEL_199;
  }

  v212 = *a1;
  if (v11 != 1)
  {
    v185 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    v169 = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (*(a1 + 8) == 2)
    {
      v185 = *(a1 + 24);
      v218 = *(a1 + 32);
      v8 = *(a1 + 40);
      v215 = *(a1 + 36);
      LOBYTE(v13) = *(a1 + 44);
      LOBYTE(v14) = *(a1 + 45);
      LOWORD(v15) = *(a1 + 46);
      v31 = *(a1 + 48);
      v30 = *(a1 + 56);
      v23 = a1 + 64;
      v231[0] = (a1 + 64);
      v224 = v14;
      v227 = v30;
      v221 = v15;
      if (v30)
      {
        v32 = v13;
        v33 = v7[72];
        v34 = v33;
        do
        {
          v36 = *v23;
          v23 += 8;
          v35 = v36;
          if (v6)
          {
            if (v5)
            {
              v37 = GetAliasStream2(v5, v35);
              if (v37)
              {
                v35 = *v37;
              }

              else
              {
                v35 = 0;
              }
            }

            v33 = v7[72];
            *v33 = v35;
          }

          v7[72] = ++v33;
          --v30;
        }

        while (v30);
        v231[0] = v23;
        LOBYTE(v13) = v32;
        LOWORD(v15) = v221;
        LOBYTE(v14) = v224;
        v16 = v34;
      }

      else
      {
        v16 = 0;
      }

      v169 = v31;
      if (v212 <= 0x38)
      {
        LOBYTE(v22) = 0;
        v20 = 0;
        v19 = 0;
        v18 = 0;
      }

      else
      {
        LOBYTE(v22) = *v23;
        v18 = *(v23 + 8);
        v19 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v212 >= 0x4E)
        {
          v21 = *(v23 + 32);
          LODWORD(v24) = *(v23 + 40);
          LODWORD(v23) = *(v23 + 48);
          goto LABEL_180;
        }
      }

      v21 = 0;
      LOBYTE(v23) = 0;
      LOBYTE(v24) = 0;
LABEL_180:
      v17 = v227;
      if (v6)
      {
        if (v5)
        {
          v153 = v18;
          v208 = v16;
          v211 = v19;
          v214 = v13;
          v154 = GetAliasStream2(v5, v185);
          v152 = v167;
          if (v154)
          {
            v185 = *v154;
          }

          else
          {
            v185 = 0;
          }

          v160 = GetAliasStream2(v5, v153);
          if (v160)
          {
            v18 = *v160;
          }

          else
          {
            v18 = 0;
          }

          v19 = v211;
          LOBYTE(v13) = v214;
          LOBYTE(v14) = v224;
          v17 = v227;
          LOWORD(v15) = v221;
          v16 = v208;
        }

        else
        {
          v152 = v167;
        }

        LODWORD(v155) = v215;
        LODWORD(v148) = v218;
        LODWORD(v25) = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v9 = HIDWORD(v21);
LABEL_220:
        v29 = 0;
        v156 = v7[44];
        v7[44] = v156 + 104;
        goto LABEL_221;
      }

LABEL_184:
      v7[44] += 104;
      return;
    }

    goto LABEL_199;
  }

  v39 = *(a1 + 24);
  v231[0] = (a1 + 32);
  v185 = v39;
  if (v39)
  {
    v40 = 0;
    v170 = a3[53];
    v41 = v231[0];
    while (1)
    {
      v225 = v40;
      v42 = 0;
      v43 = 0;
      v44 = v7[53];
      v7[53] = v44 + 152;
      BYTE4(v232) = 0;
      LODWORD(v232) = 0;
      v45 = *v41;
      v186 = v41[1];
      v46 = *(v41 + 16);
      v47 = (v41 + 4);
      v231[0] = v41 + 4;
      v187 = *(v41 + 24);
      v188 = v46;
      v189 = v45;
      if (v45 > 3)
      {
        break;
      }

      if (v45 == 1)
      {
        v73 = v41[4];
        v74 = v41[5];
        v50 = v41[6];
        v43 = v41[7];
        v222 = v41[8];
        LOBYTE(v51) = *(v41 + 72);
        v49 = v41[10];
        v47 = (v41 + 11);
        v231[0] = v41 + 11;
        if (v212 < 0x3C)
        {
          v216 = 0;
          v48 = 0;
          LOBYTE(v180) = 0;
          LOBYTE(v53) = 30;
          if (!v6)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v53 = v41[11];
          v48 = v41[12];
          v216 = v41[13];
          v47 = (v41 + 14);
          v231[0] = v41 + 14;
          if (v212 < 0x4E)
          {
            LOBYTE(v180) = 0;
            if (!v6)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v180 = v41[14];
            v47 = (v41 + 15);
            v231[0] = v41 + 15;
            if (!v6)
            {
              goto LABEL_109;
            }
          }
        }

        v228 = v74;
        if (v5)
        {
          v172 = v53;
          v176 = v51;
          v203 = v49;
          v109 = v43;
          v110 = v48;
          v111 = GetAliasStream2(v5, v73);
          if (v111)
          {
            v112 = *v111;
          }

          else
          {
            v112 = 0;
          }

          v117 = GetAliasStream2(v5, v109);
          if (v117)
          {
            v118 = *v117;
          }

          else
          {
            v118 = 0;
          }

          v219 = v112;
          v119 = GetAliasStream2(v5, v110);
          if (v119)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v42 = 0;
            v57 = 0;
            v58 = 0;
            v209 = 0;
            v206 = 0;
            v59 = 0;
            v48 = *v119;
          }

          else
          {
            v48 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v42 = 0;
            v57 = 0;
            v58 = 0;
            v209 = 0;
            v206 = 0;
            v59 = 0;
          }

          v43 = v118;
          v6 = a4;
          v49 = v203;
          LOBYTE(v53) = v172;
          LOBYTE(v51) = v176;
        }

        else
        {
          v219 = v73;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        LOBYTE(v52) = v180;
      }

      else if (v45 == 2)
      {
        v43 = v41[4];
        v81 = v41[5];
        v82 = v41[6];
        v48 = v41[7];
        v47 = (v41 + 8);
        v231[0] = v41 + 8;
        if (!v6)
        {
          goto LABEL_109;
        }

        v222 = v81;
        v216 = v82;
        if (!v5)
        {
          goto LABEL_110;
        }

        v83 = v48;
        v84 = GetAliasStream2(v5, v43);
        if (v84)
        {
          v49 = 0;
          v219 = 0;
          v228 = 0;
          v50 = 0;
          LOBYTE(v51) = 0;
          LOBYTE(v53) = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
          v43 = *v84;
        }

        else
        {
          v43 = 0;
          v49 = 0;
          v219 = 0;
          v228 = 0;
          v50 = 0;
          LOBYTE(v51) = 0;
          LOBYTE(v53) = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        v48 = v83;
        LOBYTE(v52) = 0;
      }

      else
      {
        v219 = 0;
        v222 = 0;
        v48 = 0;
        v216 = 0;
        v49 = 0;
        v228 = 0;
        v50 = 0;
        LOBYTE(v51) = 0;
        LOBYTE(v52) = 0;
        LOBYTE(v53) = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v209 = 0;
        v206 = 0;
        v59 = 0;
        if (v45 != 3)
        {
          goto LABEL_142;
        }

        v60 = v41[4];
        v61 = v41 + 5;
        v231[0] = v41 + 5;
        v228 = v60;
        if (v60)
        {
          v219 = v7[64];
          v62 = v212;
          do
          {
            v63 = v7[64];
            v7[64] = v63 + 2;
            if (v6)
            {
              v64 = *v61;
              v65 = v61[1];
              if (v5)
              {
                v66 = GetAliasStream2(v5, v64);
                if (v66)
                {
                  v64 = *v66;
                }

                else
                {
                  v64 = 0;
                }
              }

              *v63 = v64;
              v63[1] = v65;
            }

            v61 += 2;
            --v60;
          }

          while (v60);
          v231[0] = v61;
        }

        else
        {
          v219 = 0;
          v62 = v212;
        }

        v50 = v61[1];
        v43 = v61[2];
        v93 = v61[3];
        LOBYTE(v51) = *(v61 + 32);
        v49 = v61[5];
        v47 = (v61 + 6);
        v231[0] = v61 + 6;
        if (v62 <= 0x3B)
        {
          v216 = 0;
          v48 = 0;
          LOBYTE(v52) = 0;
          LOBYTE(v53) = 30;
          if (!v6)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v53 = v61[6];
          v48 = v61[7];
          v216 = v61[8];
          v47 = (v61 + 9);
          v231[0] = v61 + 9;
          if (v62 < 0x4E)
          {
            LOBYTE(v52) = 0;
            if (!v6)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v52 = v61[9];
            v47 = (v61 + 10);
            v231[0] = v61 + 10;
            if (!v6)
            {
              goto LABEL_109;
            }
          }
        }

        v222 = v93;
        if (!v5)
        {
          goto LABEL_111;
        }

        v113 = v52;
        v173 = v53;
        v177 = v51;
        v114 = v49;
        v115 = v48;
        v116 = GetAliasStream2(v5, v43);
        if (v116)
        {
          v43 = *v116;
        }

        else
        {
          v43 = 0;
        }

        v120 = GetAliasStream2(v5, v115);
        LOBYTE(v52) = v113;
        if (v120)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
          v48 = *v120;
        }

        else
        {
          v48 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v42 = 0;
          v57 = 0;
          v58 = 0;
          v209 = 0;
          v206 = 0;
          v59 = 0;
        }

        v49 = v114;
        LOBYTE(v53) = v173;
        LOBYTE(v51) = v177;
      }

LABEL_142:
      v196 = v58;
      v198 = v57;
      v200 = v56;
      v192 = v55;
      v194 = v42;
      v204 = 0u;
      if (v212 >= 0x38)
      {
        v178 = v51;
        v182 = v52;
        v123 = v54;
        v124 = v59;
        v174 = v53;
        v125 = v49;
        v126 = v43;
        v127 = v48;
        v41 = &v47[(strlen(v47) & 0xFFFFFFFFFFFFFFF8) + 8];
        v231[0] = v41;
        v128 = *v47;
        if (!*v47)
        {
          v47 = 0;
        }

        if (v128)
        {
          v129 = strlen(v47);
          v130 = v7[74];
          v131 = v129 + 1;
          if (v129 != -1)
          {
            v132 = v7[74];
            goto LABEL_152;
          }
        }

        else
        {
          v130 = v7[74];
        }

        v131 = 0;
        v132 = 0;
LABEL_152:
        v7[74] = v130 + v131;
        if (a4)
        {
          v136 = v47;
          v137 = v132;
          memcpy(v132, v136, v131);
          v132 = v137;
        }

        if (v212 < 0x3D)
        {
          v133 = 0;
          v134 = 0;
        }

        else
        {
          v133 = *v41;
          v134 = v41[1];
          v204 = *(v41 + 1);
          v41 += 4;
          v231[0] = v41;
        }

        v135 = v225;
        v48 = v127;
        v43 = v126;
        v6 = a4;
        v49 = v125;
        LOBYTE(v53) = v174;
        LOBYTE(v51) = v178;
        v59 = v124;
        v54 = v123;
        LOBYTE(v52) = v182;
        if (!a4)
        {
          goto LABEL_165;
        }

LABEL_158:
        if (a5)
        {
          v171 = v134;
          v175 = v132;
          v179 = v54;
          v183 = v59;
          v138 = v52;
          v139 = v53;
          v140 = v44;
          v141 = v51;
          v142 = v49;
          v143 = v43;
          v144 = v48;
          v145 = GetAliasStream2(a5, v133);
          if (v145)
          {
            v133 = *v145;
          }

          else
          {
            v133 = 0;
          }

          v146 = v222;
          v48 = v144;
          v43 = v143;
          v6 = a4;
          v49 = v142;
          LOBYTE(v51) = v141;
          v44 = v140;
          v7 = a3;
          LOBYTE(v53) = v139;
          LOBYTE(v52) = v138;
          v59 = v183;
          v132 = v175;
          v54 = v179;
          v134 = v171;
        }

        else
        {
          v146 = v222;
        }

        *v44 = v43;
        *(v44 + 8) = v146;
        *(v44 + 16) = v48;
        *(v44 + 24) = v216;
        *(v44 + 32) = v49;
        *(v44 + 40) = v219;
        *(v44 + 48) = v228;
        *(v44 + 56) = v50;
        *(v44 + 64) = v54 | (v53 << 16) | (v52 << 8) | v51;
        *(v44 + 72) = v192;
        *(v44 + 80) = v200;
        *(v44 + 88) = v194;
        *(v44 + 89) = v198;
        *(v44 + 90) = v196;
        *(v44 + 91) = v209;
        *(v44 + 92) = v206;
        *(v44 + 93) = v59;
        *(v44 + 94) = 0;
        *(v44 + 96) = v186;
        *(v44 + 104) = v132;
        *(v44 + 112) = v133;
        *(v44 + 120) = v134;
        *(v44 + 128) = vextq_s8(v204, v204, 8uLL);
        *(v44 + 144) = v187;
        *(v44 + 145) = v188;
        *(v44 + 146) = v189;
        *(v44 + 147) = v232;
        *(v44 + 151) = BYTE4(v232);
        goto LABEL_165;
      }

      v132 = 0;
      v133 = 0;
      v134 = 0;
      v41 = v47;
      v135 = v225;
      if (v6)
      {
        goto LABEL_158;
      }

LABEL_165:
      v40 = v135 + 1;
      v5 = a5;
      if (v40 == v185)
      {
        v147 = v170;
        v10 = v212;
        goto LABEL_186;
      }
    }

    if (v45 == 4)
    {
      v75 = v41[4];
      v76 = v41 + 5;
      v231[0] = v41 + 5;
      v222 = v75;
      if (v75)
      {
        v43 = v7[64];
        do
        {
          v77 = v7[64];
          v7[64] = v77 + 2;
          if (v6)
          {
            v78 = *v76;
            v79 = v76[1];
            if (v5)
            {
              v80 = GetAliasStream2(v5, v78);
              if (v80)
              {
                v78 = *v80;
              }

              else
              {
                v78 = 0;
              }
            }

            *v77 = v78;
            v77[1] = v79;
          }

          v76 += 2;
          --v75;
        }

        while (v75);
        v231[0] = v76;
      }

      else
      {
        v43 = 0;
      }

      v92 = v76[1];
      v48 = v76[2];
      v47 = (v76 + 3);
      v231[0] = v76 + 3;
      if (v6)
      {
        v216 = v92;
      }

      else
      {
LABEL_109:
        v43 = 0;
        v222 = 0;
        v48 = 0;
        v216 = 0;
      }

LABEL_110:
      v49 = 0;
      v219 = 0;
      v228 = 0;
      v50 = 0;
      LOBYTE(v51) = 0;
      LOBYTE(v52) = 0;
      LOBYTE(v53) = 0;
LABEL_111:
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v42 = 0;
      v57 = 0;
      v58 = 0;
      v209 = 0;
      v206 = 0;
      v59 = 0;
      goto LABEL_142;
    }

    if (v45 == 5)
    {
      v43 = v41[4];
      v85 = v41[5];
      v50 = v41[7];
      v228 = v41[6];
      v48 = v41[8];
      v216 = v41[9];
      v51 = v41[10];
      v49 = v41[11];
      v56 = v41[13];
      v219 = v41[12];
      v55 = v41[14];
      v42 = *(v41 + 120);
      v59 = *(v41 + 128);
      v86 = *(v41 + 136);
      v58 = *(v41 + 144);
      v57 = *(v41 + 152);
      v47 = (v41 + 21);
      v87 = *(v41 + 160);
      v231[0] = v41 + 21;
      if (!v6)
      {
        goto LABEL_109;
      }

      v222 = v85;
      v209 = v87;
      v206 = v86;
      if (!v5)
      {
        goto LABEL_141;
      }

      v181 = v59;
      v195 = v58;
      v197 = v57;
      v199 = v56;
      v191 = v55;
      v193 = v42;
      v88 = v51;
      v89 = v49;
      v90 = v48;
      v91 = GetAliasStream2(v5, v43);
      if (v91)
      {
        v43 = *v91;
      }

      else
      {
        v43 = 0;
      }

      v121 = GetAliasStream2(v5, v228);
      if (v121)
      {
        v228 = *v121;
      }

      else
      {
        v228 = 0;
      }

      v122 = GetAliasStream2(v5, v89);
      if (v122)
      {
        v49 = *v122;
      }

      else
      {
        v49 = 0;
      }

      v48 = v90;
      v51 = v88;
      v42 = v193;
      v55 = v191;
    }

    else
    {
      v219 = 0;
      v222 = 0;
      v48 = 0;
      v216 = 0;
      v49 = 0;
      v228 = 0;
      v50 = 0;
      LOBYTE(v51) = 0;
      LOBYTE(v52) = 0;
      LOBYTE(v53) = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v209 = 0;
      v206 = 0;
      v59 = 0;
      if (v45 != 6)
      {
        goto LABEL_142;
      }

      v67 = v41[4];
      v68 = v41 + 5;
      v231[0] = v41 + 5;
      v222 = v67;
      if (v67)
      {
        v43 = v7[64];
        do
        {
          v69 = v7[64];
          v7[64] = v69 + 2;
          if (v6)
          {
            v70 = *v68;
            v71 = v68[1];
            if (v5)
            {
              v72 = GetAliasStream2(v5, v70);
              if (v72)
              {
                v70 = *v72;
              }

              else
              {
                v70 = 0;
              }
            }

            *v69 = v70;
            v69[1] = v71;
          }

          v68 += 2;
          --v67;
        }

        while (v67);
        v231[0] = v68;
      }

      else
      {
        v43 = 0;
      }

      v96 = *v68;
      v94 = v68 + 1;
      v95 = v96;
      v231[0] = v94;
      v202 = v96;
      if (v96)
      {
        v228 = v7[64];
        do
        {
          v97 = v7[64];
          v7[64] = v97 + 2;
          v98 = *v94;
          v99 = v94[1];
          v94 += 2;
          v231[0] = v94;
          if (v6)
          {
            if (v5)
            {
              v100 = GetAliasStream2(v5, v98);
              if (v100)
              {
                v98 = *v100;
              }

              else
              {
                v98 = 0;
              }
            }

            *v97 = v98;
            v97[1] = v99;
          }

          --v95;
        }

        while (v95);
      }

      else
      {
        v228 = 0;
      }

      v48 = *v94;
      v101 = v94[1];
      v51 = v94[2];
      v49 = v94[3];
      v56 = v94[5];
      v219 = v94[4];
      v42 = *(v94 + 48);
      v59 = *(v94 + 56);
      v102 = *(v94 + 64);
      v55 = v94[9];
      v58 = *(v94 + 80);
      v57 = *(v94 + 88);
      v47 = (v94 + 13);
      v231[0] = v94 + 13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_109;
      }

      v206 = v102;
      v216 = v101;
      v209 = *(v94 + 96);
      if (!v5)
      {
        v50 = v202;
LABEL_141:
        v52 = v51 >> 8;
        v53 = v51 >> 16;
        v54 = v51 & 0xFFFFFFFFFF000000;
        goto LABEL_142;
      }

      v181 = v59;
      v195 = v58;
      v197 = v57;
      v199 = v56;
      v103 = v55;
      v104 = v42;
      v105 = v44;
      v106 = v51;
      v107 = v48;
      v108 = GetAliasStream2(v5, v49);
      v50 = v202;
      if (v108)
      {
        v49 = *v108;
      }

      else
      {
        v49 = 0;
      }

      v48 = v107;
      v51 = v106;
      v44 = v105;
      v7 = a3;
      v42 = v104;
      v55 = v103;
    }

    v56 = v199;
    v58 = v195;
    v57 = v197;
    v59 = v181;
    goto LABEL_141;
  }

  v147 = 0;
LABEL_186:
  v169 = v147;
  if (v10 <= 0x38)
  {
    LODWORD(v148) = 0;
    v8 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LODWORD(v155) = 1;
  }

  else
  {
    v8 = *v231[0];
    LODWORD(v148) = *(v231[0] + 2);
    LOBYTE(v14) = *(v231[0] + 16);
    LOBYTE(v13) = *(v231[0] + 24);
    LODWORD(v155) = *(v231[0] + 8);
  }

  v156 = v7[44];
  v7[44] = v156 + 104;
  if (v6)
  {
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    LODWORD(v9) = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_201:
    v152 = v167;
LABEL_221:
    *v156 = v169;
    *(v156 + 8) = v185;
    *(v156 + 16) = v148;
    *(v156 + 20) = v155;
    *(v156 + 24) = v8;
    *(v156 + 28) = v13;
    *(v156 + 29) = v14;
    *(v156 + 30) = v15;
    *(v156 + 32) = v16;
    *(v156 + 40) = v17;
    *(v156 + 48) = v18;
    *(v156 + 56) = v19;
    *(v156 + 64) = v20;
    *(v156 + 72) = v21 | (v9 << 32);
    *(v156 + 80) = (v24 << 16) | (v25 << 24) | (v23 << 8) | v22;
    *(v156 + 84) = v26;
    *(v156 + 85) = v27;
    *(v156 + 86) = v28;
    *(v156 + 87) = v29;
    *(v156 + 88) = v230;
    *(v156 + 96) = v166;
    *(v156 + 97) = v152;
    *(v156 + 102) = 0;
    *(v156 + 98) = 0;
  }
}

double DecodeDYIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v48 = *MEMORY[0x277D85DE8];
  result = 0.0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = *a1;
  v37 = *(a1 + 8);
  v8 = *(a1 + 32);
  WORD6(v42) = *(a1 + 24);
  HIWORD(v42) = v8;
  v9 = *(a1 + 48);
  LOWORD(v43) = *(a1 + 40);
  v10 = *(a1 + 64);
  WORD1(v43) = *(a1 + 56);
  WORD2(v43) = v10;
  v11 = *(a1 + 80);
  *&v42 = __PAIR64__(*(a1 + 72), v9);
  v12 = (a1 + 88);
  BYTE6(v43) = v11;
  v13 = v11;
  if (v11)
  {
    v14 = &v38 + 6;
    do
    {
      v15 = v12[1];
      *(v14 - 4) = *v12;
      *(v14 - 3) = v15;
      v16 = v12[3];
      *(v14 - 2) = v12[2];
      *(v14 - 3) = v16;
      v17 = v12[5];
      *(v14 - 1) = v12[4];
      v12 += 6;
      *v14 = v17;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  DWORD2(v42) = *v12;
  if (v7 <= 0x29)
  {
    v20 = *(&v43 + 1);
    v18 = v44;
  }

  else
  {
    v18 = v12[1];
    v19 = v12 + 2;
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v7 >= 0x2E)
    {
      if (v18)
      {
        v21 = *(a3 + 592);
      }

      else
      {
        v21 = 0;
      }

      *(a3 + 592) += v18;
      if (a4)
      {
        memcpy(v21, v20, v18);
      }

      goto LABEL_30;
    }
  }

  if (!v20)
  {
    goto LABEL_29;
  }

  error = 0;
  v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v20 length:v18 freeWhenDone:0];
  v23 = CFPropertyListCreateWithData(0, v22, 0, 0, &error);
  if (error)
  {
    v24 = CFErrorCopyDescription(error);
    v25 = v24;
    if (s_logUsingOsLog == 1)
    {
      v26 = gt_tagged_log(3u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
        *buf = 136315138;
        v47 = CStringPtr;
        _os_log_error_impl(&dword_24D764000, v26, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
      }
    }

    else
    {
      v28 = *MEMORY[0x277D85DF8];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"warning: %s", CFStringGetCStringPtr(v24, 0x8000100u)];
      fprintf(v28, "%s\n", [v26 UTF8String]);
    }

    CFRelease(v25);
    CFRelease(error);
  }

  if (v23)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:0];
    v31 = [v30 bytes];
    v32 = [v30 length];
    v18 = v32;
    if (v32)
    {
      v21 = *(a3 + 592);
    }

    else
    {
      v21 = 0;
    }

    *(a3 + 592) += v32;
    if (a4)
    {
      memcpy(v21, v31, v32);
    }

    objc_autoreleasePoolPop(v29);
  }

  else
  {
LABEL_29:
    v21 = 0;
    v18 = 0;
  }

LABEL_30:
  *(&v43 + 1) = v21;
  v44 = v18;
  v33 = *(a3 + 552);
  *(a3 + 552) = v33 + 120;
  if (a4)
  {
    v34 = v42;
    *(v33 + 64) = v41;
    *(v33 + 80) = v34;
    *(v33 + 96) = v43;
    *(v33 + 112) = v44;
    v35 = v38;
    *v33 = v37;
    *(v33 + 16) = v35;
    result = *&v39;
    v36 = v40;
    *(v33 + 32) = v39;
    *(v33 + 48) = v36;
  }

  return result;
}

size_t DecodeDYMTLDeviceDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  result = strlen((a1 + 16));
  v12 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v13 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v56 = *(v12 + 8);
  v57 = *(v12 + 4);
  v55 = *(v12 + 12);
  v15 = v12 + 40;
  v58 = v12[32];
  if (v8 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v54 = 0;
  }

  else
  {
    v19 = &v15[strlen(v15) & 0xFFFFFFFFFFFFFFF8];
    v20 = a4;
    if (*v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v22 = v14;
    v23 = v8;
    v24 = v7;
    v7 = &v19[(strlen(v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    v25 = (v7 + 8);
    if (v19[8])
    {
      v17 = v19 + 8;
    }

    else
    {
      v17 = 0;
    }

    result = strlen((v7 + 8));
    v13 = *(a1 + 16);
    v26 = &v25[result & 0xFFFFFFFFFFFFFFF8];
    v27 = *(v7 + 8);
    LOBYTE(v7) = v24;
    LOBYTE(v8) = v23;
    v14 = v22;
    v16 = v21;
    a4 = v20;
    if (v27)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    v15 = v26 + 24;
    LOBYTE(v54) = v26[16];
    BYTE4(v54) = v26[8];
  }

  if (v7 < 0xCu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v52 = 0u;
    v49 = 0u;
    v59 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v52 = *v15;
  if (v7 < 0xFu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    goto LABEL_25;
  }

  v53 = v15[16];
  if (v7 < 0x19u)
  {
    v47 = 0;
    v50 = 0;
LABEL_25:
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v59 = 0u;
    v49 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v59 = 0u;
  if (*(v15 + 3) == -1)
  {
    v51 = 0;
    v28 = (v15 + 32);
    v49 = 0uLL;
  }

  else
  {
    v11.i64[0] = *(v15 + 3);
    v49 = vuzp1q_s16(vuzp1q_s32(vzip1q_s64(v11, *(v15 + 2)), vextq_s8(*(v15 + 2), *(v15 + 3), 8uLL)), vuzp1q_s32(vzip1q_s64(vdupq_laneq_s64(*(v15 + 3), 1), *(v15 + 4)), *(v15 + 72)));
    WORD2(v51) = *(v15 + 44);
    v28 = (v15 + 104);
    LOWORD(v51) = *(v15 + 48);
  }

  if (v7 < 0x1Cu)
  {
    v47 = 0;
    v50 = 0;
    goto LABEL_32;
  }

  v50 = *v28;
  if (v7 == 28)
  {
    v47 = 0;
LABEL_32:
    v48 = 0;
    goto LABEL_33;
  }

  v48 = v28[8];
  if (v7 < 0x2Cu)
  {
    v47 = 0;
LABEL_33:
    v29 = 0;
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_39:
    v30 = (a3 + 592);
    v31 = *(a3 + 592);
    goto LABEL_40;
  }

  v47 = *(v28 + 2);
  if (v7 < 0x35u)
  {
    goto LABEL_33;
  }

  v59 = *(v28 + 24);
  v29 = v28[40];
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_34:
  result = strlen(v14);
  v30 = (a3 + 592);
  v31 = *(a3 + 592);
  v32 = result + 1;
  if (result != -1)
  {
    v33 = *(a3 + 592);
    goto LABEL_41;
  }

LABEL_40:
  v32 = 0;
  v33 = 0;
LABEL_41:
  *v30 = v31 + v32;
  if (a4)
  {
    result = memcpy(v33, v14, v32);
  }

  if (v16)
  {
    result = strlen(v16);
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
    v36 = result + 1;
    if (result != -1)
    {
      v37 = *(a3 + 592);
      goto LABEL_48;
    }
  }

  else
  {
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
  }

  v36 = 0;
  v37 = 0;
LABEL_48:
  *v34 = v35 + v36;
  if (a4)
  {
    result = memcpy(v37, v16, v36);
  }

  if (v17)
  {
    result = strlen(v17);
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
    v40 = result + 1;
    if (result != -1)
    {
      v41 = *(a3 + 592);
      goto LABEL_55;
    }
  }

  else
  {
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
  }

  v40 = 0;
  v41 = 0;
LABEL_55:
  *v38 = v39 + v40;
  if (a4)
  {
    result = memcpy(v41, v17, v40);
  }

  if (v18)
  {
    result = strlen(v18);
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
    v44 = result + 1;
    if (result != -1)
    {
      v45 = *(a3 + 592);
      goto LABEL_62;
    }
  }

  else
  {
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
  }

  v44 = 0;
  v45 = 0;
LABEL_62:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v18, v44);
    v46 = *(a3 + 480);
    *(a3 + 480) = v46 + 112;
    *v46 = v52;
    *(v46 + 16) = v47;
    *(v46 + 24) = v59;
    *(v46 + 40) = v49;
    *(v46 + 56) = WORD2(v51);
    *(v46 + 58) = v51;
    *(v46 + 60) = 0;
    *(v46 + 64) = v33;
    *(v46 + 72) = v37;
    *(v46 + 80) = v41;
    *(v46 + 88) = v45;
    *(v46 + 96) = v57;
    *(v46 + 98) = v56;
    *(v46 + 100) = v55;
    *(v46 + 102) = v8;
    *(v46 + 103) = v50;
    *(v46 + 104) = v7;
    *(v46 + 105) = v58;
    *(v46 + 106) = BYTE4(v54);
    *(v46 + 107) = v54;
    *(v46 + 108) = v53;
    *(v46 + 109) = v48;
    *(v46 + 110) = v29;
    *(v46 + 111) = 0;
  }

  else
  {
    *(a3 + 480) += 112;
  }

  return result;
}

size_t DecodeDYMTLCounterSampleBufferDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = (a1 + 8);
  v8 = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __s = v10;
  v11 = v8 + 8 + (strlen((v8 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v53 = *(v8 + 8);
  if (*(v8 + 8))
  {
    v12 = (v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  v55 = v12;
  v13 = *(v11 + 16);
  v14 = (v11 + 24);
  v52 = v13;
  if (v13)
  {
    v51 = a3[70];
    while (1)
    {
      v15 = &v14[strlen(v14) & 0xFFFFFFFFFFFFFFF8];
      v16 = v15 + 8;
      v17 = *v14;
      if (*v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = strlen(v15 + 8);
      v20 = *(v15 + 8);
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = strlen(v18);
        v23 = a3[74];
        v24 = v22 + 1;
        if (v22 != -1)
        {
          v25 = a3[74];
          goto LABEL_20;
        }
      }

      else
      {
        v23 = a3[74];
      }

      v24 = 0;
      v25 = 0;
LABEL_20:
      a3[74] = v23 + v24;
      if (a4)
      {
        memcpy(v25, v18, v24);
      }

      if (!v20)
      {
        v27 = a3[74];
LABEL_26:
        v28 = 0;
        v29 = 0;
        goto LABEL_27;
      }

      v26 = strlen(v21);
      v27 = a3[74];
      v28 = v26 + 1;
      if (v26 == -1)
      {
        goto LABEL_26;
      }

      v29 = a3[74];
LABEL_27:
      a3[74] = v27 + v28;
      if (a4)
      {
        memcpy(v29, v21, v28);
        v30 = a3[70];
        a3[70] = v30 + 2;
        *v30 = v25;
        v30[1] = v29;
      }

      else
      {
        a3[70] += 16;
      }

      v14 = &v16[(v19 & 0xFFFFFFFFFFFFFFF8) + 8];
      if (!--v13)
      {
        goto LABEL_33;
      }
    }
  }

  v51 = 0;
LABEL_33:
  result = strlen(v14);
  v32 = &v14[result & 0xFFFFFFFFFFFFFFF8];
  v33 = *v14;
  if (*v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v32 + 1);
  v36 = *(v32 + 2);
  if (v9)
  {
    result = strlen(__s);
    v37 = a3 + 74;
    v38 = a3[74];
    v39 = result + 1;
    if (result != -1)
    {
      v40 = a3[74];
      v41 = v55;
      goto LABEL_41;
    }
  }

  else
  {
    v37 = a3 + 74;
    v38 = a3[74];
  }

  v41 = v55;
  v39 = 0;
  v40 = 0;
LABEL_41:
  *v37 = v38 + v39;
  if (a4)
  {
    result = memcpy(v40, __s, v39);
  }

  if (v53)
  {
    result = strlen(v41);
    v42 = a3 + 74;
    v43 = a3[74];
    v44 = result + 1;
    if (result != -1)
    {
      v45 = a3[74];
      goto LABEL_48;
    }
  }

  else
  {
    v42 = a3 + 74;
    v43 = a3[74];
  }

  v44 = 0;
  v45 = 0;
LABEL_48:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v41, v44);
  }

  if (v33)
  {
    result = strlen(v34);
    v46 = a3 + 74;
    v47 = a3[74];
    v48 = result + 1;
    if (result != -1)
    {
      v49 = a3[74];
      goto LABEL_55;
    }
  }

  else
  {
    v46 = a3 + 74;
    v47 = a3[74];
  }

  v48 = 0;
  v49 = 0;
LABEL_55:
  *v46 = v47 + v48;
  if (a4)
  {
    result = memcpy(v49, v34, v48);
    v50 = a3[55];
    a3[55] = v50 + 48;
    *v50 = v49;
    *(v50 + 8) = v40;
    *(v50 + 16) = v45;
    *(v50 + 24) = v51;
    *(v50 + 32) = v52;
    *(v50 + 40) = v36;
    *(v50 + 44) = v35;
    *(v50 + 45) = 0;
    *(v50 + 47) = 0;
  }

  else
  {
    a3[55] += 48;
  }

  return result;
}

uint64_t DecodeDYMTLImageFilterFunctionInfoSPI(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *(a1 + 8);
  if (result)
  {
    v6 = 0;
    v7 = (a1 + 16);
    do
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v7 += 16;
      v10 = *(a3 + 496);
      if (v9)
      {
        v11 = v10 + 24;
        v12 = v9;
        do
        {
          if (a4)
          {
            v13 = *(v7 + 2);
            *(v11 - 24) = *v7;
            *(v11 - 8) = v13;
          }

          v7 += 24;
          *(a3 + 496) = v11;
          v11 += 24;
          --v12;
        }

        while (v12);
      }

      v14 = *(a3 + 368);
      if (a4)
      {
        *v14 = v8;
        *(v14 + 4) = 0;
        *(v14 + 1) = 0;
        *(v14 + 8) = v9;
        *(v14 + 16) = v10;
        v14 = *(a3 + 368);
      }

      *(a3 + 368) = v14 + 24;
      ++v6;
    }

    while (v6 != result);
  }

  return result;
}

void DecodeDYMTLStitchedLibraryDescriptor(uint64_t a1, uint64_t a2, unsigned __int8 **a3, apr_allocator_t *a4, uint64_t a5)
{
  v6 = a4;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v9 = newpool;
  v12 = apr_hash_make(newpool);
  v13 = (a1 + 8);
  v14 = *a1;
  v81[0] = (a1 + 8);
  v75 = 0;
  v74 = 0;
  if (v14 < 0x4F)
  {
    LOBYTE(v15) = 4;
    goto LABEL_10;
  }

  v15 = *(a1 + 24);
  v13 = (a1 + 32);
  v81[0] = (a1 + 32);
  if (v14 <= 0x51)
  {
LABEL_10:
    LOBYTE(v80) = v15;
    *(&v77 + 1) = 0;
    *(&v78 + 1) = 0;
    goto LABEL_11;
  }

  v16 = *(a1 + 56);
  LOBYTE(v80) = *(a1 + 48);
  v13 = (a1 + 64);
  v81[0] = (a1 + 64);
  *(&v78 + 1) = v16;
  v17 = a3[67];
  a3[67] = &v17[56 * v16];
  if (v16)
  {
    v18 = a5;
    v19 = 0;
    *(&v77 + 1) = v17;
    do
    {
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v64[0] = v81;
      v64[1] = &v77;
      v64[2] = a3;
      v64[3] = v12;
      v65 = v14;
      v66 = v6;
      v67 = 0;
      v68 = 0;
      DecodeDYMTLFunctionStitchingNode(&v69, v64, v73, v10, v11);
      if (v6)
      {
        v20 = v69;
        v21 = v70;
        v22 = v71;
        *(v17 + 6) = v72;
        *(v17 + 1) = v21;
        *(v17 + 2) = v22;
        *v17 = v20;
        v17 += 56;
      }

      ++v19;
    }

    while (v19 < *(&v78 + 1));
    v13 = v81[0];
    a5 = v18;
  }

  else
  {
    *(&v77 + 1) = 0;
  }

LABEL_11:
  v24 = *v13;
  v23 = v13 + 8;
  v81[0] = v23;
  *&v79 = v24;
  if (v24)
  {
    v59 = v9;
    v25 = 0;
    *&v77 = a3[66];
    while (1)
    {
      v63 = v25;
      v26 = v81[0];
      v60 = *v81[0];
      v81[0] += 8;
      v30 = &v81[0][(strlen(v81[0]) & 0xFFFFFFFFFFFFFFF8) + 8];
      v81[0] = v30;
      v31 = *(v26 + 8);
      v32 = v26[8] ? v26 + 8 : 0;
      if (!v31)
      {
        break;
      }

      v33 = strlen(v32);
      v34 = a3[74];
      v35 = v33 + 1;
      if (v33 == -1)
      {
        goto LABEL_20;
      }

      __dst = a3[74];
LABEL_21:
      a3[74] = &v34[v35];
      if (v6)
      {
        memcpy(__dst, v32, v35);
        v30 = v81[0];
      }

      v36 = *v30;
      v81[0] = v30 + 8;
      v37 = a3[72];
      a3[72] = &v37[v36];
      v38 = v36;
      v61 = v37;
      if (v36)
      {
        do
        {
          *&v69 = v81;
          *(&v69 + 1) = &v77;
          *&v70 = a3;
          *(&v70 + 1) = v12;
          LODWORD(v71) = v14;
          BYTE4(v71) = v6;
          *(&v71 + 5) = v74;
          BYTE7(v71) = v75;
          DYMTLFunctionStitchingFunctionNodeID = GetDYMTLFunctionStitchingFunctionNodeID(&v69, v27, v35, v28, v29);
          if (v6)
          {
            *v37++ = DYMTLFunctionStitchingFunctionNodeID;
          }

          --v38;
        }

        while (v38);
        v40 = v61;
      }

      else
      {
        v40 = 0;
      }

      *&v69 = v81;
      *(&v69 + 1) = &v77;
      *&v70 = a3;
      *(&v70 + 1) = v12;
      LODWORD(v71) = v14;
      BYTE4(v71) = v6;
      *(&v71 + 5) = v74;
      BYTE7(v71) = v75;
      DYMTLFunctionStitchingNodeID = GetDYMTLFunctionStitchingNodeID(&v69, v27, v35, v28, v29);
      v42 = v81[0];
      v43 = *v81[0];
      v81[0] += 8;
      v44 = a3[68];
      if (v43)
      {
        v45 = v44 + 8;
        v46 = v42 + 16;
        v47 = v43;
        do
        {
          v48 = *(v46 - 1);
          v81[0] = v46;
          if (v6)
          {
            *(v45 - 8) = v48;
          }

          v46 += 8;
          a3[68] = v45;
          v45 += 8;
          --v47;
        }

        while (v47);
      }

      if (v6)
      {
        v49 = a3[66];
        *v49 = __dst;
        *(v49 + 1) = v40;
        *(v49 + 2) = v36;
        *(v49 + 3) = DYMTLFunctionStitchingNodeID;
        *(v49 + 4) = v44;
        *(v49 + 5) = v43;
        v49[48] = v60;
        *(v49 + 49) = 0;
        *(v49 + 13) = 0;
      }

      a3[66] += 56;
      v25 = v63 + 1;
      if (v63 + 1 >= v79)
      {
        v23 = v81[0];
        v9 = v59;
        goto LABEL_39;
      }
    }

    v34 = a3[74];
LABEL_20:
    v35 = 0;
    __dst = 0;
    goto LABEL_21;
  }

  *&v77 = 0;
LABEL_39:
  v50 = *v23;
  v81[0] = v23 + 8;
  *(&v79 + 1) = v50;
  if (!v50)
  {
    *&v78 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v51 = 0;
  v52 = a3[72];
  *&v78 = v52;
  do
  {
    v53 = *v81[0];
    v81[0] += 8;
    if (v6)
    {
      if (a5)
      {
        AliasStream2 = GetAliasStream2(a5, v53);
        if (AliasStream2)
        {
          v53 = *AliasStream2;
        }

        else
        {
          v53 = 0;
        }
      }

      v52 = a3[72];
      *v52 = v53;
      v50 = *(&v79 + 1);
    }

    a3[72] = ++v52;
    ++v51;
  }

  while (v51 < v50);
  if (v6)
  {
LABEL_49:
    v55 = a3[47];
    v56 = v77;
    v57 = v78;
    v58 = v79;
    *(v55 + 6) = v80;
    *(v55 + 1) = v57;
    *(v55 + 2) = v58;
    *v55 = v56;
  }

LABEL_50:
  a3[47] += 56;
  apr_pool_destroy(v9);
}

size_t DecodeDYMTLFunctionStitchingNode(size_t result, unsigned __int8 ***a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v8 = **a2;
  v10 = *v8;
  v9 = v10;
  **a2 = v8 + 8;
  *result = v10;
  if (v10 <= 4)
  {
    if ((v9 - 1) >= 2)
    {
      if (v9 != 3 && v9 != 4)
      {
        return result;
      }

LABEL_7:
      v11 = **a2;
      v12 = *v11;
      **a2 = (v11 + 1);
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_10;
  }

  if ((v9 - 6) < 4)
  {
    goto LABEL_7;
  }

  if (v9 == 5)
  {
    v14 = **a2;
    v15 = *v14;
    **a2 = (v14 + 1);
    *(result + 16) = v15;
    v16 = **a2;
    v17 = *v16;
    **a2 = (v16 + 1);
    *(result + 8) = v17;
    v18 = **a2;
    v19 = *v18;
    **a2 = (v18 + 1);
    *(result + 18) = v19;
    return result;
  }

  if (v9 == 12)
  {
LABEL_10:
    v22 = v5;
    v23 = v6;
    v13 = *(a2 + 1);
    v20[0] = *a2;
    v20[1] = v13;
    v21 = a2[4];
    return DecodeDYMTLFunctionStitchingFunctionNode(result, v20, v9, a3);
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingNodeID(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 8) < 0x52u)
  {
    v15 = 0;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v8 = a1[1];
    v10 = *a1;
    v11 = v8;
    v12 = *(a1 + 4);
    DecodeDYMTLFunctionStitchingNode(v13, &v10, &v15, a4, a5);
    v9 = a1[1];
    v10 = *a1;
    v11 = v9;
    v12 = *(a1 + 4);
    return AppendNodeToDescriptor(&v10, v13, v15);
  }

  else
  {
    v6 = **a1;
    result = *v6;
    **a1 = v6 + 1;
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingFunctionNodeID(unsigned __int8 ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 8) < 0x52u)
  {
    v17 = 0;
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    v8 = **a1;
    v9 = *v8;
    **a1 = v8 + 8;
    v10 = *(a1 + 1);
    v12 = *a1;
    v13 = v10;
    v14 = a1[4];
    DecodeDYMTLFunctionStitchingFunctionNode(v15, &v12, v9, &v17);
    v11 = *(a1 + 1);
    v12 = *a1;
    v13 = v11;
    v14 = a1[4];
    return AppendNodeToDescriptor(&v12, v15, v17);
  }

  else
  {
    v6 = **a1;
    result = *v6;
    **a1 = (v6 + 8);
  }

  return result;
}

size_t DecodeDYMTLFunctionStitchingFunctionNode(uint64_t a1, const char ***a2, int a3, void *a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = a3;
  if ((*(a2 + 8) - 79) <= 2)
  {
    v6 = **a2;
    v7 = *v6;
    **a2 = v6 + 8;
    *a4 = v7;
  }

  if (a3 == 2)
  {
    v8 = **a2;
    v9 = *v8;
    **a2 = v8 + 8;
    *(a1 + 48) = v9;
  }

  v10 = **a2;
  **a2 = &v10[(strlen(v10) & 0xFFFFFFFFFFFFFFF8) + 8];
  if (!*v10)
  {
    v10 = "";
  }

  v11 = a2[2];
  v12 = *(a2 + 36);
  result = strlen(v10);
  v17 = result + 1;
  if (result == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11[74];
  }

  v11[74] = (v11[74] + v17);
  if (v12 == 1)
  {
    result = memcpy(v18, v10, v17);
  }

  *(a1 + 8) = v18;
  v19 = **a2;
  v20 = *v19;
  **a2 = v19 + 8;
  *(a1 + 32) = v20;
  v21 = a2[2];
  v22 = v21[72];
  v21[72] = &v22[v20];
  if (v20)
  {
    v23 = 0;
    *(a1 + 16) = v22;
    do
    {
      v24 = *(a2 + 1);
      v31 = *a2;
      v32 = v24;
      v33 = a2[4];
      result = GetDYMTLFunctionStitchingNodeID(&v31, v14, v17, v15, v16);
      if (*(a2 + 36) == 1)
      {
        *v22++ = result;
        v20 = *(a1 + 32);
      }

      ++v23;
    }

    while (v23 < v20);
  }

  else
  {
    *(a1 + 16) = 0;
  }

  v25 = **a2;
  v26 = *v25;
  **a2 = v25 + 8;
  *(a1 + 40) = v26;
  v27 = a2[2];
  v28 = v27[72];
  v27[72] = &v28[v26];
  if (v26)
  {
    v29 = 0;
    *(a1 + 24) = v28;
    do
    {
      v30 = *(a2 + 1);
      v31 = *a2;
      v32 = v30;
      v33 = a2[4];
      result = GetDYMTLFunctionStitchingFunctionNodeID(&v31, v14, v17, v15, v16);
      if (*(a2 + 36) == 1)
      {
        *v28++ = result;
        v26 = *(a1 + 40);
      }

      ++v29;
    }

    while (v29 < v26);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t AppendNodeToDescriptor(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v16 = a3;
  if (!*a2)
  {
    return 0;
  }

  if (a3 && (*(a1 + 32) - 79) <= 2)
  {
    entry = find_entry(*(a1 + 24), &v16, 8uLL, 0);
    if (*entry)
    {
      result = *(*entry + 32);
      if (result)
      {
        return result;
      }
    }

    v7 = *(*(a1 + 8) + 24);
    v8 = *(a1 + 24);
    v9 = apr_palloc(*v8, 8uLL);
    *v9 = v16;
    apr_hash_set(v8, v9, 8, (v7 + 1));
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v11 + 536);
  if (!*(v10 + 8))
  {
    *(v10 + 8) = v12;
  }

  *(v11 + 536) = v12 + 56;
  if (*(a1 + 36) == 1)
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[2];
    *(v12 + 48) = *(a2 + 6);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v10 = *(a1 + 8);
  }

  result = *(v10 + 24) + 1;
  *(v10 + 24) = result;
  return result;
}

void *DecodeDYMPSPluginCNNConvolutionDescriptor(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result[1];
  v6 = *(result + 4);
  v7 = *(result + 6);
  v8 = *(result + 8);
  v9 = result[5];
  v10 = result + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = *(v10 + 8);
  v16 = *(v10 + 72);
  v18 = *(v10 + 11);
  v17 = *(v10 + 12);
  v19 = *(a3 + 72);
  *(a3 + 72) = &v19[v9];
  if (a4)
  {
    if (v9)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v9)
    {
      v21 = result + 6;
    }

    else
    {
      v21 = 0;
    }

    v28 = v13;
    v29 = v11;
    v26 = v12;
    v27 = v14;
    v25 = v16;
    result = memcpy(v20, v21, v9);
    v22.i64[1] = v26.i64[1];
    v23 = vmovn_s64(v25);
    *v22.i8 = vmovn_s64(v26);
    v24 = *(a3 + 16);
    *v24 = v20;
    *(v24 + 8) = v9;
    *(v24 + 12) = v6;
    *(v24 + 16) = v7;
    *(v24 + 20) = v8;
    *(v24 + 24) = vuzp1q_s32(v29, v28);
    *(v24 + 40) = vmovn_s64(v27);
    *(v24 + 48) = v15;
    *(v24 + 52) = v5;
    v22.i16[1] = v22.i16[2];
    v22.i16[2] = v23.i16[0];
    v22.i16[3] = v23.i16[2];
    *(v24 + 53) = vmovn_s16(v22).u32[0];
    *(v24 + 57) = v18;
    *(v24 + 58) = v17;
    *(v24 + 63) = 0;
    *(v24 + 59) = 0;
  }

  *(a3 + 16) += 64;
  return result;
}

void *DecodeDYMPSPluginCNNConvolutionData(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = vmovn_s64(*(a1 + 8));
  v51 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (a1 + 40);
  v9 = (a1 + 40 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  v13 = (v10 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v13;
  v14 = v13 + 1;
  v15 = v16;
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v14 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = *v18;
  v19 = v18 + 1;
  v20 = v21;
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v19 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *v23;
  v24 = v23 + 1;
  v25 = v26;
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  __src = v27;
  v28 = (v24 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = *v28;
  v29 = v28 + 1;
  v30 = v31;
  if (!v31)
  {
    v29 = 0;
  }

  v48 = v29;
  if (v7)
  {
    result = a3[9];
  }

  else
  {
    result = 0;
  }

  a3[9] += v7;
  v52 = v6;
  v50 = result;
  if (a4)
  {
    if (v11)
    {
      v33 = v10;
    }

    else
    {
      v33 = 0;
    }

    if (v7)
    {
      v34 = v8;
    }

    else
    {
      v34 = 0;
    }

    memcpy(result, v34, v7);
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v36 = a3[8];
    }

    else
    {
      v36 = 0;
    }

    a3[8] += 4 * v35;
    v49 = v36;
    result = memcpy(v36, v33, 4 * v35);
    v6 = v52;
  }

  else
  {
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v37 = a3[8];
    }

    else
    {
      v37 = 0;
    }

    v49 = v37;
    a3[8] += 4 * v35;
  }

  if (v6.i32[0] == 2)
  {
    v39 = a3[8];
    a3[8] = v39 + 1024;
    if (a4)
    {
      result = memcpy(v39, v17, 0x400uLL);
      v6 = v52;
    }

    goto LABEL_41;
  }

  if (v6.i32[0] != 1)
  {
    v39 = 0;
LABEL_41:
    v38 = 0;
    goto LABEL_42;
  }

  if (v35)
  {
    v38 = a3[7];
  }

  else
  {
    v38 = 0;
  }

  a3[7] += 8 * v35;
  if (a4)
  {
    result = memcpy(v38, v22, 8 * v35);
    v6 = v52;
  }

  v39 = 0;
LABEL_42:
  if (!(v25 + v30))
  {
    v40 = 0;
    if (!a4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v41 = a3[8];
  v42 = &v41[4 * v35];
  a3[8] = v42;
  if (a4)
  {
    if (v35)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    memcpy(v43, __src, 4 * v35);
    if (v35)
    {
      v44 = a3[8];
    }

    else
    {
      v44 = 0;
    }

    a3[8] += 4 * v35;
    result = memcpy(v44, v48, 4 * v35);
    v6 = v52;
    v45 = a3[6];
    *v45 = v43;
    v45[1] = v44;
  }

  else
  {
    a3[8] = &v42[4 * v35];
  }

  v40 = a3[6];
  a3[6] = *&v40 + 16;
  if (a4)
  {
LABEL_55:
    v46 = a3[3];
    *v46 = v6;
    v46[1].i32[0] = v51;
    v46[1].i32[1] = 0;
    v46[2] = v50;
    v46[3] = v49;
    v46[4] = v39;
    v46[5] = v38;
    v46[6] = v40;
    v46[7].i32[0] = v7;
    v46[7].i32[1] = v11 >> 2;
  }

LABEL_56:
  a3[3] += 64;
  return result;
}

uint64_t GroupBuilder_popGroup(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  if (v4 && (v5 = *(v4 + 12), v5))
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 8);
    v8 = v5 - 1;
    *(v4 + 12) = v8;
    v9 = (v6 + v8 * v7);
  }

  else
  {
    v9 = 0;
  }

  result = gt_error_assert_add_error(a1, v9 != 0, "last != ((void*)0)");
  if ((result & 1) == 0)
  {
    v11 = *(a1 + 48);
    v12 = *v9;
    v13 = *(v11 + 24) + 24 * *v9;
    *(v13 + 4) = a2;
    *(v13 + 12) = *(v11 + 12) + ~v12;
  }

  return result;
}

int *GroupBuilder_findInclusiveRange(unsigned int a1, int *a2, unint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v4 = &v3[6 * (a1 >> 1)];
    v6 = *v4;
    v5 = v4 + 6;
    v7 = v6 > a3;
    if (v6 <= a3)
    {
      a1 += ~(a1 >> 1);
    }

    else
    {
      a1 >>= 1;
    }

    if (!v7)
    {
      v3 = v5;
    }
  }

  while (a1 > 0);
  if (v3 == a2)
  {
    return 0;
  }

  result = v3 - 6;
  while (result[1] < a3)
  {
    v9 = result[2];
    result -= 6 * v9;
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

int *GroupBuilder_findExclusiveRange(unsigned int a1, int *a2, unint64_t a3)
{
  result = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (result)
  {
    while (result[1] <= a3)
    {
      v5 = result[2];
      result -= 6 * v5;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

int *GroupBuilder_getCommandBuffer(unsigned int a1, int *a2, unint64_t a3)
{
  InclusiveRange = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (InclusiveRange)
  {
    while (1)
    {
      v4 = InclusiveRange[5];
      if ((GTFenum_isBeginCommandBuffer(v4) & 1) != 0 || GTFenum_getConstructorType(v4) == 51)
      {
        break;
      }

      v5 = InclusiveRange[2];
      InclusiveRange -= 6 * v5;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return InclusiveRange;
}

uint64_t GroupRange_encoderWithIndirectResources(uint64_t result)
{
  if (result)
  {
    do
    {
      v1 = *(result + 20);
      if (v1 > -15365)
      {
        if ((v1 + 15171) <= 6 && ((1 << (v1 + 67)) & 0x61) != 0 || v1 == -15364 || v1 == -14884)
        {
          return result;
        }
      }

      else if (v1 > -15713)
      {
        if (v1 == -15712 || v1 == -15673 || v1 == -15586)
        {
          return result;
        }
      }

      else if ((v1 + 16353) < 2 || v1 == -16014)
      {
        return result;
      }

      v8 = *(result + 8);
      result -= 24 * v8;
    }

    while (v8);
    return 0;
  }

  return result;
}

uint64_t GroupRange_encoderWithAttachments(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 20);
      v2 = (v1 + 15166) < 2 || v1 == -16353;
      if (v2 || v1 == -16351)
      {
        break;
      }

      v4 = *(result + 8);
      result -= 24 * v4;
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GetAliasStream(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  v4 = *find_entry(a1, &v6, 8uLL, 0);
  if (v4)
  {
    while (1)
    {
      v4 = v4[4];
      if (!v4)
      {
        break;
      }

      if (v4[2] <= a3)
      {
        if (v4[3] < a3)
        {
          return 0;
        }

        return v4[1];
      }
    }
  }

  return 0;
}

uint64_t GetOpenStream(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *find_entry(*(a1 + 24), &v7, 8uLL, 0);
  if (v3)
  {
    while (1)
    {
      v3 = v3[4];
      if (!v3)
      {
        break;
      }

      v4 = atomic_load((*(a1 + 16) + 80));
      if (v3[2] <= v4 && v3[3] > v4)
      {
        return v3[1];
      }
    }
  }

  return 0;
}

uint64_t GetStreamUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  result = GetOpenStream(a1, a2);
  if (!a2 || result)
  {
    if (result)
    {
      return *result;
    }
  }

  else
  {
    v6 = *(a1 + 112);
    v5 = (a1 + 112);
    v7 = atomic_load((*(v5 - 12) + 80));
    v8[0] = v6;
    v8[1] = 503;
    v9 = a2;
    v10 = v7;
    v11 = "deviceObject == 0 || stream != NULL";
    v12 = 0;
    GTError_addError(v5, v8);
    return 0;
  }

  return result;
}

void CloseStream(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(*find_entry(*(a1 + 24), a2 + 8, 8uLL, 0) + 32);
    v5 = *(a1 + 16);
    v6 = atomic_load((v5 + 80));
    *(v4 + 24) = v6;
    pthread_mutex_lock((v5 + 8));
    v7 = atomic_load((v5 + 112));
    if (v7 == 1 || v7 == 2 && (v8 = atomic_load(a2 + 7), (v8 & 0x10) != 0))
    {
      v11 = atomic_load(a2 + 7);
      v12 = v11;
      do
      {
        atomic_compare_exchange_strong(a2 + 7, &v12, v11 | 4);
        v13 = v12 == v11;
        v11 = v12;
      }

      while (!v13);

      pthread_mutex_unlock((v5 + 8));
    }

    else
    {
      v27 = 0uLL;
      *v28 = 0;
      apr_hash_set(*(v5 + 96), a2, 8, 0);
      v9 = *(*(v5 + 96) + 48);
      v10 = a2[3];
      if (atomic_fetch_add((v10 + 40), 0xFFFFFFFF) == 1)
      {
        v27 = *(v10 + 8);
        *v28 = *(v10 + 24);
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *v10 = *(v5 + 104);
        *(v5 + 104) = v10;
      }

      if (*(&v27 + 1))
      {
        v14 = atomic_load(a2 + 12);
        atomic_fetch_add(v28, v14);
        v15 = atomic_load(a2 + 13);
        atomic_fetch_add(&v28[1], v15);
        *(*(&v27 + 1) + 40) = a2[4];
      }

      else
      {
        v27 = *(a2 + 2);
        *v28 = a2[6];
      }

      a2[4] = 0;
      a2[5] = 0;
      a2[6] = 0;
      *a2 = *(v5 + 104);
      *(v5 + 104) = a2;
      pthread_mutex_unlock((v5 + 8));
      v16 = v27;
      if (v27)
      {
        v17 = *(v5 + 72);
        pthread_mutex_lock((v17 + 264));
        v18 = v17 + 16;
        do
        {
          v19 = *v16;
          if (v19 < 0x101)
          {
            v20 = 0;
          }

          else
          {
            v20 = 0;
            for (i = 256; i < v19; i *= 2)
            {
              ++v20;
            }
          }

          v22 = *(v16 + 5);
          v16[1] = 64;
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          *(v16 + 4) = v16;
          *(v16 + 6) = 0;
          *(v16 + 7) = 0;
          *(v16 + 5) = 0;
          *(v16 + 5) = *(v18 + 8 * v20);
          *(v18 + 8 * v20) = v16;
          v16 = v22;
        }

        while (v22);
        pthread_mutex_unlock((v17 + 264));
      }

      if (!v9)
      {
        pthread_mutex_destroy((v5 + 8));
        v23 = *(v5 + 72);
        v24 = MEMORY[0x277D85F48];
        if (*v23 >= 1)
        {
          v25 = 0;
          v26 = 0;
          do
          {
            MEMORY[0x253034350](*v24, *(*(v23 + 1) + v25), *(*(v23 + 1) + v25 + 8));
            ++v26;
            v25 += 16;
          }

          while (v26 < *v23);
        }

        pthread_mutex_destroy((v23 + 66));
        free(*(v23 + 1));
        MEMORY[0x253034350](*v24, v23, 328);
        apr_pool_destroy(**(v5 + 96));
        if ((shared_initialized & 1) == 0 && !--initialized && (apr_pools_shared_initialized & 1) == 0 && apr_pools_initialized && !--apr_pools_initialized)
        {
          apr_pool_destroy(global_pool);
          global_pool = 0;
          global_allocator = 0;
        }
      }
    }
  }
}

uint64_t OpenStream(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a2;
  entry = find_entry(*(a1 + 24), &v9, 8uLL, 0);
  if (*entry)
  {
    v6 = *(*entry + 32);
    v7 = atomic_load((*(a1 + 16) + 80));
    if (v6)
    {
      while (*(v6 + 40) > a3)
      {
        v6 = *(v6 + 32);
        if (!v6)
        {
          return 0;
        }
      }

      *(v6 + 16) = v7;
      return *(v6 + 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    atomic_load((*(a1 + 16) + 80));
  }

  return result;
}

uint64_t StoreBlob(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = GTTraceEncoder_storeBlob(a2, Data, v7);
  apr_pool_clear(v5);
  return v8;
}

uint64_t UnwrapMTL4RenderPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v29, 0x258uLL);
  v30 = 640;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v29, 0x92u, 1u);
  v31[1] = v10;
  v12 = v30;
  bzero(v30, 0x280uLL);
  v15 = *v9;
  v14 = (v9 + 8);
  v13 = v15;
  while (1)
  {
    v16 = *v14;
    v31[0] = v14 + 1;
    if (v16 == -1)
    {
      break;
    }

    MakeDYMTLRenderPassColorAttachmentDescriptor(v31, &v12[64 * v16], v13, 1, a1);
    v14 = v31[0];
  }

  v17 = v14[1];
  v31[0] = v14 + 2;
  v12[632] = v17;
  MakeDYMTLRenderPassDepthAttachmentDescriptor(v31, (v12 + 512), v13, 1, a1);
  v18 = v31[0];
  *(v12 + 310) = *v31[0];
  *(v12 + 75) = v18[1];
  *(v12 + 311) = v18[2];
  *(v12 + 312) = v18[3];
  v19 = v18[4];
  v31[0] = v18 + 5;
  *(v12 + 313) = v19;
  MakeDYMTLRenderPassStencilAttachmentDescriptor(v31, (v12 + 560), v13, 1, a1);
  v20 = v31[0];
  v21 = *v31[0];
  *(v12 + 154) = *v31[0];
  v22 = *(v20 + 4);
  *(v12 + 314) = v22;
  v23 = *(v20 + 8);
  *(v12 + 315) = v23;
  *(v12 + 76) = v20[3];
  v12[634] = v20[4];
  v12[596] = v20[5];
  if (v13 >= 0x67)
  {
    v12[633] = v20[6];
  }

  if (v12[632] == 255)
  {
    v12[632] = 0;
  }

  if (*(v12 + 310) == -1)
  {
    *(v12 + 310) = 0;
  }

  if (*(v12 + 311) == -1)
  {
    *(v12 + 311) = 0;
  }

  if (*(v12 + 312) == -1)
  {
    *(v12 + 312) = 0;
  }

  if (*(v12 + 313) == -1)
  {
    *(v12 + 313) = 0;
  }

  if (v21 == -1)
  {
    *(v12 + 154) = 0;
  }

  if (v22 == -1)
  {
    *(v12 + 314) = 0;
  }

  if (v23 == -1)
  {
    *(v12 + 315) = 0;
  }

  AliasStream2 = GetAliasStream2(a1, *(v12 + 75));
  if (AliasStream2)
  {
    v25 = *AliasStream2;
  }

  else
  {
    v25 = 0;
  }

  *(v12 + 75) = v25;
  v26 = GetAliasStream2(a1, *(v12 + 76));
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  *(v12 + 76) = v27;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StreamArray(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4, uint64_t a5)
{
  if (a5)
  {
    v10 = __src;
    v11 = a5;
    do
    {
      v12 = *a4++;
      *v10++ = GetStreamUniqueIdentifier(a1, v12);
      --v11;
    }

    while (v11);
  }

  return GTTraceEncoder_storeBytes(a2, __src, 8 * a5);
}

uint64_t UnwrapMTL4PipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4PipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x9Cu, 1u);
  DecodeDYMTL4PipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTL4CompilerTaskOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v9 = *(v8 + 1);
  if (v9)
  {
    v21 = 8 * v9;
  }

  v20 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x9Du, 1u);
  v11 = *(v8 + 1);
  if (v11)
  {
    v12 = 0;
    v13 = v8 + 16;
    v14 = v21;
    do
    {
      AliasStream2 = GetAliasStream2(a1, *&v13[8 * v12]);
      if (AliasStream2)
      {
        v16 = *AliasStream2;
      }

      else
      {
        v16 = 0;
      }

      *(v14 + 8 * v12++) = v16;
    }

    while (v11 != v12);
  }

  else
  {
    v14 = 0;
  }

  v17 = v20;
  *v20 = v14;
  *(v17 + 8) = v11;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

double SaveMTLComputePipelineReflection_(int *a1, uint64_t a2, unsigned int *a3)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  DecodeDYMTLComputePipelineReflection(a3, v22, 0, a1 + 16);
  v6 = PerformanceStatisticsURL(a3);
  if (v6)
  {
    FileWithFilename = GTCaptureArchive_getFileWithFilename(*a1, v6);
    v8 = FileWithFilename;
    if (FileWithFilename)
    {
      v9 = 0;
      v10 = *(FileWithFilename + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_6:
  *(&v23 + 1) += v10;
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v22, 0x78u);
  v11 = DecodeDYMTLComputePipelineReflection(a3, v22, 1, a1 + 16);
  if ((v9 & 1) == 0)
  {
    v12 = *(&v23 + 1);
    GTCaptureArchive_fillBuffer(*a1, *(a1 + 1), v6, *(&v23 + 1), *(v8 + 8), a1 + 16);
    v13 = *(v8 + 8);
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v14 = *(v11 + 24);
  if (v14)
  {
    CalculateBindingsAccess(v14, *(v11 + 92), &v18);
  }

  v15 = *(v11 + 32);
  if (v15)
  {
    CalculateBindingsAccess(v15, *(v11 + 94), &v18);
  }

  v16 = v19;
  *(v11 + 104) = v18;
  *(v11 + 120) = v16;
  result = *&v20;
  *(v11 + 136) = v20;
  *(v11 + 152) = v21;
  return result;
}

uint64_t UnwrapMTL4PipelineStageDynamicLinkingDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0xA3u, 1u);
  DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

void SaveMTLDynamicLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLDynamicLibraryInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x7Cu);
  DecodeDYMTLDynamicLibraryInfo(a3, v6, 1, (a1 + 64));
}

uint64_t UnwrapMTL4LibraryDescriptorUsingDecode(int *a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 1);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, a1 + 16);
  if (Data)
  {
    v9 = Data;
    v10 = v8;
    bzero(v23, 0x258uLL);
    DecodeDYMTL4LibraryDescriptor(v9, v10, v23, 0, a1);
    DescriptorWithCount = AllocateDescriptorWithCount(a2, v23, 0x97u, 1u);
    v12 = v23[16];
    DecodeDYMTL4LibraryDescriptor(v9, v10, v23, 1, a1);
    v13 = *(v12 + 24);
    bzero(v21, 0x258uLL);
    v14 = GTCaptureArchive_readData(*a1, *(a1 + 1), v13, v6, a1 + 16);
    v15 = v14;
    if (v14)
    {
      __dst = (strlen(v14) + 1);
      AllocateDescriptorWithCount(a2, v21, 0, 1u);
      v16 = strlen(v15);
      v17 = __dst;
      v18 = v16 + 1;
      if (v16 != -1)
      {
        v19 = __dst;
LABEL_8:
        __dst = &v17[v18];
        memcpy(v19, v15, v18);
        *(v12 + 16) = v19;
        apr_pool_clear(v6);
        return DescriptorWithCount;
      }
    }

    else
    {
      __dst = 0;
      AllocateDescriptorWithCount(a2, v21, 0, 1u);
      v17 = __dst;
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t SaveMTL4MachineLearningPipelineReflection_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v7, 0, sizeof(v7));
  DecodeDYMTL4MachineLearningPipelineReflection(a3, v7, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v7, 0xA6u);
  return DecodeDYMTL4MachineLearningPipelineReflection(a3, v7, 1, (a1 + 64));
}

void *SaveMTLRenderPipelineReflection_(int *a1, uint64_t a2, unsigned int *a3)
{
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  DecodeDYMTLRenderPipelineReflection(a3, v24, 0, a1 + 16);
  v6 = PerformanceStatisticsURL(a3);
  if (v6)
  {
    FileWithFilename = GTCaptureArchive_getFileWithFilename(*a1, v6);
    v8 = FileWithFilename;
    if (FileWithFilename)
    {
      v9 = 0;
      v10 = *(FileWithFilename + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_6:
  *(&v25 + 1) += v10;
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v24, 0x77u);
  v11 = DecodeDYMTLRenderPipelineReflection(a3, v24, 1u, a1 + 16);
  if ((v9 & 1) == 0)
  {
    v12 = *(&v25 + 1);
    GTCaptureArchive_fillBuffer(*a1, *(a1 + 1), v6, *(&v25 + 1), *(v8 + 8), a1 + 16);
    v13 = *(v8 + 8);
    *(v11 + 112) = v12;
    *(v11 + 120) = v13;
  }

  memset(v23, 0, 280);
  v14 = *(v11 + 72);
  if (v14)
  {
    CalculateBindingsAccess(v14, *(v11 + 208), v23);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    CalculateBindingsAccess(v15, *(v11 + 198), v23);
  }

  v16 = *(v11 + 32);
  if (v16)
  {
    CalculateBindingsAccess(v16, *(v11 + 200), &v23[3] + 8);
  }

  v17 = *(v11 + 40);
  if (v17)
  {
    CalculateBindingsAccess(v17, *(v11 + 204), &v23[7]);
  }

  v18 = *(v11 + 80);
  if (v18)
  {
    CalculateBindingsAccess(v18, *(v11 + 210), &v23[7]);
  }

  v19 = *(v11 + 48);
  if (v19)
  {
    CalculateBindingsAccess(v19, *(v11 + 206), &v23[10] + 8);
  }

  v20 = *(v11 + 88);
  if (v20)
  {
    CalculateBindingsAccess(v20, *(v11 + 212), &v23[10] + 8);
  }

  v21 = *(v11 + 56);
  if (v21)
  {
    CalculateBindingsAccess(v21, *(v11 + 202), &v23[14]);
  }

  return memcpy((v11 + 216), v23, 0x118uLL);
}

uint64_t UnwrapMTL4RenderPipelineDynamicLinkingDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0xA4u, 1u);
  DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTL4AccelerationStructureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4AccelerationStructureDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA8u, 1u);
  DecodeDYMTL4AccelerationStructureDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLAccelerationStructureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLAccelerationStructureDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x5Bu, 1u);
  DecodeDYMTLAccelerationStructureDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreBlobWithoutCaptureVersion(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  v9 = v8;
  if (gt_error_assert_add_error((a1 + 64), v8 > 7, "data.length >= sizeof(uint64_t)"))
  {
    return 0;
  }

  v11 = GTTraceEncoder_storeBlob(a2, Data + 8, v9 - 8);
  apr_pool_clear(v6);
  return v11;
}

uint64_t StreamNSArray(uint64_t a1, uint64_t a2, char *a3)
{
  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), a3, **(a1 + 8), (a1 + 64));
  v7 = v6;
  if (gt_error_assert_add_error((a1 + 64), v6 > 0xF, "sizeof(uint64_t) * 2 <= data.length"))
  {
    return 0;
  }

  v8 = *(Data + 1);
  if (gt_error_assert_add_error((a1 + 64), v7 == ((v8 << 32) + 0x200000000) >> 29, "sizeof(uint64_t) * (2 + count) == data.length"))
  {
    return 0;
  }

  bzero(v16, 0x258uLL);
  v17 = ((v8 << 32) + 0x100000000) >> 29;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v16, 0, 1u);
  v11 = v17;
  *v17 = v8;
  if (v8 >= 1)
  {
    v12 = (Data + 16);
    v13 = (v11 + 8);
    v14 = v8 & 0x7FFFFFFF;
    do
    {
      v15 = *v12++;
      *v13++ = GetStreamUniqueIdentifier(a1, v15);
      --v14;
    }

    while (v14);
  }

  return DescriptorWithCount;
}

uint64_t UnwrapMTLComputePipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLComputePipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x3Du, 1u);
  DecodeDYMTLComputePipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLStitchedLibraryDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLStitchedLibraryDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x66u, 1u);
  DecodeDYMTLStitchedLibraryDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x32u, 1u);
  DecodeDYMTLRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLTileRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLTileRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x39u, 1u);
  DecodeDYMTLTileRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(&v17, 0x250uLL);
  v16 = 56;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, &v16, 0x29u, 1u);
  v8 = v16;
  *(v16 + 48) = 512;
  *v8 = GTMTLTextureDescriptorDefaults;
  *(v8 + 16) = unk_24DA92D40;
  *(v8 + 32) = xmmword_24DA92D50;
  v9 = *Data;
  *(v8 + 49) = *(Data + 1);
  *(v8 + 34) = *(Data + 2);
  *(v8 + 24) = *(Data + 3);
  *(v8 + 32) = *(Data + 4);
  *(v8 + 30) = *(Data + 5);
  *(v8 + 45) = *(Data + 6);
  *(v8 + 47) = *(Data + 7);
  *(v8 + 28) = *(Data + 8);
  v10 = 72;
  if (v9 < 3)
  {
    v10 = 80;
  }

  v11 = &Data[v10];
  *(v8 + 43) = *v11;
  *(v8 + 44) = *(v11 + 1);
  if (v9)
  {
    *(v8 + 20) = *(v11 + 2);
    if (v9 <= 3)
    {
      if (v9 == 3)
      {
        *(v8 + 36) = *(v11 + 16) | (16 * *(v11 + 12));
      }
    }

    else
    {
      v12 = v11[24];
      *(v8 + 46) = v12;
      v13 = *(v11 + 10);
      v14 = v13 | (16 * *(v11 + 8));
      *(v8 + 36) = v13 | (16 * *(v11 + 16));
      if (v9 >= 0x15)
      {
        *(v8 + 38) = *(v11 + 6);
        *(v8 + 40) = *(v11 + 7);
        if (v9 != 21)
        {
          *(v8 + 8) = *(v11 + 8);
          *(v8 + 42) = *(v11 + 9);
          if (v9 >= 0x23)
          {
            *(v8 + 16) = v11[80] | (*(v11 + 22) << 8) | (*(v11 + 24) << 16) | (*(v11 + 26) << 24);
            if (v9 >= 0x27)
            {
              *(v8 + 16) = *(v11 + 14);
              if (v9 >= 0x2A)
              {
                *(v8 + 36) = v14 | (*(v11 + 60) << 8);
                *v8 = *(v11 + 16);
                *(v8 + 48) = *(v11 + 17);
                *(v8 + 50) = *(v11 + 18);
                if (v9 >= 0x31)
                {
                  *(v8 + 41) = *(v11 + 19);
                  *(v8 + 39) = *(v11 + 20);
                }
              }
            }
          }
        }
      }

      if (v12 == 255)
      {
        *(v8 + 46) = 0;
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLTensorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v31, 0x258uLL);
  v32 = 288;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v31, 0x94u, 1u);
  v8 = v32;
  v32 += 288;
  v9 = *Data;
  *(v8 + 283) = *(Data + 1);
  memset(&v33[8], 0, 128);
  v10 = *(Data + 2);
  v11 = (Data + 24);
  *v33 = v10;
  if (v10)
  {
    v12 = &v33[8];
    v13 = v10 - 1;
    if (v13 >= 0xF)
    {
      v13 = 15;
    }

    v14 = v13 + 1;
    do
    {
      v15 = *v11++;
      *v12++ = v15;
      --v14;
    }

    while (v14);
  }

  v16 = *&v33[112];
  *(v8 + 96) = *&v33[96];
  *(v8 + 112) = v16;
  *(v8 + 128) = *&v33[128];
  v17 = *&v33[48];
  *(v8 + 32) = *&v33[32];
  *(v8 + 48) = v17;
  v18 = *&v33[80];
  *(v8 + 64) = *&v33[64];
  *(v8 + 80) = v18;
  v19 = *&v33[16];
  *v8 = *v33;
  *(v8 + 16) = v19;
  *(v8 + 287) = *v11;
  if (v9 >= 0x68)
  {
    *(v8 + 284) = v11[1];
    *(v8 + 272) = v11[2];
    if (v9 != 104)
    {
      *(v8 + 282) = v11[3];
      *(v8 + 285) = v11[4];
      *(v8 + 280) = v11[5];
      *(v8 + 286) = v11[6];
      memset(&v33[8], 0, 128);
      v20 = v11[7];
      *v33 = v20;
      if (v20)
      {
        v21 = &v33[8];
        v22 = v11 + 8;
        v23 = v20 - 1;
        if (v23 >= 0xF)
        {
          v23 = 15;
        }

        v24 = v23 + 1;
        do
        {
          v25 = *v22++;
          *v21++ = v25;
          --v24;
        }

        while (v24);
      }

      v26 = *&v33[64];
      *(v8 + 216) = *&v33[80];
      v27 = *&v33[112];
      *(v8 + 232) = *&v33[96];
      *(v8 + 248) = v27;
      v28 = *v33;
      *(v8 + 152) = *&v33[16];
      v29 = *&v33[48];
      *(v8 + 168) = *&v33[32];
      *(v8 + 184) = v29;
      *(v8 + 200) = v26;
      *(v8 + 264) = *&v33[128];
      *(v8 + 136) = v28;
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLAccelerationStructurePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x86u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLBlitPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x24u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLComputePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v20, 0x258uLL);
  v21 = 104;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v20, 0x26u, 1u);
  v10 = v21;
  *v21 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  v11 = *(v8 + 1);
  v12 = (v8 + 16);
  *(v10 + 96) = v11;
  while (1)
  {
    v13 = *v12;
    if (*v12 == -1)
    {
      break;
    }

    v14 = v12[2];
    v15 = v12[3];
    AliasStream2 = GetAliasStream2(a1, v12[1]);
    if (AliasStream2)
    {
      v17 = *AliasStream2;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v10 + 24 * v13);
    *v18 = v15;
    v18[1] = v17;
    v18[2] = v14;
    v12 += 4;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPassDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x22u, 1u);
  DecodeDYMTLRenderPassDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLResourceStatePassDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v19, 0x258uLL);
  v20 = 96;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v19, 0x28u, 1u);
  v10 = v20;
  *v20 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  for (i = (v8 + 8); ; i += 4)
  {
    v12 = *i;
    if (*i == -1)
    {
      break;
    }

    v13 = i[2];
    v14 = i[3];
    AliasStream2 = GetAliasStream2(a1, i[1]);
    if (AliasStream2)
    {
      v16 = *AliasStream2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 3 * v12;
    *v17 = v14;
    v17[1] = v16;
    v17[2] = v13;
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLCommandBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v15, 0x258uLL);
  v16 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v15, 0x4Eu, 1u);
  v10 = v16;
  *v16 = GTMTLCommandBufferDescriptorDefaults;
  *(v10 + 8) = *(v8 + 1);
  *(v10 + 9) = *(v8 + 2);
  v11 = *(v8 + 3);
  *v10 = v11;
  AliasStream2 = GetAliasStream2(a1, v11);
  if (AliasStream2)
  {
    v13 = *AliasStream2;
  }

  else
  {
    v13 = 0;
  }

  *v10 = v13;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLIntersectionFunctionTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x5Cu, 1u);
  v8 = v12;
  v9 = *Data;
  *(v12 + 8) = *(Data + 1);
  if (v9 >= 0x36)
  {
    *v8 = *(Data + 2);
    *(v8 + 12) = *(Data + 3);
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLVisibleFunctionTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 24;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x52u, 1u);
  v8 = v12;
  v9 = *Data;
  *v12 = *(Data + 1);
  if (v9 >= 0x2F)
  {
    *(v8 + 8) = *(Data + 2);
    if (v9 >= 0x36)
    {
      *(v8 + 16) = *(Data + 3);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLFunctionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLFunctionDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x51u, 1u);
  DecodeDYMTLFunctionDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

void SaveMTLFunctionInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLFunctionInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x7Bu);
  DecodeDYMTLFunctionInfo(a3, v6, 1, (a1 + 64));
}

uint64_t StoreMTLAccelerationStructureAllocationDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x87u, 1u);
  v8 = v11;
  *(v11 + 9) = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *v8 = *(Data + 3);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4ArgumentTableDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4ArgumentTableDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Fu, 1u);
  DecodeDYMTL4ArgumentTableDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x2Au, 1u);
  v8 = v11;
  *v11 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *v8 = *(Data + 1);
  *(v8 + 32) = *(Data + 2);
  *(v8 + 34) = *(Data + 6);
  *(v8 + 24) = *(Data + 8);
  *(v8 + 8) = *(Data + 9);
  *(v8 + 16) = *(Data + 10);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreIOSurfaceUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYIOSurface(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x3Fu, 1u);
  DecodeDYIOSurface(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4CommandAllocatorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4CommandAllocatorDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA7u, 1u);
  DecodeDYMTL4CommandAllocatorDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLCommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x43u, 1u);
  v8 = v12;
  *v12 = GTMTLCommandQueueDescriptorDefaults;
  v9 = *Data;
  *v8 = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *(v8 + 4) = *(Data + 3);
  *(v8 + 7) = *(Data + 4);
  if (v9 >= 0x2A)
  {
    *(v8 + 6) = *(Data + 5);
    if (v9 >= 0x51)
    {
      *(v8 + 5) = *(Data + 6);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTL4CompilerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTL4CompilerDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x98u, 1u);
  DecodeDYMTL4CompilerDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLImageFilterFunctionInfoSPIUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v12, 0x258uLL);
  v9 = DecodeDYMTLImageFilterFunctionInfoSPI(Data, v8, v12, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v12, 0x14u, v9);
  DecodeDYMTLImageFilterFunctionInfoSPI(Data, v8, v12, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLCounterSampleBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLCounterSampleBufferDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x48u, 1u);
  DecodeDYMTLCounterSampleBufferDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLDepthStencilDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLDepthStencilDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x34u, 1u);
  DecodeDYMTLDepthStencilDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLIOCommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 8;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x89u, 1u);
  v8 = v11;
  *v11 = 64;
  *v8 = *(Data + 1);
  *(v8 + 4) = *(Data + 2);
  *(v8 + 5) = *(Data + 3);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLIndirectCommandBufferDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 48;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x37u, 1u);
  v8 = v12;
  *v12 = GTMTLIndirectCommandBufferDescriptorDefaults;
  *(v8 + 16) = unk_24DA91FE8;
  *(v8 + 32) = xmmword_24DA91FF8;
  v9 = *Data;
  *(v8 + 16) = *(Data + 1);
  *(v8 + 26) = *(Data + 2);
  *(v8 + 19) = *(Data + 3);
  *(v8 + 38) = *(Data + 4);
  *(v8 + 31) = *(Data + 5);
  if (v9 >= 0x1B)
  {
    *(v8 + 32) = *(Data + 6);
    *(v8 + 33) = *(Data + 7);
    if (v9 >= 0x29)
    {
      *(v8 + 8) = *(Data + 8);
      if (v9 >= 0x3C)
      {
        *(v8 + 41) = *(Data + 9);
        if (v9 >= 0x48)
        {
          *(v8 + 35) = *(Data + 10);
          *(v8 + 34) = *(Data + 11);
          *(v8 + 36) = *(Data + 12);
          if (v9 != 72)
          {
            *(v8 + 40) = *(Data + 13);
            if (v9 >= 0x4A)
            {
              *(v8 + 42) = *(Data + 14);
              if (v9 >= 0x65)
              {
                *(v8 + 37) = *(Data + 15);
                *(v8 + 39) = *(Data + 16);
                *(v8 + 23) = *(Data + 17);
                *(v8 + 21) = *(Data + 18);
                *(v8 + 28) = *(Data + 19);
                *(v8 + 22) = *(Data + 20);
                *(v8 + 20) = *(Data + 21);
                *(v8 + 25) = *(Data + 22);
                *(v8 + 29) = *(Data + 23);
                *(v8 + 24) = *(Data + 24);
                *(v8 + 27) = *(Data + 25);
                *(v8 + 30) = *(Data + 26);
                *(v8 + 18) = *(Data + 27);
                if (v9 >= 0x69)
                {
                  *v8 = *(Data + 28);
                }
              }
            }
          }
        }
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTL4CommandQueueDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTL4CommandQueueDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA2u, 1u);
  DecodeDYMTL4CommandQueueDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLMotionEstimationPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 4;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x42u, 1u);
  v8 = v11;
  *v11 = 0;
  v8[1] = *(Data + 1);
  *v8 = *(Data + 2);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

void SaveMTLPipelineLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v6, 0, sizeof(v6));
  DecodeDYMTLPipelineLibraryInfo(a3, v6, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v6, 0x8Au);
  DecodeDYMTLPipelineLibraryInfo(a3, v6, 1, (a1 + 64));
}

uint64_t StoreMTLRasterizationRateMapDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLRasterizationRateMapDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x45u, 1u);
  DecodeDYMTLRasterizationRateMapDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLMeshRenderPipelineDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLMeshRenderPipelineDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x88u, 1u);
  DecodeDYMTLMeshRenderPipelineDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLResidencySetDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLResidencySetDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Eu, 1u);
  DecodeDYMTLResidencySetDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLSamplerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLSamplerDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x35u, 1u);
  DecodeDYMTLSamplerDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLResourceViewPoolDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLResourceViewPoolDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0xA0u, 1u);
  DecodeDYMTLResourceViewPoolDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFunctionConstantValuesUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLFunctionConstantValues(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x50u, 1u);
  DecodeDYMTLFunctionConstantValues(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLIntersectionFunctionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  v9 = v7;
  bzero(v12, 0x258uLL);
  DecodeDYMTLIntersectionFunctionDescriptor(v8, v9, v12, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v12, 0x5Du, 1u);
  DecodeDYMTLIntersectionFunctionDescriptor(v8, v9, v12, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t UnwrapMTLRenderPipelineFunctionsDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLRenderPipelineFunctionsDescriptor(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x60u, 1u);
  DecodeDYMTLRenderPipelineFunctionsDescriptor(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureViewDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0xA1u, 1u);
  v8 = v11;
  *v11 = *(Data + 8);
  *(v8 + 36) = *(Data + 3);
  *(v8 + 16) = *(Data + 2);
  *(v8 + 38) = *(Data + 6);
  *(v8 + 32) = *(Data + 7);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLDeviceDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  bzero(v11, 0x258uLL);
  DecodeDYMTLDeviceDescriptor(Data, v8, v11, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x41u, 1u);
  DecodeDYMTLDeviceDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMPSPluginCNNConvolutionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  memset(v11, 0, sizeof(v11));
  DecodeDYMPSPluginCNNConvolutionDescriptor(Data, v7, v11, 0);
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v11, 0x4Au);
  DecodeDYMPSPluginCNNConvolutionDescriptor(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSPluginCNNConvolutionDataUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v8 = v7;
  memset(v11, 0, sizeof(v11));
  DecodeDYMPSPluginCNNConvolutionData(Data, v7, v11, 0);
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v11, 0x1Bu);
  DecodeDYMPSPluginCNNConvolutionData(Data, v8, v11, 1);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSPluginNDArrayConvolutionDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v21 = 0u;
  v22 = 0u;
  memset(v19, 0, sizeof(v19));
  v20 = 0x2CuLL;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v19, 0x4Cu);
  v8 = 0;
  v9 = v20;
  *&v20 = v20 + 44;
  v10 = (Data + 8);
  do
  {
    v11 = v10;
    v12 = *v10++;
    *&v9[v8] = v12;
    v8 += 4;
  }

  while (v8 != 12);
  v13 = 0;
  v9[36] = *v10;
  v14 = v11 + 3;
  v9[37] = v10[1];
  do
  {
    v15 = *v14++;
    *&v9[v13 + 12] = v15;
    v13 += 4;
  }

  while (v13 != 12);
  for (i = 0; i != 12; i += 4)
  {
    v17 = *v14++;
    *&v9[i + 24] = v17;
  }

  v9[38] = *v14;
  v9[39] = v14[1];
  v9[40] = v14[2];
  v9[41] = v14[3];
  v9[42] = v14[4];
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSSourceTextureInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 80;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, &v10, 0x18u);
  v8 = v10;
  *v10 = *(Data + 1);
  v8[1] = *(Data + 2);
  v8[2] = *(Data + 3);
  v8[3] = *(Data + 4);
  v8[4] = *(Data + 5);
  v8[5] = *(Data + 6);
  v8[6] = *(Data + 7);
  v8[7] = *(Data + 8);
  v8[8] = *(Data + 9);
  v8[9] = *(Data + 10);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSDestinationTextureInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 80;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, &v10, 0x19u);
  v8 = v11;
  *v11 = *(Data + 1);
  v8[1] = *(Data + 2);
  v8[2] = *(Data + 3);
  v8[3] = *(Data + 4);
  v8[4] = *(Data + 5);
  v8[5] = *(Data + 6);
  v8[6] = *(Data + 7);
  v8[7] = *(Data + 8);
  v8[8] = *(Data + 9);
  v8[9] = *(Data + 10);
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}

uint64_t StoreMPSNDArrayStructureUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v18 = 48;
  MPSDescriptorWithType = AllocateMPSDescriptorWithType(a2, v16, 0x1Cu);
  v8 = 0;
  v9 = v18;
  v10 = v18;
  *v18 = *(Data + 1);
  v18 = v10 + 48;
  v11 = (Data + 16);
  do
  {
    v12 = *v11++;
    *(v9 + 8 + v8) = v12;
    v8 += 4;
  }

  while (v8 != 16);
  v13 = 0;
  v14 = (v9 + 24);
  do
  {
    *v14++ = v11[v13++];
  }

  while (v13 != 4);
  *(v9 + 40) = v11[4];
  apr_pool_clear(v5);
  return MPSDescriptorWithType;
}