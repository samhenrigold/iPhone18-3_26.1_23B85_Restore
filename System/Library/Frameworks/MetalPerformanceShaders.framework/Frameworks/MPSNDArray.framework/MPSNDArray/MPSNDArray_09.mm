void sub_239A9D848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  operator delete(__p);
  if (a57)
  {
    operator delete(a57);
    if (!a42)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a42)
  {
    goto LABEL_3;
  }

  operator delete(a42);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionAMDFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v17 = HIDWORD(v6);
  v18 = v6;
  v7 = MPSCreateFunctionConstantValues();
  [v7 setConstantValue:&v18 type:33 atIndex:115];
  [v7 setConstantValue:&v17 type:33 atIndex:114];
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  if (*a3 != -1 || ((v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF) == 0) ? (v13 = v12 == 0) : (v13 = 0), v13 ? (v14 = a3[5] == -1) : (v14 = 0), !v14))
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v7 setConstantValue:&v19 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v19 = v8;
      [v7 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v7 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v7 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v7 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v7 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v7 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v7 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v7 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v7 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v3 + 232) inputTensorAtIndex:v4];
  v6 = [*(v3 + 232) inputTensorAtIndex:1];
  v7 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v8 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v7 || (v8 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Prefix linking not supported by MPS AMD kernels. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  if (*(v5 + 8) != *(v6 + 8))
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "AMD kernels only support same source and weights data type. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  v9 = [*(v3 + 232) graph];
  v10 = *(v9 + 64);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
    v16 = -1;
    goto LABEL_23;
  }

  v13 = v9;
  v14 = *(a2 + 120);
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v11;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v13);
    v19 = *v11;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        goto LABEL_9;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      goto LABEL_9;
    }

    v16 = *(*v11 + 76);
LABEL_9:
    ++v11;
  }

  while (v11 != v12);
  if (v16 == -1)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if (v15 != -1)
    {
      v20 = *(v3 + 16);
      if (*(a2 + 120) == 1)
      {
        goto LABEL_21;
      }

LABEL_26:
      v21 = [v20 objectAtIndexedSubscript:v15];
      goto LABEL_27;
    }

LABEL_23:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = -1;
  v20 = *(v3 + 16);
  if (*(a2 + 120) != 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v21 = *(v3 + 112);
LABEL_27:
  v22 = [v20 objectAtIndexedSubscript:v16];
  v23 = *(a2 + 8);
  v24 = *MEMORY[0x277CD7408];
  v25 = *(&v21->super.isa + v24);
  v26 = *MEMORY[0x277CD73F0];
  v27 = *(&v21->super.isa + v26);
  if (v27 >= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = *(&v21->super.isa + v26);
  }

  if (v27 < 2)
  {
    v39 = 1;
LABEL_37:
    if ((v39 ^ (-1 << v28)) != 0xFFFFFFFF)
    {
      v40 = (v21 + *MEMORY[0x277CD7428]);
      v42 = v40[6];
      v41 = v40[7];
      v44 = v40[4];
      v43 = v40[5];
      v46 = v40[2];
      v45 = v40[3];
      v48 = *v40;
      v47 = v40[1];
      do
      {
        v104 = v48;
        v105 = v47;
        v106 = v46;
        v107 = v45;
        v108 = v44;
        v109 = v43;
        v110 = v42;
        v111 = v41;
        v49 = *(&v104 + (v28 & 0xF));
        if (v25 != v49 && v49 != 0)
        {
          return 0;
        }

        v25 *= *(&v21->super.isa + 4 * (v28++ & 0xF) + *MEMORY[0x277CD73D0]);
      }

      while (v28 != 16);
    }

LABEL_45:
    v51 = *(v22 + v24);
    v52 = *(v22 + v26);
    v53 = 16;
    if (v52 < 0x10)
    {
      v53 = v52;
    }

    if (v52 >= 2)
    {
      v54 = (v22 + *MEMORY[0x277CD7428]);
      v56 = v54[6];
      v55 = v54[7];
      v58 = v54[4];
      v57 = v54[5];
      v60 = v54[2];
      v59 = v54[3];
      v62 = *v54;
      v61 = v54[1];
      v63 = 1;
      v64 = 1;
      while (1)
      {
        v96 = v62;
        v97 = v61;
        v98 = v60;
        v99 = v59;
        v100 = v58;
        v101 = v57;
        v102 = v56;
        v103 = v55;
        if (v51 != *(&v96 + (v63 & 0xF)))
        {
          return 0;
        }

        v51 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v63 & 0xF));
        v95 = *(v22 + *MEMORY[0x277CD73D8]);
        v64 |= 1 << *(&v95 | v63++ & 0xF);
        if (v53 == v63)
        {
          goto LABEL_53;
        }
      }
    }

    v64 = 1;
LABEL_53:
    if (v52 <= 0xF && (v64 ^ (-1 << v53)) != 0xFFFFFFFF)
    {
      v65 = (v22 + *MEMORY[0x277CD7428]);
      v67 = v65[6];
      v66 = v65[7];
      v69 = v65[4];
      v68 = v65[5];
      v71 = v65[2];
      v70 = v65[3];
      v73 = *v65;
      v72 = v65[1];
      do
      {
        v87 = v73;
        v88 = v72;
        v89 = v71;
        v90 = v70;
        v91 = v69;
        v92 = v68;
        v93 = v67;
        v94 = v66;
        v74 = *(&v87 + (v53 & 0xF));
        if (v51 != v74 && v74 != 0)
        {
          return 0;
        }

        v51 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v53++ & 0xF));
      }

      while (v53 != 16);
    }

    v76 = *(&v21->super.isa + *MEMORY[0x277CD73D8]);
    if (v76 <= 3u && BYTE1(v76) <= 3u && BYTE2(v76) <= 3u && BYTE3(v76) <= 3u)
    {
      v81 = vceq_s16((*&vzip1_s8(*&v76, *&v76) & 0xFF00FF00FF00FFLL), 0x3000200010000);
      if ((vminv_u16(v81) & 1) == 0)
      {
        if (v23 != 1)
        {
          if (v23 || (v81.i8[6] & 1) == 0)
          {
            goto LABEL_73;
          }

          v82 = !BYTE2(*(&v21->super.isa + *MEMORY[0x277CD73D8])) && v76 == 1;
          if (!v82 || BYTE1(*(&v21->super.isa + *MEMORY[0x277CD73D8])) != 2)
          {
            goto LABEL_73;
          }

          goto LABEL_89;
        }

        if ((v81.i8[6] & 1) == 0)
        {
          goto LABEL_73;
        }

        v84 = BYTE2(*(&v21->super.isa + *MEMORY[0x277CD73D8])) == 1 && v76 == 2;
        if (!v84 || BYTE1(*(&v21->super.isa + *MEMORY[0x277CD73D8])) != 0)
        {
          goto LABEL_73;
        }

        goto LABEL_100;
      }

      if (v23 < 2)
      {
        if (v23 == 1)
        {
LABEL_89:
          if (*(a2 + 12))
          {
            MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only HWIO weights format is supported with NHWC data format. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
            return 0;
          }
        }

LABEL_100:
        v86 = v22;
        *v121 = 65792;
        if (IsNDArraySliced(v21, v121) || IsNDArraySliced(v86, v121))
        {
          MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Slicing not supported by AMD kernel. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
          return 0;
        }

        return 1;
      }
    }

