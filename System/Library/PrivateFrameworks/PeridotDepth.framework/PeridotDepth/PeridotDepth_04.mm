uint64_t peridot::PeridotUserOutput::depthPerPixel(uint64_t a1, double a2, double a3, int8x8_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, _BYTE *a9, uint64_t a10)
{
  v76 = *MEMORY[0x277D85DE8];
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v75 = 0x4040000000000000;
  *(v72 + 4) = 0x3F0000003FC00000;
  v74 = 0x3FC000003F000000;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v13 = a10 + 136;
  v14 = (a6 + 128);
  v15 = (a8 + 40);
  v16 = 14;
  result = 3;
  v71 = 0x4080000000000000;
  *(&v68 + 4) = 0x3F80000040000000;
  HIDWORD(v70) = 1077936128;
  do
  {
    v18 = *(v14 - 8);
    v19 = *(v18 + 8);
    v20 = *(v14 - 12);
    v21 = *(v20 + 8);
    v22 = *(v14 - 4);
    v23 = *(v22 + 8);
    v24 = *v14;
    v25 = *(*v14 + 8);
    v26 = *(v18 + 88);
    v27 = *(v20 + 88);
    v28 = v19 > 0.99;
    if (v21 > 0.99)
    {
      ++v28;
    }

    if (v23 > 0.99)
    {
      ++v28;
    }

    if (v25 > 0.99)
    {
      ++v28;
    }

    if (v26 > 0.99)
    {
      ++v28;
    }

    if (v27 > 0.99)
    {
      ++v28;
    }

    if (v28 <= 1)
    {
      v51 = fmaxf(v19, 0.0);
      v52 = v21 > v51;
      if (v21 > v51)
      {
        v51 = *(v20 + 8);
      }

      if (v23 > v51)
      {
        v52 = 2;
        v51 = *(v22 + 8);
      }

      if (v25 > v51)
      {
        v52 = 3;
        v51 = *(*v14 + 8);
      }

      if (v26 <= v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = *(v18 + 88);
      }

      if (v26 <= v51)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      v49 = v26 > v51 || v27 > v53;
      if (v27 > v53)
      {
        v50 = 1;
      }

      else
      {
        v50 = v54;
      }

      if (v27 <= v53)
      {
        v27 = v53;
      }

      if (v27 < 0.0)
      {
LABEL_2:
        *(a1 + 200) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 196) = 0;
        goto LABEL_3;
      }
    }

    else
    {
      if (v19 <= 0.99)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 1.0;
      }

      v30 = fmaxf(*(v15 - 9) * v29, 0.0);
      if (v21 <= 0.99)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = 1.0;
      }

      v32 = *(v15 - 8) * v31;
      v33 = v32 > v30;
      if (v32 > v30)
      {
        v30 = v32;
      }

      if (v23 <= 0.99)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v35 = *(v15 - 6) * v34;
      if (v35 <= v30)
      {
        v35 = v30;
      }

      else
      {
        v33 = 2;
      }

      if (v25 <= 0.99)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 1.0;
      }

      v37 = *(v15 - 5) * v36;
      if (v37 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v33 = 3;
      }

      if (v26 <= 0.99)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0;
      }

      v39 = *v15 * v38;
      if (v39 <= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = *v15 * v38;
      }

      if (v27 <= 0.99)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = 1.0;
      }

      v42 = v15[1] * v41;
      v43 = v42 > v40;
      if (v39 > v37)
      {
        v33 = 0;
        v43 = 1;
      }

      if (v42 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v33 = 1;
      }

      v44 = v15[3] * 0.0;
      if (v44 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v15[3] * 0.0;
      }

      v46 = v15[4] * 0.0;
      if (v44 <= v42)
      {
        v47 = v33;
      }

      else
      {
        v47 = 2;
      }

      v48 = v44 > v42 || v46 > v45;
      v49 = v48 || v43;
      if (v46 <= v45)
      {
        v50 = v47;
      }

      else
      {
        v50 = 3;
      }

      if (v46 <= v45)
      {
        v27 = v45;
      }

      else
      {
        v27 = v15[4] * 0.0;
      }
    }

    if (v27 <= 0.0)
    {
      goto LABEL_2;
    }

    v55 = qword_2247A6890[v50];
    if (v55 > 11)
    {
      if (v55 == 12)
      {
        v56 = 0;
        v58 = v23 * 0.75;
        v59 = *(v22 + 12);
        *(a1 + 176) = *(v22 + 16);
        *(a1 + 180) = v58;
        *(a1 + 200) = 0;
        a4.i32[0] = *(v22 + 4);
        *(a1 + 184) = a4.i32[0];
        *(a1 + 188) = 0;
        *(a1 + 192) = v59;
        v60 = 11;
      }

      else
      {
        if (v55 != 14)
        {
          goto LABEL_94;
        }

        v58 = v25 * 0.75;
        v59 = *(v24 + 12);
        v61 = *(v24 + 16);
        *(a1 + 176) = v61;
        *(a1 + 180) = v58;
        *(a1 + 200) = 0;
        *(a1 + 184) = *(v24 + 4);
        *(a1 + 188) = 0;
        *(a1 + 192) = v59;
        *&a4 = v61;
        if (*&a4 < 3.0e-10)
        {
          *(a1 + 180) = 0;
          *(a1 + 196) = v59;
          goto LABEL_3;
        }

        v56 = 0;
        v60 = 13;
      }
    }

    else
    {
      v56 = v49;
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = v20 + 80 * v49;
          a4.i32[0] = *(v57 + 4);
          v58 = *(v57 + 8) * 0.75;
          v59 = *(v57 + 12);
          *(a1 + 176) = *(v57 + 16);
          *(a1 + 180) = v58;
          *(a1 + 200) = 0;
          *(a1 + 184) = a4.i32[0];
          *(a1 + 188) = 0;
          *(a1 + 192) = v59;
          v60 = 2;
          goto LABEL_98;
        }

LABEL_94:
        peridot_depth_log("Could not reach here if rmsval>0", 80, v72, 1118306304, &v68, qword_2247A6D48, 1065353216, v68, v69, v70, v71);
        result = 3;
        v56 = 0;
        v59 = *(a1 + 192);
        v58 = *(a1 + 180);
        v60 = v55 - 1;
        goto LABEL_98;
      }

      v62 = v18 + 80 * v49;
      a4.i32[0] = *(v62 + 4);
      v58 = *(v62 + 8) * 0.75;
      v59 = *(v62 + 12);
      *(a1 + 176) = *(v62 + 16);
      *(a1 + 180) = v58;
      *(a1 + 200) = 0;
      *(a1 + 184) = a4.i32[0];
      *(a1 + 188) = 0;
      *(a1 + 192) = v59;
      v60 = 1;
    }

LABEL_98:
    *(a1 + 196) = v59;
    if (v58 > 0.0)
    {
      v63 = *(v72 + v60);
      if (((v50 == 1) & *a9) != 0)
      {
        v63 = v63 + -1.0;
      }

      v64 = -0.5 - *a7;
      a4.i8[0] = a7[14];
      a4 = vmovl_s16(*&vmovl_s8(a4)).u64[0];
      *(a1 + 208) = v64 + 84.0;
      *(a1 + 212) = v63 + a4.i32[0];
      v65 = *(&v68 + v60);
      v66 = qword_2247A6D48[v60];
      *(a1 + 4 * v66 + 216) = 1065353216;
      *(v13 + 8 * v66) = v56;
      v67 = *(a1 + 260) & 0x1FFFFFFF | (v65 << 29);
      *(a1 + 260) = v67;
      if ((*(a1 + 86) & 4) != 0)
      {
        *(a1 + 260) = v67 | 0x40000;
      }
    }

LABEL_3:
    v13 += 216;
    v14 += 24;
    ++a7;
    ++a9;
    v15 += 27;
    a1 += 308;
    --v16;
  }

  while (v16);
  return result;
}

