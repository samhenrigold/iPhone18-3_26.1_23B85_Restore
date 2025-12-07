uint64_t chi_DecodePolyphone__OneFrameX(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4)
{
  result = 2164269056;
  *(a4 + 16) = 0;
  v8 = *(a1 + 236);
  v9 = a2[31];
  if (*a3 > v8)
  {
    return result;
  }

  v10 = *(a1 + 228);
  if (v10 < 1)
  {
    if (v9 > a2[14])
    {
      return result;
    }

    result = chi_DecodePolyphone__OneFrame(a1, a2, v9 >= a2[13] - 3, v9 >= a2[13] - 18);
    if (result)
    {
      return result;
    }

    v16 = a2[31];
    v17 = a2[13];
    v18 = v16 == v17;
    if (v16 < v17)
    {
      result = 0;
LABEL_28:
      a2[31] = v16 + 1;
      return result;
    }

    v20 = a2[14];
    if (!v18)
    {
      if (v16 == v20)
      {
        v23 = a2[12];
        v8 = v23 + 1;
        v24 = *a3;
        if (*a3 <= v23)
        {
          v25 = v8 - v24;
          v_equ_s_t(*(a4 + 8), *(a1 + 160), v24);
          *(a4 + 16) += *a3;
          v26 = (*(a1 + 208) + 2 * *(a1 + 224));
          v27 = (*(a1 + 160) + 2 * *a3);
LABEL_22:
          v_equ_s_t(v26, v27, v25);
          result = 0;
          *(a1 + 228) = v25;
LABEL_27:
          v16 = a2[31];
          goto LABEL_28;
        }
      }

      else
      {
        v28 = v8 - *a3;
        if (v8 > *a3)
        {
          v_equ_s_t(*(a4 + 8), *(a1 + 160), *a3);
          *(a4 + 16) += *a3;
          v_equ_s_t((*(a1 + 208) + 2 * *(a1 + 224)), (*(a1 + 160) + 2 * *a3), v28);
          result = 0;
          *(a1 + 228) = v28;
          goto LABEL_27;
        }
      }

      v_equ_s_t(*(a4 + 8), *(a1 + 160), v8);
      result = 0;
      *(a4 + 16) += v8;
      *a3 = v8;
      goto LABEL_27;
    }

    if (v16 == v20)
    {
      v21 = a2[11];
      v22 = a2[12] - v21 + 1;
    }

    else
    {
      v21 = a2[11];
      v22 = v8 - v21;
    }

    v25 = v22 - *a3;
    if (v22 <= *a3)
    {
      v_equ_s_t(*(a4 + 8), (*(a1 + 160) + 2 * v21), v22);
      result = 0;
      *(a4 + 16) += v22;
      *a3 = v22;
      goto LABEL_27;
    }

    v_equ_s_t(*(a4 + 8), (*(a1 + 160) + 2 * v21), *a3);
    *(a4 + 16) += *a3;
    v26 = (*(a1 + 208) + 2 * *(a1 + 224));
    v27 = (*(a1 + 160) + 2 * (a2[11] + *a3));
    goto LABEL_22;
  }

  v11 = *(a4 + 8);
  v12 = (*(a1 + 208) + 2 * *(a1 + 224));
  if (v10 >= *a3)
  {
    v_equ_s_t(v11, v12, *a3);
    v13 = *a3;
    *(a4 + 16) = *a3;
    v19 = *(a1 + 228);
    *(a1 + 224) += v13;
    *(a1 + 228) = v19 - *a3;
  }

  else
  {
    v_equ_s_t(v11, v12, *(a1 + 228));
    v14 = *(a1 + 224);
    v13 = *(a1 + 228);
    *(a4 + 16) = v13;
    *(a1 + 224) = (v14 + v13);
  }

  *a3 = v13;
  result = 0;
  if (!*(a1 + 228))
  {
    *(a1 + 224) = 0;
  }

  return result;
}

uint64_t xi_figureOutSomething(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 132);
  v3 = *(a1 + 92);
  v4 = *(a1 + 100);
  v5 = *(a1 + 4);
  v6 = *a1 + v3;
  v7 = v6 + *(a1 + 96);
  v8 = v5 + v7;
  v9 = *(a1 + 104) + v4;
  *(a1 + 12) = 0;
  *(a1 + 16) = v9 + v5 + v7;
  *(a1 + 20) = v7;
  *(a1 + 24) = v5;
  v10 = v5 + v7 - 1;
  if ((v5 + v7 < 0) ^ __OFADD__(v5, v7) | (v5 + v7 == 0))
  {
    v10 = 0;
  }

  *(a1 + 28) = v10;
  *(a1 + 80) = v5;
  *(a1 + 84) = 0;
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 4) != 0)
    {
      v11 = 0;
      *(a1 + 60) = v7;
    }

    else
    {
      *(a1 + 60) = v6;
      v11 = *(a1 + 156);
      v5 += v11;
      *(a1 + 80) = v5;
      *(a1 + 84) = v11;
      v7 = v6;
    }
  }

  else
  {
    v11 = *(a1 + 152);
    v7 -= v11;
    *(a1 + 60) = v7;
    v5 += v11;
    *(a1 + 80) = v5;
    *(a1 + 84) = v11;
  }

  *(a1 + 72) = v11;
  *(a1 + 88) = v5;
  if (a2 <= 0xF)
  {
    v12 = *(a1 + 152);
    v10 += v12;
    *(a1 + 64) = v10;
  }

  else
  {
    if ((a2 & 0x40) != 0)
    {
      *(a1 + 64) = v10;
      goto LABEL_15;
    }

    v10 = v9 + v8 - 1;
    *(a1 + 64) = v10;
    v12 = *(a1 + 160);
  }

  *(a1 + 80) = v12 + v5;
LABEL_15:
  *(a1 + 68) = v10 - v7 + 1;
  v13 = v7 - v3;
  v14 = v10 + v4;
  *(a1 + 32) = v7 - v3;
  *(a1 + 36) = v14;
  v15 = 4;
  if (a2 >= 0x10 && (a2 & 0x40) == 0)
  {
    v16 = v14 % v2;
    if (v14 % v2 <= 239)
    {
      if (v16 <= 159)
      {
        if (v16 <= 79)
        {
          if (v16 < 0)
          {
            goto LABEL_26;
          }

          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 3;
      }
    }

    else
    {
      v15 = 4;
    }
  }

  *(a1 + 120) = v15;
LABEL_26:
  if (v7 != v3)
  {
    v13 = v13 / v2 * v2;
    *(a1 + 32) = v13;
  }

  if (v14 <= v13)
  {
    v19 = v14;
  }

  else
  {
    v17 = v2 + ~(v14 % v2);
    if (v14 % v2)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v14;
    if (!v18)
    {
      v19 = v17 + v14;
      *(a1 + 36) = v17 + v14;
    }
  }

  v20 = v7 / v2;
  v21 = v10 / v2;
  *(a1 + 52) = v7 / v2;
  *(a1 + 56) = v10 / v2;
  v22 = v7 % v2;
  *(a1 + 40) = v19 - v13 + 1;
  *(a1 + 44) = v22;
  v23 = v10 % v2;
  *(a1 + 48) = v23;
  v24 = v21 - v20;
  v25 = v23 - v22;
  v26 = v2 - v22 + v23;
  v27 = v26 + 1;
  if (v24 != 1)
  {
    v27 = v25 + 1;
  }

  v28 = v26 + (v24 - 1) * v2;
  if (v24 >= 2)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v27;
  }

  *(a1 + 128) = v29;
  v30 = v19 - v14;
  if (v19 - v14 < 0)
  {
    v30 = v14 - v19;
  }

  if (v30 >= v2)
  {
    return 2164269056;
  }

  v31 = 0;
  *(a1 + 76) = 0;
  return v31;
}

uint64_t xi_Segment__InitPoly_withDur(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6)
{
  *(a1 + 148) = a4;
  v6 = *(a2 + 25);
  v7 = *(a2 + 24);
  *(a1 + 8) = 0;
  *a1 = *a2;
  v8 = a3;
  if (!a6)
  {
    v8 = 0;
  }

  *(a1 + 112) = a5 + v8;
  *(a1 + 124) = 0;
  *(a1 + 144) = (v6 & 0x10) != 0;
  xi_figureOutSomething(a1, v7);
  return 0;
}

uint64_t xi_Segment__DeinitPoly(void *a1)
{
  *a1 = 0;
  a1[14] = 0;
  return 0;
}

uint64_t xi_Segment__Init_for_psola(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 132) = *a3;
  *(a1 + 140) = *(a3 + 8);
  *(a1 + 152) = *(a3 + 16);
  *(a1 + 160) = *(a3 + 24);
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 168) = a2;
  return 0;
}

uint64_t xi_Segment__Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 132) = *a3;
  *(a1 + 140) = *(a3 + 8);
  v3 = *(a3 + 20);
  *(a1 + 152) = *(a3 + 16);
  *(a1 + 156) = v3;
  v4 = *(a3 + 24);
  *(a1 + 160) = v4;
  *(a1 + 92) = 640;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  *(a1 + 168) = a2;
  return 0;
}

uint64_t rho_Concat__findbestmatch_fixed(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = v3;
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  v7 = a1[2];
  v8 = v7;
  if (v7 < 1)
  {
    LOBYTE(v10) = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v6[v9] >> v10;
      v13 = v11 + v12 * v12;
      if (v13 < 0x1FFFFFF)
      {
        v11 = v13;
      }

      else
      {
        do
        {
          if ((v10 + 1) > 1)
          {
            ++v10;
          }

          else
          {
            v10 = 1;
          }

          v11 = v13 >> 2;
          v31 = v13 > 0x7FFFFFB;
          v13 >>= 2;
        }

        while (v31);
      }

      v9 += v3;
    }

    while (v9 < v7);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v6[v14] >> v10;
      v15 += v17 * v17;
      v16 += (*(v5 + 2 * v14) >> v10) * v17;
      v14 += v3;
    }

    while (v14 < v7);
  }

  v18 = a1[1];
  if (v3 <= v18)
  {
    v45 = a1[1];
    if (v15 <= 125 << (2 * v10))
    {
      v20 = 125 << (2 * v10);
    }

    else
    {
      v20 = v15;
    }

    v46 = v3;
    v21 = rho_Concat__sqrt(v20);
    LODWORD(v19) = 0;
    v22 = &v6[v4];
    v23 = v6;
    LODWORD(v8) = v7;
    v24 = v46;
    v25 = v16 / v21;
    do
    {
      v48 = v6;
      v47 = v19;
      if (v8 < 1)
      {
        v27 = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v27 += (*(v5 + 2 * v26) >> v10) * (v22[v26] >> v10);
          v26 += v4;
        }

        while (v26 < v7);
      }

      v28 = v23[v7] >> v10;
      v15 = v15 - (*v23 >> v10) * (*v23 >> v10) + v28 * v28;
      v23 += v4;
      if (v15 <= 125 << (2 * v10))
      {
        v29 = 125 << (2 * v10);
      }

      else
      {
        v29 = v15;
      }

      v30 = v27 / rho_Concat__sqrt(v29);
      v31 = v30 <= v25;
      if (v30 <= v25)
      {
        v19 = v47;
      }

      else
      {
        v19 = v24;
      }

      if (v30 > v25)
      {
        v25 = v30;
      }

      v6 = v48;
      if (!v31)
      {
        v6 = v23;
      }

      v3 = v46;
      v8 = v7;
      v24 += v46;
      v22 += v4;
      v18 = v45;
    }

    while (v24 <= v45);
  }

  else
  {
    v19 = 0;
  }

  v32 = v3 - 1;
  v33 = v19 + v3 - 1;
  v34 = v19 - (v3 - 1);
  v35 = v18 - 1;
  v36 = v34 & ~(v34 >> 31);
  if (v33 < v18)
  {
    v35 = v19 + v3 - 1;
  }

  else
  {
    v36 = v19 - (v3 - 1);
  }

  if (v36 <= v35)
  {
    v37 = 0;
    if (v34 < 0 && v33 < v18)
    {
      v32 = v19;
    }

    v39 = &v6[-v32];
    v40 = 2 * v8;
    do
    {
      if (v7 < 1)
      {
        v42 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v42 += (*(v5 + v41) >> v10) * (v39[v41 / 2] >> v10);
          v41 += 2;
        }

        while (v40 != v41);
      }

      if (v42 <= v37)
      {
        v19 = v19;
      }

      else
      {
        v19 = v36;
      }

      if (v42 > v37)
      {
        v37 = v42;
      }

      ++v39;
    }

    while (v36++ != v35);
  }

  return v19;
}