LABEL_73:
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NCHW/NHWC data format supported for source. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  v29 = (v21 + *MEMORY[0x277CD7428]);
  v31 = v29[6];
  v30 = v29[7];
  v33 = v29[4];
  v32 = v29[5];
  v35 = v29[2];
  v34 = v29[3];
  v37 = *v29;
  v36 = v29[1];
  v38 = 1;
  v39 = 1;
  while (1)
  {
    v113 = v37;
    v114 = v36;
    v115 = v35;
    v116 = v34;
    v117 = v33;
    v118 = v32;
    v119 = v31;
    v120 = v30;
    if (v25 != *(&v113 + (v38 & 0xF)))
    {
      return 0;
    }

    v25 *= *(&v21->super.isa + 4 * (v38 & 0xF) + *MEMORY[0x277CD73D0]);
    v112 = *(&v21->super.isa + *MEMORY[0x277CD73D8]);
    v39 |= 1 << *(&v112 | v38++ & 0xF);
    if (v28 == v38)
    {
      if (v27 <= 0xF)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x277CD73D8];
  v5 = *(a3 + v4);
  if (v5 > 3u || BYTE1(v5) > 3u || BYTE2(*(a3 + v4)) > 3u || BYTE3(*(a3 + v4)) > 3u || v5 != 50462976)
  {
    return 1;
  }

  v11 = *(a4 + 12);
  v12 = *(a2 + v4);
  if (v12 > 3u || BYTE1(v12) > 3u || (BYTE2(v12) <= 3u ? (v13 = BYTE3(v12) > 3u) : (v13 = 1), v13))
  {
    v14 = -1;
LABEL_23:
    v15 = v11 == 1;
    return (v14 == 0) & v15;
  }

  v14 = *(a4 + 8);
  v16 = vceq_s16((*&vzip1_s8(*&v12, *&v12) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v16))
  {
LABEL_38:
    v15 = v11 == 1;
    if (v14 == 1 && v11 == 1)
    {
      return 1;
    }

    return (v14 == 0) & v15;
  }

  if (v14 == 1)
  {
    if ((v16.i8[6] & 1) == 0)
    {
      return 0;
    }

    v19 = BYTE2(v12) == 1 && v12 == 2;
    if (!v19 || BYTE1(v12) != 0)
    {
      return 0;
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (!v14 && (v16.i8[6] & 1) != 0)
  {
    v17 = !BYTE2(v12) && v12 == 1;
    if (v17 && BYTE1(v12) == 2)
    {
      v14 = 1;
      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::EncodeNDArrayConvolution(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (((*(*a1 + 56))(a1, a4) & 1) == 0)
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  v195 = a3;
  v201 = a2;
  v242 = *(a4 + 2);
  v237 = *(a4 + 3);
  v226 = a4[3];
  v228 = a4[2];
  v241 = a4[4];
  v240 = a4[5];
  v236 = a4[6];
  v235 = a4[7];
  v215 = a4[9];
  v216 = a4[8];
  v224 = a4[10];
  v231 = a4[11];
  v220 = a4[12];
  v9 = a4[16];
  v8 = a4[17];
  v182 = *(v8 + *MEMORY[0x277CD7368]);
  v10 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v11 = *(a4 + 120);
  if (*(a4 + 120))
  {
    v10 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v12 = *(v8 + *v10);
  v183 = *(v8 + *MEMORY[0x277CD7360]);
  [v12 setLabel:?];
  v217 = *(v8 + *MEMORY[0x277CD7350]);
  v233 = [*(v9 + 232) inputTensorAtIndex:1];
  v184 = [*(v9 + 16) count];
  v13 = [*(v9 + 232) graph];
  v14 = *(v13 + 64);
  v15 = *v14;
  v16 = v14[1];
  v245 = v11;
  v223 = v9;
  if (*v14 == v16)
  {
    v19 = -1;
    goto LABEL_19;
  }

  v17 = v13;
  v18 = -1;
  v19 = -1;
  do
  {
    while (1)
    {
      v20 = *v15;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v17);
      v22 = *v15;
      if (v20 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v18 = *(v22 + 76);
      if (v22 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
      {
        goto LABEL_10;
      }

LABEL_7:
      if (++v15 == v16)
      {
        goto LABEL_11;
      }
    }

    if (v22 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = *v15++;
    v19 = *(v23 + 76);
  }

  while (v15 != v16);
LABEL_11:
  if (v19 == -1)
  {
    v11 = v245;
    v9 = v223;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_20:
      MTLReportFailure();
    }

LABEL_21:
    v18 = -1;
  }

  else
  {
    v11 = v245;
    v9 = v223;
    if (v245)
    {
      goto LABEL_21;
    }

    if (v18 == -1)
    {
LABEL_19:
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  v25 = [*(v9 + 16) objectAtIndexedSubscript:v19];
  v180 = *(*(v9 + 8) + 80 * v19 + 64);
  if (v11)
  {
    v26 = *(v9 + 112);
    v27 = v9 + 32;
    v28 = 2;
  }

  else
  {
    v26 = [*(v9 + 16) objectAtIndexedSubscript:v18];
    v28 = 0;
    v27 = *(v9 + 8) + 80 * v18;
  }

  v239 = *(v9 + 208);
  v29 = MEMORY[0x277CD73D8];
  v30 = *MEMORY[0x277CD73D8];
  v230 = v26;
  v31 = *(v26 + v30);
  if (v31 > 3u || BYTE1(v31) > 3u)
  {
    goto LABEL_32;
  }

  if (BYTE2(v31) > 3u || BYTE3(v31) > 3u)
  {
    goto LABEL_32;
  }

  v52 = vceq_s16((*&vzip1_s8(*&v31, *&v31) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v244 = v242;
  if (vminv_u16(v52))
  {
    goto LABEL_34;
  }

  if (v242 != 1)
  {
    if (!v242)
    {
      v244 = -1;
      if ((v52.i8[6] & 1) == 0)
      {
        goto LABEL_34;
      }

      v53 = !BYTE2(v31) && v31 == 1;
      if (!v53 || BYTE1(v31) != 2)
      {
        goto LABEL_34;
      }

      v33 = 1;
LABEL_33:
      v244 = v33;
      goto LABEL_34;
    }

LABEL_32:
    v33 = -1;
    goto LABEL_33;
  }

  v244 = -1;
  if (v52.i8[6])
  {
    v123 = BYTE2(v31) == 1 && v31 == 2;
    if (v123 && BYTE1(v31) == 0)
    {
      v244 = 0;
    }
  }

LABEL_34:
  v34 = *(&v239->super.isa + v30);
  if (v34 > 3u || BYTE1(v34) > 3u)
  {
    goto LABEL_41;
  }

  if (BYTE2(v34) > 3u || BYTE3(v34) > 3u)
  {
    goto LABEL_41;
  }

  v55 = vceq_s16((*&vzip1_s8(*&v34, *&v34) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v213 = v242;
  if (vminv_u16(v55))
  {
    goto LABEL_43;
  }

  if (v242 != 1)
  {
    if (!v242)
    {
      v213 = -1;
      if ((v55.i8[6] & 1) == 0)
      {
        goto LABEL_43;
      }

      v56 = !BYTE2(v34) && v34 == 1;
      if (!v56 || BYTE1(v34) != 2)
      {
        goto LABEL_43;
      }

      v36 = 1;
LABEL_42:
      v213 = v36;
      goto LABEL_43;
    }

LABEL_41:
    v36 = -1;
    goto LABEL_42;
  }

  v213 = -1;
  if (v55.i8[6])
  {
    v125 = BYTE2(v34) == 1 && v34 == 2;
    if (v125 && BYTE1(v34) == 0)
    {
      v213 = 0;
    }
  }

LABEL_43:
  v181 = *(v27 + 64);
  v179 = *(v223 + 192);
  v37 = [*(v223 + 232) inputTensorAtIndex:v28];
  v38 = [*(v223 + 232) outputTensorAtIndex:0];
  v197 = v37;
  v39 = *(v37 + 16);
  v41 = *v39;
  v40 = v39[1];
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v42 = *(v233 + 16);
  v44 = *v42;
  v43 = v42[1];
  if (v43 != v44)
  {
    if (((v43 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v45 = *(v38 + 16);
  v47 = *v45;
  v46 = v45[1];
  if (v46 != v47)
  {
    if (((v46 - v47) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v48 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__autoTuningParams;
  if (!v11)
  {
    v48 = &OBJC_IVAR___MPSNDArrayConvolution2D__autoTuningParams;
  }

  v49 = *(a4[17] + *v48);
  if (qword_27DF86990 == -1)
  {
    v196 = v38;
    v211 = _MergedGlobals_33;
    if (_MergedGlobals_33 == 1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86990, &__block_literal_global_3);
    v196 = v38;
    v211 = _MergedGlobals_33;
    if (_MergedGlobals_33 == 1)
    {
LABEL_56:
      MPSKernel_LogInfo(a4[17], 3uLL, "Forcing direct convolution\n");
    }
  }

  v50 = *&v25[*v29];
  v51 = -1;
  if (v50 <= 3u && BYTE1(v50) <= 3u && BYTE2(v50) <= 3u && BYTE3(v50) <= 3u)
  {
    v51 = v237;
    if (v50 != 50462976)
    {
      if (v237 == 1)
      {
        if (v50 != 16777731)
        {
          goto LABEL_96;
        }

        v51 = 0;
      }

      else
      {
        if (!v237 && v50 == 16777731)
        {
          v51 = 1;
          goto LABEL_97;
        }

LABEL_96:
        v51 = -1;
      }
    }
  }

LABEL_97:
  v58 = (*(*a1 + 48))(a1, v230, v25, a4);
  v59 = v58;
  if (!v58)
  {
LABEL_105:
    v200 = v51;
    v222 = v25;
    v173 = v59;
    if (v11)
    {
      v202 = v236 * v231 + v220;
      v203 = v235 * HIDWORD(v231) + HIDWORD(v220);
    }

    else
    {
      v202 = v231;
      v203 = HIDWORD(v231);
    }

    v64 = *(v197 + 8);
    v65 = *(v233 + 8);
    v66 = *(v196 + 8);
    if (v64 != -1879048176 && v64 != 268435472 && v64 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v65 != -1879048176 && v65 != 268435472 && v65 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v66 != -1879048176 && v66 != 268435472 && v66 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v64 != v65 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v244 >= 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v197 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v233 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v196 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v242)
    {
      v67 = 0;
      v68 = 0;
      v69 = 8;
      v70 = 8;
      v71 = 16;
    }

    else
    {
      v70 = 0;
      v69 = 0;
      v68 = 16;
      v67 = 16;
      v71 = 8;
    }

    v72 = *v68;
    v221 = *v69;
    v73 = *v67;
    v74 = 16;
    v243 = *v70;
    if (v237)
    {
      v75 = 24;
      v76 = 8;
      v77 = 0;
    }

    else
    {
      v77 = 16;
      v74 = 8;
      v76 = 24;
      v75 = 0;
    }

    v232 = MEMORY[0x18];
    v219 = *v71;
    v238 = *v71;
    v78 = MEMORY[0x18];
    v79 = *v75;
    v189 = *v74;
    v192 = *v76;
    v80 = *v77;
    v81 = *MEMORY[0x277CD7400];
    v82 = *MEMORY[0x277CD73C8];
    v83 = *&v230[v81] / (*&v230[v82] >> 3);
    if (v244)
    {
      v84 = v221;
    }

    else
    {
      v84 = *&v230[v81] / (*&v230[v82] >> 3);
    }

    v188 = v84;
    if (!v244)
    {
      LODWORD(v83) = v72;
    }

    v191 = v83;
    v85 = *(&v239->super.isa + v81) / (*(&v239->super.isa + v82) >> 3);
    if (v213)
    {
      v86 = v243;
    }

    else
    {
      v86 = *(&v239->super.isa + v81) / (*(&v239->super.isa + v82) >> 3);
    }

    if (!v213)
    {
      LODWORD(v85) = v73;
    }

    v190 = v85;
    v87 = *(&v222->super.super.isa + v81) / (*(&v222->super.super.isa + v82) >> 3);
    v193 = v80;
    if (v200)
    {
      v88 = v87;
    }

    else
    {
      v88 = v80;
    }

    v204 = v88;
    if (v200)
    {
      LODWORD(v87) = v79;
    }

    v176 = v87;
    v177 = v86;
    if (v189 * v224 != v228 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v226 != v79 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v192 != v240 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v193 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v78 != v232 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v89 = v228;
    if (v245)
    {
      v89 = v226;
    }

    if (v89 != v72 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v90 = v228;
    if (!v245)
    {
      v90 = v226;
    }

    if (v90 != v73 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v307 = 0;
    v289 = v217;
    v308 = v64;
    v309 = v65;
    v310 = v211;
    if (v245)
    {
      v91 = v226 / v224;
    }

    else
    {
      v91 = v228 / v224;
    }

    if (v245)
    {
      v92 = v228 / v224;
    }

    else
    {
      v92 = v226 / v224;
    }

    v290 = v221;
    v291 = v219;
    v292 = v243;
    v293 = v238;
    v207 = v91;
    v294 = v91;
    v295 = v92;
    v210 = v92;
    v296 = v224;
    v297 = v232;
    v298 = v236;
    v299 = v235;
    v300 = v216;
    v301 = v215;
    v302 = v241;
    v303 = v240;
    v304 = __PAIR64__(v203, v202);
    v305 = v245;
    v306 = v244;
    v307 = v200;
    if (v49 || (v49 = a1[3]) != 0)
    {
      v93 = vorrq_s8(vandq_s8(vshlq_u32(*(v49 + 8), xmmword_239B14EF0), xmmword_239B14F20), vandq_s8(vshlq_u32(*(v49 + 24), xmmword_239B14F00), xmmword_239B14F10));
      v94 = vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
      v95.i64[0] = 0x100000001;
      v95.i64[1] = 0x100000001;
      v96 = vandq_s8(*(v49 + 60), v95);
      v97 = vandq_s8(*(v49 + 44), xmmword_239B14F30);
      v98.i64[0] = v97.u32[2];
      v98.i64[1] = v97.u32[3];
      v99 = v98;
      v98.i64[0] = v96.u32[2];
      v98.i64[1] = v96.u32[3];
      v100 = v98;
      v98.i64[0] = v97.u32[0];
      v98.i64[1] = v97.u32[1];
      v101 = v98;
      v98.i64[0] = v96.u32[0];
      v98.i64[1] = v96.u32[1];
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(v101, xmmword_239B14F50), vshlq_u64(v98, xmmword_239B14F40)), vorrq_s8(vshlq_u64(v99, xmmword_239B14F70), vshlq_u64(v100, xmmword_239B14F60)));
      v103 = *&vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL)) | ((*(v49 + 76) & 1) << 43) | v94.i32[0] | (8 * (*(v49 + 4) & 7)) | v94.i32[1] | *v49 & 7 | ((*(v49 + 40) & 7u) << 28);
      v104 = v201;
    }

    else
    {
      v118 = (*(*a1 + 80))(a1);
      v104 = v201;
      if ((v308 | 0x80000000) == 0x90000010)
      {
        v119 = v309 == 268435472 || v309 == -1879048176;
      }

      else
      {
        v119 = 0;
      }

      v103 = (*(&MPSNDArrayConvolutionDeviceBehaviorAMD::GetKernelParameters(MPSKernel *,MPSNDArrayConvolutionDispatchKeyAMD const&,void *)const::amdKernelParametersGetter[4 * (v118 - 5)] + 2 * v119 + v306))(&v289);
    }

    v105 = a4[17];
    if ((v103 & 0x100000000000) != 0)
    {
      MPSKernel_LogInfo(v105, 3uLL, "optimal parameter set found\n");
    }

    else
    {
      MPSKernel_LogInfo(v105, 3uLL, "optimal parameter set not found\n");
    }

    v208 = v103 & 7;
    if ((v103 & 7) <= 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v218 = (v103 >> 3) & 7;
    if (v218 <= 1 && v244 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v199 = (v103 >> 6) & 7;
    v106 = 1 << ((v103 >> 6) & 7);
    v209 = (v103 >> 9) & 7;
    v206 = (v103 >> 12) & 7;
    v229 = v106 << ((v103 >> 9) & 7) << ((v103 >> 12) & 7);
    if (v229 <= 3 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v178 = (v103 >> 18) & 7;
    v186 = (v103 >> 25) & 7;
    v107 = 1 << v178 << v186;
    v212 = (1 << v208);
    if (((4 * (v107 << ((v103 >> 36) & 3)) - 1) & v212) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v194 = (v103 >> 21) & 7;
    v108 = (v103 >> 28) & 7;
    v109 = 1 << v194 << ((v103 >> 28) & 7);
    if (((4 * (v109 << ((v103 >> 34) & 3)) - 1) & v229) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v205 = (v103 >> 15) & 7;
    v172 = 1 << v205;
    v187 = 1 << v218;
    if ((((1 << v205) - 1) & (1 << v218)) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v227 = (v103 >> 31) & 7;
    if (1 << v227 != 4 * (1 << v186 << v108) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((~v103 & 0x18000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v103 & 0x80000000000) == 0)
    {
LABEL_194:
      v110 = [*(a4[16] + 232) finalOp];
      (*(*v110 + 16))(v110);
      *v288 = 65792;
      IsNDArraySliced(v239, v288);
      if (v206)
      {
        v111 = 0;
      }

      else
      {
        v111 = v229 == v106;
      }

      v113 = v111 && v209 == 0;
      v114 = *(v197 + 8);
      if (v114 > 285212703)
      {
        if (v114 <= 536870915)
        {
          if (v114 > 301989895)
          {
            if (v114 == 301989896)
            {
              v115 = 512;
              v116 = *(v233 + 8);
              if (v116 > 285212703)
              {
                goto LABEL_251;
              }

              goto LABEL_270;
            }

            if (v114 == 335544328)
            {
              v115 = 544;
              v116 = *(v233 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            }
          }

          else
          {
            if (v114 == 285212704)
            {
              v115 = 416;
              v116 = *(v233 + 8);
              if (v116 > 285212703)
              {
                goto LABEL_251;
              }

              goto LABEL_270;
            }

            if (v114 == 285212736)
            {
              v115 = 448;
              v116 = *(v233 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            }
          }
        }

        else if (v114 <= 536870927)
        {
          if (v114 == 536870916)
          {
            v115 = 0;
            v116 = *(v233 + 8);
            if (v116 > 285212703)
            {
              goto LABEL_251;
            }

            goto LABEL_270;
          }

          if (v114 == 536870920)
          {
            v115 = 32;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }

        else
        {
          switch(v114)
          {
            case 536870928:
              v115 = 64;
              v116 = *(v233 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            case 536870944:
              v115 = 96;
              v116 = *(v233 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            case 536870976:
              v115 = 128;
              v116 = *(v233 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
          }
        }
      }

      else if (v114 <= 31)
      {
        if (v114 > 7)
        {
          if (v114 == 8)
          {
            v115 = 192;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }

          if (v114 == 16)
          {
            v115 = 224;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }

        else
        {
          if (v114 == -1879048176)
          {
            v115 = 384;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }

          if (v114 == 4)
          {
            v115 = 160;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }
      }

      else if (v114 <= 268435463)
      {
        if (v114 == 32)
        {
          v115 = 256;
          v116 = *(v233 + 8);
          if (v116 <= 285212703)
          {
            goto LABEL_270;
          }

          goto LABEL_251;
        }

        if (v114 == 64)
        {
          v115 = 288;
          v116 = *(v233 + 8);
          if (v116 <= 285212703)
          {
            goto LABEL_270;
          }

          goto LABEL_251;
        }
      }

      else
      {
        switch(v114)
        {
          case 268435464:
            v115 = 480;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          case 268435472:
            v115 = 320;
            v116 = *(v233 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          case 268435488:
            v115 = 352;
            v116 = *(v233 + 8);
            if (v116 > 285212703)
            {
              goto LABEL_251;
            }

LABEL_270:
            if (v116 <= 31)
            {
              if (v116 > 7)
              {
                if (v116 == 8)
                {
                  v120 = 6144;
                  goto LABEL_311;
                }

                if (v116 == 16)
                {
                  v120 = 7168;
                  goto LABEL_311;
                }
              }

              else
              {
                if (v116 == -1879048176)
                {
                  v120 = 12288;
                  goto LABEL_311;
                }

                if (v116 == 4)
                {
                  v120 = 5120;
                  goto LABEL_311;
                }
              }
            }

            else if (v116 <= 268435463)
            {
              if (v116 == 32)
              {
                v120 = 0x2000;
                goto LABEL_311;
              }

              if (v116 == 64)
              {
                v120 = 9216;
                goto LABEL_311;
              }
            }

            else
            {
              switch(v116)
              {
                case 268435464:
                  v120 = 15360;
                  goto LABEL_311;
                case 268435472:
                  v120 = 10240;
                  goto LABEL_311;
                case 268435488:
                  v120 = 11264;
                  goto LABEL_311;
              }
            }

LABEL_310:
            v120 = 18432;
LABEL_311:
            v121 = v120 | v115;
            if (!v245)
            {
              goto LABEL_380;
            }

            if (v114 > 285212703)
            {
              if (v114 <= 536870915)
              {
                if (v114 > 301989895)
                {
                  if (v114 == 301989896)
                  {
                    v122 = 0x80000;
                    goto LABEL_379;
                  }

                  if (v114 == 335544328)
                  {
                    v122 = 557056;
                    goto LABEL_379;
                  }
                }

                else
                {
                  if (v114 == 285212704)
                  {
                    v122 = 425984;
                    goto LABEL_379;
                  }

                  if (v114 == 285212736)
                  {
                    v122 = 458752;
                    goto LABEL_379;
                  }
                }
              }

              else if (v114 <= 536870927)
              {
                if (v114 == 536870916)
                {
                  v122 = 0;
                  goto LABEL_379;
                }

                if (v114 == 536870920)
                {
                  v122 = 0x8000;
                  goto LABEL_379;
                }
              }

              else
              {
                switch(v114)
                {
                  case 536870928:
                    v122 = 0x10000;
                    goto LABEL_379;
                  case 536870944:
                    v122 = 98304;
                    goto LABEL_379;
                  case 536870976:
                    v122 = 0x20000;
                    goto LABEL_379;
                }
              }
            }

            else if (v114 <= 31)
            {
              if (v114 > 7)
              {
                if (v114 == 8)
                {
                  v122 = 196608;
                  goto LABEL_379;
                }

                if (v114 == 16)
                {
                  v122 = 229376;
                  goto LABEL_379;
                }
              }

              else
              {
                if (v114 == -1879048176)
                {
                  v122 = 393216;
                  goto LABEL_379;
                }

                if (v114 == 4)
                {
                  v122 = 163840;
                  goto LABEL_379;
                }
              }
            }

            else if (v114 <= 268435463)
            {
              if (v114 == 32)
              {
                v122 = 0x40000;
                goto LABEL_379;
              }

              if (v114 == 64)
              {
                v122 = 294912;
                goto LABEL_379;
              }
            }

            else
            {
              switch(v114)
              {
                case 268435464:
                  v122 = 491520;
                  goto LABEL_379;
                case 268435472:
                  v122 = 327680;
                  goto LABEL_379;
                case 268435488:
                  v122 = 360448;
LABEL_379:
                  v121 |= v122;
LABEL_380:
                  v127 = *(v196 + 8);
                  if (v127 > 285212703)
                  {
                    if (v127 <= 536870915)
                    {
                      if (v127 > 301989895)
                      {
                        if (v127 == 301989896)
                        {
                          v128 = 16;
                          goto LABEL_424;
                        }

                        if (v127 == 335544328)
                        {
                          v128 = 17;
                          goto LABEL_424;
                        }
                      }

                      else
                      {
                        if (v127 == 285212704)
                        {
                          v128 = 13;
                          goto LABEL_424;
                        }

                        if (v127 == 285212736)
                        {
                          v128 = 14;
                          goto LABEL_424;
                        }
                      }
                    }

                    else if (v127 <= 536870927)
                    {
                      if (v127 == 536870916)
                      {
                        v128 = 0;
                        goto LABEL_424;
                      }

                      if (v127 == 536870920)
                      {
                        v128 = 1;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      switch(v127)
                      {
                        case 536870928:
                          v128 = 2;
                          goto LABEL_424;
                        case 536870944:
                          v128 = 3;
                          goto LABEL_424;
                        case 536870976:
                          v128 = 4;
                          goto LABEL_424;
                      }
                    }
                  }

                  else if (v127 <= 31)
                  {
                    if (v127 > 7)
                    {
                      if (v127 == 8)
                      {
                        v128 = 6;
                        goto LABEL_424;
                      }

                      if (v127 == 16)
                      {
                        v128 = 7;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      if (v127 == -1879048176)
                      {
                        v128 = 12;
                        goto LABEL_424;
                      }

                      if (v127 == 4)
                      {
                        v128 = 5;
                        goto LABEL_424;
                      }
                    }
                  }

                  else if (v127 <= 268435463)
                  {
                    if (v127 == 32)
                    {
                      v128 = 8;
                      goto LABEL_424;
                    }

                    if (v127 == 64)
                    {
                      v128 = 9;
                      goto LABEL_424;
                    }
                  }

                  else
                  {
                    switch(v127)
                    {
                      case 268435464:
                        v128 = 15;
                        goto LABEL_424;
                      case 268435472:
                        v128 = 10;
                        goto LABEL_424;
                      case 268435488:
                        v128 = 11;
                        goto LABEL_424;
                    }
                  }

                  v128 = 18;
LABEL_424:
                  v234 = v232;
                  v281 = -1;
                  v280 = -1;
                  v282 = 0;
                  v283 = v128 | v121;
                  v284 = 0u;
                  v285 = 0u;
                  v286 = v184 | (v245 << 8) | 0x10000u;
                  v287 = 0;
                  v185 = v113;
                  v174 = v215 * (v240 - 1);
                  v175 = v216 * (v241 - 1);
                  v129 = 1 << v178 << v194;
                  v130 = 1 << v209;
                  v131 = 1 << v206;
                  v198 = (v243 + 1) >> 1;
                  if ((v103 & 0x80000000000) != 0)
                  {
                    v134 = (v238 + 1) >> 1;
                    if (v185)
                    {
                      v135 = (v103 >> 6) & 7;
                      v136 = (v134 * v198 + v106 - 1) >> ((v103 >> 6) & 7);
                      v137 = 1;
                    }

                    else
                    {
                      v234 = (v232 + v131 - 1) >> v206;
                      v135 = (v103 >> 6) & 7;
                      v136 = ((v106 + v198) - 1) >> ((v103 >> 6) & 7);
                      v137 = (v134 + v130 - 1) >> v209;
                    }

                    v138 = v183;
                    v139 = (v210 + v212 - 1) >> (v103 & 7);
                    v140 = v139 * v224;
                    if ((v103 & 0x4000000000) != 0)
                    {
                      v141 = v137 * v136;
                    }

                    else
                    {
                      v141 = v139 * v224;
                    }

                    v225 = v141;
                    if ((v103 & 0x4000000000) != 0)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = v137 * v136;
                    }

                    v214 = v142;
                    LOBYTE(v199) = v135;
                  }

                  else
                  {
                    if (v131 == v229)
                    {
                      v234 = (v232 + v131 - 1) >> v206;
                      v132 = v243;
                      v133 = v238;
                    }

                    else if (v185)
                    {
                      v132 = (v106 + v238 * v243 - 1) >> v199;
                      v133 = 1;
                    }

                    else
                    {
                      v234 = (v232 + v131 - 1) >> v206;
                      v132 = (v243 + v106 - 1) >> v199;
                      v133 = (v238 + v130 - 1) >> v209;
                    }

                    v143 = (v210 + v212 - 1) >> (v103 & 7);
                    v144 = v143 * v224;
                    if (v244 == 1)
                    {
                      v225 = 1;
                      if ((v103 >> 38))
                      {
                        v145 = v133 * v132 * v234;
                      }

                      else
                      {
                        v145 = v144;
                      }

                      v214 = v145;
                      if ((v103 >> 38))
                      {
                        v146 = v144;
                      }

                      else
                      {
                        v146 = v133 * v132 * v234;
                      }

                      v234 = v146;
                    }

                    else
                    {
                      if ((v103 >> 38))
                      {
                        v147 = v133 * v132;
                      }

                      else
                      {
                        v147 = v143 * v224;
                      }

                      v225 = v147;
                      if ((v103 >> 38))
                      {
                        v148 = v144;
                      }

                      else
                      {
                        v148 = v133 * v132;
                      }

                      v214 = v148;
                    }

                    v104 = v201;
                    v138 = v183;
                    v129 = 1 << v178 << v194;
                  }

                  v171 = v138;
                  v170 = *(v223 + 232);
                  MPSLibrary::CreateUberShaderKey();
                  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                  [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                  if ([PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] < (v129 << v227 << v205) && MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure();
                  }

                  [v104 setComputePipelineState:PipelineStateForMPSKey];
                  MPSLibrary::ReleaseComputeState();
                  MPSLibrary::ReleaseMPSKey();
                  v278 = 0u;
                  v279 = 0u;
                  v276 = 0u;
                  v277 = 0u;
                  v274 = 0u;
                  v275 = 0u;
                  v272 = 0u;
                  v273 = 0u;
                  v270 = 0u;
                  v271 = 0u;
                  v268 = 0u;
                  v269 = 0u;
                  v266 = 0u;
                  v267 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v263 = 0u;
                  v261 = 0;
                  __p = __PAIR64__(v210, v207);
                  v250 = __PAIR64__(v190, v191);
                  v251 = v176;
                  v252 = __PAIR64__(v219, v221);
                  v253 = __PAIR64__(v238, v243);
                  v254 = v241;
                  v255 = v240;
                  v256 = v176 * v189;
                  v258 = v235;
                  v257 = v236;
                  v260 = v215;
                  v259 = v216;
                  LODWORD(v150) = v202 - (v175 + 1) / 2;
                  HIDWORD(v150) = v203 - (v174 + 1) / 2;
                  v262 = v150;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v151) = 0;
                  v263 = v151;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v152) = 0;
                  v264 = v152;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v153) = 0;
                  v265 = v153;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v154) = 0;
                  v266 = v154;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v155) = 0;
                  v267 = v155;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v156) = 0;
                  v268 = v156;
                  LODWORD(v269) = v188 * v219 * v191;
                  DWORD1(v269) = v177 * v238 * v190;
                  DWORD2(v269) = v232;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v157) = 0;
                  v270 = v157;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v158) = 0;
                  v271 = v158;
                  LODWORD(v272) = v188;
                  WORD3(v272) = v203 - (v174 + 1) / 2;
                  WORD2(v272) = v202 - (v175 + 1) / 2;
                  DWORD2(v272) = v192 * v189 * v193;
                  HIDWORD(v272) = v204 * v192 * v189;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v159) = 0;
                  *&v273 = v159;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v160) = 0;
                  *(&v273 + 1) = v160;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v161) = 0;
                  *&v274 = v161;
                  DWORD2(v274) = v188 * v219;
                  HIDWORD(v274) = v177 * v238;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v162) = 0;
                  *&v275 = v162;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v163) = 0;
                  *(&v275 + 1) = v163;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v164) = 0;
                  *&v276 = v164;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v165) = 0;
                  *(&v276 + 1) = v165;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v166) = 0;
                  v277 = v166;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v167) = 0;
                  v278 = v167;
                  *&v279 = __PAIR64__(v204, v177);
                  WORD4(v279) = v204;
                  WORD5(v279) = v204 * v192 * v189;
                  MPSSetNDArraysOnComputeEncoder(v104, v223, 4, 0, 0);
                  [v104 setBuffer:objc_msgSend(v230 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v230, 0, 4, 0, 0) + v181, 29}];
                  [v104 setBuffer:-[MPSTemporaryNDArray buffer](v222 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v222, 0, 4, 0, 0) + v180, 28}];
                  [v104 setBuffer:-[MPSNDArray buffer](v239 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v239, 0, 4, 0, 0) + v179, 27}];
                  objc_msgSend_setBytes_length_atIndex_(v104);
                  if ((v103 & 0x80000000000) != 0)
                  {
                    if (4 * (16 * ((v229 << v218) + ((v187 + v245) << v208))) <= (64 << v227))
                    {
                      v168 = (64 << v227);
                    }

                    else
                    {
                      v168 = 64 * ((v229 << v218) + ((v187 + v245) << v208));
                    }

                    if (!v205)
                    {
                      goto LABEL_467;
                    }
                  }

                  else if (v244 == 1)
                  {
                    v168 = 4 * (((v187 + 1) << (v199 + v209 + v206)) + ((v187 + v245) << v208));
                    if (!v205)
                    {
LABEL_467:
                      [v104 setThreadgroupMemoryLength:v168 atIndex:0];
                      [v104 setBuffer:0 offset:0 atIndex:25];
                      v248[0] = v225;
                      v248[1] = v214;
                      v248[2] = v234;
                      v246 = (v129 << v227 << v205);
                      v247 = vdupq_n_s64(1uLL);
                      [v104 dispatchThreadgroups:v248 threadsPerThreadgroup:&v246];
                      if (v173)
                      {
                        MPSDecrementReadCount(v222);
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    if (v200 == 1)
                    {
                      v169 = 1;
                    }

                    else
                    {
                      v169 = v245;
                    }

                    v168 = 4 * ((v229 << v218) + ((v187 + v169) << v208));
                    if (!v205)
                    {
                      goto LABEL_467;
                    }
                  }

                  if (v168 <= (v172 >> 1) << (v194 + v178 + v227 + 4))
                  {
                    v168 = (v172 >> 1) << (v194 + v178 + v227 + 4);
                  }

                  goto LABEL_467;
              }
            }

            v122 = 589824;
            goto LABEL_379;
        }
      }

      v115 = 576;
      v116 = *(v233 + 8);
      if (v116 <= 285212703)
      {
        goto LABEL_270;
      }

LABEL_251:
      if (v116 <= 536870915)
      {
        if (v116 > 301989895)
        {
          if (v116 == 301989896)
          {
            v120 = 0x4000;
            goto LABEL_311;
          }

          if (v116 == 335544328)
          {
            v120 = 17408;
            goto LABEL_311;
          }
        }

        else
        {
          if (v116 == 285212704)
          {
            v120 = 13312;
            goto LABEL_311;
          }

          if (v116 == 285212736)
          {
            v120 = 14336;
            goto LABEL_311;
          }
        }
      }

      else if (v116 <= 536870927)
      {
        if (v116 == 536870916)
        {
          v120 = 0;
          goto LABEL_311;
        }

        if (v116 == 536870920)
        {
          v120 = 1024;
          goto LABEL_311;
        }
      }

      else
      {
        switch(v116)
        {
          case 536870928:
            v120 = 2048;
            goto LABEL_311;
          case 536870944:
            v120 = 3072;
            goto LABEL_311;
          case 536870976:
            v120 = 4096;
            goto LABEL_311;
        }
      }

      goto LABEL_310;
    }

    if (v227 != 5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (((1 << v178 << v194 << v227) - 64) >= 0xC1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v103 & 0x40000000000) != 0)
    {
      if (v178 && v194 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v212 == 4 * v107 && 4 * v109 == v229 || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_192;
      }
    }

    else if (4 * (v212 >> (v186 + 2)) * (0x10u >> (v178 + v194)) * (v229 >> (v108 + 2)) < 0x81 || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_192;
    }

    MTLReportFailure();
LABEL_192:
    if (16 * ((v229 + v212) << v218) > 0x2000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v205 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_194;
  }

  v60 = v58;
  v61 = *(v233 + 16);
  v251 = 0;
  __p = 0;
  v250 = 0;
  v63 = *v61;
  v62 = v61[1];
  if (v62 != v63)
  {
    if (((v62 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v25 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v12, v195, v201, v25, &__p, v237, 0);
  v59 = v60;
  if (__p)
  {
    v250 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v51 = 0;
    goto LABEL_105;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, v201, v195, a4);
}

void sub_239AA0F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(__p);
  if (a50)
  {
    operator delete(a50);
    if (a66)
    {
LABEL_6:
      operator delete(a66);
      _Unwind_Resume(a1);
    }
  }

  else if (a66)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorAMD::~MPSNDArrayConvolutionDeviceBehaviorAMD(void **this)
{
  *this = &unk_284CAFB90;
  free(this[3]);
}

{
  *this = &unk_284CAFB90;
  free(this[3]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayConvolutionDeviceBehaviorAMD::MPSNDArrayConvolutionDeviceBehaviorAMD(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 5;
  if ((*(a3 + 1472) - 27) < 6)
  {
    v4 = 6;
  }

  a1[1] = v4;
  a1[2] = a3;
  *a1 = &unk_284CAFB90;
  a1[4] = a2;
  a1[5] = 133;
  a1[3] = 0;
  v5 = getenv("MPS_AUTO_TUNING_GRADIENT_PARAMETERS");
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    a1[3] = v7;
    *v7 = *v6 - 48;
    v7[1] = v6[1] - 48;
    v7[2] = v6[2] - 48;
    v7[3] = v6[3] - 48;
    v7[4] = v6[4] - 48;
    v7[5] = v6[5] - 48;
    v7[6] = v6[6] - 48;
    v7[7] = v6[7] - 48;
    v7[8] = v6[8] - 48;
    v7[9] = v6[9] - 48;
    v7[10] = v6[10] - 48;
    v7[11] = v6[12] + 10 * v6[11] - 528;
    v7[12] = v6[13] - 48;
    v7[13] = v6[14] - 48;
    v7[14] = v6[15] - 48;
    v7[15] = v6[16] - 48;
    return a1;
  }

  v9 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v9)
  {
    return a1;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
  a1[3] = v11;
  *v11 = (*v10 - 48);
  v11[1] = (v10[1] - 48);
  v11[2] = (v10[2] - 48);
  v11[3] = (v10[3] - 48);
  v11[4] = (v10[4] - 48);
  v11[5] = (v10[5] - 48);
  v11[6] = (v10[6] - 48);
  v11[7] = (v10[7] - 48);
  v11[8] = (v10[8] - 48);
  v11[9] = (v10[9] - 48);
  v11[10] = (v10[10] - 48);
  v11[11] = (v10[11] - 48);
  v11[12] = (v10[12] - 48);
  v11[13] = (v10[13] - 48);
  v11[14] = (v10[14] - 48);
  v11[15] = (v10[15] - 48);
  v11[16] = (v10[16] - 48);
  v11[17] = (v10[17] - 48);
  v11[18] = (v10[18] - 48);
  v11[19] = (v10[19] - 48);
  return a1;
}

const char *___ZL22forceDirectConvolutionv_block_invoke()
{
  result = getenv("MPS_DIRECT_CONVOLUTION");
  if (result)
  {
    result = atol(result);
    _MergedGlobals_33 = result == 1;
  }

  return result;
}

uint64_t EncodeCostVolume(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v149 = *(a1 + *MEMORY[0x277CD7350]);
  v138 = *(a1 + 144);
  v139 = *(a1 + 148);
  v152 = *(a1 + 152);
  v137 = *(a1 + 160);
  v135 = *(a1 + 156);
  v136 = *(a1 + 161);
  v134 = *(a1 + 162);
  v147 = *(a1 + 163);
  v7 = *(a1 + 168);
  v141 = *(a1 + 176);
  v142 = *(a1 + 184);
  v8 = [*(a4 + 232) inputTensorAtIndex:0];
  v9 = [*(a4 + 232) inputTensorAtIndex:1];
  v10 = [*(a4 + 232) inputTensorAtIndex:2];
  v153 = a4;
  v11 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    goto LABEL_24;
  }

  if (*v8 != 4 && MTLReportFailureTypeEnabled())
  {
    v124 = *v8;
    MTLReportFailure();
  }

  if (*v9 != 4 && MTLReportFailureTypeEnabled())
  {
    v124 = *v9;
    MTLReportFailure();
  }

  if (*v10 != 4 && MTLReportFailureTypeEnabled())
  {
    v124 = *v10;
    MTLReportFailure();
  }

  if (*v11 != 4 && MTLReportFailureTypeEnabled())
  {
    v124 = *v11;
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v8);
  BaseTensor::GetDimensionSize(v11);
  DimensionSize = BaseTensor::GetDimensionSize(v8);
  if (DimensionSize != BaseTensor::GetDimensionSize(v11) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v8);
  v13 = BaseTensor::GetDimensionSize(v10);
  if (v13 != BaseTensor::GetDimensionSize(v8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v9);
  v14 = BaseTensor::GetDimensionSize(v10);
  if (v14 != BaseTensor::GetDimensionSize(v9) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = BaseTensor::GetDimensionSize(v10);
  if (v152 == 1)
  {
    if (v15 == BaseTensor::GetDimensionSize(v11))
    {
      BaseTensor::GetDimensionSize(v10);
      BaseTensor::GetDimensionSize(v11);
    }

    v16 = BaseTensor::GetDimensionSize(v10);
    if (v16 == BaseTensor::GetDimensionSize(v11))
    {
      v17 = BaseTensor::GetDimensionSize(v10);
      if (v17 == BaseTensor::GetDimensionSize(v11))
      {
        goto LABEL_20;
      }
    }

    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v15 == BaseTensor::GetDimensionSize(v11))
    {
      BaseTensor::GetDimensionSize(v10);
      BaseTensor::GetDimensionSize(v11);
    }

    v18 = BaseTensor::GetDimensionSize(v10);
    if (v18 == BaseTensor::GetDimensionSize(v11))
    {
      v19 = BaseTensor::GetDimensionSize(v10);
      if (v19 == BaseTensor::GetDimensionSize(v11))
      {
        goto LABEL_20;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }
  }

  v122 = BaseTensor::GetDimensionSize(v10);
  v123 = BaseTensor::GetDimensionSize(v10);
  v128 = BaseTensor::GetDimensionSize(v11);
  v130 = BaseTensor::GetDimensionSize(v11);
  v124 = v122;
  v126 = v123;
  MTLReportFailure();
LABEL_20:
  if (BaseTensor::GetDimensionSize(v10) != 2)
  {
    BaseTensor::GetDimensionSize(v10);
  }

  if (BaseTensor::GetDimensionSize(v10) != 2 && BaseTensor::GetDimensionSize(v10) != 1 && MTLReportFailureTypeEnabled())
  {
    v124 = BaseTensor::GetDimensionSize(v10);
    MTLReportFailure();
  }

LABEL_24:
  v140 = a2;
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v175 = v20;
  v174 = v20;
  v173 = v20;
  v172 = v20;
  v171 = v20;
  *&v175 = [*(v153 + 16) count] | 0x10000;
  v21 = BaseTensor::GetDimensionSize(v11);
  v22 = BaseTensor::GetDimensionSize(v11);
  v23 = BaseTensor::GetDimensionSize(v11);
  v131 = BaseTensor::GetDimensionSize(v11);
  v24 = BaseTensor::GetDimensionSize(v9);
  v25 = BaseTensor::GetDimensionSize(v9);
  v133 = v9;
  v26 = BaseTensor::GetDimensionSize(v9);
  *&v27 = __PAIR64__(v25, v24);
  DWORD2(v27) = v26;
  v145 = v27;
  *&v27 = __PAIR64__(v22, v21);
  DWORD2(v27) = v23;
  v143 = v27;
  if (v152 == 1)
  {
    v28 = v21;
  }

  else
  {
    v28 = v23;
  }

  v29 = v10;
  if (v152 == 1)
  {
    v30 = v24;
  }

  else
  {
    v30 = v26;
  }

  if (v152 == 1)
  {
    v31 = v23;
  }

  else
  {
    v31 = v22;
  }

  if (v152 == 1)
  {
    v32 = v22;
  }

  else
  {
    v32 = v21;
  }

  v33 = BaseTensor::GetDimensionSize(v29);
  v34 = *(v149 + 1482);
  v170 = 0u;
  memset(&v169[16], 0, 32);
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  LODWORD(v167) = v28;
  *v169 = v34;
  *&v169[8] = vdupq_n_s64(1uLL);
  v35 = 2 * v28;
  if (!v152)
  {
    v43 = (v22 * v21 + v34 - 1) / v34;
    v39 = v131;
    v44 = 1;
    *&v169[24] = v43;
    *&v169[32] = 1;
    v148 = v131;
    *&v169[40] = v131;
    LODWORD(v45) = v28;
    if (v23 >= 0x11)
    {
      LODWORD(v45) = v23;
      v44 = 1;
      LODWORD(v46) = v28;
      v47 = 1;
      v48 = v28;
      v49 = v34;
      do
      {
        if (v49 <= 0x7F)
        {
          v44 *= 2;
          v49 *= 2;
        }

        else if (v48 >= 2)
        {
          v47 = (v45 + 15) >> 4;
          v46 = (v23 - 1 + v47) / v47;
          v48 = v46;
        }

        v45 = (v44 + v48 - 1) / v44;
      }

      while (v45 > 0x10);
      LODWORD(v167) = v46;
      *&v169[32] = v47;
      *&v169[8] = v44;
    }

    v56 = 0;
    v132 = v35 - 1;
    v150 = v31 * v32 - 1;
    DWORD1(v167) = v45;
    v51 = v28 - 1;
    v54 = 1;
    v42 = v34;
    goto LABEL_72;
  }

  v36 = v35 - 1;
  v37 = (v35 - 1) / v28;
  v38 = v31 * v32;
  v39 = v131;
  *&v169[24] = v37;
  v148 = v131;
  *&v169[40] = v131;
  v40 = 1;
  if (v34 <= v30)
  {
    v42 = v34;
    v41 = v34;
    if (v34 < 0x11)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v41 = v34;
    v42 = v34;
    do
    {
      v42 >>= 1;
      v40 *= 2;
      v41 >>= 1;
    }

    while (v42 > v30);
    *v169 = v42;
    if (v42 < 0x11)
    {
      goto LABEL_54;
    }
  }

  if (v30 / v42 <= 1)
  {
    do
    {
      v50 = v42;
      v42 >>= 1;
      v40 *= 2;
      v41 >>= 1;
    }

    while (v50 >= 0x22 && v30 / v42 < 2);
    *v169 = v42;
  }

LABEL_54:
  v51 = v28 - 1;
  v44 = 1;
  if (v28 >= 0x11)
  {
    LODWORD(v52) = v28;
    v53 = v28;
    LODWORD(v45) = v28;
    do
    {
      if (v41 <= 0x7F)
      {
        v44 *= 2;
        v41 *= 2;
        v40 >>= v40 > 1;
      }

      else if (v53 >= 2)
      {
        v37 = (v45 + 15) >> 4;
        v52 = (v51 + v37) / v37;
        v53 = v52;
      }

      v45 = (v44 + v53 - 1) / v44;
    }

    while (v45 > 0x10);
    *&v167 = __PAIR64__(v45, v52);
    *&v169[24] = v37;
    *&v169[8] = v44;
    v150 = v38 - 1;
    v54 = 1;
    if (v40 < 2)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  LODWORD(v45) = v28;
  v150 = v38 - 1;
  DWORD1(v167) = v28;
  v54 = 1;
  if (v40 >= 2)
  {
    do
    {
LABEL_64:
      v54 *= 2;
      v55 = v40 > 3;
      v40 >>= 1;
    }

    while (v55);
    *&v169[16] = v54;
  }

LABEL_66:
  *&v169[32] = (v150 + v54) / v54;
  if (v42 == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = v44 * v42 * v54;
  }

  v132 = v36;
LABEL_72:
  v57 = v145;
  HIDWORD(v57) = v39;
  v146 = v57;
  v58 = v143;
  HIDWORD(v58) = v39;
  v144 = v58;
  *&v170 = v56;
  v59 = v56 != 0;
  v60 = *(v133 + 2);
  if (v60 == 268435472)
  {
    v61 = 0x800000;
  }

  else
  {
    v61 = (v60 == -1879048176) << 24;
  }

  v62 = v141;
  v63 = 8;
  if (v141 >= 8)
  {
    v62 = 8;
  }

  if (v142 < 8)
  {
    v63 = v142;
  }

  v64 = v61 | (v147 << 22) | ((v33 == 1) << 21) | (v59 << 20) | v138 & 1 | (2 * (v139 & 7)) & 0x8F | (16 * (v152 & 1)) & 0x9F | (32 * (v135 & 3)) | (v137 << 8) & 0x7E001FFF | (v136 << 7) & 0x7E001FFF | (v134 << 9) & 0x7E001FFF | (v62 << 10) & 0x7E001FFF | ((v63 & 7) << 13) | ((v45 << 16) + 983040) & 0xF0000;
  *&v172 = v64;
  v127 = *(a1 + *MEMORY[0x277CD7360]);
  v129 = *(a1 + *MEMORY[0x277CD7368]);
  v125 = *(v153 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v66 = v64 & 0xFFE0FFFF;
  while (1)
  {
    v69 = [PipelineStateForMPSKey threadExecutionWidth];
    v70 = v69 <= 1 ? 1 : v69;
    if (v34 == v70 && v44 * v42 * v54 <= [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup])
    {
      break;
    }

    v71 = [PipelineStateForMPSKey threadExecutionWidth];
    if (v71 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v71;
    }

    v72 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    if (v72 >= 0x100)
    {
      v73 = 256;
    }

    else
    {
      v73 = v72;
    }

    MPSLibrary::ReleaseComputeState();
    if (v152)
    {
      if (v34 <= v30)
      {
        v42 = v34;
        v75 = v34;
        v74 = 1;
        if (v34 < 0x11)
        {
LABEL_112:
          if (v28 < 0x11)
          {
            v76 = v132 / v28;
            v44 = 1;
            LODWORD(v77) = v28;
            LODWORD(v83) = v28;
          }

          else
          {
            v76 = v132 / v28;
            v44 = 1;
            LODWORD(v77) = v28;
            v82 = v28;
            LODWORD(v83) = v28;
            do
            {
              if (v75 < v73)
              {
                v44 *= 2;
                v75 *= 2;
                v74 >>= v74 > 1;
              }

              else if (v82 >= 2)
              {
                v76 = (v83 + 15) >> 4;
                v77 = (v76 + v51) / v76;
                v82 = v77;
              }

              v83 = (v44 + v82 - 1) / v44;
            }

            while (v83 > 0x10);
          }

          v54 = 1;
          if (v74 >= 2)
          {
            do
            {
              v54 *= 2;
              v55 = v74 > 3;
              v74 >>= 1;
            }

            while (v55);
          }

          v67 = v44 * v42 * v54;
          if (v42 == 1)
          {
            v67 = 0;
          }

          v68 = (v54 + v150) / v54;
          goto LABEL_83;
        }
      }

      else
      {
        v74 = 1;
        v75 = v34;
        v42 = v34;
        do
        {
          v42 >>= 1;
          v74 *= 2;
          v75 >>= 1;
        }

        while (v42 > v30);
        if (v42 < 0x11)
        {
          goto LABEL_112;
        }
      }

      if (v30 / v42 <= 1)
      {
        do
        {
          v81 = v42;
          v42 >>= 1;
          v74 *= 2;
          v75 >>= 1;
        }

        while (v81 >= 0x22 && v30 / v42 < 2);
      }

      goto LABEL_112;
    }

    v76 = (v34 + v150) / v34;
    if (v28 < 0x11)
    {
      v67 = 0;
      v68 = 1;
      v54 = 1;
      v44 = 1;
      v42 = v34;
      LODWORD(v83) = v28;
      LODWORD(v77) = v28;
    }

    else
    {
      v68 = 1;
      v44 = 1;
      LODWORD(v77) = v28;
      v78 = v28;
      v79 = v34;
      LODWORD(v80) = v28;
      do
      {
        if (v79 < v73)
        {
          v44 *= 2;
          v79 *= 2;
        }

        else if (v78 >= 2)
        {
          v68 = (v80 + 15) >> 4;
          v77 = (v68 + v51) / v68;
          v78 = v77;
        }

        v80 = (v44 + v78 - 1) / v44;
      }

      while (v80 > 0x10);
      v67 = 0;
      v54 = 1;
      v42 = v34;
      v83 = (v44 + v78 - 1) / v44;
    }

LABEL_83:
    *&v167 = __PAIR64__(v83, v77);
    *v169 = v42;
    *&v169[8] = v44;
    *&v169[16] = v54;
    *&v169[24] = v76;
    *&v169[32] = v68;
    *&v169[40] = v148;
    *&v170 = v67;
    *&v172 = ((v83 & 0xF) << 16) | v66 | ((v67 != 0) << 20);
    v127 = *(a1 + *MEMORY[0x277CD7360]);
    v129 = *(a1 + *MEMORY[0x277CD7368]);
    v125 = *(v153 + 232);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  }

  v84 = [*(v153 + 16) objectAtIndexedSubscript:1];
  makeStrideBytes();
  v85 = (v84 + *MEMORY[0x277CD73D0]);
  v86.i64[0] = 0x100000001;
  v86.i64[1] = 0x100000001;
  v87 = vceqq_s32(*v85, v86);
  v88.i64[0] = v87.i32[0];
  v88.i64[1] = v87.i32[1];
  v89 = v88;
  v90 = vceqq_s32(v85[1], v86);
  v88.i64[0] = v90.i32[0];
  v88.i64[1] = v90.i32[1];
  v91 = v88;
  v92 = vceqq_s32(v85[2], v86);
  v88.i64[0] = v92.i32[0];
  v88.i64[1] = v92.i32[1];
  v93 = v88;
  v94 = vceqq_s32(v85[3], v86);
  v88.i64[0] = v94.i32[0];
  v88.i64[1] = v94.i32[1];
  v95 = v88;
  v88.i64[0] = v87.i32[2];
  v88.i64[1] = v87.i32[3];
  v96 = v88;
  v88.i64[0] = v90.i32[2];
  v88.i64[1] = v90.i32[3];
  v97 = v88;
  v88.i64[0] = v92.i32[2];
  v88.i64[1] = v92.i32[3];
  v98 = v88;
  v88.i64[0] = v94.i32[2];
  v88.i64[1] = v94.i32[3];
  v99 = vbicq_s8(v183, v88);
  v100 = vbicq_s8(v181, v98);
  v101 = vbicq_s8(v179, v97);
  v102 = vbicq_s8(v177, v96);
  v103 = vbicq_s8(v182, v95);
  v104 = vbicq_s8(v180, v93);
  v105 = vbicq_s8(v178, v91);
  v106 = vbicq_s8(v176, v89);
  v107 = *(v84 + *MEMORY[0x277CD73D8]);
  v108 = *(v84 + *MEMORY[0x277CD73C8]);
  if ((v108 & 0xFFF8) != 0)
  {
    v109 = v108 >> 3;
    v161[0] = v106;
    v161[1] = v102;
    v161[2] = v105;
    v161[3] = v101;
    v161[4] = v104;
    v161[5] = v100;
    v161[6] = v103;
    v161[7] = v99;
    v110 = *(v161 + (v107 & 0xF));
    v160[0] = v106;
    v160[1] = v102;
    v160[2] = v105;
    v160[3] = v101;
    v160[4] = v104;
    v160[5] = v100;
    v160[6] = v103;
    v160[7] = v99;
    v111 = *(v160 + (BYTE1(v107) & 0xF));
    v159[0] = v106;
    v159[1] = v102;
    v159[2] = v105;
    v159[3] = v101;
    v159[4] = v104;
    v159[5] = v100;
    v159[6] = v103;
    v159[7] = v99;
    v112 = *(v159 + (BYTE2(v107) & 0xF)) / v109;
    v158[0] = v106;
    v158[1] = v102;
    v158[2] = v105;
    v158[3] = v101;
    v158[4] = v104;
    v158[5] = v100;
    v158[6] = v103;
    v158[7] = v99;
    v113.i64[0] = v112;
    v113.i64[1] = *(v158 + (BYTE3(v107) & 0xF)) / v109;
    v114.i64[0] = v110 / v109;
    v114.i64[1] = v111 / v109;
  }

  else
  {
    v157[0] = v106;
    v157[1] = v102;
    v157[2] = v105;
    v157[3] = v101;
    v157[4] = v104;
    v157[5] = v100;
    v157[6] = v103;
    v157[7] = v99;
    v156[0] = v106;
    v156[1] = v102;
    v156[2] = v105;
    v156[3] = v101;
    v156[4] = v104;
    v156[5] = v100;
    v156[6] = v103;
    v156[7] = v99;
    v155[0] = v106;
    v155[1] = v102;
    v155[2] = v105;
    v155[3] = v101;
    v155[4] = v104;
    v155[5] = v100;
    v155[6] = v103;
    v155[7] = v99;
    v154[0] = v106;
    v154[1] = v102;
    v154[2] = v105;
    v154[3] = v101;
    v154[4] = v104;
    v154[5] = v100;
    v154[6] = v103;
    v154[7] = v99;
    v113.i64[0] = *(v155 + (BYTE2(v107) & 0xF));
    v113.i64[1] = *(v154 + (BYTE3(v107) & 0xF));
    v114.i64[0] = *(v157 + (v107 & 0xF));
    v114.i64[1] = *(v156 + (BYTE1(v107) & 0xF));
  }

  v166 = vuzp1q_s32(v114, v113);
  v165 = v146;
  v164 = v144;
  v115 = v7;
  *&v168 = v115;
  *(&v167 + 1) = __PAIR64__(v142, v141);
  MPSSetNDArraysOnComputeEncoder(v140, v153, 4, 0, 0);
  v116 = [*(v153 + 16) objectAtIndexedSubscript:1];
  [v140 setBuffer:objc_msgSend(v116 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v116, 0, 4, 0, 0) + *(*(v153 + 8) + 144), 27}];
  [v140 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v140);
  if ((atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_11))
  {
    unk_281475220 = 0u;
    xmmword_281475210 = 0u;
    dword_281475230 = 1065353216;
    qword_281475238 = 850045863;
    unk_281475240 = 0u;
    unk_281475250 = 0u;
    unk_281475260 = 0u;
    qword_281475270 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_281475210, &dword_2399F7000);
    __cxa_guard_release(&_MergedGlobals_11);
  }

  Buffer = MPSBufferCache::getBuffer(&xmmword_281475210, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
  v118 = [Buffer contents];
  v119 = v168;
  *v118 = v168;
  v118[1] = v119;
  v120 = v168;
  v118[2] = v168;
  v118[3] = v120;
  [v140 setBuffer:Buffer offset:0 atIndex:28];
  [v140 setThreadgroupMemoryLength:4 * v170 atIndex:0];
  v176 = *&v169[24];
  v177.i64[0] = *&v169[40];
  v162 = *v169;
  v163 = *&v169[16];
  [v140 dispatchThreadgroups:&v176 threadsPerThreadgroup:&v162];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMultiplySparse(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 structuredSparse])
  {
    v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
    v8 = [*(a4 + 16) objectAtIndexedSubscript:1];
    v9 = [*(a4 + 16) objectAtIndexedSubscript:2];
    v10 = *(a4 + 208);
    v11 = *MEMORY[0x277CD73D0];
    v12 = *&v9[v11 + 4];
    v13 = ((16 * *&v7[*MEMORY[0x277CD73C8]]) & 0xFFF80) + ((*&v9[*MEMORY[0x277CD73C8]] << 6) & 0x3FFE00u) + 256;
    *v115 = *&v10[v11];
    v92 = *v115;
    *&v115[8] = v12;
    *&v115[12] = vshl_u32(vdup_n_s32(v12), 0xFFFFFFFCFFFFFFFFLL);
    *&v115[20] = vdup_lane_s32(*v115, 0);
    *&v14 = -1;
    *(&v14 + 1) = -1;
    v105 = v14;
    v106 = v14;
    *&v103[16] = v14;
    v104 = v14;
    *v103 = v14;
    v15 = *&a1[*MEMORY[0x277CD7360]];
    *&v103[24] = 0;
    v72 = v15;
    v76 = *&a1[*MEMORY[0x277CD7368]];
    MPSLibrary::CreateUberShaderKey();
    [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), 0, v72, v76, 0, 0}];
    [a2 setBuffer:objc_msgSend(v7 offset:"buffer") atIndex:{0, 0}];
    [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 1}];
    [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{0, 2}];
    [a2 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{0, 3}];
    objc_msgSend_setBytes_length_atIndex_(a2);
    [a2 setThreadgroupMemoryLength:v13 atIndex:0];
    v110 = vshlq_u64(vaddw_u32(xmmword_239B19640, v92), xmmword_239B19650);
    *&v111 = 1;
    *v119 = xmmword_239B19660;
    *&v119[16] = 1;
    [a2 dispatchThreadgroups:&v110 threadsPerThreadgroup:v119];
    MPSLibrary::ReleaseMPSKey();
  }

  else
  {
    v16 = [a1 denseSparse];
    v17 = *(a4 + 16);
    if (v16)
    {
      v93 = [v17 objectAtIndexedSubscript:0];
      v90 = [*(a4 + 16) objectAtIndexedSubscript:1];
      v18 = [*(a4 + 16) objectAtIndexedSubscript:2];
      v19 = [*(a4 + 16) objectAtIndexedSubscript:3];
      v20 = MEMORY[0x277CD73D8];
      v21 = *(a4 + 208);
      *&v22 = -1;
      *(&v22 + 1) = -1;
      v117 = v22;
      v118 = v22;
      *&v115[16] = 0xFFFFFFFFFFFFFFFFLL;
      v116 = v22;
      *v115 = v22;
      v73 = *&a1[*MEMORY[0x277CD7360]];
      v77 = *&a1[*MEMORY[0x277CD7368]];
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      v83 = [PipelineStateForMPSKey threadExecutionWidth];
      v23 = *MEMORY[0x277CD7410];
      v24 = *&v21[v23];
      v25 = *&v21[v23 + 16];
      v26 = *v20;
      v27 = *&v21[v26];
      v28 = *&v21[v23 + 48];
      v96 = *&v21[v23 + 32];
      v97 = v28;
      v95[0] = v24;
      v95[1] = v25;
      v29 = *(v95 + (BYTE1(v27) & 0xF));
      v98[2] = v96;
      v98[3] = v28;
      v98[0] = v24;
      v98[1] = v25;
      LODWORD(v20) = *&v19[4 * (*&v19[v26] & 0xF) + v23];
      v30 = MEMORY[0x277CD7400];
      v31 = *MEMORY[0x277CD7400];
      v32 = v98 + (v27 & 0xF);
      v33 = *MEMORY[0x277CD73D0];
      v34 = *&v19[v33 + 4] * *&v19[v31];
      v35 = *&v21[v33 + 4] * *&v21[v31];
      v36 = [v18 lengthOfDimension:0];
      v37 = *v30;
      v38 = *&v19[v37];
      LODWORD(v37) = *&v21[v37];
      v87 = v36;
      LODWORD(v39) = v29;
      HIDWORD(v39) = *v32;
      *v103 = v39;
      *&v103[8] = v20;
      *&v103[12] = 1;
      *&v103[16] = v38;
      *&v103[24] = v37;
      *&v103[28] = v37;
      *&v104 = v34;
      DWORD2(v104) = v35;
      HIDWORD(v104) = v35;
      *&v105 = 1065353216;
      DWORD2(v105) = 1;
      HIDWORD(v105) = v34;
      LODWORD(v106) = 0;
      DWORD1(v106) = v35;
      *(&v106 + 1) = v35 | 0x100000000;
      v107 = *&v18[*MEMORY[0x277CD7410]];
      v108 = v83;
      v109 = 0;
      [a2 setComputePipelineState:PipelineStateForMPSKey];
      [a2 setBuffer:objc_msgSend(v19 offset:"buffer") atIndex:{0, 0}];
      [a2 setBuffer:objc_msgSend(v18 offset:"buffer") atIndex:{0, 1}];
      [a2 setBuffer:objc_msgSend(v90 offset:"buffer") atIndex:{0, 2}];
      [a2 setBuffer:objc_msgSend(v93 offset:"buffer") atIndex:{0, 3}];
      [a2 setBuffer:objc_msgSend(v21 offset:"buffer") atIndex:{0, 4}];
      objc_msgSend_setBytes_length_atIndex_(a2);
      [a2 setThreadgroupMemoryLength:32 * v83 atIndex:0];
      v110.i64[0] = (v87 + 510) >> 9;
      v110.i64[1] = (v29 + 31) >> 5;
      *&v111 = 1;
      *v119 = v83;
      *&v119[8] = xmmword_239B19630;
      [a2 dispatchThreadgroups:&v110 threadsPerThreadgroup:v119];
      MPSLibrary::ReleaseMPSKey();
    }

    else
    {
      v40 = [v17 objectAtIndexedSubscript:3];
      v94 = [*(a4 + 16) objectAtIndexedSubscript:0];
      v84 = [*(a4 + 16) objectAtIndexedSubscript:1];
      v89 = [*(a4 + 16) objectAtIndexedSubscript:2];
      v41 = *(a4 + 208);
      v42 = [a1 transposeSparse];
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v113 = v43;
      v114 = v43;
      v111 = 0xFFFFFFFFFFFFFFFFLL;
      v112 = v43;
      v110 = v43;
      [a1 sparseFormat];
      v88 = v42;
      [a1 sparseFormat];
      v74 = *&a1[*MEMORY[0x277CD7360]];
      v78 = *&a1[*MEMORY[0x277CD7368]];
      MPSLibrary::CreateUberShaderKey();
      v86 = MPSLibrary::GetPipelineStateForMPSKey();
      v44 = [v86 threadExecutionWidth];
      v45 = *MEMORY[0x277CD7410];
      v46 = *&v41[v45];
      v47 = *&v41[v45 + 16];
      v48 = *&v41[v45 + 48];
      v49 = *MEMORY[0x277CD73D8];
      v50 = *&v41[v49];
      v100 = *&v41[v45 + 32];
      v101 = v48;
      v99[0] = v46;
      v99[1] = v47;
      v81 = *(v99 + (BYTE1(v50) & 0xF));
      v102[2] = v100;
      v102[3] = v48;
      v102[0] = v46;
      v102[1] = v47;
      v91 = *(v102 + (v50 & 0xF));
      v51 = *&v40[4 * (v40[v49 + 1] & 0xF) + v45];
      v52 = *MEMORY[0x277CD7400];
      v53 = *MEMORY[0x277CD73D0];
      v54 = *&v40[v53 + 4] * *&v40[v52];
      v55 = v41;
      v56 = *&v41[v53 + 4] * *&v41[v52];
      v57 = [v94 lengthOfDimension:0];
      v58 = [a1 sparseFormat];
      v59 = v57;
      if (v58)
      {
        v59 = [v89 lengthOfDimension:0] - 1;
      }

      v82 = v59;
      v60 = [a1 sparseFormat];
      v61 = *MEMORY[0x277CD7400];
      v62 = *&v40[v61];
      v63 = 32 * v44 + 32;
      v64 = *&v55[v61];
      if (v60)
      {
        v63 = 32 * v44;
      }

      v80 = v63;
      *v103 = v81;
      *&v103[4] = v91;
      *&v103[12] = 1;
      *&v103[8] = v51;
      *&v103[20] = v62;
      *&v103[24] = v64;
      *&v103[28] = v64;
      LODWORD(v104) = 0;
      *(&v104 + 4) = __PAIR64__(v56, v54);
      HIDWORD(v104) = v56;
      *&v105 = 1065353216;
      *(&v105 + 1) = 1;
      *&v106 = __PAIR64__(v56, v54);
      *(&v106 + 1) = v56 | 0x100000000;
      v107 = *&v89[*MEMORY[0x277CD7410]];
      v108 = v44;
      v109 = v57;
      if (!(([a1 sparseFormat] != 2) | v88 & 1) || ((objc_msgSend(a1, "sparseFormat") == 1) & v88) != 0 || !objc_msgSend(a1, "sparseFormat"))
      {
        v65 = *&a1[*MEMORY[0x277CD7360]];
        v66 = *&a1[*MEMORY[0x277CD7368]];
        *&v67 = -1;
        *(&v67 + 1) = -1;
        v117 = v67;
        v118 = v67;
        *&v115[16] = -1;
        v116 = v67;
        *v115 = v67;
        *&v115[24] = 3;
        v75 = v65;
        v79 = v66;
        MPSLibrary::CreateUberShaderKey();
        v68 = MPSLibrary::GetPipelineStateForMPSKey();
        v69 = [v55 buffer];
        [a2 setComputePipelineState:v68];
        [a2 setBuffer:v69 offset:0 atIndex:0];
        objc_msgSend_setBytes_length_atIndex_(a2);
        v70 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), *v103), 5uLL);
        *v115 = vextq_s8(v70, v70, 8uLL);
        *&v115[16] = 1;
        *v119 = vdupq_n_s64(0x20uLL);
        *&v119[16] = 1;
        [a2 dispatchThreadgroups:v115 threadsPerThreadgroup:v119];
      }

      [a2 setComputePipelineState:v86];
      [a2 setBuffer:objc_msgSend(v40 offset:"buffer") atIndex:{0, 0}];
      [a2 setBuffer:objc_msgSend(v89 offset:"buffer") atIndex:{0, 1}];
      [a2 setBuffer:objc_msgSend(v84 offset:"buffer") atIndex:{0, 2}];
      [a2 setBuffer:objc_msgSend(v94 offset:"buffer") atIndex:{0, 3}];
      [a2 setBuffer:objc_msgSend(v55 offset:"buffer") atIndex:{0, 4}];
      objc_msgSend_setBytes_length_atIndex_(a2);
      if ((v88 & 1) != 0 || ![a1 sparseFormat])
      {
        [a2 setThreadgroupMemoryLength:v80 atIndex:0];
      }

      *v115 = (v91 + 31) >> 5;
      *&v115[8] = (v82 + 511) >> 9;
      *&v115[16] = 1;
      *v119 = v44;
      *&v119[8] = xmmword_239B19630;
      [a2 dispatchThreadgroups:v115 threadsPerThreadgroup:v119];
      MPSLibrary::ReleaseMPSKey();
    }
  }

  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeMaterializeSparseTensor(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v43 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v46 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v8 = *(a4 + 208);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v70 = v9;
  v71 = v9;
  v68 = 0xFFFFFFFFFFFFFFFFLL;
  v69 = v9;
  v67 = v9;
  v41 = [a1 sparseFormat];
  if (v41)
  {
    v10 = 8;
  }

  else
  {
    v10 = 1;
  }

  [a1 sparseFormat];
  v45 = v10;
  [a1 sparseFormat];
  v36 = *&a1[*MEMORY[0x277CD7360]];
  v38 = *&a1[*MEMORY[0x277CD7368]];
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v11 = [PipelineStateForMPSKey threadExecutionWidth];
  v12 = &v8[*MEMORY[0x277CD7410]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 3);
  v16 = *&v8[*MEMORY[0x277CD73D8]];
  v48 = *(v12 + 2);
  v49 = v15;
  v47[0] = v13;
  v47[1] = v14;
  v17 = *(v47 + (BYTE1(v16) & 0xF));
  v50[2] = v48;
  v50[3] = v15;
  v50[0] = v13;
  v50[1] = v14;
  v18 = *(v50 + (v16 & 0xF));
  v19 = MEMORY[0x277CD7400];
  v20 = *&v8[*MEMORY[0x277CD73D0] + 4] * *&v8[*MEMORY[0x277CD7400]];
  v42 = v7;
  v21 = [v7 lengthOfDimension:0];
  v22 = [a1 sparseFormat];
  v23 = v21;
  if (v22)
  {
    v23 = [v46 lengthOfDimension:0] - 1;
  }

  v40 = v23;
  v24 = *&v8[*v19];
  v51 = __PAIR64__(v18, v17);
  v52 = xmmword_239B19670;
  v53 = v24;
  v54 = v24;
  v55 = 0;
  v56 = v20;
  v57 = v20;
  v58 = 1065353216;
  v59 = 1;
  v60 = 0;
  v61 = v20;
  v62 = v20;
  v63 = 1;
  v64 = *&v46[*MEMORY[0x277CD7410]];
  v65 = v11;
  v66 = v21;
  v25 = *&a1[*MEMORY[0x277CD7360]];
  v26 = *&a1[*MEMORY[0x277CD7368]];
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  v76 = v27;
  v77 = v27;
  v73 = -1;
  v75 = v27;
  v72 = v27;
  v74 = 3;
  v37 = v25;
  v39 = v26;
  MPSLibrary::CreateUberShaderKey();
  v28 = MPSLibrary::GetPipelineStateForMPSKey();
  v29 = [v8 buffer];
  [a2 setComputePipelineState:v28];
  [a2 setBuffer:v29 offset:0 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v30 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), v51), 5uLL);
  v72 = vextq_s8(v30, v30, 8uLL);
  v73 = 1;
  v78 = vdupq_n_s64(0x20uLL);
  v79 = 1;
  [a2 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v78];
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  [a2 setBuffer:objc_msgSend(v42 offset:"buffer") atIndex:{0, 0}];
  [a2 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{0, 1}];
  [a2 setBuffer:objc_msgSend(v46 offset:"buffer") atIndex:{0, 2}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 3}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  if ([a1 sparseFormat])
  {
    v31 = v45;
    v32 = 3;
    if (!v41)
    {
      v32 = 0;
    }

    v33 = (v45 + v40 - 1) >> v32;
    v34 = 1;
  }

  else
  {
    v33 = 1;
    v34 = (8 * v11 + v21 - 1) / (8 * v11);
    v31 = v45;
  }

  v72.i64[0] = v34;
  v72.i64[1] = v33;
  v73 = 1;
  v78.i64[0] = v11;
  v78.i64[1] = v31;
  v79 = 1;
  [a2 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v78];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayFunctionConstructorSparseGEMM(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v23 = v6 & 1;
  v22 = (v6 & 2) != 0;
  v21 = (v6 >> 2) & 0x3FF;
  v20 = (v6 >> 12) & 0x3FF;
  v19 = v6 >> 22;
  v18 = BYTE4(v6) & 1;
  v17 = (v6 & 0x200000000) != 0;
  v16 = (v6 >> 36) & 7;
  v15 = (v6 >> 39) & 7;
  v14 = (v6 >> 42) & 7;
  v13 = (v6 >> 45) & 7;
  v12 = BYTE6(v6) & 7;
  v11 = (v6 >> 51) & 3;
  [v7 setConstantValue:&v23 type:53 atIndex:115];
  [v7 setConstantValue:&v22 type:53 atIndex:114];
  if (((v6 >> 2) & 0x3FF) != 0)
  {
    [v7 setConstantValue:&v21 type:41 atIndex:113];
  }

  if (((v6 >> 12) & 0x3FF) != 0)
  {
    [v7 setConstantValue:&v20 type:41 atIndex:112];
  }

  if (v6 >> 22)
  {
    [v7 setConstantValue:&v19 type:41 atIndex:111];
  }

  [v7 setConstantValue:&v18 type:53 atIndex:110];
  [v7 setConstantValue:&v17 type:53 atIndex:109];
  [v7 setConstantValue:&v16 type:41 atIndex:108];
  [v7 setConstantValue:&v15 type:41 atIndex:107];
  [v7 setConstantValue:&v14 type:41 atIndex:106];
  [v7 setConstantValue:&v13 type:41 atIndex:105];
  [v7 setConstantValue:&v12 type:41 atIndex:104];
  [v7 setConstantValue:&v11 type:41 atIndex:103];
  v8 = *a3;
  if (a3[1] != -1)
  {
    v24 = a3[1];
    [v7 setConstantValue:&v24 type:33 atIndex:126];
  }

  if (v8 != -1)
  {
    v24 = v8;
    [v7 setConstantValue:&v24 type:33 atIndex:125];
  }

  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:123];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:119];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:118];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:122];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:121];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:117];
  v24 = 0;
  [v7 setConstantValue:&v24 type:33 atIndex:116];
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

uint64_t EncodeArrayIm2col(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*&a1[*MEMORY[0x277CD7350]] + 1480);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v54 = v7;
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 208);
  v55 = a2;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v90 = -1;
  v91 = -1;
  v92 = [a1 dataLayout] == 1;
  v93 = -1;
  v94 = 0u;
  v95 = 0u;
  v52 = a4;
  v10 = [*(a4 + 16) count];
  v11 = MEMORY[0x277CD7410];
  v96 = v10 | 0x10000;
  v97 = 0;
  v12 = v8 + *MEMORY[0x277CD7410];
  v61 = *v12;
  v13 = *(v12 + 12);
  v59 = *(v12 + 8);
  v14 = [a1 dataLayout];
  v15 = *v11;
  if (v14 == 1)
  {
    v59 = *(v8 + v15);
    v61 = *(v8 + v15 + 4);
    v13 = *(v8 + v15 + 12);
  }

  v53 = v13;
  v16 = (v9 + v15);
  v58 = *v16;
  v60 = v16[1];
  v56 = v16[3];
  v57 = v16[2];
  v17 = *MEMORY[0x277CD73C8];
  if ((*(v8 + v17) != 268435488 || *(v9 + v17) != 268435488) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = [a1 kernelWidth];
  v19 = [a1 paddingLeft];
  v20 = [a1 paddingRight];
  v21 = [a1 dilationWidth];
  [a1 strideWidth];
  v22 = v19 + v61 + v20;
  v23 = v21 * (v18 - 1) + 1;
  v24 = [a1 kernelHeight];
  v25 = [a1 paddingTop];
  v26 = [a1 paddingBottom];
  v27 = [a1 dilationHeight];
  [a1 strideHeight];
  if ((v22 < v23 || v25 + v26 + HIDWORD(v61) < (v27 * (v24 - 1) + 1)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = [a1 kernelHeight];
  v29 = [a1 paddingTop];
  v30 = [a1 paddingBottom];
  v31 = [a1 dilationHeight];
  v32 = (v29 + v30 + ~(v31 * (v28 - 1)) + HIDWORD(v61)) / [a1 strideHeight] + 1;
  v33 = [a1 kernelWidth];
  v34 = [a1 paddingLeft];
  v35 = [a1 paddingRight];
  v36 = [a1 dilationWidth];
  v37 = (v34 + v61 + v35 + ~(v36 * (v33 - 1))) / [a1 strideWidth] + 1;
  if (v58 != v37 * v32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 kernelWidth];
  [a1 kernelHeight];
  v38 = [a1 kernelWidth] * v59;
  if (v60 != v38 * [a1 kernelHeight] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v57 != v53 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v56 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v50 = *&a1[*MEMORY[0x277CD7360]];
  v51 = *&a1[*MEMORY[0x277CD7368]];
  v49 = *(v52 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v40 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if ((v60 + v41 - 1) / v41 * v41 >= v42)
  {
    LODWORD(v43) = v42;
  }

  else
  {
    v43 = (v60 + v41 - 1) / v41 * v41;
  }

  v44 = v43;
  if (v53 >= 4 * v54)
  {
    v46 = v43;
    v47 = v53;
  }

  else
  {
    v45 = 2 * v41;
    v46 = v43;
    v47 = v53;
    if (v45 < v43)
    {
      v47 = v53;
      v46 = v43;
      do
      {
        v47 *= 2;
        v44 = v46 >> 1;
        v46 >>= 1;
      }

      while (v47 < 4 * v54 && v45 < v44);
    }
  }

  v66 = v61;
  v67 = v59;
  v68 = v53;
  v69 = v58;
  v70 = v60;
  v71 = v57;
  v72 = v56;
  v73 = [a1 kernelHeight];
  v74 = [a1 kernelWidth];
  v75 = v32;
  v76 = v37;
  v77 = [a1 paddingTop];
  v78 = [a1 paddingBottom];
  v79 = [a1 paddingLeft];
  v80 = [a1 paddingRight];
  v81 = [a1 dilationHeight];
  v82 = [a1 dilationWidth];
  v83 = [a1 strideHeight];
  v84 = [a1 strideWidth];
  v85 = v46;
  v86 = v43;
  v87 = v47;
  v88 = 0;
  v89 = 0;
  [v55 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v55);
  v63 = vdupq_n_s64(1uLL);
  v64 = v63;
  v65 = v47;
  v62 = v44;
  [v55 dispatchThreadgroups:&v64 threadsPerThreadgroup:&v62];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayCol2im(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*&a1[*MEMORY[0x277CD7350]] + 1480);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 208);
  [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{*(a4 + 192), 29}];
  v66 = a2;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v10 = [a1 dataLayout];
  v101 = -1;
  v102 = -1;
  v103 = v10 == 1;
  v104 = -1;
  v105 = 0u;
  v106 = 0u;
  v63 = a4;
  v107 = [*(a4 + 16) count] | 0x10000;
  v108 = 0;
  v11 = *MEMORY[0x277CD7410];
  v72 = *&v9[v11 + 12];
  if (v10 == 1)
  {
    v12 = *&v9[v11];
  }

  else
  {
    v12 = *&v9[v11 + 8];
  }

  v71 = v12;
  if (v10 == 1)
  {
    v13 = *&v9[v11 + 8];
  }

  else
  {
    v13 = *&v9[v11 + 4];
  }

  if (v10 == 1)
  {
    v14 = *&v9[v11 + 4];
  }

  else
  {
    v14 = *&v9[v11];
  }

  if (v7 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7;
  }

  v62 = v15;
  v16 = (v8 + v11);
  v64 = v16[1];
  v65 = v9;
  v68 = v16[2];
  v69 = *v16;
  v67 = v16[3];
  v17 = [a1 kernelWidth];
  v18 = [a1 paddingLeft];
  v19 = [a1 paddingRight];
  v20 = [a1 dilationWidth];
  [a1 strideWidth];
  v70 = v14;
  v21 = v18 + v19 + v14;
  v22 = v20 * (v17 - 1) + 1;
  v23 = [a1 kernelHeight];
  v24 = [a1 paddingTop];
  v25 = [a1 paddingBottom];
  v26 = [a1 dilationHeight];
  [a1 strideHeight];
  if (v21 < v22 || v24 + v25 + v13 < (v26 * (v23 - 1) + 1))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v28 = [a1 kernelHeight];
  v29 = [a1 paddingTop];
  v30 = [a1 paddingBottom];
  v31 = [a1 dilationHeight];
  v32 = (v29 + v30 + ~(v31 * (v28 - 1)) + v13) / [a1 strideHeight] + 1;
  v33 = [a1 kernelWidth];
  v34 = [a1 paddingLeft];
  v35 = [a1 paddingRight];
  v36 = [a1 dilationWidth];
  v37 = (v34 + v35 + ~(v36 * (v33 - 1)) + v70) / [a1 strideWidth] + 1;
  v61 = v32;
  v38 = v13;
  if (v69 != v37 * v32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 kernelWidth];
  [a1 kernelHeight];
  v39 = [a1 kernelWidth] * v71;
  if (v64 != v39 * [a1 kernelHeight] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v68 != v72 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v67 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v59 = *&a1[*MEMORY[0x277CD7360]];
  v60 = *&a1[*MEMORY[0x277CD7368]];
  v58 = *(v63 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if ((v64 + v42 - 1) / v42 * v42 >= v43)
  {
    LODWORD(v44) = v43;
  }

  else
  {
    v44 = (v64 + v42 - 1) / v42 * v42;
  }

  v45 = v44;
  if (v68 >= 4 * v62)
  {
    v46 = v44;
    v47 = v68;
    v49 = v69;
    v48 = v70;
  }

  else
  {
    v46 = v44;
    v47 = v68;
    v49 = v69;
    v48 = v70;
    if (2 * v42 < v44)
    {
      v47 = v68;
      v46 = v44;
      do
      {
        v47 *= 2;
        v45 = v46 >> 1;
        v46 >>= 1;
      }

      while (v47 < 4 * v62 && 2 * v42 < v45);
    }
  }

  v50 = *&v65[*MEMORY[0x277CD73C8]];
  v77 = v49;
  v78 = v64;
  v79 = v68;
  v80 = v67;
  v81 = v48;
  v82 = v38;
  v83 = v71;
  v84 = v72;
  v85 = [a1 kernelHeight];
  v86 = [a1 kernelWidth];
  v87 = v61;
  v88 = v37;
  v89 = [a1 paddingTop];
  v90 = [a1 paddingBottom];
  v91 = [a1 paddingLeft];
  v92 = [a1 paddingRight];
  v93 = [a1 dilationHeight];
  v94 = [a1 dilationWidth];
  v95 = [a1 strideHeight];
  v96 = [a1 strideWidth];
  v97 = v46;
  v98 = v44;
  v99 = v47;
  v51 = *&v65[*MEMORY[0x277CD7400]];
  v52 = &v65[*MEMORY[0x277CD73D0]];
  v53 = v51 * *(v52 + 1);
  v54 = v50 >> 3;
  HIDWORD(v55) = 1;
  LODWORD(v55) = v53 * *(v52 + 2) / v54;
  DWORD1(v55) = v53 / v54;
  DWORD2(v55) = v51 / v54;
  v100 = v55;
  [v66 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(v66);
  v74 = vdupq_n_s64(1uLL);
  v75 = v74;
  v76 = v47;
  v73 = v45;
  [v66 dispatchThreadgroups:&v75 threadsPerThreadgroup:&v73];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeReduction(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x277D85DE8];
  v7 = [a1 operation];
  v8 = MEMORY[0x277CD7370];
  v9 = MEMORY[0x277CD7350];
  v88 = a4;
  if (v7 != 6 && [a1 operation] != 7)
  {
    v11 = [*(a4 + 232) inputTensorAtIndex:0];
    if (*(v11 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = [*(a4 + 232) outputTensorAtIndex:0];
    v13 = [*(a4 + 232) inputTensorAtIndex:0];
    v97 = 0;
    if ([objc_msgSend(a1 "axes")])
    {
      v14 = 0;
      do
      {
        v15 = [objc_msgSend(objc_msgSend(a1 "axes")];
        if (v15 >= 4 && MTLReportFailureTypeEnabled())
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v81 = [a1 label];
          v85 = v15;
          v73 = v17;
          v77 = a1;
          MTLReportFailure();
        }

        *(&v97 + v15) = 1;
        ++v14;
      }

      while (v14 < [objc_msgSend(a1 axes]);
    }

    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    operator new();
  }

  v89 = *(a1 + *v8);
  v10 = *(a1 + *v9);
  if ([a1 axes])
  {
    if ([objc_msgSend(a1 "axes")] == 1)
    {
      [a1 setAxis:{objc_msgSend(objc_msgSend(objc_msgSend(a1, "axes"), "objectAtIndexedSubscript:", 0), "unsignedLongValue")}];
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v77 = a1;
      v81 = [a1 label];
      v73 = v19;
      MTLReportFailure();
    }
  }

  MEMORY[0x23EE7C450](&v93, a3, 0);
  v20 = [*(a4 + 232) outputTensorAtIndex:0];
  v21 = [*(a4 + 232) inputTensorAtIndex:0];
  v22 = *(v20 + 2);
  if (v22 > 268435487)
  {
    if (v22 == 268435488 || v22 == 536870944)
    {
      goto LABEL_27;
    }
  }

  else if (v22 == 32 || v22 == 268435472)
  {
    goto LABEL_27;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v77 = a1;
    v81 = [a1 label];
    v73 = v46;
    MTLReportFailure();
  }

LABEL_27:
  v25 = *(v21 + 2);
  if (v25 == 268435488 || v25 == 268435472)
  {
    if (*(v20 + 2) == 32 && ([a1 operation] != 6 || objc_msgSend(a1, "operation") == 7) && MTLReportFailureTypeEnabled())
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v77 = a1;
      v81 = [a1 label];
      v73 = v28;
      MTLReportFailure();
    }

    v25 = *(v21 + 2);
  }

  if (v25 == 32 && *(v20 + 2) != 32 && MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v77 = a1;
    v81 = [a1 label];
    v73 = v30;
    MTLReportFailure();
  }

  if (*(v21 + 2) == 536870944 && *(v20 + 2) != 536870944 && MTLReportFailureTypeEnabled())
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v77 = a1;
    v81 = [a1 label];
    v73 = v32;
    MTLReportFailure();
  }

  if ([a1 axis] >= 4 && MTLReportFailureTypeEnabled())
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v82 = [a1 label];
    v85 = [a1 axis];
    v74 = v34;
    v78 = a1;
    MTLReportFailure();
  }

  if (([a1 operation] == 6 || objc_msgSend(a1, "operation") == 7) && (*(v20 + 2) | 0x20000000) != 0x20000020 && MTLReportFailureTypeEnabled())
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v79 = a1;
    v83 = [a1 label];
    v75 = v44;
    MTLReportFailure();
  }

  *&v35 = -1;
  *(&v35 + 1) = -1;
  v100[3] = v35;
  v101 = v35;
  v100[1] = 0xFFFFFFFFFFFFFFFFLL;
  v100[2] = v35;
  v100[0] = v35;
  v36 = [*(a4 + 16) count];
  v37 = 0;
  *&v101 = v36 | ((*(a4 + 112) != 0) << 8) | 0x10000;
  if (*(v21 + 2) == 268435472)
  {
    v38 = 268435488;
  }

  else
  {
    v38 = *(v21 + 2);
  }

  v39 = *(v10 + 1472);
  if ((v38 & 0xDFFFFFFF) == 8)
  {
    v40 = 16;
  }

  else
  {
    v40 = v38;
  }

  if (v39 <= 6)
  {
    v41 = v40;
  }

  else
  {
    v41 = v38;
  }

  if (v38 <= 268435487)
  {
    if (v38 <= 31)
    {
      if (v38 == -1879048176)
      {
        v42 = 0;
        v37 = 2;
        goto LABEL_93;
      }

      if (v38 != 8)
      {
        if (v38 != 16)
        {
          goto LABEL_94;
        }

        goto LABEL_71;
      }

LABEL_88:
      v42 = v37;
      v37 = 7;
      goto LABEL_93;
    }

    if (v38 == 32)
    {
      goto LABEL_90;
    }

    if (v38 == 64)
    {
LABEL_86:
      v42 = v37;
      v37 = 4;
      goto LABEL_93;
    }
  }

  else
  {
    if (v38 > 536870919)
    {
      if (v38 <= 536870943)
      {
        if (v38 != 536870920)
        {
          if (v38 != 536870928)
          {
            goto LABEL_94;
          }

          LOWORD(v37) = 0x4000;
LABEL_71:
          v42 = v37;
          v37 = 6;
LABEL_93:
          v37 |= ((v39 > 6) << 15) | v42 & 0x4000;
          goto LABEL_94;
        }

        LOWORD(v37) = 0x4000;
        goto LABEL_88;
      }

      if (v38 != 536870944)
      {
        if (v38 != 536870976)
        {
          goto LABEL_94;
        }

        LOWORD(v37) = 0x4000;
        goto LABEL_86;
      }

      LOWORD(v37) = 0x4000;
LABEL_90:
      v42 = v37;
      v37 = 5;
      goto LABEL_93;
    }

    if (v38 == 268435488)
    {
      v42 = 0;
      goto LABEL_93;
    }

    if (v38 == 285212704 || v38 == 285212736)
    {
      v42 = 0;
      v37 = 3;
      goto LABEL_93;
    }
  }

LABEL_94:
  *&v100[1] = v37;
  DimensionSize = BaseTensor::GetDimensionSize(v21);
  v48 = BaseTensor::GetDimensionSize(v21);
  v49 = BaseTensor::GetDimensionSize(v21);
  v50 = BaseTensor::GetDimensionSize(v21);
  v51 = [a1 axis];
  LODWORD(v98.__r_.__value_.__r.__words[2]) = v51;
  v98.__r_.__value_.__l.__size_ = 0x100000001;
  v52 = *(v89 + 32);
  v91 = 0uLL;
  v92 = 0;
  (*(*v52 + 16))(&v91);
  v86 = v41;
  if (v51)
  {
    if (v51 == 1)
    {
      DWORD2(v99) = v49;
      LODWORD(v98.__r_.__value_.__l.__data_) = v48;
      v53 = BaseTensor::GetDimensionSize(v20);
      v54 = v50 * v49;
      v87 = v48;
    }

    else
    {
      DWORD2(v99) = v48;
      if (v51 == 2)
      {
        LODWORD(v98.__r_.__value_.__l.__data_) = v49;
        v53 = BaseTensor::GetDimensionSize(v20);
        v54 = v50 * v48;
        v87 = v49;
      }

      else
      {
        LODWORD(v98.__r_.__value_.__l.__data_) = v50;
        v53 = BaseTensor::GetDimensionSize(v20);
        v54 = v49 * v48;
        v87 = v50;
      }
    }

    v55 = DimensionSize;
  }

  else
  {
    DWORD2(v99) = v49;
    LODWORD(v98.__r_.__value_.__l.__data_) = DimensionSize;
    v53 = BaseTensor::GetDimensionSize(v20);
    v54 = v50 * v49;
    v87 = DimensionSize;
    v55 = v48;
  }

  [a1 operation];
  v80 = *(a1 + *MEMORY[0x277CD7360]);
  v84 = *(a1 + *MEMORY[0x277CD7368]);
  v76 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v57 = PipelineStateForMPSKey;
  if (PipelineStateForMPSKey)
  {
    v58 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v59 = v54;
    v60 = 1024;
    v61 = v55;
    do
    {
      v62 = v60;
      v60 >>= 1;
    }

    while (v62 > v58);
    *&v91 = v62;
    v63 = 32;
    if (DimensionSize > 0x20uLL)
    {
      v63 = DimensionSize;
    }

    if (v62 > v63)
    {
      do
      {
        v62 >>= 1;
      }

      while (v62 > v63);
      *&v91 = v62;
    }

    if (v48 == 1 && v49 == 1 && v50 == 1)
    {
      if (v62 >= 0x81)
      {
        v64 = a2;
        v65 = v87;
        if (4 * v62 > DimensionSize)
        {
          do
          {
            v66 = v62;
            v62 >>= 1;
          }

          while (v66 >= 0x102 && 4 * v62 > DimensionSize);
          *&v91 = v62;
        }

        goto LABEL_128;
      }
    }

    else
    {
      v68 = 10;
      if (DimensionSize <= 0x1000)
      {
        v68 = 14;
      }

      if (v62 >= 0x21)
      {
        v69 = v48 * DimensionSize * v49 * v50;
        v70 = v62;
        v64 = a2;
        v65 = v87;
        while (v70 << v68 >= v69)
        {
          v62 = v70 >> 1;
          *&v91 = v70 >> 1;
          v71 = v70 > 0x41;
          v70 >>= 1;
          if (!v71)
          {
            goto LABEL_128;
          }
        }

        v62 = v70;
        goto LABEL_128;
      }
    }

    v64 = a2;
    v65 = v87;
LABEL_128:
    HIDWORD(v98.__r_.__value_.__r.__words[0]) = (v62 + v65 - 1) / v62;
    LODWORD(v98.__r_.__value_.__r.__words[1]) = v53;
    HIDWORD(v98.__r_.__value_.__r.__words[1]) = (v53 + v62 - 1) / v62;
    [v64 setComputePipelineState:v57];
    MPSSetNDArraysOnComputeEncoder(v64, v88, 4, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v64);
    [v64 setThreadgroupMemoryLength:v62 * ((v86 >> 3) + 4) atIndex:0];
    v96[0] = 1;
    v96[1] = v61;
    v96[2] = v59;
    *__p = v91;
    v95 = v92;
    [v64 dispatchThreadgroups:v96 threadsPerThreadgroup:__p];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    v67 = 0;
    goto LABEL_129;
  }

  v67 = -1;
LABEL_129:
  MPSAutoCache::~MPSAutoCache(&v93);
  return v67;
}

void sub_239AA9730(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
    if (SLOBYTE(STACK[0x337]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x320]);
      if (SLOBYTE(STACK[0x257]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x240]);
        if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

LABEL_10:
      if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(STACK[0x220]);
      _Unwind_Resume(a1);
    }
  }

  else if (SLOBYTE(STACK[0x337]) < 0)
  {
    goto LABEL_5;
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_239AA97D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA97E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA97F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA985C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA98AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA98C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA98D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AA98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayReductionCreateUserConstantAxes(uint64_t a1, uint8x8_t a2, uint8x8_t a3)
{
  v3 = 0;
  v4 = *a1;
  if (*a1 <= 268435487)
  {
    if (v4 > 31)
    {
      switch(v4)
      {
        case 32:
          goto LABEL_30;
        case 64:
          goto LABEL_26;
        case 268435472:
          v3 = 0;
          v5 = 1;
          goto LABEL_33;
      }
    }

    else
    {
      switch(v4)
      {
        case -1879048176:
          v3 = 0;
          v5 = 2;
          goto LABEL_33;
        case 8:
          goto LABEL_28;
        case 16:
          v5 = 6;
          goto LABEL_33;
      }
    }

    return 0;
  }

  if (v4 <= 536870919)
  {
    if (v4 == 268435488)
    {
      v5 = 0;
      goto LABEL_33;
    }

    if (v4 == 285212704 || v4 == 285212736)
    {
      v3 = 0;
      v5 = 3;
      goto LABEL_33;
    }

    return 0;
  }

  if (v4 > 536870943)
  {
    if (v4 != 536870944)
    {
      if (v4 != 536870976)
      {
        return 0;
      }

      v3 = 0x4000;
LABEL_26:
      v5 = 4;
      goto LABEL_33;
    }

    v3 = 0x4000;
LABEL_30:
    v5 = 5;
    goto LABEL_33;
  }

  if (v4 == 536870920)
  {
    v3 = 0x4000;
LABEL_28:
    v5 = 7;
    goto LABEL_33;
  }

  if (v4 != 536870928)
  {
    return 0;
  }

  v3 = 0x4000;
  v5 = 6;
LABEL_33:
  a3.i32[0] = *(a1 + 4);
  a2.i32[0] = *(a1 + 8);
  v7 = vshl_u16(*&vmovl_u8(a2), 0x6000500040003);
  v8 = vshlq_u32(vmovl_u16(*&vmovl_u8(a3)), xmmword_239B19AA0);
  v9 = v3 & 0x4000;
  v10 = *(a1 + 32);
  if (v10 >= 4)
  {
    LODWORD(v10) = 4;
  }

  v11 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  return v11.i32[0] | v11.i32[1] | (*(a1 + 24) << 15) | ((*(a1 + 16) << 8) - 256) | ((v10 << 16) - 0x10000) | v5 | v9 | (v7.i8[0] | v7.i8[4] | ((v7.i32[0] | v7.i32[1]) >> 16)) | (*(a1 + 12) << 7);
}

uint64_t EncodeArrayReductionGradientNew(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v122 = *MEMORY[0x277D85DE8];
  v97 = *&a1[*MEMORY[0x277CD7370]];
  MEMORY[0x23EE7C450](v117, a3, 0);
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  context = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) inputTensorAtIndex:1];
  v9 = *(v8 + 8);
  if (v9 > 268435471)
  {
    if (v9 == 268435472 || v9 == 268435488)
    {
      goto LABEL_10;
    }
  }

  else if (v9 == -1879048176 || v9 == 32)
  {
    goto LABEL_10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v73 = a1;
    v80 = [a1 label];
    v66 = v46;
    MTLReportFailure();
  }

LABEL_10:
  v11 = *(v7 + 2);
  v13 = v11 == 32 || v11 == 268435472 || v11 == 268435488;
  if (!v13 && *(v8 + 8) != -1879048176 && MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v73 = a1;
    v80 = [a1 label];
    v66 = v33;
    MTLReportFailure();
  }

  if ([a1 operation] == 5 && MTLReportFailureTypeEnabled())
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v74 = a1;
    v81 = [a1 label];
    v67 = v15;
    MTLReportFailure();
  }

  if ([a1 operation] == 7 && MTLReportFailureTypeEnabled())
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v75 = a1;
    v82 = [a1 label];
    v68 = v17;
    MTLReportFailure();
  }

  if ([a1 operation] == 6 && MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v76 = a1;
    v83 = [a1 label];
    v69 = v19;
    MTLReportFailure();
  }

  if ([a1 axis] >= 4 && MTLReportFailureTypeEnabled())
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v84 = [a1 label];
    v87 = [a1 axis];
    v70 = v21;
    v77 = a1;
    MTLReportFailure();
  }

  *&v22 = -1;
  *(&v22 + 1) = -1;
  v115 = v22;
  v116 = v22;
  v113 = 0xFFFFFFFFFFFFFFFFLL;
  v114 = v22;
  v112 = v22;
  v90 = v8;
  *&v116 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  *&v113 = 0;
  v23 = [a1 operation];
  v98 = a2;
  v99 = 0;
  if (v23 <= 1)
  {
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      if (v23 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_38:
    v25 = 0;
    v26 = 0;
    v99 = 1;
    v24 = 1;
    goto LABEL_39;
  }

  if (v23 == 2)
  {
    goto LABEL_38;
  }

  if (v23 == 3)
  {
LABEL_37:
    v24 = 0;
    v26 = 0;
    v99 = 1;
    v25 = 1;
    goto LABEL_39;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v23 == 4)
  {
    v99 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

LABEL_39:
  DimensionSize = BaseTensor::GetDimensionSize(v7);
  v27 = BaseTensor::GetDimensionSize(v7);
  v28 = BaseTensor::GetDimensionSize(v7);
  v29 = BaseTensor::GetDimensionSize(v7);
  v109 = [a1 axis];
  v108 = 0x100000001;
  v30 = *(v97 + 32);
  v104 = 0uLL;
  v105 = 0;
  (*(*v30 + 16))(&v104);
  if (v109)
  {
    if (v109 == 1)
    {
      v111 = v28;
      v106 = v27;
      v96 = BaseTensor::GetDimensionSize(v7);
      v31 = v29 * v28;
    }

    else
    {
      v111 = v27;
      if (v109 == 2)
      {
        v106 = v28;
        v96 = BaseTensor::GetDimensionSize(v7);
        v31 = v29 * v27;
      }

      else
      {
        v106 = v29;
        v96 = BaseTensor::GetDimensionSize(v7);
        v31 = v28 * v27;
      }
    }

    v34 = DimensionSize;
  }

  else
  {
    v111 = v28;
    v106 = DimensionSize;
    v96 = BaseTensor::GetDimensionSize(v7);
    v31 = v29 * v28;
    v34 = v27;
  }

  v91 = v31;
  v92 = v34;
  if (v24)
  {
    v35 = context[2];
    v36 = 2139095040;
    if (v35 <= 268435471)
    {
      v37 = v98;
      if (v35 != -1879048176)
      {
        if (v35 != 32)
        {
          goto LABEL_63;
        }

        v36 = -1;
      }

      goto LABEL_62;
    }

LABEL_60:
    v37 = v98;
    if (v35 == 268435472 || v35 == 268435488)
    {
LABEL_62:
      v110 = v36;
      goto LABEL_63;
    }

    goto LABEL_63;
  }

  if (v25)
  {
    v35 = context[2];
    v36 = -8388608;
    if (v35 <= 268435471)
    {
      v37 = v98;
      if (v35 != -1879048176)
      {
        if (v35 != 32)
        {
          goto LABEL_63;
        }

        v36 = 0;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v37 = v98;
  if (v26)
  {
    v44 = context[2];
    v36 = 0;
    if (v44 > 268435471)
    {
      if (v44 == 268435488 || v44 == 268435472)
      {
        goto LABEL_62;
      }
    }

    else if (v44 == -1879048176 || v44 == 32)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  if (!v99)
  {
    v42 = 0;
    v43 = 0;
    goto LABEL_113;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = 0;
  v40 = context[2];
  if (v40 > 268435487)
  {
    if (v40 <= 536870919)
    {
      if (v40 == 268435488)
      {
        v41 = 16;
      }

      else
      {
        if (v40 != 285212704 && v40 != 285212736)
        {
          goto LABEL_105;
        }

        LOWORD(v39) = 0;
        v41 = 19;
      }

      goto LABEL_104;
    }

    if (v40 <= 536870943)
    {
      if (v40 != 536870920)
      {
        if (v40 == 536870928)
        {
          LOWORD(v39) = 0x4000;
          v41 = 22;
LABEL_104:
          v39 = v39 & 0x4000 | v41;
          goto LABEL_105;
        }

        goto LABEL_105;
      }

      LOWORD(v39) = 0x4000;
LABEL_99:
      v41 = 23;
      goto LABEL_104;
    }

    if (v40 != 536870944)
    {
      if (v40 != 536870976)
      {
        goto LABEL_105;
      }

      LOWORD(v39) = 0x4000;
      goto LABEL_94;
    }

    LOWORD(v39) = 0x4000;
    goto LABEL_101;
  }

  if (v40 > 31)
  {
    if (v40 != 32)
    {
      if (v40 != 64)
      {
        if (v40 == 268435472)
        {
          LOWORD(v39) = 0;
          v41 = 17;
          goto LABEL_104;
        }

        goto LABEL_105;
      }

LABEL_94:
      v41 = 20;
      goto LABEL_104;
    }

LABEL_101:
    v41 = 21;
    goto LABEL_104;
  }

  switch(v40)
  {
    case -1879048176:
      LOWORD(v39) = 0;
      v41 = 18;
      goto LABEL_104;
    case 8:
      goto LABEL_99;
    case 16:
      v41 = 22;
      goto LABEL_104;
  }

LABEL_105:
  contexta = v38;
  *&v113 = v39;
  v78 = *&a1[*MEMORY[0x277CD7360]];
  v85 = *&a1[*MEMORY[0x277CD7368]];
  v71 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v48 = PipelineStateForMPSKey;
  if (PipelineStateForMPSKey)
  {
    v49 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v50 = v104;
    if (v104 > v49)
    {
      do
      {
        v50 >>= 1;
      }

      while (v50 > v49);
      *&v104 = v50;
    }

    v88 = *(v7 + 2) == -1879048176;
    v89 = *(v7 + 2);
    [v37 setComputePipelineState:v48];
    TempBuffer = MPSAutoCache::GetTempBuffer(v117, 4 * v27 * DimensionSize * v28 * v29, 0);
    v118 = DimensionSize;
    v119 = v27;
    v120 = v28;
    v121 = v29;
    *(&v118 + v109) = 1;
    v52 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:4 dimensionSizes:&v118];
    [v52 setPreferPackedRows:1];
    v43 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v52];
    v53 = v104;
    LODWORD(v108) = 1;
    HIDWORD(v108) = (v96 + v104 - 1) / v104;
    v54 = v106;
    v55 = (v104 + v106 - 1) / v104;
    v107 = v55;
    v42 = malloc_type_calloc(0x50uLL, 1uLL, 0x10000404247E4FDuLL);
    MPSSetNDArraysOnComputeEncoder(v98, a4, 4, 0, 0);
    [v98 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v43, 0, 4, v42, 0), 28}];
    objc_msgSend_setBytes_length_atIndex_(v98);
    objc_msgSend_setBytes_length_atIndex_(v98);
    [v98 setThreadgroupMemoryLength:(2 * v50 * (v89 >> 3)) << v88 atIndex:0];
    *&v102 = (v54 + v55 * v53 - 1) / (v55 * v53);
    *(&v102 + 1) = v92;
    v103 = v91;
    v100 = v104;
    v101 = v105;
    [v98 dispatchThreadgroups:&v102 threadsPerThreadgroup:&v100];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    v37 = v98;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  objc_autoreleasePoolPop(contexta);
  if (!v48)
  {
    goto LABEL_122;
  }

  *&v113 = 2;
LABEL_113:
  v79 = *&a1[*MEMORY[0x277CD7360]];
  v86 = *&a1[*MEMORY[0x277CD7368]];
  v72 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v56 = MPSLibrary::GetPipelineStateForMPSKey();
  v57 = v56;
  if (!v56)
  {
LABEL_122:
    v64 = -1;
    goto LABEL_123;
  }

  v58 = [v56 maxTotalThreadsPerThreadgroup];
  v59 = v104;
  if (v104 > v58)
  {
    do
    {
      v59 >>= 1;
    }

    while (v59 > v58);
    *&v104 = v59;
  }

  v60 = *(v90 + 8);
  [v37 setComputePipelineState:v57];
  v61 = v37;
  v62 = v104;
  v63 = (v104 + v96 - 1) / v104;
  v108 = __PAIR64__(v63, v96);
  MPSSetNDArraysOnComputeEncoder(v61, a4, 4, 0, 0);
  if (v99)
  {
    [v61 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v43, 0, 4, v42, 0), 28}];
    objc_msgSend_setBytes_length_atIndex_(v61);
  }

  objc_msgSend_setBytes_length_atIndex_(v61);
  [v61 setThreadgroupMemoryLength:((v60 >> 3) + 19) & 0x3FF0 atIndex:0];
  v118 = (v63 * v62 + v96 - 1) / (v63 * v62);
  v119 = v92;
  v120 = v91;
  v102 = v104;
  v103 = v105;
  [v61 dispatchThreadgroups:&v118 threadsPerThreadgroup:&v102];
  if (v99)
  {

    free(v42);
  }

  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v64 = 0;
LABEL_123:
  MPSAutoCache::~MPSAutoCache(v117);
  return v64;
}

__n128 MPSNDArrayReductionBehaviors::getThreads@<Q0>(MPSNDArrayReductionBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t MPSNDArrayIdentityBehaviors::getNZStepsLog2PerThread(__n128 a1)
{
  if (a1.n128_u32[2] == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1.n128_u32[2] > 2);
  }
}

uint64_t MPSNDArrayIdentityBehaviors::getNXResultsPerThread(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 8) & 7;
  if (HIDWORD(a3) > 0x1000)
  {
    v3 = *(a1 + 8) >> 3;
  }

  if (SHIDWORD(a3) < 128 || SLODWORD(a3) < 128)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t MPSNDArrayIdentityBehaviors::getLaunchOrder(uint64_t a1, int *a2, __n128 a3, __n128 a4, int32x4_t a5)
{
  result = (*(*a1 + 16))(a1);
  if ((vminvq_u32(vcgtq_s32(vdupq_n_s32(result), a5)) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = a3.n128_i32[0] > 15 || a5.i32[0] < result;
  v8 = v7;
  v9 = 16;
  if (!v7)
  {
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      v9 = 16;
    }

    else
    {
      v9 = a3.n128_u32[0];
    }
  }

  if (a5.i32[1] < result || a3.n128_u32[1] >= v9)
  {
    v12 = 0;
    v13 = a3.n128_i32[2];
    v14 = a5.i32[2];
    if (a5.i32[2] < result || a3.n128_u32[2] >= v9)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v17 = vminvq_u32(v16);
  if (v17 < 0)
  {
    v9 = a3.n128_i32[1];
  }

  v12 = v17 >> 31;
  v13 = a3.n128_i32[2];
  v14 = a5.i32[2];
  if (a5.i32[2] >= result && a3.n128_u32[2] < v9)
  {
LABEL_29:
    v19.i64[0] = -1;
    v19.i64[1] = -1;
    if ((vminvq_u32(v19) & 0x80000000) != 0)
    {
      v9 = v13;
      v12 = 2;
    }
  }

LABEL_31:
  if (a5.i32[3] >= result && a3.n128_u32[3] < v9)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    if ((vminvq_u32(v21) & 0x80000000) != 0)
    {
      v12 = 3;
      v31 = a4.n128_u32[0];
      v32 = 16;
      if (a4.n128_i32[0] > 15)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  if (v9 == 16)
  {
    v22.i64[0] = -1;
    v22.i64[1] = -1;
    v23 = vminvq_u32(v22);
    if (v23 >= 0)
    {
      v24 = 16;
    }

    else
    {
      v24 = a3.n128_u32[0];
    }

    if (v23 >= 0)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    if (a3.n128_i32[0] < 16)
    {
      v9 = v24;
      v12 = v25;
    }

    if (v23 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = a3.n128_u32[1];
    }

    if (v23 < 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v12;
    }

    if (a3.n128_i32[1] < v9)
    {
      v9 = v26;
      v12 = v27;
    }

    if (v23 >= 0)
    {
      v28 = v9;
    }

    else
    {
      v28 = v13;
    }

    if (v23 >= 0)
    {
      v29 = v12;
    }

    else
    {
      v29 = 2;
    }

    if (v13 < v9)
    {
      v9 = v28;
      v12 = v29;
    }

    if (v23 >= 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 3;
    }

    if (a3.n128_i32[3] < v9)
    {
      v12 = v30;
    }
  }

  v31 = a4.n128_u32[0];
  v32 = 16;
  if (a4.n128_i32[0] <= 15)
  {
LABEL_68:
    if (a5.i32[0] >= result)
    {
      v33.i64[0] = -1;
      v33.i64[1] = -1;
      if ((vminvq_u32(v33) & 0x80000000) == 0)
      {
        v32 = 16;
      }

      else
      {
        v32 = v31;
      }
    }
  }

LABEL_72:
  v34 = 0;
  if (a5.i32[1] >= result && a4.n128_i32[1] < v32)
  {
    v35.i64[0] = -1;
    v35.i64[1] = -1;
    v36 = vminvq_u32(v35);
    if (v36 < 0)
    {
      v32 = a4.n128_i32[1];
    }

    v34 = v36 >> 31;
  }

  if (v14 >= result && a4.n128_i32[2] < v32)
  {
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    if ((vminvq_u32(v37) & 0x80000000) != 0)
    {
      v32 = a4.n128_i32[2];
      v34 = 2;
    }
  }

  if (a5.i32[3] >= result && a4.n128_i32[3] < v32)
  {
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    if ((vminvq_u32(v38) & 0x80000000) != 0)
    {
      v34 = 3;
      v39.i64[1] = -1;
      v39.i32[0] = v12;
      v40 = 3;
      if (v12 == 3)
      {
        goto LABEL_126;
      }

      goto LABEL_86;
    }
  }

  if (v32 == 16)
  {
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v44 = vminvq_u32(v43);
    if (v44 >= 0)
    {
      v45 = 16;
    }

    else
    {
      v45 = v31;
    }

    if (v44 >= 0)
    {
      v46 = v34;
    }

    else
    {
      v46 = 0;
    }

    v47 = v31 < 16;
    if (v31 >= 16)
    {
      v48 = 16;
    }

    else
    {
      v48 = v45;
    }

    if (v47)
    {
      v34 = v46;
    }

    if (v44 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = a4.n128_u32[1];
    }

    if (v44 < 0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v34;
    }

    if (a4.n128_i32[1] < v48)
    {
      v48 = v49;
      v34 = v50;
    }

    if (v44 >= 0)
    {
      v51 = v48;
    }

    else
    {
      v51 = a4.n128_u32[2];
    }

    if (v44 >= 0)
    {
      v52 = v34;
    }

    else
    {
      v52 = 2;
    }

    if (a4.n128_i32[2] < v48)
    {
      v48 = v51;
      v34 = v52;
    }

    if (v44 >= 0)
    {
      v53 = v34;
    }

    else
    {
      v53 = 3;
    }

    if (a4.n128_i32[3] < v48)
    {
      v34 = v53;
    }

    v39.i64[1] = -1;
    v39.i32[0] = v12;
    v40 = v34;
    if (v34 == v12)
    {
      goto LABEL_126;
    }

LABEL_86:
    v39.i32[1] = v40;
    v41 = 16;
    if (v8)
    {
      goto LABEL_87;
    }

LABEL_160:
    if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) == 0)
    {
      v41 = 16;
    }

    else
    {
      v41 = a3.n128_u32[0];
    }

    v42 = 0;
    if (a5.i32[1] < result)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

  v39.i64[1] = -1;
  v39.i32[0] = v12;
  v40 = v34;
  if (v34 != v12)
  {
    goto LABEL_86;
  }

LABEL_126:
  v54 = 16;
  if ((v8 & 1) == 0)
  {
    v55 = -1;
    v55.i16[0] = v12 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v55), 0x1FuLL))) & 0x80000000) == 0)
    {
      v54 = 16;
    }

    else
    {
      v54 = a3.n128_u32[0];
    }
  }

  v56 = 0;
  if (a5.i32[1] >= result && a3.n128_i32[1] < v54)
  {
    v57 = -1;
    v57.i16[0] = v12 != 1;
    v58 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v57), 0x1FuLL)));
    if (v58 < 0)
    {
      v54 = a3.n128_i32[1];
    }

    v56 = v58 >> 31;
  }

  if (v14 >= result && v13 < v54)
  {
    v59 = -1;
    v59.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v59), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v54 || (v60 = -1, v60.i16[0] = v12 != 3, (vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v60), 0x1FuLL))) & 0x80000000) == 0))
  {
    if (v54 != 16)
    {
      goto LABEL_159;
    }

    if (a3.n128_i32[0] < 16)
    {
      v61 = -1;
      v61.i16[0] = v12 != 0;
      if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v61), 0x1FuLL))) & 0x80000000) != 0)
      {
        v54 = a3.n128_u32[0];
        v56 = 0;
      }

      if (a3.n128_i32[1] >= v54)
      {
LABEL_145:
        if (v13 >= v54)
        {
          goto LABEL_146;
        }

        goto LABEL_154;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_145;
    }

    v62 = -1;
    v62.i16[0] = v12 != 1;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v62), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = a3.n128_i32[1];
      v56 = 1;
    }

    if (v13 >= v54)
    {
LABEL_146:
      if (a3.n128_i32[3] >= v54)
      {
        goto LABEL_159;
      }

      goto LABEL_157;
    }