_DWORD *peridot::PeridotUserOutput::setT0Flags(_DWORD *result, uint64_t a2, uint8x8_t a3)
{
  a3.i32[0] = *(a2 + 1192);
  v3 = vmovl_u8(a3).u64[0];
  v5 = *(a2 + 1196);
  v4 = *(a2 + 1212);
  v6 = vandq_s8(vcltzq_s8(vshlq_n_s8(v4, 7uLL)), xmmword_2247A4660);
  v7 = vandq_s8(vcltzq_s8(vshlq_n_s8(v5, 7uLL)), xmmword_2247A4660);
  v8 = vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v3, 0xFuLL)), 0x8000400020001)) & 0xF;
  if (vaddvq_s16(vzip1q_s8(v7, vextq_s8(v7, v7, 8uLL))) | vaddvq_s16(vzip1q_s8(v6, vextq_s8(v6, v6, 8uLL))))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    return result;
  }

  if (v3.i8[0])
  {
    result[21] |= 0x800000u;
  }

  v10 = v4.i64[0];
  v4.i32[0] = HIWORD(v5.i32[0]) & 1;
  if (v5.i8[8])
  {
    result[43] |= 0x800000u;
  }

  if ((v10 & 0x100000000) != 0)
  {
    result[65] |= 0x800000u;
  }

  v4.i8[2] = (v5.i32[0] & 0x40000) != 0;
  v4.i8[1] = (v5.i32[0] & 0x20000) != 0;
  v11 = vuzp1_s8(v3, *v4.i8).u32[0];
  if ((v11 & 0x100) != 0)
  {
    result[98] |= 0x800000u;
  }

  if (v5.i8[9])
  {
    result[120] |= 0x800000u;
  }

  if ((v10 & 0x10000000000) != 0)
  {
    result[142] |= 0x800000u;
  }

  if ((v11 & 0x10000) != 0)
  {
    result[175] |= 0x800000u;
  }

  if (v5.i8[10])
  {
    result[197] |= 0x800000u;
  }

  if (v4.i8[6])
  {
    result[219] |= 0x800000u;
  }

  if ((v11 & 0x1000000) != 0)
  {
    result[252] |= 0x800000u;
  }

  if (v5.i8[11])
  {
    result[274] |= 0x800000u;
  }

  if (v4.i8[7])
  {
    result[296] |= 0x800000u;
  }

  if (v5.i8[0])
  {
    result[329] |= 0x800000u;
  }

  if (v5.i8[12])
  {
    result[351] |= 0x800000u;
  }

  if (v4.i8[8])
  {
    result[373] |= 0x800000u;
  }

  if (v5.i8[1])
  {
    result[406] |= 0x800000u;
  }

  if (v5.i8[13])
  {
    result[428] |= 0x800000u;
  }

  if (v4.i8[9])
  {
    result[450] |= 0x800000u;
  }

  if (v4.i8[0])
  {
    result[483] |= 0x800000u;
  }

  if (v5.i8[14])
  {
    result[505] |= 0x800000u;
  }

  if (v4.i8[10])
  {
    result[527] |= 0x800000u;
  }

  if (v5.i8[3])
  {
    result[560] |= 0x800000u;
  }

  if (v5.i8[15])
  {
    result[582] |= 0x800000u;
  }

  if (v4.i8[11])
  {
    result[604] |= 0x800000u;
  }

  if (v5.i8[4])
  {
    result[637] |= 0x800000u;
  }

  if (v10)
  {
    result[659] |= 0x800000u;
  }

  if (v4.i8[12])
  {
    result[681] |= 0x800000u;
  }

  if (v5.i8[5])
  {
    result[714] |= 0x800000u;
  }

  if ((v10 & 0x100) != 0)
  {
    result[736] |= 0x800000u;
  }

  if ((v4.i8[13] & 1) == 0)
  {
    v12 = BYTE2(v10) & 1;
    if ((v5.i8[6] & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_77:
    result[791] |= 0x800000u;
    if ((v12 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  result[758] |= 0x800000u;
  v12 = BYTE2(v10) & 1;
  if (v5.i8[6])
  {
    goto LABEL_77;
  }

LABEL_65:
  if (v12)
  {
LABEL_66:
    result[813] |= 0x800000u;
  }

LABEL_67:
  if (*(a2 + 1226) == 1)
  {
    result[835] |= 0x800000u;
  }

  if (*(a2 + 1203) == 1)
  {
    result[868] |= 0x800000u;
  }

  if (*(a2 + 1215) == 1)
  {
    result[890] |= 0x800000u;
  }

  if (*(a2 + 1227) == 1)
  {
    result[912] |= 0x800000u;
  }

  return result;
}

void peridot::PeridotUserOutput::fusedTofNormal(uint64_t a1, float32x4_t **a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, float *a7, _DWORD *a8)
{
  if (a4[1] != *a4)
  {
    operator new();
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
  v8 = *a5;
  v9 = *(a5 + 8) - *a5;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 0;
    do
    {
      v12 = *v11++;
      v13 = v12;
      v14 = *v8++;
      *(a6 + 4 * v14) = v13;
      --v10;
    }

    while (v10);
  }

  v15 = *a2;
  *a7 = 0.0;
  v16 = a2[1] - v15;
  if (!v16)
  {
    *a8 = 0;
    return;
  }

  v17 = v16 >> 2;
  if ((v16 >> 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 >> 2;
  }

  v19 = 0.0;
  if (v17 > 0xB)
  {
    v20 = 0;
    v27 = a7 + 1;
    v29 = 4 * v18 > a7 && v27 != 0;
    if ((v15 >= v27 || &v15->f32[v18] <= a7) && !v29)
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFF8;
      v31 = 16;
      v32 = v15 + 1;
      v33 = 0uLL;
      v34 = v18 & 0xFFFFFFFFFFFFFFF8;
      v35 = 0uLL;
      do
      {
        v33 = vmlaq_f32(v33, v32[-1], *(v31 - 16));
        v35 = vmlaq_f32(v35, *v32, *v31);
        v31 += 32;
        v32 += 2;
        v34 -= 8;
      }

      while (v34);
      v36 = vaddq_f32(v35, v33);
      v19 = vaddv_f32(*&vpaddq_f32(v36, v36));
      *a7 = v19;
      if (v17 == v20)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v18 - v20;
  v22 = (4 * v20);
  v23 = (v22 + v15);
  do
  {
    v24 = *v23++;
    v25 = v24;
    v26 = *v22++;
    v19 = v19 + (v26 * v25);
    *a7 = v19;
    --v21;
  }

  while (v21);
LABEL_16:
  *a8 = 0;

  operator delete(0);
}

void sub_2246C71BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void peridot::PeridotUserOutput::fusedTofByEmpiricalStd(uint64_t a1, float32x4_t **a2, char **a3, char **a4, char **a5, uint64_t a6, float *a7, float *a8)
{
  v8 = a8;
  v9 = a7;
  v50 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v10 = a2[1];
  v12 = (v10 - *a2) >> 2;
  if (v10 != *a2)
  {
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v10 - *a2) >> 2;
    }

    if (v12 > 7)
    {
      v14 = v13 & 0xFFFFFFFFFFFFFFF8;
      v16 = (v11 + 16);
      v17 = 0uLL;
      v18 = v13 & 0xFFFFFFFFFFFFFFF8;
      v19 = 0uLL;
      do
      {
        v17 = vaddq_f32(v16[-1], v17);
        v19 = vaddq_f32(*v16, v19);
        v16 += 2;
        v18 -= 8;
      }

      while (v18);
      v20 = vaddq_f32(v19, v17);
      v15 = vaddv_f32(*&vpaddq_f32(v20, v20));
      if (v12 == v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    v21 = v13 - v14;
    v22 = &v11[4 * v14];
    do
    {
      v23 = *v22++;
      v15 = v23 + v15;
      --v21;
    }

    while (v21);
LABEL_13:
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  if ((0.0 / v12) >= 0.0000000015)
  {
    v33 = a7;
    v34 = a8;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v47, *a2, a2[1], (a2[1] - *a2) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v44, *a3, a3[1], (a3[1] - *a3) >> 2);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v41, *a5, a5[1], (a5[1] - *a5) >> 3);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
    v26 = v41;
    if (v42 != v41)
    {
      if (!(((v42 - v41) >> 3) >> 62))
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    goto LABEL_25;
  }

  v25 = *a2;
  v24 = a2[1];
  if (v24 != *a2)
  {
    v33 = a7;
    v34 = a8;
    v26 = 0;
    v27 = 0;
    do
    {
      if (*&(*a5)[8 * v27] > 0xAuLL)
      {
        operator new();
      }

      *((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v27;
      ++v27;
    }

    while (v27 < (v24 - v25) >> 2);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    __p = 0;
    v39 = 0;
LABEL_25:
    v9 = v33;
    v8 = v34;
    goto LABEL_27;
  }

  v26 = 0;
LABEL_27:
  *v9 = 0.0;
  *v8 = 0.0;
  if (*v9 > 0.0)
  {
    v28 = __p;
    v29 = *__p;
    if (v39 != __p)
    {
      v30 = (v39 - __p) >> 2;
      if (v30 <= 1)
      {
        v30 = 1;
      }

      do
      {
        v31 = *v28++;
        v32 = v31;
        if (v31 > v29)
        {
          v29 = v32;
        }

        --v30;
      }

      while (v30);
    }

    *v8 = v29;
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    v42 = v26;
    operator delete(v26);
  }

  if (v44)
  {
    operator delete(v44);
  }

  if (v47)
  {
    operator delete(v47);
  }
}

void sub_2246C8214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (v54)
  {
    operator delete(v54);
  }

  operator delete(v55);
  if (a45)
  {
    operator delete(a45);
    v57 = a48;
    if (!a48)
    {
LABEL_5:
      v58 = a51;
      if (!a51)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v57 = a48;
    if (!a48)
    {
      goto LABEL_5;
    }
  }

  operator delete(v57);
  v58 = a51;
  if (!a51)
  {
LABEL_6:
    v59 = a54;
    if (!a54)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v58);
  v59 = a54;
  if (!a54)
  {
LABEL_7:
    if (!a14)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v59);
  if (!a14)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(a14);
  _Unwind_Resume(a1);
}

char *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

char *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void peridot::PeridotUserOutput::fusedTofMacro(uint64_t a1, uint64_t *a2, uint64_t a3, float **a4, uint64_t **a5, uint64_t a6, float *a7)
{
  v7 = a2;
  v8 = *a2;
  v59 = a2[1] - *a2;
  v9 = v59 >> 2;
  if (v59)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v59 >> 2;
    }

    if (v9 > 7)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      v13 = v8 + 1;
      v14 = 0uLL;
      v15 = v10 & 0xFFFFFFFFFFFFFFF8;
      v16 = 0uLL;
      do
      {
        v14 = vaddq_f32(v13[-1], v14);
        v16 = vaddq_f32(*v13, v16);
        v13 += 2;
        v15 -= 8;
      }

      while (v15);
      v17 = vaddq_f32(v16, v14);
      v12 = vaddv_f32(*&vpaddq_f32(v17, v17));
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0.0;
    }

    v18 = v10 - v11;
    v19 = &v8->f32[v11];
    do
    {
      v20 = *v19++;
      v12 = v20 + v12;
      --v18;
    }

    while (v18);
LABEL_13:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v21 = (0.0 / (v59 >> 2));
  if (v21 >= 0.0000000015)
  {
    v28 = *a2;
    v27 = a2[1];
    if (v21 >= 0.0000000023)
    {
      v33 = v27 - v28;
      if (v33)
      {
        v34 = 0;
        v35 = v33 >> 2;
        if (v35 <= 1)
        {
          v35 = 1;
        }

        do
        {
          *((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v34;
          ++v34;
        }

        while (v35 != v34);
      }
    }

    else
    {
      v29 = v27 - v28;
      if (v29)
      {
        v30 = 0;
        v31 = v29 >> 2;
        v32 = *a5;
        if (v31 <= 1)
        {
          v31 = 1;
        }

        do
        {
          if (*&v32[8 * v30] >= 0xAuLL)
          {
            *((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v30;
          }

          ++v30;
        }

        while (v31 != v30);
      }
    }
  }

  else
  {
    v22 = a2[1];
    v23 = v22 - *a2;
    if (v22 != *a2)
    {
      v24 = 0;
      v25 = v23 >> 2;
      v26 = *a5;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      do
      {
        if (*&v26[8 * v24] >= 0xBuLL)
        {
          *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v24;
        }

        ++v24;
      }

      while (v25 != v24);
    }
  }

  v36 = *a5;
  v37 = *a4;
  v38 = a5[1] - *a5;
  if (v38)
  {
    v39 = v38 >> 3;
    if (v39 <= 1)
    {
      v39 = 1;
    }

    v40 = *a4;
    do
    {
      v42 = *v36;
      if (*v36 == 10)
      {
        v41 = *v40 * 0.3;
        *v40 = v41;
      }

      else if (*v36 < 0xAuLL)
      {
        goto LABEL_41;
      }

      *v36 = v42 - 8;
LABEL_41:
      ++v40;
      v36 += 8;
      --v39;
    }

    while (v39);
  }

  v43 = a4[1];
  if (v43 == v37)
  {
    v45 = a7;
  }

  else
  {
    v44 = 0;
    do
    {
      if ((*((v44 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v44))
      {
        operator new();
      }

      ++v44;
    }

    while (v44 < v43 - v37);
    v45 = a7;
    v7 = a2;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
  v46 = *a5;
  v47 = a5[1];
  v48 = v47 - *a5;
  if (v47 != *a5)
  {
    v49 = 0;
    v50 = 0;
    v51 = v48 >> 3;
    if (v51 <= 1)
    {
      v51 = 1;
    }

    do
    {
      if ((*((v49 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v49))
      {
        *(a6 + 4 * *&v46[8 * v49]) = *(4 * v50++);
      }

      ++v49;
    }

    while (v51 != v49);
  }

  *v45 = 0.0;
  v52 = *v7;
  v53 = v7[1];
  v54 = v53 - *v7;
  if (v53 != *v7)
  {
    v55 = 0;
    v56 = 0;
    v57 = v54 >> 2;
    if (v57 <= 1)
    {
      v57 = 1;
    }

    v58 = 0.0;
    do
    {
      if ((*((v55 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v55))
      {
        v58 = v58 + (*(4 * v56) * *(v52 + 4 * v55));
        *v45 = v58;
        ++v56;
      }

      ++v55;
    }

    while (v57 != v55);
  }
}

void sub_2246C8D38(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotUserOutput::debugPrint(peridot::PeridotUserOutput *this)
{
  puts("tof: ");
  printf("%.15f ", *this);
  printf("%.15f ", *(this + 77));
  printf("%.15f ", *(this + 154));
  printf("%.15f ", *(this + 231));
  printf("%.15f ", *(this + 308));
  printf("%.15f ", *(this + 385));
  printf("%.15f ", *(this + 462));
  printf("%.15f ", *(this + 539));
  printf("%.15f ", *(this + 616));
  printf("%.15f ", *(this + 693));
  printf("%.15f ", *(this + 770));
  printf("%.15f ", *(this + 847));
  printf("%.15f ", *(this + 924));
  printf("%.15f ", *(this + 1001));
  putchar(10);
  printf("%.15f ", *(this + 22));
  printf("%.15f ", *(this + 99));
  printf("%.15f ", *(this + 176));
  printf("%.15f ", *(this + 253));
  printf("%.15f ", *(this + 330));
  printf("%.15f ", *(this + 407));
  printf("%.15f ", *(this + 484));
  printf("%.15f ", *(this + 561));
  printf("%.15f ", *(this + 638));
  printf("%.15f ", *(this + 715));
  printf("%.15f ", *(this + 792));
  printf("%.15f ", *(this + 869));
  printf("%.15f ", *(this + 946));
  printf("%.15f ", *(this + 1023));
  putchar(10);
  printf("%.15f ", *(this + 44));
  printf("%.15f ", *(this + 121));
  printf("%.15f ", *(this + 198));
  printf("%.15f ", *(this + 275));
  printf("%.15f ", *(this + 352));
  printf("%.15f ", *(this + 429));
  printf("%.15f ", *(this + 506));
  printf("%.15f ", *(this + 583));
  printf("%.15f ", *(this + 660));
  printf("%.15f ", *(this + 737));
  printf("%.15f ", *(this + 814));
  printf("%.15f ", *(this + 891));
  printf("%.15f ", *(this + 968));
  printf("%.15f ", *(this + 1045));
  putchar(10);
  putchar(10);
  puts("confidence: ");
  printf("%.15f ", *(this + 1));
  printf("%.15f ", *(this + 78));
  printf("%.15f ", *(this + 155));
  printf("%.15f ", *(this + 232));
  printf("%.15f ", *(this + 309));
  printf("%.15f ", *(this + 386));
  printf("%.15f ", *(this + 463));
  printf("%.15f ", *(this + 540));
  printf("%.15f ", *(this + 617));
  printf("%.15f ", *(this + 694));
  printf("%.15f ", *(this + 771));
  printf("%.15f ", *(this + 848));
  printf("%.15f ", *(this + 925));
  printf("%.15f ", *(this + 1002));
  putchar(10);
  printf("%.15f ", *(this + 23));
  printf("%.15f ", *(this + 100));
  printf("%.15f ", *(this + 177));
  printf("%.15f ", *(this + 254));
  printf("%.15f ", *(this + 331));
  printf("%.15f ", *(this + 408));
  printf("%.15f ", *(this + 485));
  printf("%.15f ", *(this + 562));
  printf("%.15f ", *(this + 639));
  printf("%.15f ", *(this + 716));
  printf("%.15f ", *(this + 793));
  printf("%.15f ", *(this + 870));
  printf("%.15f ", *(this + 947));
  printf("%.15f ", *(this + 1024));
  putchar(10);
  printf("%.15f ", *(this + 45));
  printf("%.15f ", *(this + 122));
  printf("%.15f ", *(this + 199));
  printf("%.15f ", *(this + 276));
  printf("%.15f ", *(this + 353));
  printf("%.15f ", *(this + 430));
  printf("%.15f ", *(this + 507));
  printf("%.15f ", *(this + 584));
  printf("%.15f ", *(this + 661));
  printf("%.15f ", *(this + 738));
  printf("%.15f ", *(this + 815));
  printf("%.15f ", *(this + 892));
  printf("%.15f ", *(this + 969));
  printf("%.15f ", *(this + 1046));
  putchar(10);
  putchar(10);
  puts("SNR: ");
  printf("%.15f ", *(this + 2));
  printf("%.15f ", *(this + 79));
  printf("%.15f ", *(this + 156));
  printf("%.15f ", *(this + 233));
  printf("%.15f ", *(this + 310));
  printf("%.15f ", *(this + 387));
  printf("%.15f ", *(this + 464));
  printf("%.15f ", *(this + 541));
  printf("%.15f ", *(this + 618));
  printf("%.15f ", *(this + 695));
  printf("%.15f ", *(this + 772));
  printf("%.15f ", *(this + 849));
  printf("%.15f ", *(this + 926));
  printf("%.15f ", *(this + 1003));
  putchar(10);
  printf("%.15f ", *(this + 24));
  printf("%.15f ", *(this + 101));
  printf("%.15f ", *(this + 178));
  printf("%.15f ", *(this + 255));
  printf("%.15f ", *(this + 332));
  printf("%.15f ", *(this + 409));
  printf("%.15f ", *(this + 486));
  printf("%.15f ", *(this + 563));
  printf("%.15f ", *(this + 640));
  printf("%.15f ", *(this + 717));
  printf("%.15f ", *(this + 794));
  printf("%.15f ", *(this + 871));
  printf("%.15f ", *(this + 948));
  printf("%.15f ", *(this + 1025));
  putchar(10);
  printf("%.15f ", *(this + 46));
  printf("%.15f ", *(this + 123));
  printf("%.15f ", *(this + 200));
  printf("%.15f ", *(this + 277));
  printf("%.15f ", *(this + 354));
  printf("%.15f ", *(this + 431));
  printf("%.15f ", *(this + 508));
  printf("%.15f ", *(this + 585));
  printf("%.15f ", *(this + 662));
  printf("%.15f ", *(this + 739));
  printf("%.15f ", *(this + 816));
  printf("%.15f ", *(this + 893));
  printf("%.15f ", *(this + 970));
  printf("%.15f ", *(this + 1047));
  putchar(10);
  putchar(10);
  puts("val: ");
  printf("%.15f ", *(this + 6));
  printf("%.15f ", *(this + 83));
  printf("%.15f ", *(this + 160));
  printf("%.15f ", *(this + 237));
  printf("%.15f ", *(this + 314));
  printf("%.15f ", *(this + 391));
  printf("%.15f ", *(this + 468));
  printf("%.15f ", *(this + 545));
  printf("%.15f ", *(this + 622));
  printf("%.15f ", *(this + 699));
  printf("%.15f ", *(this + 776));
  printf("%.15f ", *(this + 853));
  printf("%.15f ", *(this + 930));
  printf("%.15f ", *(this + 1007));
  putchar(10);
  printf("%.15f ", *(this + 28));
  printf("%.15f ", *(this + 105));
  printf("%.15f ", *(this + 182));
  printf("%.15f ", *(this + 259));
  printf("%.15f ", *(this + 336));
  printf("%.15f ", *(this + 413));
  printf("%.15f ", *(this + 490));
  printf("%.15f ", *(this + 567));
  printf("%.15f ", *(this + 644));
  printf("%.15f ", *(this + 721));
  printf("%.15f ", *(this + 798));
  printf("%.15f ", *(this + 875));
  printf("%.15f ", *(this + 952));
  printf("%.15f ", *(this + 1029));
  putchar(10);
  printf("%.15f ", *(this + 50));
  printf("%.15f ", *(this + 127));
  printf("%.15f ", *(this + 204));
  printf("%.15f ", *(this + 281));
  printf("%.15f ", *(this + 358));
  printf("%.15f ", *(this + 435));
  printf("%.15f ", *(this + 512));
  printf("%.15f ", *(this + 589));
  printf("%.15f ", *(this + 666));
  printf("%.15f ", *(this + 743));
  printf("%.15f ", *(this + 820));
  printf("%.15f ", *(this + 897));
  printf("%.15f ", *(this + 974));
  printf("%.15f ", *(this + 1051));
  putchar(10);
  putchar(10);
  puts("Qs: ");
  printf("%.15f ", *(this + 3));
  printf("%.15f ", *(this + 80));
  printf("%.15f ", *(this + 157));
  printf("%.15f ", *(this + 234));
  printf("%.15f ", *(this + 311));
  printf("%.15f ", *(this + 388));
  printf("%.15f ", *(this + 465));
  printf("%.15f ", *(this + 542));
  printf("%.15f ", *(this + 619));
  printf("%.15f ", *(this + 696));
  printf("%.15f ", *(this + 773));
  printf("%.15f ", *(this + 850));
  printf("%.15f ", *(this + 927));
  printf("%.15f ", *(this + 1004));
  putchar(10);
  printf("%.15f ", *(this + 25));
  printf("%.15f ", *(this + 102));
  printf("%.15f ", *(this + 179));
  printf("%.15f ", *(this + 256));
  printf("%.15f ", *(this + 333));
  printf("%.15f ", *(this + 410));
  printf("%.15f ", *(this + 487));
  printf("%.15f ", *(this + 564));
  printf("%.15f ", *(this + 641));
  printf("%.15f ", *(this + 718));
  printf("%.15f ", *(this + 795));
  printf("%.15f ", *(this + 872));
  printf("%.15f ", *(this + 949));
  printf("%.15f ", *(this + 1026));
  putchar(10);
  printf("%.15f ", *(this + 47));
  printf("%.15f ", *(this + 124));
  printf("%.15f ", *(this + 201));
  printf("%.15f ", *(this + 278));
  printf("%.15f ", *(this + 355));
  printf("%.15f ", *(this + 432));
  printf("%.15f ", *(this + 509));
  printf("%.15f ", *(this + 586));
  printf("%.15f ", *(this + 663));
  printf("%.15f ", *(this + 740));
  printf("%.15f ", *(this + 817));
  printf("%.15f ", *(this + 894));
  printf("%.15f ", *(this + 971));
  printf("%.15f ", *(this + 1048));
  putchar(10);

  return putchar(10);
}

uint64_t H16ISPGetCFPreferenceNumber(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x277CBED28]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<unsigned long>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_2246CB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  MatrixNxPts<2u,double>::~MatrixNxPts(va);
  MatrixNxPts<3u,double>::~MatrixNxPts(v33 - 208);
  MatrixNxPts<2u,double>::~MatrixNxPts(v33 - 168);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<2u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t MatrixNxPts<3u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<3u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void MatrixNxPts<2u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void sub_2246CBEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Matrix<double>::~Matrix();
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_283809BF8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809BF8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void sub_2246CE9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();
  Matrix<double>::~Matrix();

  _Unwind_Resume(a1);
}

void sub_2246CEC98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float common::utils::prctile<double>(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    operator new();
  }

  std::__sort<std::__less<double,double> &,double *>();
  return 0.0;
}

void sub_2246CEF50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Matrix<unsigned int>::~Matrix(uint64_t result)
{
  *result = &unk_283809D90;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void sub_2246D13D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  std::vector<std::vector<std::vector<float>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void ***std::vector<std::vector<std::vector<float>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2246D44F0(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2246D53E8(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2246D6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  MEMORY[0x22AA53170](a40, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void gmoCoreAnalyticsTelemetry::init(gmoCoreAnalyticsTelemetry *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "init";
    v5 = 1024;
    v6 = 8;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMO Core Analytics Init, ver: %d", &v3, 0x12u);
  }

  v2 = time(0);
  CRandomGenerator::CRandomGenerator(&v3, v2);
  *&this->_homogTrackingLongTermCounter = 0;
  *&this->_coreAnalyticsHomographyAzul.highAmbient = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromNominal2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromOperationalPercentile = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam6 = 0u;
  *&this->_coreAnalyticsLongTerm.sstpSpotMoveP95LongTerm = 0u;
  *&this->_longTermEventPersistentData.sessionCount = 0u;
  *&this->_longTermEventPersistentData.homogDoneCount = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[3] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[7] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[11] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[15] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[19] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[23] = 0u;
  *&this->_longTermEventPersistentData.calibErrP95Arr[27] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[1] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[5] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[9] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[13] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[17] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[21] = 0u;
  *&this->_longTermEventPersistentData.calibErrP50Arr[25] = 0u;
  *(&this->_longTermEventPersistentData.calibErrP50Arr[28] + 1) = 0;
  CRandomGenerator::~CRandomGenerator(&v3);
}

void gmoCoreAnalyticsTelemetry::calcHomogStatsInitialData(gmoCoreAnalyticsTelemetry *this)
{
  v2 = time(0);
  CRandomGenerator::CRandomGenerator(v5, v2);
  v3 = CRandomGenerator::UniformRand(v5);
  *&this->_coreAnalyticsHomographyAzul.bankId = vcvt_s32_f32(vrnda_f32(vmul_n_f32(0x4150000040E00000, v3)));
  v4 = spotMovementBuckets[llroundf(v3 * 9.0)];
  this->_coreAnalyticsHomographyAzul.spotMovePercentile = v4;
  this->_coreAnalyticsHomographyAzul.prctileMoveBuckets = v4;
  CRandomGenerator::~CRandomGenerator(v5);
}

void gmoCoreAnalyticsTelemetry::reportHomogStats(gmoCoreAnalyticsTelemetry *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN25gmoCoreAnalyticsTelemetry16reportHomogStatsEv_block_invoke;
  v8[3] = &__block_descriptor_40_e30___NSObject_OS_xpc_object__8__0l;
  v8[4] = this;
  v2 = MEMORY[0x22AA537B0](v8);
  v3 = analytics_send_event_lazy();
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 136315394;
      v10 = "reportHomogStats";
      v11 = 2080;
      v12 = "com.apple.JasperDepth.GMO.HomographyAzul";
      v5 = MEMORY[0x277D86220];
      v6 = "GMO: %s: Sent the %s event into the diagnostics system";
      v7 = 22;
LABEL_6:
      _os_log_impl(&dword_224668000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
    }
  }

  else if (v4)
  {
    *buf = 136315650;
    v10 = "reportHomogStats";
    v11 = 2080;
    v12 = "com.apple.JasperDepth.GMO.HomographyAzul";
    v13 = 1024;
    v14 = v3;
    v5 = MEMORY[0x277D86220];
    v6 = "GMO: %s: Failed to send the %s event into the diagnostics system with err %d";
    v7 = 28;
    goto LABEL_6;
  }

  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam5 = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromOperationalPercentile = 0u;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = 0u;
  *&this->_coreAnalyticsHomographyAzul.highAmbient = 0u;
  *&this->_coreAnalyticsHomographyAzul.spotsMovementFromNominal2 = 0u;
}

void *___ZN25gmoCoreAnalyticsTelemetry16reportHomogStatsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_BOOL(v2, "HighAmbient", *v1);
    xpc_dictionary_set_BOOL(v3, "Hok", *(v1 + 1));
    xpc_dictionary_set_BOOL(v3, "HighSpotShift", *(v1 + 2));
    xpc_dictionary_set_int64(v3, "BankID", *(v1 + 4));
    xpc_dictionary_set_int64(v3, "Number_of_qualified_spots", *(v1 + 12));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Nominal", *(v1 + 16));
    xpc_dictionary_set_double(v3, "NumberAnchorsMoved", *(v1 + 20));
    xpc_dictionary_set_int64(v3, "spotMovePercentile", *(v1 + 25));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Factory_Percentile", *(v1 + 28));
    xpc_dictionary_set_double(v3, "Spots_movement_from_Operational_Percentile", *(v1 + 32));
    xpc_dictionary_set_double(v3, "AnchorMovement_Percentile", *(v1 + 36));
    xpc_dictionary_set_int64(v3, "NumberSpotsClipped", *(v1 + 40));
    xpc_dictionary_set_int64(v3, "homography_Number_In_Session", *(v1 + 92));
    xpc_dictionary_set_double(v3, "HokClassifierParam1", *(v1 + 44));
    xpc_dictionary_set_double(v3, "HokClassifierParam2", *(v1 + 48));
    xpc_dictionary_set_double(v3, "HokClassifierParam3", *(v1 + 52));
    xpc_dictionary_set_double(v3, "HokClassifierParam4", *(v1 + 56));
    xpc_dictionary_set_double(v3, "HokClassifierParam5", *(v1 + 60));
    xpc_dictionary_set_double(v3, "HokClassifierParam6", *(v1 + 64));
    xpc_dictionary_set_double(v3, "HokClassifierFutureParam7", *(v1 + 68));
    xpc_dictionary_set_double(v3, "HokClassifierFutureParam8", *(v1 + 72));
  }

  return v3;
}

void gmoCoreAnalyticsTelemetry::reportLongTermStats(gmoCoreAnalyticsTelemetry *this)
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCount = this->_longTermEventPersistentData.sessionCount;
  if (sessionCount >= 0x1D)
  {
    this->_isFireLongTermEvent = 1;
    goto LABEL_4;
  }

  if (this->_isFireLongTermEvent)
  {
LABEL_4:
    this->_coreAnalyticsLongTerm.sstpPercentageSuccessLongTerm = this->_longTermEventPersistentData.hOkNoViolationsCount / this->_longTermEventPersistentData.homogDoneCount;
    if (sessionCount != -1)
    {
      operator new();
    }

    this->_coreAnalyticsLongTerm.sstpSpotMoveP95LongTerm = 0.0;
    this->_coreAnalyticsLongTerm.sstpSpotMoveP50LongTerm = 0.0;
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 components:28 fromDate:v4];

    lastEventYear = this->_longTermEventPersistentData.lastEventYear;
    if (lastEventYear && this->_longTermEventPersistentData.lastEventMonth && lastEventYear == [v5 year] && ((v7 = this->_longTermEventPersistentData.lastEventYear, v7 != objc_msgSend(v5, "year")) || (lastEventMonth = this->_longTermEventPersistentData.lastEventMonth, lastEventMonth >= objc_msgSend(v5, "month"))))
    {
      this->_coreAnalyticsLongTerm.firstEventInMonthLongTerm = 0;
    }

    else
    {
      this->_coreAnalyticsLongTerm.firstEventInMonthLongTerm = 1;
      this->_longTermEventPersistentData.lastEventYear = [v5 year];
      this->_longTermEventPersistentData.lastEventMonth = [v5 month];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN25gmoCoreAnalyticsTelemetry19reportLongTermStatsEv_block_invoke;
    v16[3] = &__block_descriptor_40_e30___NSObject_OS_xpc_object__8__0l;
    v16[4] = this;
    v9 = MEMORY[0x22AA537B0](v16);
    v10 = analytics_send_event_lazy();
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        *buf = 136315394;
        v18 = "reportLongTermStats";
        v19 = 2080;
        v20 = "com.apple.JasperDepth.GMO.longTerm";
        v12 = MEMORY[0x277D86220];
        v13 = "GMO: %s: Sent the %s event into the diagnostics system";
        v14 = 22;
LABEL_17:
        _os_log_impl(&dword_224668000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 136315650;
      v18 = "reportLongTermStats";
      v19 = 2080;
      v20 = "com.apple.JasperDepth.GMO.longTerm";
      v21 = 1024;
      v22 = v10;
      v12 = MEMORY[0x277D86220];
      v13 = "GMO: %s: Failed to send the %s event into the diagnostics system with err %d";
      v14 = 28;
      goto LABEL_17;
    }

    *&this->_homogTrackingLongTermCounter = 0;
  }
}

void sub_2246D7420(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

float *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v44 = result[1];
      v45 = *(a3 - 1);
      if (v44 < v45)
      {
        v46 = *(result + 1);
      }

      else
      {
        v46 = *(a3 - 1);
      }

      if (v44 < v45)
      {
        v44 = *(a3 - 1);
      }

      *(a3 - 1) = v44;
      *(result + 1) = v46;
      v47 = *(a3 - 1);
      if (v47 < *result)
      {
        v48 = *(a3 - 1);
      }

      else
      {
        v48 = *result;
      }

      if (v47 < *result)
      {
        v47 = *result;
      }

      *(a3 - 1) = v47;
      v49 = result[1];
      if (v48 < v49)
      {
        result[1] = v49;
      }

      else
      {
        *result = v49;
        result[1] = v48;
      }

      return result;
    }

    if (v3 == 2)
    {
      v50 = *(a3 - 1);
      v51 = *result;
      if (v50 < *result)
      {
        *result = v50;
        *(a3 - 1) = v51;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v52 = result++;
        if (v52 != a3 && result != a3)
        {
          v53 = *v52;
          v54 = *v52;
          v55 = result;
          v56 = v52;
          v57 = result;
          do
          {
            v58 = *v57++;
            v59 = v58;
            if (v58 < v54)
            {
              v54 = v59;
              v56 = v55;
            }

            v55 = v57;
          }

          while (v57 != a3);
          if (v56 != v52)
          {
            *v52 = *v56;
            *v56 = v53;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result < v15)
    {
LABEL_33:
      v22 = result + 1;
      if (result + 1 >= v5)
      {
        v25 = result + 1;
      }

      else
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v4;
          do
          {
            v25 = v23;
            v26 = *v23++;
            v27 = v26;
          }

          while (v26 < v24);
          do
          {
            v28 = *--v5;
            v29 = v28;
          }

          while (v28 >= v24);
          if (v25 >= v5)
          {
            break;
          }

          *v25 = v29;
          *v5 = v27;
          ++v16;
          if (v4 == v25)
          {
            v4 = v5;
          }
        }
      }

      if (v25 != v4)
      {
        v30 = *v25;
        if (*v4 < *v25)
        {
          *v25 = *v4;
          *v4 = v30;
          ++v16;
        }
      }

      if (v25 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v25 <= a2)
        {
          v36 = v25 + 1;
          while (v36 != a3)
          {
            v38 = *(v36 - 1);
            v37 = *v36++;
            if (v37 < v38)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          while (v22 != v25)
          {
            v33 = *(v22 - 1);
            v32 = *v22++;
            if (v32 < v33)
            {
              goto LABEL_48;
            }
          }
        }

        return result;
      }

LABEL_48:
      if (v25 <= a2)
      {
        v31 = v25 + 1;
      }

      else
      {
        a3 = v25;
        v31 = result;
      }
    }

    else
    {
      v18 = a3 - 2;
      while (v18 != result)
      {
        v19 = v18;
        v20 = *v18--;
        v21 = v20;
        if (v20 < v15)
        {
          *result = v21;
          *v19 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v5 = v19;
          goto LABEL_33;
        }
      }

      v34 = result + 1;
      if (v17 >= *v5)
      {
        if (v34 == v5)
        {
          return result;
        }

        while (1)
        {
          v35 = *v34;
          if (v17 < *v34)
          {
            break;
          }

          if (++v34 == v5)
          {
            return result;
          }
        }

        *v34++ = *v5;
        *v5 = v35;
      }

      if (v34 == v5)
      {
        return result;
      }

      while (1)
      {
        v39 = *result;
        do
        {
          v31 = v34;
          v40 = *v34++;
          v41 = v40;
        }

        while (v39 >= v40);
        do
        {
          v42 = *--v5;
          v43 = v42;
        }

        while (v39 < v42);
        if (v31 >= v5)
        {
          break;
        }

        *v31 = v43;
        *v5 = v41;
      }

      if (v31 > a2)
      {
        return result;
      }
    }

    result = v31;
  }

  return result;
}

void *___ZN25gmoCoreAnalyticsTelemetry19reportLongTermStatsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_BOOL(v2, "longTermEventFirstInMonth", *(v1 + 76));
    xpc_dictionary_set_double(v3, "SSTP_Percent_success_long_term", *(v1 + 88));
    xpc_dictionary_set_double(v3, "SSTP_Spot_move_P95_long_term", *(v1 + 80));
    xpc_dictionary_set_double(v3, "SSTP_Spot_move_P50_long_term", *(v1 + 84));
  }

  return v3;
}

float gmoCoreAnalyticsTelemetry::setHomogMetrics(gmoCoreAnalyticsTelemetry *this, GmoMetrics *a2)
{
  sessionCount = this->_longTermEventPersistentData.sessionCount;
  if (sessionCount >= 0x1E)
  {
    __assert_rtn("setHomogMetrics", "gmoCoreAnalyticsTelemetry.mm", 190, "_longTermEventPersistentData.sessionCount < kGmoCaLongTermEventFireTriggerSessionCount");
  }

  v3 = &this->_coreAnalyticsHomographyAzul.highAmbient + 4 * sessionCount;
  *(v3 + 29) = LODWORD(a2->var6);
  *(v3 + 59) = LODWORD(a2->var10);
  var6 = a2->var6;
  var5 = a2->var5;
  this->_coreAnalyticsHomographyAzul.highAmbient = a2->var0 > 0.15;
  this->_coreAnalyticsHomographyAzul.highSpotShift = var5 > 0.8;
  this->_coreAnalyticsHomographyAzul.hokClassifierParam1 = a2->var8 - var6;
  v6 = *&a2->var1;
  this->_coreAnalyticsHomographyAzul.hokClassifierParam4 = a2->var3;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam2 = v6;
  *&this->_coreAnalyticsHomographyAzul.hokClassifierParam5 = vabs_f32(vrev64_s32(*&a2->var11));
  result = vabds_f32(a2->var9, a2->var7);
  *&var5 = a2->var4;
  this->_coreAnalyticsHomographyAzul.hokClassifierFutureParam7 = result;
  this->_coreAnalyticsHomographyAzul.hokClassifierFutureParam8 = *&var5;
  return result;
}

float gmoCoreAnalyticsTelemetry::setHOk(gmoCoreAnalyticsTelemetry *this, _BOOL4 a2, int a3)
{
  this->_coreAnalyticsHomographyAzul.hOk = a2;
  homogSuccessfulTrackingLongTermCounter = this->_homogSuccessfulTrackingLongTermCounter;
  if (a2 && a3)
  {
    this->_homogSuccessfulTrackingLongTermCounter = ++homogSuccessfulTrackingLongTermCounter;
    ++this->_homogSuccessfulTrackingCounter;
  }

  *&this->_longTermEventPersistentData.hOkNoViolationsCount = vadd_s32(*&this->_longTermEventPersistentData.hOkNoViolationsCount, (a2 | 0x100000000));
  v4 = this->_homogTrackingLongTermCounter + 1;
  this->_homogTrackingLongTermCounter = v4;
  result = homogSuccessfulTrackingLongTermCounter / v4;
  this->_coreAnalyticsLongTerm.sstpPercentageSuccessLongTerm = result;
  return result;
}

void gmoCoreAnalyticsTelemetry::setSpotsMovement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v356 = *MEMORY[0x277D85DE8];
  v4 = vsub_f32(*(a4 + 112 * *(a1 + 4) + 8 * *(a1 + 8)), *(a2 + 112 * *(a1 + 4) + 8 * *(a1 + 8)));
  *(a1 + 16) = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  v5 = *a4;
  v6 = *(a4 + 4);
  v5.i32[1] = HIDWORD(*(a4 + 4));
  v5.i32[2] = v6.i32[3];
  v5.i32[3] = *(a4 + 24);
  v7 = *a2;
  v8 = *(a2 + 4);
  v7.i32[1] = HIDWORD(*(a2 + 4));
  v7.i32[2] = v8.i32[3];
  v7.i32[3] = *(a2 + 24);
  v6.i32[1] = *(a4 + 12);
  v6.i32[2] = *(a4 + 20);
  v6.i32[3] = *(a4 + 28);
  v8.i32[1] = *(a2 + 12);
  v8.i32[2] = *(a2 + 20);
  v8.i32[3] = *(a2 + 28);
  v9 = vsubq_f32(v5, v7);
  v10 = vsubq_f32(v6, v8);
  v11 = *a3;
  v12 = *(a3 + 4);
  v11.i32[1] = HIDWORD(*(a3 + 4));
  v11.i32[2] = v12.i32[3];
  v11.i32[3] = *(a3 + 24);
  v251 = vmlaq_f32(vmulq_f32(v9, v9), v10, v10);
  v12.i32[1] = *(a3 + 12);
  v12.i32[2] = *(a3 + 20);
  v13 = vsubq_f32(v5, v11);
  v12.i32[3] = *(a3 + 28);
  v14 = vsubq_f32(v6, v12);
  v15 = *(a4 + 32);
  v16 = *(a4 + 36);
  v15.i32[1] = HIDWORD(*(a4 + 36));
  v15.i32[2] = v16.i32[3];
  v15.i32[3] = *(a4 + 56);
  v17 = *(a2 + 32);
  v18 = *(a2 + 36);
  v17.i32[1] = HIDWORD(*(a2 + 36));
  v17.i32[2] = v18.i32[3];
  v17.i32[3] = *(a2 + 56);
  v250 = vmlaq_f32(vmulq_f32(v13, v13), v14, v14);
  v16.i32[1] = *(a4 + 44);
  v16.i32[2] = *(a4 + 52);
  v19 = vsubq_f32(v15, v17);
  v16.i32[3] = *(a4 + 60);
  v18.i32[1] = *(a2 + 44);
  v18.i32[2] = *(a2 + 52);
  v18.i32[3] = *(a2 + 60);
  v20 = vsubq_f32(v16, v18);
  v21 = *(a3 + 32);
  v22 = *(a3 + 36);
  v21.i32[1] = HIDWORD(*(a3 + 36));
  v23 = vmlaq_f32(vmulq_f32(v19, v19), v20, v20);
  v21.i32[2] = v22.i32[3];
  v22.i32[1] = *(a3 + 44);
  v22.i32[2] = *(a3 + 52);
  v21.i32[3] = *(a3 + 56);
  v24 = vsubq_f32(v15, v21);
  v22.i32[3] = *(a3 + 60);
  v25 = vsubq_f32(v16, v22);
  v26 = *(a4 + 64);
  v27 = *(a4 + 68);
  v26.i32[1] = HIDWORD(*(a4 + 68));
  v26.i32[2] = v27.i32[3];
  v26.i32[3] = *(a4 + 88);
  v28 = *(a2 + 64);
  v29 = *(a2 + 68);
  v28.i32[1] = HIDWORD(*(a2 + 68));
  v28.i32[2] = v29.i32[3];
  v28.i32[3] = *(a2 + 88);
  v30 = vmlaq_f32(vmulq_f32(v24, v24), v25, v25);
  v27.i32[1] = *(a4 + 76);
  v27.i32[2] = *(a4 + 84);
  v31 = vsubq_f32(v26, v28);
  v27.i32[3] = *(a4 + 92);
  v29.i32[1] = *(a2 + 76);
  v29.i32[2] = *(a2 + 84);
  v29.i32[3] = *(a2 + 92);
  v32 = vsubq_f32(v27, v29);
  v33 = *(a3 + 64);
  v34 = *(a3 + 68);
  v33.i32[1] = HIDWORD(*(a3 + 68));
  v35 = vmlaq_f32(vmulq_f32(v31, v31), v32, v32);
  v33.i32[2] = v34.i32[3];
  v34.i32[1] = *(a3 + 76);
  v34.i32[2] = *(a3 + 84);
  v33.i32[3] = *(a3 + 88);
  v36 = vsubq_f32(v26, v33);
  v34.i32[3] = *(a3 + 92);
  v37 = vsubq_f32(v27, v34);
  v38 = vmlaq_f32(vmulq_f32(v36, v36), v37, v37);
  v37.i64[0] = *(a4 + 96);
  v33.i64[0] = *(a4 + 100);
  v37.i32[1] = v33.i32[1];
  v36.i64[0] = *(a2 + 96);
  v34.i64[0] = *(a2 + 100);
  v36.i32[1] = v34.i32[1];
  *v36.f32 = vsub_f32(*v37.f32, *v36.f32);
  v33.i32[1] = *(a4 + 108);
  v34.i32[1] = *(a2 + 108);
  *v34.f32 = vsub_f32(*v33.f32, *v34.f32);
  *v36.f32 = vmla_f32(vmul_f32(*v36.f32, *v36.f32), *v34.f32, *v34.f32);
  v34.i64[0] = *(a3 + 96);
  v39 = *(a3 + 100);
  v34.i32[1] = v39.i32[1];
  *v37.f32 = vsub_f32(*v37.f32, *v34.f32);
  v39.i32[1] = *(a3 + 108);
  *v33.f32 = vsub_f32(*v33.f32, v39);
  v34.i64[0] = *(a4 + 112);
  v40 = *(a4 + 120);
  v41 = vsub_f32(*v34.f32, *(a2 + 112));
  v42 = vmul_f32(v41, v41);
  *v37.f32 = vmla_f32(vmul_f32(*v37.f32, *v37.f32), *v33.f32, *v33.f32);
  *v33.f32 = vadd_f32(vdup_lane_s32(v42, 1), v42);
  *v34.f32 = vsub_f32(*v34.f32, *(a3 + 112));
  *v34.f32 = vmul_f32(*v34.f32, *v34.f32);
  v43 = vsub_f32(v40, *(a2 + 120));
  v44 = vmul_f32(v43, v43);
  v45 = vadd_f32(vdup_lane_s32(*v34.f32, 1), *v34.f32);
  v46 = vsub_f32(v40, *(a3 + 120));
  v47 = vmul_f32(v46, v46);
  *v34.f32 = vzip1_s32(*v33.f32, vadd_f32(vdup_lane_s32(v44, 1), v44));
  *v33.f32 = vzip1_s32(v45, vadd_f32(vdup_lane_s32(v47, 1), v47));
  v48 = *(a4 + 128);
  v49 = *(a4 + 136);
  v50 = vsub_f32(v48, *(a2 + 128));
  v51 = vmul_f32(v50, v50);
  v52 = vsub_f32(v48, *(a3 + 128));
  v53 = vmul_f32(v52, v52);
  v54 = vadd_f32(vdup_lane_s32(v53, 1), v53);
  v55 = vsub_f32(v49, *(a2 + 136));
  v56 = vmul_f32(v55, v55);
  v57 = vzip1_s32(vadd_f32(vdup_lane_s32(v51, 1), v51), vadd_f32(vdup_lane_s32(v56, 1), v56));
  v58 = vsub_f32(v49, *(a3 + 136));
  v59 = vmul_f32(v58, v58);
  v60 = vzip1_s32(v54, vadd_f32(vdup_lane_s32(v59, 1), v59));
  v61 = *(a4 + 144);
  v62 = *(a4 + 152);
  v63 = vsub_f32(v61, *(a2 + 144));
  v64 = vmul_f32(v63, v63);
  v65 = vsub_f32(v61, *(a3 + 144));
  v66 = vmul_f32(v65, v65);
  v67 = vadd_f32(vdup_lane_s32(v66, 1), v66);
  v68 = vsub_f32(v62, *(a2 + 152));
  v69 = vmul_f32(v68, v68);
  v70 = vzip1_s32(vadd_f32(vdup_lane_s32(v64, 1), v64), vadd_f32(vdup_lane_s32(v69, 1), v69));
  v71 = vsub_f32(v62, *(a3 + 152));
  v72 = vmul_f32(v71, v71);
  v73 = *(a4 + 160);
  v74 = *(a4 + 168);
  v75 = vsub_f32(v73, *(a2 + 160));
  v76 = vmul_f32(v75, v75);
  v77 = vzip1_s32(v67, vadd_f32(vdup_lane_s32(v72, 1), v72));
  v78 = vadd_f32(vdup_lane_s32(v76, 1), v76);
  v79 = vsub_f32(v73, *(a3 + 160));
  v80 = vmul_f32(v79, v79);
  v81 = vsub_f32(v74, *(a2 + 168));
  v82 = vmul_f32(v81, v81);
  v83 = vadd_f32(vdup_lane_s32(v80, 1), v80);
  v84 = vsub_f32(v74, *(a3 + 168));
  v85 = vmul_f32(v84, v84);
  v86 = vzip1_s32(v78, vadd_f32(vdup_lane_s32(v82, 1), v82));
  v87 = vzip1_s32(v83, vadd_f32(vdup_lane_s32(v85, 1), v85));
  v88 = *(a4 + 176);
  v89 = *(a4 + 184);
  v90 = vsub_f32(v88, *(a2 + 176));
  v91 = vmul_f32(v90, v90);
  v92 = vsub_f32(v88, *(a3 + 176));
  v93 = vmul_f32(v92, v92);
  v94 = vadd_f32(vdup_lane_s32(v93, 1), v93);
  v95 = vsub_f32(v89, *(a2 + 184));
  v96 = vmul_f32(v95, v95);
  v97 = vzip1_s32(vadd_f32(vdup_lane_s32(v91, 1), v91), vadd_f32(vdup_lane_s32(v96, 1), v96));
  v98 = vsub_f32(v89, *(a3 + 184));
  v99 = vmul_f32(v98, v98);
  v100 = vzip1_s32(v94, vadd_f32(vdup_lane_s32(v99, 1), v99));
  v101 = *(a4 + 192);
  v102 = *(a4 + 200);
  v103 = vsub_f32(v101, *(a2 + 192));
  v104 = vmul_f32(v103, v103);
  v105 = vsub_f32(v101, *(a3 + 192));
  v106 = vmul_f32(v105, v105);
  v107 = vadd_f32(vdup_lane_s32(v106, 1), v106);
  v108 = vsub_f32(v102, *(a2 + 200));
  v109 = vmul_f32(v108, v108);
  v110 = vzip1_s32(vadd_f32(vdup_lane_s32(v104, 1), v104), vadd_f32(vdup_lane_s32(v109, 1), v109));
  v111 = vsub_f32(v102, *(a3 + 200));
  v112 = vmul_f32(v111, v111);
  v113 = *(a4 + 208);
  v114 = *(a4 + 216);
  v115 = vsub_f32(v113, *(a2 + 208));
  v116 = vmul_f32(v115, v115);
  v117 = vzip1_s32(v107, vadd_f32(vdup_lane_s32(v112, 1), v112));
  v118 = vadd_f32(vdup_lane_s32(v116, 1), v116);
  v119 = vsub_f32(v113, *(a3 + 208));
  v120 = vmul_f32(v119, v119);
  v121 = vsub_f32(v114, *(a2 + 216));
  v122 = vmul_f32(v121, v121);
  v123 = vadd_f32(vdup_lane_s32(v120, 1), v120);
  v124 = vsub_f32(v114, *(a3 + 216));
  v125 = vmul_f32(v124, v124);
  v126 = vzip1_s32(v118, vadd_f32(vdup_lane_s32(v122, 1), v122));
  v127 = vzip1_s32(v123, vadd_f32(vdup_lane_s32(v125, 1), v125));
  v128 = *(a4 + 224);
  v129 = *(a4 + 232);
  v130 = vsub_f32(v128, *(a2 + 224));
  v131 = vmul_f32(v130, v130);
  v132 = vsub_f32(v128, *(a3 + 224));
  v133 = vmul_f32(v132, v132);
  v134 = vadd_f32(vdup_lane_s32(v133, 1), v133);
  v135 = vsub_f32(v129, *(a2 + 232));
  v136 = vmul_f32(v135, v135);
  v137 = vzip1_s32(vadd_f32(vdup_lane_s32(v131, 1), v131), vadd_f32(vdup_lane_s32(v136, 1), v136));
  v138 = vsub_f32(v129, *(a3 + 232));
  v139 = vmul_f32(v138, v138);
  v140 = vzip1_s32(v134, vadd_f32(vdup_lane_s32(v139, 1), v139));
  v141 = *(a4 + 240);
  v142 = *(a4 + 248);
  v143 = vsub_f32(v141, *(a2 + 240));
  v144 = vmul_f32(v143, v143);
  v145 = vsub_f32(v141, *(a3 + 240));
  v146 = vmul_f32(v145, v145);
  v147 = vadd_f32(vdup_lane_s32(v146, 1), v146);
  v148 = vsub_f32(v142, *(a2 + 248));
  v149 = vmul_f32(v148, v148);
  v150 = vzip1_s32(vadd_f32(vdup_lane_s32(v144, 1), v144), vadd_f32(vdup_lane_s32(v149, 1), v149));
  v151 = vsub_f32(v142, *(a3 + 248));
  v152 = vmul_f32(v151, v151);
  v153 = *(a4 + 256);
  v154 = *(a4 + 264);
  v155 = vsub_f32(v153, *(a2 + 256));
  v156 = vmul_f32(v155, v155);
  v157 = vzip1_s32(v147, vadd_f32(vdup_lane_s32(v152, 1), v152));
  v158 = vsub_f32(v153, *(a3 + 256));
  v159 = vmul_f32(v158, v158);
  v160 = vsub_f32(v154, *(a2 + 264));
  v161 = vmul_f32(v160, v160);
  v162 = vsub_f32(v154, *(a3 + 264));
  v163 = vmul_f32(v162, v162);
  v164 = vzip1_s32(vadd_f32(vdup_lane_s32(v156, 1), v156), vadd_f32(vdup_lane_s32(v161, 1), v161));
  v165 = vzip1_s32(vadd_f32(vdup_lane_s32(v159, 1), v159), vadd_f32(vdup_lane_s32(v163, 1), v163));
  v9.i64[0] = *(a4 + 272);
  v166 = *(a4 + 280);
  v167 = *(a2 + 280);
  v168 = vsub_f32(*v9.f32, *(a2 + 272));
  v169 = vmul_f32(v168, v168);
  v170 = vadd_f32(vdup_lane_s32(v169, 1), v169);
  v6.i64[0] = *(a3 + 280);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 272));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v305[0] = vsqrtq_f32(v251);
  v305[1] = vsqrtq_f32(v23);
  v252 = vsqrtq_f32(v250);
  v253 = vsqrtq_f32(v30);
  v305[2] = vsqrtq_f32(v35);
  v254 = vsqrtq_f32(v38);
  v306 = vsqrt_f32(*v36.f32);
  v307 = vsqrt_f32(*v34.f32);
  *v23.f32 = vsqrt_f32(v77);
  v171 = vsqrt_f32(v97);
  v172 = vsqrt_f32(v127);
  v173 = vsqrt_f32(v137);
  v255 = vsqrt_f32(*v37.f32);
  v256 = vsqrt_f32(*v33.f32);
  *v35.f32 = vsub_f32(v166, v167);
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v308 = vsqrt_f32(v57);
  v309 = vsqrt_f32(v70);
  *v38.f32 = vsqrt_f32(vzip1_s32(v170, vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32)));
  *v6.f32 = vsub_f32(v166, *v6.f32);
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v9.i64[0] = *(a4 + 288);
  v35.i64[0] = *(a4 + 296);
  v174 = *(a2 + 296);
  *v34.f32 = vsub_f32(*v9.f32, *(a2 + 288));
  *v34.f32 = vmul_f32(*v34.f32, *v34.f32);
  v175 = *(a3 + 296);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 288));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v257 = vsqrt_f32(v60);
  v258 = v23.i64[0];
  *v23.f32 = vsub_f32(*v35.f32, v174);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v23.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v34.f32, 1), *v34.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v30.f32 = vsub_f32(*v35.f32, v175);
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32));
  v30.i64[0] = *(a4 + 304);
  v35.i64[0] = *(a4 + 312);
  v176 = *(a2 + 312);
  *v34.f32 = vsub_f32(*v30.f32, *(a2 + 304));
  *v34.f32 = vmul_f32(*v34.f32, *v34.f32);
  v177 = *(a3 + 312);
  *v30.f32 = vsub_f32(*v30.f32, *(a3 + 304));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v310 = vsqrt_f32(v86);
  v311 = v171;
  *v36.f32 = vsub_f32(*v35.f32, v176);
  *v36.f32 = vmul_f32(*v36.f32, *v36.f32);
  *v36.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v34.f32, 1), *v34.f32), vadd_f32(vdup_lane_s32(*v36.f32, 1), *v36.f32));
  *v35.f32 = vsub_f32(*v35.f32, v177);
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v34.i64[0] = *(a4 + 320);
  v178 = *(a4 + 328);
  v179 = *(a2 + 328);
  v180 = vsub_f32(*v34.f32, *(a2 + 320));
  v259 = vsqrt_f32(v87);
  v260 = vsqrt_f32(v100);
  *v33.f32 = vmul_f32(v180, v180);
  *v37.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32));
  *v30.f32 = vadd_f32(vdup_lane_s32(*v33.f32, 1), *v33.f32);
  *v35.f32 = vsub_f32(*v34.f32, *(a3 + 320));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v181 = vsub_f32(v178, v179);
  v182 = vmul_f32(v181, v181);
  *v33.f32 = vsub_f32(v178, *(a3 + 328));
  v183 = vmul_f32(*v33.f32, *v33.f32);
  *v33.f32 = vzip1_s32(*v30.f32, vadd_f32(vdup_lane_s32(v182, 1), v182));
  *v30.f32 = vadd_f32(vdup_lane_s32(v183, 1), v183);
  v34.i64[0] = *(a4 + 336);
  v184 = *(a4 + 344);
  v185 = *(a2 + 344);
  v186 = vsub_f32(*v34.f32, *(a2 + 336));
  v312 = vsqrt_f32(v110);
  v313 = vsqrt_f32(v126);
  v187 = vmul_f32(v186, v186);
  v188 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), *v30.f32);
  *v35.f32 = vsub_f32(*v34.f32, *(a3 + 336));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v189 = vsub_f32(v184, v185);
  v190 = vmul_f32(v189, v189);
  v191 = vsub_f32(v184, *(a3 + 344));
  v192 = vmul_f32(v191, v191);
  v193 = vzip1_s32(vadd_f32(vdup_lane_s32(v187, 1), v187), vadd_f32(vdup_lane_s32(v190, 1), v190));
  *v30.f32 = vadd_f32(vdup_lane_s32(v192, 1), v192);
  v34.i64[0] = *(a4 + 352);
  v194 = *(a4 + 360);
  v195 = *(a2 + 360);
  v196 = vsub_f32(*v34.f32, *(a2 + 352));
  v261 = vsqrt_f32(v117);
  v262 = v172;
  v197 = vmul_f32(v196, v196);
  v198 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), *v30.f32);
  *v35.f32 = vsub_f32(*v34.f32, *(a3 + 352));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v199 = vsub_f32(v194, v195);
  v200 = vmul_f32(v199, v199);
  v201 = vsub_f32(v194, *(a3 + 360));
  v202 = vmul_f32(v201, v201);
  v203 = vzip1_s32(vadd_f32(vdup_lane_s32(v197, 1), v197), vadd_f32(vdup_lane_s32(v200, 1), v200));
  *v30.f32 = vadd_f32(vdup_lane_s32(v202, 1), v202);
  v34.i64[0] = *(a4 + 368);
  v204 = *(a4 + 376);
  v205 = *(a2 + 376);
  v206 = vsub_f32(*v34.f32, *(a2 + 368));
  v314 = v173;
  v315 = vsqrt_f32(v150);
  v207 = vmul_f32(v206, v206);
  v208 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), *v30.f32);
  *v35.f32 = vsub_f32(*v34.f32, *(a3 + 368));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v209 = vsub_f32(v204, v205);
  v210 = vmul_f32(v209, v209);
  v211 = vsub_f32(v204, *(a3 + 376));
  v212 = vmul_f32(v211, v211);
  v213 = vzip1_s32(vadd_f32(vdup_lane_s32(v207, 1), v207), vadd_f32(vdup_lane_s32(v210, 1), v210));
  *v30.f32 = vadd_f32(vdup_lane_s32(v212, 1), v212);
  v214 = *(a4 + 384);
  v215 = *(a4 + 392);
  v216 = *(a2 + 392);
  *v34.f32 = vsub_f32(v214, *(a2 + 384));
  v263 = vsqrt_f32(v140);
  v264 = vsqrt_f32(v157);
  v217 = vmul_f32(*v34.f32, *v34.f32);
  *v34.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), *v30.f32);
  *v30.f32 = vadd_f32(vdup_lane_s32(v217, 1), v217);
  *v35.f32 = vsub_f32(v214, *(a3 + 384));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v218 = vsub_f32(v215, v216);
  v219 = vmul_f32(v218, v218);
  v220 = vsub_f32(v215, *(a3 + 392));
  v221 = vmul_f32(v220, v220);
  v222 = vzip1_s32(*v30.f32, vadd_f32(vdup_lane_s32(v219, 1), v219));
  *v30.f32 = vadd_f32(vdup_lane_s32(v221, 1), v221);
  v223 = *(a4 + 400);
  v224 = *(a4 + 408);
  v225 = *(a2 + 408);
  v226 = vsub_f32(v223, *(a2 + 400));
  v316 = vsqrt_f32(v164);
  v317 = v38.i64[0];
  *v38.f32 = vmul_f32(v226, v226);
  *v35.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), *v30.f32);
  *v30.f32 = vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32);
  *v38.f32 = vsub_f32(v223, *(a3 + 400));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v227 = vsub_f32(v224, v225);
  v228 = vmul_f32(v227, v227);
  v229 = vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32);
  v230 = vsub_f32(v224, *(a3 + 408));
  v231 = vmul_f32(v230, v230);
  *v38.f32 = vzip1_s32(*v30.f32, vadd_f32(vdup_lane_s32(v228, 1), v228));
  *v30.f32 = vadd_f32(vdup_lane_s32(v231, 1), v231);
  v232 = *(a4 + 416);
  v233 = *(a4 + 424);
  v234 = *(a2 + 424);
  v235 = vsub_f32(v232, *(a2 + 416));
  v265 = vsqrt_f32(v165);
  v266 = v6.i64[0];
  v236 = vmul_f32(v235, v235);
  *v6.f32 = vzip1_s32(v229, *v30.f32);
  *v30.f32 = vadd_f32(vdup_lane_s32(v236, 1), v236);
  v237 = vsub_f32(v232, *(a3 + 416));
  v238 = vmul_f32(v237, v237);
  v239 = vsub_f32(v233, v234);
  v240 = vmul_f32(v239, v239);
  v241 = vsub_f32(v233, *(a3 + 424));
  v242 = vmul_f32(v241, v241);
  *v30.f32 = vzip1_s32(*v30.f32, vadd_f32(vdup_lane_s32(v240, 1), v240));
  v243 = vadd_f32(vdup_lane_s32(v242, 1), v242);
  v244 = *(a4 + 432);
  v245 = *(a4 + 440);
  v246 = *(a2 + 440);
  v247 = vsub_f32(v244, *(a2 + 432));
  v318 = v23.i64[0];
  v319 = vsqrt_f32(*v36.f32);
  *v23.f32 = vmul_f32(v247, v247);
  v248 = vzip1_s32(vadd_f32(vdup_lane_s32(v238, 1), v238), v243);
  v249 = *(a3 + 440);
  *v36.f32 = vsub_f32(v244, *(a3 + 432));
  v267 = vsqrt_f32(*v9.f32);
  v268 = vsqrt_f32(*v37.f32);
  *v9.f32 = vmul_f32(*v36.f32, *v36.f32);
  v320 = vsqrt_f32(*v33.f32);
  v321 = vsqrt_f32(v193);
  v269 = vsqrt_f32(v188);
  v270 = vsqrt_f32(v198);
  v322 = vsqrt_f32(v203);
  v323 = vsqrt_f32(v213);
  v271 = vsqrt_f32(v208);
  v272 = vsqrt_f32(*v34.f32);
  v324 = vsqrt_f32(v222);
  v325 = vsqrt_f32(*v38.f32);
  *v38.f32 = vsub_f32(v245, v246);
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  *v38.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v23.f32 = vsub_f32(v245, v249);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v36.i64[0] = *(a4 + 448);
  v37.i64[0] = *(a4 + 456);
  v34.i64[0] = *(a2 + 456);
  *v33.f32 = vsub_f32(*v36.f32, *(a2 + 448));
  v273 = vsqrt_f32(*v35.f32);
  v274 = vsqrt_f32(*v6.f32);
  *v6.f32 = vmul_f32(*v33.f32, *v33.f32);
  v33.i64[0] = *(a3 + 456);
  *v35.f32 = vsub_f32(*v36.f32, *(a3 + 448));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  *v36.f32 = vsub_f32(*v37.f32, *v34.f32);
  v326 = vsqrt_f32(*v30.f32);
  v327 = v38.i64[0];
  *v30.f32 = vmul_f32(*v36.f32, *v36.f32);
  *v30.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v6.f32 = vsub_f32(*v37.f32, *v33.f32);
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v35.i64[0] = *(a4 + 464);
  v38.i64[0] = *(a4 + 472);
  v37.i64[0] = *(a2 + 472);
  *v36.f32 = vsub_f32(*v35.f32, *(a2 + 464));
  *v36.f32 = vmul_f32(*v36.f32, *v36.f32);
  v34.i64[0] = *(a3 + 472);
  *v35.f32 = vsub_f32(*v35.f32, *(a3 + 464));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v275 = vsqrt_f32(v248);
  v276 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v23.f32 = vsub_f32(*v38.f32, *v37.f32);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v328 = v30.i64[0];
  v329 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v36.f32, 1), *v36.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  *v23.f32 = vsub_f32(*v38.f32, *v34.f32);
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32));
  v23.i64[0] = *(a4 + 480);
  v30.i64[0] = *(a4 + 488);
  v38.i64[0] = *(a2 + 488);
  *v35.f32 = vsub_f32(*v23.f32, *(a2 + 480));
  *v35.f32 = vmul_f32(*v35.f32, *v35.f32);
  v37.i64[0] = *(a3 + 488);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 480));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v277 = v6.i64[0];
  v278 = vsqrt_f32(*v9.f32);
  *v9.f32 = vsub_f32(*v30.f32, *v38.f32);
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v35.f32, 1), *v35.f32), vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32));
  *v6.f32 = vsub_f32(*v30.f32, *v37.f32);
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v30.i64[0] = *(a4 + 496);
  v35.i64[0] = *(a4 + 504);
  *v38.f32 = vsub_f32(*v30.f32, *(a2 + 496));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v37.i64[0] = *(a3 + 504);
  *v30.f32 = vsub_f32(*v30.f32, *(a3 + 496));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v36.f32 = vsub_f32(*v35.f32, *(a2 + 504));
  *v36.f32 = vmul_f32(*v36.f32, *v36.f32);
  v330 = vsqrt_f32(*v9.f32);
  v331 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32), vadd_f32(vdup_lane_s32(*v36.f32, 1), *v36.f32)));
  *v9.f32 = vsub_f32(*v35.f32, *v37.f32);
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v279 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v280 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32)));
  v9.i64[0] = *(a4 + 512);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 512));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 512));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 520);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 520));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 520));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 528);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 528));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 528));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 536);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 536));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v332 = v6.i64[0];
  v333 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 536));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v281 = v9.i64[0];
  v282 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v9.i64[0] = *(a4 + 544);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 544));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 544));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 552);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 552));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 552));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 560);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 560));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 560));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 568);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 568));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v334 = v6.i64[0];
  v335 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 568));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v23.i64[0] = *(a4 + 576);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 576));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v283 = v9.i64[0];
  v284 = v6.i64[0];
  *v9.f32 = vsub_f32(*v23.f32, *(a3 + 576));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  *v23.f32 = vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32);
  v6.i64[0] = *(a4 + 584);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 584));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsqrt_f32(vzip1_s32(*v23.f32, vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 584));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32));
  v6.i64[0] = *(a4 + 592);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 592));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 592));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v35.i64[0] = *(a4 + 600);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 600));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v336 = v23.i64[0];
  v337 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v23.f32 = vsub_f32(*v35.f32, *(a3 + 600));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v285 = vsqrt_f32(*v9.f32);
  v286 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v9.i64[0] = *(a4 + 608);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 608));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 608));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 616);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 616));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 616));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 624);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 624));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 624));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 632);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 632));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v338 = v6.i64[0];
  v339 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 632));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v287 = v9.i64[0];
  v288 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v9.i64[0] = *(a4 + 640);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 640));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 640));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 648);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 648));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 648));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 656);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 656));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 656));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 664);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 664));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v340 = v6.i64[0];
  v341 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 664));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v23.i64[0] = *(a4 + 672);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 672));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v289 = v9.i64[0];
  v290 = v6.i64[0];
  *v9.f32 = vsub_f32(*v23.f32, *(a3 + 672));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  *v23.f32 = vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32);
  v6.i64[0] = *(a4 + 680);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 680));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsqrt_f32(vzip1_s32(*v23.f32, vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 680));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32));
  v6.i64[0] = *(a4 + 688);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 688));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 688));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v35.i64[0] = *(a4 + 696);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 696));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v342 = v23.i64[0];
  v343 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v23.f32 = vsub_f32(*v35.f32, *(a3 + 696));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v291 = vsqrt_f32(*v9.f32);
  v292 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v9.i64[0] = *(a4 + 704);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 704));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 704));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 712);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 712));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 712));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 720);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 720));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 720));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 728);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 728));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v344 = v6.i64[0];
  v345 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 728));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v293 = v9.i64[0];
  v294 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v9.i64[0] = *(a4 + 736);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 736));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 736));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 744);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 744));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 744));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 752);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 752));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 752));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 760);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 760));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v346 = v6.i64[0];
  v347 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 760));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v23.i64[0] = *(a4 + 768);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 768));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v295 = v9.i64[0];
  v296 = v6.i64[0];
  *v9.f32 = vsub_f32(*v23.f32, *(a3 + 768));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  *v23.f32 = vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32);
  v6.i64[0] = *(a4 + 776);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 776));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsqrt_f32(vzip1_s32(*v23.f32, vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 776));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32));
  v6.i64[0] = *(a4 + 784);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 784));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 784));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v35.i64[0] = *(a4 + 792);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 792));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v348 = v23.i64[0];
  v349 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v23.f32 = vsub_f32(*v35.f32, *(a3 + 792));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v297 = vsqrt_f32(*v9.f32);
  v298 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v9.i64[0] = *(a4 + 800);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 800));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 800));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 808);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 808));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 808));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 816);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 816));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 816));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 824);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 824));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v350 = v6.i64[0];
  v351 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 824));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  v299 = v9.i64[0];
  v300 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v9.i64[0] = *(a4 + 832);
  *v6.f32 = vsub_f32(*v9.f32, *(a2 + 832));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vsub_f32(*v9.f32, *(a3 + 832));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  v23.i64[0] = *(a4 + 840);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 840));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32)));
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 840));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  *v9.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  v23.i64[0] = *(a4 + 848);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 848));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vsub_f32(*v23.f32, *(a3 + 848));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v35.i64[0] = *(a4 + 856);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 856));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  v352 = v6.i64[0];
  v353 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32)));
  *v6.f32 = vsub_f32(*v35.f32, *(a3 + 856));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v6.f32 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32)));
  v23.i64[0] = *(a4 + 864);
  *v30.f32 = vsub_f32(*v23.f32, *(a2 + 864));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v301 = v9.i64[0];
  v302 = v6.i64[0];
  *v9.f32 = vsub_f32(*v23.f32, *(a3 + 864));
  *v9.f32 = vmul_f32(*v9.f32, *v9.f32);
  *v23.f32 = vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32);
  v6.i64[0] = *(a4 + 872);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 872));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  *v23.f32 = vzip1_s32(*v23.f32, vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32));
  *v6.f32 = vsub_f32(*v6.f32, *(a3 + 872));
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v9.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v9.f32, 1), *v9.f32), vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32));
  v6.i64[0] = *(a4 + 880);
  *v30.f32 = vsub_f32(*v6.f32, *(a2 + 880));
  *v30.f32 = vmul_f32(*v30.f32, *v30.f32);
  v35.i64[0] = *(a4 + 888);
  *v38.f32 = vsub_f32(*v35.f32, *(a2 + 888));
  *v38.f32 = vmul_f32(*v38.f32, *v38.f32);
  *v30.f32 = vzip1_s32(vadd_f32(vdup_lane_s32(*v30.f32, 1), *v30.f32), vadd_f32(vdup_lane_s32(*v38.f32, 1), *v38.f32));
  v38.i64[0] = *(a3 + 880);
  v354 = vsqrt_f32(*v23.f32);
  v355 = vsqrt_f32(*v30.f32);
  *v6.f32 = vsub_f32(*v6.f32, *v38.f32);
  *v6.f32 = vmul_f32(*v6.f32, *v6.f32);
  *v23.f32 = vsub_f32(*v35.f32, *(a3 + 888));
  *v23.f32 = vmul_f32(*v23.f32, *v23.f32);
  v303 = vsqrt_f32(*v9.f32);
  v304 = vsqrt_f32(vzip1_s32(vadd_f32(vdup_lane_s32(*v6.f32, 1), *v6.f32), vadd_f32(vdup_lane_s32(*v23.f32, 1), *v23.f32)));
  common::utils::prctile<float>(v305, *(a1 + 25));
}