uint64_t rho_Concat__sqrt(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  v2 = a1 - 0x40000000;
  if (!(a1 >> 30))
  {
    v2 = a1;
  }

  v3 = a1 >> 30 != 0;
  v4 = v3 << 15;
  v5 = (v3 << 30) | 0x10000000;
  if (v2 >= v5)
  {
    v6 = (v3 << 30) | 0x10000000;
  }

  else
  {
    v6 = 0;
  }

  if (v2 >= v5)
  {
    v4 = ((a1 >> 30 != 0) << 15) | 0x4000;
  }

  v7 = v2 - v6;
  v8 = (v4 >> 14 << 28) | 0x4000000;
  v9 = v4 | 0x2000;
  if (v7 < v8)
  {
    v8 = 0;
    v9 = v4;
  }

  v10 = v7 - v8;
  v11 = (((v9 >> 13) & 0x1F) << 26) | 0x1000000;
  if (v10 >= v11)
  {
    v9 |= 0x1000u;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 - v11;
  v13 = (v9 << 12) + 0x400000;
  if (v12 >= v13)
  {
    v9 += 2048;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 - v13;
  v15 = (v9 << 11) + 0x100000;
  if (v14 >= v15)
  {
    v9 += 1024;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 - v15;
  v17 = (v9 << 10) + 0x40000;
  if (v16 >= v17)
  {
    v9 += 512;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 - v17;
  v19 = (v9 << 9) + 0x10000;
  if (v18 >= v19)
  {
    v9 += 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 - v19;
  v21 = (v9 << 8) + 0x4000;
  if (v20 >= v21)
  {
    v9 += 128;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 - v21;
  v23 = (v9 << 7) + 4096;
  if (v22 >= v23)
  {
    v9 += 64;
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 - v23;
  v25 = (v9 << 6) + 1024;
  if (v24 >= v25)
  {
    v9 += 32;
  }

  else
  {
    v25 = 0;
  }

  v26 = v24 - v25;
  v27 = 32 * v9 + 256;
  if (v26 >= v27)
  {
    v9 += 16;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 - v27;
  v29 = 16 * v9 + 64;
  if (v28 >= v29)
  {
    v9 += 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 - v29;
  v31 = 8 * v9 + 16;
  if (v30 >= v31)
  {
    v9 += 4;
  }

  else
  {
    v31 = 0;
  }

  v32 = v30 - v31;
  v33 = 4 * v9 + 4;
  if (v32 >= v33)
  {
    v9 += 2;
  }

  else
  {
    v33 = 0;
  }

  if (v32 - v33 <= 2 * v9)
  {
    return v9;
  }

  else
  {
    return v9 + 1;
  }
}

uint64_t mu_Reset(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t psi_Lookup_AvgSpeed(uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t psi_VFDat__unloadData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v4;
  }

  if (*(a2 + 44) == 1)
  {
    vect_i_t__deleteVect(a2);
    v4 = 0;
  }

  else
  {
    v9 = *(a1 + 64);
    if (!v9)
    {
      return 0;
    }

    v10 = *(v9 + 24);
    if (!v10)
    {
      return 0;
    }

    v4 = brk_DataClose(v10, *(a2 + 32));
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(a2 + 32) = 0;
  }

  if (*(a3 + 44) == 1)
  {
    vect_i_t__deleteVect(a3);
  }

  else
  {
    v11 = *(a3 + 24);
    if (v11)
    {
      v4 = ssftriff_reader_ReleaseChunkData(v11);
      *(a3 + 24) = 0;
    }
  }

  if (*(a4 + 44) == 1)
  {
    vect_i_t__deleteVect(a4);
    return v4;
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 24);
  if (!v13)
  {
    return 0;
  }

  v14 = *(a4 + 32);

  return brk_DataClose(v13, v14);
}

uint64_t psi_VFDat__loadData(uint64_t a1, _WORD *a2, uint64_t a3, const char *a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v43 = *MEMORY[0x1E69E9840];
  *v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  *v33 = 0;
  v32 = 0;
  memset(v42, 0, 64);
  inited = InitRsrcFunction(a2, a3, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 64) = v37;
  ChunkData = ssftriff_reader_ObjOpen(a2, a3, 0, a4, "VFNT", 131333, v36);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v20 = ssftriff_reader_OpenChunk(*v36, &v34, &v32, 0);
  if ((v20 & 0x80000000) != 0)
  {
LABEL_56:
    v21 = v20;
    if ((v20 & 0x1FFF) != 0x14)
    {
      goto LABEL_61;
    }

    v21 = ssftriff_reader_ObjClose(*v36);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    return v21;
  }

  v30 = a4;
  v21 = 2164269066;
  while (v34 ^ 0x464E4956 | v35)
  {
    if (!(v34 ^ 0x52444F43 | v35))
    {
      *(a1 + 56) = a9;
      if (!a10)
      {
        *(a9 + 44) = 0;
        goto LABEL_54;
      }

      *(a9 + 44) = 1;
      ChunkData = ssftriff_reader_GetChunkData(*v36, v32, v33);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a9, v32) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v27 = *(a9 + 8);
      goto LABEL_44;
    }

    if (v34 ^ 0x4E555443 | v35)
    {
      if (v34 ^ 0x54494E55 | v35)
      {
        if (v34 ^ 0x48435053 | v35)
        {
          log_OutText(*(v37 + 32), "SYNTH", 3, 0, "Unknown data: %s for %s", &v34, v30);
        }

        else
        {
          *(a1 + 40) = a5;
          if (a6)
          {
            *(a5 + 44) = 1;
            ChunkData = ssftriff_reader_GetChunkData(*v36, v32, v33);
            if ((ChunkData & 0x80000000) != 0)
            {
              goto LABEL_60;
            }

            if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a5, v32) & 0x80000000) != 0)
            {
              goto LABEL_61;
            }

            *(a5 + 40) = 0;
            v_equ_uc_t(*(a5 + 8), *v33, v32);
            *(a5 + 32) = 0;
            *(a1 + 24) = *(a5 + 8) + *(a5 + 40);
          }

          else
          {
            *(a5 + 44) = 0;
            *(a5 + 8) = 0;
            v28 = v32;
            *(a9 + 16) = v32;
            *(a5 + 20) = v28;
            *(a5 + 40) = ssftriff_reader_GetPosition(*v36);
            ChunkData = brk_DataOpen(*(*(a1 + 64) + 24));
            if ((ChunkData & 0x80000000) != 0)
            {
              goto LABEL_60;
            }

            *(a1 + 24) = 0;
          }
        }

        goto LABEL_54;
      }

      *(a1 + 48) = a7;
      if (!a8)
      {
        *(a7 + 44) = 0;
        ChunkData = ssftriff_reader_DetachChunkData(*v36, (a7 + 24), (a7 + 8));
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }

      *(a7 + 44) = 1;
      ChunkData = ssftriff_reader_GetChunkData(*v36, v32, v33);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if ((vect_uc_t__createVect(*(*(a1 + 64) + 8), a7, v32) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v27 = *(a7 + 8);
LABEL_44:
      v_equ_uc_t(v27, *v33, v32);
    }

LABEL_54:
    ChunkData = ssftriff_reader_CloseChunk(*v36);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v20 = ssftriff_reader_OpenChunk(*v36, &v34, &v32, 0);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v31 = 0;
  ChunkData = ssftriff_reader_GetChunkData(*v36, v32, v33);
  if ((ChunkData & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v22 = v32;
  if (!v32)
  {
    goto LABEL_54;
  }

  v23 = 0;
  while (1)
  {
    v38[0] = 0;
    LOBYTE(__dst) = 0;
    v31 = 64;
    ChunkData = ssftriff_reader_ReadStringZ(*v36, *v33, v22, v23, &__dst, &v31);
    if ((ChunkData & 0x80000000) == 0 && v23 < v32)
    {
      v23 += v31;
      v31 = 64;
      ChunkData = ssftriff_reader_ReadStringZ(*v36, *v33, v32, v23, v38, &v31);
    }

    if ((ChunkData & 0x80000000) != 0)
    {
      break;
    }

    v24 = v31;
    if (__dst ^ 0x71657246 | BYTE4(__dst))
    {
      if (__dst ^ 0x6465657053677641 | v41)
      {
        if (__dst == 1701080899 && WORD2(__dst) == 114)
        {
          if (v38[0])
          {
            if (*v38 != 0x3266726D35373131 || v39 != 50)
            {
              log_OutText(*(*(a1 + 64) + 32), "SYNTH", 0, 0, "Incompatible encoding of %s: %s", v30, v38);
              ChunkData = 2164269081;
              break;
            }
          }

          strcpy(v42, "decoder/");
          __strcat_chk();
        }
      }

      else
      {
        *(a1 + 72) = atoi(v38);
      }
    }

    else
    {
      *(a1 + 74) = atoi(v38);
    }

    v23 += v24;
    log_OutText(*(*(a1 + 64) + 32), "SYNTH", 3, 0, "VF attribute %s=%s", &__dst, v38);
    v22 = v32;
    if (v23 >= v32)
    {
      goto LABEL_54;
    }
  }

LABEL_60:
  v21 = ChunkData;
LABEL_61:
  if (*v36)
  {
    ssftriff_reader_ObjClose(*v36);
  }

  return v21;
}

uint64_t psi_mapCodedData(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4)
  {
    return brk_DataMap(*(*(a1 + 64) + 24), *(a2 + 32), (*(a2 + 40) + a3), v4, a1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t psi_unMapCodedData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 16785425;
  }

  result = brk_DataUnmap(*(*(a1 + 64) + 24), *(a2 + 32), v2);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t psi_DataMapSegment__InitPoly(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  v3 = *(a1 + 40);
  if (*(v3 + 44))
  {
    return 0;
  }

  v5 = *a3;
  if (!v5)
  {
    return 0;
  }

  else
  {
    return brk_DataMap(*(*(a1 + 64) + 24), *(v3 + 32), (*(v3 + 40) + *a2), v5, a1 + 24);
  }
}

uint64_t psi_DataMapSegment__DeinitPoly(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 44))
  {
    return 0;
  }

  else
  {
    return psi_unMapCodedData(a1, v1);
  }
}

uint64_t convertFromMsecToTp(unsigned int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  else
  {
    return 22 * a1 + 3276 * HIWORD(a1) + ((-107321754 * HIWORD(a1) + 1638 * a1 + ((26214 * a1 + 0x8000) >> 16) + 0x4000) >> 15);
  }
}

uint64_t vu__UnitVector_t__Delete(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2164269066;
  }

  if (*a1)
  {
    heap_Free(*(a2 + 8), *a1);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    heap_Free(*(a2 + 8), v4);
    *(a1 + 8) = 0;
  }

  result = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t vu__fillUnitAndSubUnit__Init(uint64_t *a1, uint64_t a2)
{
  v2 = 2164269066;
  if (a1)
  {
    v4 = heap_Calloc(*(a2 + 8), 1, 40);
    *a1 = v4;
    if (v4)
    {
      v2 = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }
  }

  return v2;
}

uint64_t vu__fillUnitAndSubUnit__Denit(uint64_t *a1, uint64_t a2)
{
  v2 = 2164269066;
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (!vu__UnitVector_t__Delete(*a1, a2))
      {
        heap_Free(*(a2 + 8), v4);
        v2 = 0;
        *a1 = 0;
      }
    }
  }

  return v2;
}

uint64_t vu__fillUnitAndSubUnit__Begin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a4 + 8);
  v88 = 0;
  v89[0] = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v68 = 0;
  Vect = vect_c_t__createVect(*(a2 + 8), &v73, v5);
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_c_t__createVect(*(a2 + 8), &v70, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v82, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v85, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v79, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  Vect = vect_i_t__createVect(*(a2 + 8), &v76, *(a4 + 32));
  if (Vect)
  {
    return Vect;
  }

  v12 = *(a4 + 32);
  if (v12 < 1)
  {
    goto LABEL_21;
  }

  v13 = 0;
  for (i = 0; i < v12; i += 2)
  {
    v15 = *(a4 + 48);
    if (*(v15 + v13) == 35 && *(v15 + v13 + 1) == 35)
    {
      *(*(a4 + 96) + v13) = 80;
      *(*(a4 + 96) + v13 + 1) = 80;
      v12 = *(a4 + 32);
    }

    ++v13;
  }

  if (v12 < 2)
  {
LABEL_21:
    *v74 = 0;
    psi_Lookup__getPreviousDemiID(a3, **(a4 + 24), &v68, &v69 + 1, v89 + 1, v89, &v88 + 1, &v69, &v88);
    *v83 = v89[0];
    *v86 = HIDWORD(v89[0]);
    *v80 = HIDWORD(v88);
    *v77 = v88;
    *v71 = HIBYTE(v69) != 0;
    if (**(a4 + 48) != 35)
    {
      *v71 = 0;
      if (*(a4 + 32) >= 2)
      {
        v74[1] = 0;
      }
    }

    v18 = *(a4 + 32);
    if (*(*(a4 + 48) + (v18 >> 1) - 1) != 35)
    {
      v74[v18 - 1] = 0;
      v19 = *(a4 + 32);
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      v71[v19 - 2] = 0;
      v18 = *(a4 + 32);
    }

    if (v18 >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = -1;
      do
      {
        if (!v74[v20])
        {
          ++v22;
        }

        v21 += (v20++ & 1) == 0;
      }

      while (v18 != v20);
      goto LABEL_34;
    }

LABEL_33:
    v21 = 0;
    v22 = -1;
LABEL_34:
    v11 = 2164269056;
    v23 = heap_Calloc(*(a2 + 8), (v22 + 1), 28);
    if (!v23)
    {
      return 2164269066;
    }

    v24 = v23;
    v25 = heap_Calloc(*(a2 + 8), v21, 16);
    if (!v25)
    {
      return 2164269066;
    }

    *a1 = v24;
    *(a1 + 8) = v25;
    v62 = v25;
    *(a1 + 16) = v22 + 1;
    *(a1 + 18) = v21;
    v64 = v24;
    if (*(a4 + 32) >= 1)
    {
      v26 = 0;
      v27 = 0;
      v67 = 0;
      v65 = 0;
      v63 = 0;
      LODWORD(v28) = -1;
      while (1)
      {
        v29 = v86[v26];
        HIDWORD(v89[0]) = v29;
        v30 = v74;
        v31 = v74[v26] ? v67 : 0;
        v32 = v26 >> 1;
        if (!*(*(a4 + 120) + 2 * v32))
        {
          break;
        }

        if (v29 >= 206)
        {
          goto LABEL_46;
        }

        v33 = 1;
LABEL_47:
        if ((v26 & 1) == 0)
        {
          if (v26 > 1)
          {
            v34 = v63;
          }

          else
          {
            v34 = v63;
            if (*(*(a4 + 48) + v32) != 35)
            {
              v35 = *(a4 + 72);
              v34 = v63 + *(v35 + v32);
              *(v35 + v32) = 0;
              v30 = v74;
            }
          }

          v36 = *(*(a4 + 72) + v32);
          v37 = v62 + 16 * v65;
          *(v37 + 14) = v36;
          *(v37 + 12) = v34;
          *v37 = v31;
          *(v37 + 4) = HIDWORD(v89[0]) + v27;
          v63 = v34 + v36;
          v29 = HIDWORD(v89[0]);
          v27 = 0;
        }

        v66 = v27;
        v67 = v29 + v31;
        if (v30[v26])
        {
          v38 = v24 + 28 * v28;
          vu__PadUnit(a4 + 88, a4 + 112, v38, v26);
          *(v38 + 4) += HIDWORD(v89[0]);
        }

        else
        {
          LODWORD(v89[0]) = v83[v26];
          HIDWORD(v88) = v80[v26];
          v28 = v28 + 1;
          LODWORD(v88) = v77[v26];
          v39 = v24 + 28 * v28;
          *v39 = HIDWORD(v88);
          *(v39 + 4) = HIDWORD(v89[0]);
          if ((v33 & 1) == 0)
          {
            *v39 = v67;
            *(v39 + 4) = HIDWORD(v89[0]);
          }

          *(v39 + 16) = v65;
          *(v39 + 18) = 0;
          *(v39 + 24) = 0;
          vu__FillUnit(a4 + 40, a4 + 88, a4 + 112, v39, v26, *(a4 + 32), v9);
          *(v39 + 12) = v89[0];
          *(v39 + 20) = v88;
        }

        v24 = v64;
        if (v71[v26])
        {
          *(v64 + 28 * v28 + 25) |= 0x10u;
        }

        v40 = v66;
        if (v26 == *(a4 + 32) - 1)
        {
          *(v64 + 28 * v28 + 25) |= (v9 & 4) >> 1;
          if ((v9 & 4) != 0)
          {
            log_OutText(*(a2 + 32), "SYNTH", 3, 0, "Last phrase in sentence reached\n");
            v40 = v66;
            v24 = v64;
          }
        }

        if ((v26 & 1) == 0)
        {
          ++*(v24 + 28 * v28 + 18);
          ++v65;
        }

        v27 = v29 + v40;
        if (++v26 >= *(a4 + 32))
        {
          goto LABEL_71;
        }
      }

      v33 = 1;
      if (*(*(a4 + 48) + v32) != 35 || v29 <= 205)
      {
        goto LABEL_47;
      }

LABEL_46:
      v33 = 0;
      v31 = (v29 - 5) >> 1;
      v29 = 5;
      HIDWORD(v89[0]) = 5;
      goto LABEL_47;
    }

    LODWORD(v28) = -1;
LABEL_71:
    if (v28 != v22)
    {
      log_OutText(*(a2 + 32), "SYNTH", 3, 0, "error in synth_fx. Number of Units do not match!");
      return v11;
    }

    v41 = (v22 + 1);
    if ((v22 & 0x80000000) == 0)
    {
      v42 = 0;
      do
      {
        v43 = v24 + 28 * v42;
        v44 = *(v43 + 4);
        HIDWORD(v89[0]) = v44;
        v45 = *(v43 + 18);
        if (*(v43 + 18))
        {
          v46 = *(v43 + 16);
          v47 = v45 + v46;
          v48 = (v62 + 4 + 16 * (v47 - 1));
          do
          {
            v49 = (v44 - *(v48 - 1)) & ~((v44 - *(v48 - 1)) >> 31);
            *v48 = v49;
            v48 -= 4;
            v44 = HIDWORD(v89[0]) - v49;
            HIDWORD(v89[0]) = v44;
            --v47;
          }

          while (v47 > v46);
        }

        ++v42;
      }

      while (v42 != v22 + 1);
    }

    vect_i_t__deleteVect(&v73);
    vect_i_t__deleteVect(&v70);
    *(a1 + 20) = 0;
    if ((v22 & 0x80000000) == 0)
    {
      v50 = 0;
      v51 = 0;
      v52 = v24;
      do
      {
        if (v51)
        {
          v53 = v24 + 28 * v51;
          if (*(v53 + 4))
          {
            v54 = v41;
          }

          else
          {
            v54 = v41;
            v55 = (v41 - 1);
            if (v51 < v55)
            {
              v56 = *(v53 + 24);
              if ((v56 & 0xF) != 4 && (v56 & 0xF0) != 0x40)
              {
                log_OutText(*(a2 + 32), "SYNTH", 3, 0, "synth_fx: reducing number of fx units !");
                v57 = *(v53 - 12);
                v58 = *(v53 + 16);
                v24 = v64;
                if (v58 != v57)
                {
                  *(v62 + 16 * v57 + 14) += *(v62 + 16 * v58 + 14);
                  v59 = v50 + v55;
                  v60 = v52;
                  do
                  {
                    *v60 = *(v60 + 28);
                    *(v60 + 12) = *(v60 + 40);
                    v60 = (v60 + 28);
                    --v59;
                  }

                  while (v59);
                  *(a1 + 16) = v55;
                  v54 = v55;
                }

                goto LABEL_92;
              }
            }
          }

          v24 = v64;
        }

        else
        {
          v54 = v41;
        }

LABEL_92:
        ++v51;
        v52 = (v52 + 28);
        --v50;
        v41 = v54;
      }

      while (v51 < v54);
    }

    vect_i_t__deleteVect(&v82);
    vect_i_t__deleteVect(&v85);
    vect_i_t__deleteVect(&v79);
    vect_i_t__deleteVect(&v76);
    return 0;
  }

  v16 = v12;
  while (!psi_Lookup__getPreviousDemiID(a3, *(*(a4 + 24) + 4 * v16 - 4), &v68, &v69 + 1, v89 + 1, v89, &v88 + 1, &v69, &v88))
  {
    v17 = v16 - 1;
    v83[v16 - 1] = v89[0];
    v86[v16 - 1] = HIDWORD(v89[0]);
    v80[v16 - 1] = HIDWORD(v88);
    v77[v16 - 1] = v88;
    v74[v16 - 1] = *(*(a4 + 24) + 4 * v16 - 8) == v68;
    v71[v16 - 1] = HIBYTE(v69) != 0;
    if (*(*(a4 + 48) + ((v16 - 1) >> 1)) == 35)
    {
      v74[v16 - 1] = 0;
      v71[v16 - 1] = 1;
    }

    --v16;
    if ((v17 + 1) <= 2)
    {
      goto LABEL_21;
    }
  }

  return 2164269056;
}

uint64_t vu__FillUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v9 = a5 >> 1;
  result = *(*(a3 + 8) + 2 * (a5 >> 1));
  *(a4 + 24) = 34;
  if ((a5 & 1) == 0)
  {
    *(a4 + 8) = 0;
    if (result)
    {
      v11 = 2;
    }

    else
    {
      if (*(*(a2 + 8) + v9) != 80)
      {
        return result;
      }

      v11 = 66;
    }

LABEL_18:
    *(a4 + 24) = v11;
    return result;
  }

  if (!result)
  {
    *(a4 + 8) = 0;
    if (*(*(a2 + 8) + v9) != 80)
    {
      return result;
    }

    v11 = 36;
    goto LABEL_18;
  }

  v13 = a6 >> 1;
  result = convertFromMsecToTp(result);
  if (result <= 0xA)
  {
    v14 = 10;
  }

  else
  {
    v14 = result;
  }

  *(a4 + 8) = v14;
  *(a4 + 24) = 32;
  if (v13 >= 3 && *(*(a1 + 8) + v9) == 35 && (!(a7 & 1 | v9) || v13 - 1 == v9 && (a7 & 4) == 0))
  {
    *(a4 + 8) = v14 >> 1;
  }

  return result;
}

uint64_t vu__PadUnit(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(a3 + 24) = *(a3 + 24) & 0xF | 0x20;
  }

  else
  {
    v4 = a4 >> 1;
    v5 = *(*(a2 + 8) + 2 * v4);
    v6 = *(a3 + 24) & 0xF;
    *(a3 + 24) = v6 | 0x20;
    if (!v5)
    {
      if (*(*(result + 8) + v4) != 80)
      {
        return result;
      }

      v6 |= 0x40u;
    }

    *(a3 + 24) = v6;
  }

  return result;
}

uint64_t vu__fillUnitAndSubUnit__End(uint64_t a1, uint64_t a2)
{
  if (vu__UnitVector_t__Delete(a1, a2))
  {
    return 2164269066;
  }

  else
  {
    return 0;
  }
}

uint64_t rho_InOut__PutVectorInBuffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 < 1)
  {
    a4 = 0;
  }

  else
  {
    v4 = *(a1 + 88);
    v5 = a4;
    v6 = (*(a2 + 8) + 2 * a3);
    do
    {
      v7 = *v6++;
      *v4++ = v7;
      --v5;
    }

    while (v5);
  }

  *(a1 + 96) = a4;
  return a4;
}

uint64_t rho_purgeBufferToVector(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  LODWORD(v3) = *a2;
  if (*a2 < 1 || (v4 = *(a1 + 96), v4 < 1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    if (v3 >= v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v3;
    }

    v5 = *(a1 + 88);
    v6 = *(a3 + 8);
    v7 = v3;
    do
    {
      v8 = *v5++;
      *v6++ = v8;
      --v7;
    }

    while (v7);
    v9 = __OFSUB__(v4, v3);
    v10 = (v4 - v3);
    if ((v10 < 0) ^ v9 | (v10 == 0))
    {
      LODWORD(v10) = 0;
    }

    else
    {
      v11 = *(a1 + 88);
      v12 = v10;
      do
      {
        *v11 = v11[v3];
        ++v11;
        --v12;
      }

      while (v12);
    }

    *(a1 + 96) = v10;
  }

  *a2 = v3;
  return 0;
}

uint64_t rho_InOut__DecodeToVector(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  *(a5 + 16) = 0;
  if (a4 < 1)
  {
    return 0;
  }

  v26 = v5;
  v27 = v6;
  v25 = a4;
  v12 = *(a1 + 96);
  if (v12 < 1)
  {
    v18 = 0;
    if (v12)
    {
      return 0;
    }

    goto LABEL_9;
  }

  rho_purgeBufferToVector(a1, &v25, a1 + 104);
  v13 = v25;
  if (v25 >= 1)
  {
    v14 = *(a1 + 112);
    v15 = *(a5 + 8);
    v16 = v25;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  *(a5 + 16) += v13;
  v25 = a4 - v13;
  v18 = v13;
  if (!*(a1 + 96))
  {
LABEL_9:
    chi_DecodePolyphone__SmpRequested(a2, a3, &v25, a1 + 104);
    v19 = v25;
    if (v25 >= 1)
    {
      v20 = *(a1 + 112);
      v21 = (*(a5 + 8) + 2 * v18);
      v22 = v25;
      do
      {
        v23 = *v20++;
        *v21++ = v23;
        --v22;
      }

      while (v22);
    }

    *(a5 + 16) += v19;
  }

  return 0;
}

uint64_t rho_synthDecodeToClient(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *(a2 + 352);
  v13 = *(a1 + 96);
  if (v13 >= 1)
  {
    while (1)
    {
      v14 = *(a4 + 16);
      if (v14 >= a5)
      {
        v14 = a5;
      }

      v20 = v14;
      rho_purgeBufferToVector(a1, &v20, a6);
      v15 = v20;
      if (!v20)
      {
        break;
      }

      *(a4 + 16) = v20;
      v_equ_s_t(*(a4 + 8), *(a6 + 8), v15);
      result = rho_InOut__ApplyVolume(v12, a1, a4);
      if (result)
      {
        return result;
      }

      result = eta_PushSamplesOut(v12, 2, (a4 + 8), (a4 + 16));
      if (result)
      {
        return result;
      }

      a5 -= v15;
      v13 = *(a1 + 96);
      if (v13 <= 0)
      {
        goto LABEL_10;
      }
    }

    v13 = *(a1 + 96);
  }

LABEL_10:
  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = a5 == 0;
  }

  if (!v17)
  {
    do
    {
      v18 = *(a4 + 16);
      if (v18 >= a5)
      {
        v18 = a5;
      }

      v20 = v18;
      chi_DecodePolyphone__SmpRequested(a2, a3, &v20, a6);
      v19 = v20;
      if (!v20)
      {
        break;
      }

      *(a4 + 16) = v20;
      v_equ_s_t(*(a4 + 8), *(a6 + 8), v19);
      result = rho_InOut__ApplyVolume(v12, a1, a4);
      if (result)
      {
        return result;
      }

      result = eta_PushSamplesOut(v12, 2, (a4 + 8), (a4 + 16));
      if (result)
      {
        return result;
      }

      a5 -= v20;
    }

    while (a5);
  }

  return 0;
}

uint64_t rho_InOut__AudioWriteToClient__No_Subunits(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  if (a5 < 1)
  {
    return 0;
  }

  v5 = a5;
  do
  {
    if (v5 >= *(a1 + 120))
    {
      v10 = *(a1 + 120);
    }

    else
    {
      v10 = v5;
    }

    *(a4 + 36) += v10;
    result = rho_synthDecodeToClient(a1, a2, a3, a4, v10, a1 + 104);
    if (result)
    {
      break;
    }

    IsEndState = eta_InOut__IsEndState(a4 + 8);
    result = 0;
    if (IsEndState)
    {
      break;
    }

    v13 = __OFSUB__(v5, v10);
    v5 -= v10;
  }

  while (!((v5 < 0) ^ v13 | (v5 == 0)));
  return result;
}

uint64_t rho_InOut__AudioWriteToClientWithMarkers(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5, int a6, int a7, int a8)
{
  v8 = *(a2 + 352);
  v49 = 0;
  if (a6 < 1)
  {
    return 0;
  }

  if (*(*a4 + 18))
  {
    v10 = a7;
    v44 = 0;
    while (1)
    {
      v12 = *(a1 + 120);
      if (a6 >= v12)
      {
        v13 = *(a1 + 120);
      }

      else
      {
        v13 = a6;
      }

      v45 = a6;
      if (a8 && v12 >= a6 && *(v8 + 2036))
      {
        v14 = v44;
        if (*(v8 + 2040))
        {
          v14 = 1;
        }

        v44 = v14;
      }

      v15 = *a4;
      v16 = **a4;
      if (*(v16 + 28 * a5 + 18))
      {
        break;
      }

LABEL_46:
      if (*(v8 + 2020))
      {
        if (v13 >= *(v8 + 2028) - a4[9])
        {
          v39 = *(v8 + 2028) - a4[9];
        }

        else
        {
          v39 = v13;
        }
      }

      else
      {
        v39 = v13;
      }

      if (v44)
      {
        *(v8 + 2016) = 1;
        result = rho_synthDecodeToClient(a1, a2, a3, a4, v39, a1 + 104);
        if (result)
        {
          return result;
        }

        *(v8 + 2016) = 0;
      }

      else
      {
        result = rho_synthDecodeToClient(a1, a2, a3, a4, v39, a1 + 104);
        if (result)
        {
          return result;
        }
      }

      if (*(v8 + 2020))
      {
        *(v8 + 2020) = 0;
        if (v13 != v39)
        {
          result = rho_synthDecodeToClient(a1, a2, a3, a4, v13 - v39, a1 + 104);
          if (result)
          {
            return result;
          }
        }
      }

      if (!eta_InOut__IsEndState((a4 + 2)))
      {
        a4[9] += v13;
        a6 = v45 - v13;
        if (v45 > v13)
        {
          continue;
        }
      }

      return 0;
    }

    v17 = 0;
    v48 = v13;
    while (1)
    {
      v18 = v15[1];
      v19 = *(v16 + 28 * a5 + 16);
      if (v10 == 1)
      {
        v20 = (v17 + v19);
        v21 = a4[9];
        if (*(v18 + 16 * v20 + 14))
        {
          v22 = v21 + v13;
          goto LABEL_22;
        }
      }

      else
      {
        v21 = a4[9];
        v20 = (v17 + v19);
      }

      v23 = v18 + 16 * v20;
      v22 = v21 + v13;
      if (*v23 <= v22 && *(v23 + 14))
      {
        if (v10 == 1)
        {
LABEL_22:
          *(v18 + 16 * v20) = v22;
        }

        v24 = v18 + 16 * v20;
        v25 = *(v24 + 12);
        v26 = *(v24 + 14);
        if (v26 + v25 > *(v8 + 608))
        {
          log_OutPublic(*(*(v8 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", "index", v25, "count", v26, "total", *(v8 + 608));
          v27 = *(v8 + 608);
          if (v27 <= v25)
          {
            LOWORD(v25) = v27 - 1;
          }

          LOWORD(v26) = v27 - v25;
        }

        eta_synth_GetRate(v8, &v49);
        if (*(v8 + 2032) == 1)
        {
          *(v8 + 2032) = 0;
          v49 = 100;
        }

        if (v26)
        {
          v28 = (*(v8 + 600) + 32 * v25);
          v29 = v26;
          v30 = v26;
          do
          {
            if (*v28 == 8)
            {
              if (v28[6])
              {
                *(v8 + 2020) = 1;
                *(v8 + 2032) = 1;
              }
            }

            else if (*v28 == 18)
            {
              *(v8 + 2020) = 1;
            }

            v28 += 8;
            --v30;
          }

          while (v30);
          v31 = 32 * v25;
          do
          {
            v32 = *(*a4 + 8);
            v33 = v17 + *(**a4 + 28 * a5 + 16);
            if (v33)
            {
              v34 = &v32[4 * v33];
              v35 = *(v34 - 2) + 100 * (*v34 - *(v34 - 4)) / v49;
            }

            else
            {
              v34 = *(*a4 + 8);
              v35 = 100 * *v32 / v49;
            }

            v34[2] = v35;
            v36 = *(v8 + 1968);
            v37 = (*(v8 + 600) + v31);
            v37[4] = 0;
            if (*(v8 + 2020))
            {
              *(v8 + 2028) = v32[4 * v33];
            }

            eta_synth_ProcessThisMarker(v8, v37, v36 + v35);
            v38 = v8 + 40 + 32 * *(v8 + 432);
            (*(*(v8 + 32) + 104))(*(v38 + 16), *(v38 + 24), *(v8 + 600) + v31, 32);
            v31 += 32;
            --v29;
          }

          while (v29);
        }

        v15 = *a4;
        v16 = **a4;
        *(*(*a4 + 8) + 16 * (v17 + *(v16 + 28 * a5 + 16)) + 14) = 0;
        *(v8 + 1956) = v26 + v25;
        *(v8 + 1958) = v26 + v25;
        v10 = a7;
        v13 = v48;
      }

      if (++v17 >= *(v16 + 28 * a5 + 18))
      {
        goto LABEL_46;
      }
    }
  }

  return rho_InOut__AudioWriteToClient__No_Subunits(a1, a2, a3, a4, a6);
}

uint64_t rho_InOut__InsertSilence(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, int a5, int a6)
{
  v11 = *(a2 + 352);
  v25 = 0;
  v12 = *(a1 + 100);
  v13 = *(a1 + 52);
  if (v12 >= v13)
  {
    v14 = *(a1 + 52);
  }

  else
  {
    v14 = *(a1 + 100);
  }

  v_zap_s_t(*(a1 + 40), v14);
  eta_synth_GetRate(v11, &v25);
  if (*(v11 + 2032))
  {
    eta_synth_SetRate(v11, 0x64u);
  }

  if (a6 >= 1)
  {
    while (1)
    {
      v15 = a6;
      if (v13 >= v12)
      {
        LODWORD(v16) = v12;
      }

      else
      {
        LODWORD(v16) = v13;
      }

      if (v16 >= a6)
      {
        v16 = a6;
      }

      else
      {
        v16 = v16;
      }

      v17 = __OFSUB__(a6, v14);
      a6 -= v14;
      if (a6 < 0 != v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = v14;
      }

      if ((a6 < 0) ^ v17 | (a6 == 0))
      {
        *(v11 + 2016) = 1;
      }

      if (v14 < 1)
      {
        break;
      }

      v19 = *(a1 + 40);
      v20 = *(a1 + 88);
      do
      {
        v21 = *v19++;
        *v20++ = v21;
        --v16;
      }

      while (v16);
      *(a1 + 96) = v18;
      v22 = rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, v18, 0, 0);
      if (*(v11 + 2016) == 1)
      {
        *(v11 + 2044) = 0;
        *(v11 + 2016) = 0;
      }

      if (a6 <= 0)
      {
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
LABEL_27:
  eta_synth_SetRate(v11, v25);
  return v22;
}

uint64_t rho_InOut__ApplyVolume(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  eta_synth_GetVolume(a1, &v9);
  if (v9 != 80)
  {
    v4 = *(a3 + 16);
    if (v4 >= 1)
    {
      v5 = aVolPar2Amplif_0[v9];
      v6 = *(a3 + 8);
      do
      {
        v7 = (*v6 * v5) >> 15;
        if (v7 <= -32767)
        {
          v7 = -32767;
        }

        if (v7 >= 0x7FFF)
        {
          LOWORD(v7) = 0x7FFF;
        }

        *v6++ = v7;
        --v4;
      }

      while (v4);
    }
  }

  return 0;
}

uint64_t __psi_Lookup__getOffsetAndByteLength(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _BYTE *a6, unsigned int *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 160);
  v14 = 6 * a2;
  v15 = 5 * a2;
  v16 = v13 * a2;
  if (v13 == 4)
  {
    v16 = 4 * a2;
  }

  if (v13 != 5)
  {
    v15 = v16;
  }

  if (v13 != 6)
  {
    v14 = v15;
  }

  Stream = psi_lookup_ReadStream((*(a1 + 16) + v14), v13, &v27, *(a1 + 80), (a1 + 136));
  if (!Stream)
  {
    v18 = 2164269056;
    v20 = v27;
    *a6 = v28;
    v21 = v29;
    *a5 = v29;
    if (!v20)
    {
      return v18;
    }

    v22 = *(a1 + 40);
    if (*(v22 + 44) == 1)
    {
      v23 = (*(a1 + 24) + v21);
    }

    else
    {
      v26[0] = *(a1 + 156);
      psi_mapCodedData(a1, v22, v21 & 0x7FFFFFFF, v26);
      v23 = *(a1 + 24);
      if (!v23)
      {
        return v18;
      }
    }

    Stream = psi_lookup_ReadStream(v23, *(a1 + 156), v26, *(a1 + 84), (a1 + 96));
    if (!Stream)
    {
      *a3 = -1;
      v24 = v26[1];
      *a4 = v26[0];
      *a7 = v24;
      v25 = *(a1 + 40);
      if (*(v25 + 44) == 1)
      {
        return 0;
      }

      return psi_unMapCodedData(a1, v25);
    }
  }

  return Stream;
}

uint64_t __psi_Lookup__getPrevDemiIDAndSmpDur(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, _BYTE *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 160);
  v11 = 6 * a2;
  v12 = 5 * a2;
  v13 = v10 * a2;
  if (v10 == 4)
  {
    v13 = 4 * a2;
  }

  if (v10 != 5)
  {
    v12 = v13;
  }

  if (v10 != 6)
  {
    v11 = v12;
  }

  result = psi_lookup_ReadStream((*(a1 + 16) + v11), v10, &v17, *(a1 + 76), (a1 + 116));
  if (!result)
  {
    v15 = v18;
    *a5 = v17;
    *a6 = v15;
    v16 = v20;
    *a4 = v19;
    *a3 = v16;
  }

  return result;
}

uint64_t psi_Lookup__getPreviousDemiID(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, int *a7, _BYTE *a8, unsigned int *a9)
{
  v30 = 0;
  v29 = 0;
  __psi_Lookup__getPrevDemiIDAndSmpDur(a1, a2, a3, a5, &v30, a4);
  if (v30)
  {
    __psi_Lookup__getOffsetAndByteLength(a1, a2, a3, a5, &v29, a4, a9);
    result = 0;
    *a6 = *(a1 + 156) + v29;
    *a7 = 0;
    *a8 = 1;
  }

  else
  {
    v24 = a6;
    v26 = 0;
    v27 = 0;
    *a8 = 1;
    __psi_Lookup__getPrevDemiIDAndSmpDur(a1, a2, &v27, a5, &v30, &v25);
    v18 = 0;
    v19 = 0;
    v20 = v30;
    while (!v20)
    {
      *a8 = 0;
      v21 = v27;
      __psi_Lookup__getPrevDemiIDAndSmpDur(a1, v27, &v27, a7, &v30, &v28);
      if (v18)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }

      v20 = v30;
      if (v30)
      {
        __psi_Lookup__getOffsetAndByteLength(a1, v21, &v27, &v26, &v29, &v28, a9);
      }

      else
      {
        v26 = *a7;
      }

      v19 += v22;
      if (--v18 == -10001)
      {
        return 2164269056;
      }
    }

    result = 0;
    v23 = v26;
    if (!v18)
    {
      v23 = 0;
    }

    *v24 = *(a1 + 156) + v29;
    *a7 = v23 + v19;
  }

  return result;
}

uint64_t psi_Lookup__InitFromDatFiles(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = 2164269056;
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 2164269062;
  }

  if (!*(a4 + 8))
  {
    return 2164269062;
  }

  *(a1 + 19) = xmmword_1C3827B00;
  a1[23] = 13;
  result = psi_lookup_ReadStream(v7, 19, v35, 13, bitHeaderAlloca);
  if (!result)
  {
    v13 = v35[0];
    v14 = v35[1];
    *a1 = v35[0];
    a1[1] = v14;
    *(a1 + 39) = vrev64_s32(v36);
    v15 = a1[19];
    if (v15 < 1)
    {
      v15 = 0;
      LODWORD(v17) = 4;
    }

    else
    {
      v16 = a1 + 29;
      v17 = 4;
      v18 = a1[19];
      do
      {
        v19 = v35[v17++];
        *v16++ = v19;
        --v18;
      }

      while (v18);
    }

    *(a1 + (v15 + 2) + 58) = 0;
    *(a1 + (v15 + 1) + 58) = 0;
    *(a1 + v15 + 58) = 0;
    v20 = a1[20];
    if (v20 < 1)
    {
      v20 = 0;
    }

    else
    {
      v21 = a1 + 34;
      v22 = a1[20];
      v17 = v17;
      do
      {
        v23 = v35[v17++];
        *v21++ = v23;
        --v22;
      }

      while (v22);
    }

    *(a1 + (v20 + 2) + 68) = 0;
    *(a1 + (v20 + 1) + 68) = 0;
    *(a1 + v20 + 68) = 0;
    v24 = a1[21];
    if (v24 < 1)
    {
      v24 = 0;
    }

    else
    {
      v25 = a1 + 24;
      v26 = &v35[v17];
      v27 = a1[21];
      do
      {
        v28 = *v26++;
        *v25++ = v28;
        --v27;
      }

      while (v27);
    }

    *(a1 + (v24 + 2) + 48) = 0;
    *(a1 + (v24 + 1) + 48) = 0;
    *(a1 + v24 + 48) = 0;
    *(a1 + 2) = *(a3 + 8) + 19;
    *(a1 + 4) = *(a4 + 8);
    if (*(a2 + 44) == 1)
    {
      *(a2 + 40) = 0;
    }

    if (a5)
    {
      v29 = 0;
      if (v14)
      {
        v30 = 0;
        while (1)
        {
          v32 = 0;
          if (__psi_Lookup__getPrevDemiIDAndSmpDur(a1, v30, &v34, &v33, &v32, &v31))
          {
            break;
          }

          if (v32)
          {
            ++v29;
          }

          if (v14 == ++v30)
          {
            v13 = *a1;
            goto LABEL_31;
          }
        }

        log_OutText(*(*(a1 + 8) + 32), "LOOKUP", 3, 0, "Fatal Error: Number of counted polyphones don't match. Wrong speechbase? ");
        return 2164269056;
      }

      else
      {
LABEL_31:
        if (v29 == v13)
        {
          return 0;
        }

        log_OutText(*(*(a1 + 8) + 32), "LOOKUP", 3, 0, "Fatal Error: Number of counted polyphones don't match. Wrong speechbase? ");
        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t rho_Concat__Create(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 2164269066;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  if (a3[3] != 22050)
  {
    return 2164269074;
  }

  *(a1 + 24) = 44;
  *a1 = xmmword_1C3827BB0;
  *(a1 + 16) = 0xDC00000004;
  *(a3 + 1) = xmmword_1C3827BB0;
  if (!vect_s_t__createVect(*(a2 + 8), a1 + 32, 0x294u) && !vect_s_t__createVect(*(a2 + 8), a1 + 56, *(a1 + 12)) && !vect_s_t__createVect(*(a2 + 8), a1 + 80, *(a1 + 8) + *(a1 + 12)))
  {
    *(a1 + 96) = 0;
    if (*a3 <= *(a1 + 12))
    {
      v7 = *(a1 + 12);
    }

    else
    {
      v7 = *a3;
    }

    if (!vect_s_t__createVect(*(a2 + 8), a1 + 104, v7))
    {
      if (rho_Concat__OverlapWindow__Init(a1, a3[3]))
      {
        return 2164269066;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t rho_Concat__Delete(uint64_t a1)
{
  result = vect_i_t__deleteVect(a1 + 32);
  if (!result)
  {
    result = vect_i_t__deleteVect(a1 + 56);
    if (!result)
    {
      result = vect_i_t__deleteVect(a1 + 80);
      if (!result)
      {
        result = vect_i_t__deleteVect(a1 + 104);
        if (!result)
        {

          return rho_Concat__OverlapWindow__Denit(a1);
        }
      }
    }
  }

  return result;
}

_DWORD *rho__updateSubunits(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t **a4, int a5, int a6, int a7)
{
  v7 = *a4;
  v8 = **a4;
  v9 = *(v8 + 28 * a5 + 18);
  if (*(v8 + 28 * a5 + 18))
  {
    if (a6 < 1)
    {
      if (a6 < 0)
      {
        v13 = 0;
        v14 = 0;
        v15 = (v7[1] + 16 * *(v8 + 28 * a5 + 16));
        do
        {
          if (v13 * 4)
          {
            v16 = v15[v13] + a6;
            if (v16 <= v14)
            {
              v16 = v14;
            }
          }

          else
          {
            v16 = *v15;
            v14 = *v15;
          }

          v15[v13] = v16;
          v13 += 4;
        }

        while (4 * v9 != v13);
      }
    }

    else
    {
      v10 = 0;
      v11 = (v7[1] + 16 * *(v8 + 28 * a5 + 16));
      do
      {
        if (v10 * 4)
        {
          v12 = v11[v10] + a6;
        }

        else
        {
          v12 = *v11;
        }

        v11[v10] = v12;
        v10 += 4;
      }

      while (4 * v9 != v10);
    }

    v17 = 0;
    v18 = v8 + 28 * a5;
    v19 = *(v18 + 4);
    do
    {
      if (v19 >= 1)
      {
        v20 = (v7[1] + 16 * (v17 + *(v18 + 16)));
        if (*v20 > v19)
        {
          *v20 = v19;
        }
      }

      if (a7 == 1 && v17 - v9 == -1)
      {
        v21 = *(v18 + 16);
        v22 = v7[1];
        v23 = v22 + 16 * (v21 + v9);
        if (*(v23 - 12) < result[1])
        {
          *(v23 - 16) = (*(v23 - 16) - *result) & ~((*(v23 - 16) - *result) >> 31);
        }

        *(v22 + 16 * (v9 - 1 + v21)) += *(a4 + 9);
        v24 = *(v23 - 32);
        if (*(v23 - 16) < v24)
        {
          *(v23 - 16) = v24 + 1;
        }
      }

      else
      {
        v25 = 16 * (v17 + *(v18 + 16));
        *(v7[1] + v25) += *(a4 + 9);
      }

      ++v17;
    }

    while (v17 != v9);
  }

  return result;
}

uint64_t rho_Concat__match(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, int a5, int a6)
{
  v12 = 2164269056;
  v13 = a3[20] - a3[19];
  v14 = a1[3];
  if (v13 >= v14)
  {
    a1[18] = v14;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v14, (a1 + 14)))
    {
      return v12;
    }
  }

  else
  {
    a1[18] = v13;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v13, (a1 + 14)))
    {
      return v12;
    }

    v_zap_s_t((*(a1 + 8) + 2 * a1[18]), a1[3] - a1[18]);
  }

  v15 = rho_Concat__findbestmatch_fixed(a1, (a1 + 8), (a1 + 14));
  v16 = *a1 + v15;
  a3[21] = v16;
  a3[18] -= v16;
  rho_Concat__WindowsOverlap_wsola(a1, (a1 + 8), (a1 + 14), 0, v15);
  rho_InOut__PutVectorInBuffer(a1, (a1 + 8), 0, *a1);
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5 - 1, *a1, 1, 0))
  {
    if (!eta_InOut__IsEndState((a4 + 1)))
    {
      rho__updateSubunits(a1, v17, v18, a4, a5, a3[18], a6);
      rho_InOut__PutVectorInBuffer(a1, (a1 + 8), *a1, *a1);
      if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *a1, 0, 0))
      {
        return v12;
      }

      if (!eta_InOut__IsEndState((a4 + 1)))
      {
        rho_InOut__PutVectorInBuffer(a1, (a1 + 14), a1[1] + v15, a1[18] - (a1[1] + v15));
        v12 = 0;
        a3[19] = *a1 + a3[21];
        return v12;
      }
    }

    return 0;
  }

  return v12;
}

uint64_t rho_Concat__plosive(uint64_t a1, uint64_t a2, int *a3, uint64_t **a4, int a5)
{
  v10 = 2164269056;
  v_zap_s_t(*(a1 + 64), *(a1 + 72));
  v11 = *(a1 + 24);
  if (a3[20] - a3[19] >= v11)
  {
    *(a1 + 72) = v11;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v11, a1 + 56))
    {
      return v10;
    }
  }

  else
  {
    if (rho_InOut__DecodeToVector(a1, a2, a3, a3[20] - a3[19], a1 + 56))
    {
      return v10;
    }

    *(a1 + 72) = a3[20] - a3[19];
  }

  rho_Concat__fade_out_closure(a1, a1 + 32, 0, *(a1 + 20));
  a3[21] = 0;
  rho_InOut__PutVectorInBuffer(a1, a1 + 32, 0, *(a1 + 48));
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5 - 1, *(a1 + 48), 1, 0))
  {
    if (!eta_InOut__IsEndState((a4 + 1)))
    {
      rho_Concat__fade_in_burst(a1, a1 + 56, 0, *(a1 + 72));
      rho__updateSubunits(a1, v12, v13, a4, a5, a3[18], 0);
      rho_InOut__PutVectorInBuffer(a1, a1 + 56, 0, *(a1 + 72));
      if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *(a1 + 72), 0, 0))
      {
        return v10;
      }

      if (!eta_InOut__IsEndState((a4 + 1)))
      {
        v10 = 0;
        a3[19] = *(a1 + 24) + a3[21];
        return v10;
      }
    }

    return 0;
  }

  return v10;
}