LABEL_154:
    v63 = -1;
    v63.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v63), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }

    if (a3.n128_i32[3] >= v54)
    {
LABEL_159:
      v34 = v12;
      v39.i32[1] = v56;
      v41 = 16;
      if ((v8 & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_87;
    }

LABEL_157:
    v64 = -1;
    v64.i16[0] = v12 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v64), 0x1FuLL))) & 0x80000000) != 0)
    {
      v56 = 3;
    }

    goto LABEL_159;
  }

  v34 = v12;
  v39.i32[1] = 3;
  v41 = 16;
  if ((v8 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_87:
  v42 = 0;
  if (a5.i32[1] < result)
  {
    goto LABEL_168;
  }

LABEL_164:
  if (a3.n128_i32[1] < v41)
  {
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    v66 = vminvq_u32(vmvnq_s8(vceqq_s32(v39, v65)));
    if (v66 < 0)
    {
      v41 = a3.n128_i32[1];
    }

    v42 = v66 >> 31;
  }

LABEL_168:
  if (v14 >= result && v13 < v41)
  {
    v67.i64[0] = 0x200000002;
    v67.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v67))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }
  }

  if (a5.i32[3] >= result && a3.n128_i32[3] < v41 && (v68.i64[0] = 0x300000003, v68.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v68))) & 0x80000000) != 0))
  {
    v42 = 3;
  }

  else if (v41 == 16)
  {
    if (a3.n128_i32[0] < 16)
    {
      if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) != 0)
      {
        v41 = a3.n128_u32[0];
        v42 = 0;
      }

      if (a3.n128_i32[1] >= v41)
      {
LABEL_178:
        if (v13 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_187;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_178;
    }

    v69.i64[0] = 0x100000001;
    v69.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v69))) & 0x80000000) != 0)
    {
      v41 = a3.n128_i32[1];
      v42 = 1;
    }

    if (v13 >= v41)
    {
LABEL_179:
      if (a3.n128_i32[3] >= v41)
      {
        goto LABEL_194;
      }

LABEL_190:
      v71.i64[0] = 0x300000003;
      v71.i64[1] = 0x300000003;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v71))) & 0x80000000) != 0)
      {
        v42 = 3;
      }

      goto LABEL_194;
    }