float gmoCoreAnalyticsTelemetry::setAnchorMoved(gmoCoreAnalyticsTelemetry *this, unint64_t a2)
{
  result = a2;
  this->_coreAnalyticsHomographyAzul.numAnchorMoved = a2;
  return result;
}

void gmoCoreAnalyticsTelemetry::setAnchorMovement(gmoCoreAnalyticsTelemetry *this, PDAnchors *a2, PDAnchors *a3)
{
  v3 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v4 = &a2->banks[0].anchors[7];
  v5 = &a3->banks[0].anchors[7];
  do
  {
    v6.i8[0] = v4[-7].x;
    v6.i8[1] = v4[-6].x;
    v6.i8[2] = v4[-5].x;
    v6.i8[3] = v4[-4].x;
    v6.i8[4] = v4[-3].x;
    v6.i8[5] = v4[-2].x;
    v6.i8[6] = v4[-1].x;
    v6.i8[7] = v4->x;
    v7.i8[0] = v5[-7].x;
    v7.i8[1] = v5[-6].x;
    v7.i8[2] = v5[-5].x;
    v7.i8[3] = v5[-4].x;
    v7.i8[4] = v5[-3].x;
    v7.i8[5] = v5[-2].x;
    v7.i8[6] = v5[-1].x;
    v8.i8[0] = v4[-7].y;
    v7.i8[7] = v5->x;
    v8.i8[1] = v4[-6].y;
    v8.i8[2] = v4[-5].y;
    v8.i8[3] = v4[-4].y;
    v8.i8[4] = v4[-3].y;
    v8.i8[5] = v4[-2].y;
    v9.i8[0] = v5[-7].y;
    v9.i8[1] = v5[-6].y;
    v9.i8[2] = v5[-5].y;
    v9.i8[3] = v5[-4].y;
    v9.i8[4] = v5[-3].y;
    v9.i8[5] = v5[-2].y;
    v8.i8[6] = v4[-1].y;
    v9.i8[6] = v5[-1].y;
    v10 = (v4[1].x - v5[1].x);
    v11 = (v4[1].y - v5[1].y);
    v8.i8[7] = v4->y;
    v9.i8[7] = v5->y;
    v12 = (v4[2].x - v5[2].x);
    v13 = (v4[2].y - v5[2].y);
    v14 = (v4[3].x - v5[3].x);
    v15 = (v10 * v10) + (v11 * v11);
    v16 = (v4[3].y - v5[3].y);
    v17 = (v12 * v12) + (v13 * v13);
    v18 = (v4[4].x - v5[4].x);
    v19 = (v4[4].y - v5[4].y);
    v20 = (v4[5].x - v5[5].x);
    v21 = sqrtf(v15);
    v22 = (v4[5].y - v5[5].y);
    v23 = v4[6].x - v5[6].x;
    v24 = &v35[v3];
    v24[2].i32[0] = v21;
    v24[2].i32[1] = sqrtf(v17);
    v25 = sqrtf((v18 * v18) + (v19 * v19));
    v26 = v23;
    v27 = sqrtf((v14 * v14) + (v16 * v16));
    v28 = (v4[6].y - v5[6].y);
    v24[2].i32[2] = v27;
    v24[2].i32[3] = v25;
    v24[3].i32[0] = sqrtf((v20 * v20) + (v22 * v22));
    v24[3].i32[1] = sqrtf((v26 * v26) + (v28 * v28));
    v29 = vsubl_s8(v6, v7);
    v30 = vsubl_s8(v8, v9);
    v31 = vcvtq_f32_s32(vmovl_s16(*v29.i8));
    v32 = vcvtq_f32_s32(vmovl_high_s16(v29));
    v33 = vcvtq_f32_s32(vmovl_high_s16(v30));
    v34 = vcvtq_f32_s32(vmovl_s16(*v30.i8));
    *v24 = vcvtq_u32_f32(vsqrtq_f32(vmlaq_f32(vmulq_f32(v31, v31), v34, v34)));
    v24[1] = vcvtq_u32_f32(vsqrtq_f32(vmlaq_f32(vmulq_f32(v32, v32), v33, v33)));
    v3 += 56;
    v4 += 14;
    v5 += 14;
  }

  while (v3 != 448);
  operator new();
}

void sub_2246D9638(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 gmoCoreAnalyticsTelemetry::loadDataFromPersistentDataLongTerm(gmoCoreAnalyticsTelemetry *this, CoreAnalyticsLongTermPersistentData *a2)
{
  this->_longTermEventPersistentData.homogDoneCount = a2->homogDoneCount;
  *&this->_longTermEventPersistentData.sessionCount = *&a2->sessionCount;
  v2 = *a2->calibErrP95Arr;
  v3 = *&a2->calibErrP95Arr[4];
  v4 = *&a2->calibErrP95Arr[8];
  *&this->_longTermEventPersistentData.calibErrP95Arr[12] = *&a2->calibErrP95Arr[12];
  *&this->_longTermEventPersistentData.calibErrP95Arr[8] = v4;
  *&this->_longTermEventPersistentData.calibErrP95Arr[4] = v3;
  *this->_longTermEventPersistentData.calibErrP95Arr = v2;
  v5 = *&a2->calibErrP95Arr[16];
  v6 = *&a2->calibErrP95Arr[20];
  v7 = *&a2->calibErrP95Arr[24];
  *&this->_longTermEventPersistentData.calibErrP95Arr[28] = *&a2->calibErrP95Arr[28];
  *&this->_longTermEventPersistentData.calibErrP95Arr[24] = v7;
  *&this->_longTermEventPersistentData.calibErrP95Arr[20] = v6;
  *&this->_longTermEventPersistentData.calibErrP95Arr[16] = v5;
  v8 = *&a2->calibErrP50Arr[20];
  v9 = *&a2->calibErrP50Arr[24];
  v10 = *&a2->calibErrP50Arr[16];
  *&this->_longTermEventPersistentData.calibErrP50Arr[28] = *&a2->calibErrP50Arr[28];
  *&this->_longTermEventPersistentData.calibErrP50Arr[20] = v8;
  *&this->_longTermEventPersistentData.calibErrP50Arr[24] = v9;
  *&this->_longTermEventPersistentData.calibErrP50Arr[16] = v10;
  result = *a2->calibErrP50Arr;
  v12 = *&a2->calibErrP50Arr[4];
  v13 = *&a2->calibErrP50Arr[12];
  *&this->_longTermEventPersistentData.calibErrP50Arr[8] = *&a2->calibErrP50Arr[8];
  *&this->_longTermEventPersistentData.calibErrP50Arr[12] = v13;
  *&this->_longTermEventPersistentData.calibErrP50Arr[4] = v12;
  *this->_longTermEventPersistentData.calibErrP50Arr = result;
  return result;
}

gmoCoreAnalyticsTelemetry *gmoCoreAnalyticsTelemetry::offloadDataToPersistentDataLongTerm(gmoCoreAnalyticsTelemetry *this, CoreAnalyticsLongTermPersistentData *__dst)
{
  v3 = *&this->_longTermEventPersistentData.lastEventYear;
  if (this->_isFireLongTermEvent)
  {
    __dst->calibErrP50Arr[29] = 0.0;
    *&__dst->calibErrP50Arr[21] = 0u;
    *&__dst->calibErrP50Arr[25] = 0u;
    *&__dst->calibErrP50Arr[13] = 0u;
    *&__dst->calibErrP50Arr[17] = 0u;
    *&__dst->calibErrP50Arr[5] = 0u;
    *&__dst->calibErrP50Arr[9] = 0u;
    *&__dst->calibErrP95Arr[27] = 0u;
    *&__dst->calibErrP50Arr[1] = 0u;
    *&__dst->calibErrP95Arr[19] = 0u;
    *&__dst->calibErrP95Arr[23] = 0u;
    *&__dst->calibErrP95Arr[11] = 0u;
    *&__dst->calibErrP95Arr[15] = 0u;
    *&__dst->calibErrP95Arr[3] = 0u;
    *&__dst->calibErrP95Arr[7] = 0u;
    *&__dst->sessionCount = 0u;
    *&__dst->homogDoneCount = 0u;
    this->_isFireLongTermEvent = 0;
  }

  else
  {
    this = memcpy(__dst, &this->_longTermEventPersistentData, sizeof(CoreAnalyticsLongTermPersistentData));
    ++__dst->sessionCount;
  }

  *&__dst->lastEventYear = v3;
  return this;
}

uint64_t peridot::PeridotSP::getPixelMask(_WORD *a1, int a2)
{
  result = 0;
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      switch(a2)
      {
        case 10:
          return (*a1 >> 5) & 1;
        case 11:
          return HIBYTE(*a1) & 1;
        case 12:
          return (*a1 >> 11) & 1;
      }
    }

    else if (a2 == 7)
    {
      return (*a1 >> 7) & 1;
    }

    else if (a2 == 8)
    {
      return (*a1 >> 10) & 1;
    }

    else
    {
      return (*a1 >> 2) & 1;
    }
  }

  else if (a2 > 3)
  {
    if (a2 == 4)
    {
      return (*a1 >> 9) & 1;
    }

    else if (a2 == 5)
    {
      return (*a1 >> 1) & 1;
    }

    else
    {
      return (*a1 >> 4) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return *a1 & 1;
      case 2:
        return (*a1 >> 3) & 1;
      case 3:
        return (*a1 >> 6) & 1;
    }
  }

  return result;
}

uint64_t peridot::PeridotSP::getMaskEn(unsigned __int8 *a1, int a2)
{
  result = 0;
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        return (*a1 >> 6) & 1;
      }

      else if (a2 == 5)
      {
        return (*a1 >> 1) & 1;
      }
    }

    else if (a2 == 1)
    {
      return *a1 & 1;
    }

    else if (a2 == 2)
    {
      return (*a1 >> 3) & 1;
    }
  }

  else if (a2 <= 8)
  {
    if (a2 == 6)
    {
      return (*a1 >> 4) & 1;
    }

    else if (a2 == 7)
    {
      return *a1 >> 7;
    }
  }

  else
  {
    switch(a2)
    {
      case 9:
        return (*a1 >> 2) & 1;
      case 10:
        return (*a1 >> 5) & 1;
      case 11:
        return a1[1] & 1;
    }
  }

  return result;
}

uint64_t peridot::PeridotSP::getMaskHp(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 11:
      return (*(a1 + 1) >> 3) & 1;
    case 7:
      return (*(a1 + 1) >> 2) & 1;
    case 3:
      return (*(a1 + 1) >> 1) & 1;
  }

  return 0;
}

uint64_t peridot::PeridotSP::getMaskHs1(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 5)
  {
    switch(a2)
    {
      case 6:
        return (*(a1 + 2) >> 4) & 1;
      case 9:
        return (*(a1 + 2) >> 2) & 1;
      case 10:
        return (*(a1 + 2) >> 5) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return *(a1 + 2) & 1;
      case 2:
        return (*(a1 + 2) >> 3) & 1;
      case 5:
        return (*(a1 + 2) >> 1) & 1;
    }
  }

  return result;
}

double peridot::HDUnfoldClass::HDUnfoldClass(peridot::HDUnfoldClass *this)
{
  *this = &unk_283809EC8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 11) = &unk_283809E68;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 16) = &unk_283809E68;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283809E68;
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 27) = &unk_283809E68;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 36) = 0;
  *(this + 31) = 0;
  *(this + 32) = &unk_283809E68;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 280) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *&result = 1;
  *(this + 43) = 1;
  *(this + 352) = 0;
  *(this + 45) = 0;
  *(this + 41) = &unk_28380A0A8;
  *(this + 42) = 0;
  return result;
}

{
  *this = &unk_283809EC8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 11) = &unk_283809E68;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 16) = &unk_283809E68;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283809E68;
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 192) = 0;
  *(this + 27) = &unk_283809E68;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 36) = 0;
  *(this + 31) = 0;
  *(this + 32) = &unk_283809E68;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 280) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *&result = 1;
  *(this + 43) = 1;
  *(this + 352) = 0;
  *(this + 45) = 0;
  *(this + 41) = &unk_28380A0A8;
  *(this + 42) = 0;
  return result;
}

void Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809E68;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<unsigned char>::~Matrix(uint64_t result)
{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void Matrix<unsigned long>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809EC8;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<unsigned long>::~Matrix(uint64_t result)
{
  *result = &unk_283809EC8;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void peridot::HDUnfoldClass::~HDUnfoldClass(peridot::HDUnfoldClass *this)
{
  *(this + 41) = &unk_283809D60;
  if (*(this + 42) && *(this + 352) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 42) = 0;
    *(this + 45) = 0;
    *(this + 352) = 0;
  }

  *(this + 43) = 0;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  *(this + 32) = &unk_283809E68;
  if (*(this + 33) && *(this + 280) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 33) = 0;
    *(this + 36) = 0;
    *(this + 280) = 0;
  }

  *(this + 34) = 0;
  *(this + 27) = &unk_283809E68;
  if (*(this + 28) && *(this + 240) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 28) = 0;
    *(this + 31) = 0;
    *(this + 240) = 0;
  }

  *(this + 29) = 0;
  *(this + 21) = &unk_283809E68;
  if (*(this + 22) && *(this + 192) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 22) = 0;
    *(this + 25) = 0;
    *(this + 192) = 0;
  }

  *(this + 23) = 0;
  *(this + 16) = &unk_283809E68;
  if (*(this + 17) && *(this + 152) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 17) = 0;
    *(this + 20) = 0;
    *(this + 152) = 0;
  }

  *(this + 18) = 0;
  *(this + 11) = &unk_283809E68;
  if (*(this + 12) && *(this + 112) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 12) = 0;
    *(this + 15) = 0;
    *(this + 112) = 0;
  }

  *(this + 13) = 0;
  *this = &unk_283809EC8;
  if (*(this + 1) && *(this + 24) == 1)
  {
    MEMORY[0x22AA53170]();
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 24) = 0;
  }

  *(this + 2) = 0;
}

uint64_t peridot::HDUnfoldClass::configure(peridot::HDUnfoldClass *this, const peridot::PeridotDXPCalib *a2)
{
  *(this + 14) = 1085276160;
  *(this + 72) = 2;
  *(this + 19) = 1058638150;
  *(this + 40) = 10;
  *(this + 8) = 15;
  *(this + 6) = 600;
  *(this + 47) = 8;
  *(this + 21) = 0x40000000;
  v2 = *(a2 + 856);
  v3 = round(0.000000153484441 / v2);
  if (v3 < 65535.0)
  {
    v4 = round(0.000000186850624 / v2);
    if (v4 < 65535.0)
    {
      *(this + 21) = v3;
      *(this + 20) = v4;
      operator new[]();
    }
  }

  peridot_depth_log("Wrong input in LSB configuration");
  return 4;
}

void sub_2246DA4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Matrix<unsigned long>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246DA4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::crtInit(peridot::HDUnfoldClass *this)
{
  v2 = *(this + 20);
  v3 = *(this + 17);
  if (v2 <= 2)
  {
    if (v3)
    {
      if (*(this + 152) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(this + 18) = 0x300000001;
  *(v3 + 2) = 1;
  *v3 = peridot::HDUnfoldClass::_Cd_data;
  operator new[]();
}

void sub_2246DB54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  operator delete(v24);
  if (__p)
  {
    operator delete(__p);
    if (a14)
    {
LABEL_7:
      operator delete(a14);
      if (!a11)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a14)
  {
    goto LABEL_7;
  }

  if (!a11)
  {
LABEL_9:
    Matrix<unsigned char>::~Matrix(va);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a11);
  goto LABEL_9;
}

void peridot::HDUnfoldClass::sDiffBLR::init(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v6 = (a1 + 8);
  if (v6 != a4)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  }

  v7 = *a3;
  v8 = *(a3 + 8) - *a3;
  v9 = v8 >> 2;
  v10 = v8 & 0x3FFFFFFFCLL;
  if ((v8 >> 2))
  {
    v11 = 0;
    v12 = 0;
    v13 = (v7 + v10);
    v14 = 0.0;
    do
    {
      v15 = *v7++;
      v16 = v15;
      if (v15 > v14)
      {
        v14 = v16;
        v12 = v11;
      }

      ++v11;
    }

    while (v7 < v13);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 72) = v12 / v9;
  *(a1 + 76) = v12 % v9;
  operator new[]();
}

void sub_2246DC3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a29);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a34);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a39);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a44);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a49);
  MatrixNxPts<1u,float>::~MatrixNxPts(va);
  MatrixNxPts<1u,float>::~MatrixNxPts(v53 - 224);
  MatrixNxPts<1u,float>::~MatrixNxPts(v53 - 184);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,unsigned char>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_283809E68;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8077774924);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t MatrixNxPts<1u,int>::~MatrixNxPts(uint64_t result)
{
  *result = &unk_283809E98;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void MatrixNxPts<1u,int>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809E98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void Matrix<int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809E98;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<int>::~Matrix(uint64_t result)
{
  *result = &unk_283809E98;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

int *std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(int *result, int *a2, unint64_t a3, char *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 2);
      v6 = *result;
      if (v5 > *result)
      {
        *result = v5;
        *(a2 - 2) = v6;
        v7 = result[1];
        result[1] = *(a2 - 1);
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a3 <= 0)
    {
      if (result != a2)
      {
        v16 = result + 2;
        if (result + 2 != a2)
        {
          v17 = 0;
          v18 = result;
          do
          {
            v20 = *v18;
            v18 = v16;
            if (*v16 > v20)
            {
              v22 = *v16;
              v21 = v16[1];
              v23 = v17;
              do
              {
                v24 = result + v23;
                v25 = *(result + v23 + 4);
                *(v24 + 2) = v20;
                *(v24 + 3) = v25;
                if (!v23)
                {
                  v19 = result;
                  goto LABEL_15;
                }

                v20 = *(v24 - 2);
                v23 -= 8;
              }

              while (v20 < v22);
              v19 = (result + v23 + 8);
LABEL_15:
              *v19 = v22;
              v19[1] = v21;
            }

            v16 = v18 + 2;
            v17 += 8;
          }

          while (v18 + 2 != a2);
        }
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = 8 * (a3 >> 1);
      v11 = a3 - (a3 >> 1);
      v12 = &result[v10 / 4];
      v13 = result;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v12, a3 >> 1, a4);
        v28 = &a4[8 * v9];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(&v13[v10], a2, v11, v28);
        v29 = -1;
        v30 = v13;
        v31 = a4;
        v32 = v28;
        v33 = &a4[8 * a3];
        do
        {
          ++v29;
          if (v32 == v33)
          {
            if (v31 == v28)
            {
              return result;
            }

            v46 = &a4[v10] - v31 - 8;
            if (v46 >= 0x78 && (v30 >= &v31[(v46 & 0xFFFFFFFFFFFFFFF8) + 8] || v31 >= &v13[8 * v29 + 8 + (v46 & 0xFFFFFFFFFFFFFFF8)]))
            {
              v47 = v30 + 32;
              v48 = (v46 >> 3) + 1;
              v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFF8);
              v30 += v49;
              v50 = (v31 + 32);
              v51 = v48 & 0x3FFFFFFFFFFFFFF8;
              do
              {
                v53 = *(v50 - 2);
                v52 = *(v50 - 1);
                v55 = *v50;
                v54 = v50[1];
                v50 += 4;
                *(v47 - 2) = v53;
                *(v47 - 1) = v52;
                *v47 = v55;
                v47[1] = v54;
                v47 += 4;
                v51 -= 8;
              }

              while (v51);
              if (v48 == (v48 & 0x3FFFFFFFFFFFFFF8))
              {
                return result;
              }

              v31 += v49;
            }

            do
            {
              *v30 = *v31;
              *(v30 + 1) = *(v31 + 1);
              v31 += 8;
              v30 += 8;
            }

            while (v31 != v28);
            return result;
          }

          v34 = *v32;
          if (*v32 > *v31)
          {
            v35 = v32;
          }

          else
          {
            v34 = *v31;
            v35 = v31;
          }

          if (*v32 <= *v31)
          {
            v31 += 8;
          }

          else
          {
            v32 += 8;
          }

          *v30 = v34;
          *(v30 + 1) = *(v35 + 1);
          v30 += 8;
        }

        while (v31 != v28);
        if (v32 == v33)
        {
          return result;
        }

        v36 = v33 - v32 - 8;
        if (v36 <= 0x77 || v30 < &v32[(v36 & 0xFFFFFFFFFFFFFFF8) + 8] && v32 < &v13[8 * v29 + 16 + (v36 & 0xFFFFFFFFFFFFFFF8)])
        {
          goto LABEL_39;
        }

        v37 = v30 + 32;
        v38 = (v36 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFF8);
        v30 += v39;
        v40 = (v32 + 32);
        v41 = v38 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v43 = *(v40 - 2);
          v42 = *(v40 - 1);
          v45 = *v40;
          v44 = v40[1];
          v40 += 4;
          *(v37 - 2) = v43;
          *(v37 - 1) = v42;
          *v37 = v45;
          v37[1] = v44;
          v37 += 4;
          v41 -= 8;
        }

        while (v41);
        if (v38 != (v38 & 0x3FFFFFFFFFFFFFF8))
        {
          v32 += v39;
          do
          {
LABEL_39:
            *v30 = *v32;
            *(v30 + 1) = *(v32 + 1);
            v32 += 8;
            v30 += 8;
          }

          while (v32 != v33);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v12, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(&v13[v10], a2, v11, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v13, &v13[v10], a2, v9, v11, a4, a5);
      }
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(int *result, int *a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_10:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v5 = *(a2 - 2);
      v4 = a2 - 2;
      v6 = v5 <= *result;
      if (v5 <= *result)
      {
        v7 = result;
      }

      else
      {
        v7 = v4;
      }

      *a4 = *v7;
      a4 += 8;
      if (v6)
      {
        result = v4;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v18 = a3 >> 1;
      v19 = 2 * (a3 >> 1);
      v20 = &result[v19];
      v21 = result;
      v24 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, &result[v19], v18, a4, v18);
      result = std::__stable_sort<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v20, a2, a3 - v18, &v24[v19 * 4], a3 - v18);
      v25 = -1;
      v26 = v24;
      v27 = v20;
      do
      {
        ++v25;
        if (v27 == a2)
        {
          if (v21 == v20)
          {
            return result;
          }

          v42 = v20 - v21 - 8;
          if (v42 >= 0x38 && (&v24[8 * v25] - v21) >= 0x20)
          {
            v43 = v26 + 2;
            v44 = (v42 >> 3) + 1;
            v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
            v26 = (v26 + v45);
            v46 = (v21 + 4);
            v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = *v46;
              *(v43 - 1) = *(v46 - 1);
              *v43 = v48;
              v46 += 2;
              v43 += 2;
              v47 -= 4;
            }

            while (v47);
            if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v21 = (v21 + v45);
          }

          do
          {
            v49 = *v21;
            v21 += 2;
            *v26++ = v49;
          }

          while (v21 != v20);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = v29 <= *v21;
        v31 = v29 > *v21;
        if (v30)
        {
          v32 = v21;
        }

        else
        {
          v32 = v28;
        }

        v33 = 2 * v31;
        v27 = &v28[v33];
        v21 += 2 * v30;
        *v26++ = *v32;
      }

      while (v21 != v20);
      if (v27 == a2)
      {
        return result;
      }

      v34 = a2 - &v28[v33] - 8;
      if (v34 < 0x58 || (&v24[8 * v25] - &v28[v33] + 8) < 0x20)
      {
        goto LABEL_38;
      }

      v35 = v26 + 2;
      v36 = (v34 >> 3) + 1;
      v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFFCLL);
      v26 = (v26 + v37);
      v38 = &v28[v33 + 4];
      v39 = v36 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v40 = *v38;
        *(v35 - 1) = *(v38 - 1);
        *v35 = v40;
        v38 += 8;
        v35 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v27 = (v27 + v37);
        do
        {
LABEL_38:
          v41 = *v27;
          v27 += 2;
          *v26++ = v41;
        }

        while (v27 != a2);
      }
    }

    else if (result != a2)
    {
      v8 = result + 2;
      *a4 = *result;
      if (result + 2 != a2)
      {
        v9 = 0;
        v10 = a4;
        v11 = a4;
        do
        {
          v12 = v8;
          v13 = *v11;
          v11 += 8;
          if (*v8 <= v13)
          {
            *v11 = *v8;
          }

          else
          {
            *(v10 + 1) = *v10;
            v14 = a4;
            if (v10 != a4)
            {
              v15 = v9;
              while (1)
              {
                v14 = &a4[v15];
                v16 = *&a4[v15 - 8];
                if (*v12 <= v16)
                {
                  break;
                }

                v17 = *(v14 - 1);
                *v14 = v16;
                *(v14 + 1) = v17;
                v15 -= 8;
                if (!v15)
                {
                  v14 = a4;
                  break;
                }
              }
            }

            *v14 = *v12;
            *(v14 + 1) = result[3];
          }

          v8 = v12 + 2;
          v9 += 8;
          v10 = v11;
          result = v12;
        }

        while (v12 + 2 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = *a2;
    while (1)
    {
      v10 = *result;
      if (v9 > *result)
      {
        break;
      }

      result += 8;
      if (!--a4)
      {
        return result;
      }
    }

    if (a4 >= a5)
    {
      if (a4 == 1)
      {
        *result = v9;
        *a2 = v10;
        v71 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v71;
        return result;
      }

      v19 = a4 / 2;
      v13 = &result[8 * (a4 / 2)];
      v12 = a2;
      if (a2 != a3)
      {
        v20 = (a3 - a2) >> 3;
        v12 = a2;
        do
        {
          v21 = v20 >> 1;
          v22 = &v12[8 * (v20 >> 1)];
          v24 = *v22;
          v23 = v22 + 8;
          v20 += ~(v20 >> 1);
          if (v24 > *v13)
          {
            v12 = v23;
          }

          else
          {
            v20 = v21;
          }
        }

        while (v20);
      }

      v11 = (v12 - a2) >> 3;
    }

    else
    {
      v11 = a5 / 2;
      v12 = &a2[8 * (a5 / 2)];
      v13 = a2;
      if (a2 != result)
      {
        v14 = (a2 - result) >> 3;
        v13 = result;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[8 * (v14 >> 1)];
          v18 = *v16;
          v17 = v16 + 8;
          v14 += ~(v14 >> 1);
          if (*v12 > v18)
          {
            v14 = v15;
          }

          else
          {
            v13 = v17;
          }
        }

        while (v14);
      }

      v19 = (v13 - result) >> 3;
    }

    v25 = v12;
    if (a2 != v13)
    {
      v25 = v13;
      if (a2 != v12)
      {
        v26 = *v13;
        *v13 = v9;
        *a2 = v26;
        v27 = *(v13 + 1);
        *(v13 + 1) = *(a2 + 1);
        *(a2 + 1) = v27;
        v25 = v13 + 8;
        for (i = a2 + 8; i != v12; i += 8)
        {
          if (v25 == a2)
          {
            a2 = i;
          }

          v29 = *v25;
          *v25 = *i;
          *i = v29;
          v30 = *(v25 + 1);
          *(v25 + 1) = *(i + 1);
          *(i + 1) = v30;
          v25 += 8;
        }

        if (v25 != a2)
        {
          v31 = v25;
          v32 = a2;
          while (1)
          {
            v33 = *v31;
            *v31 = *v32;
            *v32 = v33;
            v34 = *(v31 + 1);
            *(v31 + 1) = *(v32 + 1);
            *(v32 + 1) = v34;
            v31 += 8;
            v32 += 8;
            v35 = v31 == a2;
            if (v32 == v12)
            {
              if (v31 == a2)
              {
                break;
              }

              v32 = a2 + 8;
              while (1)
              {
                v36 = *v31;
                *v31 = *a2;
                *a2 = v36;
                v37 = *(v31 + 1);
                *(v31 + 1) = *(a2 + 1);
                *(a2 + 1) = v37;
                v31 += 8;
                v35 = v31 == a2;
                if (v32 != v12)
                {
                  break;
                }

                if (v31 == a2)
                {
                  goto LABEL_40;
                }
              }
            }

            if (v35)
            {
              a2 = v32;
            }
          }
        }
      }
    }

LABEL_40:
    v38 = a4 - v19;
    v39 = a5 - v11;
    if (v19 + v11 >= v38 + v39)
    {
      v45 = result;
      std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(v25, v12, a3, v38, v39, a6, a7);
      result = v45;
      a2 = v13;
      a5 = v11;
      a4 = v19;
      a3 = v25;
      if (!v11)
      {
        return result;
      }
    }

    else
    {
      v40 = v13;
      v41 = a3;
      v42 = v38;
      v43 = v19;
      v44 = v39;
      std::__inplace_merge<std::_ClassicAlgPolicy,void Algo::SortWithIndex<int,unsigned char>(std::vector<int> const&,BOOL,std::vector<int>&,std::vector<unsigned char> &)::{lambda(std::pair<int,int> const&,std::pair<int,int> const&)#1} &,std::__wrap_iter<std::pair<int,unsigned int> *>>(result, v40, v25, v43, v11, a6, a7);
      a4 = v42;
      a5 = v44;
      a3 = v41;
      result = v25;
      a2 = v12;
      if (!v44)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 == result)
    {
      return result;
    }

    v55 = a2 - result - 8;
    v56 = a6;
    v57 = result;
    if (v55 >= 0x18)
    {
      v56 = a6;
      v57 = result;
      if ((a6 - result) > 0x1F)
      {
        v58 = (v55 >> 3) + 1;
        v59 = 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
        v56 = (a6 + v59);
        v60 = result + 16;
        v61 = (a6 + 16);
        v62 = v58 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v63 = *v60;
          *(v61 - 1) = *(v60 - 1);
          *v61 = v63;
          v60 += 32;
          v61 += 2;
          v62 -= 4;
        }

        while (v62);
        if (v58 == (v58 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_61;
        }

        v57 = &result[v59];
      }
    }

    do
    {
      v64 = *v57;
      v57 += 8;
      *v56 = v64;
      v56 += 8;
    }

    while (v57 != a2);
LABEL_61:
    v65 = v56 - 8;
    v66 = 0;
    v67 = result;
    v68 = a6;
    while (a2 != a3)
    {
      v69 = *a2;
      if (*a2 > *v68)
      {
        v70 = a2;
      }

      else
      {
        v69 = *v68;
        v70 = v68;
      }

      if (*a2 > *v68)
      {
        a2 += 8;
      }

      else
      {
        v68 += 8;
      }

      *v67 = v69;
      *(v67 + 1) = *(v70 + 1);
      v67 += 8;
      ++v66;
      if (v68 == v56)
      {
        return result;
      }
    }

    v72 = (v55 & 0xFFFFFFFFFFFFFFF8) + a6 - v68;
    if (v72 >= 0x78 && (v67 >= &v68[(v72 & 0xFFFFFFFFFFFFFFF8) + 8] || v68 >= &result[8 * v66 + 8 + (v72 & 0xFFFFFFFFFFFFFFF8)]))
    {
      v74 = (v72 >> 3) + 1;
      v75 = v67 + 32;
      v76 = 8 * (v74 & 0x3FFFFFFFFFFFFFF8);
      v67 += v76;
      v77 = (v68 + 32);
      v78 = v74 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v80 = *(v77 - 2);
        v79 = *(v77 - 1);
        v82 = *v77;
        v81 = v77[1];
        v77 += 4;
        *(v75 - 2) = v80;
        *(v75 - 1) = v79;
        *v75 = v82;
        v75[1] = v81;
        v75 += 4;
        v78 -= 8;
      }

      while (v78);
      if (v74 == (v74 & 0x3FFFFFFFFFFFFFF8))
      {
        return result;
      }

      v68 += v76;
    }

    do
    {
      *v67 = *v68;
      *(v67 + 1) = *(v68 + 1);
      v67 += 8;
      v83 = v68 == v65;
      v68 += 8;
    }

    while (!v83);
    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v46 = a3 - a2 - 8;
  if (v46 < 0x18)
  {
    v47 = a6;
    v48 = a2;
  }

  else
  {
    v47 = a6;
    v48 = a2;
    if ((a6 - a2) > 0x1F)
    {
      v49 = (v46 >> 3) + 1;
      v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
      v47 = (a6 + v50);
      v51 = a2 + 16;
      v52 = (a6 + 16);
      v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v54 = *v51;
        *(v52 - 1) = *(v51 - 1);
        *v52 = v54;
        v51 += 32;
        v52 += 2;
        v53 -= 4;
      }

      while (v53);
      if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_87;
      }

      v48 = &a2[v50];
    }
  }

  do
  {
    v84 = *v48;
    v48 += 8;
    *v47++ = v84;
  }

  while (v48 != a3);
LABEL_87:
  v85 = 0;
  v86 = a3;
  while (a2 != result)
  {
    v87 = *(v47 - 2);
    v88 = *(a2 - 2);
    v89 = v87 <= v88;
    if (v87 >= v88)
    {
      v87 = *(a2 - 2);
    }

    *(v86 - 2) = v87;
    v86 -= 8;
    if (v89)
    {
      v90 = v47;
    }

    else
    {
      v90 = a2;
    }

    if (v89)
    {
      --v47;
    }

    else
    {
      a2 -= 8;
    }

    *(v86 + 1) = *(v90 - 1);
    ++v85;
    if (v47 == a6)
    {
      return result;
    }
  }

  if (v47 != a6)
  {
    v91 = v47 - a6 - 8;
    if (v91 < 0x58 || ((v92 = v91 >> 3, &a3[-8 * v85 - 8 + -8 * v92] < v47) ? (v93 = &v47[-v92 - 1] >= v86) : (v93 = 1), !v93))
    {
      v95 = v47;
LABEL_111:
      v100 = v86 - 4;
      do
      {
        v101 = *(v95-- - 2);
        *(v100 - 1) = v101;
        *v100 = *(v95 + 1);
        v100 -= 8;
      }

      while (v95 != a6);
      return result;
    }

    v94 = v92 + 1;
    v95 = &v47[-(v94 & 0x3FFFFFFFFFFFFFFCLL)];
    v96 = 0x1FFFFFFFFFFFFFFCLL;
    v97 = v94 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v98 = *&v47[v96 + 2];
      v99 = &v86[v96 * 8];
      *v99 = *&v47[v96];
      *(v99 + 1) = v98;
      v96 -= 4;
      v97 -= 4;
    }

    while (v97);
    if (v94 != (v94 & 0x3FFFFFFFFFFFFFFCLL))
    {
      v86 -= 8 * (v94 & 0x3FFFFFFFFFFFFFFCLL);
      goto LABEL_111;
    }
  }

  return result;
}

void MatrixNxPts<1u,unsigned char>::~MatrixNxPts(uint64_t a1)
{
  *a1 = &unk_283809E68;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8077774924);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t peridot::HDUnfoldClass::paramsDefault(uint64_t this)
{
  *(this + 56) = 1085276160;
  *(this + 72) = 2;
  *(this + 76) = 1058638150;
  *(this + 80) = 10;
  *(this + 64) = 15;
  *(this + 48) = 600;
  *(this + 376) = 8;
  *(this + 84) = 0x40000000;
  return this;
}

uint64_t peridot::HDUnfoldClass::setParams(uint64_t this, __int16 a2, __int16 a3, float a4, char a5, char a6)
{
  *(this + 42) = a2;
  *(this + 40) = a3;
  *(this + 56) = a4;
  *(this + 72) = a5;
  *(this + 73) = a6;
  return this;
}

float peridot::HDUnfoldClass::sDiffBLR::remnantFunc(peridot::HDUnfoldClass::sDiffBLR *this, float a2)
{
  v2 = (a2 + 1.0) + *(this + 19);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 13) + -1.0) < v2)
  {
    v2 = *(this + 13) + -1.0;
  }

  return *(*(this + 5) + 4 * v2);
}

void peridot::HDUnfoldClass::HDunfold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v3;
  __src[514] = *MEMORY[0x277D85DE8];
  v19 = 0.0;
  bzero(__src, 0x1010uLL);
  *v17 = 0;
  peridot::HDUnfoldClass::crtUnfold(v14, v13, v9 + 168, v11, __src, &v19, v18, &v17[1], v17);
  LOBYTE(v11) = v17[0];
  peridot::HDUnfoldClass::calcConf(v14, v15, __src, v16, v9 + 144, (v9 + 168), v9, *(v9 + 184), v19, v17[0], v7, v5);
  *(v7 + 235) = v17[1];
  *(v7 + 236) = v11;
}

uint16x4_t *peridot::HDUnfoldClass::crtUnfold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3);
  v321 = v13;
  v322 = v14;
  v324 = v15;
  v16 = 0;
  v419 = *MEMORY[0x277D85DE8];
  v339 = &unk_283809CC0;
  v340 = v417;
  v341 = 0x1B00000003;
  v342 = 0;
  v343 = 162;
  v17.f64[0] = 0.0;
  v344 = 0;
  memset(v417, 0, sizeof(v417));
  v418 = 0;
  v333 = &unk_283809CC0;
  v334 = v415;
  v335 = 0x1B00000003;
  v336 = 0;
  v337 = 162;
  v338 = 0;
  memset(v415, 0, sizeof(v415));
  v416 = 0;
  v329 = v9;
  v330 = v18;
  v320 = v19;
  *v19 = *(v9 + 56);
  v408[0] = *v18;
  v20 = v18[36];
  v408[1] = v20;
  v21 = v18[72];
  v408[2] = v21;
  v409 = v18[12];
  v22 = v18[48];
  v410 = v22;
  v23 = v18[84];
  v411 = v23;
  v24 = v18[24];
  v412 = v24;
  v25 = v18[60];
  v413 = v25;
  v26 = v18[96];
  v414 = v26;
  if (v408[0] <= 0)
  {
    v27 = v409 > 0;
  }

  else
  {
    v27 = (v409 > 0) + 1;
  }

  if (v24 > 0)
  {
    ++v27;
  }

  v407[0] = v27;
  if (v20 <= 0)
  {
    v28 = v22 > 0;
  }

  else
  {
    v28 = (v22 > 0) + 1;
  }

  if (v25 > 0)
  {
    ++v28;
  }

  v407[1] = v28;
  if (v21 <= 0)
  {
    v29 = v23 > 0;
  }

  else
  {
    v29 = (v23 > 0) + 1;
  }

  if (v26 > 0)
  {
    ++v29;
  }

  v407[2] = v29;
  v323 = v11;
  *v11 = (v27 | v28 | v29) > 1;
  v30 = (v28 + v27 + v29) > 3;
  v31 = 1;
  if (v30)
  {
    v31 = 2;
  }

  *v10 = v31;
  v389 = &unk_283809E68;
  v390 = &v404;
  v391 = 0x900000002;
  v392 = 0;
  v393 = 18;
  v394 = &unk_283809E68;
  v395 = &v405;
  v396 = 0x900000002;
  v397 = 0;
  v398 = 18;
  v399 = &unk_283809E68;
  v400 = &v406;
  v401 = 0x900000002;
  v402 = 0;
  v403 = 18;
  v386 = 0;
  v387 = 0;
  *(v388 + 7) = 0;
  v388[0] = 0;
  v371 = &unk_283809E68;
  v372 = &v386;
  v373 = 0x900000001;
  v374 = 0;
  v375 = 9;
  v376 = &unk_283809E68;
  v377 = &v387 + 1;
  v378 = 0x900000001;
  v379 = 0;
  v380 = 9;
  v381 = &unk_283809E68;
  v382 = v388 + 2;
  v383 = 0x900000001;
  v385 = 9;
  v384 = 0;
  do
  {
    v32 = *(v329 + 96);
    v33 = *(v32 + v16);
    v34 = v407[v33 - 1];
    if (v34 >= 1)
    {
      v35 = *(v32 + *(v329 + 108) + v16);
      v36 = v407[v35 - 1];
      if (v36 >= 1)
      {
        v37 = 3 * v34;
        if (v37 >= v33)
        {
          v39 = 0;
          do
          {
            v364[v39] = v33;
            LODWORD(v33) = v33 + 3;
            ++v39;
          }

          while (v37 >= v33);
          v38 = v39;
        }

        else
        {
          v38 = 0;
        }

        v40 = 3 * v36;
        if (3 * v36 >= v35)
        {
          v42 = 0;
          do
          {
            *(&v357 + v42) = v35;
            LODWORD(v35) = v35 + 3;
            ++v42;
          }

          while (v40 >= v35);
          v41 = v42;
        }

        else
        {
          v41 = 0;
        }

        v43 = v41 * v38;
        v44 = &v389 + 5 * v16;
        if (v44[4] < 2 * v43)
        {
          if (v44[1])
          {
            if (*(v44 + 24) == 1)
            {
              MEMORY[0x22AA53170]();
            }
          }

          operator new[]();
        }

        *(v44 + 4) = 2;
        *(v44 + 5) = v43;
        if (v43)
        {
          v45 = 0;
          do
          {
            *(v44[1] + v45) = v364[v45 % v38];
            *(v44[1] + v45 + *(v44 + 5)) = *(&v357 + v45 / v38);
            ++v45;
          }

          while (v43 > v45);
        }

        v46 = &v371 + 5 * v16;
        if (v46[4] < v43)
        {
          if (v46[1] && *(v46 + 24) == 1)
          {
            MEMORY[0x22AA53170]();
          }

          operator new[]();
        }

        *(v46 + 4) = 1;
        *(v46 + 5) = v43;
        if (v43)
        {
          v47 = v46[1];
          v48 = &v47[v43];
          if (&v47[v43] <= v47 + 1)
          {
            v48 = v47 + 1;
          }

          memset(v47, 1, v48 - v47);
        }
      }
    }

    ++v16;
  }

  while (v16 != 3);
  v49 = 0;
  v50 = 0;
  v325 = (v321 + 4053);
  v51 = v330;
  do
  {
    v52 = &v371 + 5 * v49;
    v53 = *(v52 + 5);
    v54 = v53 * *(v52 + 4);
    if (v54 < 1)
    {
      goto LABEL_50;
    }

    v55 = v52[1];
    v56 = v55->u64 + v54;
    if (v56 <= v55->u64 + 1)
    {
      v57 = &v55->u8[1];
    }

    else
    {
      v57 = v56;
    }

    v58 = v57 - v55;
    if (v58 < 8)
    {
      v59 = 0.0;
      goto LABEL_69;
    }

    if (v58 >= 0x20)
    {
      v327 = v50;
      v61 = 0uLL;
      v62 = v58 & 0xFFFFFFFFFFFFFFE0;
      v63 = 0uLL;
      v64 = v55 + 1;
      v65 = 0uLL;
      v326 = v58 & 0xFFFFFFFFFFFFFFE0;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      do
      {
        v79 = v64[-1];
        v80 = vextq_s8(v79, v79, 8uLL).u64[0];
        v81.i32[0] = v80.u8[0];
        v81.i32[1] = v80.u8[1];
        v82 = v80.u8[3];
        v83 = v80.u8[4];
        v84 = v80.u8[5];
        v85 = v80.u8[6];
        v86 = v80.u8[7];
        v80.i32[0] = v80.u8[2];
        v80.i32[1] = v82;
        v87 = vand_s8(v80, 0xFF000000FFLL);
        v88 = v79.u8[0];
        v89 = v79.u8[1];
        v90 = v79.u8[2];
        v91 = v79.u8[3];
        v92 = v79.u8[4];
        v93 = v79.u8[5];
        v94.i64[0] = v87.u32[0];
        v94.i64[1] = v87.u32[1];
        v95 = v79.u8[6];
        v96 = v79.u8[7];
        v97 = vextq_s8(*v64, *v64, 8uLL).u64[0];
        v98 = vcvtq_f64_u64(v94);
        v99 = vand_s8(__PAIR64__(v86, v85), 0xFF000000FFLL);
        v94.i64[0] = v99.u32[0];
        v94.i64[1] = v99.u32[1];
        v70 = vaddq_f64(v70, vcvtq_f64_u64(v94));
        v100 = vand_s8(__PAIR64__(v84, v83), 0xFF000000FFLL);
        v94.i64[0] = v100.u32[0];
        v94.i64[1] = v100.u32[1];
        v69 = vaddq_f64(v69, vcvtq_f64_u64(v94));
        v68 = vaddq_f64(v68, v98);
        v101 = vand_s8(v81, 0xFF000000FFLL);
        v94.i64[0] = v101.u32[0];
        v94.i64[1] = v101.u32[1];
        v67 = vaddq_f64(v67, vcvtq_f64_u64(v94));
        v102 = vand_s8(__PAIR64__(v96, v95), 0xFF000000FFLL);
        v94.i64[0] = v102.u32[0];
        v94.i64[1] = v102.u32[1];
        v66 = vaddq_f64(v66, vcvtq_f64_u64(v94));
        v103 = vand_s8(__PAIR64__(v93, v92), 0xFF000000FFLL);
        v94.i64[0] = v103.u32[0];
        v94.i64[1] = v103.u32[1];
        v65 = vaddq_f64(v65, vcvtq_f64_u64(v94));
        v103.i32[0] = BYTE2(v97);
        v103.i32[1] = BYTE3(v97);
        v104 = vand_s8(__PAIR64__(v91, v90), 0xFF000000FFLL);
        v94.i64[0] = v104.u32[0];
        v94.i64[1] = v104.u32[1];
        v63 = vaddq_f64(v63, vcvtq_f64_u64(v94));
        v105 = vand_s8(__PAIR64__(v89, v88), 0xFF000000FFLL);
        v94.i64[0] = v105.u32[0];
        v94.i64[1] = v105.u32[1];
        v61 = vaddq_f64(v61, vcvtq_f64_u64(v94));
        v105.i32[0] = BYTE6(v97);
        v105.i32[1] = HIBYTE(v97);
        v106 = vand_s8(v105, 0xFF000000FFLL);
        v94.i64[0] = v106.u32[0];
        v94.i64[1] = v106.u32[1];
        v78 = vaddq_f64(v78, vcvtq_f64_u64(v94));
        v106.i32[0] = BYTE4(v97);
        v106.i32[1] = BYTE5(v97);
        v107 = vand_s8(v106, 0xFF000000FFLL);
        v94.i64[0] = v107.u32[0];
        v94.i64[1] = v107.u32[1];
        v77 = vaddq_f64(v77, vcvtq_f64_u64(v94));
        v108 = vand_s8(v103, 0xFF000000FFLL);
        v94.i64[0] = v108.u32[0];
        v94.i64[1] = v108.u32[1];
        v76 = vaddq_f64(v76, vcvtq_f64_u64(v94));
        v108.i32[0] = v97;
        v108.i32[1] = BYTE1(v97);
        v109 = vand_s8(v108, 0xFF000000FFLL);
        v94.i64[0] = v109.u32[0];
        v94.i64[1] = v109.u32[1];
        v75 = vaddq_f64(v75, vcvtq_f64_u64(v94));
        v109.i32[0] = BYTE6(v64->i64[0]);
        v109.i32[1] = HIBYTE(v64->i64[0]);
        v110 = vand_s8(v109, 0xFF000000FFLL);
        v94.i64[0] = v110.u32[0];
        v94.i64[1] = v110.u32[1];
        v74 = vaddq_f64(v74, vcvtq_f64_u64(v94));
        v110.i32[0] = BYTE4(v64->i64[0]);
        v110.i32[1] = (WORD2(v64->i64[0]) >> 8);
        v111 = vand_s8(v110, 0xFF000000FFLL);
        v94.i64[0] = v111.u32[0];
        v94.i64[1] = v111.u32[1];
        v73 = vaddq_f64(v73, vcvtq_f64_u64(v94));
        v111.i32[0] = BYTE2(v64->u32[0]);
        v111.i32[1] = HIBYTE(v64->u32[0]);
        v112 = vand_s8(v111, 0xFF000000FFLL);
        v94.i64[0] = v112.u32[0];
        v94.i64[1] = v112.u32[1];
        v72 = vaddq_f64(v72, vcvtq_f64_u64(v94));
        v112.i32[0] = v64->u8[0];
        v112.i32[1] = HIBYTE(v64->u16[0]);
        v113 = vand_s8(v112, 0xFF000000FFLL);
        v94.i64[0] = v113.u32[0];
        v94.i64[1] = v113.u32[1];
        v71 = vaddq_f64(v71, vcvtq_f64_u64(v94));
        v64 += 2;
        v62 -= 32;
      }

      while (v62);
      v12 = vaddq_f64(v75, v67);
      v17 = vaddq_f64(vaddq_f64(vaddq_f64(v72, v63), vaddq_f64(v76, v68)), vaddq_f64(vaddq_f64(v74, v66), vaddq_f64(v78, v70)));
      v114 = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v71, v61), v12), vaddq_f64(vaddq_f64(v73, v65), vaddq_f64(v77, v69))), v17);
      v59 = vaddvq_f64(v114);
      v60 = v58 & 0xFFFFFFFFFFFFFFE0;
      if (v58 == v326)
      {
        v51 = v330;
        v50 = v327;
        goto LABEL_70;
      }

      v51 = v330;
      v50 = v327;
      if ((v58 & 0x18) == 0)
      {
        v55 = (v55 + v326);
        do
        {
LABEL_69:
          v134 = v55->u8[0];
          v55 = (v55 + 1);
          v114.f64[0] = v134;
          v59 = v59 + v134;
        }

        while (v55 < v56);
        goto LABEL_70;
      }
    }

    else
    {
      v60 = 0;
      v59 = 0.0;
    }

    v115 = v58 & 0xFFFFFFFFFFFFFFF8;
    v116 = 0uLL;
    v117 = *&v59;
    v118 = v60 - (v58 & 0xFFFFFFFFFFFFFFF8);
    v119 = &v55->u8[v60];
    v120 = 0uLL;
    v12 = 0uLL;
    do
    {
      v121 = *v119;
      v119 += 8;
      v122.i32[0] = v121;
      v122.i32[1] = BYTE1(v121);
      v123 = vand_s8(v122, 0xFF000000FFLL);
      v124.i64[0] = v123.u32[0];
      v124.i64[1] = v123.u32[1];
      v125 = vcvtq_f64_u64(v124);
      v126.i32[0] = BYTE2(v121);
      v126.i32[1] = BYTE3(v121);
      v127 = vand_s8(v126, 0xFF000000FFLL);
      v124.i64[0] = v127.u32[0];
      v124.i64[1] = v127.u32[1];
      v128 = vcvtq_f64_u64(v124);
      v129.i32[0] = BYTE4(v121);
      v129.i32[1] = BYTE5(v121);
      v130 = vand_s8(v129, 0xFF000000FFLL);
      v124.i64[0] = v130.u32[0];
      v124.i64[1] = v130.u32[1];
      v131 = vcvtq_f64_u64(v124);
      v132.i32[0] = BYTE6(v121);
      v132.i32[1] = HIBYTE(v121);
      v133 = vand_s8(v132, 0xFF000000FFLL);
      v124.i64[0] = v133.u32[0];
      v124.i64[1] = v133.u32[1];
      v12 = vaddq_f64(v12, vcvtq_f64_u64(v124));
      v120 = vaddq_f64(v120, v131);
      v116 = vaddq_f64(v116, v128);
      v117 = vaddq_f64(v117, v125);
      v118 += 8;
    }

    while (v118);
    v17 = vaddq_f64(v117, v120);
    v114 = vaddq_f64(v17, vaddq_f64(v116, v12));
    v59 = vaddvq_f64(v114);
    if (v58 != v115)
    {
      v55 = (v55 + v115);
      goto LABEL_69;
    }