uint64_t rho_Concat__silence(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, int a5)
{
  v10 = 2164269056;
  v_zap_s_t(*(a1 + 8), *a1);
  v11 = *a1;
  if (a3[20] - a3[19] >= *a1)
  {
    a1[18] = v11;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v11, (a1 + 14)))
    {
      return v10;
    }
  }

  else
  {
    if (rho_InOut__DecodeToVector(a1, a2, a3, a3[20] - a3[19], (a1 + 14)))
    {
      return v10;
    }

    a1[18] = a3[20] - a3[19];
  }

  v_zap_s_t(*(a1 + 5), *a1);
  v12 = *a1;
  a3[21] = v12 >> 1;
  a3[18] -= v12 >> 1;
  rho_InOut__PutVectorInBuffer(a1, (a1 + 8), 0, v12);
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5 - 1, *a1, 1, 0))
  {
    if (eta_InOut__IsEndState((a4 + 1)))
    {
      return 0;
    }

    else
    {
      v15 = *(**a4 + 28 * a5 + 8);
      rho__updateSubunits(a1, v13, v14, a4, a5, a3[18] + v15, 0);
      inserted = rho_InOut__InsertSilence(a1, a2, a3, a4, a5, v15);
      v_zap_s_t(*(a1 + 8), *a1);
      rho_InOut__PutVectorInBuffer(a1, (a1 + 14), 0, *a1);
      if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *a1, 0, 0))
      {
        if (!eta_InOut__IsEndState((a4 + 1)))
        {
          rho_InOut__PutVectorInBuffer(a1, (a1 + 14), *a1, a1[18] - *a1);
          a3[19] = a3[21] + (*a1 >> 1);
        }

        return inserted;
      }
    }
  }

  return v10;
}

uint64_t rho_Concat__middle(int *a1, uint64_t a2, int *a3, void **a4, int a5)
{
  v6 = *(**a4 + 28 * a5 + 24);
  if (v6 > 0xF)
  {
    if ((v6 & 0x40) != 0)
    {
      v9 = a1[5];
    }

    else
    {
      v9 = *a1;
    }

    v7 = a3 + 19;
    v8 = a3[22] - (v9 + a3[19]);
    if (v8 < 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = a3 + 19;
    v8 = a3[22] - (*a1 + a3[19]);
    if (v8 < 0)
    {
      return 0;
    }
  }

  if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, v8, 0, 1))
  {
    return 2164269056;
  }

  if (eta_InOut__IsEndState((a4 + 1)))
  {
    return 0;
  }

  result = 0;
  *v7 += v8;
  return result;
}

uint64_t rho_Concat__tail(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[20] - a3[19];
  v_zap_s_t(*(a1 + 40), *(a1 + 12));
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 2164269056;
  v8 = *(a1 + 12);
  if (v6 < v8)
  {
    v8 = v6;
  }

  if (!rho_InOut__DecodeToVector(a1, a2, a3, v8, a1 + 32))
  {
    return 0;
  }

  return v7;
}

uint64_t rho_concatenate(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, uint64_t a5, int a6)
{
  v12 = *(*a4 + 10);
  v13 = **a4 + 28 * *(*a4 + 10);
  inited = psi_DataMapSegment__InitPoly(a5, (v13 + 12), (v13 + 20));
  if (inited)
  {
    return inited;
  }

  inited = xi_Segment__InitPoly_withDur(a3, v13, *(v13 + 12), *(v13 + 20), *(a5 + 24), *(*(a5 + 40) + 44));
  if (inited)
  {
    return inited;
  }

  inited = chi_DecodePolyphone__InitPoly(a2);
  if (inited)
  {
    return inited;
  }

  *(a2 + 272) = *(**a4 + 28 * v12 + 20);
  if (v12)
  {
    if ((*(v13 + 24) & 0xF) != 0)
    {
      if ((*(v13 + 24) & 3) != 0)
      {
        rho_Concat__match(a1, a2, a3, a4, v12, a6);
      }

      else if ((*(v13 + 24) & 4) != 0)
      {
        rho_Concat__plosive(a1, a2, a3, a4, v12);
      }
    }

    else
    {
      rho_Concat__silence(a1, a2, a3, a4, v12);
    }
  }

  else
  {
    rho__updateSubunits(a1, v15, v16, a4, 0, 0, 0);
  }

  if (*(v13 + 24) >= 0x10u)
  {
    rho_Concat__middle(a1, a2, a3, a4, v12);
    rho_Concat__tail(a1, a2, a3);
  }

  if ((*(v13 + 25) & 2) != 0)
  {
    inserted = rho_InOut__InsertSilence(a1, a2, a3, a4, v12, *(*(a2 + 352) + 644));
  }

  else
  {
    inserted = 0;
  }

  chi_DecodePolyphone__DeinitPoly(a2);
  psi_DataMapSegment__DeinitPoly(a5);
  xi_Segment__DeinitPoly(a3);
  ++*(*a4 + 10);
  return inserted;
}

uint64_t eta_synth_SetRate(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x190)
  {
    v2 = 400;
  }

  else
  {
    v2 = a2;
  }

  *(a1 + 652) = *(a1 + 650);
  *(a1 + 650) = v2;
  return 0;
}

uint64_t eta_synth_ResetParams(uint64_t a1)
{
  result = paramc_ParamSetInt(*(*(a1 + 16) + 40), "waitfactor", 2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "volume", 80);
    if ((result & 0x80000000) == 0)
    {
      v3 = *(*(a1 + 16) + 40);

      return paramc_ParamSetUInt(v3, "rate", 100);
    }
  }

  return result;
}

uint64_t eta_synth_ProcessThisMarker(uint64_t a1, int *a2, int a3)
{
  v5 = 0;
  a2[3] = a3;
  v6 = *a2;
  if (*a2 > 23)
  {
    if (v6 == 24)
    {
      v7 = *(*(a1 + 16) + 40);
      v8 = a2[6];
      v9 = "volume";
      goto LABEL_13;
    }

    if (v6 == 25)
    {
      __s = 0;
      paramc_ParamGetStr(*(*(a1 + 16) + 40), "waitfactor", &__s);
      v5 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", a2[6]);
      v10 = *(a1 + 16);
      v11 = *(v10 + 40);
      if ((v5 & 0x80000000) != 0)
      {
        v14 = strlen(__s);
        paramc_ParamRipple(v11, "waitfactor", __s, (v14 + 1));
        v12 = *(*(a1 + 16) + 40);
      }

      else
      {
        v12 = *(v10 + 40);
      }

      paramc_ParamRelease(v12);
    }

    return v5;
  }

  if (v6 != 13)
  {
    if (v6 == 18)
    {
      v7 = *(*(a1 + 16) + 40);
      v8 = a2[6];
      v9 = "rate";
LABEL_13:

      return paramc_ParamSetUInt(v7, v9, v8);
    }

    return v5;
  }

  return eta_synth_ResetParams(a1);
}

uint64_t eta_PrepareNewBuffers(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  *(a1 + 1944) = 0;
  v6 = 0;
  if (((**(a1 + 440))(*(a1 + 448), *(a1 + 456), 0, a1 + 2064, &v6) & 0x80000000) == 0 && *(a1 + 2064))
  {
    *(a1 + 1936) = *(a1 + 2056);
    *(a1 + 1944) = 1024;
  }

  v5 = 0;
  v2 = a1 + 32 * *(a1 + 434);
  result = (*(*(a1 + 32) + 136))(*(v2 + 56), *(v2 + 64), &v5);
  *(a1 + 1968) = v5 >> 1;
  if ((result & 0x80000000) != 0 || !*(a1 + 1944))
  {
    v4 = 2;
  }

  else if (*(a1 + 1936))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(a1 + 1952) = v4;
  return result;
}

uint64_t eta_PushSamplesOut(uint64_t a1, int a2, __int16 **a3, unsigned int *a4)
{
  v28 = 1024;
  v4 = 2164269062;
  if (a1 && a3 && a4)
  {
    v9 = 0;
    v29 = 0;
    v10 = *(a1 + 2064);
    v11 = *(a1 + 2068);
    v12 = *a4 + v11;
    v13 = v10 >= v11;
    v14 = v10 - v11;
    if (v14 != 0 && v13)
    {
      if (v10 <= v12)
      {
        v9 = v14;
      }

      else
      {
        v9 = *a4;
      }

      v15 = (a1 + 650);
      v16 = *(a1 + 2020);
      v17 = *(a1 + 2008);
      v18 = a1 + 32 * *(a1 + 434);
      v20 = *(v18 + 56);
      v19 = *(v18 + 64);
      if (v16)
      {
        v15 = (a1 + 652);
      }

      WSOLA__rateChange_bet4_approach(v17, *(a1 + 2016), *v15, *a3, v9, *(a1 + 2048), &v28, *(a1 + 32), v20, v19);
      *(a1 + 2068) += v28;
    }

    if (v10 <= v12)
    {
      if (a2 == 3)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2 * (*a4 != 0);
      }

      v4 = (**(a1 + 440))(*(a1 + 448), *(a1 + 456), v21, a1 + 2064, &v29);
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      *(a1 + 2068) = 0;
      v22 = *a4 - v9;
      if (*a4 > v9)
      {
        v23 = (a1 + 650);
        if (*(a1 + 2020))
        {
          v23 = (a1 + 652);
        }

        v24 = *v23;
        v28 = 1024;
        v25 = a1 + 32 * *(a1 + 434);
        WSOLA__rateChange_bet4_approach(*(a1 + 2008), *(a1 + 2016), v24, &(*a3)[v9], v22, *(a1 + 2048), &v28, *(a1 + 32), *(v25 + 56), *(v25 + 64));
        *(a1 + 2068) = v28;
      }
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 3)
    {
      v26 = *a4 == 0;
    }

    else
    {
      v26 = 0;
      *a3 = *(a1 + 2056);
      *a4 = 1024;
    }

    if (a2 == 1 || v26)
    {
LABEL_27:
      *a3 = 0;
      *a4 = 0;
      *(a1 + 1952) = 2;
    }
  }

  return v4;
}