LABEL_187:
    v70.i64[0] = 0x200000002;
    v70.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v70))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }

    if (a3.n128_i32[3] >= v41)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_194:
  v39.i32[2] = v42;
  v72 = vminvq_u32(vtstq_s32(v39, v39));
  if (v72 >= 0)
  {
    v73 = 16;
  }

  else
  {
    v73 = a3.n128_u32[0];
  }

  if (v8)
  {
    v74 = 16;
  }

  else
  {
    v74 = v73;
  }

  if (a5.i32[1] >= result && a3.n128_i32[1] < v74)
  {
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v75))) & 0x80000000) != 0)
    {
      v74 = a3.n128_i32[1];
    }
  }

  if (v14 >= result && v13 < v74)
  {
    v76.i64[0] = 0x200000002;
    v76.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v76))) & 0x80000000) != 0)
    {
      v74 = v13;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v74 || (v77.i64[0] = 0x300000003, v77.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v77))) & 0x80000000) == 0))
  {
    if (v74 != 16)
    {
LABEL_216:
      *a2 = v34;
      return result;
    }

    v78 = 16;
    if (a3.n128_i32[0] < 16)
    {
      if (v72 >= 0)
      {
        v78 = 16;
      }

      else
      {
        v78 = a3.n128_u32[0];
      }

      if (a3.n128_i32[1] >= v78)
      {
LABEL_214:
        if (v13 >= v78)
        {
          goto LABEL_215;
        }

        goto LABEL_224;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_214;
    }

    v79.i64[0] = 0x100000001;
    v79.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v79))) & 0x80000000) != 0)
    {
      v78 = a3.n128_i32[1];
    }

    if (v13 >= v78)
    {
LABEL_215:
      if (a3.n128_i32[3] >= v78)
      {
        goto LABEL_216;
      }

      goto LABEL_227;
    }