LABEL_70:
    v135 = v59;
    if (v59)
    {
      v328 = v49;
      v136 = &v389 + 5 * v49;
      v137 = *(v136 + 4);
      v357 = &unk_283809CC0;
      if (v137 * v135)
      {
        operator new[]();
      }

      v358 = 0;
      v359 = v137;
      v360 = v59;
      v361 = 0;
      v362 = 2 * v137 * v135;
      if ((v53 & 0x80000000) == 0)
      {
        v138 = 0;
        LODWORD(v139) = -1;
        do
        {
          v140 = 2 * v138;
          if (v53 <= v139 + 1)
          {
            v141 = v139 + 1;
          }

          else
          {
            v141 = v53;
          }

          v142 = v141 - 1;
          do
          {
            if (v142 == v139)
            {
              goto LABEL_85;
            }

            v139 = (v139 + 1);
          }

          while (!*(v52[1] + v139));
          if (v137)
          {
            v143 = 0;
            v144 = 0;
            v145 = *(v136 + 5);
            do
            {
              v146 = *(v136[1] + v139 + v143) - 1;
              *(v358 + v140) = v408[3 * (v146 / 3) + v146 % 3];
              ++v144;
              v140 += 2 * v59;
              v143 += v145;
            }

            while (v137 > v144);
          }

          ++v138;
        }

        while (v139 < v53);
      }

LABEL_85:
      v353[0] = &unk_283809CC0;
      v353[1] = &v370;
      v353[2] = 0x900000002;
      v354 = 0;
      v355 = 36;
      v369 = 0;
      v368 = 0;
      v349[0] = &unk_283809CC0;
      v349[1] = &v367;
      v349[2] = 0x300000002;
      v350 = 0;
      v351 = 12;
      *&v345 = &unk_283809C90;
      *(&v345 + 1) = &v332;
      *&v346 = 0x300000001;
      BYTE8(v346) = 0;
      *&v347 = 3;
      peridot::HDUnfoldClass::crtUnfold2PRI(v329, v328, &v357, v324, v322, v353, &v368, v349, v114.f64[0], v17.f64[0], *&v59, *v12.f64, &v345, v323);
    }