uint64_t eta_synth_ObjReopen(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = 2164269056;
  v26 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = *(a1 + 16);
  __s1[0] = 0;
  v28 = 0;
  v27 = 0;
  strcpy(__s, "synth/");
  Str = paramc_ParamGetStr(*(v4 + 40), "voice", __s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  __strcat_chk();
  Str = paramc_ParamGetStr(*(v4 + 40), "reduction", __s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v6 = __s1[0];
  if (!strstr(__s1[0], "dev"))
  {
    strstr(v6, "DEV");
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  __strcat_chk();
  Int = paramc_ParamGetStr(*(v4 + 40), "coder", __s1);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  if ((paramc_ParamGetStr(*(v4 + 40), "bitrate", __s1) & 0x80000000) != 0 || !*__s1[0] || (paramc_ParamGetStr(*(v4 + 40), "overheadframes", &v28) & 0x80000000) != 0 || !*v28)
  {
    v8 = &__s[strlen(__s)];
    while (v8 > __s)
    {
      v10 = *--v8;
      v9 = v10;
      if ((v10 - 48) >= 0xA)
      {
        if (v9 == 102)
        {
          v11 = strlen(v8);
          memmove(v8 + 1, v8, v11 + 1);
          *v8 = 47;
          goto LABEL_20;
        }

        break;
      }
    }

    __strcat_chk();
    Int = paramc_ParamGetInt(*(v4 + 40), "frequencyhz", &v27);
    if ((Int & 0x80000000) != 0)
    {
      return Int;
    }

    v12 = strlen(__s);
    LH_itoa(v27 / 1000, &__s[v12], 0xAu);
  }

  else
  {
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v4 + 40));
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v4 + 40));
  }

LABEL_20:
  if (__s[0])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      __s[v13] = __tolower(__s[v13]);
      v13 = v14;
    }

    while (strlen(__s) > v14++);
  }

  if (!LH_stricmp(__s, (a1 + 656)))
  {
    return Int;
  }

  Str = eta_synth_loc_ObjClose(a1, 1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  __strcpy_chk();
  Str = paramc_ParamGetInt(*(*(a1 + 16) + 40), "frequencyhz", (a1 + 1988));
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v16 = *(a1 + 640);
  if (v16 <= 9)
  {
    v17 = *(a1 + 1988) * v16;
    if ((v17 + 6) < 9)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v17 + 2) / 5;
    }

    *(a1 + 644) = v18;
  }

  v24 = 0;
  v25 = 0;
  *__s1 = xmmword_1C3827BD0;
  if (!psi_VFDat__loadData(a1 + 1064, *a1, *(a1 + 8), (a1 + 656), a1 + 920, 0, a1 + 968, 0, a1 + 1016, 1))
  {
    v19 = WSOLA__Create(*(a1 + 16), 22050);
    *(a1 + 2008) = v19;
    if (v19 && (WSOLA__Initialise(v19), WSOLA__SetTimeScaleFactor(*(a1 + 2008), 100), v20 = heap_Alloc(*(*(a1 + 2008) + 328), 2048), (*(a1 + 2048) = v20) != 0))
    {
      if (!psi_Synthesis__Init(a1, a1 + 920, a1 + 968, a1 + 1016, __s1))
      {
        if ((psi_Lookup_AvgSpeed(a1 + 1064, &v26) & 0x80000000) != 0)
        {
          v21 = 200;
          v26 = 200;
        }

        else
        {
          v21 = v26;
        }

        Str = paramc_ParamSetUInt(*(v4 + 40), "wordspermin", v21);
        if ((Str & 0x80000000) == 0)
        {
          return vu__fillUnitAndSubUnit__Init((a1 + 1928), *(a1 + 16));
        }

        return Str;
      }
    }

    else
    {
      return 2164269066;
    }
  }

  return v3;
}

uint64_t eta_synth_loc_ObjClose(uint64_t a1, int a2)
{
  v2 = 2164269056;
  if (a1 && *(*(a1 + 16) + 8))
  {
    v5 = *(a1 + 2008);
    if (v5)
    {
      heap_Free(*(v5 + 328), *(a1 + 2048));
      WSOLA__Remove((a1 + 2008));
      *(a1 + 2008) = 0;
    }

    *(a1 + 656) = 0;
    v6 = psi_Synthesis__Denit(a1, a1 + 920, a1 + 968, a1 + 1016);
    if (v6)
    {
      v7 = 2164269056;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      return v7;
    }

    else
    {
      v8 = v6;
      v9 = *(*(a1 + 16) + 40);
      v10 = (a1 + 616);
      v28 = *(a1 + 616);
      v29 = *(a1 + 632);
      v11 = paramc_ListenerRemove(v9, "waitfactor", &v28);
      if (v8)
      {
        LODWORD(v2) = -2130698240;
      }

      else
      {
        LODWORD(v2) = v11 & (v11 >> 31);
      }

      v12 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v13 = paramc_ListenerRemove(v12, "pitch", &v28);
      if (v13 < 0 && v2 > -1)
      {
        LODWORD(v2) = v13;
      }

      v15 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v16 = paramc_ListenerRemove(v15, "volume", &v28);
      if (v16 < 0 && v2 > -1)
      {
        LODWORD(v2) = v16;
      }

      v18 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v19 = paramc_ListenerRemove(v18, "rate", &v28);
      if (v19 >= 0 || v2 <= -1)
      {
        v2 = v2;
      }

      else
      {
        v2 = v19;
      }

      v21 = *(a1 + 912);
      if (v21)
      {
        v22 = *(*(a1 + 16) + 40);
        v28 = *v10;
        v29 = *(a1 + 632);
        v23 = paramc_ListenerRemove(v22, v21, &v28);
        if (v23 >= 0 || v2 <= -1)
        {
          v2 = v2;
        }

        else
        {
          v2 = v23;
        }

        heap_Free(*(*(a1 + 16) + 8), *(a1 + 912));
        *(a1 + 912) = 0;
      }

      if (*(a1 + 440))
      {
        objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHOUTPUTSINK");
      }

      if (*(a1 + 32))
      {
        objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
      }

      vu__fillUnitAndSubUnit__Denit((a1 + 1928), *(a1 + 16));
      v25 = *(a1 + 2056);
      if (v25)
      {
        heap_Free(*(*(a1 + 16) + 8), v25);
      }

      v26 = *(*(a1 + 16) + 8);
      if (v26)
      {
        heap_Free(v26, a1);
      }
    }
  }

  return v2;
}

uint64_t eta_synth_doWsolaSynthesis(uint64_t a1)
{
  v2 = eta_Synth_Reset(a1);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  eta_Synth_LinkMsgLayers(a1);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    if (!vu__fillUnitAndSubUnit__Begin(*(a1 + 1928), *(a1 + 16), a1 + 1064, a1 + 464))
    {
      psi_Synthesis__FeedAllUnits(a1, *(a1 + 1928));
      xi_Segment__Init(a1 + 1752, *(a1 + 16), a1 + 1976);
      LODWORD(v4) = eta_PrepareNewBuffers(a1);
      if ((v4 & 0x80000000) == 0 && !eta_InOut__IsEndState(a1 + 1936) && *(a1 + 1944))
      {
        v8 = 0;
        *(a1 + 1964) = 0;
        v9 = *(a1 + 1928);
        v10 = *(v9 + 16);
        *(a1 + 2036) = 0;
        v11 = *(a1 + 512);
        if (*v11 != 35)
        {
          ++*(v9 + 20);
          v8 = 1;
        }

        if (v11[*(a1 + 520) - 1] != 35)
        {
          --v10;
          *(a1 + 2036) = 1;
        }

        v12 = v10 - v8;
        if (v10 > v8)
        {
          do
          {
            if (v12 == 1)
            {
              *(a1 + 2040) = 1;
            }

            psi_Synthesis__ProcessOnePolyphone(a1, --v12 == 0);
          }

          while (v12);
          v9 = *(a1 + 1928);
        }

        vu__fillUnitAndSubUnit__End(v9, *(a1 + 16));
      }
    }

    v5 = eta_Synth_UnlinkMsgLayers(a1);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t synth_bet1b_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_bet1b;
  return result;
}

uint64_t eta_synth_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2164269063;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 83214;
  }

  return result;
}

uint64_t eta_synth_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2164269066;
  if (!a5)
  {
    return 2164269063;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((safeh_HandleCheck(a1, a2, 83214, 408) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v12 = heap_Calloc(*(v31 + 8), 1, 2072);
  if (v12)
  {
    v13 = v12;
    *(v12 + 296) = 0;
    *(v12 + 432) = 0;
    *(v12 + 640) = 0;
    *(v12 + 644) = 0;
    *v12 = a3;
    *(v12 + 8) = a4;
    v14 = v31;
    *(v12 + 16) = v31;
    *(v12 + 24) = a1;
    *(v12 + 2044) = 257;
    Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v30);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v13 + 32) = *(v30 + 8);
    Object = objc_GetObject(*(v31 + 48), "SYNTHOUTPUTSINK", &v30);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v17 = v30;
    v16 = v31;
    *(v13 + 440) = *(v30 + 8);
    *(v13 + 448) = *(v17 + 16);
    v18 = heap_Alloc(*(v16 + 8), 2048);
    *(v13 + 2056) = v18;
    if (!v18)
    {
LABEL_31:
      eta_synth_loc_ObjClose(v13, 0);
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    *(v13 + 616) = v13;
    *(v13 + 624) = eta_synth_CheckChange;
    *(v13 + 632) = eta_synth_LearnChange;
    LODWORD(v27) = 0;
    if ((paramc_ParamGetInt(*(*(v13 + 16) + 40), "waitfactor", &v27) & 0x80000000) != 0)
    {
      *(v13 + 640) = 2;
      paramc_ParamSetInt(*(*(v13 + 16) + 40), "waitfactor", 2);
    }

    else
    {
      *(v13 + 640) = v27;
    }

    LODWORD(v27) = 0;
    v29 = 0;
    if ((paramc_ParamGetUInt(*(*(v13 + 16) + 40), "volume", &v27) & 0x80000000) != 0)
    {
      *(v13 + 648) = 80;
      Object = paramc_ParamSetUInt(*(*(v13 + 16) + 40), "volume", 80);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = v27;
      if (v27 >= 0x64u)
      {
        v19 = 100;
      }

      *(v13 + 648) = v19;
    }

    if ((paramc_ParamGetUInt(*(*(v13 + 16) + 40), "rate", &v29) & 0x80000000) == 0)
    {
      v20 = v29;
      if (v29 >= 0x190u)
      {
        v20 = 400;
      }

      *(v13 + 652) = v20;
      *(v13 + 650) = v20;
LABEL_23:
      v21 = (v13 + 616);
      v22 = *(*(v13 + 16) + 40);
      v27 = *(v13 + 616);
      v28 = *(v13 + 632);
      Object = paramc_ListenerAdd(v22, "waitfactor", &v27);
      if ((Object & 0x80000000) == 0)
      {
        v23 = *(*(v13 + 16) + 40);
        v27 = *v21;
        v28 = *(v13 + 632);
        Object = paramc_ListenerAdd(v23, "pitch", &v27);
        if ((Object & 0x80000000) == 0)
        {
          v24 = *(*(v13 + 16) + 40);
          v27 = *v21;
          v28 = *(v13 + 632);
          Object = paramc_ListenerAdd(v24, "volume", &v27);
          if ((Object & 0x80000000) == 0)
          {
            v25 = *(*(v13 + 16) + 40);
            v27 = *v21;
            v28 = *(v13 + 632);
            Object = paramc_ListenerAdd(v25, "rate", &v27);
            if ((Object & 0x80000000) == 0)
            {
              Object = eta_synth_InterceptUnsupportedAddonLoading(v13);
              if ((Object & 0x80000000) == 0)
              {
                *a5 = v13;
                *(a5 + 8) = 83213;
                return eta_synth_ObjReopen(v13, *(a5 + 8));
              }
            }
          }
        }
      }

      goto LABEL_30;
    }

    *(v13 + 650) = 6553700;
    Object = paramc_ParamSetUInt(*(*(v13 + 16) + 40), "rate", 100);
    if ((Object & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    v5 = Object;
    goto LABEL_31;
  }

  return v5;
}

uint64_t eta_synth_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  return eta_synth_loc_ObjClose(a1, 0);
}

uint64_t eta_synth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = 2164269065;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v25 = 0;
  *(a1 + 296) = 0;
  *(a1 + 2068) = 0;
  WSOLA__Initialise(*(a1 + 2008));
  *(a1 + 650) = 6553700;
  if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "rate", &v25) & 0x80000000) != 0)
  {
    result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "rate", 100);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    v8 = v25;
    if (v25 >= 0x190u)
    {
      v8 = 400;
    }

    *(a1 + 652) = v8;
    *(a1 + 650) = v8;
  }

  *(a1 + 2016) = 0;
  *(a1 + 2044) = 0;
  v10 = a1 + 40;
  v11 = "text/x-realspeak-usphonemes;charset=tts";
  v12 = 1u;
  do
  {
    v13 = *(a1 + 296);
    if (v13 > 7)
    {
      goto LABEL_22;
    }

    result = (*(*(a1 + 32) + 64))(a3, a4, 16, v11, 0, 0, v10 + 32 * v13 + 16);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v14 = *(a1 + 296);
    v15 = v10 + 32 * v14;
    *v15 = 0;
    *(v15 + 8) = v11;
    *(a1 + 296) = v14 + 1;
    v11 = eta_synth_ProcessStart_szINPUT_STREAMS[v12++];
  }

  while (v12 != 6);
  v13 = *(a1 + 296);
  if (v13 > 7)
  {
    goto LABEL_22;
  }

  result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v10 + 32 * v13 + 16);
  if ((result & 0x80000000) == 0)
  {
    v16 = *(a1 + 296);
    v17 = v10 + 32 * v16;
    *v17 = 0;
    *(v17 + 8) = "application/x-realspeak-markers-pp;version=4.0";
    LOWORD(v16) = v16 + 1;
    *(a1 + 296) = v16;
    result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v10 + 32 * v16 + 16);
    if ((result & 0x80000000) == 0)
    {
      v18 = *(a1 + 296);
      v19 = v10 + 32 * v18;
      *v19 = 1;
      *(v19 + 8) = "application/x-realspeak-markers-pp;version=4.0";
      *(a1 + 432) = v18;
      *(a1 + 296) = v18 + 1;
    }
  }

LABEL_16:
  LODWORD(v13) = *(a1 + 296);
  if (v13 > 7)
  {
LABEL_22:
    v22 = 0;
    v23 = (a1 + 64);
    do
    {
      v24 = *(v23 - 1);
      if (v24)
      {
        (*(*(a1 + 32) + 72))(v24, *v23);
        LOWORD(v13) = *(a1 + 296);
      }

      ++v22;
      v23 += 4;
    }

    while (v22 < v13);
    LOWORD(v13) = 0;
    result = v7;
    goto LABEL_27;
  }

  if ((result & 0x80000000) == 0)
  {
    strcpy(__s, "audio/L16;rate=");
    v20 = strlen(__s);
    LH_itoa(*(a1 + 1988), &__s[v20], 0xAu);
    result = (*(*(a1 + 32) + 64))(a3, a4, 16, __s, 0, 1, v10 + 32 * *(a1 + 296) + 16);
    v13 = *(a1 + 296);
    if ((result & 0x80000000) == 0)
    {
      v21 = v10 + 32 * v13;
      *v21 = 1;
      *(v21 + 8) = 0;
      *(a1 + 434) = v13;
      LOWORD(v13) = v13 + 1;
      goto LABEL_27;
    }
  }

  if (v13)
  {
    v7 = result;
    goto LABEL_22;
  }

LABEL_27:
  *(a1 + 296) = v13;
  return result;
}

uint64_t eta_synth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v33 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v7 = (*(*(a1 + 32) + 144))(*(a1 + 56), *(a1 + 64), &v33 + 4, &v33);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (HIDWORD(v33))
  {
    v8 = eta_synth_doWsolaSynthesis(a1);
    goto LABEL_5;
  }

  v34 = 0;
  v8 = eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v34);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v12 = *(v34 + 8);
  if (v12 < 0x20)
  {
    goto LABEL_50;
  }

  v13 = heap_Alloc(*(*(a1 + 16) + 8), v12);
  *(a1 + 600) = v13;
  if (!v13)
  {
    v8 = 2164269066;
    goto LABEL_50;
  }

  memcpy(v13, *v34, *(v34 + 8));
  v14 = 0;
  v15 = 0;
  *(a1 + 608) = (*(v34 + 8) >> 5);
  v16 = (a1 + 1936);
  v17 = (a1 + 1944);
  while (1)
  {
    v18 = *(a1 + 608);
    if (v14 >= v18)
    {
      goto LABEL_44;
    }

    v19 = (*(a1 + 600) + 32 * v14);
    v19[3] = 0;
    v19[4] = 0;
    v20 = *v19;
    if (*v19 == 8)
    {
      break;
    }

    if (v20 == 25)
    {
      v21 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", v19[6]);
      goto LABEL_24;
    }

    if (v20 == 13)
    {
      v21 = eta_synth_ResetParams(a1);
LABEL_24:
      v8 = v21;
    }

LABEL_25:
    ++v14;
    if ((v8 & 0x80000000) != 0)
    {
      LODWORD(v18) = *(a1 + 608);
LABEL_44:
      if (v15 >= v18)
      {
        goto LABEL_47;
      }

      if (!*v16)
      {
        *(a1 + 1944) = 0;
        *(a1 + 1948) = 0;
        v8 = eta_PushSamplesAndMarkersOut(a1, 0, (a1 + 1936), (a1 + 1944), 0, 0);
        if ((v8 & 0x80000000) != 0 || !*v16)
        {
          goto LABEL_47;
        }

        LODWORD(v18) = *(a1 + 608);
      }

      *(a1 + 1944) = 0;
      *(a1 + 1948) = 3;
      v8 = eta_PushSamplesAndMarkersOut(a1, 3, (a1 + 1936), (a1 + 1944), *(a1 + 600) + 32 * v15, v18 - v15);
      goto LABEL_47;
    }
  }

  v22 = v19[6];
  if (v22 < 1)
  {
    goto LABEL_25;
  }

  v23 = fxd_S32ShMultRndS32S32(v19[6], 107374182, 31) + 22 * v22;
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = *v16;
  if (!*v16)
  {
    *(a1 + 1944) = 0;
    *(a1 + 1948) = 0;
    v8 = eta_PushSamplesAndMarkersOut(a1, 0, (a1 + 1936), (a1 + 1944), 0, 0);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v24 = *v16;
    if (!*v16)
    {
      goto LABEL_47;
    }
  }

  if (v23 < 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v25 = *v17;
    if (v23 >= *v17)
    {
      v23 -= v25;
    }

    else
    {
      *v17 = v23;
      v25 = v23;
      v23 = 0;
    }

    *(a1 + 1948) = 2;
    bzero(v24, 2 * v25);
    v8 = eta_PushSamplesAndMarkersOut(a1, *(a1 + 1948), (a1 + 1936), (a1 + 1944), *(a1 + 600) + 32 * v15, v14 + 1 - v15);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v24 = *v16;
    if (!*v16)
    {
      break;
    }

    v15 = v14 + 1;
    if (v23 < 1)
    {
      v15 = v14 + 1;
      goto LABEL_25;
    }
  }

LABEL_47:
  v27 = *(a1 + 600);
  if (v27)
  {
    heap_Free(*(*(a1 + 16) + 8), v27);
    *(a1 + 600) = 0;
  }

  *(a1 + 608) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 1936) = 0;
LABEL_50:
  if (v33)
  {
    v28 = *(a1 + 296);
    if (*(a1 + 296))
    {
      v29 = 0;
      v30 = (a1 + 64);
      do
      {
        if (*(v30 - 1) && *(v30 - 6) == 1)
        {
          v31 = (*(*(a1 + 32) + 72))();
          if (v31 >= 0)
          {
            v8 = v8;
          }

          else
          {
            v8 = v31;
          }

          *(v30 - 1) = safeh_GetNullHandle();
          *v30 = v32;
          v28 = *(a1 + 296);
        }

        ++v29;
        v30 += 4;
      }

      while (v29 < v28);
    }
  }

LABEL_5:
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v9 = (a1 + 64);
  v10 = (a1 + 312);
  v11 = -1;
  while (++v11 < *(a1 + 296))
  {
    if (!*(v9 - 6))
    {
      v8 = (*(*(a1 + 32) + 96))(*(v9 - 1), *v9, *v10);
    }

    v9 += 4;
    v10 += 4;
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }
  }

  if (eta_InOut__IsEndState(a1 + 1936))
  {
LABEL_41:
    *(a1 + 1960) = 7;
    chi_DecodePolyphone__DeinitPoly((a1 + 1232));
    psi_DataMapSegment__DeinitPoly(a1 + 1064);
    xi_Segment__DeinitPoly((a1 + 1752));
  }

  return v8;
}

uint64_t eta_synth_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 83213, 2072);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  v5 = *(a1 + 296);
  if (*(a1 + 296))
  {
    v6 = 0;
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = (*(*(a1 + 32) + 72))(v8, *v7);
        if (v9 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v9;
        }

        *(v7 - 1) = safeh_GetNullHandle();
        *v7 = v10;
        v5 = *(a1 + 296);
      }

      ++v6;
      v7 += 4;
    }

    while (v6 < v5);
  }

  *(a1 + 296) = 0;
  return v4;
}

uint64_t eta_synth_CheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "waitfactor"))
  {
    if (LH_atou(a3) >= 0xA)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!strcmp(__s1, "pitch"))
  {
    if (atoi(a3) != 50)
    {
      *a4 = 0;
      return 2164269057;
    }

    return 0;
  }

  if (!strcmp(__s1, "rate"))
  {
    if ((atoi(a3) - 50) >= 0x15F)
    {
LABEL_16:
      result = 2164269071;
      *a4 = 0;
      return result;
    }

    return 0;
  }

  if (!strcmp(__s1, "volume"))
  {
    if (atoi(a3) >= 0x65)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!strcmp(__s1, *(a1 + 912)))
  {
    *a4 = 0;
    return 2164269057;
  }

  else
  {
    v8 = *(a1 + 1960);
    *a4 = 0;
    if (v8 == 7)
    {
      return 2164269073;
    }

    else
    {
      return 2164269063;
    }
  }
}

uint64_t eta_synth_LearnChange(uint64_t a1, char *__s1, const char *a3)
{
  v6 = 2164269071;
  if (!strcmp(__s1, "waitfactor"))
  {
    v7 = atoi(a3);
    if (v7 <= 9u)
    {
      v6 = 0;
      *(a1 + 640) = v7;
      v8 = *(a1 + 1988) * (v7 & 0xF);
      if ((v8 + 6) < 9)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v8 + 2) / 5;
      }

      *(a1 + 644) = v9;
    }
  }

  else if (!strcmp(__s1, "volume"))
  {
    v10 = atoi(a3);
    if (v10 <= 0x64)
    {
      v6 = 0;
      *(a1 + 648) = v10;
    }
  }

  else if (!strcmp(__s1, "rate"))
  {
    v11 = atoi(a3);
    if ((v11 - 50) <= 0x15E)
    {
      v6 = 0;
      *(a1 + 652) = *(a1 + 650);
      *(a1 + 650) = v11;
    }
  }

  else
  {
    return 2164269063;
  }

  return v6;
}

uint64_t eta_synth_InterceptUnsupportedAddonLoading(uint64_t a1)
{
  v15 = 0;
  __s = 0;
  result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "voice", &__s);
  if ((result & 0x80000000) == 0)
  {
    v3 = strlen(__s);
    v4 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v3 + 13));
    *(a1 + 912) = v4;
    if (v4)
    {
      strcpy(v4, "voiceaddons.");
      v5 = strlen(*(a1 + 912));
      v6 = __s;
      if (*__s)
      {
        v7 = v5;
        v8 = 0;
        v9 = 1;
        do
        {
          *(*(a1 + 912) + v7) = __tolower(v6[v8]);
          v8 = v9;
          v6 = __s;
          ++v7;
        }

        while (strlen(__s) > v9++);
      }

      paramc_ParamRelease(*(*(a1 + 16) + 40));
      if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), *(a1 + 912), &v15) & 0x80000000) == 0 || (result = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 912), ""), (result & 0x80000000) == 0) && (result = paramc_ParamGetStr(*(*(a1 + 16) + 40), *(a1 + 912), &v15), (result & 0x80000000) == 0))
      {
        v11 = *(*(a1 + 16) + 40);
        v12 = *(a1 + 912);
        v13 = *(a1 + 616);
        v14 = *(a1 + 632);
        return paramc_ListenerAdd(v11, v12, &v13);
      }
    }

    else
    {
      return 2164269066;
    }
  }

  return result;
}