LABEL_224:
    v80.i64[0] = 0x200000002;
    v80.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v80))) & 0x80000000) != 0)
    {
      v78 = v13;
    }

    if (a3.n128_i32[3] >= v78)
    {
      goto LABEL_216;
    }

LABEL_227:
    *a2 = v34;
    return result;
  }

  *a2 = v34;
  return result;
}

__n64 MPSNDArrayIdentityAppleBehaviors::getLaunchOrder(uint64_t a1, int *a2, int8x16_t a3, int8x16_t a4, int32x4_t a5)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = xmmword_239B060A0;
  v8 = xmmword_239B060A0;
  v9 = xmmword_239B060A0;
  if ((vminvq_u32(vclezq_s32(a5)) & 0x80000000) == 0)
  {
    v10 = a4.i32[0] > 15 || a5.i32[0] < 1;
    v11 = v10;
    v12 = 16;
    if (!v10)
    {
      v13.i64[0] = -1;
      v13.i64[1] = -1;
      if ((vminvq_u32(v13) & 0x80000000) == 0)
      {
        v12 = 16;
      }

      else
      {
        v12 = a4.i32[0];
      }
    }

    if (a5.i32[1] >= 1 && a4.i32[1] < v12)
    {
      v17.i64[0] = -1;
      v17.i64[1] = -1;
      v18 = vminvq_u32(v17);
      if (v18 < 0)
      {
        v12 = a4.i32[1];
      }

      v15 = v18 >> 31;
      if (a5.i32[2] < 1 || a4.i32[2] >= v12)
      {
LABEL_30:
        if (a5.i32[3] >= 1 && a4.i32[3] < v12)
        {
          v21.i64[0] = -1;
          v21.i64[1] = -1;
          if ((vminvq_u32(v21) & 0x80000000) != 0)
          {
            v15 = 3;
            v26 = a3.i32[0];
            v28 = a3.i32[0] > 15 || a5.i32[0] < 1;
            v29 = 16;
            if ((v11 & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_60;
          }
        }

        if (v12 != 16)
        {
          goto LABEL_50;
        }

        if (a4.i32[0] >= 16)
        {
          if (a4.i32[1] >= 16)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v22.i64[0] = -1;
          v22.i64[1] = -1;
          if ((vminvq_u32(v22) & 0x80000000) != 0)
          {
            v12 = a4.i32[0];
            v15 = 0;
          }

          if (a4.i32[1] >= v12)
          {
LABEL_38:
            if (a4.i32[2] < v12)
            {
              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

        v24.i64[0] = -1;
        v24.i64[1] = -1;
        if ((vminvq_u32(v24) & 0x80000000) != 0)
        {
          v12 = a4.i32[1];
          v15 = 1;
        }

        if (a4.i32[2] < v12)
        {
LABEL_39:
          v23.i64[0] = -1;
          v23.i64[1] = -1;
          if ((vminvq_u32(v23) & 0x80000000) != 0)
          {
            v12 = a4.i32[2];
            v15 = 2;
          }

          if (a4.i32[3] < v12)
          {
LABEL_48:
            v25.i64[0] = -1;
            v25.i64[1] = -1;
            if ((vminvq_u32(v25) & 0x80000000) != 0)
            {
              v15 = 3;
            }
          }

LABEL_50:
          v26 = a3.i32[0];
          v28 = a3.i32[0] > 15 || a5.i32[0] < 1;
          v29 = 16;
          if ((v11 & 1) == 0)
          {
LABEL_57:
            v30 = -1;
            v30.i16[0] = v15 != 0;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v30), 0x1FuLL))) & 0x80000000) == 0)
            {
              v29 = 16;
            }

            else
            {
              v29 = a4.i32[0];
            }
          }

LABEL_60:
          v31 = 0;
          if (a5.i32[1] >= 1 && a4.i32[1] < v29)
          {
            v32 = -1;
            v32.i16[0] = v15 != 1;
            v33 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v32), 0x1FuLL)));
            if (v33 < 0)
            {
              v29 = a4.i32[1];
            }

            v31 = v33 >> 31;
          }

          v8.i64[1] = -1;
          if (a5.i32[2] >= 1 && a4.i32[2] < v29)
          {
            v34 = -1;
            v34.i16[0] = v15 != 2;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v34), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[2];
              v31 = 2;
            }
          }

          v8.i32[0] = v15;
          if (a5.i32[3] >= 1 && a4.i32[3] < v29)
          {
            v35 = -1;
            v35.i16[0] = v15 != 3;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v35), 0x1FuLL))) & 0x80000000) != 0)
            {
              v8.i32[1] = 3;
              v40 = 16;
              if (v11)
              {
                goto LABEL_93;
              }

LABEL_90:
              if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) == 0)
              {
                v40 = 16;
              }

              else
              {
                v40 = a4.i32[0];
              }