LABEL_50:
    ++v49;
  }

  while (v49 != 3);
  v147 = HIDWORD(v344);
  if (HIDWORD(v344))
  {
    v148 = v340;
    v149 = HIDWORD(v341);
    if (HIDWORD(v344) < 4)
    {
      v150 = 0;
      goto LABEL_89;
    }

    v150 = 0;
    v153 = HIDWORD(v344) - 1;
    v154 = (BYTE4(v344) - 1);
    if (v154 == 255 || v153 > 0xFF)
    {
      goto LABEL_89;
    }

    if (HIDWORD(v344) < 0x10)
    {
      v155 = 0;
      goto LABEL_101;
    }

    v155 = WORD2(v344) & 0x1F0;
    v156 = v340 + 2;
    v157 = v365;
    v158 = WORD2(v344) & 0x1F0;
    do
    {
      v159 = *v156[-2].i8;
      v160 = *v156->i8;
      v161 = vmovl_u16(*v159.i8);
      *&v162 = v161.u32[0];
      *(&v162 + 1) = v161.u32[1];
      v163 = v162;
      *&v162 = v161.u32[2];
      *(&v162 + 1) = v161.u32[3];
      v164 = v162;
      v165 = vmovl_high_u16(v159);
      *&v162 = v165.u32[0];
      *(&v162 + 1) = v165.u32[1];
      v166 = v162;
      *&v162 = v165.u32[2];
      *(&v162 + 1) = v165.u32[3];
      v167 = v162;
      v168 = vmovl_u16(*v156);
      *&v162 = v168.u32[0];
      *(&v162 + 1) = v168.u32[1];
      v169 = v162;
      *&v162 = v168.u32[2];
      *(&v162 + 1) = v168.u32[3];
      v170 = v162;
      *(v157 - 2) = v166;
      *(v157 - 1) = v167;
      v171 = vmovl_high_u16(v160);
      *&v162 = v171.u32[0];
      *(&v162 + 1) = v171.u32[1];
      v172 = v162;
      *(v157 - 4) = v163;
      *(v157 - 3) = v164;
      *&v162 = v171.u32[2];
      *(&v162 + 1) = v171.u32[3];
      v157[2] = v172;
      v157[3] = v162;
      *v157 = v169;
      v157[1] = v170;
      v157 += 8;
      v156 += 4;
      v158 -= 16;
    }

    while (v158);
    if (v147 == v155)
    {
LABEL_104:
      v151 = v148 + 2 * v149;
    }

    else
    {
      if ((v147 & 0xC) != 0)
      {
LABEL_101:
        v150 = v147 & 0x1FC;
        do
        {
          v173 = vmovl_u16(*(v148 + 2 * (v155 & 0xFC)));
          *&v174 = v173.u32[0];
          *(&v174 + 1) = v173.u32[1];
          v175 = v174;
          *&v174 = v173.u32[2];
          *(&v174 + 1) = v173.u32[3];
          v176 = &v364[8 * (v155 & 0xFC)];
          *v176 = v175;
          v176[1] = v174;
          v155 += 4;
        }

        while (v150 != v155);
        if (v147 != v150)
        {
          goto LABEL_89;
        }

        goto LABEL_104;
      }

      v150 = v147 & 0x1F0;
      do
      {
LABEL_89:
        *&v364[8 * v150] = v148->u16[v150];
        ++v150;
      }

      while (v147 > v150);
      v151 = v148 + 2 * v149;
      if (v147 < 4)
      {
        v152 = 0;
        goto LABEL_118;
      }

      v153 = v147 - 1;
      v154 = (v147 - 1);
    }

    v152 = 0;
    if (v154 == 255 || v153 > 0xFF)
    {
      goto LABEL_118;
    }

    if (v147 < 0x10)
    {
      v177 = 0;
      goto LABEL_113;
    }

    v178 = 0;
    v177 = v147 & 0x1F0;
    do
    {
      v179 = &v151[2 * (v178 & 0xF0)];
      v180 = *(v179 + 1);
      v181 = vmovl_u16(*v179);
      *&v182 = v181.u32[2];
      *(&v182 + 1) = v181.u32[3];
      v183 = v182;
      v184 = vmovl_high_u16(*v179);
      *&v182 = v184.u32[0];
      *(&v182 + 1) = v184.u32[1];
      v185 = v182;
      *&v182 = v184.u32[2];
      *(&v182 + 1) = v184.u32[3];
      v186 = v182;
      *&v182 = v181.u32[0];
      *(&v182 + 1) = v181.u32[1];
      v187 = v182;
      v188 = vmovl_u16(*v180.i8);
      *&v182 = v188.u32[0];
      *(&v182 + 1) = v188.u32[1];
      v189 = v182;
      *&v182 = v188.u32[2];
      *(&v182 + 1) = v188.u32[3];
      v190 = v182;
      v191 = &v364[8 * (v178 & 0xF0)];
      *(v191 + 216) = v187;
      v191 = (v191 + 216);
      v192 = vmovl_high_u16(v180);
      *&v182 = v192.u32[2];
      *(&v182 + 1) = v192.u32[3];
      v193 = v182;
      v191[1] = v183;
      v191[2] = v185;
      *&v182 = v192.u32[0];
      *(&v182 + 1) = v192.u32[1];
      v191[6] = v182;
      v191[7] = v193;
      v191[4] = v189;
      v191[5] = v190;
      v191[3] = v186;
      v178 += 16;
    }

    while (v177 != v178);
    if (v147 == v177)
    {
LABEL_116:
      v198 = v148 + 2 * (2 * v149);
    }

    else
    {
      if ((v147 & 0xC) != 0)
      {
LABEL_113:
        v152 = v147 & 0x1FC;
        do
        {
          v194 = vmovl_u16(*&v151[2 * (v177 & 0xFC)]);
          *&v195 = v194.u32[0];
          *(&v195 + 1) = v194.u32[1];
          v196 = v195;
          *&v195 = v194.u32[2];
          *(&v195 + 1) = v194.u32[3];
          v197 = &v364[8 * (v177 & 0xFC)];
          *(v197 + 232) = v195;
          *(v197 + 216) = v196;
          v177 += 4;
        }

        while (v152 != v177);
        if (v147 != v152)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      v152 = v147 & 0x1F0;
      do
      {
LABEL_118:
        *&v365[8 * v152 + 152] = *&v151[2 * v152];
        ++v152;
      }

      while (v147 > v152);
      v198 = v148 + 2 * (2 * v149);
      if (v147 < 4)
      {
        v199 = 0;
        goto LABEL_135;
      }

      v153 = v147 - 1;
      v154 = (v147 - 1);
    }

    v199 = 0;
    if (v154 == 255 || v153 > 0xFF)
    {
      goto LABEL_234;
    }

    if (v147 < 0x10)
    {
      v200 = 0;
      goto LABEL_130;
    }

    v201 = 0;
    v200 = v147 & 0x1F0;
    do
    {
      v202 = &v198[2 * (v201 & 0xF0)];
      v203 = *(v202 + 1);
      v204 = vmovl_u16(*v202);
      *&v205 = v204.u32[0];
      *(&v205 + 1) = v204.u32[1];
      v206 = v205;
      *&v205 = v204.u32[2];
      *(&v205 + 1) = v204.u32[3];
      v207 = v205;
      v208 = vmovl_high_u16(*v202);
      *&v205 = v208.u32[0];
      *(&v205 + 1) = v208.u32[1];
      v209 = v205;
      *&v205 = v208.u32[2];
      *(&v205 + 1) = v208.u32[3];
      v210 = v205;
      v211 = vmovl_u16(*v203.i8);
      *&v205 = v211.u32[0];
      *(&v205 + 1) = v211.u32[1];
      v212 = v205;
      *&v205 = v211.u32[2];
      *(&v205 + 1) = v211.u32[3];
      v213 = v205;
      v214 = &v364[8 * (v201 & 0xF0)];
      v214[29] = v209;
      v214[30] = v210;
      v215 = vmovl_high_u16(v203);
      *&v205 = v215.u32[0];
      *(&v205 + 1) = v215.u32[1];
      v216 = v205;
      v214[27] = v206;
      v214[28] = v207;
      *&v205 = v215.u32[2];
      *(&v205 + 1) = v215.u32[3];
      v214[33] = v216;
      v214[34] = v205;
      v214[31] = v212;
      v214[32] = v213;
      v201 += 16;
    }

    while (v200 != v201);
    if (v147 != v200)
    {
      if ((v147 & 0xC) == 0)
      {
        v199 = v147 & 0x1F0;
        goto LABEL_135;
      }

LABEL_130:
      v199 = v147 & 0x1FC;
      do
      {
        v217 = vmovl_u16(*&v198[2 * (v200 & 0xFC)]);
        *&v218 = v217.u32[0];
        *(&v218 + 1) = v217.u32[1];
        v219 = v218;
        *&v218 = v217.u32[2];
        *(&v218 + 1) = v217.u32[3];
        v220 = &v364[8 * (v200 & 0xFC)];
        *(v220 + 27) = v219;
        *(v220 + 28) = v218;
        v200 += 4;
      }

      while (v199 != v200);
      if (v147 != v199)
      {
LABEL_234:
        do
        {
LABEL_135:
          *&v365[8 * v199 + 368] = *&v198[2 * v199];
          ++v199;
        }

        while (v147 > v199);
      }
    }
  }

  v221 = HIDWORD(v338);
  if (HIDWORD(v338))
  {
    v222 = v334;
    v223 = HIDWORD(v335);
    if (HIDWORD(v338) < 4)
    {
      v224 = 0;
      goto LABEL_139;
    }

    v224 = 0;
    v227 = HIDWORD(v338) - 1;
    v228 = (BYTE4(v338) - 1);
    if (v228 == 255 || v227 > 0xFF)
    {
      goto LABEL_139;
    }

    if (HIDWORD(v338) < 0x10)
    {
      v229 = 0;
      goto LABEL_151;
    }

    v229 = WORD2(v338) & 0x1F0;
    v230 = v334 + 2;
    v231 = v363;
    v232 = WORD2(v338) & 0x1F0;
    do
    {
      v233 = *v230[-2].i8;
      v234 = *v230->i8;
      v235 = vmovl_u16(*v233.i8);
      *&v236 = v235.u32[0];
      *(&v236 + 1) = v235.u32[1];
      v237 = v236;
      *&v236 = v235.u32[2];
      *(&v236 + 1) = v235.u32[3];
      v238 = v236;
      v239 = vmovl_high_u16(v233);
      *&v236 = v239.u32[0];
      *(&v236 + 1) = v239.u32[1];
      v240 = v236;
      *&v236 = v239.u32[2];
      *(&v236 + 1) = v239.u32[3];
      v241 = v236;
      v242 = vmovl_u16(*v230);
      *&v236 = v242.u32[0];
      *(&v236 + 1) = v242.u32[1];
      v243 = v236;
      *&v236 = v242.u32[2];
      *(&v236 + 1) = v242.u32[3];
      v244 = v236;
      *(v231 - 2) = v240;
      *(v231 - 1) = v241;
      v245 = vmovl_high_u16(v234);
      *&v236 = v245.u32[0];
      *(&v236 + 1) = v245.u32[1];
      v246 = v236;
      *(v231 - 4) = v237;
      *(v231 - 3) = v238;
      *&v236 = v245.u32[2];
      *(&v236 + 1) = v245.u32[3];
      v231[2] = v246;
      v231[3] = v236;
      *v231 = v243;
      v231[1] = v244;
      v231 += 8;
      v230 += 4;
      v232 -= 16;
    }

    while (v232);
    if (v221 == v229)
    {
LABEL_154:
      v225 = v222 + 2 * v223;
    }

    else
    {
      if ((v221 & 0xC) != 0)
      {
LABEL_151:
        v224 = v221 & 0x1FC;
        do
        {
          v247 = vmovl_u16(*(v222 + 2 * (v229 & 0xFC)));
          *&v248 = v247.u32[0];
          *(&v248 + 1) = v247.u32[1];
          v249 = v248;
          *&v248 = v247.u32[2];
          *(&v248 + 1) = v247.u32[3];
          v250 = &v357 + (v229 & 0xFC);
          *v250 = v249;
          *(v250 + 1) = v248;
          v229 += 4;
        }

        while (v224 != v229);
        if (v221 != v224)
        {
          goto LABEL_139;
        }

        goto LABEL_154;
      }

      v224 = v221 & 0x1F0;
      do
      {
LABEL_139:
        *(&v357 + v224) = v222->u16[v224];
        ++v224;
      }

      while (v221 > v224);
      v225 = v222 + 2 * v223;
      if (v221 < 4)
      {
        v226 = 0;
        goto LABEL_168;
      }

      v227 = v221 - 1;
      v228 = (v221 - 1);
    }

    v226 = 0;
    if (v228 == 255 || v227 > 0xFF)
    {
      goto LABEL_168;
    }

    if (v221 < 0x10)
    {
      v251 = 0;
      goto LABEL_163;
    }

    v252 = 0;
    v251 = v221 & 0x1F0;
    do
    {
      v253 = &v225[2 * (v252 & 0xF0)];
      v254 = *(v253 + 1);
      v255 = vmovl_u16(*v253);
      *&v256 = v255.u32[2];
      *(&v256 + 1) = v255.u32[3];
      v257 = v256;
      v258 = vmovl_high_u16(*v253);
      *&v256 = v258.u32[0];
      *(&v256 + 1) = v258.u32[1];
      v259 = v256;
      *&v256 = v258.u32[2];
      *(&v256 + 1) = v258.u32[3];
      v260 = v256;
      *&v256 = v255.u32[0];
      *(&v256 + 1) = v255.u32[1];
      v261 = v256;
      v262 = vmovl_u16(*v254.i8);
      *&v256 = v262.u32[0];
      *(&v256 + 1) = v262.u32[1];
      v263 = v256;
      *&v256 = v262.u32[2];
      *(&v256 + 1) = v262.u32[3];
      v264 = v256;
      v265 = &v357 + (v252 & 0xF0);
      *(v265 + 27) = v261;
      v265 += 27;
      v266 = vmovl_high_u16(v254);
      *&v256 = v266.u32[2];
      *(&v256 + 1) = v266.u32[3];
      v267 = v256;
      *(v265 + 1) = v257;
      *(v265 + 2) = v259;
      *&v256 = v266.u32[0];
      *(&v256 + 1) = v266.u32[1];
      *(v265 + 6) = v256;
      *(v265 + 7) = v267;
      *(v265 + 4) = v263;
      *(v265 + 5) = v264;
      *(v265 + 3) = v260;
      v252 += 16;
    }

    while (v251 != v252);
    if (v221 == v251)
    {
LABEL_166:
      v272 = v222 + 2 * (2 * v223);
    }

    else
    {
      if ((v221 & 0xC) != 0)
      {
LABEL_163:
        v226 = v221 & 0x1FC;
        do
        {
          v268 = vmovl_u16(*&v225[2 * (v251 & 0xFC)]);
          *&v269 = v268.u32[0];
          *(&v269 + 1) = v268.u32[1];
          v270 = v269;
          *&v269 = v268.u32[2];
          *(&v269 + 1) = v268.u32[3];
          v271 = &v357 + (v251 & 0xFC);
          *(v271 + 29) = v269;
          *(v271 + 27) = v270;
          v251 += 4;
        }

        while (v226 != v251);
        if (v221 != v226)
        {
          goto LABEL_168;
        }

        goto LABEL_166;
      }

      v226 = v221 & 0x1F0;
      do
      {
LABEL_168:
        *&v363[8 * v226 + 152] = *&v225[2 * v226];
        ++v226;
      }

      while (v221 > v226);
      v272 = v222 + 2 * (2 * v223);
      if (v221 < 4)
      {
        v273 = 0;
        goto LABEL_185;
      }

      v227 = v221 - 1;
      v228 = (v221 - 1);
    }

    v273 = 0;
    if (v228 == 255 || v227 > 0xFF)
    {
      goto LABEL_235;
    }

    if (v221 < 0x10)
    {
      v274 = 0;
      goto LABEL_180;
    }

    v275 = 0;
    v274 = v221 & 0x1F0;
    do
    {
      v276 = &v272[2 * (v275 & 0xF0)];
      v277 = *(v276 + 1);
      v278 = vmovl_u16(*v276);
      *&v279 = v278.u32[0];
      *(&v279 + 1) = v278.u32[1];
      v280 = v279;
      *&v279 = v278.u32[2];
      *(&v279 + 1) = v278.u32[3];
      v281 = v279;
      v282 = vmovl_high_u16(*v276);
      *&v279 = v282.u32[0];
      *(&v279 + 1) = v282.u32[1];
      v283 = v279;
      *&v279 = v282.u32[2];
      *(&v279 + 1) = v282.u32[3];
      v284 = v279;
      v285 = vmovl_u16(*v277.i8);
      *&v279 = v285.u32[0];
      *(&v279 + 1) = v285.u32[1];
      v286 = v279;
      *&v279 = v285.u32[2];
      *(&v279 + 1) = v285.u32[3];
      v287 = v279;
      v288 = &v357 + (v275 & 0xF0);
      *(v288 + 29) = v283;
      *(v288 + 30) = v284;
      v289 = vmovl_high_u16(v277);
      *&v279 = v289.u32[0];
      *(&v279 + 1) = v289.u32[1];
      v290 = v279;
      *(v288 + 27) = v280;
      *(v288 + 28) = v281;
      *&v279 = v289.u32[2];
      *(&v279 + 1) = v289.u32[3];
      *(v288 + 33) = v290;
      *(v288 + 34) = v279;
      *(v288 + 31) = v286;
      *(v288 + 32) = v287;
      v275 += 16;
    }

    while (v274 != v275);
    if (v221 != v274)
    {
      if ((v221 & 0xC) == 0)
      {
        v273 = v221 & 0x1F0;
        goto LABEL_185;
      }

LABEL_180:
      v273 = v221 & 0x1FC;
      do
      {
        v291 = vmovl_u16(*&v272[2 * (v274 & 0xFC)]);
        *&v292 = v291.u32[0];
        *(&v292 + 1) = v291.u32[1];
        v293 = v292;
        *&v292 = v291.u32[2];
        *(&v292 + 1) = v291.u32[3];
        v294 = &v357 + (v274 & 0xFC);
        *(v294 + 27) = v293;
        *(v294 + 28) = v292;
        v274 += 4;
      }

      while (v273 != v274);
      if (v221 != v273)
      {
LABEL_235:
        do
        {
LABEL_185:
          *&v363[8 * v273 + 368] = *&v272[2 * v273];
          ++v273;
        }

        while (v221 > v273);
      }
    }
  }

  bzero(v353, 0x288uLL);
  bzero(v349, 0x288uLL);
  memset(v348, 0, 33);
  v347 = 0u;
  v346 = 0u;
  v345 = 0u;
  *&v366[8] = 0;
  *v366 = 0;
  *&v366[23] = 0;
  *&v366[16] = 0;
  LOBYTE(v331) = 0;
  peridot::HDUnfoldClass::twoTargetLogic(v329, v51, v364, &v357, v325, v147, v320, v324, a9, v353, v349, v366, &v345, &v331);
  *(v321 + 4080) = 0;
  v295 = v331;
  if (v331)
  {
    v296 = 0;
    v297 = 0;
    *v325 = *v366;
    v298 = 1944;
    *(v321 + 4064) = *&v366[11];
    v299 = v321;
    do
    {
      *v299 = v353[v296];
      *(v321 + v296 + 3972) = *(&v345 + v296);
      v300 = v349[v296];
      if (v300)
      {
        v301 = &v51[36 * ((v300 - 1) % 3uLL) + 12 * ((v300 - 1) / 3uLL)];
        v299[81] = *v301;
        v302 = v321 + 4 * v296;
        *(v302 + 1296) = *(v301 + 8);
        *(v302 + 1620) = *(v301 + 12);
        v303 = (v321 + v298);
        *v303 = *(v301 + 16);
        v303[81] = *(v301 + 20);
        v303[162] = *(v301 + 24);
        *(v321 + v296 + 2916) = *(v301 + 40);
        v303[264] = *(v301 + 28);
        v303[345] = *(v301 + 32);
        v303[426] = *(v301 + 36);
        ++v297;
      }

      ++v296;
      ++v299;
      v298 += 4;
    }

    while (v295 != v296);
    v304 = 0;
    v305 = 0;
    *(v321 + 4088) = v297;
    v306 = 2052;
    do
    {
      *(v321 + 8 * v304 + 216) = v356[v304];
      *(v321 + v304 + 3999) = *(&v346 + v304 + 11);
      v307 = v352[v304];
      if (v307)
      {
        v308 = &v51[36 * ((v307 - 1) % 3uLL) + 12 * ((v307 - 1) / 3uLL)];
        *(v321 + 8 * v304 + 864) = *v308;
        v309 = v321 + 4 * v304;
        *(v309 + 1404) = *(v308 + 8);
        *(v309 + 1728) = *(v308 + 12);
        v310 = (v321 + v306);
        *v310 = *(v308 + 16);
        v310[81] = *(v308 + 20);
        v310[162] = *(v308 + 24);
        *(v321 + v304 + 2943) = *(v308 + 40);
        v310[264] = *(v308 + 28);
        v310[345] = *(v308 + 32);
        v310[426] = *(v308 + 36);
        ++v305;
      }

      ++v304;
      v306 += 4;
    }

    while (v295 != v304);
    v311 = 0;
    v312 = 0;
    *(v321 + 4096) = v305;
    v313 = 2160;
    do
    {
      *(v321 + 8 * v311 + 432) = v356[v311 + 27];
      *(v321 + v311 + 4026) = v348[v311 + 6];
      v314 = v352[v311 + 27];
      if (v314)
      {
        v315 = &v51[36 * ((v314 - 1) % 3uLL) + 12 * ((v314 - 1) / 3uLL)];
        *(v321 + 8 * v311 + 1080) = *v315;
        v316 = v321 + 4 * v311;
        *(v316 + 1512) = *(v315 + 8);
        *(v316 + 1836) = *(v315 + 12);
        v317 = (v321 + v313);
        *v317 = *(v315 + 16);
        v317[81] = *(v315 + 20);
        v317[162] = *(v315 + 24);
        *(v321 + v311 + 2970) = *(v315 + 40);
        v317[264] = *(v315 + 28);
        v317[345] = *(v315 + 32);
        v317[426] = *(v315 + 36);
        ++v312;
      }

      ++v311;
      v313 += 4;
    }

    while (v295 != v311);
    if (v305 <= v297)
    {
      v318 = v297;
    }

    else
    {
      v318 = v305;
    }

    if (v312 > v318)
    {
      v318 = v312;
    }

    *(v321 + 4104) = v312;
    *(v321 + 4080) = v318;
  }

  v381 = &unk_283809E68;
  if (v382 && v384 == 1)
  {
    MEMORY[0x22AA53170]();
    v382 = 0;
    v385 = 0;
    v384 = 0;
  }

  v383 = 0;
  v376 = &unk_283809E68;
  if (v377 && v379 == 1)
  {
    MEMORY[0x22AA53170]();
    v377 = 0;
    v380 = 0;
    v379 = 0;
  }

  v378 = 0;
  v371 = &unk_283809E68;
  if (v372 && v374 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v399 = &unk_283809E68;
  if (v400 && v402 == 1)
  {
    MEMORY[0x22AA53170]();
    v400 = 0;
    v403 = 0;
    v402 = 0;
  }

  v401 = 0;
  v394 = &unk_283809E68;
  if (v395 && v397 == 1)
  {
    MEMORY[0x22AA53170]();
    v395 = 0;
    v398 = 0;
    v397 = 0;
  }

  v396 = 0;
  v389 = &unk_283809E68;
  if (v390 && v392 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v333 = &unk_283809CC0;
  if (v334 && v336 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v339 = &unk_283809CC0;
  result = v340;
  if (v340 && v342 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_2246E1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27[23] = v26;
  if (v27[24] && LOBYTE(STACK[0xE30]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[24] = 0;
    v27[27] = 0;
    LOBYTE(STACK[0xE30]) = 0;
  }

  v27[25] = 0;
  v27[18] = v25;
  if (v27[19] && LOBYTE(STACK[0xE08]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[19] = 0;
    v27[22] = 0;
    LOBYTE(STACK[0xE08]) = 0;
  }

  v27[20] = 0;
  v27[13] = v24;
  if (v27[14] && LOBYTE(STACK[0xDE0]) == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v27[42] = a22;
  if (v27[43] && LOBYTE(STACK[0xEC8]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[43] = 0;
    v27[46] = 0;
    LOBYTE(STACK[0xEC8]) = 0;
  }

  v27[44] = 0;
  v27[37] = a23;
  if (v27[38] && LOBYTE(STACK[0xEA0]) == 1)
  {
    MEMORY[0x22AA53170]();
    v27[38] = 0;
    v27[41] = 0;
    LOBYTE(STACK[0xEA0]) = 0;
  }

  v27[39] = 0;
  v27[32] = a24;
  if (v27[33])
  {
    if (LOBYTE(STACK[0xE78]) == 1)
    {
      MEMORY[0x22AA53170]();
    }
  }

  peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(&STACK[0x250]);
  peridot::sMatrixOversized<unsigned short,3u,27u>::~sMatrixOversized(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::calcConf(uint64_t a1, uint64_t a2, void *__src, int a4, uint64_t a5, float *a6, void **a7, uint64_t a8, float a9, char a10, uint64_t a11, uint64_t a12)
{
  __dst[81] = *MEMORY[0x277D85DE8];
  v12 = __src[510];
  if (!v12)
  {
    return;
  }

  if (v12 >= 3)
  {
    v13 = "HDUnfoldClass: Unfolded targets confidence calculation supports up to two targets.\n";
LABEL_55:

    peridot_depth_log(v13, a2);
    return;
  }

  v19 = *__src != 0;
  if (__src[27])
  {
    ++v19;
  }

  if (__src[54])
  {
    ++v19;
  }

  if (v12 != 1)
  {
    v40 = __src[1] != 0;
    if (__src[28])
    {
      ++v40;
    }

    if (__src[55])
    {
      ++v40;
    }

    if (v40 >= 2 && v19 >= 2)
    {
      goto LABEL_10;
    }

LABEL_54:
    v13 = "HDUnfoldClass: Unfolded targets must have at least 2 detected (non-zero) bins.\n";
    goto LABEL_55;
  }

  if (v19 <= 1)
  {
    goto LABEL_54;
  }

LABEL_10:
  memcpy(__dst, __src, 0x288uLL);
  memcpy(v134, __src + 243, sizeof(v134));
  memcpy(v133, __src + 324, sizeof(v133));
  memcpy(v132, __src + 375, sizeof(v132));
  memcpy(v131, __src + 3324, sizeof(v131));
  memcpy(v130, __src + 456, sizeof(v130));
  v21 = 0;
  v22 = *(__src + 4020);
  v128[1] = *(__src + 4004);
  v128[2] = v22;
  v128[3] = *(__src + 4036);
  v129 = *(__src + 4052);
  v23 = *(__src + 3988);
  *&v127[57] = *(__src + 3972);
  v128[0] = v23;
  v112 = a7;
  v111 = a6;
  do
  {
    v24 = &__src[v21];
    v25 = *v24;
    v26 = v24[27];
    v27 = v24[54];
    if (v27)
    {
      v28 = v26 == 0;
    }

    else
    {
      v28 = 2;
    }

    if (v27)
    {
      v29 = v26 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v25 != 0)
    {
      goto LABEL_12;
    }

    v31 = a6[v28];
    if (v28)
    {
      v122 = roundf((v25 - *a6) + v31);
      v32 = &v123;
      v33 = 1;
    }

    else
    {
      v33 = 0;
      v32 = &v122;
    }

    if (v27)
    {
      v34 = v26 == 0;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      goto LABEL_33;
    }

    *v32 = roundf((v26 - a6[1]) + v31);
    if (v27)
    {
      ++v33;
LABEL_33:
      *(&v122 + v33) = roundf((v27 - a6[2]) + v31);
    }

    v35 = v122;
    if (v122 >= v123)
    {
      v36 = v122;
    }

    else
    {
      v36 = v123;
    }

    LOBYTE(v20) = *(a1 + 72);
    v20 = LODWORD(v20);
    v37 = v36 - v20;
    v38 = v37;
    if (v123 < v122)
    {
      v35 = v123;
    }

    v39 = (v35 + v20);
    v125[1] = 0;
    v125[2] = 0;
    if (v38 <= v39)
    {
      operator new();
    }

    v125[0] = 0;
    if (*(__src + v21 + 4053))
    {
      v121[0] = 0.0;
      LODWORD(v120[0]) = 0;
      v119[0] = 0.0;
      v126[0] = 0;
      a6 = v111;
      peridot::HDUnfoldClass::diffBLRprocess(a1, v112, v28, v111, a5, v125, a8, __srca, v121, v120, v119, v126);
      *&v133[108 * v28 + 4 * v21] = v121[0];
      *&v132[108 * v28 + 4 * v21] = v120[0];
      *&v131[108 * v28 + 4 * v21] = v119[0];
      __dst[27 * v28 + v21] = v126[0] + v38;
    }

    else
    {
      if (v28 >= (v112[2][1] - *v112[2]) >> 3)
      {
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      if (v28 >= (v112[4][1] - *v112[4]) >> 3)
      {
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      a6 = v111;
    }

    v12 = __src[510];
LABEL_12:
    ++v21;
  }

  while (v21 < v12);
  memset(v120, 0, 108);
  if (v12)
  {
    v42 = &v130[108];
    v43 = *(a1 + 64);
    v44 = &v132[108];
    v45 = v127;
    v46 = v128 + 11;
    v47 = v12;
    while (1)
    {
      v55 = *(v42 - 27);
      v56 = v55 <= v43 && (*(v46 - 27) & 1) == 0 && *(v44 - 27) > 0.0;
      if (*v42 <= v43 && (*v46 & 1) == 0 && *v44 > 0.0)
      {
        ++v56;
      }

      v57 = v42[27];
      v58 = v46[27];
      if (v57 <= v43 && (v46[27] & 1) == 0)
      {
        v58 = 0;
        if (v44[27] > 0.0)
        {
          ++v56;
        }
      }

      v48 = v57 > v43;
      v49 = *v42 > v43;
      v50 = v55 > v43;
      v51 = v56 > 1;
      if (v56 <= 1)
      {
        v50 = 0;
      }

      *(v45 - 27) = *(v46 - 27) | v50;
      v53 = *v46++;
      v52 = v53;
      if (!v51)
      {
        v49 = 0;
      }

      v54 = v52 | v49;
      if (!v51)
      {
        v48 = 0;
      }

      ++v42;
      *v45 = v54;
      v45[27] = (v58 | v48) & 1;
      ++v44;
      ++v45;
      if (!--v47)
      {
        v59 = 0;
        v113 = *(a1 + 76);
        v60 = v127;
        v61 = &__dst[27];
        v62 = &v122;
        v63 = 1.0;
        v64 = 0.707106781;
        v65 = 0.5;
        v66 = v12;
        while (1)
        {
          v71 = *&v131[v59];
          if (*(v60 - 27))
          {
            v72 = 0.0;
          }

          else
          {
            v72 = v63;
          }

          v73 = *&v132[v59] * v72;
          *(v125 + v59) = v73;
          v74 = v72 * v71;
          if (v73 <= 0.0)
          {
            v75 = 0.0;
          }

          else
          {
            v75 = v63;
          }

          if (v73 == 0.0)
          {
            v76 = v63;
          }

          else
          {
            v76 = 0.0;
          }

          v77 = v75 / (v76 + v73);
          if (*v60)
          {
            v78 = 0.0;
          }

          else
          {
            v78 = v63;
          }

          v79 = v78 * *&v131[v59 + 108];
          v80 = *&v132[v59 + 108] * v78;
          v81 = (&v125[27] + v59);
          *(&v125[13] + v59 + 4) = v80;
          if (v80 <= 0.0)
          {
            v82 = 0.0;
          }

          else
          {
            v82 = v63;
          }

          if (v80 == 0.0)
          {
            v83 = v63;
          }

          else
          {
            v83 = 0.0;
          }

          v84 = v82 / (v83 + v80);
          v85 = v60[27];
          if (v85)
          {
            v86 = 0.0;
          }

          else
          {
            v86 = v63;
          }

          v87 = v86 * *&v131[v59 + 216];
          v88 = a9;
          v89 = *&v132[v59 + 216] * v86;
          *v81 = v89;
          if (v89 <= 0.0)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = v63;
          }

          if (v89 == 0.0)
          {
            v91 = v63;
          }

          else
          {
            v91 = 0.0;
          }

          v92 = v90 / (v91 + v89);
          v93 = v63 / (v92 + (v84 + v77));
          v94 = v77 * v93;
          v95 = *&v133[v59];
          v96 = v84 * v93;
          v97 = (*(v120 + v59) + (v74 * v94)) + (v79 * v96);
          v98 = (v73 * (v94 * v94)) + (v80 * (v96 * v96));
          v99 = *&v133[v59 + 108];
          v100 = (v95 * (v94 * v94)) + (v99 * (v96 * v96));
          v101 = v97 + (v87 * (v92 * v93));
          v114 = *&v133[v59 + 216];
          v102 = ((v94 * (*(v61 - 27) + 1)) + (v96 * (*v61 + 1))) + ((v92 * v93) * (v61[27] + 1));
          v103 = v90 + (v82 + v75);
          *(v120 + v59) = v101;
          v104 = (v98 + (v89 * ((v92 * v93) * (v92 * v93)))) * v103;
          v119[v59 / 4] = (v100 + (v114 * ((v92 * v93) * (v92 * v93)))) * v103;
          *&__srca[v59 / 4] = v101 * sqrtf(v103 / v104);
          *v62 = vcvtas_u32_f32(v102);
          v105 = sqrtf(v104);
          v106 = v88;
          v107 = v64;
          v108 = erfc((-(v101 - (sqrtf(v95) * v88)) / v105) * v64) * v65;
          if (*(v125 + v59) <= 0.0 && !*(v60 - 27))
          {
            v108 = 0.0;
          }

          v67 = erfc((-(v101 - (sqrtf(v99) * v106)) / v105) * v107) * 0.5;
          if (*(v81 - 27) <= 0.0 && !*v60)
          {
            v67 = 0.0;
          }

          ++v60;
          ++v61;
          v68 = v89 > 0.0;
          a9 = v106;
          v69 = erfc((-(v101 - (sqrtf(v114) * v106)) / v105) * v107) * 0.5;
          if (((v68 | v85) & 1) == 0)
          {
            v69 = 0.0;
          }

          v63 = 1.0;
          v70 = powf((2.0 / ((((v67 * v108) * (1.0 - v69)) + 1.0) + ((v67 + ((1.0 - v67) * v108)) * v69))) + -1.0, v113);
          v64 = v107;
          v65 = 0.5;
          v121[v59 / 4] = (2.0 / (v70 + 1.0)) + -1.0;
          v59 += 4;
          v62 += 2;
          if (!--v66)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }
        }
      }
    }
  }

  __p = 0;
  v116 = 0;
  v117 = 0;
  p_p = &__p;
  std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(0, 0, &p_p, 0, 0, 0, 0);
  if (a10)
  {
    operator new();
  }

  if (__p)
  {
    v116 = __p;
    operator delete(__p);
  }
}

void sub_2246E29AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v28);
  _Unwind_Resume(a1);
}

void peridot::HDUnfoldClass::diffBLRprocess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, _DWORD *a10, float *a11, _DWORD *a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3);
  v19 = v18;
  v241 = *MEMORY[0x277D85DE8];
  v170 = v12;
  v20 = v12[39] - v12[38];
  v21 = 1;
  if (v14)
  {
    if (v14 == 2)
    {
      v161 = 0;
LABEL_6:
      v169 = *v13;
      v166 = *(v13 + 40);
      v17.i32[0] = *(v13 + 48);
      v167 = *v17.f32;
      v22 = (v15 + 4 * v14);
      v17.i64[0] = *v15;
      v17.i32[2] = *(v15 + 8);
      v23 = vld1q_dup_f32(v22);
      v24 = vsubq_f32(v23, v17);
      v25 = vrndaq_f32(v24);
      v26 = vcvtq_s32_f32(v25);
      v239 = v24.i64[0];
      v237 = v26.i64[0];
      v240 = v24.i32[2];
      v238 = v26.i32[2];
      v27 = vsubq_f32(v24, vrndq_f32(v25));
      v236 = v27.i32[2];
      v235 = v27.i64[0];
      v28 = v20 >> 2;
      v29 = *v16;
      v30 = (v16[1] - *v16) >> 3;
      v25.f32[0] = vcvts_n_f32_u64(v30, 1uLL);
      *v26.i32 = ceilf(v25.f32[0]);
      v31 = vcvtps_u32_f32(v25.f32[0]);
      v25.f32[0] = floorf(vcvts_n_f32_u64(v28, 1uLL));
      v32 = (-1.0 - (v25.f32[0] + *v26.i32));
      v33 = ((v25.f32[0] + (v30 + 2.0)) - *v26.i32);
      v34 = v32 - v33;
      v160 = v14;
      if (v32 > v33)
      {
        v35 = 0;
        v36 = *(v29 + 8 * v31);
        v37 = v36 - 1;
        v164 = v14;
        v38 = *(v12[1] + 8 * v14);
        v39 = v38;
        v40 = -2;
        v165 = v36;
        goto LABEL_21;
      }

      v41 = (v33 - v32);
      if (v41 > 6)
      {
        v35 = v41 + 1;
        v42 = (v41 + 1) & 0x1FFFFFFF8;
        v43 = vaddq_s32(vdupq_n_s32(v32), xmmword_2247A48C0);
        v44 = v234;
        v45.i64[0] = 0x400000004;
        v45.i64[1] = 0x400000004;
        v46.i64[0] = 0x800000008;
        v46.i64[1] = 0x800000008;
        v47 = v42;
        do
        {
          v44[-1] = v43;
          *v44 = vaddq_s32(v43, v45);
          v43 = vaddq_s32(v43, v46);
          v44 += 2;
          v47 -= 8;
        }

        while (v47);
        if (v35 == v42)
        {
          v48 = v42 - 1;
          goto LABEL_18;
        }

        v32 += v42;
      }

      else
      {
        v42 = 0;
      }

      v35 = v42;
      do
      {
        v232[v35++ + 368] = v32++;
      }

      while (v34 + v35 != 1);
      v48 = v35 - 1;
LABEL_18:
      v49 = *(v29 + 8 * v31);
      v40 = v48 - 1;
      v165 = v49;
      if (v48 == 1)
      {
        v164 = v14;
        v174 = 1;
        v35 = 2;
        goto LABEL_26;
      }

      v37 = v49 - 1;
      v164 = v14;
      v38 = *(v12[1] + 8 * v14);
      v39 = v38;
      if (v40 <= 3)
      {
        v50 = 0;
        do
        {
LABEL_24:
          v64 = (v37 + v233[v50]) % v38;
          v232[v50++] = v64 + (v39 & (v64 >> 31)) + 1;
        }

        while (v40 != v50);
LABEL_25:
        v174 = 0;
LABEL_26:
        bzero(v230, 0x5C0uLL);
        bzero(v228, 0x5C0uLL);
        *v65.i32 = *v167.i32 / v19;
        v172 = v35 & 0xFFFFFFFFFFFFFFF8;
        v66 = vdupq_lane_s32(v167, 0);
        v67 = *v65.i32;
        v68 = vdupq_lane_s32(v65, 0);
        v173 = v40 & 0xFFFFFFFFFFFFFFF8;
        v69 = 1.0 / v19;
        v162 = vdupq_n_s64(8uLL);
        v163 = vdupq_n_s64(4uLL);
        __asm { FMOV            V0.4S, #1.0 }

        v168 = _Q0;
        v75 = 1;
        v76 = v161;
        v171 = v21;
        v175 = v68;
        v176 = v66;
        while (1)
        {
          v77 = v75;
          if (!v35)
          {
            bzero(v207, 0x2E0uLL);
            goto LABEL_62;
          }

          v78 = v165 - *(&v237 + v76);
          if (v35 > 7)
          {
            v81 = &v225;
            v82 = &v227;
            v83 = vdupq_n_s32(v78);
            v84 = &v223;
            v85 = v234;
            v86 = v35 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v87 = vaddq_s32(v83, *v85);
              v82[-1] = vaddq_s32(v83, v85[-1]);
              *v82 = v87;
              v81[-1] = v66;
              *v81 = v66;
              v85 += 2;
              v84[-1] = v68;
              *v84 = v68;
              v84 += 2;
              v82 += 2;
              v81 += 2;
              v86 -= 8;
            }

            while (v86);
            v79 = v35 & 0xFFFFFFFFFFFFFFF8;
            v80 = v167.i32[0];
            v67 = *v167.i32 / v19;
            if (v35 == v172)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v79 = 0;
            v80 = v167.i32[0];
          }

          v88 = v35 - v79;
          v89 = v79;
          v90 = &v222[v79];
          v91 = &v224[v89];
          v92 = &v226[v89];
          v93 = &v232[v89 + 368];
          do
          {
            v94 = *v93++;
            *v92++ = v78 + v94;
            *v91++ = v80;
            *v90++ = v67;
            --v88;
          }

          while (v88);
LABEL_37:
          bzero(v207, 0x2E0uLL);
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v99 = *(v170[1] + 8 * v164);
          do
          {
            v100 = v226[v98];
            if (v100 < 1)
            {
              v96 = 1;
              if (v100 > v99)
              {
LABEL_38:
                v97 = 1;
                v207[v98 + 368] = 1;
              }
            }

            else
            {
              v207[v98] = 1;
              if (v100 > v99)
              {
                goto LABEL_38;
              }
            }

            ++v98;
          }

          while (v35 != v98);
          if ((v96 | v97))
          {
            v101 = 0;
            v102 = &v207[368 * (v97 & ~v96 & 1)];
            v103 = v222;
            v104 = v224;
            v105 = v35;
            do
            {
              v106 = *v102++;
              if (v106 == 1)
              {
                if (v76 >= (v169[1] - *v169) >> 3)
                {
                  std::vector<float>::__throw_out_of_range[abi:ne200100]();
                }

                v107 = *(*(*(*v169 + 8 * v76) + 8) + 4 * v101);
                *v104 = v107;
                if (v76 >= (v166[1] - *v166) >> 3)
                {
                  std::vector<float>::__throw_out_of_range[abi:ne200100]();
                }

                *v103 = (*(*(*(*v166 + 8 * v76) + 8) + 4 * v101++) * v107) * v69;
              }

              ++v103;
              ++v104;
              --v105;
            }

            while (v105);
          }

          else
          {
            if (v76 >= (v169[1] - *v169) >> 3)
            {
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v108 = *(*(*v169 + 8 * v76) + 8) - 4;
            if (v76 >= (v166[1] - *v166) >> 3)
            {
              v224[0] = *(v108 + 4 * v226[0]);
              std::vector<float>::__throw_out_of_range[abi:ne200100]();
            }

            v109 = *(*(*v166 + 8 * v76) + 8) - 4;
            v110 = v222;
            v111 = v224;
            v112 = v226;
            v113 = v35;
            do
            {
              v114 = *v112++;
              v115 = *(v108 + 4 * v114);
              *v111++ = v115;
              *v110++ = (*(v109 + 4 * v114) * v115) * v69;
              --v113;
            }

            while (v113);
          }

          v95.i32[0] = *(&v235 + v76);
          if (v35 < 8)
          {
            v116 = 0;
            goto LABEL_61;
          }

          v117 = &v221;
          v118 = &v219;
          v119 = vdupq_lane_s32(v95, 0);
          v120 = v35 & 0xFFFFFFFFFFFFFFF8;
          v121 = xmmword_2247A4650;
          v122 = xmmword_2247A4670;
          do
          {
            v123 = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v121)), vcvtq_f64_u64(v122)), v168);
            v124 = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v121, v163))), vcvtq_f64_u64(vaddq_s64(v122, v163))), v168);
            v117[-1] = v123;
            *v117 = v124;
            v118[-1] = vsubq_f32(v123, v119);
            *v118 = vsubq_f32(v124, v119);
            v122 = vaddq_s64(v122, v162);
            v121 = vaddq_s64(v121, v162);
            v118 += 2;
            v117 += 2;
            v120 -= 8;
          }

          while (v120);
          v116 = v35 & 0xFFFFFFFFFFFFFFF8;
          if (v35 != v172)
          {
            do
            {
LABEL_61:
              v125 = v116 + 1.0;
              *&v220[v116] = v125;
              v218[v116++] = v125 - *v95.i32;
            }

            while (v35 != v116);
          }

LABEL_62:
          v202 = v220;
          v203 = 1;
          v204 = v35;
          v205 = 0;
          v206 = 4 * v35;
          v201 = &unk_28380A0A8;
          v196 = v218;
          v197 = 1;
          v198 = v35;
          v199 = 0;
          v200 = v206;
          v195 = &unk_28380A0A8;
          v190 = v224;
          v191 = 1;
          v192 = v35;
          v193 = 0;
          v194 = v206;
          v189 = &unk_28380A0A8;
          v184 = v216;
          v185 = 1;
          v186 = v35;
          v187 = 0;
          v188 = v206;
          v183 = &unk_28380A0A8;
          Interp1<float,LinearInterpolator<float>>(&v201, &v189, v218, v35, &v183);
          if ((v174 & 1) == 0)
          {
            v126 = &v231;
            v127 = &v217;
            v128 = v40 & 0xFFFFFFFFFFFFFFF8;
            v129.i64[0] = 0x3F0000003F000000;
            v129.i64[1] = 0x3F0000003F000000;
            if (v40 < 8)
            {
              v130 = 0;
              goto LABEL_67;
            }

            do
            {
              v131 = vmlaq_f32(*v126, v129, *v127);
              v126[-1] = vmlaq_f32(v126[-1], v129, v127[-1]);
              *v126 = v131;
              v127 += 2;
              v126 += 2;
              v128 -= 8;
            }

            while (v128);
            v130 = v40 & 0xFFFFFFFFFFFFFFF8;
            if (v40 != v173)
            {
LABEL_67:
              v132 = v40 - v130;
              v133 = 4 * v130;
              v134 = &v216[4 * v130 + 4];
              v135 = &v230[v133];
              do
              {
                v136 = *v134++;
                *v135 = *v135 + (v136 * 0.5);
                ++v135;
                --v132;
              }

              while (v132);
            }
          }

          v179 = 1;
          v180 = v35;
          v181 = 0;
          v182 = 4 * v35;
          v177 = &unk_28380A0A8;
          v178 = v222;
          v209 = v214;
          v210 = 1;
          v211 = v35;
          v212 = 0;
          *&v213 = v182;
          v208 = &unk_28380A0A8;
          Interp1<float,LinearInterpolator<float>>(&v201, &v177, v196, v198, &v208);
          v68 = v175;
          v137.i64[0] = 0x3F0000003F000000;
          v137.i64[1] = 0x3F0000003F000000;
          if ((v174 & 1) == 0)
          {
            v138 = &v229;
            v139 = &v215;
            v140 = v40 & 0xFFFFFFFFFFFFFFF8;
            if (v40 < 8)
            {
              v141 = 0;
              goto LABEL_74;
            }

            do
            {
              v142 = vmlaq_f32(*v138, v137, *v139);
              v138[-1] = vmlaq_f32(v138[-1], v137, v139[-1]);
              *v138 = v142;
              v139 += 2;
              v138 += 2;
              v140 -= 8;
            }

            while (v140);
            v141 = v40 & 0xFFFFFFFFFFFFFFF8;
            if (v40 != v173)
            {
LABEL_74:
              v143 = v40 - v141;
              v144 = 4 * v141;
              v145 = &v214[4 * v141 + 4];
              v146 = &v228[v144];
              do
              {
                v147 = *v145++;
                *v146 = *v146 + (v147 * 0.5);
                ++v146;
                --v143;
              }

              while (v143);
            }
          }

          v208 = &unk_283809D60;
          v66 = v176;
          if (v209 && v212 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v177 = &unk_283809D60;
          if (v178 && v181 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v183 = &unk_283809D60;
          if (v184 && v187 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v189 = &unk_283809D60;
          if (v190 && v193 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v195 = &unk_283809D60;
          if (v196 && v199 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v201 = &unk_283809D60;
          if (v202 && v205 == 1)
          {
            MEMORY[0x22AA53170]();
            v68 = v175;
            v66 = v176;
          }

          v75 = 0;
          v76 = v171;
          v67 = *v167.i32 / v19;
          if ((v77 & 1) == 0)
          {
            if ((v174 & 1) == 0)
            {
              if (v160 >= (v169[1] - *v169) >> 3)
              {
                std::vector<float>::__throw_out_of_range[abi:ne200100]();
              }

              v148 = v40;
              if (v160 >= (v166[1] - *v166) >> 3)
              {
                std::vector<float>::__throw_out_of_range[abi:ne200100]();
              }

              v149 = *(*(*v169 + 8 * v160) + 8) - 4;
              v150 = *(*(*v166 + 8 * v160) + 8) - 4;
              v151 = v222;
              v152 = v224;
              v153 = v228;
              v154 = v226;
              v155 = v230;
              v156 = v232;
              do
              {
                v158 = *v156++;
                v157 = v158;
                v159 = *(v149 + 4 * v158);
                LODWORD(v158) = *v155++;
                *v154++ = v159 - *&v158;
                LODWORD(v158) = *v153++;
                *v152++ = *&v158 * 1.5;
                *v151++ = (*&v158 * 0.5) + ((*(v150 + 4 * v157) * v159) * v69);
                --v148;
              }

              while (v148);
            }

            operator new();
          }
        }
      }

LABEL_21:
      v50 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = vdupq_n_s32(v37);
      v52 = vdupq_n_s32(v38);
      v53 = vdupq_n_s32(v39);
      v54 = v233;
      v55 = v52.i32[1];
      v56 = v52.i32[2];
      v57 = v232;
      v58 = v52.i32[3];
      v59 = v52.i32[0];
      v60.i64[0] = 0x100000001;
      v60.i64[1] = 0x100000001;
      v61 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *v54++;
        v63 = vaddq_s32(v51, v62);
        v63.i32[0] %= v59;
        v63.i32[1] %= v55;
        v63.i32[2] %= v56;
        v63.i32[3] %= v58;
        *v57++ = vaddq_s32(vaddq_s32(v63, v60), vandq_s8(vcltzq_s32(v63), v53));
        v61 -= 4;
      }

      while (v61);
      if (v40 == v50)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v21 = 0;
  }

  v161 = v21;
  v21 = 2;
  goto LABEL_6;
}

void sub_2246E44C8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_2246E4558(_Unwind_Exception *a1)
{
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x320]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x8E0]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0xEA0]);
  MatrixNxPts<1u,float>::~MatrixNxPts(&STACK[0x1460]);
  _Unwind_Resume(a1);
}