uint64_t eta_PushSamplesAndMarkersOut(uint64_t a1, int a2, void *a3, int *a4, uint64_t a5, unsigned int a6)
{
  v26 = 0;
  v27 = a6;
  result = 2164269062;
  if (a1 && a3 && a4)
  {
    if (a5)
    {
      if (a6)
      {
        v13 = a1 + 40 + 32 * *(a1 + 434);
        result = (*(*(a1 + 32) + 136))(*(v13 + 16), *(v13 + 24), &v26);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        v14 = v26 >> 1;
        v26 >>= 1;
        v15 = a6;
        v16 = 12;
        do
        {
          *(a5 + v16) += v14;
          v16 += 32;
          --v15;
        }

        while (v15);
        v17 = a1 + 40 + 32 * *(a1 + 432);
        result = (*(*(a1 + 32) + 104))(*(v17 + 16), *(v17 + 24), a5, 32 * a6);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    v18 = *(a1 + 2064);
    v19 = *(a1 + 2068);
    if (v18 <= v19)
    {
      v20 = 0;
    }

    else
    {
      if (v18 <= *a4 + v19)
      {
        v20 = v18 - v19;
      }

      else
      {
        v20 = *a4;
      }

      if (*a3 && v20)
      {
        v21 = a1 + 32 * *(a1 + 434);
        result = (*(*(a1 + 32) + 104))(*(v21 + 56), *(v21 + 64));
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        *(a1 + 2068) += v20;
      }
    }

    if (a2 == 3)
    {
      v22 = 1;
    }

    else if (a6)
    {
      v22 = 2;
    }

    else
    {
      v22 = 2 * (*a4 != 0);
    }

    result = (**(a1 + 440))(*(a1 + 448), *(a1 + 456), v22, a1 + 2064, &v27);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    *(a1 + 2068) = 0;
    if (*a4 > v20)
    {
      v23 = a1 + 32 * *(a1 + 434);
      result = (*(*(a1 + 32) + 104))(*(v23 + 56), *(v23 + 64), *(a1 + 2056) + 2 * v20, 2 * (*a4 - v20));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      *(a1 + 2068) = *a4 - v20;
    }

    if (a2 != 3)
    {
      v24 = *(a1 + 2056);
      v25 = 1024;
      goto LABEL_30;
    }

LABEL_29:
    v24 = 0;
    v25 = 0;
LABEL_30:
    *a3 = v24;
    *a4 = v25;
  }

  return result;
}

uint64_t Rhelp2_Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t **a5)
{
  v19 = 0;
  v18 = 0uLL;
  inited = InitRsrcFunction(a1, a2, &v19);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v11 = heap_Calloc(*(v19 + 8), 1, 968);
    if (!v11)
    {
      return 2164269066;
    }

    v12 = v11;
    *v11 = v19;
    v11[1] = a3;
    __strcpy_chk();
    v17 = xmmword_1C3827BD0;
    Data = psi_VFDat__loadData((v12 + 29), a1, a2, a4, (v12 + 11), 0, (v12 + 17), 0, (v12 + 23), 1);
    if ((Data & 0x80000000) != 0 || (Data = psi_Lookup__InitFromDatFiles(v12 + 58, (v12 + 11), (v12 + 17), (v12 + 23), 0), (Data & 0x80000000) != 0))
    {
      v14 = Data;
    }

    else
    {
      v14 = chi_DecodePolyphone__Create((v12 + 50), 0, v19, v12[24], &v17);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v18;
        *(v12 + 117) = v17;
        *(v12 + 119) = v15;
LABEL_10:
        *a5 = v12;
        return v14;
      }
    }

    *a5 = v12;
    Rhelp2_Lookup_ObjClose(a5);
    v12 = 0;
    goto LABEL_10;
  }

  return inited;
}

uint64_t Rhelp2_Lookup_ObjClose(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = chi_DecodePolyphone__Delete(v2 + 50, *v2);
    if ((v3 & 0x80000000) == 0)
    {
      v3 = psi_VFDat__unloadData((v2 + 29), (v2 + 11), (v2 + 17), (v2 + 23));
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  heap_Free(*(*v2 + 8), v2);
  *a1 = 0;
  return v4;
}

uint64_t Rhelp2_LoadUnitData(uint64_t a1, int a2, int *a3, unsigned int *a4, _DWORD *a5, _WORD *a6, unsigned int a7)
{
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v44 = 0;
  v12 = *a3;
  if (*a3 <= 0x35B)
  {
    v13 = 860 - *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a4;
  PreviousDemiID = psi_Lookup__getPreviousDemiID(a1 + 232, a2, &v49, &v50 + 1, &v52 + 1, &v52, &v51 + 1, &v50, &v51);
  if ((PreviousDemiID & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  v36 = a5;
  v39 = v52;
  v16 = HIDWORD(v51);
  v37 = a7;
  v38 = v51;
  v17 = a4;
  v18 = v12 - 860;
  if (v12 < 0x35C)
  {
    v19 = HIDWORD(v52) + 860;
    v23 = v12;
  }

  else
  {
    v19 = HIDWORD(v52) + 860;
    if (v12 == 860)
    {
      v23 = 860;
    }

    else
    {
      if (HIDWORD(v51))
      {
        v20 = HIDWORD(v51) + 860;
      }

      else
      {
        v20 = 860;
      }

      if (HIDWORD(v51))
      {
        v19 += HIDWORD(v51);
      }

      v21 = HIDWORD(v51) >= v18;
      v22 = HIDWORD(v51) - v18;
      if (v21)
      {
        v23 = v12;
      }

      else
      {
        v23 = v20;
      }

      if (v21)
      {
        v19 = HIDWORD(v52) + v12;
      }

      v16 = v21 ? v22 : 0;
    }
  }

  if (v14 - 440 >= 0x35D)
  {
    v24 = 1300;
  }

  else
  {
    v24 = v14;
  }

  if (v14 == 440)
  {
    v25 = 440;
  }

  else
  {
    v25 = v24;
  }

  if (HIBYTE(v50))
  {
    v25 = 440;
  }

  if (v14 < 0x1B8)
  {
    v26 = 440;
  }

  else
  {
    v14 = v25;
    v26 = v25;
  }

  v27 = HIBYTE(v50) != 0;
  v28 = v19 + v26;
  xi_Segment__Init_for_psola(a1 + 760, *a1, a1 + 936);
  *a3 = v23;
  *v17 = v14;
  v42 = __PAIR64__(v28, v16);
  LODWORD(v43) = 0;
  HIDWORD(v43) = v39;
  LODWORD(v44) = 0x10000;
  HIDWORD(v44) = v38;
  LOBYTE(v45) = 68;
  BYTE1(v45) = 16 * v27;
  PreviousDemiID = vect_s_t__createVect(*(*a1 + 8), &v46, v16 + v28 + 2160);
  if ((PreviousDemiID & 0x80000000) != 0 || (LODWORD(v48) = HIDWORD(v48), PreviousDemiID = psi_DataMapSegment__InitPoly(a1 + 232, &v43 + 1, &v44 + 1), (PreviousDemiID & 0x80000000) != 0) || (PreviousDemiID = xi_Segment__InitPoly_withDur(a1 + 760, &v42, HIDWORD(v43), SHIDWORD(v44), *(a1 + 256), *(*(a1 + 272) + 44)), (PreviousDemiID & 0x80000000) != 0))
  {
LABEL_40:
    inited = PreviousDemiID;
  }

  else
  {
    inited = chi_DecodePolyphone__InitPoly(a1 + 400);
    if ((inited & 0x80000000) == 0)
    {
      v30 = HIDWORD(v42);
      *(a1 + 672) = HIDWORD(v44);
      v41 = v30;
      chi_DecodePolyphone__SmpRequested(a1 + 400, (a1 + 760), &v41, &v46);
      v31 = *a3 + HIDWORD(v52) + *v17;
      *v36 = v31;
      if (v31 <= v37)
      {
        if (v12 <= 0x35B)
        {
          if (v31)
          {
            v35 = v47;
            do
            {
              *a6++ = v35[v13++];
              --v31;
            }

            while (v31);
          }
        }

        else if (v31)
        {
          v33 = v47;
          do
          {
            v34 = *v33++;
            *a6++ = v34;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        inited = 2164269065;
      }
    }
  }

  vect_i_t__deleteVect(&v46);
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return inited;
}

uint64_t Rhelp2_Lookup_Deinit(uint64_t a1)
{
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return 0;
}

uint64_t Rhelp2_Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 236);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Rhelp2_Lookup_Fingerprint(uint64_t a1, char *__dst, size_t __n)
{
  v3 = __n;
  v5 = 2164269057;
  v6 = *(a1 + 80);
  if (v6)
  {
    if (strlen(*(a1 + 80)) >= __n)
    {
      v5 = 2164269057;
    }

    else
    {
      v5 = 0;
    }

    strncpy(__dst, v6, v3);
  }

  else
  {
    v7 = *(a1 + 236);
    v8 = __n;
    v9 = strncpy(__dst, (a1 + 16), __n);
    LODWORD(v10) = strlen(v9);
    v11 = v10 < v3;
    if (v10 < v3 && v7)
    {
      v10 = v10;
      do
      {
        __dst[v10++] = (v7 % 0xA) | 0x30;
        v11 = v10 < v3;
        if (v10 >= v8)
        {
          break;
        }

        v12 = v7 > 9;
        v7 /= 0xAu;
      }

      while (v12);
    }

    if (v11)
    {
      v5 = 0;
      __dst[v10] = 0;
    }
  }

  return v5;
}

uint64_t rhelp2_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup;
  return result;
}

uint64_t psi_Synthesis__Denit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2164269056;
  if (!a1)
  {
    return 2164269062;
  }

  if (chi_DecodePolyphone__Delete((a1 + 1232), *(a1 + 16)))
  {
    log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, "error in chi_DecodePolyphone__Delete");
  }

  else if (rho_Concat__Delete(a1 + 1592))
  {
    log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, "error in rho_Concat__Delete");
  }

  else if (psi_VFDat__unloadData(a1 + 1064, a2, a3, a4))
  {
    log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, "error in psi_VFDat__unloadData");
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t psi_Synthesis__Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2164269056;
  if (a1)
  {
    *(a1 + 1928) = 0;
    if (*(a5 + 12) == 22050)
    {
      if (psi_Lookup__InitFromDatFiles((a1 + 1064), a2, a3, a4, 0))
      {
        log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, "error in psi_Lookup__InitFromDatFiles");
      }

      else
      {
        v9 = a1 + 16;
        if (chi_DecodePolyphone__Create(a1 + 1232, a1, *(a1 + 16), *(a4 + 8), a5))
        {
          log_OutText(*(*v9 + 32), "SYNTH", 3, 0, "error in chi_DecodePolyphone__Create");
        }

        else
        {
          if (!rho_Concat__Create(a1 + 1592, *(a1 + 16), a5))
          {
            v5 = 0;
            v11 = *(a5 + 16);
            *(a1 + 1976) = *a5;
            *(a1 + 1992) = v11;
            return v5;
          }

          log_OutText(*(*v9 + 32), "SYNTH", 3, 0, "error in rho_Concat__Create");
        }
      }
    }

    psi_Synthesis__Denit(a1, a1 + 920, a1 + 968, a1 + 1016);
  }

  return v5;
}

uint64_t psi_Synthesis__FeedAllUnits(uint64_t a1, uint64_t a2)
{
  result = 2164269056;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 1928) = a2;
      *(a2 + 20) = 0;
      *(a1 + 1960) = 3;
    }
  }

  return result;
}

uint64_t psi_Synthesis__ProcessOnePolyphone(uint64_t a1, int a2)
{
  result = 0;
  v4 = *(a1 + 1960);
  if (v4 == 7)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (v4 != 5)
  {
    if (v4 != 3)
    {
      return result;
    }

    *(a1 + 1960) = 5;
  }

  result = rho_concatenate((a1 + 1592), a1 + 1232, (a1 + 1752), (a1 + 1928), a1 + 1064, a2);
  if (result)
  {
    v5 = result;
    if (*(*(a1 + 1928) + 20) != *(*(a1 + 1928) + 16))
    {
      return v5;
    }

    LODWORD(result) = 7;
LABEL_9:
    *(a1 + 1960) = result;
    return v5;
  }

  return result;
}

_DWORD *v_equ_i_t(_DWORD *result, int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

_WORD *v_equ_s_t(_WORD *result, __int16 *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_s_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, (2 * a2));
  }

  return a1;
}

_BYTE *v_equ_uc_t(_BYTE *result, char *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t vect_i_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = a1;
    v6 = heap_Calloc(a1, 4, a3);
    *(a2 + 8) = v6;
    if (v6)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v6, 4 * a3);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_i_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_s_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 2, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v7, 2 * v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_c_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 1, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v7, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_uc_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a3;
  *a2 = a1;
  v6 = heap_Calloc(a1, 1, a3);
  *(a2 + 8) = v6;
  if (!v6)
  {
    return 2164269066;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  bzero(v6, v5);
  return 0;
}

uint64_t rho_Concat__OverlapWindow__Init(uint64_t a1, int a2)
{
  v2 = 2164269056;
  if (a2 > 15999)
  {
    if (a2 == 16000)
    {
      v3 = 161;
      v4 = &smpOverlapWindow_16_0;
      goto LABEL_10;
    }

    if (a2 == 22050)
    {
      v3 = 221;
      v4 = &smpOverlapWindow_22_0;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v3 = 81;
      v4 = &smpOverlapWindow_8_0;
      goto LABEL_10;
    }

    if (a2 == 11025)
    {
      v3 = 113;
      v4 = &smpOverlapWindow_11_0;
LABEL_10:
      v2 = 0;
      *(a1 + 136) = v4;
      *(a1 + 144) = v3;
      *(a1 + 148) = v3;
    }
  }

  return v2;
}

uint64_t rho_Concat__OverlapWindow__Denit(uint64_t a1)
{
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return 0;
}

uint64_t rho_Concat__WindowsOverlap_wsola(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 8) + 2 * a4;
    v8 = *(a3 + 8) + 2 * a5;
    v9 = *(a1 + 136);
    v10 = 4 * v5;
    do
    {
      v11 = *(v7 + 2 * v6);
      v12 = *(v9 + 4 * v6);
      v13 = *(v9 + 4 * v6) >> 16;
      v14 = v11 >> 16;
      v15 = (v11 * v13 + v14 * v12 + ((v11 * v12 + 0x8000) >> 16) + 0x2000) >> 14;
      LOWORD(v13) = v14 * v13;
      v16 = *(v8 + 2 * v6);
      *(v7 + 2 * v6++) = v15 + 4 * (v13 + (v16 >> 15) * HIWORD(*(v9 + v10))) + ((v16 * (*(v9 + v10) >> 16) + (v16 >> 16) * *(v9 + v10) + ((v16 * *(v9 + v10) + 0x8000) >> 16) + 0x2000) >> 14);
      v10 -= 4;
    }

    while (v10);
  }

  return 0;
}