LABEL_93:
              v41 = 0;
              if (a5.i32[1] >= 1 && a4.i32[1] < v40)
              {
                v42.i64[0] = 0x100000001;
                v42.i64[1] = 0x100000001;
                v43 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v42)));
                if (v43 < 0)
                {
                  v40 = a4.i32[1];
                }

                v41 = v43 >> 31;
              }

              if (a5.i32[2] >= 1 && a4.i32[2] < v40)
              {
                v44.i64[0] = 0x200000002;
                v44.i64[1] = 0x200000002;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v44))) & 0x80000000) != 0)
                {
                  v40 = a4.i32[2];
                  v41 = 2;
                }
              }

              if (a5.i32[3] >= 1 && a4.i32[3] < v40)
              {
                v45.i64[0] = 0x300000003;
                v45.i64[1] = 0x300000003;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v45))) & 0x80000000) != 0)
                {
                  v8.i32[2] = 3;
                  v49 = 16;
                  if (v11)
                  {
                    goto LABEL_126;
                  }

LABEL_123:
                  if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) == 0)
                  {
                    v49 = 16;
                  }

                  else
                  {
                    v49 = a4.i32[0];
                  }

LABEL_126:
                  LOBYTE(v50) = 0;
                  if (a5.i32[1] >= 1 && a4.i32[1] < v49)
                  {
                    v51.i64[0] = 0x100000001;
                    v51.i64[1] = 0x100000001;
                    v52 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v51)));
                    if (v52 < 0)
                    {
                      v49 = a4.i32[1];
                    }

                    v50 = v52 >> 31;
                  }

                  if (a5.i32[2] >= 1)
                  {
                    v53.i64[0] = 0x200000002;
                    v53.i64[1] = 0x200000002;
                    v54 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v53)));
                    v55 = v54 >= 0 ? v49 : a4.i32[2];
                    v56 = v54 >= 0 ? v50 : 2;
                    if (a4.i32[2] < v49)
                    {
                      v49 = v55;
                      LOBYTE(v50) = v56;
                    }
                  }

                  if (a5.i32[3] >= 1 && a4.i32[3] < v49)
                  {
                    v57.i64[0] = 0x300000003;
                    v57.i64[1] = 0x300000003;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v57))) & 0x80000000) != 0)
                    {
                      LOBYTE(v50) = 3;
                      goto LABEL_174;
                    }
                  }

                  if (v49 != 16)
                  {
                    goto LABEL_174;
                  }

                  if (a4.i32[0] >= 16)
                  {
                    if (a4.i32[1] >= 16)
                    {
                      goto LABEL_148;
                    }
                  }

                  else
                  {
                    if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) != 0)
                    {
                      v49 = a4.i32[0];
                      LOBYTE(v50) = 0;
                    }

                    if (a4.i32[1] >= v49)
                    {
LABEL_148:
                      if (a4.i32[2] < v49)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_157;
                    }
                  }

                  v59.i64[0] = 0x100000001;
                  v59.i64[1] = 0x100000001;
                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v59))) & 0x80000000) != 0)
                  {
                    v49 = a4.i32[1];
                    LOBYTE(v50) = 1;
                  }

                  if (a4.i32[2] < v49)
                  {
LABEL_149:
                    v58.i64[0] = 0x200000002;
                    v58.i64[1] = 0x200000002;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v58))) & 0x80000000) != 0)
                    {
                      v49 = a4.i32[2];
                      LOBYTE(v50) = 2;
                    }

                    if (a4.i32[3] >= v49)
                    {
LABEL_174:
                      v8.i8[12] = v50;
                      v62.i64[0] = -1;
                      v62.i64[1] = -1;
                      v63 = vminvq_u32(v62);
                      if (v63 >= 0)
                      {
                        v64 = 16;
                      }

                      else
                      {
                        v64 = v26;
                      }

                      if (v28)
                      {
                        v65 = 16;
                      }

                      else
                      {
                        v65 = v64;
                      }

                      if (v63 >= 0)
                      {
                        v66 = v65;
                      }

                      else
                      {
                        v66 = a3.i32[1];
                      }

                      v67 = v63 >> 31;
                      if (a3.i32[1] >= v65)
                      {
                        v66 = v65;
                        v67 = 0;
                      }

                      if (a5.i32[1] < 1)
                      {
                        v68 = 0;
                      }

                      else
                      {
                        v65 = v66;
                        v68 = v67;
                      }

                      if (v63 >= 0)
                      {
                        v69 = v65;
                      }

                      else
                      {
                        v69 = a3.i32[2];
                      }

                      if (v63 >= 0)
                      {
                        v70 = v68;
                      }

                      else
                      {
                        v70 = 2;
                      }

                      if (a3.i32[2] >= v65)
                      {
                        v69 = v65;
                        v70 = v68;
                      }

                      if (a5.i32[2] >= 1)
                      {
                        v71 = v70;
                      }

                      else
                      {
                        v69 = v65;
                        v71 = v68;
                      }

                      if (a5.i32[3] >= 1 && a3.i32[3] < v69)
                      {
                        v72.i64[0] = -1;
                        v72.i64[1] = -1;
                        if ((vminvq_u32(v72) & 0x80000000) != 0)
                        {
                          v71 = 3;
                          v77 = 16;
                          if (v28)
                          {
                            goto LABEL_223;
                          }

LABEL_220:
                          v78 = -1;
                          v78.i16[0] = v71 != 0;
                          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v78), 0x1FuLL))) & 0x80000000) == 0)
                          {
                            v77 = 16;
                          }

                          else
                          {
                            v77 = v26;
                          }

LABEL_223:
                          v79 = 0;
                          if (a5.i32[1] >= 1 && a3.i32[1] < v77)
                          {
                            v80 = -1;
                            v80.i16[0] = v71 != 1;
                            v81 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v80), 0x1FuLL)));
                            if (v81 < 0)
                            {
                              v77 = a3.i32[1];
                            }

                            v79 = v81 >> 31;
                          }

                          v9.i64[1] = -1;
                          if (a5.i32[2] >= 1 && a3.i32[2] < v77)
                          {
                            v82 = -1;
                            v82.i16[0] = v71 != 2;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v82), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = a3.i32[2];
                              v79 = 2;
                            }
                          }

                          v9.i32[0] = v71;
                          if (a5.i32[3] >= 1 && a3.i32[3] < v77)
                          {
                            v83 = -1;
                            v83.i16[0] = v71 != 3;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v83), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v9.i32[1] = 3;
                              v88 = 16;
                              if (v28)
                              {
                                goto LABEL_256;
                              }

LABEL_253:
                              if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) == 0)
                              {
                                v88 = 16;
                              }

                              else
                              {
                                v88 = v26;
                              }

LABEL_256:
                              v89 = 0;
                              if (a5.i32[1] >= 1 && a3.i32[1] < v88)
                              {
                                v90.i64[0] = 0x100000001;
                                v90.i64[1] = 0x100000001;
                                v91 = vminvq_u32(vmvnq_s8(vceqq_s32(v9, v90)));
                                if (v91 < 0)
                                {
                                  v88 = a3.i32[1];
                                }

                                v89 = v91 >> 31;
                              }

                              if (a5.i32[2] >= 1 && a3.i32[2] < v88)
                              {
                                v92.i64[0] = 0x200000002;
                                v92.i64[1] = 0x200000002;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v92))) & 0x80000000) != 0)
                                {
                                  v88 = a3.i32[2];
                                  v89 = 2;
                                }
                              }

                              if (a5.i32[3] >= 1 && a3.i32[3] < v88)
                              {
                                v93.i64[0] = 0x300000003;
                                v93.i64[1] = 0x300000003;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v93))) & 0x80000000) != 0)
                                {
                                  v9.i32[2] = 3;
                                  v97 = 16;
                                  if (v28)
                                  {
                                    goto LABEL_289;
                                  }

LABEL_286:
                                  if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) == 0)
                                  {
                                    v97 = 16;
                                  }

                                  else
                                  {
                                    v97 = v26;
                                  }

LABEL_289:
                                  LOBYTE(v98) = 0;
                                  if (a5.i32[1] >= 1 && a3.i32[1] < v97)
                                  {
                                    v99.i64[0] = 0x100000001;
                                    v99.i64[1] = 0x100000001;
                                    v100 = vminvq_u32(vmvnq_s8(vceqq_s32(v9, v99)));
                                    if (v100 < 0)
                                    {
                                      v97 = a3.i32[1];
                                    }

                                    v98 = v100 >> 31;
                                  }

                                  if (a5.i32[2] >= 1 && a3.i32[2] < v97)
                                  {
                                    v101.i64[0] = 0x200000002;
                                    v101.i64[1] = 0x200000002;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v101))) & 0x80000000) != 0)
                                    {
                                      v97 = a3.i32[2];
                                      LOBYTE(v98) = 2;
                                    }
                                  }

                                  if (a5.i32[3] >= 1 && a3.i32[3] < v97)
                                  {
                                    v102.i64[0] = 0x300000003;
                                    v102.i64[1] = 0x300000003;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v102))) & 0x80000000) != 0)
                                    {
                                      LOBYTE(v98) = 3;
                                      goto LABEL_326;
                                    }
                                  }

                                  if (v97 != 16)
                                  {
LABEL_326:
                                    v9.i8[12] = v98;
                                    *a2 = v71;
                                    goto LABEL_327;
                                  }

                                  if (v26 >= 16)
                                  {
                                    if (a3.i32[1] >= 16)
                                    {
                                      goto LABEL_306;
                                    }
                                  }

                                  else
                                  {
                                    if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) != 0)
                                    {
                                      v97 = v26;
                                      LOBYTE(v98) = 0;
                                    }

                                    if (a3.i32[1] >= v97)
                                    {
LABEL_306:
                                      if (a3.i32[2] < v97)
                                      {
                                        goto LABEL_307;
                                      }

LABEL_315:
                                      if (a3.i32[3] < v97)
                                      {
LABEL_316:
                                        v105.i64[0] = 0x300000003;
                                        v105.i64[1] = 0x300000003;
                                        if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v105))) & 0x80000000) != 0)
                                        {
                                          LOBYTE(v98) = 3;
                                        }

                                        goto LABEL_326;
                                      }

                                      goto LABEL_326;
                                    }
                                  }

                                  v104.i64[0] = 0x100000001;
                                  v104.i64[1] = 0x100000001;
                                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v104))) & 0x80000000) != 0)
                                  {
                                    v97 = a3.i32[1];
                                    LOBYTE(v98) = 1;
                                  }

                                  if (a3.i32[2] < v97)
                                  {
LABEL_307:
                                    v103.i64[0] = 0x200000002;
                                    v103.i64[1] = 0x200000002;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v103))) & 0x80000000) != 0)
                                    {
                                      v97 = a3.i32[2];
                                      LOBYTE(v98) = 2;
                                    }

                                    if (a3.i32[3] >= v97)
                                    {
                                      goto LABEL_326;
                                    }

                                    goto LABEL_316;
                                  }

                                  goto LABEL_315;
                                }
                              }

                              if (v88 != 16)
                              {
                                goto LABEL_285;
                              }

                              if (v26 >= 16)
                              {
                                if (a3.i32[1] >= 16)
                                {
                                  goto LABEL_273;
                                }
                              }

                              else
                              {
                                if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) != 0)
                                {
                                  v88 = v26;
                                  v89 = 0;
                                }

                                if (a3.i32[1] >= v88)
                                {
LABEL_273:
                                  if (a3.i32[2] < v88)
                                  {
                                    goto LABEL_274;
                                  }

                                  goto LABEL_282;
                                }
                              }

                              v95.i64[0] = 0x100000001;
                              v95.i64[1] = 0x100000001;
                              if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v95))) & 0x80000000) != 0)
                              {
                                v88 = a3.i32[1];
                                v89 = 1;
                              }

                              if (a3.i32[2] < v88)
                              {
LABEL_274:
                                v94.i64[0] = 0x200000002;
                                v94.i64[1] = 0x200000002;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v94))) & 0x80000000) != 0)
                                {
                                  v88 = a3.i32[2];
                                  v89 = 2;
                                }

                                if (a3.i32[3] < v88)
                                {
LABEL_283:
                                  v96.i64[0] = 0x300000003;
                                  v96.i64[1] = 0x300000003;
                                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v96))) & 0x80000000) != 0)
                                  {
                                    v89 = 3;
                                  }
                                }

LABEL_285:
                                v9.i32[2] = v89;
                                v97 = 16;
                                if (v28)
                                {
                                  goto LABEL_289;
                                }

                                goto LABEL_286;
                              }

LABEL_282:
                              if (a3.i32[3] >= v88)
                              {
                                goto LABEL_285;
                              }

                              goto LABEL_283;
                            }
                          }

                          if (v77 != 16)
                          {
                            goto LABEL_252;
                          }

                          if (v26 >= 16)
                          {
                            if (a3.i32[1] >= 16)
                            {
                              goto LABEL_240;
                            }
                          }

                          else
                          {
                            v84 = -1;
                            v84.i16[0] = v71 != 0;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v84), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = v26;
                              v79 = 0;
                            }

                            if (a3.i32[1] >= v77)
                            {
LABEL_240:
                              if (a3.i32[2] < v77)
                              {
                                goto LABEL_241;
                              }

                              goto LABEL_249;
                            }
                          }

                          v86 = -1;
                          v86.i16[0] = v71 != 1;
                          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v86), 0x1FuLL))) & 0x80000000) != 0)
                          {
                            v77 = a3.i32[1];
                            v79 = 1;
                          }

                          if (a3.i32[2] < v77)
                          {
LABEL_241:
                            v85 = -1;
                            v85.i16[0] = v71 != 2;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v85), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = a3.i32[2];
                              v79 = 2;
                            }

                            if (a3.i32[3] < v77)
                            {
LABEL_250:
                              v87 = -1;
                              v87.i16[0] = v71 != 3;
                              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v87), 0x1FuLL))) & 0x80000000) != 0)
                              {
                                v79 = 3;
                              }
                            }

LABEL_252:
                            v9.i32[1] = v79;
                            v88 = 16;
                            if (v28)
                            {
                              goto LABEL_256;
                            }

                            goto LABEL_253;
                          }

LABEL_249:
                          if (a3.i32[3] >= v77)
                          {
                            goto LABEL_252;
                          }

                          goto LABEL_250;
                        }
                      }

                      if (v69 != 16)
                      {
                        goto LABEL_219;
                      }

                      if (v26 >= 16)
                      {
                        if (a3.i32[1] >= 16)
                        {
                          goto LABEL_207;
                        }
                      }

                      else
                      {
                        v73.i64[0] = -1;
                        v73.i64[1] = -1;
                        if ((vminvq_u32(v73) & 0x80000000) != 0)
                        {
                          v69 = v26;
                          v71 = 0;
                        }

                        if (a3.i32[1] >= v69)
                        {
LABEL_207:
                          if (a3.i32[2] < v69)
                          {
                            goto LABEL_208;
                          }

                          goto LABEL_216;
                        }
                      }

                      v75.i64[0] = -1;
                      v75.i64[1] = -1;
                      if ((vminvq_u32(v75) & 0x80000000) != 0)
                      {
                        v69 = a3.i32[1];
                        v71 = 1;
                      }

                      if (a3.i32[2] < v69)
                      {
LABEL_208:
                        v74.i64[0] = -1;
                        v74.i64[1] = -1;
                        if ((vminvq_u32(v74) & 0x80000000) != 0)
                        {
                          v69 = a3.i32[2];
                          v71 = 2;
                        }

                        if (a3.i32[3] < v69)
                        {
LABEL_217:
                          v76.i64[0] = -1;
                          v76.i64[1] = -1;
                          if ((vminvq_u32(v76) & 0x80000000) != 0)
                          {
                            v71 = 3;
                          }
                        }

LABEL_219:
                        v77 = 16;
                        if (v28)
                        {
                          goto LABEL_223;
                        }

                        goto LABEL_220;
                      }

LABEL_216:
                      if (a3.i32[3] >= v69)
                      {
                        goto LABEL_219;
                      }

                      goto LABEL_217;
                    }

LABEL_158:
                    v60.i64[0] = 0x300000003;
                    v60.i64[1] = 0x300000003;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v60))) & 0x80000000) != 0)
                    {
                      LOBYTE(v50) = 3;
                    }

                    goto LABEL_174;
                  }

LABEL_157:
                  if (a4.i32[3] >= v49)
                  {
                    goto LABEL_174;
                  }

                  goto LABEL_158;
                }
              }

              if (v40 != 16)
              {
                goto LABEL_122;
              }

              if (a4.i32[0] >= 16)
              {
                if (a4.i32[1] >= 16)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) != 0)
                {
                  v40 = a4.i32[0];
                  v41 = 0;
                }

                if (a4.i32[1] >= v40)
                {
LABEL_110:
                  if (a4.i32[2] < v40)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_119;
                }
              }

              v47.i64[0] = 0x100000001;
              v47.i64[1] = 0x100000001;
              if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v47))) & 0x80000000) != 0)
              {
                v40 = a4.i32[1];
                v41 = 1;
              }

              if (a4.i32[2] < v40)
              {
LABEL_111:
                v46.i64[0] = 0x200000002;
                v46.i64[1] = 0x200000002;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v46))) & 0x80000000) != 0)
                {
                  v40 = a4.i32[2];
                  v41 = 2;
                }

                if (a4.i32[3] < v40)
                {
LABEL_120:
                  v48.i64[0] = 0x300000003;
                  v48.i64[1] = 0x300000003;
                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v48))) & 0x80000000) != 0)
                  {
                    v41 = 3;
                  }
                }

LABEL_122:
                v8.i32[2] = v41;
                v49 = 16;
                if (v11)
                {
                  goto LABEL_126;
                }

                goto LABEL_123;
              }

LABEL_119:
              if (a4.i32[3] >= v40)
              {
                goto LABEL_122;
              }

              goto LABEL_120;
            }
          }

          if (v29 != 16)
          {
            goto LABEL_89;
          }

          if (a4.i32[0] >= 16)
          {
            if (a4.i32[1] >= 16)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v36 = -1;
            v36.i16[0] = v15 != 0;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v36), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[0];
              v31 = 0;
            }

            if (a4.i32[1] >= v29)
            {
LABEL_77:
              if (a4.i32[2] < v29)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            }
          }

          v38 = -1;
          v38.i16[0] = v15 != 1;
          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v38), 0x1FuLL))) & 0x80000000) != 0)
          {
            v29 = a4.i32[1];
            v31 = 1;
          }

          if (a4.i32[2] < v29)
          {
LABEL_78:
            v37 = -1;
            v37.i16[0] = v15 != 2;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v37), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[2];
              v31 = 2;
            }

            if (a4.i32[3] < v29)
            {
LABEL_87:
              v39 = -1;
              v39.i16[0] = v15 != 3;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v39), 0x1FuLL))) & 0x80000000) != 0)
              {
                v31 = 3;
              }
            }

LABEL_89:
            v8.i32[1] = v31;
            v40 = 16;
            if (v11)
            {
              goto LABEL_93;
            }

            goto LABEL_90;
          }

LABEL_86:
          if (a4.i32[3] >= v29)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