double std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, int64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      v9 = **a3;
      a7.n128_u32[0] = *(v9 + 4 * v7);
      if (a7.n128_f32[0] > *(v9 + 4 * *result))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a4 > 128)
    {
      v19 = a4 >> 1;
      v20 = a4 >> 1;
      v21 = a4 - (a4 >> 1);
      v22 = &result[v20];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, v22, a3, a4 >> 1, a5);
        v31 = &a5[v19];
        std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(&result[v20], a2, a3, v21, v31);
        v32 = *a3;
        v33 = -1;
        v34 = v31;
        v35 = a5;
        v36 = result;
        v37 = &a5[a4];
        do
        {
          ++v33;
          if (v34 == v37)
          {
            if (v35 == v31)
            {
              return a7.n128_f64[0];
            }

            v51 = &a5[v20] - v35 - 8;
            if (v51 >= 0x38)
            {
              if ((&result[v33] - v35) >= 0x20)
              {
                v53 = (v36 + 2);
                v54 = (v51 >> 3) + 1;
                v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                v52 = &v35[v55];
                v56 = (v35 + 2);
                v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  a7 = v56[-1];
                  v58 = *v56;
                  v53[-1] = a7;
                  *v53 = v58;
                  v53 += 2;
                  v56 += 2;
                  v57 -= 4;
                }

                while (v57);
                if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return a7.n128_f64[0];
                }

                v36 = (v36 + v55 * 8);
              }

              else
              {
                v52 = v35;
              }
            }

            else
            {
              v52 = v35;
            }

            do
            {
              v59 = *v52++;
              *v36++ = v59;
            }

            while (v52 != v31);
            return a7.n128_f64[0];
          }

          v38 = v34;
          v39 = *v34;
          a7.n128_u32[0] = *(*v32 + 4 * v39);
          v40 = *(*v32 + 4 * *v35);
          if (a7.n128_f32[0] <= v40)
          {
            v41 = *v35;
          }

          else
          {
            v41 = v39;
          }

          v35 += a7.n128_f32[0] <= v40;
          v42 = a7.n128_f32[0] > v40;
          v34 = &v38[v42];
          *v36++ = v41;
        }

        while (v35 != v31);
        if (v34 == v37)
        {
          return a7.n128_f64[0];
        }

        v43 = v37 - &v38[v42] - 8;
        if (v43 <= 0x57 || (&result[v33] - &v38[v42] + 8) < 0x20)
        {
          goto LABEL_35;
        }

        v44 = (v36 + 2);
        v45 = (v43 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v34 = (v34 + v46);
        v47 = &v38[v42 + 2];
        v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          a7 = v47[-1];
          v49 = *v47;
          v44[-1] = a7;
          *v44 = v49;
          v44 += 2;
          v47 += 2;
          v48 -= 4;
        }

        while (v48);
        if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v36 = (v36 + v46);
          do
          {
LABEL_35:
            v50 = *v34++;
            *v36++ = v50;
          }

          while (v34 != v37);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, v22, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(&result[v20], a2, a3, v21, a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, &result[v20], a2, a3, v19, v21, a5, a6, v27).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      if (result + 1 != a2)
      {
        v11 = 0;
        v12 = **a3;
        v13 = result;
        do
        {
          v15 = *v13;
          v13 = v10;
          v16 = *v10;
          a7.n128_u32[0] = *(v12 + 4 * v16);
          if (a7.n128_f32[0] > *(v12 + 4 * v15))
          {
            v17 = v11;
            do
            {
              *(result + v17 + 8) = v15;
              if (!v17)
              {
                v14 = result;
                goto LABEL_11;
              }

              v15 = *(result + v17 - 8);
              v17 -= 8;
            }

            while (a7.n128_f32[0] > *(v12 + 4 * v15));
            v14 = (result + v17 + 8);
LABEL_11:
            *v14 = v16;
          }

          v10 = v13 + 1;
          v11 += 8;
        }

        while (v13 + 1 != a2);
      }
    }
  }

  return a7.n128_f64[0];
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v22 = a4 >> 1;
      v23 = a4 >> 1;
      v24 = &result[v23];
      v25 = result;
      v29 = a5;
      std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(result, &result[v23], a3, v22, a5, v22);
      result = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::calcConf(peridot::DetectorSingleTarget const(&)[3][3],peridot::HDUnfoldClass::CRT_Output const&,float,unsigned long,unsigned long const*,float const*,peridot::DetectorArgs const&,unsigned long,BOOL,peridot::PeridotDetectorOutput::DetectorTarget &,peridot::HDUnfoldClass::UnFoldRes &)::$_0 &,std::__wrap_iter<unsigned long *>>(v24, a2, a3, a4 - v22, &v29[v23], a4 - v22);
      v30 = *a3;
      v31 = -1;
      v32 = v29;
      v33 = v24;
      do
      {
        ++v31;
        if (v33 == a2)
        {
          if (v25 == v24)
          {
            return result;
          }

          v48 = v24 - v25 - 8;
          if (v48 >= 0x38 && (&v29[v31] - v25) >= 0x20)
          {
            v49 = v32 + 2;
            v50 = (v48 >> 3) + 1;
            v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
            v32 = (v32 + v51);
            v52 = (v25 + 2);
            v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v54 = *v52;
              *(v49 - 1) = *(v52 - 1);
              *v49 = v54;
              v52 += 2;
              v49 += 2;
              v53 -= 4;
            }

            while (v53);
            if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }

            v25 = (v25 + v51);
          }

          do
          {
            v55 = *v25++;
            *v32++ = v55;
          }

          while (v25 != v24);
          return result;
        }

        v34 = v33;
        v35 = *v33;
        v36 = *(*v30 + 4 * v35);
        v37 = *(*v30 + 4 * *v25);
        if (v36 <= v37)
        {
          v38 = *v25;
        }

        else
        {
          v38 = v35;
        }

        v39 = v36 > v37;
        v33 = &v34[v39];
        v25 += v36 <= v37;
        *v32++ = v38;
      }

      while (v25 != v24);
      if (v33 == a2)
      {
        return result;
      }

      v40 = a2 - &v34[v39] - 8;
      if (v40 < 0x58 || (&v29[v31] - &v34[v39] + 8) < 0x20)
      {
        goto LABEL_36;
      }

      v41 = v32 + 2;
      v42 = (v40 >> 3) + 1;
      v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
      v32 = (v32 + v43);
      v44 = &v34[v39 + 2];
      v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v46 = *v44;
        *(v41 - 1) = *(v44 - 1);
        *v41 = v46;
        v44 += 4;
        v41 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v33 = (v33 + v43);
        do
        {
LABEL_36:
          v47 = *v33++;
          *v32++ = v47;
        }

        while (v33 != a2);
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result++;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (*(v14 + 4 * *result) <= *(v14 + 4 * v18))
          {
            *v16 = *result;
          }

          else
          {
            v15[1] = v17;
            v19 = a5;
            if (v15 != a5)
            {
              v20 = v13;
              while (1)
              {
                v19 = (a5 + v20);
                v21 = *(a5 + v20 - 8);
                if (*(v14 + 4 * *result) <= *(v14 + 4 * v21))
                {
                  break;
                }

                *v19 = v21;
                v20 -= 8;
                if (!v20)
                {
                  v19 = a5;
                  break;
                }
              }
            }

            *v19 = *result;
          }

          ++result;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v6 = *__src;
      v7 = __src;
      memmove(__src, a2, v5);
      v3 = &v7[v5];
      *v3 = v6;
    }

    else if (a2 + 8 == a3)
    {
      v8 = a3 - 8;
      v9 = *(a3 - 1);
      v3 = __src + 8;
      v10 = a3 - 8 - __src;
      if (v8 != __src)
      {
        v11 = __src;
        memmove(__src + 8, __src, v10);
        __src = v11;
      }

      *__src = v9;
    }

    else
    {
      v12 = v4 >> 3;
      v13 = v5 >> 3;
      if (v4 >> 3 == v5 >> 3)
      {
        v14 = __src + 8;
        v15 = a2 + 8;
        do
        {
          v16 = *(v14 - 1);
          *(v14 - 1) = *(v15 - 1);
          *(v15 - 1) = v16;
          if (v14 == a2)
          {
            break;
          }

          v14 += 8;
          v17 = v15 == a3;
          v15 += 8;
        }

        while (!v17);
        return a2;
      }

      else
      {
        v18 = v4 >> 3;
        do
        {
          v19 = v18;
          v18 = v13;
          v13 = v19 % v13;
        }

        while (v13);
        v20 = &__src[8 * v18];
        do
        {
          v22 = *(v20 - 1);
          v20 -= 8;
          v21 = v22;
          v23 = &v20[v4];
          v24 = v20;
          do
          {
            v25 = v23;
            *v24 = *v23;
            v26 = (a3 - v23) >> 3;
            v27 = __OFSUB__(v12, v26);
            v29 = v12 - v26;
            v28 = (v29 < 0) ^ v27;
            v23 = &__src[8 * v29];
            if (v28)
            {
              v23 = &v25[8 * v12];
            }

            v24 = v25;
          }

          while (v23 != v20);
          *v25 = v21;
        }

        while (v20 != __src);
        return &__src[v5];
      }
    }
  }

  return v3;
}

void peridot::HDUnfoldClass::crtUnfold2PRI(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float a11, float a12, uint64_t a13, _BYTE *a14)
{
  *(a6 + 16) = 0;
  if (*(a3 + 20))
  {
    operator new[]();
  }

  operator new[]();
}

void sub_2246E5C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *__p, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  Matrix<unsigned short>::~Matrix();
  Matrix<unsigned short>::~Matrix();
  MatrixNxPts<1u,int>::~MatrixNxPts(va);
  if (__p)
  {
    operator delete(__p);
    if (!a28)
    {
LABEL_3:
      v46 = *(v44 - 232);
      if (!v46)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!a28)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  v46 = *(v44 - 232);
  if (!v46)
  {
LABEL_4:
    v47 = *(v44 - 208);
    if (!v47)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v46);
  v47 = *(v44 - 208);
  if (!v47)
  {
LABEL_6:
    MatrixNxPts<1u,int>::~MatrixNxPts(v44 - 184);
    MatrixNxPts<1u,int>::~MatrixNxPts(v44 - 144);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v47);
  goto LABEL_6;
}

void peridot::HDUnfoldClass::twoTargetLogic(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, size_t a6, float *a7, float *a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14)
{
  v15 = a6;
  v531 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  *a7 = *(a1 + 56);
  v530 = 0;
  memset(v529, 0, sizeof(v529));
  memset(v528, 0, 324);
  memset(v527, 0, 324);
  memset(v526, 0, 81);
  if (!a6)
  {
    return;
  }

  v16 = a5;
  v17 = a3;
  v18 = a1;
  v20 = a13;
  v19 = a14;
  v21 = (a4 + 216);
  v22 = 27;
  v23 = *(a1 + 64);
  v24 = 27;
  do
  {
    v30 = *(v21 - 27);
    if (v30)
    {
      v31 = &a2[36 * ((v30 - 1) % 3uLL) + 12 * ((v30 - 1) / 3uLL)];
      v527[v24 + 57] = *v31;
      *(v525 + v24 * 4 + 4) = v31[2];
      v32 = *(v31 + 9);
      v528[v24 + 57] = v32;
    }

    else
    {
      v32 = v528[v24 + 57];
    }

    v34 = v32 <= v23 && v32 > 0.0;
    *(v524 + v22 + 5) = v34;
    if (*v21)
    {
      v35 = &a2[36 * ((*v21 - 1) % 3uLL) + 12 * ((*v21 - 1) / 3uLL)];
      v528[v24] = *v35;
      LODWORD(v527[v24]) = v35[2];
      v36 = *(v35 + 9);
      *&v529[v24 * 4] = v36;
    }

    else
    {
      v36 = *&v529[v24 * 4];
    }

    v38 = v36 <= v23 && v36 > 0.0;
    v526[v22] = v38;
    v39 = v21[27];
    if (v39)
    {
      v25 = &a2[36 * ((v39 - 1) % 3uLL) + 12 * ((v39 - 1) / 3uLL)];
      v528[v24 + 27] = *v25;
      LODWORD(v527[v24 + 27]) = v25[2];
      v26 = *(v25 + 9);
      *&v529[v24 * 4 + 108] = v26;
    }

    else
    {
      v26 = *&v529[v24 * 4 + 108];
    }

    v27 = v26 > v23 || v26 <= 0.0;
    v28 = !v27;
    v526[v22 + 27] = v28;
    v29 = v22++ - 26;
    ++v21;
    ++v24;
  }

  while (a6 > v29);
  v524[1] = 0;
  v524[0] = 0;
  *(v525 + 7) = 0;
  v525[0] = 0;
  if (a6 == 1)
  {
    LOBYTE(v524[0]) = 1;
    v40 = a4;
    goto LABEL_536;
  }

  v477 = v18;
  v41 = 0;
  v42 = 0;
  v488 = 0;
  v489 = 0;
  v490 = 0;
  v43 = &v527[27];
  do
  {
    v44 = *(v43 - 27);
    if (v44 >= 3.4028e38 || v44 <= 0.0)
    {
      v44 = 3.4028e38;
    }

    if (*v43 < v44 && *v43 > 0.0)
    {
      v44 = *v43;
    }

    v47 = v43[27];
    if (v47 >= v44 || v47 <= 0.0)
    {
      v49 = v44;
    }

    else
    {
      v49 = v43[27];
    }

    v50 = v41;
    v51 = v41 >> 2;
    if (((v41 >> 2) + 1) >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (v41 >> 2 != -1)
    {
      if (!(((v41 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v51) = v49;
    v41 = 4 * v51 + 4;
    memcpy(0, 0, v50);
    v488 = 0;
    v490 = 0;
    v489 = (4 * v51 + 4);
    ++v42;
    ++v43;
  }

  while (v42 < a6);
  if (4 * v51 != -4)
  {
    if (v41 < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v16 = a5;
  v19 = a14;
  *&v498 = &v488;
  std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_0 &,std::__wrap_iter<unsigned long *>>(0, 0, &v498, 0, 0, 0, v52);
  v53 = 0;
  *(v523 + 7) = 0;
  v522[1] = 0;
  v522[0] = 0;
  v523[0] = 0;
  memset(v521, 0, 216);
  v40 = a4;
  v54 = *(v18 + 80);
  *v14.i32 = v54.u32[0];
  v15 = a6;
  v17 = a3;
  if (a6 >= 4)
  {
    if (a6 < 0x10)
    {
      v53 = 0;
      goto LABEL_67;
    }

    v53 = a6 & 0x1F0;
    v55 = vdupq_lane_s32(v14, 0);
    v56 = &v527[27];
    v57 = v521;
    v58 = v522;
    v59 = vdupq_n_s64(1uLL);
    v60.i64[0] = 0x101010101010101;
    v60.i64[1] = 0x101010101010101;
    v61 = a3;
    v62 = v53;
    do
    {
      v63 = vceqzq_s64(*(v61 + 112));
      v64 = vceqzq_s64(*(v61 + 96));
      v65 = vceqzq_s64(*(v61 + 80));
      v66 = vceqzq_s64(*(v61 + 64));
      v67 = vceqzq_s64(*(v61 + 48));
      v68 = vceqzq_s64(*(v61 + 32));
      v69 = vceqzq_s64(*(v61 + 16));
      v70 = vceqzq_s64(*v61);
      v71 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*(v56 - 27), v55), vcgeq_f32(*(v56 - 23), v55)), vuzp1q_s16(vcgeq_f32(*(v56 - 19), v55), vcgeq_f32(*(v56 - 15), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(v70, v69), vuzp1q_s32(v68, v67)), vuzp1q_s16(vuzp1q_s32(v66, v65), vuzp1q_s32(v64, v63))));
      v72 = vbicq_s8(v59, v68);
      v73 = vbicq_s8(v59, v67);
      v74 = vbicq_s8(v59, v65);
      v75 = *(v61 + 216);
      v76 = *(v61 + 248);
      v77 = *(v61 + 232);
      v78 = *(v61 + 264);
      v79 = *(v61 + 280);
      v80 = *(v61 + 296);
      v81 = *(v61 + 312);
      v82 = *(v61 + 328);
      v83 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*v56, v55), vcgeq_f32(*(v56 + 4), v55)), vuzp1q_s16(vcgeq_f32(*(v56 + 8), v55), vcgeq_f32(*(v56 + 12), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v75), vceqzq_s64(v77)), vuzp1q_s32(vceqzq_s64(v76), vceqzq_s64(v78))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v79), vceqzq_s64(v80)), vuzp1q_s32(vceqzq_s64(v81), vceqzq_s64(v82)))));
      v84 = vtstq_s64(v75, v75);
      v85 = vtstq_s64(v76, v76);
      v86 = vtstq_s64(v79, v79);
      v87 = vtstq_s64(v80, v80);
      v88 = vsubq_s64(vbicq_s8(v59, v63), vtstq_s64(v82, v82));
      v89 = vsubq_s64(vbicq_s8(v59, v64), vtstq_s64(v81, v81));
      v90 = vsubq_s64(v74, v87);
      v91 = vsubq_s64(vbicq_s8(v59, v66), v86);
      v92 = vsubq_s64(v73, vtstq_s64(v78, v78));
      v93 = vsubq_s64(v72, v85);
      v94 = vsubq_s64(vbicq_s8(v59, v69), vtstq_s64(v77, v77));
      v95 = vsubq_s64(vbicq_s8(v59, v70), v84);
      v96 = *(v61 + 432);
      v97 = *(v61 + 448);
      v98 = *(v61 + 464);
      v99 = *(v61 + 480);
      v100 = *(v61 + 496);
      v101 = *(v61 + 512);
      v102 = *(v61 + 528);
      v103 = *(v61 + 544);
      *v58++ = vandq_s8(vandq_s8(vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*(v56 + 27), v55), vcgeq_f32(*(v56 + 31), v55)), vuzp1q_s16(vcgeq_f32(*(v56 + 35), v55), vcgeq_f32(*(v56 + 39), v55))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v96), vceqzq_s64(v97)), vuzp1q_s32(vceqzq_s64(v98), vceqzq_s64(v99))), vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v100), vceqzq_s64(v101)), vuzp1q_s32(vceqzq_s64(v102), vceqzq_s64(v103))))), v71), vandq_s8(v83, v60));
      v57[6] = vsubq_s64(v89, vtstq_s64(v102, v102));
      v57[7] = vsubq_s64(v88, vtstq_s64(v103, v103));
      v57[4] = vsubq_s64(v91, vtstq_s64(v100, v100));
      v57[5] = vsubq_s64(v90, vtstq_s64(v101, v101));
      v57[2] = vsubq_s64(v93, vtstq_s64(v98, v98));
      v57[3] = vsubq_s64(v92, vtstq_s64(v99, v99));
      *v57 = vsubq_s64(v95, vtstq_s64(v96, v96));
      v57[1] = vsubq_s64(v94, vtstq_s64(v97, v97));
      v57 += 8;
      v61 += 128;
      v56 += 16;
      v62 -= 16;
    }

    while (v62);
    if (v53 == a6)
    {
      goto LABEL_84;
    }

    if ((a6 & 0xC) != 0)
    {
LABEL_67:
      v104 = v53;
      v53 = a6 & 0x1FC;
      v105 = vdupq_lane_s32(v14, 0);
      v106 = v104 - v53;
      v107 = &v521[v104];
      v108 = (v522 + v104);
      v109 = a3 + 8 * v104;
      v110 = &v527[v104 + 27];
      v111 = vdupq_n_s64(1uLL);
      do
      {
        v112 = vceqzq_s64(*(v109 + 16));
        v113 = vceqzq_s64(*v109);
        v114 = vorrq_s8(vcgeq_f32(*(v110 - 27), v105), vuzp1q_s32(v113, v112));
        v115 = *(v109 + 216);
        v116 = *(v109 + 232);
        v117 = vorrq_s8(vcgeq_f32(*v110, v105), vuzp1q_s32(vceqzq_s64(v115), vceqzq_s64(v116)));
        v118 = vsubq_s64(vbicq_s8(v111, v112), vtstq_s64(v116, v116));
        v119 = *(v109 + 432);
        v120 = *(v109 + 448);
        *v108++ = vuzp1_s8(vand_s8(vmovn_s32(vandq_s8(vandq_s8(vorrq_s8(vcgeq_f32(*(v110 + 27), v105), vuzp1q_s32(vceqzq_s64(v119), vceqzq_s64(v120))), v117), v114)), 0x1000100010001), v54).u32[0];
        *v107 = vsubq_s64(vsubq_s64(vbicq_s8(v111, v113), vtstq_s64(v115, v115)), vtstq_s64(v119, v119));
        v107[1] = vsubq_s64(v118, vtstq_s64(v120, v120));
        v107 += 2;
        v109 += 32;
        v110 += 4;
        v106 += 4;
      }

      while (v106);
      if (v53 == a6)
      {
        goto LABEL_84;
      }
    }
  }

  v121 = (a3 + 8 * v53 + 216);
  v122 = &v527[v53 + 27];
  do
  {
    v123 = *(v121 - 27);
    if (v123)
    {
      v124 = *(v122 - 27) >= *v14.i32;
    }

    else
    {
      v124 = 1;
    }

    v125 = v123 != 0;
    v126 = v121 + 1;
    if (*v122 < *v14.i32)
    {
      v124 &= *v121 == 0;
    }

    if (*v121)
    {
      ++v125;
    }

    v127 = v121[27];
    if (v122[27] < *v14.i32)
    {
      v124 &= v127 == 0;
    }

    if (v127)
    {
      v128 = v125 + 1;
    }

    else
    {
      v128 = v125;
    }

    *(v522 + v53) = v124;
    v521[v53++] = v128;
    ++v122;
    v121 = v126;
  }

  while (a6 > v53);
LABEL_84:
  v129 = 0;
  v519 = 0u;
  v520 = 0u;
  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v130 = (a4 + 216);
  v131 = 1;
  v498 = 0u;
  do
  {
    v132 = *(v130 - 27);
    if (v132 && (*(&v498 + v132) & 1) == 0)
    {
      *(&v498 + v132) = 1;
      ++v129;
    }

    v133 = *v130;
    if (*v130 && (*(&v498 + v133) & 1) == 0)
    {
      *(&v498 + v133) = 1;
      ++v129;
    }

    v134 = v130[27];
    if (v134 && (*(&v498 + v134) & 1) == 0)
    {
      *(&v498 + v134) = 1;
      ++v129;
    }

    v27 = a6 > v131++;
    ++v130;
  }

  while (v27);
  v496[1] = 0;
  v496[0] = 0;
  *(v497 + 7) = 0;
  v497[0] = 0;
  if (a6 <= 3)
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    goto LABEL_110;
  }

  if (a6 < 0x10)
  {
    v136 = 0;
    v137 = 0;
    v135 = 0;
LABEL_105:
    v187 = v135;
    v135 = a6 & 0xFFFFFFFFFFFFFFFCLL;
    v188 = v136;
    v189 = v137;
    v190 = 0uLL;
    v191 = v187 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
    v192 = (a5->i32 + v187);
    v193 = (v496 + v187);
    v194 = (v524 + v187);
    v195 = &v521[v187];
    v196 = vdupq_n_s64(3uLL);
    v197 = vdupq_n_s64(2uLL);
    v198.i64[0] = 255;
    v198.i64[1] = 255;
    v199 = 0uLL;
    do
    {
      v200 = *v195;
      v201 = v195[1];
      v195 += 2;
      v202 = vceqq_s64(v201, v196);
      v203 = vceqq_s64(v200, v196);
      *v194++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(v203, v202)), 0x1000100010001), *v200.i8).u32[0];
      v190 = vsubq_s64(v190, v202);
      v188 = vsubq_s64(v188, v203);
      *v200.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v200, v197), vceqq_s64(v201, v197))), 0x1000100010001);
      *v200.i8 = vuzp1_s8(*v200.i8, *v200.i8);
      *v193++ = v200.i32[0];
      v204 = *v192++;
      v200.i32[0] = v204;
      v205 = vmovl_u16(*&vmovl_u8(*v200.i8));
      v206.i64[0] = v205.u32[0];
      v206.i64[1] = v205.u32[1];
      v207 = vandq_s8(v206, v198);
      v206.i64[0] = v205.u32[2];
      v206.i64[1] = v205.u32[3];
      v199 = vaddq_s64(v199, vandq_s8(v206, v198));
      v189 = vaddq_s64(v189, v207);
      v191 += 4;
    }

    while (v191);
    v136 = vaddvq_s64(vaddq_s64(v188, v190));
    v137 = vaddvq_s64(vaddq_s64(v189, v199));
    v138 = a6 & 0xFFFFFFFC;
    if (v135 == a6)
    {
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  v468 = v54.u32[0];
  v139 = 0uLL;
  v470 = vdupq_n_s64(3uLL);
  v140 = vdupq_n_s64(2uLL);
  v135 = a6 & 0xFFFFFFFFFFFFFFF0;
  v141 = v496;
  v142 = v524;
  v143 = v521;
  v144 = 0uLL;
  v145 = 0uLL;
  v146 = 0uLL;
  v147 = 0uLL;
  v148 = 0uLL;
  v149 = 0uLL;
  v150 = 0uLL;
  v151 = 0uLL;
  v152 = 0uLL;
  v153 = a5;
  v154 = a6 & 0xFFFFFFFFFFFFFFF0;
  v155 = 0uLL;
  v156 = 0uLL;
  v157 = 0uLL;
  v158 = 0uLL;
  v159 = 0uLL;
  v160 = 0uLL;
  do
  {
    v472 = v158;
    v475 = v155;
    v480 = v151;
    v161 = *v143;
    v162 = v143[1];
    v163 = v143[4];
    v164 = v143[5];
    v165 = v143[6];
    v166 = v143[7];
    v167 = vceqq_s64(v166, v470);
    v168 = vceqq_s64(v165, v470);
    v169 = vceqq_s64(v164, v470);
    v170 = v156;
    v171 = vceqq_s64(v163, v470);
    v173 = v143[2];
    v172 = v143[3];
    v174 = vceqq_s64(v172, v470);
    v175 = vceqq_s64(v173, v470);
    v176 = v157;
    v177 = v150;
    v178 = vceqq_s64(v162, v470);
    v179 = v148;
    v180 = vceqq_s64(*v143, v470);
    v181.i64[0] = 0x101010101010101;
    v181.i64[1] = 0x101010101010101;
    *v142++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(v180, v178), vuzp1q_s32(v175, v174)), vuzp1q_s16(vuzp1q_s32(v171, v169), vuzp1q_s32(v168, v167))), v181);
    v146 = vsubq_s64(v146, v174);
    v145 = vsubq_s64(v145, v175);
    v144 = vsubq_s64(v144, v178);
    v139 = vsubq_s64(v139, v180);
    v147 = vsubq_s64(v147, v171);
    v148 = vsubq_s64(v179, v169);
    v149 = vsubq_s64(v149, v168);
    v150 = vsubq_s64(v177, v167);
    *v141++ = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v161, v140), vceqq_s64(v162, v140)), vuzp1q_s32(vceqq_s64(v173, v140), vceqq_s64(v172, v140))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v163, v140), vceqq_s64(v164, v140)), vuzp1q_s32(vceqq_s64(v165, v140), vceqq_s64(v166, v140)))), v181);
    v182 = *v153++;
    v183 = vqtbl1q_s8(v182, xmmword_2247A4890);
    v156 = vaddw_high_u32(v170, v183);
    v155 = vaddw_u32(v475, *v183.i8);
    v184 = vqtbl1q_s8(v182, xmmword_2247A4880);
    v152 = vaddw_high_u32(v152, v184);
    v151 = vaddw_u32(v480, *v184.i8);
    v185 = vqtbl1q_s8(v182, xmmword_2247A48A0);
    v157 = vaddw_u32(v176, *v185.i8);
    v158 = vaddw_high_u32(v472, v185);
    v186 = vqtbl1q_s8(v182, xmmword_2247A48B0);
    v159 = vaddw_u32(v159, *v186.i8);
    v160 = vaddw_high_u32(v160, v186);
    v143 += 8;
    v154 -= 16;
  }

  while (v154);
  v136 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v139, v147), vaddq_s64(v145, v149)), vaddq_s64(vaddq_s64(v144, v148), vaddq_s64(v146, v150))));
  v137 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v151, v157), vaddq_s64(v155, v159)), vaddq_s64(vaddq_s64(v152, v158), vaddq_s64(v156, v160))));
  if (v135 == a6)
  {
    *v14.i32 = v468;
    goto LABEL_113;
  }

  *v14.i32 = v468;
  if ((a6 & 0xC) != 0)
  {
    goto LABEL_105;
  }

  v138 = a6 & 0xFFFFFFF0;
  do
  {
LABEL_110:
    v208 = v521[v135];
    *(v524 + v135) = v208 == 3;
    if (v208 == 3)
    {
      ++v136;
    }

    *(v496 + v135) = v208 == 2;
    v137 += a5->u8[v135];
    v135 = ++v138;
  }

  while (v138 < a6);