uint64_t rho_Concat__fade_out_closure(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a1 + 136);
  v6 = *(a2 + 8) + 2 * a3;
  do
  {
    if ((a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    v7 = *(v6 + 2 * v4);
    v8 = *(v5 + 4 * v4);
    *(v6 + 2 * v4) = ((v7 * (*(v5 + 4 * v4) >> 16) + (v7 >> 16) * v8 + ((v7 * v8 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(*(v5 + 4 * v4)) * (v7 >> 15);
    ++v4;
  }

  while (v4 < *(a1 + 144));
  return 0;
}

uint64_t rho_Concat__fade_in_burst(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 144) - 1;
  v5 = (*(a2 + 8) + 2 * a3);
  v6 = a4 & ~(a4 >> 31);
  v7 = v4 + 5;
  v8 = (*(a1 + 136) + 4 * v4);
  do
  {
    if (!v6)
    {
      break;
    }

    v9 = *v8;
    v8 -= 5;
    *v5 = ((*v5 * (v9 >> 16) + (*v5 >> 16) * v9 + ((*v5 * v9 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(v9) * (*v5 >> 15);
    ++v5;
    --v6;
    v7 -= 5;
  }

  while (v7 > 4);
  return 0;
}

uint64_t eta_Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  if (*(a1 + 296))
  {
    v7 = 0;
    v8 = 32 * *(a1 + 296);
    v9 = 304;
    for (i = 312; ; i += 16)
    {
      v11 = *(a1 + v7 + 48);
      if (v11)
      {
        if (!*(a1 + v7 + 40) && !strcmp(v11, __s2))
        {
          break;
        }
      }

      v9 += 16;
      v7 += 32;
      if (v8 == v7)
      {
        return v3;
      }
    }

    if (*(a1 + v9))
    {
      v3 = 0;
LABEL_11:
      *a3 = a1 + v9;
      return v3;
    }

    v3 = (*(*(a1 + 32) + 88))(*(a1 + v7 + 56), *(a1 + v7 + 64), a1 + v9, a1 + i);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  return v3;
}

void eta_Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 464) = *(a1 + 16);
  if ((eta_Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v2 = v13;
    v3 = *v13 + 1;
    *(a1 + 472) = **v13;
    *(a1 + 512) = v3;
    v4 = (*(v2 + 8) - 2);
    *(a1 + 520) = v4;
    if (!*(v3 + v4) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = v13;
      *(a1 + 488) = *v13;
      LODWORD(v5) = *(v5 + 8) >> 2;
      *(a1 + 496) = v5;
      if (v5 == 2 * *(a1 + 520) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
      {
        v6 = v13;
        v7 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
        *(a1 + 536) = v7;
        if (v7)
        {
          memcpy(v7, *v6, *(v6 + 8));
          if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
          {
            v8 = v13;
            v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
            *(a1 + 560) = v9;
            if (v9)
            {
              memcpy(v9, *v8, *(v8 + 8));
              if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 584) = v11;
                if (v11)
                {
                  memcpy(v11, *v10, *(v10 + 8));
                  if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    eta_Synth_SetupMarkers(a1 + 464, *v13, *(v13 + 8) >> 5, (v13 + 8));
                    *v12 *= 32;
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

__n128 eta_Synth_SetupMarkers(uint64_t a1, int *a2, int a3, int *a4)
{
  v8 = (*(a1 + 56) + a3);
  *(a1 + 144) = v8;
  if (a3 >= 1)
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10;
      v10 += 8;
      if (v11 == 8)
      {
        *(a1 + 144) = ++v8;
      }

      --v9;
    }

    while (v9);
  }

  v12 = heap_Calloc(*(*a1 + 8), v8, 32);
  *(a1 + 136) = v12;
  if (!v12)
  {
    return result;
  }

  if (*(a1 + 56) < 1)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  v14 = 0;
  i = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 72) + v14);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v16);
      *v19 = 8;
      v19[6] = 0;
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v16 >= *(a1 + 144))
      {
        continue;
      }

      v20 = &a2[8 * v17];
      if (*v20 == 33)
      {
        if (v20[6] != 35)
        {
          goto LABEL_21;
        }
      }

      else if (*v20 != 8 || !v20[6])
      {
        goto LABEL_21;
      }

      i = 1;
LABEL_21:
      result = *v20;
      v21 = *(v20 + 1);
      v22 = *(a1 + 136) + 32 * v16;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v16;
    }

    v23 = *(a1 + 48);
    if (v14 || *v23 != 35 || (*(a1 + 8) & 1) != 0)
    {
      v24 = (*(a1 + 136) + 32 * v16);
      *v24 = 33;
      v24[6] = v23[v14];
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    ++v14;
  }

  while (v14 < *(a1 + 56));
  v25 = v16;
LABEL_31:
  *(a1 + 144) = v25;
  *a4 = v17;
  if (**(a1 + 48) == 35)
  {
    v26 = *(a1 + 72);
    if (!*v26)
    {
      v27 = v26[1];
      if (*(a1 + 56) < 3)
      {
        *v26 = v27;
        *(*(a1 + 72) + 1) = 0;
      }

      else if (v26[1])
      {
        v28 = 0;
        v29 = 32 * v27;
        while (32 * (*(a1 + 144) & ~(*(a1 + 144) >> 31)) != v28)
        {
          v30 = *(a1 + 136);
          if (v30[v28 / 0x10].n128_u32[0] == 0x4000)
          {
            v31 = &v30[v28 / 0x10];
            v32 = *v31;
            result = v31[1];
            v33 = v30[1];
            *v31 = *v30;
            v31[1] = v33;
            v34 = *(a1 + 136);
            *v34 = v32;
            v34[1] = result;
            ++**(a1 + 72);
            --*(*(a1 + 72) + 1);
            return result;
          }

          v28 += 32;
          if (v29 == v28)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t eta_Synth_UnlinkMsgLayers(void *a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  v2 = a1[73];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[73] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[70];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[70] = 0;
  }

  v5 = a1[75];
  if (!v5)
  {
    return 0;
  }

  heap_Free(*(a1[2] + 8), v5);
  result = 0;
  a1[75] = 0;
  return result;
}

uint64_t eta_Synth_Reset(uint64_t a1)
{
  mu_Reset(a1 + 1936);
  *(a1 + 1688) = 0;
  return 0;
}

uint64_t smc1175mrf22spi_DecoderProcess_F1(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a7 && a4 && a3 && a5 && (v14 = a6) != 0)
  {
    if (*a4)
    {
      v38 = 0;
      *a7 = 0;
      result = SecurelyRetrievePointer(a1, a2, &v38);
      if ((result & 0x80000000) == 0)
      {
        v17 = v38;
        v19 = (v38 + 4);
        v18 = *(v38 + 2);
        if (v18 <= *a4)
        {
          v20 = (a5 + 608);
          *(v38 + 1) = 19;
          ReadStream_CheckWhatModeFirst((v17 + 76), v17 + 65, a3, *v17, v18, v17 + 1, v41, (v17 + 1070), v17 + 3, v19, v17 + 6, 1, *(v17 + 2506), 4);
          smc1175mrf22_ReadStream(a3, v38[4], (a5 + 608), v38[6], v38 + 1070);
          v21 = v38;
          *a4 = *(v38 + 2);
          fxd_MultiStageVectorDecodeLsp__32BIT(a8, *(v21 + 4 * a9 + 152), (v21 + 32 * a9 + 164), *(v21 + 8 * a9 + 360), 0x10u, v21 + 40 * a9 + 32, (a5 + 1340));
          fxd_OrderCheckLsp__S32((a5 + 1340), 16);
          LH_S32ToLH_S32((a5 + 1340), v38 + 1036, 0x10u);
          v22 = 0;
          for (i = 0; i != 4; ++i)
          {
            v24 = v38;
            v38[995] = 0;
            v25 = (*(v24 + 49) + 160 * i);
            v25[8] = 0u;
            v25[9] = 0u;
            v25[6] = 0u;
            v25[7] = 0u;
            v25[4] = 0u;
            v25[5] = 0u;
            v25[2] = 0u;
            v25[3] = 0u;
            *v25 = 0u;
            v25[1] = 0u;
            if (*(v24 + 1) == 19 && i < *v24)
            {
              LOBYTE(v26) = 0;
              v27 = 0;
            }

            else
            {
              v26 = *v20;
              v27 = v20[1];
              v20 += 2;
            }

            smc1175mrf22_fxd_DecodWFSet1_5p(a5, v40, 80, v26, v27);
            v28 = 0;
            v29 = v38;
            do
            {
              v30 = *(a5 + v28);
              v31 = (2 * v30 * v29[996] + 0x4000) >> 15;
              if (v31 <= -32768)
              {
                v31 = -32768;
              }

              if (v31 >= 0x7FFF)
              {
                LOWORD(v31) = 0x7FFF;
              }

              *(a5 + v28) = v30 + v31;
              v28 += 2;
            }

            while (v28 != 160);
            if (*(v29 + 1) == 19 && i < *v29)
            {
              v32 = 0;
            }

            else
            {
              v33 = *v20++;
              v32 = smc1175mrf22_fxd_DecodeCodeGain(v33, a5, 0, (v29 + 917), 80);
              v29 = v38;
            }

            v34 = 0;
            v29[982] = v32;
            v29[969] = v32;
            v35 = *(v29 + 49);
            v36 = v35 + 160 * i;
            v37 = v35 + v22;
            do
            {
              *(v37 + v34) += (2 * *(a5 + v34) * v29[969] + 0x8000) >> 16;
              v34 += 2;
            }

            while (v34 != 160);
            v29[996] = v29[995];
            LH_S32ToLH_S32((a5 + 1340), v29 + 1036, 0x10u);
            LH_S32ToLH_S32((a5 + 1340), __dst, 0x10u);
            if (a10)
            {
              fxd_LspToCosLsp__32BITX(__dst, __dst, 0x10u);
              fxd_HighPrecisionCosLspToAi__32BIT(__dst, (a5 + 544), 16);
              FillZeroLH_S32(a5, 0x60u);
              LH_S32ToLH_S32(v38 + 1004, a5, 0x10u);
              fxd_HighPrecisionFastSynthesisFilter(v36, (a5 + 384), 80, 0, (a5 + 544), 0x10u, 28, a5, 14);
              LH_S32ToLH_S32((a5 + 320), v38 + 1004, 0x10u);
            }

            LH_S16ToLH_S16((a5 + 384), v14, 0x50u);
            v14 += 160;
            *a7 += 160;
            v22 += 160;
          }

          LH_S32ToLH_S32((a5 + 1340), v38 + 1036, 0x10u);
          LH_S16ToLH_S16(v38 + 520, v38 + 200, *(v38 + 5));
          FillZeroLH_S16(&v38[*(v38 + 5) + 200], 0x140u);
          result = 0;
          ++*(v38 + 534);
        }

        else
        {
          *a4 = 0;
          *a7 = 0;
          return 2353012745;
        }
      }

      return result;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  *a4 = 0;
LABEL_12:
  result = 2353012742;
  if (a7)
  {
    *a7 = 0;
  }

  return result;
}

unsigned __int8 *smc1175mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v14[213] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    v6 = v14;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_1C3827A00), vshlq_u32(v8, xmmword_1C38279F0))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v14;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t ReadStream_CheckWhatModeFirst(uint64_t result, int *a2, uint64_t a3, int a4, uint64_t a5, int *a6, void *a7, unint64_t a8, _DWORD *a9, int *a10, _DWORD *a11, int a12, char a13, int a14)
{
  v14 = 0;
  v63 = *MEMORY[0x1E69E9840];
  *a7 = -1;
  a7[1] = -1;
  do
  {
    v16 = vdupq_n_s32(*(a3 + v14));
    *&v62[8 * v14++] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v16, xmmword_1C3827A00), vshlq_u32(v16, xmmword_1C38279F0))), 0x101010101010101);
  }

  while (v14 != 5);
  if (a13)
  {
    if (!a12)
    {
      switch(a13)
      {
        case 3:
          v17 = 0;
          *a6 = 22;
          *a10 = 49;
          *&v44 = 0x300000003;
          *(&v44 + 1) = 0x300000003;
          *a7 = v44;
          *a11 = 3;
          *a9 = 44;
          *(a8 + 32) = xmmword_1C3828732;
          *(a8 + 48) = unk_1C3828742;
          *(a8 + 64) = xmmword_1C3828752;
          *a8 = au16BitAllocatiobMod22;
          *(a8 + 16) = unk_1C3828722;
          *(a8 + 80) = 17;
          goto LABEL_11;
        case 2:
          v17 = 0;
          *a6 = 21;
          *a10 = 39;
          *&v43 = 0x200000002;
          *(&v43 + 1) = 0x200000002;
          *a7 = v43;
          *a11 = 2;
          *a9 = 36;
          *a8 = *au16BitAllocatiobMod21;
          *(a8 + 16) = unk_1C38286A4;
          *(a8 + 32) = xmmword_1C38286B4;
          *(a8 + 48) = unk_1C38286C4;
          *(a8 + 64) = 17;
          goto LABEL_11;
        case 1:
          v17 = 0;
          *a6 = 20;
          *a10 = 28;
          *&v18 = 0x100000001;
          *(&v18 + 1) = 0x100000001;
          *a7 = v18;
          *a11 = 1;
          *a9 = 28;
          *a8 = au16BitAllocatiobMod20;
          *(a8 + 16) = unk_1C3828636;
          *(a8 + 32) = xmmword_1C3828646;
          *(a8 + 48) = 6;
          goto LABEL_11;
      }

      goto LABEL_67;
    }

LABEL_10:
    v17 = 0;
    *a6 = 19;
    *a10 = 16;
    *&v19 = 0x100000001;
    *(&v19 + 1) = 0x100000001;
    *a7 = v19;
    *a11 = 1;
    *a9 = 15;
    *a8 = au16BitAllocatiobMod19;
    *(a8 + 14) = *(&au16BitAllocatiobMod19 + 14);
    a14 = 4 - a4;
    goto LABEL_11;
  }

  if (a12)
  {
    goto LABEL_10;
  }

  if (v62[0] != 1)
  {
    if (!v62[0])
    {
      *a6 = 15;
      *a10 = 28;
      *&v42 = 0x100000001;
      *(&v42 + 1) = 0x100000001;
      *a7 = v42;
      v17 = 1;
      *a11 = 1;
      *a9 = 29;
      *a8 = au16BitAllocatiobMod15;
      *(a8 + 16) = unk_1C3828510;
      *(a8 + 32) = xmmword_1C3828520;
      *(a8 + 42) = *(&xmmword_1C3828520 + 10);
      *a8 = 1;
      goto LABEL_11;
    }

    goto LABEL_67;
  }

  if (!v62[1])
  {
    *a6 = 16;
    *a10 = 39;
    *&v45 = 0x200000002;
    *(&v45 + 1) = 0x200000002;
    *a7 = v45;
    v17 = 2;
    *a11 = 2;
    *a9 = 37;
    *a8 = au16BitAllocatiobMod16;
    *(a8 + 16) = unk_1C3828550;
    *(a8 + 32) = xmmword_1C3828560;
    *(a8 + 48) = unk_1C3828570;
    *(a8 + 58) = unk_1C382857A;
LABEL_70:
    *a8 = 65537;
    goto LABEL_11;
  }

  if (!v62[2])
  {
    *a6 = 17;
    *a10 = 50;
    *&v46 = 0x300000003;
    *(&v46 + 1) = 0x300000003;
    *a7 = v46;
    v17 = 3;
    *a11 = 3;
    *a9 = 46;
    *(a8 + 32) = xmmword_1C38285B2;
    *(a8 + 48) = unk_1C38285C2;
    *(a8 + 64) = xmmword_1C38285D2;
    *(a8 + 76) = *(&xmmword_1C38285D2 + 12);
    *a8 = au16BitAllocatiobMod17;
    *(a8 + 16) = unk_1C38285A2;
    *(a8 + 4) = 1;
    goto LABEL_70;
  }

  if (v62[3])
  {
    if (v62[4])
    {
LABEL_67:
      v17 = 0;
      goto LABEL_11;
    }

    v52 = 0;
    v53 = v62;
    while (v52 != 9)
    {
      v54 = 0;
      v55 = 0;
      v56 = word_1C38287B4[v52];
      do
      {
        v55 += v53[v54] << v54;
        ++v54;
      }

      while (v56 != v54);
      v53 += v56;
      v59[v52++] = v55;
      if (v52 == 10)
      {
        goto LABEL_86;
      }
    }

    v61 = 0;
LABEL_86:
    v58.i64[0] = 0x400000004;
    v58.i64[1] = 0x400000004;
    *a7 = vaddq_s32(*&v60[4], v58);
    *a6 = 23;
    *(a8 + 16) = 3;
    *a8 = xmmword_1C38284E0;
    v17 = 9;
  }

  else
  {
    v47 = 0;
    v48 = v62;
    while (v47 != 8)
    {
      v49 = 0;
      v50 = 0;
      v51 = word_1C38287A0[v47];
      do
      {
        v50 += v48[v49] << v49;
        ++v49;
      }

      while (v51 != v49);
      v48 += v51;
      v59[v47++] = v50;
      if (v47 == 9)
      {
        goto LABEL_84;
      }
    }

    *&v60[16] = 0;
LABEL_84:
    v57.i64[0] = 0x100000001;
    v57.i64[1] = 0x100000001;
    *a7 = vaddq_s32(*v60, v57);
    *a6 = 18;
    *a8 = xmmword_1C38284F0;
    v17 = 8;
  }

LABEL_11:
  v20 = *a6;
  if ((*a6 - 20) >= 3)
  {
    if (v20 != 19)
    {
      if (v20 == 15)
      {
        v23 = *(result + 4);
        if (v23 >= 1)
        {
          v24 = a2 + 8;
          v17 = v17;
          do
          {
            v25 = *v24++;
            *(a8 + 2 * v17++) = v25;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        v26 = *result;
        if (v26 >= 1)
        {
          v17 = v17;
          do
          {
            v27 = *a2++;
            *(a8 + 2 * v17++) = v27;
            --v26;
          }

          while (v26);
        }
      }
    }
  }

  else
  {
    v21 = *result;
    if (v21 >= 1)
    {
      v17 = v17;
      do
      {
        v22 = *a2++;
        *(a8 + 2 * v17++) = v22;
        --v21;
      }

      while (v21);
    }
  }

  if (a14 >= 1)
  {
    v28 = 0;
    if (v20 == 23)
    {
      v29 = 7;
    }

    else
    {
      v29 = 5;
    }

    result = 1114116;
    while (1)
    {
      if (v20 != 19)
      {
        v30 = (a8 + 2 * v17);
        if (v28)
        {
          *v30 = v29;
          v31 = (a8 + 2 + 2 * v17);
        }

        else
        {
          *v30 = 9;
          v31 = v30 + 1;
        }

        v17 = (v17 + 2);
        *v31 = 8;
      }

      v32 = *(a7 + v28);
      if (v32 >= 1)
      {
        break;
      }

      v35 = v17;
LABEL_48:
      ++v28;
      v17 = v35;
      if (v28 == a14)
      {
        goto LABEL_51;
      }
    }

    v33 = 0;
    while (1)
    {
      v34 = (a8 + 2 * v17);
      if (!v33)
      {
        break;
      }

      v35 = v17 + 2;
      if (v33 > 2)
      {
        *v34 = 1310725;
        if (v20 == 23)
        {
          v36 = (a8 + 2 * v35);
          goto LABEL_44;
        }
      }

      else
      {
        *v34 = 1114116;
        if (v20 == 23)
        {
          v36 = (a8 + 2 * v35);
LABEL_44:
          v35 = (v17 + 3);
          *v36 = 6;
        }
      }

      ++v33;
      LODWORD(v17) = v35;
      if (v32 == v33)
      {
        goto LABEL_48;
      }
    }

    *v34 = 1310725;
    v36 = v34 + 1;
    goto LABEL_44;
  }

  LODWORD(v35) = v17;
LABEL_51:
  v37 = 0;
  v38 = a8 + 2 * v35;
  *(v38 + 8) = 0;
  v39 = (v38 + 8);
  *(a8 + 2 * v35) = 0;
  if (v39 >= a8)
  {
    v37 = 0;
    do
    {
      v40 = *v39--;
      v37 += v40;
    }

    while (v39 >= a8);
  }

  if ((v37 & 7) != 0)
  {
    v41 = (v37 >> 3) + 1;
  }

  else
  {
    v41 = v37 >> 3;
  }

  *a10 = v41;
  *a9 = (2 * v35 + 6) >> 1;
  return result;
}

uint64_t smc1175mrf22spi_GetInfo(__int16 a1, char a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return 2353012742;
  }

  *(a4 + 8) = 40;
  *a4 = vdup_n_s32(0x53FCu);
  *(a4 + 28) = 1704;
  *(a4 + 16) = 4007;
  *(a4 + 20) = 0x34000D500680280;
  v4 = 0;
  if (a3 == 1)
  {
    *(a4 + 30) = 0;
  }

  else
  {
    *(a4 + 30) = 92015056;
    *(a4 + 12) = 4;
    *(a4 + 18) = a1;
    *(a4 + 34) = a2;
  }

  return v4;
}

uint64_t SecurelyRetrievePointer(uint64_t a1, int a2, uint64_t *a3)
{
  *a3 = 0;
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      *a3 = a1;
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_DecoderOpen(__int16 a1, char a2, unsigned __int8 *a3, char *a4, uint64_t a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = 2353012742;
  if (a4)
  {
    v7 = a4;
    bzero(a4, 0x9D0uLL);
    if (a5)
    {
      *a5 = v7;
      *(a5 + 8) = 65732;
      if (a3)
      {
        v79 = 32;
        v11 = 1;
        smc1175mrf22_ReadStream(a3, 4u, __src, 1, &v79);
        v12 = __src[0];
        *(v7 + 192) = __src[0];
        v13 = v12;
        v70 = a2;
        v69 = a5;
        v68 = a1;
        if (v13 < 1)
        {
          LOWORD(v12) = 0;
          v14 = 0;
        }

        else
        {
          memset_pattern16(v80, &unk_1C3828800, (2 * v12) & 0x1FFFF);
          v14 = 0;
          v11 = v13 + 1;
          v15 = v80;
          do
          {
            v16 = *v15++;
            v14 += v16;
            --v13;
          }

          while (v13);
        }

        if ((v14 & 7) != 0)
        {
          v17 = (v14 >> 3) + 1;
        }

        else
        {
          v17 = v14 >> 3;
        }

        v18 = v17;
        smc1175mrf22_ReadStream(a3 + 4, v17, v81, v12, v80);
        if (*(v7 + 192) >= 1)
        {
          v19 = 0;
          LODWORD(v20) = v18 + 4;
          v21 = v7 + 164;
          v22 = v7 + 360;
          v71 = v7 + 260;
          v72 = v7 + 32;
          v73 = v7 + 164;
          v74 = v7 + 152;
          v75 = v7;
          do
          {
            v23 = v11 + 1;
            v24 = &v80[v11 - 1];
            *v24 = 32;
            smc1175mrf22_ReadStream(&a3[v20], 4u, &v74[4 * v19], 1, v24);
            v76 = &v74[4 * v19];
            v25 = *v76;
            if (v25 <= 0)
            {
              v26 = 0;
              v27 = v11 + 1;
            }

            else
            {
              memset_pattern16(&v80[v23 - 1], &unk_1C3828800, 2 * v25);
              v26 = 0;
              v27 = v11 + v25 + 1;
              v28 = &v80[v23 - 1];
              do
              {
                v29 = *v28++;
                v26 += v29;
                --v25;
              }

              while (v25);
            }

            v30 = v20 + 4;
            if ((v26 & 7) != 0)
            {
              v31 = (v26 >> 3) + 1;
            }

            else
            {
              v31 = v26 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v30], v31, &v73[32 * v19], (v27 - v23), &v80[v23 - 1]);
            v32 = *v76;
            v33 = 12 * v32 + 24;
            if (v32 < 1)
            {
              if (v33 != v81[v19])
              {
                return 2353012745;
              }

              v38 = 0;
              v37 = &v80[v27 - 1];
              v39 = v27;
            }

            else
            {
              v34 = *v76;
              v35 = v21;
              do
              {
                v36 = *v35;
                v35 += 4;
                v33 += 32 * v36;
                --v34;
              }

              while (v34);
              if (v33 != v81[v19])
              {
                return 2353012745;
              }

              v37 = &v80[v27 - 1];
              memset_pattern16(v37, &unk_1C3828800, 2 * v32);
              v38 = 0;
              v39 = v27 + v32;
              v40 = v37;
              do
              {
                v41 = *v40++;
                v38 += v41;
                --v32;
              }

              while (v32);
            }

            v42 = v30 + v31;
            if ((v38 & 7) != 0)
            {
              v43 = (v38 >> 3) + 1;
            }

            else
            {
              v43 = v38 >> 3;
            }

            v44 = v43;
            v45 = v39 - v27;
            v46 = (v39 - v27);
            smc1175mrf22_ReadStream(&a3[v42], v43, __src, v46, v37);
            if (v46)
            {
              memcpy(&v71[32 * v19], __src, 4 * v45);
            }

            v47 = 0;
            v48 = 0;
            v49 = &v80[v39 - 1];
            *v49 = 2097184;
            v49[2] = 32;
            *(v49 + 3) = 2097184;
            do
            {
              v48 += v49[v47++];
            }

            while (v47 != 5);
            v50 = (v42 + v44);
            v51 = v39 + 5;
            if ((v48 & 7) != 0)
            {
              v52 = (v48 >> 3) + 1;
            }

            else
            {
              v52 = v48 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v50], v52, __src, 5, v49);
            *(v75 + 7) = __src[1];
            v53 = *v76;
            if (v53 < 1)
            {
              v11 = v39 + 5;
            }

            else
            {
              memset_pattern16(&v80[v51 - 1], &unk_1C3828800, 2 * v53);
              v11 = v39 + v53 + 5;
            }

            if (v11 - v51 < 1)
            {
              v54 = 0;
            }

            else
            {
              v54 = 0;
              v55 = &v80[v51 - 1];
              v56 = (v11 - v51);
              do
              {
                v57 = *v55++;
                v54 += v57;
                --v56;
              }

              while (v56);
            }

            v58 = v50 + v52;
            if ((v54 & 7) != 0)
            {
              v59 = (v54 >> 3) + 1;
            }

            else
            {
              v59 = v54 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v58], v59, &v72[40 * v19], (v11 - v51), &v80[v51 - 1]);
            v20 = v58 + v59;
            v77 = 16;
            *&v22[8 * v19] = &a3[v20];
            v60 = *v76;
            if (v60 < 1)
            {
              v7 = v75;
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 4 * v60;
              v7 = v75;
              do
              {
                v62 += 32 * *&v21[v61];
                v61 += 4;
              }

              while (v63 != v61);
              if (v62)
              {
                v64 = 0;
                v65 = v62 >> 1;
                if (v65 <= 1)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = v65;
                }

                do
                {
                  smc1175mrf22_ReadStream(&a3[v20], 2u, __src, 1, &v77);
                  *(*&v22[8 * v19] + 2 * v64) = __src[0];
                  LODWORD(v20) = v20 + 2;
                  ++v64;
                }

                while (v66 != v64);
              }
            }

            ++v19;
            v21 += 32;
          }

          while (v19 < *(v7 + 192));
        }

        *v7 = v68;
        *(v7 + 6) = 1;
        *(v7 + 8) = xmmword_1C38287E0;
        *(v7 + 49) = v7 + 1194;
        smc1175mrf22spi_DecoderResetMemory(*v69, v69[1]);
        v5 = 0;
        *(v7 + 534) = 0;
        v7[2506] = v70;
      }
    }

    else
    {
      return 2353012744;
    }
  }

  return v5;
}

uint64_t smc1175mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      bzero((a1 + 400), 0x59AuLL);
      *(a1 + 2040) = 0u;
      *(a1 + 2056) = 0u;
      *(a1 + 2008) = 0u;
      *(a1 + 2024) = 0u;
      *(a1 + 1998) = 0;
      *(a1 + 2000) = 0;
      *(a1 + 2004) = 0;
      v4 = (a1 + 1964);
      *(a1 + 1990) = 214695936;
      memset_pattern16((a1 + 1834), &unk_1C38287F0, 0x68uLL);
      v5 = 13;
      do
      {
        *(v4 - 13) = 0;
        *v4++ = 0;
        --v5;
      }

      while (v5);
      fxd_LinSpace(v8, 0, 25736, 0x10u);
      result = 0;
      v6 = v8[1];
      v7 = vshll_high_n_s16(v8[0], 0xAuLL);
      *(a1 + 2072) = vshll_n_s16(*v8[0].i8, 0xAuLL);
      *(a1 + 2088) = v7;
      *(a1 + 2104) = vshll_n_s16(*v6.i8, 0xAuLL);
      *(a1 + 2120) = vshll_high_n_s16(v6, 0xAuLL);
      *(a1 + 2136) = 0;
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_getDecoderBufferSize(unsigned __int16 *a1, int a2, uint64_t a3, unsigned int *a4, unsigned int *a5, int a6, int *a7)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v13 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v13 & 0x80000000) == 0)
  {
    if (a1)
    {
      v14 = *a5;
      if (*a5)
      {
        if (v14 < 0x280)
        {
          *a5 &= 0x3FEu;
          if (v14 <= 0xA1)
          {
            v16 = v14 != 1;
          }

          else
          {
            v16 = 2;
          }

          if (v14 <= 0x141)
          {
            v17 = v16;
          }

          else
          {
            v17 = 3;
          }

          if (v14 <= 0x1E1)
          {
            v15 = v17;
          }

          else
          {
            v15 = 4;
          }
        }

        else
        {
          *a5 = 640;
          v15 = 4;
        }

        *a7 = v15;
        ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, a1[4], a1 + 1, v19, (a1 + 1070), a1 + 3, a1 + 2, a1 + 6, a6, *(a1 + 2506), v15);
        v14 = *(a1 + 2);
      }

      else
      {
        *(a1 + 1) = 0;
        *(a1 + 6) = 0;
        *a5 = 0;
      }

      *a4 = v14;
    }

    else
    {
      return 2353012744;
    }
  }

  return v13;
}

uint64_t smc1175mrf22spi_getSpectrum(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v9 & 0x80000000) == 0)
  {
    if (!a1)
    {
      return 2353012744;
    }

    v15 = 0;
    v16 = 0;
    ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, a1[4], &v15, &v17, v18, &v16, &v16 + 1, &v15 + 1, 0, *(a1 + 2506), 0);
    smc1175mrf22_ReadStream(a3, WORD2(v16), a4, v16, v18);
    v10 = v15;
    *a5 = v15 == 15;
    if (v10 <= 18)
    {
      if (v10 > 16)
      {
        if (v10 == 17)
        {
          v11 = 3;
        }

        else
        {
          v11 = 8;
        }

        goto LABEL_20;
      }

      if (v10 == 15)
      {
        v11 = 1;
        goto LABEL_20;
      }

      if (v10 == 16)
      {
        v11 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v10 - 20) < 3)
      {
        v11 = 0;
        *a5 = 0;
        goto LABEL_20;
      }

      if (v10 == 19)
      {
        v11 = 0;
        goto LABEL_20;
      }

      if (v10 == 23)
      {
        v11 = 9;
        goto LABEL_20;
      }
    }

    v11 = 4;
LABEL_20:
    v12 = 0;
    v13 = &a4[v11];
    do
    {
      a4[v12] = v13[v12];
      ++v12;
    }

    while (v12 != 5);
  }

  return v9;
}