LABEL_47:
        if (a4.i32[3] >= v12)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v15 = 0;
      if (a5.i32[2] < 1 || a4.i32[2] >= v12)
      {
        goto LABEL_30;
      }
    }

    v20.i64[0] = -1;
    v20.i64[1] = -1;
    if ((vminvq_u32(v20) & 0x80000000) != 0)
    {
      v12 = a4.i32[2];
      v15 = 2;
    }

    goto LABEL_30;
  }

LABEL_327:
  v228 = a5;
  v106 = vcgtq_s32(vdupq_n_s32(v6), a5);
  v107 = vminvq_u32(v106);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_495;
  }

  v7.i32[0] = *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[0] & 3)));
  v106.i32[0] = 4 * *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[0] & 3)));
  v108 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v7, v106), 0), a3, a4);
  v109 = v108.i32[0];
  v111 = a5.i32[0] < v6 || v108.i32[0] > 15;
  v112.i64[0] = -1;
  v112.i64[1] = -1;
  v113 = vminvq_u32(v112);
  if (v113 >= 0)
  {
    v114 = 16;
  }

  else
  {
    v114 = v108.i32[0];
  }

  if (v111)
  {
    v115 = 16;
  }

  else
  {
    v115 = v114;
  }

  v116 = v108.i32[1];
  if (v113 >= 0)
  {
    v117 = v115;
  }

  else
  {
    v117 = v108.i32[1];
  }

  v118 = v113 >> 31;
  if (v108.i32[1] >= v115)
  {
    v117 = v115;
    v118 = 0;
  }

  if (a5.i32[1] < v6)
  {
    v118 = 0;
  }

  else
  {
    v115 = v117;
  }

  v119 = v108.i32[2];
  if (v113 >= 0)
  {
    v120 = v115;
  }

  else
  {
    v120 = v108.i32[2];
  }

  if (v113 >= 0)
  {
    v121 = v118;
  }

  else
  {
    v121 = 2;
  }

  if (v108.i32[2] >= v115)
  {
    v120 = v115;
    v121 = v118;
  }

  if (a5.i32[2] >= v6)
  {
    v122 = v121;
  }

  else
  {
    v120 = v115;
    v122 = v118;
  }

  v123 = v108.i32[3];
  if (a5.i32[3] < v6 || v108.i32[3] >= v120 || (v124.i64[0] = -1, v124.i64[1] = -1, (vminvq_u32(v124) & 0x80000000) == 0))
  {
    if (v120 != 16)
    {
      goto LABEL_379;
    }

    if (v109 >= 16)
    {
      if (v116 >= 16)
      {
        goto LABEL_367;
      }
    }

    else
    {
      v125.i64[0] = -1;
      v125.i64[1] = -1;
      if ((vminvq_u32(v125) & 0x80000000) != 0)
      {
        v120 = v109;
        v122 = 0;
      }

      if (v116 >= v120)
      {
LABEL_367:
        if (v119 < v120)
        {
          goto LABEL_368;
        }

        goto LABEL_376;
      }
    }

    v127.i64[0] = -1;
    v127.i64[1] = -1;
    if ((vminvq_u32(v127) & 0x80000000) != 0)
    {
      v120 = v116;
      v122 = 1;
    }

    if (v119 < v120)
    {
LABEL_368:
      v126.i64[0] = -1;
      v126.i64[1] = -1;
      if ((vminvq_u32(v126) & 0x80000000) != 0)
      {
        v120 = v119;
        v122 = 2;
      }

      if (v123 >= v120)
      {
LABEL_379:
        v129 = 16;
        if (v111)
        {
          goto LABEL_383;
        }

        goto LABEL_380;
      }

LABEL_377:
      v128.i64[0] = -1;
      v128.i64[1] = -1;
      if ((vminvq_u32(v128) & 0x80000000) != 0)
      {
        v122 = 3;
      }

      goto LABEL_379;
    }

LABEL_376:
    if (v123 >= v120)
    {
      goto LABEL_379;
    }

    goto LABEL_377;
  }

  v122 = 3;
  v129 = 16;
  if (v111)
  {
    goto LABEL_383;
  }

LABEL_380:
  v130 = -1;
  v130.i16[0] = v122 != 0;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v130), 0x1FuLL))) & 0x80000000) == 0)
  {
    v129 = 16;
  }

  else
  {
    v129 = v109;
  }

LABEL_383:
  v131 = 0;
  if (a5.i32[1] >= v6 && v116 < v129)
  {
    v132 = -1;
    v132.i16[0] = v122 != 1;
    v133 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v132), 0x1FuLL)));
    if (v133 < 0)
    {
      v129 = v116;
    }

    v131 = v133 >> 31;
  }

  v7.i64[1] = -1;
  if (a5.i32[2] >= v6)
  {
    v134 = -1;
    v134.i16[0] = v122 != 2;
    v135 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v134), 0x1FuLL)));
    v136 = v135 >= 0 ? v129 : v119;
    v137 = v135 >= 0 ? v131 : 2;
    if (v119 < v129)
    {
      v129 = v136;
      v131 = v137;
    }
  }

  v7.i32[0] = v122;
  if (a5.i32[3] >= v6 && v123 < v129)
  {
    v138 = -1;
    v138.i16[0] = v122 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v138), 0x1FuLL))) & 0x80000000) != 0)
    {
      v131 = 3;
      goto LABEL_421;
    }
  }

  if (v129 != 16)
  {
    goto LABEL_421;
  }

  if (v109 >= 16)
  {
    if (v116 >= 16)
    {
      goto LABEL_405;
    }
  }

  else
  {
    v139 = -1;
    v139.i16[0] = v122 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v139), 0x1FuLL))) & 0x80000000) != 0)
    {
      v129 = v109;
      v131 = 0;
    }

    if (v116 >= v129)
    {
LABEL_405:
      if (v119 < v129)
      {
        goto LABEL_406;
      }

LABEL_414:
      if (v123 >= v129)
      {
        goto LABEL_421;
      }

      goto LABEL_415;
    }
  }

  v141 = -1;
  v141.i16[0] = v122 != 1;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v141), 0x1FuLL))) & 0x80000000) != 0)
  {
    v129 = v116;
    v131 = 1;
  }

  if (v119 >= v129)
  {
    goto LABEL_414;
  }

LABEL_406:
  v140 = -1;
  v140.i16[0] = v122 != 2;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v140), 0x1FuLL))) & 0x80000000) != 0)
  {
    v129 = v119;
    v131 = 2;
  }

  if (v123 < v129)
  {
LABEL_415:
    v142 = -1;
    v142.i16[0] = v122 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v142), 0x1FuLL))) & 0x80000000) != 0)
    {
      v131 = 3;
    }
  }

LABEL_421:
  v7.i32[1] = v131;
  v143 = vminvq_u32(vtstq_s32(v7, v7));
  if (v143 >= 0)
  {
    v144 = 16;
  }

  else
  {
    v144 = v109;
  }

  if (v111)
  {
    v144 = 16;
  }

  v145 = 0;
  if (a5.i32[1] >= v6 && v116 < v144)
  {
    v146.i64[0] = 0x100000001;
    v146.i64[1] = 0x100000001;
    v147 = vminvq_u32(vmvnq_s8(vceqq_s32(v7, v146)));
    if (v147 < 0)
    {
      v144 = v116;
    }

    v145 = v147 >> 31;
  }

  if (a5.i32[2] >= v6 && v119 < v144)
  {
    v148.i64[0] = 0x200000002;
    v148.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v148))) & 0x80000000) != 0)
    {
      v144 = v119;
      v145 = 2;
    }
  }

  if (a5.i32[3] >= v6 && v123 < v144)
  {
    v149.i64[0] = 0x300000003;
    v149.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v149))) & 0x80000000) != 0)
    {
      v145 = 3;
      goto LABEL_457;
    }
  }

  if (v144 != 16)
  {
    goto LABEL_457;
  }

  if (v109 >= 16)
  {
    if (v116 >= 16)
    {
      goto LABEL_443;
    }
  }

  else
  {
    if (v143 < 0)
    {
      v144 = v109;
      v145 = 0;
    }

    if (v116 >= v144)
    {
LABEL_443:
      if (v119 < v144)
      {
        goto LABEL_444;
      }

LABEL_452:
      if (v123 >= v144)
      {
        goto LABEL_457;
      }

      goto LABEL_453;
    }
  }

  v151.i64[0] = 0x100000001;
  v151.i64[1] = 0x100000001;
  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v151))) & 0x80000000) != 0)
  {
    v144 = v116;
    v145 = 1;
  }

  if (v119 >= v144)
  {
    goto LABEL_452;
  }

LABEL_444:
  v150.i64[0] = 0x200000002;
  v150.i64[1] = 0x200000002;
  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v150))) & 0x80000000) != 0)
  {
    v144 = v119;
    v145 = 2;
  }

  if (v123 < v144)
  {
LABEL_453:
    v152.i64[0] = 0x300000003;
    v152.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v152))) & 0x80000000) != 0)
    {
      v145 = 3;
    }
  }

LABEL_457:
  v7.i32[2] = v145;
  v153 = vminvq_u32(vtstq_s32(v7, v7));
  if (v153 >= 0)
  {
    v154 = 16;
  }

  else
  {
    v154 = v109;
  }

  if (v111)
  {
    v155 = 16;
  }

  else
  {
    v155 = v154;
  }

  v156 = 0;
  if (a5.i32[1] >= v6 && v116 < v155)
  {
    v157.i64[0] = 0x100000001;
    v157.i64[1] = 0x100000001;
    v158 = vminvq_u32(vmvnq_s8(vceqq_s32(v7, v157)));
    if (v158 < 0)
    {
      v155 = v116;
    }

    v156 = v158 >> 31;
  }

  if (a5.i32[2] >= v6 && v119 < v155)
  {
    v159.i64[0] = 0x200000002;
    v159.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v159))) & 0x80000000) != 0)
    {
      v155 = v119;
      v156 = 2;
    }
  }

  if (a5.i32[3] >= v6 && v123 < v155)
  {
    v160.i64[0] = 0x300000003;
    v160.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v160))) & 0x80000000) != 0)
    {
      v156 = 3;
      goto LABEL_494;
    }
  }

  if (v155 == 16)
  {
    if (v109 >= 16)
    {
      if (v116 >= 16)
      {
        goto LABEL_480;
      }
    }

    else
    {
      if (v153 < 0)
      {
        v155 = v109;
        v156 = 0;
      }

      if (v116 >= v155)
      {
LABEL_480:
        if (v119 < v155)
        {
          goto LABEL_481;
        }

LABEL_489:
        if (v123 < v155)
        {
LABEL_490:
          v163.i64[0] = 0x300000003;
          v163.i64[1] = 0x300000003;
          if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v163))) & 0x80000000) != 0)
          {
            v156 = 3;
          }

          goto LABEL_494;
        }

        goto LABEL_494;
      }
    }

    v162.i64[0] = 0x100000001;
    v162.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v162))) & 0x80000000) != 0)
    {
      v155 = v116;
      v156 = 1;
    }

    if (v119 < v155)
    {
LABEL_481:
      v161.i64[0] = 0x200000002;
      v161.i64[1] = 0x200000002;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v161))) & 0x80000000) != 0)
      {
        v155 = v119;
        v156 = 2;
      }

      if (v123 >= v155)
      {
        goto LABEL_494;
      }

      goto LABEL_490;
    }

    goto LABEL_489;
  }

LABEL_494:
  v7.i32[3] = v156;
  *a2 = v122;
LABEL_495:
  if (v7.i32[0] != v9.i32[0])
  {
    v227 = a5;
    v167 = *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[0] & 3)));
    if (v7.i32[1] != v9.i32[0])
    {
      v226 = a5;
      v167 = v167 * *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[4] & 3)));
      if (v7.i32[2] != v9.i32[0])
      {
        v225 = a5;
        v167 *= *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[8] & 3)));
        if (v7.i32[3] != v9.i32[0])
        {
          v224 = a5;
          v167 *= *(&v224 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[12] & 3)));
        }
      }
    }

    v164 = v167 < 0x2000;
    if (v7.i32[0] != v8.i32[0])
    {
      goto LABEL_497;
    }

LABEL_507:
    v166 = 1;
    goto LABEL_508;
  }

  v164 = 1;
  if (v7.i32[0] == v8.i32[0])
  {
    goto LABEL_507;
  }

LABEL_497:
  v223 = a5;
  v165 = *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[0] & 3)));
  if (v7.i32[1] != v8.i32[0])
  {
    v222 = a5;
    v165 = v165 * *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[4] & 3)));
    if (v7.i32[2] != v8.i32[0])
    {
      v221 = a5;
      v165 *= *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[8] & 3)));
      if (v7.i32[3] != v8.i32[0])
      {
        v220 = a5;
        v165 *= *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[12] & 3)));
      }
    }
  }

  v166 = v165 < 0x200;
LABEL_508:
  v219 = a5;
  v168 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[0] & 3)));
  v169 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[4] & 3)));
  if (*(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[8] & 3))) <= 32 && v168 <= 32 && v169 < 33 || v9.i32[0] >= 1 && v9.i32[1] > 0 || v8.i32[0] >= 1 && v8.i64[0] > 0)
  {
    if ((v107 & 0x80000000) != 0)
    {
      return 0x100000000;
    }

LABEL_516:
    v170 = a3.i32[0] > 15 || a5.i32[0] < v6;
    v171 = v170;
    v172 = 16;
    if (!v170)
    {
      v173.i64[0] = -1;
      v173.i64[1] = -1;
      if ((vminvq_u32(v173) & 0x80000000) == 0)
      {
        v172 = 16;
      }

      else
      {
        v172 = a3.i32[0];
      }
    }

    v174 = 0;
    if (a5.i32[1] >= v6 && a3.i32[1] < v172)
    {
      v175.i64[0] = -1;
      v175.i64[1] = -1;
      v176 = vminvq_u32(v175);
      if (v176 < 0)
      {
        v172 = a3.i32[1];
      }

      v174 = v176 >> 31;
    }

    if (a5.i32[2] >= v6 && a3.i32[2] < v172)
    {
      v177.i64[0] = -1;
      v177.i64[1] = -1;
      if ((vminvq_u32(v177) & 0x80000000) != 0)
      {
        v172 = a3.i32[2];
        v174 = 2;
      }
    }

    if (a5.i32[3] >= v6 && a3.i32[3] < v172 && (v178.i64[0] = -1, v178.i64[1] = -1, (vminvq_u32(v178) & 0x80000000) != 0))
    {
      v174 = 3;
      v188 = a4.i32[0];
      v189 = 16;
      if (a4.i32[0] > 15)
      {
        goto LABEL_573;
      }
    }

    else
    {
      if (v172 == 16)
      {
        v179.i64[0] = -1;
        v179.i64[1] = -1;
        v180 = vminvq_u32(v179);
        if (v180 >= 0)
        {
          v181 = 16;
        }

        else
        {
          v181 = a3.i32[0];
        }

        if (v180 >= 0)
        {
          v182 = v174;
        }

        else
        {
          v182 = 0;
        }

        if (a3.i32[0] < 16)
        {
          v172 = v181;
          v174 = v182;
        }

        if (v180 >= 0)
        {
          v183 = v172;
        }

        else
        {
          v183 = a3.i32[1];
        }

        if (v180 < 0)
        {
          v184 = 1;
        }

        else
        {
          v184 = v174;
        }

        if (a3.i32[1] < v172)
        {
          v172 = v183;
          v174 = v184;
        }

        if (v180 >= 0)
        {
          v185 = v172;
        }

        else
        {
          v185 = a3.i32[2];
        }

        if (v180 >= 0)
        {
          v186 = v174;
        }

        else
        {
          v186 = 2;
        }

        if (a3.i32[2] < v172)
        {
          v172 = v185;
          v174 = v186;
        }

        if (v180 >= 0)
        {
          v187 = v174;
        }

        else
        {
          v187 = 3;
        }

        if (a3.i32[3] < v172)
        {
          v174 = v187;
        }
      }

      v188 = a4.i32[0];
      v189 = 16;
      if (a4.i32[0] > 15)
      {
LABEL_573:
        v191 = 0;
        if (a5.i32[1] >= v6 && a4.i32[1] < v189)
        {
          v192.i64[0] = -1;
          v192.i64[1] = -1;
          v193 = vminvq_u32(v192);
          if (v193 < 0)
          {
            v189 = a4.i32[1];
          }

          v191 = v193 >> 31;
        }

        if (a5.i32[2] >= v6 && a4.i32[2] < v189)
        {
          v194.i64[0] = -1;
          v194.i64[1] = -1;
          if ((vminvq_u32(v194) & 0x80000000) != 0)
          {
            v189 = a4.i32[2];
            v191 = 2;
          }
        }

        if (a5.i32[3] >= v6 && a4.i32[3] < v189)
        {
          v195.i64[0] = -1;
          v195.i64[1] = -1;
          if ((vminvq_u32(v195) & 0x80000000) != 0)
          {
            v191 = 3;
            result.n64_u32[0] = v174;
            v201 = 3;
            if (v174 == 3)
            {
LABEL_604:
              v202 = 16;
              if ((v171 & 1) == 0)
              {
                v203 = -1;
                v203.i16[0] = v174 != 0;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v203), 0x1FuLL))) & 0x80000000) == 0)
                {
                  v202 = 16;
                }

                else
                {
                  v202 = a3.i32[0];
                }
              }

              v204 = 0;
              if (a5.i32[1] >= v6 && a3.i32[1] < v202)
              {
                v205 = -1;
                v205.i16[0] = v174 != 1;
                v206 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v205), 0x1FuLL)));
                if (v206 < 0)
                {
                  v202 = a3.i32[1];
                }

                v204 = v206 >> 31;
              }

              if (a5.i32[2] >= v6 && a3.i32[2] < v202)
              {
                v207 = -1;
                v207.i16[0] = v174 != 2;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v207), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[2];
                  v204 = 2;
                }
              }

              if (a5.i32[3] >= v6 && a3.i32[3] < v202)
              {
                v208 = -1;
                v208.i16[0] = v174 != 3;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v208), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v191 = v174;
                  result.n64_u32[1] = 3;
                  goto LABEL_648;
                }
              }

              if (v202 != 16)
              {
                goto LABEL_643;
              }

              if (a3.i32[0] >= 16)
              {
                if (a3.i32[1] >= 16)
                {
                  goto LABEL_625;
                }
              }

              else
              {
                v209 = -1;
                v209.i16[0] = v174 != 0;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v209), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[0];
                  v204 = 0;
                }

                if (a3.i32[1] >= v202)
                {
LABEL_625:
                  if (a3.i32[2] < v202)
                  {
                    goto LABEL_626;
                  }

                  goto LABEL_640;
                }
              }

              v213 = -1;
              v213.i16[0] = v174 != 1;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v213), 0x1FuLL))) & 0x80000000) != 0)
              {
                v202 = a3.i32[1];
                v204 = 1;
              }

              if (a3.i32[2] < v202)
              {
LABEL_626:
                v210 = -1;
                v210.i16[0] = v174 != 2;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v210), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[2];
                  v204 = 2;
                }

                if (a3.i32[3] >= v202)
                {
                  goto LABEL_643;
                }

                goto LABEL_641;
              }

LABEL_640:
              if (a3.i32[3] >= v202)
              {
LABEL_643:
                v191 = v174;
                result.n64_u32[1] = v204;
LABEL_648:
                *a2 = v191;
                return result;
              }

LABEL_641:
              v214 = -1;
              v214.i16[0] = v174 != 3;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v214), 0x1FuLL))) & 0x80000000) != 0)
              {
                v204 = 3;
              }

              goto LABEL_643;
            }

LABEL_647:
            result.n64_u32[1] = v201;
            goto LABEL_648;
          }
        }

        if (v189 != 16)
        {
          goto LABEL_603;
        }

        if (v188 >= 16)
        {
          if (a4.i32[1] >= 16)
          {
            goto LABEL_590;
          }
        }

        else
        {
          v196.i64[0] = -1;
          v196.i64[1] = -1;
          if ((vminvq_u32(v196) & 0x80000000) != 0)
          {
            v189 = v188;
            v191 = 0;
          }

          if (a4.i32[1] >= v189)
          {
LABEL_590:
            if (a4.i32[2] < v189)
            {
              goto LABEL_591;
            }

            goto LABEL_600;
          }
        }

        v199.i64[0] = -1;
        v199.i64[1] = -1;
        if ((vminvq_u32(v199) & 0x80000000) != 0)
        {
          v189 = a4.i32[1];
          v191 = 1;
        }

        if (a4.i32[2] < v189)
        {
LABEL_591:
          v197.i64[0] = -1;
          v197.i64[1] = -1;
          if ((vminvq_u32(v197) & 0x80000000) != 0)
          {
            v189 = a4.i32[2];
            v191 = 2;
          }

          if (a4.i32[3] < v189)
          {
LABEL_601:
            v200.i64[0] = -1;
            v200.i64[1] = -1;
            if ((vminvq_u32(v200) & 0x80000000) != 0)
            {
              v191 = 3;
            }
          }

LABEL_603:
          result.n64_u32[0] = v174;
          v201 = v191;
          if (v191 == v174)
          {
            goto LABEL_604;
          }

          goto LABEL_647;
        }