LABEL_113:
  v209 = 0;
  v210 = 0;
  v481 = a4 + 216;
  v476 = a4 + 432;
  do
  {
    if (*(v524 + v209) == 1)
    {
      v211 = 0;
      v212 = v496;
      v213 = (a4 + 216);
      do
      {
        v214 = *v212++;
        if (v214 == 1 && *(a4 + 8 * v209) != *(v213 - 27) && *(v481 + 8 * v209) != *v213 && *(v476 + 8 * v209) != v213[27])
        {
          ++v210;
        }

        ++v211;
        ++v213;
      }

      while (a6 > v211);
    }

    v209 = (v209 + 1);
  }

  while (v209 < a6);
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 1;
  do
  {
    v219 = v218;
    v220 = a5->u8[v215] ^ 1;
    v218 &= v220;
    if (v220 & 1) == 0 && (v219)
    {
      v218 = *(v522 + v215);
    }

    v216 |= *(v496 + v215);
    ++v217;
    ++v215;
  }

  while (v217 < a6);
  if (v136)
  {
    v221 = 0;
  }

  else
  {
    v221 = v137 == 2;
  }

  v223 = v221 && v129 > 3;
  if ((v223 & v218) == 1)
  {
    if (a6 <= 7)
    {
      v224 = 0;
      v225 = 0;
      v226 = a9;
      do
      {
LABEL_272:
        if (a5->i8[v224] == 1)
        {
          *(v524 + v224) = 1;
        }

        v224 = ++v225;
      }

      while (v225 < a6);
LABEL_258:
      *a7 = *v14.i32;
      goto LABEL_365;
    }

    v226 = a9;
    if (a6 < 0x10)
    {
      v224 = 0;
      goto LABEL_163;
    }

    v224 = a6 & 0xFFFFFFFFFFFFFFF0;
    v259 = v524 + 7;
    v260 = a5;
    v261 = a6 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v262 = *v260;
      if (*v260)
      {
        *(v259 - 7) = 1;
        if ((v262.i8[1] & 1) == 0)
        {
          goto LABEL_226;
        }
      }

      else if ((v262.i8[1] & 1) == 0)
      {
LABEL_226:
        if (v262.i8[2])
        {
          goto LABEL_227;
        }

        goto LABEL_243;
      }

      *(v259 - 6) = 1;
      if (v262.i8[2])
      {
LABEL_227:
        *(v259 - 5) = 1;
        if ((v262.i8[3] & 1) == 0)
        {
          goto LABEL_228;
        }

        goto LABEL_244;
      }

LABEL_243:
      if ((v262.i8[3] & 1) == 0)
      {
LABEL_228:
        if (v262.i8[4])
        {
          goto LABEL_229;
        }

        goto LABEL_245;
      }

LABEL_244:
      *(v259 - 4) = 1;
      if (v262.i8[4])
      {
LABEL_229:
        *(v259 - 3) = 1;
        if ((v262.i8[5] & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_246;
      }

LABEL_245:
      if ((v262.i8[5] & 1) == 0)
      {
LABEL_230:
        if (v262.i8[6])
        {
          goto LABEL_231;
        }

        goto LABEL_247;
      }

LABEL_246:
      *(v259 - 2) = 1;
      if (v262.i8[6])
      {
LABEL_231:
        *(v259 - 1) = 1;
        if ((v262.i8[7] & 1) == 0)
        {
          goto LABEL_232;
        }

        goto LABEL_248;
      }

LABEL_247:
      if ((v262.i8[7] & 1) == 0)
      {
LABEL_232:
        if (v262.i8[8])
        {
          goto LABEL_233;
        }

        goto LABEL_249;
      }

LABEL_248:
      *v259 = 1;
      if (v262.i8[8])
      {
LABEL_233:
        v259[1] = 1;
        if ((v262.i8[9] & 1) == 0)
        {
          goto LABEL_234;
        }

        goto LABEL_250;
      }

LABEL_249:
      if ((v262.i8[9] & 1) == 0)
      {
LABEL_234:
        if (v262.i8[10])
        {
          goto LABEL_235;
        }

        goto LABEL_251;
      }

LABEL_250:
      v259[2] = 1;
      if (v262.i8[10])
      {
LABEL_235:
        v259[3] = 1;
        if ((v262.i8[11] & 1) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_252;
      }

LABEL_251:
      if ((v262.i8[11] & 1) == 0)
      {
LABEL_236:
        if (v262.i8[12])
        {
          goto LABEL_237;
        }

        goto LABEL_253;
      }

LABEL_252:
      v259[4] = 1;
      if (v262.i8[12])
      {
LABEL_237:
        v259[5] = 1;
        if ((v262.i8[13] & 1) == 0)
        {
          goto LABEL_238;
        }

        goto LABEL_254;
      }

LABEL_253:
      if ((v262.i8[13] & 1) == 0)
      {
LABEL_238:
        if (v262.i8[14])
        {
          goto LABEL_239;
        }

        goto LABEL_255;
      }

LABEL_254:
      v259[6] = 1;
      if (v262.i8[14])
      {
LABEL_239:
        v259[7] = 1;
        if (v262.i8[15])
        {
          goto LABEL_256;
        }

        goto LABEL_223;
      }

LABEL_255:
      if (v262.i8[15])
      {
LABEL_256:
        v259[8] = 1;
      }

LABEL_223:
      ++v260;
      v259 += 16;
      v261 -= 16;
      if (!v261)
      {
        if (v224 == a6)
        {
          goto LABEL_258;
        }

        v225 = a6 & 0xFFFFFFF0;
        if ((a6 & 8) == 0)
        {
          goto LABEL_272;
        }

LABEL_163:
        v239 = v224;
        v224 = a6 & 0xFFFFFFFFFFFFFFF8;
        v240 = v239 - (a6 & 0xFFFFFFFFFFFFFFF8);
        v241 = (a5->i64 + v239);
        v242 = v524 + v239 + 3;
        while (2)
        {
          v243 = *v241;
          if (*v241)
          {
            *(v242 - 3) = 1;
            if ((v243 & 0x100) == 0)
            {
              goto LABEL_167;
            }

LABEL_175:
            *(v242 - 2) = 1;
            if ((v243 & 0x10000) == 0)
            {
              goto LABEL_176;
            }

LABEL_168:
            *(v242 - 1) = 1;
            if ((v243 & 0x1000000) == 0)
            {
              goto LABEL_169;
            }

LABEL_177:
            *v242 = 1;
            if ((v243 & 0x100000000) == 0)
            {
              goto LABEL_178;
            }

LABEL_170:
            v242[1] = 1;
            if ((v243 & 0x10000000000) == 0)
            {
              goto LABEL_171;
            }

LABEL_179:
            v242[2] = 1;
            if ((v243 & 0x1000000000000) == 0)
            {
              goto LABEL_180;
            }

LABEL_172:
            v242[3] = 1;
            if ((v243 & 0x100000000000000) != 0)
            {
              goto LABEL_181;
            }
          }

          else
          {
            if ((v243 & 0x100) != 0)
            {
              goto LABEL_175;
            }

LABEL_167:
            if ((v243 & 0x10000) != 0)
            {
              goto LABEL_168;
            }

LABEL_176:
            if ((v243 & 0x1000000) != 0)
            {
              goto LABEL_177;
            }

LABEL_169:
            if ((v243 & 0x100000000) != 0)
            {
              goto LABEL_170;
            }

LABEL_178:
            if ((v243 & 0x10000000000) != 0)
            {
              goto LABEL_179;
            }

LABEL_171:
            if ((v243 & 0x1000000000000) != 0)
            {
              goto LABEL_172;
            }

LABEL_180:
            if ((v243 & 0x100000000000000) != 0)
            {
LABEL_181:
              v242[4] = 1;
            }
          }

          ++v241;
          v242 += 8;
          v240 += 8;
          if (!v240)
          {
            v225 = a6 & 0xFFFFFFF8;
            if (v224 != a6)
            {
              goto LABEL_272;
            }

            goto LABEL_258;
          }

          continue;
        }
      }
    }
  }

  v228 = v129 > 4 && v136 == 1;
  if ((v228 & v216) == 1 && v210 != 0)
  {
    v244 = 0;
    v245 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v492[0] = 0;
    do
    {
      if (*(v524 + v244) == 1)
      {
        v247 = 0;
        do
        {
          if (*(v496 + v247) == 1)
          {
            if (*(v40 + 8 * v244) == *(v40 + 8 * v247) || (v248 = v40 + 8 * v247, *(v481 + 8 * v244) == *(v248 + 216)) || *(v476 + 8 * v244) == *(v248 + 432) || *(v522 + v247) != 1)
            {
              v251 = __p[1];
              if (__p[1] == (*&v492[0] << 6))
              {
                if (__p[1] + 1 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v252 = *&v492[0] << 7;
                if (*&v492[0] << 7 <= (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64)
                {
                  v252 = (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64;
                }

                if (__p[1] <= 0x3FFFFFFFFFFFFFFELL)
                {
                  v253 = v252;
                }

                else
                {
                  v253 = 0x7FFFFFFFFFFFFFFFLL;
                }

                std::vector<BOOL>::reserve(__p, v253);
                v251 = __p[1];
              }

              __p[1] = (v251 + 1);
              *(__p[0] + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v251);
            }

            else
            {
              v249 = __p[1];
              if (__p[1] == (*&v492[0] << 6))
              {
                if (__p[1] + 1 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (__p[1] > 0x3FFFFFFFFFFFFFFELL)
                {
                  v250 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else if (*&v492[0] << 7 <= (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64)
                {
                  v250 = (__p[1] & 0x3FFFFFFFFFFFFFC0) + 64;
                }

                else
                {
                  v250 = *&v492[0] << 7;
                }

                std::vector<BOOL>::reserve(__p, v250);
                v249 = __p[1];
              }

              __p[1] = (v249 + 1);
              *(__p[0] + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v249;
              v254 = v245;
              v255 = v245 >> 3;
              if (((v245 >> 3) + 1) >> 61)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              if (v245 >> 3 != -1)
              {
                if (!(((v245 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v255) = v247;
              v245 = 8 * v255 + 8;
              memcpy(0, 0, v254);
              v40 = a4;
              v15 = a6;
            }
          }

          ++v247;
        }

        while (v247 < v15);
      }

      v246 = (v244 + 1);
      v244 = (v244 + 1);
    }

    while (v246 < v15);
    v256 = v245;
    if (v245)
    {
      v257 = 0;
      v258 = 0;
      do
      {
        if ((a5->i8[*(8 * v257)] & 1) == 0)
        {
          operator new();
        }

        v257 = ++v258;
      }

      while (v245 >> 3 > v258);
      v20 = a13;
      v18 = v477;
      v40 = a4;
      v256 = v245;
    }

    else
    {
      v20 = a13;
      v18 = v477;
    }

    v276 = v256 >> 3;
    v16 = a5;
    v19 = a14;
    v226 = a9;
    if (v256 >> 3)
    {
      v277 = a9;
      if (v276 == 1)
      {
        v277 = v524 + MEMORY[0];
      }

      *v277 = 1;
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v17 = a3;
    goto LABEL_365;
  }

  if (v136 < 2)
  {
    v226 = a9;
    *a9 = 1;
    goto LABEL_365;
  }

  memset(v494, 0, 24);
  std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v494, 0, 0, 0);
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = v494[1];
  v234 = v494[0];
  do
  {
    v235 = v234[v230];
    if (*(v524 + v235) == 1)
    {
      v236 = v232;
      v237 = (v232 >> 3) + 1;
      if (v237 >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      if (v232 >> 3 != -1)
      {
        if (!(v237 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v238 = (8 * (v232 >> 3));
      *v238 = v235;
      v232 = (v238 + 1);
      memcpy(0, 0, v236);
    }

    v230 = ++v231;
  }

  while (v231 < ((v233 - v234) >> 3));
  v493 = 0;
  *__p = 0u;
  memset(v492, 0, sizeof(v492));
  v263 = v232 >> 3;
  v264 = MEMORY[0];
  v20 = a13;
  v226 = a9;
  if ((v232 >> 3) < 2)
  {
    goto LABEL_275;
  }

  v265 = 0;
  v266 = *(a4 + 8 * MEMORY[0]);
  v267 = *(v481 + 8 * MEMORY[0]);
  v268 = __p;
  v269 = *(v476 + 8 * MEMORY[0]);
  v270 = 1;
  v271 = 1;
  v272 = 1;
  do
  {
    v273 = *(8 * v270);
    v274 = *(a4 + 8 * v273) == v266;
    if (*(a4 + 8 * v273) == v266)
    {
      *v268 = 1;
    }

    if (*(v481 + 8 * v273) == v267)
    {
      v274 = 1;
      *(v268 + 27) = 1;
    }

    if (*(v476 + 8 * v273) == v269)
    {
      v274 = 1;
      *(v268 + 54) = 1;
    }

    v272 &= v274;
    v270 = ++v271;
    --v265;
    v268 = (v268 + 1);
  }

  while (v263 > v271);
  if (v272)
  {
LABEL_275:
    v275 = v264 != *v234 || MEMORY[8] != v234[1];
    v15 = a6;
    v19 = a14;
    if (*(v522 + v264) == 1)
    {
      v278 = *(v522 + MEMORY[8]) ^ 1;
    }

    else
    {
      v278 = 1;
    }

    v17 = a3;
    if (!v232)
    {
      v283 = 0;
      v16 = a5;
      goto LABEL_318;
    }

    v279 = 0;
    v280 = 1;
    v281 = 0;
    v16 = a5;
    while (1)
    {
      if (__p[0])
      {
        if ((BYTE11(v492[0]) & 1) == 0 && v527[MEMORY[8]] <= v527[*v281 + 27])
        {
          v280 = 0;
        }

        if ((BYTE6(v492[2]) & 1) == 0 && v527[MEMORY[8]] <= v527[*v281 + 54])
        {
          v280 = 0;
        }

        if ((BYTE11(v492[0]) & 1) == 0)
        {
LABEL_307:
          if ((BYTE6(v492[2]) & 1) == 0)
          {
            goto LABEL_291;
          }

          v282 = 0;
          if (__p[0])
          {
            goto LABEL_311;
          }

LABEL_309:
          if (v527[MEMORY[8] + 54] <= v527[*v281])
          {
            v280 = 0;
          }

          goto LABEL_311;
        }
      }

      else
      {
        if ((BYTE11(v492[0]) & 1) == 0)
        {
          goto LABEL_307;
        }

        if (v527[MEMORY[8] + 27] <= v527[*v281])
        {
          v280 = 0;
        }
      }

      if ((BYTE6(v492[2]) & 1) == 0)
      {
        if (v527[MEMORY[8] + 27] > v527[*v281 + 54])
        {
          goto LABEL_291;
        }

        goto LABEL_290;
      }

      v282 = 1;
      if ((__p[0] & 1) == 0)
      {
        goto LABEL_309;
      }

LABEL_311:
      if ((v282 & 1) != 0 || v527[MEMORY[8] + 54] > v527[*v281 + 27])
      {
        goto LABEL_291;
      }

LABEL_290:
      v280 = 0;
LABEL_291:
      ++v279;
      ++v281;
      if (v263 <= v279)
      {
        v283 = v280 ^ 1;
LABEL_318:
        if ((v275 | v278) & 1) != 0 || (v283)
        {
          *a9 = 1;
          v40 = a4;
        }

        else
        {
          v494[1] = v234;
          std::vector<unsigned long>::push_back[abi:ne200100](v494, 0);
          std::vector<unsigned long>::push_back[abi:ne200100](v494, 8);
          v284 = v494[0];
          v285 = *v494[0];
          v286 = *(v494[0] + 1);
          v40 = a4;
          v287 = *(a4 + 8 * *v494[0]) == *(a4 + 8 * v286);
          *(a13 + v285) = v287;
          *(a13 + v286) = v287;
          v288 = *(v40 + 216 + 8 * v285) == *(v40 + 216 + 8 * v286);
          v289 = a13 + 27;
          *(v289 + v285) = v288;
          *(v289 + v286) = v288;
          v290 = *(v40 + 432 + 8 * v285) == *(v40 + 432 + 8 * v286);
          v291 = a13 + 54;
          *(v291 + v285) = v290;
          *(v291 + v286) = v290;
          bzero(v524, a6);
          v293 = v494[1] - v284;
          if (v494[1] != v284)
          {
            v294 = v293 >> 3;
            v295 = (v293 >> 3) > 1;
            if ((v293 >> 3) <= 1)
            {
              v296 = 1;
            }

            else
            {
              v296 = v293 >> 3;
            }

            if (!v295)
            {
              v297 = 0;
              goto LABEL_348;
            }

            v297 = v296 & 0xFFFFFFFFFFFFFFFELL;
            v305 = (v284 + 8);
            v306 = v296 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v307 = *v305;
              *(v524 + *(v305 - 1)) = 1;
              *(v524 + v307) = 1;
              v305 += 2;
              v306 -= 2;
            }

            while (v306);
            if (v294 != v297)
            {
LABEL_348:
              v308 = v296 - v297;
              v309 = &v284[8 * v297];
              do
              {
                v310 = *v309;
                v309 += 8;
                *(v524 + v310) = 1;
                --v308;
              }

              while (v308);
            }
          }

          LOWORD(v292) = *(v18 + 80);
          *a7 = v292;
        }

        goto LABEL_363;
      }
    }
  }

  v494[1] = v234;
  if (v234 >= v494[2])
  {
    v299 = (v494[2] - v234) >> 2;
    if (v299 <= 1)
    {
      v299 = 1;
    }

    if ((v494[2] - v234) >= 0x7FFFFFFFFFFFFFF8)
    {
      v300 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v300 = v299;
    }

    if (!(v300 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v234 = v264;
  v298 = v234 + 1;
  v40 = a4;
  v494[1] = v298;
  if (v265)
  {
    v301 = 0;
    v302 = 0;
    v303 = -v265;
    v17 = a3;
    while ((*(__p + v301) & 1) != 0 || (*(v492 + v301 + 11) & 1) != 0 || (*(&v492[2] + v301 + 6) & 1) != 0)
    {
      v301 = ++v302;
      if (v303 <= v302)
      {
        v15 = a6;
        v19 = a14;
        goto LABEL_352;
      }
    }

    v304 = v301 + 1;
    if (v298 >= v494[2])
    {
      v461 = v494[0];
      v462 = v298 - v494[0];
      v463 = (v298 - v494[0]) >> 3;
      v464 = v463 + 1;
      if ((v463 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v465 = v494[2] - v494[0];
      if ((v494[2] - v494[0]) >> 2 > v464)
      {
        v464 = v465 >> 2;
      }

      if (v465 >= 0x7FFFFFFFFFFFFFF8)
      {
        v466 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v466 = v464;
      }

      if (v466)
      {
        if (!(v466 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v467 = (8 * v463);
      *v467 = *(8 * v304);
      v298 = v467 + 1;
      memcpy(0, v461, v462);
      v494[0] = 0;
      v494[2] = 0;
      if (v461)
      {
        operator delete(v461);
      }

      v40 = a4;
      v15 = a6;
      v19 = a14;
      v494[1] = v298;
    }

    else
    {
      *v298++ = *(8 * v304);
      v15 = a6;
      v19 = a14;
      v494[1] = v298;
    }
  }

  else
  {
    v15 = a6;
    v19 = a14;
    v17 = a3;
  }

LABEL_352:
  bzero(v524, v15);
  v311 = v494[0];
  v312 = v298 - v494[0];
  v221 = v298 == v494[0];
  v16 = a5;
  if (!v221)
  {
    v313 = v312 >> 3;
    if ((v312 >> 3) <= 1)
    {
      v314 = 1;
    }

    else
    {
      v314 = v312 >> 3;
    }

    if (v313 >= 2)
    {
      v315 = v314 & 0xFFFFFFFFFFFFFFFELL;
      v316 = (v494[0] + 8);
      v317 = v314 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v318 = *v316;
        *(v524 + *(v316 - 1)) = 1;
        *(v524 + v318) = 1;
        v316 += 2;
        v317 -= 2;
      }

      while (v317);
      if (v313 == v315)
      {
        goto LABEL_363;
      }
    }

    else
    {
      v315 = 0;
    }

    v319 = v314 - v315;
    v320 = &v311[8 * v315];
    do
    {
      v321 = *v320;
      v320 += 8;
      *(v524 + v321) = 1;
      --v319;
    }

    while (v319);
  }

LABEL_363:
  operator delete(0);
  if (v494[0])
  {
    operator delete(v494[0]);
  }

LABEL_365:
  if (*v226 == 1)
  {
    v322 = 0;
    v323 = 0;
    v324 = 0;
    v485 = 0;
    v486 = 0;
    v487 = 0;
    do
    {
      if (v322 < v487)
      {
        *v322 = v521[v323];
        v322 += 8;
      }

      else
      {
        v325 = v485;
        v326 = v322 - v485;
        v327 = (v322 - v485) >> 3;
        v328 = v327 + 1;
        if ((v327 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v329 = v487 - v485;
        if ((v487 - v485) >> 2 > v328)
        {
          v328 = v329 >> 2;
        }

        if (v329 >= 0x7FFFFFFFFFFFFFF8)
        {
          v330 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v330 = v328;
        }

        if (v330)
        {
          if (!(v330 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v331 = (v322 - v485) >> 3;
        v332 = (8 * v327);
        v333 = (8 * v327 - 8 * v331);
        *v332 = v521[v323];
        v322 = (v332 + 1);
        memcpy(v333, v325, v326);
        v485 = v333;
        v486 = v322;
        v487 = 0;
        if (v325)
        {
          operator delete(v325);
        }

        v15 = a6;
      }

      v486 = v322;
      v323 = ++v324;
    }

    while (v324 < v15);
    v482 = 0;
    v483 = 0;
    v484 = 0;
    if (v322 != v485)
    {
      if (((v322 - v485) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = a13;
    __p[0] = &v485;
    v334.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_1 &,std::__wrap_iter<unsigned long *>>(0, 0, __p, 0, 0, 0);
    v335 = 0;
    v336 = 0;
    v40 = a4;
    v15 = a6;
    v18 = v477;
    while (*(v524 + v335) != 1 && (a5->i8[v335] != 1 || (*(v522 + v335) & 1) == 0))
    {
      v335 = ++v336;
      if (v336 >= a6)
      {
        goto LABEL_412;
      }
    }

    v337 = 0;
    v338 = 0;
    v339 = 0;
    do
    {
      if ((*(v524 + v337) & 1) == 0 && (a5->i8[v337] & 1) == 0)
      {
        v340 = v339 >> 3;
        if (((v339 >> 3) + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v339 >> 3 != -1)
        {
          if (!(((v339 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v340) = v337;
        memcpy(0, 0, v339);
        v15 = a6;
        v339 = 8 * v340 + 8;
      }

      v337 = ++v338;
    }

    while (v338 < v15);
    if (v339)
    {
      if (((v339 >> 3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v18 = v477;
    v342 = v482;
    v341 = v483;
    if (v483 == v482)
    {
      v344 = 0;
      v15 = a6;
    }

    else
    {
      v343 = 0;
      v344 = 0;
      do
      {
        v345 = v344;
        v346 = v344 >> 3;
        if (((v344 >> 3) + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v473 = v341;
        if (v344 >> 3 != -1)
        {
          if (!(((v344 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v347 = v339;
        *(8 * v346) = *&v342[8 * v343];
        v344 = 8 * v346 + 8;
        memcpy(0, 0, v345);
        v15 = a6;
        v18 = v477;
        v339 = v347;
        v341 = v473;
        ++v343;
      }

      while (v343 < (v473 - v342) >> 3);
    }

    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v482, 0, v344, v344 >> 3);
    v20 = a13;
    v40 = a4;
LABEL_412:
    v349 = v482;
    v348 = v483;
    v350 = (v483 - v482) >> 3;
    if (v350 < 2)
    {
      v19 = a14;
      goto LABEL_517;
    }

    v351 = 0;
    v352 = 0;
    do
    {
      v352 |= *(v522 + *&v482[8 * v351++]);
    }

    while (v350 != v351);
    if (v352)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v492[0] = 0;
      if (v483 != v482)
      {
        v353 = 0;
        v354 = v482;
        do
        {
          v356 = *v354;
          v354 += 8;
          v355 = v356;
          if (v353 < *&v492[0])
          {
            v334.n128_u32[0] = *(v488 + v355);
            *v353 = v334.n128_u32[0];
            v353 += 4;
          }

          else
          {
            v357 = __p[0];
            v358 = v353 - __p[0];
            v359 = (v353 - __p[0]) >> 2;
            v360 = v359 + 1;
            if ((v359 + 1) >> 62)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v361 = *&v492[0] - __p[0];
            if ((*&v492[0] - __p[0]) >> 1 > v360)
            {
              v360 = v361 >> 1;
            }

            if (v361 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v362 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v362 = v360;
            }

            if (v362)
            {
              if (!(v362 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v363 = v359;
            v364 = (4 * v359);
            v365 = &v364[-v363];
            *v364 = *(v488 + v355);
            v353 = (v364 + 1);
            memcpy(v365, v357, v358);
            __p[0] = v365;
            __p[1] = v353;
            *&v492[0] = 0;
            if (v357)
            {
              operator delete(v357);
            }
          }

          __p[1] = v353;
          --v350;
        }

        while (v350);
        if (v353 != __p[0])
        {
          if ((v353 - __p[0]) < 0x7FFFFFFFFFFFFFFDLL)
          {
            operator new();
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }
      }

      v494[0] = __p;
      std::__stable_sort<std::_ClassicAlgPolicy,peridot::HDUnfoldClass::twoTargetLogic(peridot::DetectorSingleTarget const(&)[3][3],unsigned long const(&)[3][27],unsigned long const(&)[3][27],BOOL const(&)[27],unsigned long,float &,float const*,BOOL &,unsigned long (&)[3][27],unsigned long (&)[3][27],BOOL (&)[27],BOOL (&)[3][27],unsigned char &)::$_2 &,std::__wrap_iter<unsigned long *>>(0, 0, v494, 0, 0, 0, v334);
      v15 = a6;
      v18 = v477;
      if (v483 != v349)
      {
        operator new();
      }

      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v482, 0, 0, 0);
      v20 = a13;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v349 = v482;
      v348 = v483;
      v350 = (v483 - v482) >> 3;
      v40 = a4;
    }

    v495 = 0;
    memset(v494, 0, sizeof(v494));
    if (v350 < 2)
    {
      goto LABEL_504;
    }

    v366 = 0;
    v367 = *v349;
    v368 = *(v40 + 8 * *v349);
    v369 = *(v481 + 8 * *v349);
    v370 = *(v476 + 8 * *v349);
    v371 = 1;
    v372 = 1;
    do
    {
      v373 = *&v349[8 * v371];
      if (*(v40 + 8 * v373) == v368 && v368 != 0)
      {
        *(v494 + v366) = 1;
      }

      if (*(v481 + 8 * v373) == v369 && v369 != 0)
      {
        *(&v494[3] + v366 + 3) = 1;
      }

      if (*(v476 + 8 * v373) == v370 && v370 != 0)
      {
        *(&v494[6] + v366 + 6) = 1;
      }

      ++v366;
      v371 = ++v372;
    }

    while (v350 > v372);
    if (v366)
    {
      v377 = 0;
      v378 = 0;
      do
      {
        if ((*(v494 + v377) & 1) == 0 && (*(&v494[3] + v377 + 3) & 1) == 0 && *(&v494[6] + v377 + 6) != 1)
        {
          v379 = *&v349[8 * v377 + 8];
          if (v349 >= v484)
          {
            v457 = (v484 - v349) >> 2;
            if (v457 <= 1)
            {
              v457 = 1;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v458 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v458 = v457;
            }

            if (!(v458 >> 61))
            {
              operator new();
            }
          }

          else
          {
            v19 = a14;
            v483 = v349 + 8;
            if ((v349 + 8) < v484)
            {
              *(v349 + 1) = v379;
              v348 = v349 + 16;
              v483 = v349 + 16;
              v20 = a13;
              goto LABEL_510;
            }

            v459 = (v484 - v349) >> 2;
            if (v459 <= 2)
            {
              v459 = 2;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v460 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v460 = v459;
            }

            if (!(v460 >> 61))
            {
              operator new();
            }
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v377 = ++v378;
      }

      while (v366 > v378);
      if (v350 != 2)
      {
        v380 = 0;
        v381 = v494;
        v382 = 1;
        do
        {
          if (*v381)
          {
            __p[v380++] = 0;
          }

          if (*(v381 + 27) == 1)
          {
            __p[v380++] = 1;
          }

          if (*(v381 + 54) == 1)
          {
            __p[v380++] = 2;
          }

          v27 = v366 > v382++;
          v381 = (v381 + 1);
        }

        while (v27);
        if (v380)
        {
          v383 = 0;
          v384 = 0;
          v385 = 0.0;
          do
          {
            if (v527[27 * __p[v383] + v367] > v385)
            {
              v384 = v383;
              v385 = v527[27 * __p[v383] + v367];
            }

            ++v383;
          }

          while (v380 > v383);
          v386 = v384 + 1;
LABEL_486:
          v20 = a13;
          v387 = v484;
          if (v349 >= v484)
          {
            v388 = (v484 - v349) >> 2;
            if (v388 <= 1)
            {
              v388 = 1;
            }

            if (v484 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v389 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v389 = v388;
            }

            if (!(v389 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *v349 = 0;
          v483 = v349 + 8;
          if ((v349 + 8) >= v387)
          {
            v390 = (v387 - v349) >> 2;
            if (v390 <= 2)
            {
              v390 = 2;
            }

            if (v387 - v349 >= 0x7FFFFFFFFFFFFFF8)
            {
              v391 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v391 = v390;
            }

            if (!(v391 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(v349 + 1) = v386;
          v348 = v349 + 16;
          v483 = v349 + 16;
          v350 = 2;
LABEL_504:
          if (v348 == v349)
          {
            v348 = v349;
          }

          else
          {
            v392 = 0;
            v393 = v494[0];
            v394 = BYTE3(v494[3]);
            v395 = v349;
            v396 = BYTE6(v494[6]);
            do
            {
              v397 = *v395;
              v395 += 8;
              *(v20 + v397) = v393;
              *(v20 + 27 + v397) = v394;
              *(v20 + 54 + v397) = v396;
              ++v392;
            }

            while (v350 > v392);
          }

          v19 = a14;
LABEL_510:
          v398 = *(v349 + 1);
          v399 = fmax(*a7, ceilf(*(v488 + v398) * 100.0) * 0.01);
          *a7 = v399;
          if (*(v20 + *v349) & 1) != 0 || (v400 = v20 + *v349, (*(v400 + 27)))
          {
            v401 = 1;
            v402 = v348 - v349;
            if (v348 != v349)
            {
LABEL_513:
              v403 = 0;
              v404 = v402 >> 3;
              v405 = 1;
              v406 = v349;
              do
              {
                v407 = *v406;
                v406 += 8;
                v405 &= *(v524 + v407) ^ 1;
                ++v403;
              }

              while (v404 > v403);
              if (v401 & v405)
              {
                goto LABEL_516;
              }

              goto LABEL_517;
            }
          }

          else
          {
            v401 = *(v400 + 54);
            v402 = v348 - v349;
            if (v348 != v349)
            {
              goto LABEL_513;
            }
          }

          if (v401)
          {
LABEL_516:
            *a7 = fmaxf(fmaxf(v527[v398], v527[v398 + 27]), v527[v398 + 54]);
          }

LABEL_517:
          bzero(v524, v15);
          v408 = v348 - v349;
          if (v348 == v349)
          {
            v16 = a5;
            if (!v349)
            {
              goto LABEL_531;
            }

            goto LABEL_530;
          }

          v409 = v408 >> 3;
          v410 = (v408 >> 3) > 1;
          if ((v408 >> 3) <= 1)
          {
            v411 = 1;
          }

          else
          {
            v411 = v408 >> 3;
          }

          v16 = a5;
          if (v410)
          {
            v412 = v411 & 0xFFFFFFFFFFFFFFFELL;
            v413 = (v349 + 8);
            v414 = v411 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v415 = *v413;
              *(v524 + *(v413 - 1)) = 1;
              *(v524 + v415) = 1;
              v413 += 2;
              v414 -= 2;
            }

            while (v414);
            if (v409 == v412)
            {
              goto LABEL_530;
            }
          }

          else
          {
            v412 = 0;
          }

          v416 = v411 - v412;
          v417 = &v349[8 * v412];
          do
          {
            v418 = *v417;
            v417 += 8;
            *(v524 + v418) = 1;
            --v416;
          }

          while (v416);
LABEL_530:
          v483 = v349;
          operator delete(v349);
LABEL_531:
          if (v485)
          {
            v486 = v485;
            operator delete(v485);
          }

          v17 = a3;
          goto LABEL_534;
        }

LABEL_485:
        v386 = 1;
        goto LABEL_486;
      }
    }

    else if (v350 != 2)
    {
      goto LABEL_485;
    }

    v20 = a13;
    goto LABEL_504;
  }

LABEL_534:
  if (v488)
  {
    v489 = v488;
    operator delete(v488);
  }

LABEL_536:
  v419 = 0;
  *&v511 = 0;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v498 = 0u;
  v420 = *(v18 + 42);
  do
  {
    *(&v498 + v419) = v420;
    if ((v526[v419] ^ 1) + (v526[v419 + 27] ^ 1) + (v526[v419 + 54] ^ 1u) >= 2)
    {
      *(&v498 + v419) = *(v18 + 48);
    }

    ++v419;
  }

  while (v15 > v419);
  if (v15 < 4)
  {
    v421 = 0;
    goto LABEL_551;
  }

  if (v15 >= 0x10)
  {
    v421 = v15 & 0xFFFFFFFFFFFFFFF0;
    v422 = v524;
    v423 = &v498;
    v424.i64[0] = 0x101010101010101;
    v424.i64[1] = 0x101010101010101;
    v425 = v17;
    v426 = v15 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v427 = v423[1];
      v428 = v423[2];
      v429 = v423[3];
      v430 = v423[4];
      v431 = v423[5];
      v432 = v423[6];
      v433 = v423[7];
      *v422 = vandq_s8(vandq_s8(vandq_s8(*v422, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *(v425 + 432)), vcgeq_u64(v427, *(v425 + 448))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 464)), vcgeq_u64(v429, *(v425 + 480)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 496)), vcgeq_u64(v431, *(v425 + 512))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 528)), vcgeq_u64(v433, *(v425 + 544)))))), v424), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *(v425 + 216)), vcgeq_u64(v427, *(v425 + 232))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 248)), vcgeq_u64(v429, *(v425 + 264)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 280)), vcgeq_u64(v431, *(v425 + 296))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 312)), vcgeq_u64(v433, *(v425 + 328))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(*v423, *v425), vcgeq_u64(v427, *(v425 + 16))), vuzp1q_s32(vcgeq_u64(v428, *(v425 + 32)), vcgeq_u64(v429, *(v425 + 48)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v430, *(v425 + 64)), vcgeq_u64(v431, *(v425 + 80))), vuzp1q_s32(vcgeq_u64(v432, *(v425 + 96)), vcgeq_u64(v433, *(v425 + 112)))))));
      ++v422;
      v425 += 128;
      v423 += 8;
      v426 -= 16;
    }

    while (v426);
    if (v421 == v15)
    {
      goto LABEL_561;
    }

    if ((v15 & 0xC) == 0)
    {
      goto LABEL_551;
    }
  }

  else
  {
    v421 = 0;
  }

  v434 = v421;
  v421 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v435 = v434 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
  v436 = (v524 + v434);
  v437 = 8 * v434;
  v438 = v17 + 8 * v434;
  v439 = (&v498 + v437);
  do
  {
    v440 = *v439;
    v441 = v439[1];
    v439 += 2;
    v442 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *v438), vcgeq_u64(v441, *(v438 + 16))));
    v443 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *(v438 + 216)), vcgeq_u64(v441, *(v438 + 232))));
    v444 = vcgeq_u64(v441, *(v438 + 448));
    *v440.i8 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v440, *(v438 + 432)), v444));
    v444.i32[0] = *v436;
    *v436++ = vuzp1_s8(vand_s8(vand_s8(vand_s8(*&vmovl_u8(*v444.i8), *v440.i8), vand_s8(v443, v442)), 0x1000100010001), 0x1000100010001).u32[0];
    v438 += 32;
    v435 += 4;
  }

  while (v435);
  if (v421 != v15)
  {
LABEL_551:
    v445 = (v17 + 8 * v421 + 216);
    do
    {
      v446 = *(&v498 + v421);
      v447 = *(v524 + v421);
      if (v445[27] > v446)
      {
        v447 = 0;
      }

      if (*v445 <= v446)
      {
        v448 = v447;
      }

      else
      {
        v448 = 0;
      }

      if (*(v445 - 27) <= v446)
      {
        v449 = v448;
      }

      else
      {
        v449 = 0;
      }

      *(v524 + v421++) = v449;
      ++v445;
    }

    while (v15 > v421);
  }

LABEL_561:
  v450 = 0;
  v451 = (v40 + 216);
  *v19 = 0;
  v452 = (v20 + 27);
  v453 = (v17 + 216);
  v454 = v524;
  v455 = 1;
  do
  {
    v456 = *v454++;
    if (v456 == 1)
    {
      *(a11 + 8 * v450) = *(v451 - 27);
      *(a10 + 8 * *v19) = *(v453 - 27);
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19) = *(v452 - 27);
      *(a11 + 8 * *v19 + 216) = *v451;
      *(a10 + 8 * *v19 + 216) = *v453;
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19 + 27) = *v452;
      *(a11 + 8 * *v19 + 432) = v451[27];
      *(a10 + 8 * *v19 + 432) = v453[27];
      *(a12 + *v19) = v16->i8[0];
      *(v20 + *v19 + 54) = v452[27];
      v450 = *v19 + 1;
      *v19 = v450;
    }

    v27 = v15 > v455++;
    v16 = (v16 + 1);
    ++v451;
    ++v452;
    ++v453;
  }

  while (v27);
}