uint64_t smc1175mrf22spi_DecoderProcess(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _WORD *a4, __int16 *a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10, int a11, int a12)
{
  v107 = *MEMORY[0x1E69E9840];
  v102 = 0;
  if (!a7 || !a4 || !a3 || !a5 || !a6)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!*a4)
  {
LABEL_12:
    *a4 = 0;
LABEL_13:
    result = 2353012742;
    if (a7)
    {
      *a7 = 0;
    }

    return result;
  }

  *a7 = 0;
  memset(v105, 0, sizeof(v105));
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      if (*(a1 + 2) > *a4)
      {
        *a4 = 0;
        *a7 = 0;
        return 2353012745;
      }

      v19 = a5 + 304;
      v20 = a1 + 76;
      ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, *(a1 + 2), a1 + 1, v103, (a1 + 1070), a1 + 3, a1 + 2, a1 + 6, 0, *(a1 + 2506), a10);
      smc1175mrf22_ReadStream(a3, a1[4], a5 + 152, a1[6], a1 + 1070);
      v21 = 0;
      v22 = *(a1 + 1);
      *a4 = *(a1 + 2);
      __dst = a6;
      if (v22 <= 16)
      {
        if (v22 == 15)
        {
          v19 = a5 + 306;
          v21 = 1;
        }

        else if (v22 == 16)
        {
          v21 = 0;
          v19 = a5 + 308;
        }
      }

      else
      {
        switch(v22)
        {
          case 17:
            v21 = 0;
            v19 = a5 + 310;
            break;
          case 18:
            v21 = 0;
            v19 = a5 + 320;
            break;
          case 23:
            v21 = 0;
            v19 = a5 + 322;
            break;
        }
      }

      if (a11)
      {
        fxd_MultiStageVectorDecodeLsp__32BIT(a8, *&v20[2 * a9], &a1[16 * a9 + 82], *&a1[4 * a9 + 180], 0x10u, &a1[20 * a9 + 16], v105);
        fxd_OrderCheckLsp__S32(v105, 16);
        fxd_MultiStageVectorDecodeLsp__32BIT(v19, *&v20[2 * v21], &a1[16 * v21 + 82], *&a1[4 * v21 + 180], 0x10u, &a1[20 * v21 + 16], a5 + 335);
        fxd_OrderCheckLsp__S32(a5 + 335, 16);
      }

      v23 = *&v20[2 * v21];
      v101 = 0;
      if (a10 >= 1)
      {
        v100 = 0;
        v24 = 0;
        v25 = &v19[v23];
        v94 = a1 + 917;
        v96 = a1 + 982;
        v26 = a1 + 969;
        do
        {
          v27 = 80 * v24;
          v28 = v103 + v24;
          v97 = v24;
          if (a12)
          {
            v95 = v103 + v24;
            v29 = v25;
            smc1175mrf22_DecodeLag_11_22(*v25, v24, *(a1 + 1), &v102, &v101);
            smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 49) + 160 * v24), v102, 0x50u);
            v30 = 0;
            a1[995] = smc1175mrf22_fxd_qgp[v29[1]];
            v31 = *(a1 + 49) + v100;
            do
            {
              v32 = (2 * *(v31 + v30) * a1[995] + 0x4000) >> 15;
              if (v32 <= -32768)
              {
                v32 = -32768;
              }

              if (v32 >= 0x7FFF)
              {
                LOWORD(v32) = 0x7FFF;
              }

              *(v31 + v30) = v32;
              v30 += 2;
            }

            while (v30 != 160);
            smc1175mrf22_fxd_DecodWFSet1_5p(a5, v106, 80, v29[2], v29[3]);
            v33 = v102;
            if (v102 > 79)
            {
              v41 = smc1175mrf22_fxd_DecodeCodeGain(v29[4], a5, 5, v94, 80);
              v42 = 0;
              a1[982] = v41;
              a1[969] = v41;
              v43 = *(a1 + 49);
              do
              {
                *(v43 + 2 * (v106[v42] + v27)) += (2 * a5[v106[v42]] * *v26 + 0x8000) >> 16;
                ++v42;
              }

              while (v42 != 5);
            }

            else
            {
              v34 = 0;
              do
              {
                v35 = (2 * a5[v34] * a1[996] + 0x4000) >> 15;
                if (v35 <= -32768)
                {
                  v35 = -32768;
                }

                if (v35 >= 0x7FFF)
                {
                  LOWORD(v35) = 0x7FFF;
                }

                a5[v33++] += v35;
                ++v34;
              }

              while (v33 != 80);
              v36 = smc1175mrf22_fxd_DecodeCodeGain(v29[4], a5, 0, v94, 80);
              v37 = 0;
              a1[982] = v36;
              a1[969] = v36;
              v38 = *(a1 + 49) + v100;
              do
              {
                *(v38 + v37 * 2) += (2 * a5[v37] * *v26 + 0x8000) >> 16;
                ++v37;
              }

              while (v37 != 80);
            }

            if (*v95 > 1)
            {
              v44 = *(a1 + 1);
              smc1175mrf22_fxd_DecodWFSet1_4p(a5, v106, 80, v29[5], v29[6]);
              if (*(a1 + 1) < 23)
              {
                v40 = v29 + 7;
                v45 = v44 > 22;
                v46 = (43690 * v96[v45] + 0x8000) >> 16;
              }

              else
              {
                v45 = v44 > 22;
                LOWORD(v46) = smc1175mrf22_fxd_DecodeCodeGain(v29[7], a5, 4, &v94[4 * v45], 80);
                v96[v45] = v46;
                v40 = v29 + 8;
              }

              v26[v45] = v46;
              v47 = v102;
              if (v102 > 79)
              {
                v54 = 0;
                v55 = *(a1 + 49);
                do
                {
                  *(v55 + 2 * (v106[v54] + v27)) += (2 * a5[v106[v54]] * v26[v44 > 22] + 0x8000) >> 16;
                  ++v54;
                }

                while (v54 != 4);
              }

              else
              {
                v48 = v102 + 1;
                v49 = a5;
                do
                {
                  v50 = (2 * *v49 * a1[996] + 0x4000) >> 15;
                  if (v50 <= -32768)
                  {
                    v50 = -32768;
                  }

                  if (v50 >= 0x7FFF)
                  {
                    LOWORD(v50) = 0x7FFF;
                  }

                  v49[v47] += v50;
                  ++v49;
                  v51 = v48++ == 80;
                }

                while (!v51);
                v52 = 0;
                v53 = *(a1 + 49) + v100;
                do
                {
                  *(v53 + v52 * 2) += (2 * a5[v52] * v26[v44 > 22] + 0x8000) >> 16;
                  ++v52;
                }

                while (v52 != 80);
              }

              if (*v95 <= 2)
              {
                goto LABEL_137;
              }

              v56 = 2 * (*(a1 + 1) > 22);
              v57 = v40;
              smc1175mrf22_fxd_DecodWFSet1_4p(a5, v106, 80, *v40, v40[1]);
              if (*(a1 + 1) < 23)
              {
                v40 = v57 + 2;
                v58 = ((v96[v56] << 15) + 0x8000) >> 16;
              }

              else
              {
                LOWORD(v58) = smc1175mrf22_fxd_DecodeCodeGain(v57[2], a5, 4, &v94[4 * v56], 80);
                v96[v56] = v58;
                v40 = v57 + 3;
              }

              v26[v56] = v58;
              v59 = v102;
              if (v102 > 79)
              {
                v65 = 0;
                v66 = *(a1 + 49);
                do
                {
                  *(v66 + 2 * (v106[v65] + v27)) += (2 * a5[v106[v65]] * v26[v56] + 0x8000) >> 16;
                  ++v65;
                }

                while (v65 != 4);
              }

              else
              {
                v60 = v102 + 1;
                v61 = a5;
                do
                {
                  v62 = (2 * *v61 * a1[996] + 0x4000) >> 15;
                  if (v62 <= -32768)
                  {
                    v62 = -32768;
                  }

                  if (v62 >= 0x7FFF)
                  {
                    LOWORD(v62) = 0x7FFF;
                  }

                  v61[v59] += v62;
                  ++v61;
                  v51 = v60++ == 80;
                }

                while (!v51);
                v63 = 0;
                v64 = *(a1 + 49) + v100;
                do
                {
                  *(v64 + v63 * 2) += (2 * a5[v63] * v26[v56] + 0x8000) >> 16;
                  ++v63;
                }

                while (v63 != 80);
              }

              if (*v95 <= 3)
              {
                goto LABEL_137;
              }

              if (*(a1 + 1) <= 22)
              {
                v67 = 0;
              }

              else
              {
                v67 = 3;
              }

              v68 = v40;
              smc1175mrf22_fxd_DecodWFSet1_5p(a5, v106, 80, *v40, v40[1]);
              if (*(a1 + 1) < 23)
              {
                v40 = v68 + 2;
                v69 = (26214 * v96[v67] + 0x8000) >> 16;
              }

              else
              {
                LOWORD(v69) = smc1175mrf22_fxd_DecodeCodeGain(v68[2], a5, 5, &v94[4 * v67], 80);
                v96[v67] = v69;
                v40 = v68 + 3;
              }

              v26[v67] = v69;
              v70 = v102;
              v28 = v95;
              if (v102 > 79)
              {
                v76 = 0;
                v77 = *(a1 + 49);
                do
                {
                  *(v77 + 2 * (v106[v76] + v27)) += (2 * a5[v106[v76]] * v26[v67] + 0x8000) >> 16;
                  ++v76;
                }

                while (v76 != 5);
              }

              else
              {
                v71 = v102 + 1;
                v72 = a5;
                do
                {
                  v73 = (2 * *v72 * a1[996] + 0x4000) >> 15;
                  if (v73 <= -32768)
                  {
                    v73 = -32768;
                  }

                  if (v73 >= 0x7FFF)
                  {
                    LOWORD(v73) = 0x7FFF;
                  }

                  v72[v70] += v73;
                  ++v72;
                  v51 = v71++ == 80;
                }

                while (!v51);
                v74 = 0;
                v75 = *(a1 + 49) + v100;
                do
                {
                  *(v75 + v74 * 2) += (2 * a5[v74] * v26[v67] + 0x8000) >> 16;
                  ++v74;
                }

                while (v74 != 80);
              }

              goto LABEL_113;
            }

            v40 = v29 + 5;
          }

          else
          {
            v39 = *v28;
            if (*v28 <= 1)
            {
              v40 = v25 + 5;
            }

            else if (v39 == 2)
            {
              v40 = v25 + 8;
            }

            else
            {
              if (v39 != 3)
              {
                v40 = v25 + 14;
LABEL_113:
                if (*v28 >= 5)
                {
                  v78 = 4;
                  do
                  {
                    if (*(a1 + 1) <= 22)
                    {
                      v79 = 0;
                    }

                    else
                    {
                      v79 = v78;
                    }

                    if (a12)
                    {
                      v80 = v40;
                      smc1175mrf22_fxd_DecodWFSet1_5p(a5, v106, 80, *v40, v40[1]);
                      if (*(a1 + 1) < 23)
                      {
                        v40 = v80 + 2;
                        v81 = (21846 * v96[v79] + 0x8000) >> 16;
                      }

                      else
                      {
                        LOWORD(v81) = smc1175mrf22_fxd_DecodeCodeGain(v80[2], a5, 5, &v94[4 * v79], 80);
                        v96[v79] = v81;
                        v40 = v80 + 3;
                      }

                      v26[v79] = v81;
                      v82 = v102;
                      if (v102 > 79)
                      {
                        v88 = 0;
                        v89 = *(a1 + 49);
                        do
                        {
                          *(v89 + 2 * (v106[v88] + v27)) += (2 * a5[v106[v88]] * v26[v79] + 0x8000) >> 16;
                          ++v88;
                        }

                        while (v88 != 5);
                      }

                      else
                      {
                        v83 = v102 + 1;
                        v84 = a5;
                        do
                        {
                          v85 = (2 * *v84 * a1[996] + 0x4000) >> 15;
                          if (v85 <= -32768)
                          {
                            v85 = -32768;
                          }

                          if (v85 >= 0x7FFF)
                          {
                            LOWORD(v85) = 0x7FFF;
                          }

                          v84[v82] += v85;
                          ++v84;
                          v51 = v83++ == 80;
                        }

                        while (!v51);
                        v86 = 0;
                        v87 = *(a1 + 49) + v100;
                        do
                        {
                          *(v87 + v86 * 2) += (2 * a5[v86] * v26[v79] + 0x8000) >> 16;
                          ++v86;
                        }

                        while (v86 != 80);
                      }
                    }

                    else
                    {
                      v40 += 3;
                    }

                    ++v78;
                  }

                  while (v78 < *v28);
                }

                goto LABEL_137;
              }

              v40 = v25 + 11;
            }
          }

LABEL_137:
          v90 = v40;
          a1[996] = a1[995];
          v91 = *(a1 + 49);
          if (v97 > 1)
          {
            v92 = (a5 + 670);
            v93 = v105;
          }

          else
          {
            v92 = (a1 + 1036);
            v93 = (a5 + 670);
          }

          fxd_InterpolateVectors_32BIT(v92, v93, v104, s32prev[v97], 0x10u);
          if (a11)
          {
            fxd_LspToCosLsp__32BITX(v104, v104, 0x10u);
            fxd_HighPrecisionCosLspToAi__32BIT(v104, a5 + 136, 16);
            fxd_HighPrecisionExpandLpcBandwidth(a5 + 136, a5 + 136, 32505, 0x10u, 0);
            FillZeroLH_S32(a5, 0x60u);
            LH_S32ToLH_S32(a1 + 1004, a5, 0x10u);
            fxd_HighPrecisionFastSynthesisFilter(v91 + 2 * v27, a5 + 192, 80, 0, a5 + 136, 0x10u, 28, a5, 14);
            LH_S32ToLH_S32(a5 + 160, a1 + 1004, 0x10u);
          }

          LH_S16ToLH_S16(a5 + 192, __dst, 0x50u);
          __dst += 160;
          *a7 += 160;
          v24 = v97 + 1;
          v100 += 160;
          v25 = v90;
        }

        while (v97 + 1 != a10);
      }

      LH_S32ToLH_S32(a5 + 670, a1 + 1036, 0x10u);
      LH_S16ToLH_S16(a1 + 520, a1 + 200, *(a1 + 5));
      FillZeroLH_S16(&a1[*(a1 + 5) + 200], 0x140u);
      result = 0;
      ++*(a1 + 534);
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 65732, 2512);
  if (a1)
  {
    v4 = result;
  }

  else
  {
    v4 = -1941954552;
  }

  if (result >= 0)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

void smc1175mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C3828820[a5 & 0xF];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C38288E0[a5 >> 4] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C38288E0[(a5 >> 8) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C38288E0[a5 >> 12] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
  v18 = (dword_1C38288E0[HIWORD(a5) & 0xF] + v16) % a3;
  if ((a4 & 0x10) != 0)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = -8192;
  }

  *(a1 + v18) = v19;
  a2[4] = v18;
}

void smc1175mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C3828860[a5 & 0x1F];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C38288E0[(a5 >> 5) & 0xF] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C38288E0[(a5 >> 9) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C38288E0[(a5 >> 13) & 0xF] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
}

uint64_t smc1175mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, unsigned int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc1175mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc1175mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc1175mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable) + v7);
  return v9;
}

_WORD *smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22(_WORD *result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    v5 = 0xFFFFFFFF00000000 * a2;
    do
    {
      *v4++ = *(result + (v5 >> 31));
      v5 += 0x100000000;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t smc1175mrf22_DecodeLag_11_22(uint64_t result, char a2, unsigned int a3, int *a4, int *a5)
{
  if (a2)
  {
    if (a3 >= 0x17)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    if (a3 <= 0x1D)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4;
    }

    if (a3 >= 0xF)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    if (a3 >= 0xC)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4;
    }

    if (a3 >= 9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v5 = result + (-1 << v10) + *a5 + 1;
  }

  else if (a3 > 5)
  {
    if (a3 > 0xB)
    {
      if (a3 >= 0x1E)
      {
        v5 = *a4;
        goto LABEL_21;
      }

      v5 = result + 54;
    }

    else
    {
      v5 = result + 40;
    }
  }

  else
  {
    v5 = result + 30;
  }

  *a4 = v5;
LABEL_21:
  *a5 = v5;
  return result;
}

uint64_t SearchNextMarkerOfRTCSubType(uint64_t result, unsigned int a2, int *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a5;
  v8 = *a6;
  if (*a5 >= a2)
  {
    v15 = 0;
  }

  else
  {
    do
    {
      if (a4)
      {
        v9 = (result + 32 * v7);
        v10 = a3;
        v11 = a4;
        while (1)
        {
          v12 = *v10++;
          if (v12 == *v9)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_6;
          }
        }

        v14 = v9[3];
        if (v8 == -1)
        {
          v13 = v14 != 0;
        }

        else
        {
          v13 = v14 > *(result + 32 * v8 + 12);
        }

        if (!v13)
        {
          v8 = v7;
        }
      }

      else
      {
LABEL_6:
        v13 = 0;
      }

      v7 += !v13;
      v15 = v7 < a2;
    }

    while (v7 < a2 && !v13);
  }

  *a7 = 0;
  if (v8 < a2 && a4)
  {
    v16 = a4;
    while (1)
    {
      v17 = *a3++;
      if (v17 == *(result + 32 * v8))
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_23;
      }
    }

    *a7 = 1;
  }

LABEL_23:
  *a5 = v7;
  if (!v15 || *a7 != 0)
  {
    v7 = v8;
  }

  *a6 = v7;
  return result;
}

uint64_t SearchNextMarker(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, _DWORD *a5, _DWORD *a6, unsigned int *a7)
{
  v7 = 0;
  if (a2 && a4)
  {
    v8 = *a5;
    LODWORD(v9) = *a6;
    if (v8 >= a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = *a6;
      while (2)
      {
        v9 = v11;
        v12 = (a1 + 32 * v8);
        v13 = *v12;
        v14 = a3;
        v15 = a4;
        while (1)
        {
          v16 = *v14++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v15)
          {
            v11 = v9;
            goto LABEL_15;
          }
        }

        v17 = v12[3];
        if (v9 == -1)
        {
          if (v17)
          {
            v21 = 0;
            LODWORD(v9) = -1;
            goto LABEL_24;
          }

          v11 = v8;
        }

        else
        {
          v18 = (a1 + 32 * v9);
          if (v17 >= v18[3])
          {
            goto LABEL_18;
          }

          v11 = v8;
          if (v13 != *v18)
          {
            goto LABEL_18;
          }
        }

LABEL_15:
        v10 = ++v8 >= a2;
        if (v8 != a2)
        {
          continue;
        }

        break;
      }

      LODWORD(v8) = a2;
      LODWORD(v9) = v11;
    }

LABEL_18:
    *a7 = 0;
    if (v9 < a2)
    {
      v19 = a4;
      while (1)
      {
        v20 = *a3++;
        if (v20 == *(a1 + 32 * v9))
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_25;
        }
      }

      v21 = 1;
LABEL_24:
      *a7 = v21;
    }

LABEL_25:
    *a5 = v8;
    if (v10 || *a7 != 0)
    {
      LODWORD(v8) = v9;
    }

    *a6 = v8;
    v7 = *a7;
    if (v7)
    {
      return *(a1 + 32 * v9);
    }
  }

  return v7;
}