LABEL_600:
        if (a4.i32[3] >= v189)
        {
          goto LABEL_603;
        }

        goto LABEL_601;
      }
    }

    if (a5.i32[0] >= v6)
    {
      v190.i64[0] = -1;
      v190.i64[1] = -1;
      if ((vminvq_u32(v190) & 0x80000000) == 0)
      {
        v189 = 16;
      }

      else
      {
        v189 = v188;
      }
    }

    goto LABEL_573;
  }

  if (v168 < 0x2000)
  {
    v211 = v164 && v166;
    if (v164 && v166)
    {
      v215 = -1;
    }

    else
    {
      v215 = 0;
    }

    result.n64_u64[0] = vbslq_s8(vdupq_n_s32(v215), v7, xmmword_239B060A0).u64[0];
    if ((v107 & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    v211 = v169 < 0x2000 && v164 && v166;
    if (v211)
    {
      v212 = -1;
    }

    else
    {
      v212 = 0;
    }

    result.n64_u64[0] = vbslq_s8(vdupq_n_s32(v212), v7, xmmword_239B060A0).u64[0];
    if ((v107 & 0x80000000) != 0)
    {
      return result;
    }
  }

  if (!v211)
  {
    goto LABEL_516;
  }

  return result;
}

uint64_t MPSNDArrayIdentityAMDBehaviors::getNZStepsLog2PerThread(__n128 a1, uint64_t a2, int a3)
{
  v3 = 2 * (a1.n128_u32[2] > 2);
  if (a1.n128_u32[2] == 2)
  {
    v3 = 1;
  }

  if ((a1.n128_u32[2] * a1.n128_u32[3]) >= 513)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t EncodeArrayIdentity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    strcpy(v107, "MPSNDArrayIdentityTest");
    HIBYTE(v107[2]) = 22;
    v106 = 0;
    LOBYTE(v105) = 0;
    MPSKernelLogPerfTestCommandline(a1, a4, v107, &v105);
    if (v106 < 0)
    {
      operator delete(v105);
      if ((SHIBYTE(v107[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((SHIBYTE(v107[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v107[0]);
  }

LABEL_4:
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *v8;
  if (*(*(*v8 + 8) + 8) == **(*v8 + 8) || (BaseTensor::GetAccessPattern(), v10 = **(v9 + 8), *(*(v9 + 8) + 8) == v10) || (v85 = a2, v11 = **(v9 + 24), *(*(v9 + 24) + 8) == v11))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = *(*v10 + 8);
  v13 = *v11;
  v83 = *(*v11 + 2);
  DimensionSize = BaseTensor::GetDimensionSize(*v11);
  v15 = 1;
  v16 = BaseTensor::GetDimensionSize(v13);
  v17 = BaseTensor::GetDimensionSize(v13);
  v18 = BaseTensor::GetDimensionSize(v13);
  *&v19 = __PAIR64__(v16, DimensionSize);
  *(&v19 + 1) = __PAIR64__(v18, v17);
  v89 = v19;
  v20 = *(a1 + *MEMORY[0x277CD7370]);
  v104 = 0;
  v21 = *(v20 + 32);
  v22 = (*(*v21 + 32))(v21, &v104);
  v23 = v104;
  v24 = LODWORD(v22);
  v92 = v89;
  v25 = BYTE4(v22);
  v27 = v26;
  v29 = v28;
  v82 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (LOBYTE(v22) & 3)));
  v30.n128_u32[0] = v82;
  v91 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v22) & 3)));
  v30.n128_u32[1] = v91;
  v86 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
  v30.n128_u32[2] = v86;
  v87 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
  v30.n128_u32[3] = v87;
  v88 = v104;
  if (LODWORD(v22) != v104)
  {
    v80 = v30;
    v31 = (*(*v21 + 24))(v21, v22, v30);
    v30 = v80;
    v23 = v88;
    v15 = v31;
  }

  v100 = v30;
  v101 = v89;
  v32 = (*(*v21 + 40))(v21, v24 != v23, v30);
  v33 = v32;
  v34 = v86 + (1 << v32) - 1;
  v90 = 1 << v32;
  v35 = -(1 << v32);
  v36 = 31 - __clz(v34 & v35);
  v37 = v34 & v35;
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  if (v15 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v15;
  }

  if (v87 >= 9)
  {
    v40 = 0;
  }

  else
  {
    v40 = v87;
  }

  v102 = v37;
  v103 = v38;
  v79 = v39;
  v81 = v40;
  v94[3] = -1;
  v94[4] = -1;
  v94[5] = ((v91 > 1) << 25) | ((v86 > 1) << 26) | ((v87 > 1) << 27) | v24 & 3 | ((v29 & 3) << 6) | (4 * (v25 & 3)) & 0xCF | (16 * (v27 & 3)) | (v40 << 16) | ((v39 << 8) - 256) & 0xFF00 | ((v32 & 3) << 20) | (((v37 & (v37 - 1)) == 0) << 24);
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v98 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v99 = 0;
  if (v12 != v83)
  {
    if ((v12 & 0x1000000) != 0)
    {
      v43 = 64;
    }

    else
    {
      v43 = 32;
    }

    v84 = v43;
    v41 = v85;
    goto LABEL_58;
  }

  v41 = v85;
  if (v12 > 285212735)
  {
    v42 = v88;
    if (v12 != 285212736)
    {
      if (v12 == 536870944)
      {
        v84 = 32;
        if (v24 == v88)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      if (v12 == 536870976)
      {
        if (_MPSUseInt64Calculations())
        {
          v45 = 64;
        }

        else
        {
          v45 = 32;
        }

        v84 = v45;
        if (v24 == v88)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }

      goto LABEL_43;
    }

LABEL_39:
    v84 = v12;
    if (v24 == v42)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  if (v12 == 32)
  {
    v84 = 32;
    if (v24 == v88)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  if (v12 == 64)
  {
    if (_MPSUseInt64Calculations())
    {
      v47 = 64;
    }

    else
    {
      v47 = 32;
    }

    v84 = v47;
    if (v24 == v88)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  v42 = v88;
  if (v12 == 285212704)
  {
    goto LABEL_39;
  }

LABEL_43:
  v84 = 32;
  if (v24 == v42)
  {
    goto LABEL_58;
  }

LABEL_51:
  if (v12 > 536870943)
  {
    if (v12 == 536870976)
    {
LABEL_57:
      _MPSUseInt64Calculations();
    }
  }

  else if (v12 == 64)
  {
    goto LABEL_57;
  }

LABEL_58:
  v78 = *(a1 + *MEMORY[0x277CD7360]);
  v77 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v49 = PipelineStateForMPSKey;
  [v41 setComputePipelineState:{PipelineStateForMPSKey, v77, v78}];
  MPSLibrary::ReleaseMPSKey();
  v50 = [v49 threadExecutionWidth];
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = [v49 maxTotalThreadsPerThreadgroup];
  v53 = 256;
  if (v52 < 0x100)
  {
    v53 = v52;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v54 = v52;
  }

  else
  {
    v54 = v53;
  }

  if (v54 <= 2 * v51)
  {
    v55 = 1;
    v56 = v88;
    v57 = v82;
    v58 = v33;
    if (v24 == v88)
    {
      goto LABEL_69;
    }

LABEL_78:
    if (v57 <= 8)
    {
      v66 = 8;
    }

    else
    {
      v66 = v57;
    }

    do
    {
      v59 = v51;
      v51 >>= 1;
    }

    while (v59 > v66);
    v67 = v59 >> 2;
    if (v59 <= 0x10)
    {
      v67 = v59;
    }

    if (v54 <= 1)
    {
      v54 = 1;
    }

    do
    {
      v61 = v67;
      v68 = v67 * v59;
      v67 >>= 1;
    }

    while (v68 > v54);
    if (v91 <= 4)
    {
      v69 = 4;
    }

    else
    {
      v69 = v91;
    }

    for (; v61 > v69; v61 >>= 1)
    {
      if (v61 * v59 < 2 * v59)
      {
        break;
      }
    }

    v63 = v59 * v79;
    v64 = v59 * v79;
    v51 = v59;
    goto LABEL_94;
  }

  v55 = v54 / v51;
  v56 = v88;
  v57 = v82;
  v58 = v33;
  if (v24 != v88)
  {
    goto LABEL_78;
  }

LABEL_69:
  if (2 * ((v57 + 1) / 2) >= v51)
  {
    v59 = v51;
  }

  else
  {
    v59 = 2 * ((v57 + 1) / 2);
  }

  v60 = 2 * ((v91 + 1) / 2);
  if (v60 >= v55)
  {
    v60 = v55;
  }

  do
  {
    v61 = v60;
    v62 = v60 * v59;
    v60 *= 2;
  }

  while (v62 < v51);
  v63 = v59;
  v64 = v61;
LABEL_94:
  v70 = v57 - 1;
  v71 = (v63 + v70) / v63;
  v72 = v91 - 1;
  v73 = (v64 + v72) / v64;
  if (v24 == v56)
  {
    if (v57 == 1 && v91 >= 2)
    {
      if (v91 <= 8 * v51)
      {
        v55 = 1;
      }

      v61 = v55 * v51;
      v71 = 1;
      v59 = 1;
      v73 = (v55 * v51 + v72) / (v55 * v51);
    }

    else if (v57 >= 2 && v91 == 1)
    {
      if (v57 <= 8 * v51)
      {
        v55 = 1;
      }

      v59 = v55 * v51;
      v73 = 1;
      v61 = 1;
      v71 = (v55 * v51 + v70) / (v55 * v51);
    }
  }

  v74 = (v86 + v90 - 1) >> v58;
  v75 = v87;
  if (v81 - 5 >= 0xFFFFFFFC)
  {
    v75 = 1;
  }

  v76 = v74 * v75;
  if (v24 != v56)
  {
    [v41 setThreadgroupMemoryLength:v59 * (v84 >> 3) + v59 * (v84 >> 3) * v59 atIndex:0];
  }

  MPSSetNDArraysOnComputeEncoder(v41, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v41);
  v94[0] = v71;
  v94[1] = v73;
  v94[2] = v76;
  v93[0] = v59;
  v93[1] = v61;
  v93[2] = 1;
  [v41 dispatchThreadgroups:v94 threadsPerThreadgroup:v93];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void sub_239AAE8E0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
    if ((*(v1 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 112));
  _Unwind_Resume(exception_object);
}

char *aliasSqueezeExpand(char *a1, uint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = MEMORY[0x277CD73D8];
  v10 = *&a1[*MEMORY[0x277CD73D8]];
  v11 = MEMORY[0x277CD73F0];
  v12 = *&a1[*MEMORY[0x277CD73F0]];
  if (v12)
  {
    v13 = 0;
    v14 = &a1[*MEMORY[0x277CD7410]];
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v18 = *v14;
    v17 = *(v14 + 1);
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22.i64[0] = 0x100000001;
    v22.i64[1] = 0x100000001;
    do
    {
      v118 = v10;
      v123[0] = v18;
      v123[1] = v17;
      v123[2] = v16;
      v123[3] = v15;
      v23 = *(v123 + (*(&v118 | v13 & 0xF) & 0xF));
      v119 = v19;
      v120 = v20;
      v121 = v21;
      v122 = v22;
      v119.i32[v13 & 0xF] = v23;
      v21 = v121;
      v22 = v122;
      v19 = v119;
      v20 = v120;
      ++v13;
    }

    while (v12 != v13);
    v24 = xmmword_239B14650;
    if ((vminvq_u8(vceqq_s8(v10, xmmword_239B14650)) & 0x80) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22.i64[0] = 0x100000001;
    v22.i64[1] = 0x100000001;
    v24 = xmmword_239B14650;
    if ((vminvq_u8(vceqq_s8(v10, xmmword_239B14650)) & 0x80) == 0)
    {
      goto LABEL_42;
    }
  }

  v25 = &a1[*MEMORY[0x277CD73D0]];
  v26 = *v25;
  v27 = *(v25 + 1);
  v29 = *(v25 + 2);
  v28 = *(v25 + 3);
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(v19, *v25), vceqq_s32(v21, v29)), vandq_s8(vceqq_s32(v20, v27), vceqq_s32(v22, v28)))) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v30 = &a1[*MEMORY[0x277CD7428]];
  v31 = *v30;
  if (*v30 > 1uLL)
  {
    goto LABEL_42;
  }

  v32 = *&a1[*MEMORY[0x277CD7408]];
  if (*(&v31 + 1) && v32 != *(&v31 + 1))
  {
    goto LABEL_42;
  }

  v35 = *(v30 + 6);
  v34 = *(v30 + 7);
  v37 = *(v30 + 4);
  v36 = *(v30 + 5);
  v39 = *(v30 + 2);
  v38 = *(v30 + 3);
  v40 = *(v30 + 1);
  v41 = v32 * v26.u32[1];
  if (v40)
  {
    if (v41 != v40)
    {
      goto LABEL_42;
    }
  }

  v42 = v41 * v26.u32[2];
  if (*(&v40 + 1))
  {
    if (v42 != *(&v40 + 1))
    {
      goto LABEL_42;
    }
  }

  v43 = v42 * v26.u32[3];
  if (v39)
  {
    if (v43 != v39)
    {
      goto LABEL_42;
    }
  }

  v44 = v43 * v27.u32[0];
  if (*(&v39 + 1))
  {
    if (v44 != *(&v39 + 1))
    {
      goto LABEL_42;
    }
  }

  v45 = v44 * v27.u32[1];
  if (v38)
  {
    if (v45 != v38)
    {
      goto LABEL_42;
    }
  }

  v46 = v45 * v27.u32[2];
  if (*(&v38 + 1))
  {
    if (v46 != *(&v38 + 1))
    {
      goto LABEL_42;
    }
  }

  v47 = v46 * v27.u32[3];
  if (v37)
  {
    if (v47 != v37)
    {
      goto LABEL_42;
    }
  }

  v48 = v47 * v29.u32[0];
  if (*(&v37 + 1))
  {
    if (v48 != *(&v37 + 1))
    {
      goto LABEL_42;
    }
  }

  v49 = v48 * v29.u32[1];
  if (v36)
  {
    if (v49 != v36)
    {
      goto LABEL_42;
    }
  }

  v50 = v49 * v29.u32[2];
  if (*(&v36 + 1))
  {
    if (v50 != *(&v36 + 1))
    {
      goto LABEL_42;
    }
  }

  v51 = v50 * v29.u32[3];
  if (v35)
  {
    if (v51 != v35)
    {
      goto LABEL_42;
    }
  }

  v52 = v51 * v28.u32[0];
  if (*(&v35 + 1))
  {
    if (v52 != *(&v35 + 1))
    {
      goto LABEL_42;
    }
  }

  v53 = v52 * v28.u32[1];
  if (v34)
  {
    if (v53 != v34)
    {
      goto LABEL_42;
    }
  }

  if (*(&v34 + 1) && v53 * v28.u32[2] != *(&v34 + 1))
  {
    goto LABEL_42;
  }

  v87 = MEMORY[0x277CD73C8];
  v88 = MEMORY[0x277CD7400];
  if ((*&a1[*MEMORY[0x277CD73C8]] >> 3) * v26.u32[0] == *&a1[*MEMORY[0x277CD7400]])
  {
    v89 = a4.n128_u32[0];
    if (v32 == v26.u32[0] || v26.i32[0] == a4.n128_u32[0])
    {
LABEL_68:
      v90 = MEMORY[0x277CD73D0];
      v91 = [a1 safeArrayViewWithCommandBuffer:a2 descriptor:objc_msgSend(a1 aliasing:{"descriptor", *&a7, *&a6, *&a5), 1}];
      *&v91[*v11] = a3;
      v92 = &v91[*v90];
      *(v92 + 2) = v98;
      *(v92 + 3) = v97;
      *v92 = a4;
      *(v92 + 1) = v99;
      v93 = v91;
      v94 = &v91[*MEMORY[0x277CD7410]];
      *(v94 + 2) = v98;
      *(v94 + 3) = v97;
      *v94 = a4;
      *(v94 + 1) = v99;
      if (*&a1[*v90] == v89)
      {
        *&v91[*v88] = *&a1[*v88];
        v95 = *MEMORY[0x277CD7408];
        v96 = *&a1[v95];
      }

      else
      {
        v96 = v89;
        *&v91[*v88] = (*&a1[*v87] >> 3) * v89;
        v95 = *MEMORY[0x277CD7408];
      }

      *&v91[v95] = v96;
      [v91 updateStrides];
      return v93;
    }
  }

  else
  {
    v89 = v26.i32[0];
    if (v26.i32[0] == a4.n128_u32[0])
    {
      goto LABEL_68;
    }
  }

LABEL_42:
  if (v12 <= a3)
  {
    v12 = a3;
  }

  if (v12)
  {
    v54 = 0;
    v55 = 0;
    for (i = 0; i != v12; ++i)
    {
      if (v55 <= 0xF)
      {
        v117[0] = a4;
        v117[1] = a5;
        v117[2] = a6;
        v117[3] = a7;
        v58 = v55;
        v59 = *(v117 + (i & 0xF));
        while (1)
        {
          v116[0] = v19;
          v116[1] = v20;
          v116[2] = v21;
          v116[3] = v22;
          if (v59 == *(v116 + (v58 & 0xF)) && ((1 << v58) & v54) == 0)
          {
            break;
          }

          if (++v58 == 16)
          {
            goto LABEL_47;
          }
        }

        v114 = v10;
        v57 = *(&v114 | v58 & 0xF);
        v115 = v24;
        *(&v115 | i & 0xF) = v57;
        v24 = v115;
        v54 |= 1 << v58;
        v55 = __clz(__rbit32(~v54));
      }

LABEL_47:
      ;
    }

    for (j = 0; j != v12; ++j)
    {
      v112 = v24;
      v62 = *(&v112 | j & 0xF);
      v113 = v10;
      *(&v113 | j & 0xF) = v62;
      v10 = v113;
    }
  }

  v100 = v10;
  result = [a1 safeArrayViewWithCommandBuffer:a2 descriptor:objc_msgSend(a1 aliasing:{"descriptor", a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0]), 1}];
  *&result[*v11] = a3;
  *&result[*v9] = v100;
  v64 = *&a1[*v11];
  if (v64 < a3)
  {
    v65 = MEMORY[0x277CD7428];
    v66 = *MEMORY[0x277CD7428];
    v67 = MEMORY[0x277CD7420];
    do
    {
      v68 = &result[v66];
      v69 = *v68;
      v70 = *(v68 + 1);
      v71 = *(v68 + 2);
      v72 = *(v68 + 3);
      v73 = *(v68 + 4);
      v74 = *(v68 + 5);
      v75 = *(v68 + 6);
      v76 = *(v68 + 7);
      v111[6] = v75;
      v111[7] = v76;
      v111[4] = v73;
      v111[5] = v74;
      v111[2] = v71;
      v111[3] = v72;
      v111[0] = v69;
      v111[1] = v70;
      if (!*(v111 + (v64 & 0xF)))
      {
        v77 = (v64 - 1) & 0xF;
        v78 = 8 * (v64 & 0xF);
        v110[0] = v69;
        v110[1] = v70;
        v110[2] = v71;
        v110[3] = v72;
        v110[4] = v73;
        v110[5] = v74;
        v110[6] = v75;
        v110[7] = v76;
        v79 = *(v110 + v77);
        v102 = v69;
        v103 = v70;
        v104 = v71;
        v105 = v72;
        v106 = v73;
        v107 = v74;
        v108 = v75;
        v109 = v76;
        *(&v102 + v78) = v79;
        v80 = v102;
        v81 = v103;
        v82 = v104;
        v83 = v105;
        v84 = v106;
        v85 = v107;
        v86 = v109;
        *(v68 + 6) = v108;
        *(v68 + 7) = v86;
        *(v68 + 4) = v84;
        *(v68 + 5) = v85;
        *(v68 + 2) = v82;
        *(v68 + 3) = v83;
        *v68 = v80;
        *(v68 + 1) = v81;
        *&result[*v67 + v78] = *&result[8 * v77 + *v67];
        v66 = *v65;
      }

      ++v64;
    }

    while (a3 != v64);
  }

  return result;
}

BOOL canAliasToShape(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v70 = a3.n128_u32[0];
  *v7.i64 = getFlattenedDimensionsVector(a1, a2, 0, 0, a3, a4, a5, a6);
  if ((vminvq_u8(vceqzq_s8(v7)) & 0x80) == 0)
  {
    return !v7.i8[0] || (*(a1 + *MEMORY[0x277CD73C8]) >> 3) * *(a1 + *MEMORY[0x277CD73D0]) == *(a1 + *MEMORY[0x277CD7400]);
  }

  v9 = *(a1 + *MEMORY[0x277CD73F0]);
  if (!v9)
  {
    v28 = 0;
    goto LABEL_23;
  }

  v10 = (a1 + *MEMORY[0x277CD7410]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(a1 + *MEMORY[0x277CD73D8]);
  v16 = (a1 + *MEMORY[0x277CD73D0]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v77[2] = v13;
  v77[3] = v14;
  v77[0] = v11;
  v77[1] = v12;
  v21 = v15 & 0xF;
  v22 = *(v77 + v21);
  v78[2] = v19;
  v78[3] = v20;
  v78[0] = v17;
  v78[1] = v18;
  if (v22 == *(v78 + v21) && (v23 = (a1 + *MEMORY[0x277CD7418]), v24 = *v23, v25 = v23[1], v26 = v23[2], v27 = v23[3], v76[2] = v26, v76[3] = v27, v76[0] = v24, v76[1] = v25, !*(v76 + (v15 & 0xF))))
  {
    v29 = 1;
    do
    {
      v30 = v29;
      if (v9 == v29)
      {
        break;
      }

      v72 = v15;
      v75[0] = v11;
      v75[1] = v12;
      v75[2] = v13;
      v75[3] = v14;
      v31 = *(&v72 | v29 & 0xF) & 0xF;
      v32 = *(v75 + v31);
      v74[0] = v17;
      v74[1] = v18;
      v74[2] = v19;
      v74[3] = v20;
      v33 = *(v74 + v31);
      v73[0] = v24;
      v73[1] = v25;
      v73[2] = v26;
      v73[3] = v27;
      v34 = *(v73 + v31);
      v29 = v30 + 1;
      v35 = v32 == v33 && v34 == 0;
    }

    while (v35);
    v28 = v30 < v9;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = 1;
    if (v15)
    {
LABEL_10:
      LODWORD(v9) = 1;
      goto LABEL_23;
    }
  }

  v36 = 1;
  do
  {
    v71 = v15;
    v37 = v36 + 1;
    if (v9 == v36)
    {
      break;
    }

    v35 = v36 == *(&v71 | v36 & 0xF);
    ++v36;
  }

  while (v35);
  LODWORD(v9) = v9 > v37 - 1;
LABEL_23:
  v38 = (a1 + *MEMORY[0x277CD7428]);
  v39 = *v38;
  if (*v38 > 1uLL)
  {
    return 0;
  }

  v40 = *(a1 + *MEMORY[0x277CD7408]);
  if (*(&v39 + 1) && v40 != *(&v39 + 1))
  {
    return 0;
  }

  v43 = v38[6];
  v42 = v38[7];
  v45 = v38[4];
  v44 = v38[5];
  v47 = v38[2];
  v46 = v38[3];
  v48 = v38[1];
  v49 = (a1 + *MEMORY[0x277CD73D0]);
  v51 = v49[2];
  v50 = v49[3];
  v52 = *v49;
  v53 = v49[1];
  v54 = v40 * HIDWORD(*v49);
  if (v48)
  {
    if (v54 != v48)
    {
      return 0;
    }
  }

  v55 = v54 * DWORD2(v52);
  if (*(&v48 + 1))
  {
    if (v55 != *(&v48 + 1))
    {
      return 0;
    }
  }

  v56 = v55 * HIDWORD(v52);
  if (v47)
  {
    if (v56 != v47)
    {
      return 0;
    }
  }

  v57 = v56 * v53;
  if (*(&v47 + 1))
  {
    if (v57 != *(&v47 + 1))
    {
      return 0;
    }
  }

  v58 = v57 * DWORD1(v53);
  if (v46)
  {
    if (v58 != v46)
    {
      return 0;
    }
  }

  v59 = v58 * DWORD2(v53);
  if (*(&v46 + 1))
  {
    if (v59 != *(&v46 + 1))
    {
      return 0;
    }
  }

  v60 = v59 * HIDWORD(v53);
  if (v45)
  {
    if (v60 != v45)
    {
      return 0;
    }
  }

  v61 = v60 * v51;
  if (*(&v45 + 1))
  {
    if (v61 != *(&v45 + 1))
    {
      return 0;
    }
  }

  v62 = v61 * DWORD1(v51);
  if (v44)
  {
    if (v62 != v44)
    {
      return 0;
    }
  }

  v63 = v62 * DWORD2(v51);
  if (*(&v44 + 1))
  {
    if (v63 != *(&v44 + 1))
    {
      return 0;
    }
  }

  v64 = v63 * HIDWORD(v51);
  if (v43)
  {
    if (v64 != v43)
    {
      return 0;
    }
  }

  v65 = v64 * v50;
  if (*(&v43 + 1))
  {
    if (v65 != *(&v43 + 1))
    {
      return 0;
    }
  }

  v66 = v65 * DWORD1(v50);
  if (v42)
  {
    if (v66 != v42)
    {
      return 0;
    }
  }

  result = 0;
  v67 = v66 * DWORD2(v50);
  if (*(&v42 + 1))
  {
    v68 = v67 == *(&v42 + 1);
  }

  else
  {
    v68 = 1;
  }

  v69 = !v68;
  if (((v28 | v9) & 1) == 0 && (v69 & 1) == 0)
  {
    return (*(a1 + *MEMORY[0x277CD73C8]) >> 3) * v52 == *(a1 + *MEMORY[0x277CD7400]) || v70 == v52;
  }

  return result;
}

char *flattenAlias(uint64_t a1, char *a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  *v10.i64 = getFlattenedDimensionsVector(a2, a3, &v48, v47, a4, a5, a6, a7);
  if ((vminvq_u8(vceqzq_s8(v10)) & 0x80) != 0)
  {
    return 0;
  }

  v34 = v10.i8[0];
  result = [a2 safeArrayViewWithCommandBuffer:a1 descriptor:objc_msgSend(a2 aliasing:{"descriptor"), 1}];
  v12 = 0;
  v13 = 0;
  *&result[*MEMORY[0x277CD73F0]] = a3;
  v14 = v48;
  v15 = MEMORY[0x277CD73D8];
  *&result[*MEMORY[0x277CD73D8]] = v48;
  v16 = MEMORY[0x277CD7410];
  v17 = MEMORY[0x277CD7418];
  v18 = MEMORY[0x277CD73D0];
  v19 = MEMORY[0x277CD7428];
  v20 = MEMORY[0x277CD7420];
  do
  {
    while (1)
    {
      v46[0] = a4;
      v46[1] = a5;
      v46[2] = a6;
      v46[3] = a7;
      v24 = *(v46 + (v12 & 0xF));
      v25 = &result[*v16];
      v45 = v14;
      v26 = *(&v45 | v12 & 0xF);
      *&v25[4 * (v26 & 0xF)] = v24;
      if (*(v47 + (v12 & 0xF)) < 2u)
      {
        break;
      }

      v21 = v26 & 0xF;
      *&result[4 * v21 + *v17] = 0;
      *&result[4 * v21 + *v18] = v24;
      v22 = *v19;
      v39 = *&a2[*v15];
      *&result[8 * v21 + v22] = *&a2[8 * (*(&v39 | v13 & 0xF) & 0xF) + v22];
      v23 = *v20;
      v40 = *&a2[*v15];
      *&result[8 * v21 + v23] = *&a2[8 * (*(&v40 | v13 & 0xF) & 0xF) + v23];
      v13 += *(v47 + (v12++ & 0xF));
      if (v12 == 16)
      {
        goto LABEL_9;
      }
    }

    v27 = *v17;
    if (v13 > 0xF)
    {
      v31 = 0;
      *&result[4 * (v26 & 0xF) + v27] = 0;
      *&result[4 * (v26 & 0xF) + *v18] = 1;
      *&result[8 * (v26 & 0xF) + *v19] = 0;
      v30 = *v20;
    }

    else
    {
      v41 = *&a2[*v15];
      *&result[4 * (v26 & 0xF) + v27] = *&a2[4 * (*(&v41 | v13 & 0xF) & 0xF) + v27];
      v28 = *v18;
      v42 = *&a2[*v15];
      *&result[4 * (v26 & 0xF) + v28] = *&a2[4 * (*(&v42 | v13 & 0xF) & 0xF) + v28];
      v29 = *v19;
      v43 = *&a2[*v15];
      *&result[8 * (v26 & 0xF) + v29] = *&a2[8 * (*(&v43 | v13 & 0xF) & 0xF) + v29];
      v30 = *v20;
      v44 = *&a2[*v15];
      v31 = *&a2[8 * (*(&v44 | v13 & 0xF) & 0xF) + v30];
    }

    *&result[8 * (v26 & 0xF) + v30] = v31;
    ++v13;
    ++v12;
  }

  while (v12 != 16);
LABEL_9:
  if (v34)
  {
    *&result[*MEMORY[0x277CD7400]] = (*&result[*MEMORY[0x277CD73C8]] >> 3) * *&result[*v18];
    v32 = *&result[*v18];
    v33 = *MEMORY[0x277CD7408];
  }

  else
  {
    *&result[*MEMORY[0x277CD7400]] = *&a2[*MEMORY[0x277CD7400]];
    v33 = *MEMORY[0x277CD7408];
    v32 = *&a2[v33];
  }

  *&result[v33] = v32;
  return result;
}