uint64_t Lookup_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v14 = 0;
  v15 = 0;
  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v15);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "VFNT", 1031, &v14);
  if ((v9 & 0x1FFF) > 0x14 || ((1 << v9) & 0x102010) == 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v14;
  if ((v11 & 0x80000000) == 0 && v14)
  {
    *a4 = 1;
LABEL_13:
    ssftriff_reader_ObjClose(v12);
    return v11;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  return v11;
}

uint64_t Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20 = 0;
  v21 = 0;
  inited = InitRsrcFunction(a1, a2, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2164269066;
  *a5 = 0;
  v12 = heap_Calloc(*(v21 + 8), 1, 128);
  if (v12)
  {
    v13 = v12;
    v14 = v21;
    *v12 = v21;
    v12[1] = a3;
    if (!a3 || (v15 = *(a3 + 48)) == 0)
    {
      v15 = *(v14 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v15, a4, Lookup_ObjcVoiceOpen, Lookup_ObjcVoiceClose, v14, &v20);
    if ((AddRefCountedObject & 0x80000000) != 0 || (v13[2] = *(v20 + 32), AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_InterfaceQuery(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
      v11 = AddRefCountedObject;
    }

    else
    {
      v17 = (*(v13[5] + 32))(a1, a2, *(v13[2] + 336), *(v13[2] + 344), v13 + 3);
      v18 = heap_Alloc(*(*v13 + 8), 44100);
      v13[9] = v18;
      if (v18)
      {
        v13[10] = 22050;
        *(v13 + 22) = 0;
        v11 = v17;
        if ((v17 & 0x80000000) == 0)
        {
          v11 = v17;
LABEL_18:
          *a5 = v13;
          return v11;
        }
      }
    }

    *a5 = v13;
    Lookup_ObjClose(a5);
    v13 = 0;
    goto LABEL_18;
  }

  return v11;
}

uint64_t Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  *v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  memset(__n, 0, sizeof(__n));
  inited = InitRsrcFunction(a1, a2, &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2164269066;
  v10 = heap_Calloc(*(v34 + 8), 1, 592);
  if (v10)
  {
    v11 = v10;
    __strcpy_chk();
    *(v11 + 352) = 0;
    *(v11 + 528) = 0;
    *(v11 + 440) = 0x2800000014;
    *(v11 + 448) = 40;
    ChunkData = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "VFNT", 1031, v33);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_81;
    }

    for (i = ssftriff_reader_OpenChunk(*v33, &v31, __n, 0); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v33, &v31, __n, 0))
    {
      if (v31 ^ 0x464E4956 | v32)
      {
        if (v31 ^ 0x50464656 | v32)
        {
          if (!(v31 ^ 0x52444F43 | v32))
          {
            ChunkData = ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
            if ((ChunkData & 0x80000000) != 0)
            {
              goto LABEL_81;
            }

            v21 = heap_Alloc(*(v34 + 8), __n[0]);
            *(v11 + 336) = v21;
            if (!v21)
            {
              goto LABEL_82;
            }

            memcpy(v21, *&__n[1], __n[0]);
            *(v11 + 344) = __n[0];
            goto LABEL_74;
          }

          if (v31 ^ 0x4E555443 | v32)
          {
            if (!(v31 ^ 0x54494E55 | v32))
            {
              v22 = *v33;
              v23 = (v11 + 360);
              v24 = (v11 + 368);
              goto LABEL_59;
            }

            if (v31 ^ 0x31504F55 | v32)
            {
              if (!(v31 ^ 0x32504F55 | v32))
              {
                __dst = 0;
                ChunkData = ssftriff_reader_DetachChunkData(*v33, (v11 + 392), &__dst);
                if ((ChunkData & 0x80000000) != 0)
                {
                  goto LABEL_81;
                }

                v25 = __dst;
                *(v11 + 400) = *__dst;
                v26 = *(v25 + 4);
                *(v11 + 404) = v26;
                v25 += 8;
                *(v11 + 408) = v25;
                *(v11 + 416) = v25 + 4 * v26;
                goto LABEL_74;
              }

              if (v31 ^ 0x33504F55 | v32)
              {
                if (!(v31 ^ 0x52415057 | v32))
                {
                  ChunkData = ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
                  if ((ChunkData & 0x80000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  *(v11 + 440) = **&__n[1];
                  goto LABEL_74;
                }

                if (!(v31 ^ 0x52415050 | v32))
                {
                  ChunkData = ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
                  if ((ChunkData & 0x80000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  v27 = *&__n[1];
                  *(v11 + 444) = **&__n[1];
                  *(v11 + 448) = *(v27 + 4);
                  goto LABEL_74;
                }

                if (!(v31 ^ 0x50504D50 | v32))
                {
                  v22 = *v33;
                  v23 = (v11 + 456);
                  v24 = (v11 + 464);
                  goto LABEL_59;
                }

                if (!(v31 ^ 0x4F424D50 | v32))
                {
                  v22 = *v33;
                  v23 = (v11 + 472);
                  v24 = (v11 + 480);
LABEL_59:
                  ChunkData = ssftriff_reader_DetachChunkData(v22, v23, v24);
                  if ((ChunkData & 0x80000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_74;
                }

                if (v31 ^ 0x4F554D50 | v32)
                {
                  if (v31 ^ 0x44554D50 | v32)
                  {
                    if (v31 ^ 0x48435053 | v32)
                    {
                      log_OutText(*(v34 + 32), "LOOKUP", 3, 0, "Unknown data: %s for %s", &v31, a3);
                    }

                    else
                    {
                      *(v11 + 520) = ssftriff_reader_GetPosition(*v33);
                      *(v11 + 524) = __n[0];
                    }
                  }

                  else
                  {
                    *(v11 + 516) = ssftriff_reader_GetPosition(*v33);
                  }
                }

                else
                {
                  *(v11 + 512) = ssftriff_reader_GetPosition(*v33);
                }
              }

              else
              {
                *(v11 + 508) = ssftriff_reader_GetPosition(*v33);
                *(v11 + 432) = 1;
              }
            }

            else
            {
              *(v11 + 504) = ssftriff_reader_GetPosition(*v33);
              *(v11 + 384) = 1;
            }
          }

          else
          {
            ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
            *(v11 + 328) = **&__n[1];
          }
        }

        else
        {
          ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
          v20 = heap_Alloc(*(v34 + 8), __n[0]);
          *(v11 + 352) = v20;
          if (!v20)
          {
            goto LABEL_82;
          }

          ssftriff_reader_ReadStringZ(*v33, *&__n[1], __n[0], 0, v20, __n);
        }
      }

      else
      {
        v29 = 0;
        ChunkData = ssftriff_reader_GetChunkData(*v33, __n[0], &__n[1]);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_81;
        }

        v14 = __n[0];
        if (__n[0])
        {
          v15 = 0;
          while (1)
          {
            __src[0] = 0;
            LOBYTE(__dst) = 0;
            v29 = 256;
            ChunkData = ssftriff_reader_ReadStringZ(*v33, *&__n[1], v14, v15, &__dst, &v29);
            if ((ChunkData & 0x80000000) == 0 && v15 < __n[0])
            {
              v15 += v29;
              v29 = 256;
              ChunkData = ssftriff_reader_ReadStringZ(*v33, *&__n[1], __n[0], v15, __src, &v29);
            }

            if ((ChunkData & 0x80000000) != 0)
            {
              break;
            }

            v16 = v29;
            if (__dst ^ 0x71657246 | BYTE4(__dst))
            {
              if (__dst ^ 0x6465657053677641 | v37)
              {
                if (__dst == 0x42657A6953727544 && v37 == 7566441)
                {
                  *(v11 + 324) = LH_atou(__src);
                }

                else if (!(__dst ^ 0x44495547 | BYTE4(__dst)) || (__dst == 0x6E656E6F706D6F43 ? (v18 = v37 == 4475252) : (v18 = 0), v18))
                {
                  strcpy((v11 + 528), __src);
                }

                else if (__dst == 1701080899 && WORD2(__dst) == 114)
                {
                  if (!__src[0])
                  {
                    log_OutText(*(v34 + 32), "LOOKUP", 1, 0, "undefined coder for (Genius) synth data %s: %s", a3, &__dst);
                    ChunkData = 2164269081;
                    break;
                  }

                  strcpy((v11 + 256), "decoder/");
                  __strcat_chk();
                }
              }

              else
              {
                *(v11 + 322) = LH_atou(__src);
              }
            }

            else
            {
              *(v11 + 320) = LH_atou(__src);
            }

            v15 += v16;
            log_OutText(*(v34 + 32), "LOOKUP", 3, 0, "VF attribute %s=%s", &__dst, __src);
            v14 = __n[0];
            if (v15 >= __n[0])
            {
              goto LABEL_74;
            }
          }

LABEL_81:
          v9 = ChunkData;
LABEL_82:
          if (*v33)
          {
            ssftriff_reader_ObjClose(*v33);
          }

          goto LABEL_84;
        }
      }

LABEL_74:
      ChunkData = ssftriff_reader_CloseChunk(*v33);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_81;
      }
    }

    v9 = i;
    if ((i & 0x1FFF) != 0x14)
    {
      goto LABEL_82;
    }

    v9 = ssftriff_reader_ObjClose(*v33);
    *v33 = 0;
    if ((v9 & 0x80000000) != 0)
    {
LABEL_84:
      *(a4 + 32) = v11;
      Lookup_ObjcVoiceClose(a1, a2, a4);
      *(a4 + 32) = 0;
    }

    else
    {
      *(a4 + 32) = v11;
    }
  }

  return v9;
}

uint64_t Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v16 = 0;
  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) == 0)
  {
    v5 = v3[42];
    if (v5)
    {
      heap_Free(*(v16 + 8), v5);
      v3[42] = 0;
    }

    v6 = v3[44];
    if (v6)
    {
      heap_Free(*(v16 + 8), v6);
      v3[44] = 0;
    }

    v7 = v3[45];
    if (v7)
    {
      inited = ssftriff_reader_ReleaseChunkData(v7);
    }

    v8 = v3[47];
    if (v8)
    {
      inited = ssftriff_reader_ReleaseChunkData(v8);
    }

    v9 = v3[49];
    if (v9)
    {
      inited = ssftriff_reader_ReleaseChunkData(v9);
    }

    v10 = v3[53];
    if (v10)
    {
      inited = ssftriff_reader_ReleaseChunkData(v10);
    }

    v11 = v3[57];
    if (v11)
    {
      inited = ssftriff_reader_ReleaseChunkData(v11);
    }

    v12 = v3[59];
    if (v12)
    {
      inited = ssftriff_reader_ReleaseChunkData(v12);
    }

    v13 = v3[61];
    if (v13)
    {
      inited = ssftriff_reader_ReleaseChunkData(v13);
    }

    v14 = v3[62];
    if (v14)
    {
      inited = ssftriff_reader_ReleaseChunkData(v14);
    }

    heap_Free(*(v16 + 8), v3);
  }

  return inited;
}

uint64_t Lookup_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (v3)
  {
    heap_Free(*(*v2 + 8), v3);
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
  }

  v4 = *(v2 + 40);
  if (v4 && (v5 = *(v2 + 24)) != 0)
  {
    v6 = (*(v4 + 40))(v5, *(v2 + 32));
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v2 + 8);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = *(*v2 + 48);
    }

    objc_ReleaseObject(v9, v7);
  }

  v10 = *(v2 + 48);
  if (!v10 || (v6 = brk_DataClose(*(*v2 + 24), v10), (v6 & 0x80000000) == 0))
  {
    v11 = *(v2 + 96);
    if (!v11 || (v6 = brk_DataClose(*(*v2 + 24), v11), (v6 & 0x80000000) == 0))
    {
      v12 = *(v2 + 104);
      if (!v12 || (v6 = brk_DataClose(*(*v2 + 24), v12), (v6 & 0x80000000) == 0))
      {
        v13 = *(v2 + 112);
        if (!v13 || (v6 = brk_DataClose(*(*v2 + 24), v13), (v6 & 0x80000000) == 0))
        {
          v14 = *(v2 + 120);
          if (!v14 || (v6 = brk_DataClose(*(*v2 + 24), v14), (v6 & 0x80000000) == 0))
          {
            v15 = *(v2 + 40);
            if (!v15 || (v6 = brk_InterfaceRelease(*(*v2 + 24), v15), (v6 & 0x80000000) == 0))
            {
              heap_Free(*(*v2 + 8), v2);
              *a1 = 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t Lookup_Init(uint64_t a1, int a2, int a3)
{
  v10 = a3;
  v11 = a2;
  v9 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), &v11, &v10, 0, &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v5 = v9;
    v6 = *(a1 + 16);
    v7 = *(v6 + 524);
    if (v9 + HIDWORD(v9) > v7)
    {
      v5 = v7 - HIDWORD(v9);
      LODWORD(v9) = v7 - HIDWORD(v9);
    }

    result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(v6 + 520) + HIDWORD(v9)), v5, a1 + 56);
    if ((result & 0x80000000) == 0)
    {
      v8 = v9;
      *(a1 + 64) = 0;
      *(a1 + 68) = v8;
    }
  }

  return result;
}

uint64_t Lookup_Init_II(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), a2, a3, 0, &v6 + 4, &v6);
  if ((result & 0x80000000) == 0)
  {
    if (v6)
    {
      result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(*(a1 + 16) + 520) + HIDWORD(v6)), v6, a1 + 56);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 64) = 0;
    *(a1 + 68) = v5;
  }

  return result;
}

uint64_t Lookup_DeInit(uint64_t *a1)
{
  v1 = a1[7];
  if (!v1)
  {
    return 0;
  }

  result = brk_DataUnmap(*(*a1 + 24), a1[6], v1);
  a1[7] = 0;
  return result;
}

uint64_t Lookup_Decode(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  result = 2164269063;
  v5 = *(a1 + 56);
  if (!v5)
  {
    return 2164269073;
  }

  if (!(*a2 >> 30))
  {
    v8 = *(a1 + 64);
    v7 = *(a1 + 68);
    v12 = *a2;
    v13 = v7;
    result = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), v5 + v8, &v13, a3, &v12);
    v9 = v13;
    *a2 = v12;
    v10 = *(a1 + 64) + v9;
    v11 = *(a1 + 68) - v9;
    *(a1 + 64) = v10;
    *(a1 + 68) = v11;
  }

  return result;
}

uint64_t Lookup_GetDecodedData(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v8 = *(a1 + 84);
  if (v8 <= a2 && (v9 = *(a1 + 88), v10 = v9 + v8, v9 + v8 >= a2) && (v11 = a3 + a2, *(a1 + 80) + v8 >= a3 + a2) && *(a1 + 56))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = brk_DataUnmap(*(*a1 + 24), *(a1 + 48), v13);
      *(a1 + 56) = 0;
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v15 = *(a1 + 80);
    if (v15 < a3)
    {
      v16 = *(a1 + 72);
      if (v16)
      {
        heap_Free(*(*a1 + 8), v16);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
      }

      v17 = heap_Alloc(*(*a1 + 8), 2 * a3);
      *(a1 + 72) = v17;
      if (!v17)
      {
        return 2164269066;
      }

      *(a1 + 80) = a3;
      v15 = a3;
    }

    *(a1 + 84) = a2;
    *(a1 + 88) = 0;
    v12 = Lookup_Init(a1, a2, v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v8 = *(a1 + 84);
    v9 = *(a1 + 88);
    v11 = a3 + a2;
    v10 = v9 + v8;
  }

  v18 = v11 >= v10;
  v19 = v11 - v10;
  if (v19 == 0 || !v18)
  {
    goto LABEL_19;
  }

  v21 = v19;
  v12 = Lookup_Decode(a1, &v21, *(a1 + 72) + 2 * v9);
  if ((v12 & 0x80000000) == 0)
  {
    v8 = *(a1 + 84);
    *(a1 + 88) += v21;
LABEL_19:
    memcpy(__dst, (*(a1 + 72) + 2 * (a2 - v8)), 2 * a3);
  }

  return v12;
}

uint64_t Lookup_GetUnitData(void *a1, unsigned int a2, uint64_t a3)
{
  *a3 = a2;
  v4 = a1[2];
  v5 = *(v4 + 368);
  if (v5)
  {
    v6 = v5 + 8 * a2;
    v7 = *v6;
    *(a3 + 4) = *v6 & 0x7FFFFFFF;
    if (*(v4 + 324) == 32)
    {
      v8 = *(v6 + 4);
    }

    else
    {
      *(a3 + 8) = 0;
      v13 = *(v6 + 5) >> 4;
      *(a3 + 8) = v13;
      v8 = v13 | (16 * *(v6 + 4));
    }

    *(a3 + 8) = v8;
    result = 0;
    *(a3 + 12) = v7 < 0;
    return result;
  }

  if (*(v4 + 384))
  {
    v19 = 0;
    result = brk_DataMap(*(*a1 + 24), a1[12], *(v4 + 504) + 6 * a2, 6, &v19);
    if ((result & 0x80000000) == 0 && v19)
    {
      v11 = *v19;
      *(a3 + 4) = *v19;
      *(a3 + 12) = v11 < 0;
      *(a3 + 4) = v11 & 0x7FFFFFFF;
      v12 = v19;
      *(a3 + 8) = *(v19 + 4);
      return brk_DataUnmap(*(*a1 + 24), a1[12], v12);
    }

    return result;
  }

  v14 = *(v4 + 408);
  if (v14)
  {
    result = 0;
    v15 = *(v4 + 400);
    v16 = *(v4 + 416);
    v17 = *(v14 + 4 * (a2 / v15)) + *(v16 + 2 * a2);
    *(a3 + 4) = v17;
    *(a3 + 8) = *(v14 + 4 * ((a2 + 1) / v15)) - v17 + *(v16 + 2 * (a2 + 1));
LABEL_13:
    *(a3 + 12) = 0;
    return result;
  }

  if (!*(v4 + 432))
  {
    return 0;
  }

  v19 = 0;
  result = brk_DataMap(*(*a1 + 24), a1[13], *(v4 + 508) + 4 * a2, 4, &v19);
  if ((result & 0x80000000) == 0)
  {
    v18 = v19;
    *(a3 + 4) = *v19;
    result = brk_DataUnmap(*(*a1 + 24), a1[13], v18);
    if ((result & 0x80000000) == 0)
    {
      *(a3 + 8) = 0;
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t Lookup_Freq(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 320);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_AvgSpeed(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 322);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 328);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_Fingerprint(uint64_t a1, char *a2, unsigned int a3)
{
  v5 = 2164269057;
  v6 = *(a1 + 16);
  v7 = *(v6 + 352);
  if (v7)
  {
    if (strlen(*(v6 + 352)) >= a3)
    {
      v5 = 2164269057;
    }

    else
    {
      v5 = 0;
    }

    strncpy(a2, v7, a3);
  }

  else
  {
    v9 = *(v6 + 328);
    if (IsThisUrlOrRealPath(*(a1 + 16), 0))
    {
      if (SplitpathOrUrl(v6, 0, 0, 0, a2, 0))
      {
        for (i = a2; ; ++i)
        {
          if (*i == 95)
          {
            *i = 47;
          }

          else if (!*i)
          {
            goto LABEL_19;
          }
        }
      }

      return 2164269063;
    }

    else
    {
      v11 = strchr(v6, 58);
      if (v11)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v6;
      }

      strncpy(a2, v12, a3);
LABEL_19:
      LODWORD(v13) = strlen(a2);
      v14 = v13 < a3;
      if (v13 < a3 && v9)
      {
        v13 = v13;
        do
        {
          a2[v13++] = (v9 % 0xA) | 0x30;
          v14 = v13 < a3;
          if (v13 >= a3)
          {
            break;
          }

          v15 = v9 > 9;
          v9 /= 0xAu;
        }

        while (v15);
      }

      if (v14)
      {
        v5 = 0;
        a2[v13] = 0;
      }
    }
  }

  return v5;
}

uint64_t Lookup_GetComponentID(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2164269074;
  }

  result = 0;
  *a2 = *(a1 + 16) + 528;
  return result;
}

uint64_t Lookup_HasSupportForWsola(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 440);
  if (!v2)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t Lookup_HasSupportForPsola(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3 && *(v3 + 464))
    {
      *a2 = *(v3 + 444);
      *a3 = *(v3 + 448);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1[2] + 464))
  {
    return 2164269076;
  }

  v29 = 0;
  v28 = 0;
  *a3 = 0;
  v6 = a3 + 8;
  writeToPeriVec(a3 + 8, 0, 0);
  v7 = a1[2];
  v8 = *(*(v7 + 464) + 52);
  if (v8)
  {
    v30 = v8 * (a2 >> 10);
    unpackU32(&v29, *(v7 + 480), &v30, v8);
  }

  else
  {
    v29 = 0;
  }

  if ((a2 & 0x3FF) != 0)
  {
    v10 = a1[2];
    v11 = *(*(v10 + 464) + 56);
    v30 = v11 * (a2 - 1);
    v12 = unpackU32_Offline(&v28 + 1, *(v10 + 512), *(*a1 + 24), a1[14], &v30, v11);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
  }

  else
  {
    HIDWORD(v28) = 0;
    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
    v30 = v14 * a2;
  }

  v9 = unpackU32_Offline(&v28, *(v13 + 512), *(*a1 + 24), a1[14], &v30, v14);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v15 = v28 - HIDWORD(v28);
  if (v28 == HIDWORD(v28))
  {
    return v9;
  }

  v27 = 0;
  v12 = brk_DataMap(*(*a1 + 24), a1[15], (*(a1[2] + 516) + HIDWORD(v28) + v29), (v28 - HIDWORD(v28)), &v27);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = v27;
  v17 = *(a1[2] + 464);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  LODWORD(v25) = 0;
  unpackU32(&v31, v27, &v25, v17[5]);
  writeToPeriVec(v6, 0, v17[4] + v31);
  v18 = v17[7];
  if (v18)
  {
    unpackU32(&v31, v16, &v25, v18);
    v19 = v17[6] + v31;
  }

  else
  {
    LOWORD(v19) = 0;
  }

  *a3 = v19;
  v21 = v17[12];
  if (v15 <= (v25 + v21 + v17[11] - 1) >> 3)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      unpackU32(&v32 + 1, v16, &v25, v21);
      unpackU32(&v33 + 1, v16, &v25, v17[11]);
      for (; HIDWORD(v32); --HIDWORD(v32))
      {
        writeToPeriVec(a3 + 56, v22, SWORD2(v33));
        if (v22)
        {
          writeToPeriVec(v6, v22, *(*(a3 + 16) + 2 * v22 - 2) + v23);
        }

        unpackU32(&v33, v16, &v25, 1u);
        if (v33)
        {
          if (v17[10] && (unpackU32(&v33, v16, &v25, 1u), !v33))
          {
            unpackS32(&v31 + 1, v16, &v25, v17[10]);
            LOWORD(v24) = v23 + WORD2(v31);
          }

          else
          {
            unpackU32(&v32, v16, &v25, v17[9]);
            v24 = v17[8] + v32;
          }

          writeToPeriVec(a3 + 32, v22, v24);
          v23 = *(*(a3 + 40) + 2 * v22);
        }

        else
        {
          writeToPeriVec(a3 + 32, v22, v23);
        }

        ++v22;
      }

      v21 = v17[12];
    }

    while (v15 > (v25 + v21 + v17[11] - 1) >> 3);
  }

  *(a3 + 2) = v22;
  v9 = brk_DataUnmap(*(*a1 + 24), a1[15], v27);
  if ((v9 & 0x80000000) == 0 && !*(*(a1[2] + 464) + 28))
  {
    v25 = 0;
    v26 = 0;
    Lookup_GetUnitData(a1, a2, &v25);
    *a3 = v26;
  }

  return v9;
}

uint64_t writeToPeriVec(uint64_t a1, unsigned int a2, __int16 a3)
{
  v6 = *(a1 + 16);
  if (v6 <= a2)
  {
    result = heap_Realloc(*(*a1 + 8), *(a1 + 8), 2 * v6 + 300);
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = result;
    *(a1 + 16) += 150;
  }

  else
  {
    result = *(a1 + 8);
  }

  *(result + 2 * a2) = a3;
  return result;
}

uint64_t lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup_0;
  return result;
}

uint64_t Pmk_Lookup_ObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v9 = heap_Calloc(*(v17 + 8), 1, 40);
    if (!v9)
    {
      return 2164269066;
    }

    v10 = v9;
    v11 = v17;
    *v9 = v17;
    v9[1] = a3;
    if (!a3 || (v12 = *(a3 + 48)) == 0)
    {
      v12 = *(v11 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v12, a4, Pmk_Lookup_ObjcVoiceOpen, Pmk_Lookup_ObjcVoiceClose, v11, &v16);
    if ((AddRefCountedObject & 0x80000000) != 0 || (v10[2] = *(v16 + 32), AddRefCountedObject = brk_DataOpen(*(v17 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
      v14 = AddRefCountedObject;
    }

    else
    {
      v14 = brk_DataOpen(*(v17 + 24));
      if ((v14 & 0x80000000) == 0)
      {
LABEL_13:
        *a5 = v10;
        return v14;
      }
    }

    *a5 = v10;
    Pmk_Lookup_ObjClose(a5);
    v10 = 0;
    goto LABEL_13;
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  *v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  *v29 = 0;
  v28 = 0;
  inited = InitRsrcFunction(a1, a2, &v33);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = heap_Calloc(*(v33 + 8), 1, 336);
  if (!v9)
  {
    return 2164269066;
  }

  v10 = v9;
  if (strlen(a3) > 0xFF)
  {
    return 2164269065;
  }

  strncpy(v10, a3, 0xFFuLL);
  *(v10 + 264) = 0;
  *(v10 + 312) = 0;
  *(v10 + 320) = 0;
  *(v10 + 304) = 0;
  *(v10 + 328) = -1;
  *(v10 + 330) = -1;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PIMK", 1031, v32);
  v12 = *v32;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  for (i = ssftriff_reader_OpenChunk(*v32, &v30, &v28, 0); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v32, &v30, &v28, 0))
  {
    if (v30 ^ 0x484B4D50 | v31)
    {
      if (!(v30 ^ 0x464B4D50 | v31))
      {
        ssftriff_reader_GetChunkData(*v32, v28, v29);
        v16 = heap_Alloc(*(v33 + 8), v28);
        *(v10 + 320) = v16;
        if (!v16)
        {
          return 2164269066;
        }

LABEL_22:
        ssftriff_reader_ReadStringZ(*v32, *v29, v28, 0, v16, &v28);
        goto LABEL_23;
      }

      if (!(v30 ^ 0x504B4D50 | v31))
      {
        ssftriff_reader_GetChunkData(*v32, v28, v29);
        v16 = heap_Alloc(*(v33 + 8), v28);
        *(v10 + 312) = v16;
        if (!v16)
        {
          return 2164269066;
        }

        goto LABEL_22;
      }

      if (v30 ^ 0x44464D50 | v31)
      {
        if (v30 ^ 0x50504D50 | v31)
        {
          if (v30 ^ 0x4F424D50 | v31)
          {
            if (v30 ^ 0x4F554D50 | v31)
            {
              if (!(v30 ^ 0x44554D50 | v31))
              {
                *(v10 + 296) = ssftriff_reader_GetPosition(*v32);
              }
            }

            else
            {
              *(v10 + 300) = ssftriff_reader_GetPosition(*v32);
            }
          }

          else
          {
            ChunkData = ssftriff_reader_DetachChunkData(*v32, (v10 + 272), (v10 + 280));
            if ((ChunkData & 0x80000000) != 0)
            {
LABEL_50:
              v11 = ChunkData;
              goto LABEL_51;
            }
          }
        }

        else
        {
          ChunkData = ssftriff_reader_GetChunkData(*v32, v28, v29);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          v20 = heap_Alloc(*(v33 + 8), 60);
          *(v10 + 264) = v20;
          if (!v20)
          {
            return 2164269066;
          }

          v21 = *(v10 + 328);
          if (v21 > 3)
          {
            v11 = 2164269081;
LABEL_51:
            v12 = *v32;
LABEL_52:
            if (v12)
            {
              ssftriff_reader_ObjClose(v12);
            }

LABEL_54:
            *(a4 + 32) = v10;
            Pmk_Lookup_ObjcVoiceClose(a1, a2, a4);
            *(a4 + 32) = 0;
            return v11;
          }

          v22 = *v29;
          v23 = (*v29 + 4);
          *(v10 + 260) = **v29;
          if (v21 == 1 && !*(v10 + 329) && !*(v10 + 330))
          {
            v20[1] = v22[1];
            *v20 = v22[2];
            v20[3] = v22[3];
            v20[2] = v22[4];
            v23 = v22 + 5;
          }

          v20[5] = *v23;
          v20[4] = v23[1];
          v20[7] = v23[2];
          v20[6] = v23[3];
          v20[9] = v23[4];
          v20[8] = v23[5];
          v20[10] = v23[6];
          v20[11] = v23[7];
          v20[12] = v23[8];
          v20[13] = v23[9];
          v20[14] = v23[10];
        }
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(*v32, v28, v29);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v17 = heap_Calloc(*(v33 + 8), 9, 2);
        *(v10 + 304) = v17;
        if (!v17)
        {
          return 2164269066;
        }

        v18 = 0;
        v19 = *v29;
        do
        {
          *(v17 + v18) = *(v19 + v18);
          v18 += 2;
        }

        while (v18 != 18);
      }
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(*v32, v28, v29);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      v15 = *v29;
      *(v10 + 328) = **v29;
      *(v10 + 329) = v15[1];
      *(v10 + 330) = v15[2];
      *(v10 + 256) = v15[3];
      *(v10 + 257) = v15[4];
      *(v10 + 258) = v15[5];
      *(v10 + 259) = v15[6];
    }

LABEL_23:
    ChunkData = ssftriff_reader_CloseChunk(*v32);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_50;
    }
  }

  v11 = i;
  v24 = i & 0x1FFF;
  v12 = *v32;
  if (v24 != 20)
  {
    goto LABEL_52;
  }

  v25 = ssftriff_reader_ObjClose(*v32);
  v11 = v25;
  *v32 = 0;
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  if (*(v10 + 264))
  {
    v26 = v25;
  }

  else
  {
    v26 = 2164269081;
  }

  if ((v26 & 0x80000000) != 0)
  {
    v11 = v26;
    goto LABEL_54;
  }

  *(a4 + 32) = v10;
  return v11;
}