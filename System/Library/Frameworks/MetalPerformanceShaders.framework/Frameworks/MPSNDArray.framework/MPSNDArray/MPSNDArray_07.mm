uint64_t EncodeResample(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 696);
  v108 = *(a1 + 704);
  v109 = *(a1 + 708);
  v8 = *(a1 + 712);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v128 = v9;
  v129 = v9;
  v126 = v9;
  v127 = v9;
  v125 = v9;
  v10 = [*(a4 + 232) inputTensorAtIndex:0];
  v11 = [*(a4 + 232) outputTensorAtIndex:0];
  v12 = *v10;
  if (*v10 == *v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_54:
    v101 = v109 == 0;
    v100 = 1;
    LODWORD(v102) = 1;
    LODWORD(v103) = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v45 = *(v10 + 8);
    v106 = 1;
    if (v45 > 285212703)
    {
      goto LABEL_90;
    }

    goto LABEL_55;
  }

  v53 = v11;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = *v10;
  v11 = v53;
  if (!*v10)
  {
    goto LABEL_54;
  }

LABEL_3:
  v99 = a2;
  v13 = **(v10 + 16);
  v14 = **(v11 + 16);
  if (v12 > 3)
  {
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v13 + 1;
    v18 = v14 + 1;
    v19 = 0uLL;
    v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = 0uLL;
    do
    {
      v19 = vsubq_s64(v19, vmvnq_s8(vceqq_s64(v17[-1], v18[-1])));
      v21 = vsubq_s64(v21, vmvnq_s8(vceqq_s64(*v17, *v18)));
      v17 += 2;
      v18 += 2;
      v20 -= 4;
    }

    while (v20);
    v15 = vaddvq_s64(vaddq_s64(v21, v19));
    if (v12 == v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v22 = v12 - v16;
  v23 = v16;
  v24 = &v14->i64[v23];
  v25 = &v13->i64[v23];
  do
  {
    v27 = *v25++;
    v26 = v27;
    v28 = *v24++;
    if (v26 != v28)
    {
      ++v15;
    }

    --v22;
  }

  while (v22);
LABEL_12:
  if (v15 >= 3)
  {
    v56 = v11;
    v57 = MTLReportFailureTypeEnabled();
    v11 = v56;
    if (v57)
    {
      MTLReportFailure();
      v11 = v56;
    }
  }

  v29 = **(v11 + 16);
  v30 = *v29;
  if (v109)
  {
    v101 = 0;
    if (v12 == 1)
    {
      v31 = 1;
      LODWORD(v102) = 1;
      LODWORD(v103) = 1;
      v32 = 1;
      v33 = *v29;
      v34 = 1;
      v30 = 1;
      v35 = ***(v10 + 16);
      v100 = v35;
      if (v35 < 2 || v33 == v35)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v37 = v29[1];
      if (v12 < 3)
      {
        v42 = **(v10 + 16);
        v31 = 1;
        LODWORD(v102) = 1;
        v103 = v42[1];
        v32 = 1;
        v33 = v30;
        v34 = 1;
      }

      else
      {
        v34 = v29[2];
        if (v12 == 3)
        {
          v42 = **(v10 + 16);
          v102 = v42[2];
          v103 = v42[1];
          v31 = 1;
          v32 = 1;
        }

        else
        {
          v32 = v29[3];
          v42 = **(v10 + 16);
          v102 = v42[2];
          v103 = v42[1];
          v31 = v42[3];
        }

        v33 = v30;
      }

      v30 = v37;
      v43 = *v42;
      v100 = v43;
      if (v43 < 2 || v33 == v43)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v12 == 1)
    {
      v100 = 1;
      v101 = 1;
      LODWORD(v102) = 1;
      v103 = ***(v10 + 16);
      v32 = 1;
      v33 = 1;
      v34 = 1;
      goto LABEL_43;
    }

    v34 = v29[1];
    if (v12 < 3)
    {
      v41 = **(v10 + 16);
      v102 = v41[1];
      v103 = *v41;
      v101 = 1;
      v100 = 1;
      v32 = 1;
      v33 = 1;
      goto LABEL_43;
    }

    v101 = 1;
    v33 = v29[2];
    if (v12 == 3)
    {
      v38 = **(v10 + 16);
      v103 = *v38;
      v102 = v38[1];
      v31 = 1;
      v32 = 1;
      v39 = v38[2];
      v100 = v39;
      if (v39 < 2 || v33 == v39)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v32 = v29[3];
      v46 = **(v10 + 16);
      v103 = *v46;
      v102 = v46[1];
      v31 = v46[3];
      v47 = v46[2];
      v100 = v47;
      if (v47 < 2 || v33 == v47)
      {
        goto LABEL_41;
      }
    }
  }

  v107 = v11;
  v49 = v30;
  v50 = v34;
  v95 = v33;
  v97 = v32;
  v51 = MTLReportFailureTypeEnabled();
  v33 = v95;
  v32 = v97;
  v34 = v50;
  v30 = v49;
  v52 = v51;
  v11 = v107;
  if (v52)
  {
    MTLReportFailure();
    v33 = v95;
    v32 = v97;
    v34 = v50;
    v30 = v49;
    v11 = v107;
  }

LABEL_41:
  if (v31 < 2 || v32 == v31)
  {
LABEL_43:
    a2 = v99;
    v45 = *(v10 + 8);
    v106 = v30;
    if (v45 > 285212703)
    {
      goto LABEL_90;
    }

LABEL_55:
    if (v45 <= 31)
    {
      if (v45 > 7)
      {
        if (v45 == 8)
        {
          v54 = 192;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }

        if (v45 == 16)
        {
          v54 = 224;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }
      }

      else
      {
        if (v45 == -1879048176)
        {
          v54 = 384;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }

        if (v45 == 4)
        {
          v54 = 160;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }
      }
    }

    else if (v45 <= 268435463)
    {
      if (v45 == 32)
      {
        v54 = 256;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 > 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_119;
      }

      if (v45 == 64)
      {
        v54 = 288;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 > 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_119;
      }
    }

    else
    {
      switch(v45)
      {
        case 268435464:
          v54 = 480;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        case 268435472:
          v54 = 320;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        case 268435488:
          v54 = 352;
          v55 = *(v11 + 8);
          v104 = v34;
          if (v55 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
      }
    }

LABEL_140:
    v54 = 576;
    v55 = *(v11 + 8);
    v104 = v34;
    if (v55 > 285212703)
    {
      goto LABEL_141;
    }

    goto LABEL_119;
  }

  v96 = v33;
  v98 = v32;
  v105 = v34;
  v106 = v30;
  v58 = v11;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = v58;
  v32 = v98;
  a2 = v99;
  v34 = v105;
  v33 = v96;
  v45 = *(v10 + 8);
  if (v45 <= 285212703)
  {
    goto LABEL_55;
  }

LABEL_90:
  if (v45 <= 536870915)
  {
    if (v45 > 301989895)
    {
      if (v45 == 301989896)
      {
        v54 = 512;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 <= 285212703)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v45 != 335544328)
        {
          goto LABEL_140;
        }

        v54 = 544;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 <= 285212703)
        {
          goto LABEL_119;
        }
      }
    }

    else if (v45 == 285212704)
    {
      v54 = 416;
      v55 = *(v11 + 8);
      v104 = v34;
      if (v55 <= 285212703)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (v45 != 285212736)
      {
        goto LABEL_140;
      }

      v54 = 448;
      v55 = *(v11 + 8);
      v104 = v34;
      if (v55 <= 285212703)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v45 <= 536870927)
  {
    if (v45 == 536870916)
    {
      v54 = 0;
      v55 = *(v11 + 8);
      v104 = v34;
      if (v55 > 285212703)
      {
        goto LABEL_141;
      }

      goto LABEL_119;
    }

    if (v45 != 536870920)
    {
      goto LABEL_140;
    }

    v54 = 32;
    v55 = *(v11 + 8);
    v104 = v34;
    if (v55 <= 285212703)
    {
      goto LABEL_119;
    }
  }

  else
  {
    switch(v45)
    {
      case 536870928:
        v54 = 64;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 <= 285212703)
        {
          goto LABEL_119;
        }

        break;
      case 536870944:
        v54 = 96;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 <= 285212703)
        {
          goto LABEL_119;
        }

        break;
      case 536870976:
        v54 = 128;
        v55 = *(v11 + 8);
        v104 = v34;
        if (v55 > 285212703)
        {
          break;
        }

LABEL_119:
        if (v55 <= 31)
        {
          if (v55 > 7)
          {
            if (v55 == 8)
            {
              v59 = v33;
              v60 = v32;
              v61 = 6;
              goto LABEL_163;
            }

            if (v55 == 16)
            {
              v59 = v33;
              v60 = v32;
              v61 = 7;
              goto LABEL_163;
            }
          }

          else
          {
            if (v55 == -1879048176)
            {
              v59 = v33;
              v60 = v32;
              v61 = 12;
              goto LABEL_163;
            }

            if (v55 == 4)
            {
              v59 = v33;
              v60 = v32;
              v61 = 5;
              goto LABEL_163;
            }
          }
        }

        else if (v55 <= 268435463)
        {
          if (v55 == 32)
          {
            v59 = v33;
            v60 = v32;
            v61 = 8;
            goto LABEL_163;
          }

          if (v55 == 64)
          {
            v59 = v33;
            v60 = v32;
            v61 = 9;
            goto LABEL_163;
          }
        }

        else
        {
          switch(v55)
          {
            case 268435464:
              v59 = v33;
              v60 = v32;
              v61 = 15;
              goto LABEL_163;
            case 268435472:
              v59 = v33;
              v60 = v32;
              v61 = 10;
              goto LABEL_163;
            case 268435488:
              v59 = v33;
              v60 = v32;
              v61 = 11;
              goto LABEL_163;
          }
        }

        goto LABEL_162;
      default:
        goto LABEL_140;
    }
  }

LABEL_141:
  if (v55 <= 536870915)
  {
    if (v55 > 301989895)
    {
      if (v55 == 301989896)
      {
        v59 = v33;
        v60 = v32;
        v61 = 16;
        goto LABEL_163;
      }

      if (v55 == 335544328)
      {
        v59 = v33;
        v60 = v32;
        v61 = 17;
        goto LABEL_163;
      }
    }

    else
    {
      if (v55 == 285212704)
      {
        v59 = v33;
        v60 = v32;
        v61 = 13;
        goto LABEL_163;
      }

      if (v55 == 285212736)
      {
        v59 = v33;
        v60 = v32;
        v61 = 14;
        goto LABEL_163;
      }
    }
  }

  else if (v55 <= 536870927)
  {
    if (v55 == 536870916)
    {
      v59 = v33;
      v60 = v32;
      v61 = 0;
      goto LABEL_163;
    }

    if (v55 == 536870920)
    {
      v59 = v33;
      v60 = v32;
      v61 = 1;
      goto LABEL_163;
    }
  }

  else
  {
    switch(v55)
    {
      case 536870928:
        v59 = v33;
        v60 = v32;
        v61 = 2;
        goto LABEL_163;
      case 536870944:
        v59 = v33;
        v60 = v32;
        v61 = 3;
        goto LABEL_163;
      case 536870976:
        v59 = v33;
        v60 = v32;
        v61 = 4;
        goto LABEL_163;
    }
  }

LABEL_162:
  v59 = v33;
  v60 = v32;
  v61 = 18;
LABEL_163:
  *(&v126 + 1) = v61 | v54;
  *&v129 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  *&v126 = v108 & 1 | (2 * (v109 & 1)) & 0xC7 | (8 * (v8 & 7u)) | (4 * (v60 == 1));
  v93 = *(a1 + *MEMORY[0x277CD7360]);
  v94 = *(a1 + *MEMORY[0x277CD7368]);
  v92 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v63 = PipelineStateForMPSKey;
  v110 = a4;
  v64 = v7;
  v65 = a2;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v92, v93, v94, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v66 = [v63 maxTotalThreadsPerThreadgroup];
  v67 = 256;
  if (v66 < 0x100)
  {
    v67 = v66;
  }

  if (v101)
  {
    if (v67 <= 1)
    {
      v67 = 1;
    }

    v68 = (__clz(v67) >> 1) ^ 0x1F;
    v69 = 1;
    v70 = 1 << v68;
    v71 = v67 >> v68;
    if (v71 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v71;
    }

    v73 = v106;
    v74 = (v106 + v70 - 1) >> v68;
    v75 = v104;
    v76 = v60;
    v77 = v59 * v60;
    v78 = (v104 + v72 - 1) / v72;
  }

  else
  {
    v80 = 16;
    if (v59 < 0x10)
    {
      v80 = v59;
    }

    v81 = 64 - __clz(v80 - 1);
    if (v59 <= 1)
    {
      LOBYTE(v81) = 0;
    }

    v70 = 1 << v81;
    v82 = v67 >> v81;
    if (v82 <= 1)
    {
      v82 = 1;
    }

    v83 = (__clz(v82) >> 1) ^ 0x1F;
    v72 = 1 << v83;
    v84 = v82 >> v83;
    if (v84 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = v84;
    }

    v74 = (v59 + v70 - 1) >> v81;
    v75 = v104;
    v73 = v106;
    v78 = (v106 + v72 - 1) >> v83;
    v76 = v60;
    v77 = (v69 + v104 * v60 - 1) / v69;
  }

  v85 = vcvt_f32_f64(*v64);
  v86 = vcvt_f32_f64(v64[1]);
  v113 = v103;
  v114 = v102;
  v115 = v100;
  v116 = v73;
  v117 = v75;
  v118 = v59;
  v119 = v76;
  __asm { FMOV            V2.2S, #1.0 }

  v120 = v85;
  v121 = vdiv_f32(_D2, v85);
  v122 = v86;
  v123 = vdiv_f32(v86, v85);
  MPSGetUIntDivisorMagicNumber();
  v124 = v91;
  MPSSetNDArraysOnComputeEncoder(v65, v110, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v65);
  v112[0] = v74;
  v112[1] = v78;
  v112[2] = v77;
  v111[0] = v70;
  v111[1] = v72;
  v111[2] = v69;
  [v65 dispatchThreadgroups:v112 threadsPerThreadgroup:v111];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeResampleGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v10 = *(a1 + 176);
  v11 = *(a1 + 184);
  v114 = *(a1 + 188);
  v12 = *(a1 + 192);
  v133 = v9;
  v134 = v9;
  v131 = v9;
  v132 = v9;
  v130 = v9;
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = *v14;
  v17 = *(*v14 + 8);
  v16 = *v17;
  if ((v17[1] - *v17) <= 8 || (v102 = v10, v19 = *(v15 + 24), v18 = *v19, *(v19 + 8) == *v19))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(v16 + 8);
  v21 = *v18;
  v22 = *v20;
  if (*v20 == **v18)
  {
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_79:
    v39 = v114 == 0;
    v99 = 1;
    LODWORD(v100) = 1;
    LODWORD(v101) = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v48 = *(v20 + 8);
    v112 = 1;
    if (v48 > 285212703)
    {
      goto LABEL_80;
    }

    goto LABEL_49;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v22 = *v20;
  if (!*v20)
  {
    goto LABEL_79;
  }

LABEL_6:
  v23 = **(v20 + 16);
  v24 = *v21[2];
  if (v22 > 3)
  {
    v26 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v23 + 1;
    v28 = v24 + 1;
    v29 = 0uLL;
    v30 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = 0uLL;
    do
    {
      v29 = vsubq_s64(v29, vmvnq_s8(vceqq_s64(v27[-1], v28[-1])));
      v31 = vsubq_s64(v31, vmvnq_s8(vceqq_s64(*v27, *v28)));
      v27 += 2;
      v28 += 2;
      v30 -= 4;
    }

    while (v30);
    v25 = vaddvq_s64(vaddq_s64(v31, v29));
    if (v22 == v26)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v32 = v22 - v26;
  v33 = v26;
  v34 = &v24->i64[v33];
  v35 = &v23->i64[v33];
  do
  {
    v37 = *v35++;
    v36 = v37;
    v38 = *v34++;
    if (v36 != v38)
    {
      ++v25;
    }

    --v32;
  }

  while (v32);
LABEL_15:
  if (v25 >= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v39 = v114 == 0;
  v40 = *v21[2];
  v41 = *v40;
  if (v114)
  {
    if (v22 == 1)
    {
      v42 = 1;
      LODWORD(v100) = 1;
      LODWORD(v101) = 1;
      v43 = 1;
      v44 = *v40;
      v45 = 1;
      v41 = 1;
      v46 = ***(v20 + 16);
      v99 = v46;
      if (v46 < 2 || v44 == v46)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v49 = v40[1];
      if (v22 < 3)
      {
        v55 = **(v20 + 16);
        v42 = 1;
        LODWORD(v100) = 1;
        v101 = v55[1];
        v43 = 1;
        v44 = v41;
        v45 = 1;
      }

      else
      {
        v45 = v40[2];
        if (v22 == 3)
        {
          v55 = **(v20 + 16);
          v100 = v55[2];
          v101 = v55[1];
          v42 = 1;
          v43 = 1;
        }

        else
        {
          v43 = v40[3];
          v55 = **(v20 + 16);
          v100 = v55[2];
          v101 = v55[1];
          v42 = v55[3];
        }

        v44 = v41;
      }

      v41 = v49;
      v56 = *v55;
      v99 = v56;
      if (v56 < 2 || v44 == v56)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (v22 == 1)
    {
      v39 = 1;
      v101 = ***(v20 + 16);
      v99 = 1;
      LODWORD(v100) = 1;
      v43 = 1;
      v44 = 1;
      v45 = 1;
      v48 = *(v20 + 8);
      v112 = v41;
      if (v48 <= 285212703)
      {
        goto LABEL_49;
      }

      goto LABEL_80;
    }

    v45 = v40[1];
    if (v22 < 3)
    {
      v54 = **(v20 + 16);
      v100 = v54[1];
      v101 = *v54;
      v39 = 1;
      v99 = 1;
      v43 = 1;
      v44 = 1;
      v48 = *(v20 + 8);
      v112 = v41;
      if (v48 <= 285212703)
      {
        goto LABEL_49;
      }

      goto LABEL_80;
    }

    v44 = v40[2];
    if (v22 == 3)
    {
      v50 = **(v20 + 16);
      v101 = *v50;
      v51 = v50[1];
      v42 = 1;
      v43 = 1;
      v52 = v50[2];
      v99 = v52;
      LODWORD(v100) = v51;
      if (v52 < 2 || v44 == v52)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v43 = v40[3];
      v59 = **(v20 + 16);
      v101 = *v59;
      v100 = v59[1];
      v42 = v59[3];
      v60 = v59[2];
      v99 = v60;
      if (v60 < 2 || v44 == v60)
      {
        goto LABEL_46;
      }
    }
  }

  v109 = v45;
  v113 = v41;
  v103 = v44;
  v106 = v43;
  v62 = MTLReportFailureTypeEnabled();
  v44 = v103;
  v43 = v106;
  v39 = v114 == 0;
  v45 = v109;
  v41 = v113;
  if (v62)
  {
    MTLReportFailure();
    v44 = v103;
    v43 = v106;
    v39 = v114 == 0;
    v45 = v109;
    v41 = v113;
  }

LABEL_46:
  if (v42 >= 2 && v43 != v42)
  {
    v105 = v44;
    v108 = v43;
    v98 = v39;
    v111 = v45;
    v112 = v41;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v45 = v111;
    v39 = v98;
    v44 = v105;
    v43 = v108;
    v48 = *(v20 + 8);
    if (v48 > 285212703)
    {
      goto LABEL_80;
    }

LABEL_49:
    if (v48 <= 31)
    {
      if (v48 > 7)
      {
        if (v48 == 8)
        {
          v58 = 192;
          goto LABEL_102;
        }

        if (v48 == 16)
        {
          v58 = 224;
          goto LABEL_102;
        }
      }

      else
      {
        if (v48 == -1879048176)
        {
          v58 = 384;
          goto LABEL_102;
        }

        if (v48 == 4)
        {
          v58 = 160;
          goto LABEL_102;
        }
      }
    }

    else if (v48 <= 268435463)
    {
      if (v48 == 32)
      {
        v58 = 256;
        goto LABEL_102;
      }

      if (v48 == 64)
      {
        v58 = 288;
        goto LABEL_102;
      }
    }

    else
    {
      switch(v48)
      {
        case 268435464:
          v58 = 480;
          goto LABEL_102;
        case 268435472:
          v58 = 320;
          goto LABEL_102;
        case 268435488:
          v58 = 352;
          goto LABEL_102;
      }
    }

    goto LABEL_101;
  }

  v48 = *(v20 + 8);
  v112 = v41;
  if (v48 <= 285212703)
  {
    goto LABEL_49;
  }

LABEL_80:
  if (v48 <= 536870915)
  {
    if (v48 > 301989895)
    {
      if (v48 == 301989896)
      {
        v58 = 512;
        goto LABEL_102;
      }

      if (v48 == 335544328)
      {
        v58 = 544;
        goto LABEL_102;
      }
    }

    else
    {
      if (v48 == 285212704)
      {
        v58 = 416;
        goto LABEL_102;
      }

      if (v48 == 285212736)
      {
        v58 = 448;
        goto LABEL_102;
      }
    }
  }

  else if (v48 <= 536870927)
  {
    if (v48 == 536870916)
    {
      v58 = 0;
      goto LABEL_102;
    }

    if (v48 == 536870920)
    {
      v58 = 32;
      goto LABEL_102;
    }
  }

  else
  {
    switch(v48)
    {
      case 536870928:
        v58 = 64;
        goto LABEL_102;
      case 536870944:
        v58 = 96;
        goto LABEL_102;
      case 536870976:
        v58 = 128;
        goto LABEL_102;
    }
  }

LABEL_101:
  v58 = 576;
LABEL_102:
  v63 = *(v21 + 2);
  v107 = v43;
  v110 = v45;
  v104 = v44;
  if (v63 > 285212703)
  {
    if (v63 <= 536870915)
    {
      if (v63 > 301989895)
      {
        if (v63 == 301989896)
        {
          v64 = v39;
          v65 = 16;
          goto LABEL_146;
        }

        if (v63 == 335544328)
        {
          v64 = v39;
          v65 = 17;
          goto LABEL_146;
        }
      }

      else
      {
        if (v63 == 285212704)
        {
          v64 = v39;
          v65 = 13;
          goto LABEL_146;
        }

        if (v63 == 285212736)
        {
          v64 = v39;
          v65 = 14;
          goto LABEL_146;
        }
      }
    }

    else if (v63 <= 536870927)
    {
      if (v63 == 536870916)
      {
        v64 = v39;
        v65 = 0;
        goto LABEL_146;
      }

      if (v63 == 536870920)
      {
        v64 = v39;
        v65 = 1;
        goto LABEL_146;
      }
    }

    else
    {
      switch(v63)
      {
        case 536870928:
          v64 = v39;
          v65 = 2;
          goto LABEL_146;
        case 536870944:
          v64 = v39;
          v65 = 3;
          goto LABEL_146;
        case 536870976:
          v64 = v39;
          v65 = 4;
          goto LABEL_146;
      }
    }
  }

  else if (v63 <= 31)
  {
    if (v63 > 7)
    {
      if (v63 == 8)
      {
        v64 = v39;
        v65 = 6;
        goto LABEL_146;
      }

      if (v63 == 16)
      {
        v64 = v39;
        v65 = 7;
        goto LABEL_146;
      }
    }

    else
    {
      if (v63 == -1879048176)
      {
        v64 = v39;
        v65 = 12;
        goto LABEL_146;
      }

      if (v63 == 4)
      {
        v64 = v39;
        v65 = 5;
        goto LABEL_146;
      }
    }
  }

  else if (v63 <= 268435463)
  {
    if (v63 == 32)
    {
      v64 = v39;
      v65 = 8;
      goto LABEL_146;
    }

    if (v63 == 64)
    {
      v64 = v39;
      v65 = 9;
      goto LABEL_146;
    }
  }

  else
  {
    switch(v63)
    {
      case 268435464:
        v64 = v39;
        v65 = 15;
        goto LABEL_146;
      case 268435472:
        v64 = v39;
        v65 = 10;
        goto LABEL_146;
      case 268435488:
        v64 = v39;
        v65 = 11;
        goto LABEL_146;
    }
  }

  v64 = v39;
  v65 = 18;
LABEL_146:
  v66 = 0x2000000;
  if (!a5)
  {
    v66 = 0;
  }

  *(&v131 + 1) = v58 | v65 | v66;
  *&v134 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  *&v131 = v11 & 1 | (2 * (v114 & 1)) & 0xC7 | (8 * (v12 & 7u));
  v96 = *(a1 + *MEMORY[0x277CD7360]);
  v97 = *(a1 + *MEMORY[0x277CD7368]);
  v95 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v68 = PipelineStateForMPSKey;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v95, v96, v97, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v69 = [v68 maxTotalThreadsPerThreadgroup];
  v70 = 256;
  if (v69 < 0x100)
  {
    v70 = v69;
  }

  if (v64)
  {
    if (v70 <= 1)
    {
      v70 = 1;
    }

    v71 = (__clz(v70) >> 1) ^ 0x1F;
    v72 = 1;
    v73 = 1 << v71;
    v74 = v70 >> v71;
    if (v74 <= 1)
    {
      v75 = 1;
    }

    else
    {
      v75 = v74;
    }

    v76 = v112;
    v77 = (v112 + v73 - 1) >> v71;
    v79 = v107;
    v78 = v110;
    v80 = v104;
    v81 = v104 * v107;
    v82 = (v110 + v75 - 1) / v75;
  }

  else
  {
    v80 = v104;
    v84 = 16;
    if (v104 < 0x10)
    {
      v84 = v104;
    }

    v85 = 64 - __clz(v84 - 1);
    if (v104 <= 1)
    {
      LOBYTE(v85) = 0;
    }

    v73 = 1 << v85;
    v86 = v70 >> v85;
    if (v86 <= 1)
    {
      v86 = 1;
    }

    v87 = (__clz(v86) >> 1) ^ 0x1F;
    v75 = 1 << v87;
    v88 = v86 >> v87;
    if (v88 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v88;
    }

    v77 = (v104 + v73 - 1) >> v85;
    v78 = v110;
    v76 = v112;
    v82 = (v112 + v75 - 1) >> v87;
    v79 = v107;
    v81 = (v72 + v110 * v107 - 1) / v72;
  }

  v89 = vcvt_f32_f64(*v102);
  v90 = vcvt_f32_f64(v102[1]);
  v117 = v101;
  v118 = v100;
  v119 = v99;
  v120 = v76;
  v121 = v78;
  v122 = v80;
  v123 = v79;
  __asm { FMOV            V2.2S, #1.0 }

  v124 = v89;
  v125 = vdiv_f32(_D2, v89);
  v126 = v90;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v116[0] = v77;
  v116[1] = v82;
  v116[2] = v81;
  v115[0] = v73;
  v115[1] = v75;
  v115[2] = v72;
  [a2 dispatchThreadgroups:v116 threadsPerThreadgroup:v115];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayResampleFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v6 setConstantValue:&v19 type:33 atIndex:126];
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

  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t EncodeScan(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  if (*(v7 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *&a1[*MEMORY[0x277CD7370]];
  v9 = *&a1[*MEMORY[0x277CD7350]];
  v10 = [a1 operation];
  v11 = *&a1[*MEMORY[0x277CD7360]];
  if (v10 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = *&a1[*MEMORY[0x277CD7368]];
  v14 = [a1 axis];
  v15 = [a1 exclusive];
  HIBYTE(v17) = [a1 reverse];
  LOBYTE(v17) = v15;
  return EncodeScanCommon(a2, a3, a4, v9, v8, v11, v13, v12, v14, v17);
}

uint64_t EncodeScanGradient(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  if (*(v7 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 operation];
  if (![a1 operation] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *&a1[*MEMORY[0x277CD7370]];
  v9 = *&a1[*MEMORY[0x277CD7350]];
  v10 = [a1 operation];
  v11 = *&a1[*MEMORY[0x277CD7360]];
  if (v10 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = *&a1[*MEMORY[0x277CD7368]];
  v14 = [a1 axis];
  v15 = [a1 exclusive];
  HIBYTE(v17) = [a1 reverse];
  LOBYTE(v17) = v15;
  return EncodeScanCommon(a2, a3, a4, v9, v8, v11, v13, v12, v14, v17);
}

__n128 MPSNDArrayScanBehaviors::getThreads@<Q0>(MPSNDArrayScanBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t EncodeScanCommon(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, __int16 a10)
{
  v139 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v134, a2, 0);
  v15 = [*(a3 + 232) outputTensorAtIndex:0];
  v16 = [*(a3 + 232) inputTensorAtIndex:0];
  if (a9 >= 4 && MTLReportFailureTypeEnabled())
  {
    v77 = a6;
    v79 = a9;
    MTLReportFailure();
  }

  v97 = v15;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v132 = v17;
  v133 = v17;
  UserConstant = -1;
  v131 = v17;
  v128 = v17;
  v130 = 0;
  *&v133 = [*(a3 + 16) count] | ((*(a3 + 112) != 0) << 8) | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v16);
  v19 = BaseTensor::GetDimensionSize(v16);
  v95 = BaseTensor::GetDimensionSize(v16);
  v94 = BaseTensor::GetDimensionSize(v16);
  v121 = a9;
  v20 = *(a5 + 32);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  (*(*v20 + 16))(&v115);
  v89 = v117;
  if (v117 * v116 * v115 == 1 && (*(a4 + 1476) & 0x20) != 0)
  {
    v99 = (*(v16 + 2) & 0xDFFFFFFF) != 64;
    v122 = DimensionSize;
    v86 = v117 * v116;
    v92 = a6;
    v90 = v19;
    if (a9)
    {
      goto LABEL_7;
    }

LABEL_12:
    v23 = v94 * v95;
    v127 = v95;
    v118 = DimensionSize;
    v24 = v19;
    v22 = DimensionSize;
    v25 = v19;
    goto LABEL_16;
  }

  v99 = 0;
  v122 = DimensionSize;
  v86 = v117 * v116;
  v92 = a6;
  v90 = v19;
  if (!a9)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (a9 == 1)
  {
    v23 = v94 * v95;
    v127 = v95;
    v118 = v19;
    v24 = v19;
    v22 = v19;
  }

  else
  {
    if (a9 == 2)
    {
      v21 = v94;
      v22 = v95;
    }

    else
    {
      v22 = v94;
      v21 = v95;
    }

    v23 = v21 * v19;
    v127 = v19;
    v118 = v22;
    v24 = v22;
  }

  v25 = DimensionSize;
LABEL_16:
  v123 = v24;
  v124 = v22;
  v98 = v23;
  v26 = *(a4 + 1480);
  v27 = BYTE2(v26) * v115;
  v28 = *(v16 + 2);
  if ((v28 >> 3) <= 4u)
  {
    v29 = 4;
  }

  else
  {
    v29 = v28 >> 3;
  }

  v84 = v16;
  v85 = v29;
  if (a9)
  {
    if (v25 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v25;
    }

    v31 = (v30 - 1) | ((v30 - 1) >> 1) | (((v30 - 1) | ((v30 - 1) >> 1)) >> 2);
    v32 = v31 | (v31 >> 4) | ((v31 | (v31 >> 4)) >> 8);
    v33 = (v32 | HIWORD(v32)) + 1;
    v120 = v33;
    v125 = v33;
    v34 = v22 - 1;
    v35 = (v34 + v27) / v27;
    if (v35 >= 0x100)
    {
      v36 = 256;
    }

    else
    {
      v36 = v35;
    }

    if (v35 < 2)
    {
      v38 = 8;
    }

    else
    {
      v37 = 8;
      do
      {
        v38 = v37;
        v37 >>= 1;
      }

      while (v36 < v38);
    }

    v119 = v38;
    v88 = v116;
    v47 = (v27 * v36 + v34) / (v27 * v36);
    v48 = (v116 * v33 + DimensionSize - 1) / (v116 * v33) * v98;
    v49 = v36 >> 1;
    v50 = v48 * v47 <= 0x3FF && v49 >= v38;
    if (v50 && (v38 - 1 + v36) / v38 != 1)
    {
      do
      {
        LODWORD(v36) = v49;
        v47 = (v27 * v49 + v34) / (v27 * v49);
        v49 >>= 1;
      }

      while (v47 * v48 <= 0x3FF && v49 >= v38 && (v38 - 1 + v36) / v38 != 1);
    }

    v96 = (v116 * v33 + DimensionSize - 1) / (v116 * v33);
    v126 = v36;
    v44 = v38;
    v87 = BYTE2(v26) * v115;
    v91 = v47;
  }

  else
  {
    v39 = (v27 + v22 - 1) / v27;
    if (v39 >= 0x100)
    {
      v40 = 256;
    }

    else
    {
      v40 = v39;
    }

    if (v25 >= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = v25;
    }

    v42 = (v41 - 1) | ((v41 - 1) >> 1) | (((v41 - 1) | ((v41 - 1) >> 1)) >> 2);
    v43 = v42 | (v42 >> 4) | ((v42 | (v42 >> 4)) >> 8);
    v44 = (v43 | HIWORD(v43)) + 1;
    v120 = v44;
    v126 = v44;
    if (v39 < 2)
    {
      v46 = 8;
    }

    else
    {
      v45 = 8;
      do
      {
        v46 = v45;
        v45 >>= 1;
      }

      while (v40 < v46);
    }

    v119 = v46;
    v53 = DimensionSize - 1;
    v54 = (v27 * v40 + v53) / (v27 * v40);
    v47 = (v116 * v44 + v90 - 1) / (v116 * v44);
    v55 = v40 >> 1;
    v56 = v47 * v98 * v54 <= 0x3FF && v55 >= v46;
    if (v56 && (v46 - 1 + v40) / v46 != 1)
    {
      do
      {
        LODWORD(v40) = v55;
        v54 = (v27 * v55 + v53) / (v27 * v55);
        v55 >>= 1;
      }

      while (v54 * v47 * v98 <= 0x3FF && v55 >= v46 && (v46 - 1 + v40) / v46 != 1);
    }

    v125 = v40;
    v87 = v116;
    v88 = BYTE2(v26) * v115;
    v96 = v54;
    v91 = v54;
    v33 = v46;
  }

  v59 = *(v97 + 8);
  v108[0] = v28;
  v108[1] = v59;
  v109 = a9;
  *v110 = 0;
  *&v110[3] = a10;
  v111 = v99;
  v112 = (v26 & 0xFF0000) == 0x400000;
  v113 = v33;
  v114 = v44;
  UserConstant = MPSNDArrayScanCreateUserConstant(v108);
  MPSLibrary::CreateUberShaderKey();
  v110[1] = 1;
  UserConstant = MPSNDArrayScanCreateUserConstant(v108);
  MPSLibrary::CreateUberShaderKey();
  *&v110[1] = 256;
  UserConstant = MPSNDArrayScanCreateUserConstant(v108);
  v80 = v92;
  v81 = a7;
  v78 = *(a3 + 232);
  MPSLibrary::CreateUberShaderKey();
  v60 = v96;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey && (v93 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v62 = MPSLibrary::GetPipelineStateForMPSKey()) != 0)
  {
    v83 = v62;
    context = objc_autoreleasePoolPush();
    if (v91 == 1)
    {
      [a1 setComputePipelineState:{PipelineStateForMPSKey, v78, v80, v81, 0, 0}];
      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v63 = 0;
    }

    else
    {
      [a1 setComputePipelineState:{v93, v78, v80, v81, 0, 0}];
      v135 = DimensionSize;
      v136 = v90;
      v137 = v95;
      v138 = v94;
      *(&v135 + a9) = v91;
      v65 = *(v84 + 2);
      if (v65 == 64)
      {
        v66 = 64;
      }

      else
      {
        v66 = 32;
      }

      if (v65 == 536870976)
      {
        v66 = 536870976;
      }

      if ((v65 & 0x10000000) != 0)
      {
        v67 = 268435488;
      }

      else
      {
        v67 = v66;
      }

      v68 = v135;
      v69 = v136;
      v70 = v137;
      v71 = v138;
      v72 = [MEMORY[0x277CD7268] descriptorWithDataType:v67 dimensionCount:4 dimensionSizes:&v135];
      [v72 setPreferPackedRows:1];
      v63 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:MPSAutoCache::GetTempBuffer(v134 descriptor:{v69 * v68 * v70 * v71 * ((v67 >> 3) & 0xC), 0), v72}];
      if (v63)
      {
        v73 = [a2 userDictionary];
        v74 = [v73 objectForKey:@"_MPSCommandBufferRetainListKey"];
        if (!v74)
        {
          v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v73 setObject:v75 forKey:@"_MPSCommandBufferRetainListKey"];

          *&v103 = MEMORY[0x277D85DD0];
          *(&v103 + 1) = 3221225472;
          *&v104 = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_1;
          *(&v104 + 1) = &unk_278AFFDB8;
          *&v105 = @"_MPSCommandBufferRetainListKey";
          [a2 addCompletedHandler:&v103];
          v74 = v75;
        }

        [v74 addObject:v63];
      }

      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      [a1 setBuffer:objc_msgSend(v63 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v63, 0, 4, &v103, 0), 26}];
      objc_msgSend_setBytes_length_atIndex_(a1);
      v60 = v96;
    }

    objc_msgSend_setBytes_length_atIndex_(a1);
    if (!v99)
    {
      [a1 setThreadgroupMemoryLength:v27 * v86 * v85 atIndex:0];
    }

    *&v103 = v60;
    *(&v103 + 1) = v47;
    *&v104 = v98;
    v135 = v88;
    v136 = v87;
    v137 = v89;
    [a1 dispatchThreadgroups:&v103 threadsPerThreadgroup:&v135];
    if (v91 != 1)
    {
      v124 = v91;
      [a1 setComputePipelineState:v83];
      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      [a1 setBuffer:objc_msgSend(v63 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v63, 0, 4, &v103, 0), 28}];
      objc_msgSend_setBytes_length_atIndex_(a1);
      objc_msgSend_setBytes_length_atIndex_(a1);
      if (!v99)
      {
        [a1 setThreadgroupMemoryLength:v27 * v86 * v85 atIndex:0];
      }

      v135 = v96;
      v136 = v47;
      v137 = v98;
      v102[0] = v88;
      v102[1] = v87;
      v102[2] = v89;
      [a1 dispatchThreadgroups:&v135 threadsPerThreadgroup:v102];
    }

    objc_autoreleasePoolPop(context);
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseComputeState();
    v64 = 0;
  }

  else
  {
    v64 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v134);
  return v64;
}

uint64_t MPSNDArrayScanCreateUserConstant(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 268435471)
  {
    if (v1 <= 536870927)
    {
      if (v1 == 268435472)
      {
        v2 = 2;
        goto LABEL_21;
      }

      if (v1 == 268435488)
      {
        v2 = 1;
        goto LABEL_21;
      }

      if (v1 != 536870920)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (v1 != 536870928 && v1 != 536870944)
    {
      if (v1 == 536870976)
      {
        v2 = 4;
        goto LABEL_21;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (v1 <= 15)
  {
    if (v1 == -1879048176)
    {
      v2 = 3;
      goto LABEL_21;
    }

    if (v1 == 8)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v1 == 16 || v1 == 32)
  {
LABEL_20:
    v2 = 0;
    goto LABEL_21;
  }

  if (v1 != 64)
  {
    return 0;
  }

  v2 = 5;
LABEL_21:
  v4 = *(a1 + 4);
  if (v4 == 268435488)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 536870976)
  {
    v6 = 64;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 268435472)
  {
    v7 = 32;
  }

  else
  {
    v7 = v6;
  }

  if (v4 == 64)
  {
    v8 = 80;
  }

  else
  {
    v8 = 0;
  }

  if (v4 == -1879048176)
  {
    v9 = 48;
  }

  else
  {
    v9 = v8;
  }

  if (v4 <= 268435471)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 | v2 | (*(a1 + 16) << 6) | (*(a1 + 17) << 7);
  v12 = *(a1 + 24);
  if (v12 >= 2)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      ++v15;
      v14 += 0x8000;
    }

    while (v12 >> v15);
    v13 = v14 & 0x18000;
  }

  else
  {
    v13 = 0;
  }

  v16 = v11 | (*(a1 + 18) << 8);
  v17 = *(a1 + 8);
  v18 = *(a1 + 19);
  v19 = *(a1 + 20);
  v20 = *(a1 + 21);
  v21 = *(a1 + 22);
  v22 = *(a1 + 32);
  if (v22 >= 2)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      ++v25;
      v24 += 0x20000;
    }

    while (v22 >> v25);
    v23 = v24 & 0x60000;
  }

  else
  {
    v23 = 0;
  }

  v26 = v16 & 0xFFFFF9FF | ((v17 & 3) << 9);
  v27 = v18 << 11;
  v28 = v19 << 12;
  v29 = v20 << 13;
  v30 = v21 << 14;
  v31 = (v1 >> 10) & 0x80000;
  v32 = v1 >> 3;
  if (v32)
  {
    if (v32)
    {
      v35 = 0;
    }

    else
    {
      v33 = 0x400000;
      do
      {
        v34 = v32;
        v32 >>= 1;
        v33 += 0x100000;
      }

      while ((v34 & 2) == 0);
      v35 = v33 & 0x300000;
    }
  }

  else
  {
    v35 = 3145728;
  }

  return v27 | v31 | v26 | v28 | v29 | v30 | v13 | v23 | v35;
}

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_1(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t IsNDArrayTransposed(int a1, int *a2, int8x8_t a3)
{
  if (a3.u8[0] > 3u || a3.u8[1] > 3u || (a3.u8[2] <= 3u ? (v3 = a3.u8[3] > 3u) : (v3 = 1), v3))
  {
    result = 1;
    v5 = -1;
    goto LABEL_9;
  }

  v5 = a1;
  v6 = vceq_s16((*&vzip1_s8(a3, a3) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v6))
  {
    result = 0;
    goto LABEL_9;
  }

  *a2 = -1;
  if (a1 == 1)
  {
    result = 1;
    if ((v6.i8[6] & 1) == 0 || a3.u8[2] != 1 || a3.u8[0] != 2 || a3.i8[1])
    {
      return result;
    }

    v5 = 0;
LABEL_9:
    *a2 = v5;
    return result;
  }

  if (a1)
  {
    return 1;
  }

  result = 1;
  if ((v6.i8[6] & 1) != 0 && !a3.i8[2])
  {
    v5 = a3.u8[0];
    if (a3.u8[0] == 1 && a3.u8[1] == 2)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL IsNDArraySliced(const MPSNDArray *a1, BOOL *a2)
{
  if (a2)
  {
    return *a2 && (*(&a1->super.isa + *MEMORY[0x277CD7410]) != *(&a1->super.isa + *MEMORY[0x277CD73D0]) || *(&a1->super.isa + *MEMORY[0x277CD7418])) || a2[1] && (*(&a1->super.isa + *MEMORY[0x277CD7410] + 4) != *(&a1->super.isa + *MEMORY[0x277CD73D0] + 4) || *(&a1->super.isa + *MEMORY[0x277CD7418] + 4)) || a2[2] && (*(&a1[1].super.isa + *MEMORY[0x277CD7410]) != *(&a1[1].super.isa + *MEMORY[0x277CD73D0]) || *(&a1[1].super.isa + *MEMORY[0x277CD7418])) || a2[3] && (*(&a1[1].super.isa + *MEMORY[0x277CD7410] + 4) != *(&a1[1].super.isa + *MEMORY[0x277CD73D0] + 4) || *(&a1[1].super.isa + *MEMORY[0x277CD7418] + 4));
  }

  v3 = *(&a1->super.isa + *MEMORY[0x277CD7410]);
  v4 = *(&a1->super.isa + *MEMORY[0x277CD73D0]);
  if (v3 != v4)
  {
    return 1;
  }

  v5 = (a1 + *MEMORY[0x277CD7418]);
  if (*v5 || DWORD1(v3) != DWORD1(v4))
  {
    return 1;
  }

  if (v5[1] || DWORD2(v3) != DWORD2(v4))
  {
    return 1;
  }

  if (v5[2] || HIDWORD(v3) != HIDWORD(v4))
  {
    return 1;
  }

  return v5[3] != 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::IsConvolutionSupported(uint64_t a1, uint64_t a2)
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
  LODWORD(v5) = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v7 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Prefix linking not supported by PreG13 kernels. Falling back to generic implementation\n", v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
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
    while (1)
    {
      v17 = *v11;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v13);
      v19 = *v11;
      if (v17 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v15 = *(v19 + 76);
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        goto LABEL_16;
      }

LABEL_13:
      if (++v11 == v12)
      {
        goto LABEL_17;
      }
    }

    if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      goto LABEL_13;
    }

LABEL_16:
    v20 = *v11++;
    v16 = *(v20 + 76);
  }

  while (v11 != v12);
LABEL_17:
  if (v16 == -1)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if (v15 != -1)
    {
      v21 = *(v3 + 16);
      if (*(a2 + 120) == 1)
      {
        goto LABEL_21;
      }

LABEL_26:
      v22 = [v21 objectAtIndexedSubscript:v15];
      goto LABEL_27;
    }

LABEL_23:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = -1;
  v21 = *(v3 + 16);
  if (*(a2 + 120) != 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v22 = *(v3 + 112);
LABEL_27:
  v23 = [v21 objectAtIndexedSubscript:v16];
  v24 = *MEMORY[0x277CD7408];
  v25 = *(v22 + v24);
  v26 = *MEMORY[0x277CD73F0];
  v27 = *(v22 + v26);
  if (v27 >= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = *(v22 + v26);
  }

  if (v27 < 2)
  {
    v39 = 1;
LABEL_37:
    if ((v39 ^ (-1 << v28)) != 0xFFFFFFFF)
    {
      v40 = (v22 + *MEMORY[0x277CD7428]);
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
        v102 = v48;
        v103 = v47;
        v104 = v46;
        v105 = v45;
        v106 = v44;
        v107 = v43;
        v108 = v42;
        v109 = v41;
        v49 = *(&v102 + (v28 & 0xF));
        if (v25 != v49 && v49 != 0)
        {
          return 0;
        }

        v25 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v28++ & 0xF));
      }

      while (v28 != 16);
    }

LABEL_45:
    v51 = *(v23 + v24);
    v52 = *(v23 + v26);
    v53 = 16;
    if (v52 < 0x10)
    {
      v53 = v52;
    }

    if (v52 >= 2)
    {
      v54 = (v23 + *MEMORY[0x277CD7428]);
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
        v94 = v62;
        v95 = v61;
        v96 = v60;
        v97 = v59;
        v98 = v58;
        v99 = v57;
        v100 = v56;
        v101 = v55;
        if (v51 != *(&v94 + (v63 & 0xF)))
        {
          return 0;
        }

        v51 *= *(v23 + *MEMORY[0x277CD73D0] + 4 * (v63 & 0xF));
        v93 = *(v23 + *MEMORY[0x277CD73D8]);
        v64 |= 1 << *(&v93 | v63++ & 0xF);
        if (v53 == v63)
        {
          if (v52 <= 0xF)
          {
            goto LABEL_54;
          }

          goto LABEL_62;
        }
      }
    }

    v64 = 1;
LABEL_54:
    if ((v64 ^ (-1 << v53)) != 0xFFFFFFFF)
    {
      v65 = (v23 + *MEMORY[0x277CD7428]);
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
        v85 = v73;
        v86 = v72;
        v87 = v71;
        v88 = v70;
        v89 = v69;
        v90 = v68;
        v91 = v67;
        v92 = v66;
        v74 = *(&v85 + (v53 & 0xF));
        if (v51 != v74 && v74 != 0)
        {
          return 0;
        }

        v51 *= *(v23 + *MEMORY[0x277CD73D0] + 4 * (v53++ & 0xF));
      }

      while (v53 != 16);
    }

LABEL_62:
    v76 = *(v22 + *MEMORY[0x277CD73D8]);
    if (v76 <= 3u && BYTE1(v76) <= 3u && BYTE2(v76) <= 3u && BYTE3(v76) <= 3u)
    {
      v79 = *(a2 + 8);
      v80 = vceq_s16((*&vzip1_s8(*&v76, *&v76) & 0xFF00FF00FF00FFLL), 0x3000200010000);
      if ((vminv_u16(v80) & 1) == 0)
      {
        if (v79 == 1)
        {
          if ((v80.i8[6] & 1) == 0)
          {
            goto LABEL_69;
          }

          v83 = BYTE2(v76) == 1 && v76 == 2;
          if (!v83 || BYTE1(v76) != 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v79 || (v80.i8[6] & 1) == 0)
          {
            goto LABEL_69;
          }

          v81 = !BYTE2(v76) && v76 == 1;
          if (!v81 || BYTE1(v76) != 2)
          {
            goto LABEL_69;
          }
        }

        return 1;
      }

      if (v79 < 2)
      {
        return 1;
      }
    }

LABEL_69:
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NCHW/NHWC data format supported for source by PreG13 kernels. Falling back to generic implementation\n", v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    return 0;
  }

  v29 = (v22 + *MEMORY[0x277CD7428]);
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
    v111 = v37;
    v112 = v36;
    v113 = v35;
    v114 = v34;
    v115 = v33;
    v116 = v32;
    v117 = v31;
    v118 = v30;
    if (v25 != *(&v111 + (v38 & 0xF)))
    {
      return 0;
    }

    v25 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v38 & 0xF));
    v110 = *(v22 + *MEMORY[0x277CD73D8]);
    v39 |= 1 << *(&v110 | v38++ & 0xF);
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

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::GetKernelDispatchParametersForKey@<X0>(MPSKernel *a1@<X1>, void *a2@<X0>, unsigned int *a3@<X2>, int a4@<W3>, int a5@<W4>, unsigned __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v9 = 3;
  if (a1[2].super.isa == 1)
  {
    if (a1[2]._options == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }
  }

  v10 = a3[3];
  v11 = v10 / a3[6];
  if (a6)
  {
    v12 = *a6;
    v13 = a6[1];
    v14 = a6[2];
    v15 = a6[3];
    v16 = a6[4];
    v17 = a6[5];
    LODWORD(v18) = a6[6];
    goto LABEL_9;
  }

  v19 = a2[9];
  if (v19)
  {
    v12 = *v19;
    v13 = v19[1];
    v14 = v19[2];
    v15 = v19[3];
    v16 = v19[4];
    v17 = v19[5];
    LODWORD(v18) = v19[6];
    goto LABEL_9;
  }

  v25 = *a3;
  v26 = a3[2];
  v27 = a2[10];
  if (v27)
  {
    v28 = a2[7];
    v29 = a2[2 * a5 + 3 + a4];
    v30 = (v29 + 12);
    while (1)
    {
      v31 = *v28 == *a3 && v28[1] == *(a3 + 1);
      if (v31 && v28[2] == *(a3 + 2))
      {
        break;
      }

      v28 += 3;
      v30 += 7;
      if (!--v27)
      {
        goto LABEL_29;
      }
    }

    if (v29)
    {
      v33 = a1;
      MPSKernel_LogInfo(a1, 3uLL, "Optimal parameter set found in PreG13 table\n");
      a1 = v33;
      v12 = *(v30 - 3);
      v13 = *(v30 - 2);
      v14 = *(v30 - 1);
      v15 = *v30;
      v16 = v30[1];
      v17 = v30[2];
      LODWORD(v18) = v30[3];
      v7 = a5;
      goto LABEL_9;
    }
  }

LABEL_29:
  v36 = a3[1] * v25;
  v37 = a1;
  MPSKernel_LogInfo(a1, 3uLL, "Optimal parameter set not found in PreG13 table\n");
  if (a5)
  {
    v38 = v36;
    v39 = a4;
    if (a4 != 1)
    {
      if (v10 >= 0x20)
      {
        v50 = 16;
      }

      else
      {
        v50 = 8;
      }

      if (v10 >= 0x20)
      {
        v51 = 2;
      }

      else
      {
        v51 = 8;
      }

      if (v10 >= 0x20)
      {
        v52 = 2;
      }

      else
      {
        v52 = 5;
      }

      v53 = v36 >> 4;
      v54 = v10 < 0x20 && v53 > 0x270;
      if (v54)
      {
        v47 = 4;
      }

      else
      {
        v47 = 16;
      }

      if (v53 <= 0x270)
      {
        v46 = 8;
      }

      else
      {
        v46 = v50;
      }

      if (v53 <= 0x270)
      {
        v49 = 4;
      }

      else
      {
        v49 = v51;
      }

      if (v53 <= 0x270)
      {
        v42 = 1;
      }

      else
      {
        v42 = v52;
      }

      v7 = a5;
      v41 = a3;
      a1 = v37;
      if ((-1431655765 * v25) < 0x55555556)
      {
        v42 = 3;
      }

      else if ((v25 & 3) != 0)
      {
        if ((-858993459 * v25) < 0x33333334)
        {
          v42 = 5;
        }

        else
        {
          HIDWORD(v55) = -1431655765 * v25;
          LODWORD(v55) = -1431655765 * v25;
          if ((v55 >> 1) < 0x2AAAAAAB)
          {
            v42 = 6;
          }
        }
      }

      else
      {
        v42 = 4;
      }

      if (v38 > 0x190)
      {
        v48 = 8;
      }

      else
      {
        v49 = 4;
        if (v10 >= 0x200)
        {
          v47 = 16;
        }

        else
        {
          v47 = 4;
        }

        if (v10 > 0x400)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }

        v46 = 8;
      }

      if ((*(&v37->super.isa + *MEMORY[0x277CD7350]))[368] <= 17)
      {
        v59 = 64;
      }

      else
      {
        v59 = 32;
      }

      if (v47 * v42 > v59)
      {
        v60 = 1;
        do
        {
          v61 = v60 & 1;
          v60 ^= 1u;
          v47 >>= v60 & 1;
          v42 -= v61;
        }

        while (v42 * v47 > v59);
      }

      goto LABEL_123;
    }

    HIDWORD(v40) = -1431655765 * v25;
    LODWORD(v40) = -1431655765 * v25;
    v7 = a5;
    v41 = a3;
    a1 = v37;
    if ((v40 >> 1) < 0x2AAAAAAB)
    {
      v42 = 6;
    }

    else if ((-858993459 * v25) < 0x33333334)
    {
      v42 = 5;
    }

    else if ((v25 & 3) != 0)
    {
      if ((-1431655765 * v25) >= 0x55555556)
      {
        v42 = 2;
      }

      else
      {
        v42 = 3;
      }
    }

    else
    {
      v42 = 4;
    }

    v56 = 1;
    LODWORD(v18) = 4;
    v47 = 8;
    if (v38 <= 0x64)
    {
      if (v10 >= 0x200)
      {
        v47 = 8;
      }

      else
      {
        v47 = 4;
      }

      if (v10 > 0x400)
      {
        v48 = 1;
      }

      else
      {
        v48 = 2;
      }

      v49 = 8;
      v46 = 4;
LABEL_123:
      if (v38 <= 4)
      {
        LODWORD(v18) = 8;
      }

      else
      {
        LODWORD(v18) = v49;
      }

      if (v38 <= 4)
      {
        v58 = 1;
      }

      else
      {
        v58 = v46;
      }

      if (v38 <= 4)
      {
        v56 = 8;
      }

      else
      {
        v56 = v48;
      }

      if (v38 <= 4)
      {
        v42 = 1;
      }

      goto LABEL_134;
    }

    v58 = 8;
  }

  else
  {
    v39 = a4;
    if (a4 == 1)
    {
      v43 = 40;
    }

    else
    {
      v43 = 48;
    }

    if ((*(a2[2] + 1472) - 13) >= 3)
    {
      v44 = v43;
    }

    else
    {
      v44 = 48;
    }

    if (v26 >= 0x11)
    {
      v45 = 3;
    }

    else
    {
      v45 = v9;
    }

    if ((88 - v44) >> 4 < v45)
    {
      v45 = (88 - v44) >> 4;
    }

    v42 = 5 - v45;
    v54 = 80 - 16 * v45 > v44;
    v46 = 8;
    if (v54)
    {
      v47 = 8;
    }

    else
    {
      v47 = 16;
    }

    v48 = 4;
    v49 = 2;
    v38 = v36;
    if (v36 < 0x65)
    {
      v7 = 0;
      v41 = a3;
      a1 = v37;
      goto LABEL_123;
    }

    if (v36 >= 0x191)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    if (v36 < 0x191 || a4 == 1)
    {
      LODWORD(v18) = 2;
    }

    else
    {
      LODWORD(v18) = 4;
    }

    v58 = 16;
    v7 = 0;
    v41 = a3;
    a1 = v37;
  }

LABEL_134:
  if (((v47 - 1) & v11) != 0)
  {
    v62 = v47 - ((v47 - 1) & v11);
  }

  else
  {
    v62 = 0;
  }

  if (v39 == 1)
  {
    v63 = 4;
  }

  else
  {
    v63 = 8;
  }

  if (v63 >= v47)
  {
    v63 = v47;
  }

  if (v47 >= 5 && (v62 / v11) > 0.1)
  {
    do
    {
      v64 = v47;
      v47 >>= 1;
      if (((v47 - 1) & v11) != 0)
      {
        v65 = v47 - ((v47 - 1) & v11);
      }

      else
      {
        v65 = 0;
      }
    }

    while (v64 >= 0xA && (v65 / v11) > 0.1);
  }

  if (v63 >= v47)
  {
    v14 = v47;
  }

  else
  {
    v14 = v63;
  }

  v66 = v47 + v11;
  if (v47 * v18 >= v66)
  {
    while (1)
    {
      v68 = v18;
      v18 = v18 >> 1;
      v58 *= 2;
      if (v68 < 4)
      {
        break;
      }

      v67 = v18;
      if (v47 * v18 < v66)
      {
        goto LABEL_158;
      }
    }

    v67 = v18;
  }

  else
  {
    v67 = v18;
  }

  do
  {
LABEL_158:
    v69 = v47;
    if (v47 < 5)
    {
      break;
    }

    v70 = v67 * v47;
    v47 >>= 1;
  }

  while (v70 >= v67 + v11);
  do
  {
    v13 = v69;
    if (v69 < 2 * v11)
    {
      break;
    }

    v69 >>= 1;
  }

  while (v13 > 1);
  while (v11 % v14)
  {
    if (v14 < 2)
    {
      goto LABEL_168;
    }

LABEL_164:
    v14 >>= 1;
  }

  if (v14 >= 2 && v13 % v14)
  {
    goto LABEL_164;
  }

  do
  {
LABEL_168:
    v17 = v58;
    if (v58 < 2)
    {
      break;
    }

    v71 = v42 * v58--;
  }

  while (v71 >= v42 + v38);
  do
  {
    v15 = v42;
    if (v42 < 2)
    {
      break;
    }

    v72 = v17 * v42--;
  }

  while (v72 >= *v41 + v17);
  do
  {
    v74 = v56;
    v75 = v26 / v56;
    if (v56 < 2)
    {
      break;
    }

    v73 = v26 % v56;
    v56 >>= 1;
  }

  while (v73);
  if ((v75 & 3) != 0)
  {
    if (-1431655765 * v75 < 0x55555556)
    {
      v12 = 3;
    }

    else if (v75)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 4;
  }

  v76 = v12 + v26;
  do
  {
    v16 = v74;
    if (v74 < 2)
    {
      break;
    }

    v77 = v12 * v74;
    v74 >>= 1;
  }

  while (v77 >= v76);
  if (!v7 && v16 >= 2)
  {
    v17 = 0x20 / v16;
  }

  if (v17 * v16 >= 0x41)
  {
    v17 = 0x40 / v16;
  }

LABEL_9:
  result = MPSKernel_LogInfo(a1, 3uLL, "Parameters: [nip=%d,Nop=%d,nop=%d,P=%d,C=%d,Pth=%d,Oth=%d]\n", v12, v13, v14, v15, v16, v17, v18);
  v21 = a3[6] * ((v18 + (v11 + v13 - 1) / v13 - 1) / v18);
  v22 = v17 + a3[1] * ((v15 + *a3 - 1) / v15) * a3[7] - 1;
  *a7 = v12;
  *(a7 + 4) = v13;
  *(a7 + 8) = v14;
  *(a7 + 12) = v15;
  *(a7 + 16) = v16;
  *(a7 + 20) = v17;
  *(a7 + 24) = xmmword_239B0C120;
  *(a7 + 24) = v18;
  *(a7 + 40) = v22 / v17;
  *(a7 + 48) = v21;
  if (v7)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  if (v7)
  {
    v24 = v17;
  }

  else
  {
    v24 = v16;
  }

  *(a7 + 56) = v23;
  *(a7 + 64) = v24;
  *(a7 + 72) = v18;
  return result;
}

uint64_t MPSNDArrayConvPreG13FunctionConstructor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v16 = *(a2 + 68);
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v16 type:33 atIndex:115];
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  if (*a3 != -1 || ((v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF) == 0) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = a3[5] == -1) : (v13 = 0), !v13))
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v17 = *(a3 + 1);
      [v6 setConstantValue:&v17 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v17 = v7;
      [v6 setConstantValue:&v17 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v17 = a3[2];
      [v6 setConstantValue:&v17 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v17 = a3[3];
      [v6 setConstantValue:&v17 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v17 = a3[4];
      [v6 setConstantValue:&v17 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v17 = a3[5];
      [v6 setConstantValue:&v17 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v17 = a3[8];
      [v6 setConstantValue:&v17 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v17 = a3[9];
      [v6 setConstantValue:&v17 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v17 = a3[6];
      [v6 setConstantValue:&v17 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v17 = a3[7];
      [v6 setConstantValue:&v17 type:33 atIndex:116];
    }
  }

  v14 = _MPSNewSpecializedFunction();

  return v14;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(uint64_t a1, void *a2, uint64_t a3, int32x4_t *a4)
{
  if ((MPSNDArrayConvolutionDeviceBehaviorPreG13::IsConvolutionSupported(a1, a4) & 1) == 0)
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4->i64);
  }

  v170 = a1;
  v8 = a4->u32[2];
  v172 = a4->i32[3];
  v9 = a4[1].i64[0];
  v175 = a4[1].i64[1];
  v177 = a4[2].u64[0];
  v159 = a4[4];
  v160 = a4[3];
  v178 = a4[2].u64[1];
  v179 = a4[5].u64[0];
  v166 = a4[5].i64[1];
  v164 = a4[6].i64[0];
  v11 = a4[8].i64[0];
  v10 = a4[8].i64[1];
  v141 = *(v10 + *MEMORY[0x277CD7368]);
  v12 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v161 = a4;
  v180 = a4[7].u8[8];
  if (a4[7].i8[8])
  {
    v12 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v182 = *(v10 + *v12);
  v142 = *(v10 + *MEMORY[0x277CD7360]);
  [v182 setLabel:?];
  v184 = [*(v11 + 232) inputTensorAtIndex:1];
  v140 = [*(v11 + 16) count];
  v174 = v11;
  v13 = [*(v11 + 232) graph];
  v14 = *(v13 + 64);
  v15 = *v14;
  v16 = v14[1];
  v154 = v8;
  if (*v14 == v16)
  {
    v22 = -1;
    v27 = v174;
    v28 = v180;
    goto LABEL_20;
  }

  v17 = v13;
  v18 = a3;
  v19 = v9;
  v20 = a2;
  v21 = -1;
  v22 = -1;
  do
  {
    while (1)
    {
      v23 = *v15;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v17);
      v25 = *v15;
      if (v23 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v21 = *(v25 + 76);
      if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
      {
        goto LABEL_10;
      }

LABEL_7:
      if (++v15 == v16)
      {
        goto LABEL_11;
      }
    }

    if (v25 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = *v15++;
    v22 = *(v26 + 76);
  }

  while (v15 != v16);
LABEL_11:
  a2 = v20;
  v9 = v19;
  if (v22 == -1)
  {
    v27 = v174;
    a3 = v18;
    v8 = v154;
    v28 = v180;
    goto LABEL_20;
  }

  v27 = v174;
  v28 = v180;
  if (v180)
  {
    v21 = -1;
    a3 = v18;
    v8 = v154;
    goto LABEL_23;
  }

  a3 = v18;
  v8 = v154;
  if (v21 == -1)
  {
LABEL_20:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v21 = -1;
  }

LABEL_23:
  v30 = [*(v27 + 16) objectAtIndexedSubscript:v22];
  v138 = *(*(v27 + 8) + 80 * v22 + 64);
  if (v28)
  {
    v31 = *(v27 + 112);
    v32 = v27 + 32;
  }

  else
  {
    v31 = [*(v27 + 16) objectAtIndexedSubscript:v21];
    v32 = *(v27 + 8) + 80 * v21;
  }

  v33 = v170;
  v139 = *(v32 + 64);
  v137 = *(v27 + 208);
  v153 = (*(*v170 + 48))(v170, v31, v30, v161);
  if (v153)
  {
    v34 = *(v184 + 16);
    v190 = 0;
    *v191 = 0;
    __p = 0;
    v36 = *v34;
    v35 = v34[1];
    if (v35 != v36)
    {
      if (((v35 - v36) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_403;
    }

    v33 = v170;
    v30 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(v170, v182, a3, a2, v30, &__p, v172, 0);
    if (__p)
    {
      v190 = __p;
      operator delete(__p);
    }
  }

  if (!v30)
  {
    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(v33, a2, a3, v161);
  }

  if (v28)
  {
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  v38 = [*(v27 + 232) inputTensorAtIndex:v37];
  v168 = [*(v27 + 232) outputTensorAtIndex:0];
  v39 = *&v31[*MEMORY[0x277CD73D8]];
  if (v39 > 3u || BYTE1(v39) > 3u)
  {
    goto LABEL_43;
  }

  if (BYTE2(v39) > 3u || BYTE3(v39) > 3u)
  {
    goto LABEL_43;
  }

  v65 = vceq_s16((*&vzip1_s8(*&v39, *&v39) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v183 = v8;
  if (vminv_u16(v65))
  {
    goto LABEL_45;
  }

  if (v8 == 1)
  {
    v183 = -1;
    if (v65.i8[6])
    {
      v133 = BYTE2(v39) == 1 && v39 == 2;
      if (v133 && BYTE1(v39) == 0)
      {
        v183 = 0;
      }
    }

    goto LABEL_45;
  }

  if (v8)
  {
LABEL_43:
    v41 = -1;
    goto LABEL_44;
  }

  v183 = -1;
  if ((v65.i8[6] & 1) != 0 && !BYTE2(v39) && v39 == 1 && BYTE1(v39) == 2)
  {
    v41 = 1;
LABEL_44:
    v183 = v41;
  }

LABEL_45:
  if (v28)
  {
    v143 = v160.i64[0] * v166 + v164;
    v136 = v160.i64[1] * SHIDWORD(v166) + SHIDWORD(v164);
    v167 = v9;
    v9 = v175;
  }

  else
  {
    v143 = v166;
    v136 = SHIDWORD(v166);
    v167 = v175;
  }

  v176 = *(v184 + 8);
  v42 = *(v168 + 8);
  v157 = *(v38 + 8);
  if (v157 != -1879048176 && v157 != 268435472 && v157 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v176 != -1879048176 && v176 != 268435472 && v176 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v42 != -1879048176 && v42 != 268435472 && v42 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v183 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v38 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v184 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v168 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = *(v38 + 16);
  v45 = *v43;
  v44 = v43[1];
  if (v44 != v45)
  {
    if (((v44 - v45) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_403:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v55 = *(v184 + 16);
  v57 = *v55;
  v56 = v55[1];
  if (v56 != v57)
  {
    if (((v56 - v57) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v58 = *(v168 + 16);
  v60 = *v58;
  v59 = v58[1];
  if (v59 != v60)
  {
    if (((v59 - v60) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v8)
  {
    v46 = 0;
    v47 = 0;
    v48 = 8;
    v49 = 8;
    v50 = 16;
    v51 = 16;
    if (!v172)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  v49 = 0;
  v48 = 0;
  v47 = 16;
  v46 = 16;
  v50 = 8;
  v51 = 16;
  if (v172)
  {
LABEL_76:
    v52 = 24;
    v53 = 8;
    v54 = 0;
    goto LABEL_82;
  }

LABEL_81:
  v54 = 16;
  v51 = 8;
  v53 = 24;
  v52 = 0;
LABEL_82:
  v147 = *v47;
  v152 = *v48;
  v156 = *v46;
  v165 = *v49;
  v146 = *v50;
  v173 = *v50;
  v163 = MEMORY[0x18];
  v144 = MEMORY[0x18];
  v61 = *v52;
  v62 = *v51 * v179;
  v148 = *v53;
  v150 = *v54;
  if (v180)
  {
    if (v62 != v167 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v61 != v9 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_402;
    }
  }

  else
  {
    if (v62 != v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v61 != v167 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_402:
      MTLReportFailure();
    }
  }

  if (v148 != v178 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v150 != v177 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v144 != v163 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v147 != v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v156 != v167 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v63 = *(v38 + 8);
  if (v63 > 285212703)
  {
    if (v63 <= 536870915)
    {
      if (v63 > 301989895)
      {
        if (v63 == 301989896)
        {
          v64 = 512;
        }

        else
        {
          if (v63 != 335544328)
          {
            goto LABEL_145;
          }

          v64 = 544;
        }
      }

      else if (v63 == 285212704)
      {
        v64 = 416;
      }

      else
      {
        if (v63 != 285212736)
        {
          goto LABEL_145;
        }

        v64 = 448;
      }
    }

    else if (v63 <= 536870927)
    {
      if (v63 == 536870916)
      {
        v64 = 0;
      }

      else
      {
        if (v63 != 536870920)
        {
          goto LABEL_145;
        }

        v64 = 32;
      }
    }

    else
    {
      switch(v63)
      {
        case 536870928:
          v64 = 64;
          break;
        case 536870944:
          v64 = 96;
          break;
        case 536870976:
          v64 = 128;
          break;
        default:
          goto LABEL_145;
      }
    }
  }

  else if (v63 <= 31)
  {
    if (v63 > 7)
    {
      if (v63 == 8)
      {
        v64 = 192;
      }

      else
      {
        if (v63 != 16)
        {
          goto LABEL_145;
        }

        v64 = 224;
      }
    }

    else if (v63 == -1879048176)
    {
      v64 = 384;
    }

    else
    {
      if (v63 != 4)
      {
        goto LABEL_145;
      }

      v64 = 160;
    }
  }

  else if (v63 <= 268435463)
  {
    if (v63 == 32)
    {
      v64 = 256;
    }

    else
    {
      if (v63 != 64)
      {
        goto LABEL_145;
      }

      v64 = 288;
    }
  }

  else
  {
    switch(v63)
    {
      case 268435464:
        v64 = 480;
        break;
      case 268435472:
        v64 = 320;
        break;
      case 268435488:
        v64 = 352;
        break;
      default:
LABEL_145:
        v64 = 576;
        break;
    }
  }

  v66 = *(v184 + 8);
  if (v66 > 285212703)
  {
    if (v66 <= 536870915)
    {
      if (v66 > 301989895)
      {
        if (v66 == 301989896)
        {
          v67 = 0x4000;
        }

        else
        {
          if (v66 != 335544328)
          {
            goto LABEL_189;
          }

          v67 = 17408;
        }
      }

      else if (v66 == 285212704)
      {
        v67 = 13312;
      }

      else
      {
        if (v66 != 285212736)
        {
          goto LABEL_189;
        }

        v67 = 14336;
      }
    }

    else if (v66 <= 536870927)
    {
      if (v66 == 536870916)
      {
        v67 = 0;
      }

      else
      {
        if (v66 != 536870920)
        {
          goto LABEL_189;
        }

        v67 = 1024;
      }
    }

    else
    {
      switch(v66)
      {
        case 536870928:
          v67 = 2048;
          break;
        case 536870944:
          v67 = 3072;
          break;
        case 536870976:
          v67 = 4096;
          break;
        default:
          goto LABEL_189;
      }
    }
  }

  else if (v66 <= 31)
  {
    if (v66 > 7)
    {
      if (v66 == 8)
      {
        v67 = 6144;
      }

      else
      {
        if (v66 != 16)
        {
          goto LABEL_189;
        }

        v67 = 7168;
      }
    }

    else if (v66 == -1879048176)
    {
      v67 = 12288;
    }

    else
    {
      if (v66 != 4)
      {
        goto LABEL_189;
      }

      v67 = 5120;
    }
  }

  else if (v66 <= 268435463)
  {
    if (v66 == 32)
    {
      v67 = 0x2000;
    }

    else
    {
      if (v66 != 64)
      {
        goto LABEL_189;
      }

      v67 = 9216;
    }
  }

  else
  {
    switch(v66)
    {
      case 268435464:
        v67 = 15360;
        break;
      case 268435472:
        v67 = 10240;
        break;
      case 268435488:
        v67 = 11264;
        break;
      default:
LABEL_189:
        v67 = 18432;
        break;
    }
  }

  v68 = v67 | v64;
  if (v180)
  {
    if (v63 > 285212703)
    {
      if (v63 <= 536870915)
      {
        if (v63 > 301989895)
        {
          if (v63 == 301989896)
          {
            v69 = 0x80000;
          }

          else
          {
            if (v63 != 335544328)
            {
              goto LABEL_234;
            }

            v69 = 557056;
          }
        }

        else if (v63 == 285212704)
        {
          v69 = 425984;
        }

        else
        {
          if (v63 != 285212736)
          {
            goto LABEL_234;
          }

          v69 = 458752;
        }
      }

      else if (v63 <= 536870927)
      {
        if (v63 == 536870916)
        {
          v69 = 0;
        }

        else
        {
          if (v63 != 536870920)
          {
            goto LABEL_234;
          }

          v69 = 0x8000;
        }
      }

      else
      {
        switch(v63)
        {
          case 536870928:
            v69 = 0x10000;
            break;
          case 536870944:
            v69 = 98304;
            break;
          case 536870976:
            v69 = 0x20000;
            break;
          default:
            goto LABEL_234;
        }
      }
    }

    else if (v63 <= 31)
    {
      if (v63 > 7)
      {
        if (v63 == 8)
        {
          v69 = 196608;
        }

        else
        {
          if (v63 != 16)
          {
            goto LABEL_234;
          }

          v69 = 229376;
        }
      }

      else if (v63 == -1879048176)
      {
        v69 = 393216;
      }

      else
      {
        if (v63 != 4)
        {
          goto LABEL_234;
        }

        v69 = 163840;
      }
    }

    else if (v63 <= 268435463)
    {
      if (v63 == 32)
      {
        v69 = 0x40000;
      }

      else
      {
        if (v63 != 64)
        {
          goto LABEL_234;
        }

        v69 = 294912;
      }
    }

    else
    {
      switch(v63)
      {
        case 268435464:
          v69 = 491520;
          break;
        case 268435472:
          v69 = 327680;
          break;
        case 268435488:
          v69 = 360448;
          break;
        default:
LABEL_234:
          v69 = 589824;
          break;
      }
    }

    v68 |= v69;
  }

  v70 = *(v168 + 8);
  v181 = a2;
  if (v70 > 285212703)
  {
    if (v70 <= 536870915)
    {
      if (v70 > 301989895)
      {
        if (v70 == 301989896)
        {
          v71 = 16;
        }

        else
        {
          if (v70 != 335544328)
          {
            goto LABEL_279;
          }

          v71 = 17;
        }
      }

      else if (v70 == 285212704)
      {
        v71 = 13;
      }

      else
      {
        if (v70 != 285212736)
        {
          goto LABEL_279;
        }

        v71 = 14;
      }
    }

    else if (v70 <= 536870927)
    {
      if (v70 == 536870916)
      {
        v71 = 0;
      }

      else
      {
        if (v70 != 536870920)
        {
          goto LABEL_279;
        }

        v71 = 1;
      }
    }

    else
    {
      switch(v70)
      {
        case 536870928:
          v71 = 2;
          break;
        case 536870944:
          v71 = 3;
          break;
        case 536870976:
          v71 = 4;
          break;
        default:
          goto LABEL_279;
      }
    }
  }

  else if (v70 <= 31)
  {
    if (v70 > 7)
    {
      if (v70 == 8)
      {
        v71 = 6;
      }

      else
      {
        if (v70 != 16)
        {
          goto LABEL_279;
        }

        v71 = 7;
      }
    }

    else if (v70 == -1879048176)
    {
      v71 = 12;
    }

    else
    {
      if (v70 != 4)
      {
        goto LABEL_279;
      }

      v71 = 5;
    }
  }

  else if (v70 <= 268435463)
  {
    if (v70 == 32)
    {
      v71 = 8;
    }

    else
    {
      if (v70 != 64)
      {
        goto LABEL_279;
      }

      v71 = 9;
    }
  }

  else
  {
    switch(v70)
    {
      case 268435464:
        v71 = 15;
        break;
      case 268435472:
        v71 = 10;
        break;
      case 268435488:
        v71 = 11;
        break;
      default:
LABEL_279:
        v71 = 18;
        break;
    }
  }

  v216 = v165;
  v217 = v173;
  v218 = v147 / v179;
  v219 = v156;
  v220 = v150;
  v221 = v148;
  v222 = v179;
  v223 = v163;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v211 = 0u;
  (*(*v170 + 88))(&v211);
  v72 = v159.i64[0] * (v177 - 1);
  v73 = HIDWORD(v211);
  v185 = (v165 + v73 - 1) / v73;
  v155 = v30;
  v149 = v72 + 1 + ((v72 + 1) >> 63);
  v151 = v72 + 1;
  v169 = v71;
  if (v180 && v160.i64[0] != 1 || v143 - (v72 + 1) / 2 < 0)
  {
    v74 = 0x10000;
  }

  else
  {
    v74 = ((v143 + v72 / 2 + (v185 * HIDWORD(v211) - 1) * v160.i64[0]) >= v152) << 16;
  }

  if (v157 == 268435472)
  {
    v75 = 0x40000;
  }

  else
  {
    v75 = (v157 == -1879048176) << 19;
  }

  if (v176 == 268435472)
  {
    v76 = 0x100000;
  }

  else
  {
    v76 = (v176 == -1879048176) << 21;
  }

  v77 = 1;
  v171 = v74;
  v162 = v76;
  if (v152 <= 0xFFFE && v146 <= 0xFFFE && v144 <= 0xFFFE && v165 <= 0xFFFE && v173 <= 0xFFFE && v163 <= 0xFFFE && v213 <= 0xFFFE && *(&v213 + 1) <= 0xFFFEuLL && v214 <= 0xFFFE)
  {
    v78 = (v185 - 1) * HIDWORD(v211);
    if (v78 <= 0x7FFE)
    {
      v79 = v180 ? 1 : v160.i64[0];
      if ((v143 + v72 + v78 * v79) < 0x8000)
      {
        v80 = v173 - 1;
        if (v80 <= 0x7FFE)
        {
          v81 = v160.i64[1];
          if (v180)
          {
            v81 = 1;
          }

          v77 = (v136 + v159.i64[1] * (v178 - 1) + v81 * v80) >= 0x8000;
        }
      }
    }
  }

  v145 = v159.i64[1] * (v178 - 1);
  v158 = v9;
  v82 = v211;
  v83 = DWORD1(v211);
  v84 = v212;
  v85 = DWORD2(v211);
  [*(v174 + 232) graph];
  v86 = vmovn_s64(vceqq_s64(v159, vdupq_n_s64(1uLL)));
  v88 = v156 > 0x10000 || v147 > 0x10000;
  if (v88 || v77)
  {
    v89 = 0x80000000;
  }

  else
  {
    v89 = 0;
  }

  v90 = (3072 - (__clz(v85) << 10)) & 0xC00;
  if (!v85)
  {
    v90 = 0;
  }

  v91 = (24 - 8 * __clz(v84)) & 0x18;
  if (!v84)
  {
    v91 = 0;
  }

  if (v86.i8[0] & v86.i8[4])
  {
    v92 = 0x4000;
  }

  else
  {
    v92 = 0;
  }

  v93 = v160.i64[1] == 1 && v160.i64[0] == 1;
  v94 = v90 | (32 * v82 + 96) & 0x60 | ((v179 == 1) << 13) | (v180 << 12) | ((__clz(v83) & 7) << 7) | (v73 - 1) & 7 | v91;
  if (v93)
  {
    v95 = 0x8000;
  }

  else
  {
    v95 = 0;
  }

  v96 = (v177 & 3) << 27;
  if (v177 > 3)
  {
    v96 = 0;
  }

  v97 = (v178 & 3) << 29;
  if (v178 > 3)
  {
    v97 = 0;
  }

  v204 = -1;
  v203 = -1;
  v205 = (v96 & 0xFC3FFFFF | ((v154 & 3) << 24) | v97 & 0xFF3FFFFF | v95 & 0xFF3FFFFF | v92 & 0xFF3FFFFF | ((v183 & 3) << 22) | v75 | v162 | ((v167 / v179 % v83 != 0) << 17) | v171 | v89 | v94) ^ 0x380;
  v206 = v169 | v68;
  v207 = 0u;
  v208 = 0u;
  v209 = v140 | (v180 << 8) | 0x10000u;
  v210 = 0;
  v135 = *(v174 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v99 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v100 = *(&v214 + 1);
  v102 = *(&v215 + 1);
  v101 = v215;
  v103 = v215 * *(&v214 + 1) * *(&v215 + 1);
  if (v103 <= v99)
  {
    v109 = v214;
  }

  else
  {
    if (v183)
    {
      v104 = v215;
    }

    else
    {
      v104 = *(&v214 + 1);
    }

    if (*(&v215 + 1) >= 2uLL)
    {
      v105 = *(&v215 + 1);
      do
      {
        v102 = v105 >> 1;
        v103 >>= 1;
        v106 = v103 > v99 && v105 > 3;
        v105 >>= 1;
      }

      while (v106);
    }

    if (v104 < 2 || v103 <= v99)
    {
      v107 = v104;
    }

    else
    {
      do
      {
        v107 = v104 >> 1;
        v103 >>= 1;
        v108 = v103 > v99 && v104 > 3;
        v104 >>= 1;
      }

      while (v108);
    }

    if (v183)
    {
      v101 = v107;
    }

    else
    {
      v100 = v107;
    }

    *&v215 = v101;
    *(&v215 + 1) = v102;
    *&v213 = 1;
    *(&v213 + 1) = (v107 + v217 * ((HIDWORD(v211) + v216 - 1) / HIDWORD(v211)) * v223 - 1) / v107;
    v109 = v222 * ((v102 + (v219 / v222 + DWORD1(v211) - 1) / DWORD1(v211) - 1) / v102);
    *&v214 = v109;
    *(&v214 + 1) = v100;
  }

  v202 = v213;
  [v181 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v181, v174, 4, 0, 0);
  [v181 setBuffer:objc_msgSend(v31 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v31, 0, 4, 0, 0) + v139, 29}];
  if (v153)
  {
    v110 = 0;
  }

  else
  {
    v110 = v138;
  }

  [v181 setBuffer:-[MPSTemporaryNDArray buffer](v155 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v155, 0, 4, 0, 0) + v110, 28}];
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  *&v193[12] = 0u;
  LOWORD(__p) = v109 / v179;
  WORD1(__p) = v179;
  v111 = v158 / v179;
  HIDWORD(__p) = v167 / v179;
  LODWORD(v190) = v158 / v179;
  HIDWORD(v190) = v158;
  *v191 = v167;
  *&v191[4] = 0;
  memset(v192, 0, 20);
  LOWORD(v192[4]) = (v165 + v73 - 1) / v73;
  v192[5] = v152;
  v192[6] = v146;
  v192[7] = v165;
  v192[8] = v173;
  v192[9] = v163;
  v112.i64[0] = v143 - (v149 >> 1);
  v112.i64[1] = v136 - ((v145 + 1) / 2);
  *v112.i8 = vmovn_s64(v112);
  v112.i64[1] = __PAIR64__(v178, v177);
  *v193 = vuzp1q_s16(vuzp1q_s32(v160, v159), v112);
  *&v193[16] = v151;
  *&v193[18] = v145 + 1;
  *&v193[20] = 65537;
  MPSGetUShortDivisorMagicNumber();
  *&v194 = v113;
  MPSGetUShortDivisorMagicNumber();
  *(&v194 + 1) = v114;
  MPSGetUIntDivisorMagicNumber();
  v195 = v115;
  MPSGetUIntDivisorMagicNumber();
  v196 = v116;
  MPSGetUShortDivisorMagicNumber();
  *&v197 = v117;
  MPSGetUShortDivisorMagicNumber();
  *(&v197 + 1) = v118;
  MPSGetUIntDivisorMagicNumber();
  v198 = v119;
  MPSGetUIntDivisorMagicNumber();
  v199 = v120;
  v121 = *MEMORY[0x277CD7400];
  v122 = *MEMORY[0x277CD73C8];
  v123 = *&v31[v122] >> 3;
  v124 = *&v31[v121] / v123;
  v125 = *(v137 + v121);
  if (v183)
  {
    v123 = v125 / (*(v137 + v122) >> 3);
    v126 = *MEMORY[0x277CD73D0];
    v127 = v124;
    LODWORD(v124) = *&v31[v126 + 4] * v124;
    v128 = v124 * *&v31[v126 + 8];
    LODWORD(v129) = *(v137 + v126 + 4) * v123;
    v130 = 1;
  }

  else
  {
    v129 = v125 / v123;
    v126 = *MEMORY[0x277CD73D0];
    v131 = *&v31[v126 + 4];
    v127 = *&v31[v126 + 8];
    LODWORD(v123) = *(v137 + v126 + 8);
    LODWORD(v111) = v131 * v124 * v111;
    v130 = v131 * v124;
    v128 = v130 * v127;
  }

  *&v200 = __PAIR64__(v111, v124);
  *(&v200 + 1) = __PAIR64__(v128, v130);
  *&v191[4] = v127;
  *&v191[8] = v123;
  DWORD1(v201) = v129;
  *&v192[1] = *(&v155->super.super.isa + v126 + 4);
  v192[3] = *(&v155[1].super.super.isa + v126 + 4);
  v132 = *(&v155->super.super.isa + v121) / (*(&v155->super.super.isa + v122) >> 3);
  LODWORD(v201) = 1;
  v192[0] = v132;
  objc_msgSend_setBytes_length_atIndex_(v181);
  if (v84 >= 2)
  {
    [v181 setThreadgroupMemoryLength:(8 * v100 * v101 * v102 + 248) & 0xFFFFFFFFFFFFFF00 atIndex:0];
  }

  [v181 setBuffer:0 offset:0 atIndex:25];
  v187 = v202;
  v188 = v109;
  v186[0] = v100;
  v186[1] = v101;
  v186[2] = v102;
  [v181 dispatchThreadgroups:&v187 threadsPerThreadgroup:v186];
  if (v153)
  {
    MPSDecrementReadCount(v155);
  }

  return 0;
}

void sub_239A8043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, void *a37)
{
  operator delete(__p);
  if (a29)
  {
    operator delete(a29);
    if (!a37)
    {
      goto LABEL_7;
    }
  }

  else if (!a37)
  {
    goto LABEL_7;
  }

  operator delete(a37);
LABEL_7:
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorPreG13::~MPSNDArrayConvolutionDeviceBehaviorPreG13(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayConvolutionDeviceBehaviorPreG13::MPSNDArrayConvolutionDeviceBehaviorPreG13(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 5;
  if ((*(a6 + 1472) - 27) < 6)
  {
    v7 = 6;
  }

  a1[1] = v7;
  a1[2] = a6;
  *a1 = &unk_284CAF9A0;
  a1[7] = &keys;
  a1[8] = 532;
  a1[3] = a2;
  a1[4] = a3;
  a1[5] = a4;
  a1[6] = a5;
  a1[9] = 0;
  a1[10] = 95;
  v8 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (v8 && *v8 == 50)
  {
    v9 = v8;
    v10 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
    a1[9] = v10;
    *v10 = v9[1] - 48;
    v10[1] = v9[3] + 10 * v9[2] - 528;
    v10[2] = v9[4] - 48;
    v10[3] = v9[5] - 48;
    v10[4] = v9[6] - 48;
    v10[5] = v9[8] + 10 * v9[7] - 528;
    v10[6] = v9[10] + 10 * v9[9] - 528;
    v10[7] = v9[11] - 48;
    v10[8] = v9[12] - 48;
    v10[9] = v9[13] - 48;
  }

  return a1;
}

void MPSNDArrayConvolutionDeviceBehaviorAruba::~MPSNDArrayConvolutionDeviceBehaviorAruba(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorCebu::~MPSNDArrayConvolutionDeviceBehaviorCebu(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t EncodeArrayMathBinary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v10 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v11 = *(a4 + 208);
  v12 = *MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  if (*&v9[v13] == 1)
  {
    v51 = 0;
    if (*&v9[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v50 = 0;
    if (*&v10[v13] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v5 = 0;
    v15 = v12;
    if (*&v10[v12 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v9[*MEMORY[0x277CD73D8]] == 1)
  {
    v51 = *&v9[*MEMORY[0x277CD7400]];
    if (*&v9[v12 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v9[*MEMORY[0x277CD73D8]])
  {
    v51 = [v9 dataType] >> 3;
    v12 = *MEMORY[0x277CD7410];
    v13 = *MEMORY[0x277CD7410];
  }

  if (*&v9[v13 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v9[*v14 + 1])
  {
    v50 = [v9 dataType] >> 3;
    v12 = *MEMORY[0x277CD7410];
    if (*&v10[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v9[*v14 + 1] != 1)
  {
    if (*&v10[v13] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v50 = *&v9[*MEMORY[0x277CD7400]];
  if (*&v10[v13] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v10[*v14] == 1)
  {
    v5 = *&v10[*MEMORY[0x277CD7400]];
    v15 = v12;
    if (*&v10[v12 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v10[*v14])
    {
      v5 = [v10 dataType] >> 3;
      v12 = *MEMORY[0x277CD7410];
    }

    v15 = v12;
    if (*&v10[v12 + 4] == 1)
    {
LABEL_23:
      HIDWORD(v49) = 0;
      if (*&v11[v15] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      LODWORD(v49) = 0;
      if (*&v11[v12 + 4] != 1)
      {
        goto LABEL_40;
      }

LABEL_38:
      v4 = 0;
      goto LABEL_44;
    }
  }

LABEL_26:
  if (!v10[*v14 + 1])
  {
    HIDWORD(v49) = [v10 dataType] >> 3;
    v12 = *MEMORY[0x277CD7410];
    if (*&v11[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v10[*v14 + 1] != 1)
  {
    if (*&v11[v15] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  HIDWORD(v49) = *&v10[*MEMORY[0x277CD7400]];
  if (*&v11[v15] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v11[*v14] == 1)
  {
    LODWORD(v49) = *&v11[*MEMORY[0x277CD7400]];
    if (*&v11[v12 + 4] != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!*&v11[*v14])
  {
    LODWORD(v49) = [v11 dataType] >> 3;
    v12 = *MEMORY[0x277CD7410];
  }

  if (*&v11[v12 + 4] == 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v11[*v14 + 1])
  {
    if (v11[*v14 + 1] == 1)
    {
      v4 = *&v11[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v4 = [v11 dataType] >> 3;
  }

LABEL_44:
  v16 = *(a4 + 8);
  v55 = *(v16 + 64);
  v17 = *(v16 + 144);
  v18 = *(a4 + 192);
  v52 = MPSGetLinearOffsetBytes(v9, 0, 2, 0, 0);
  v53 = MPSGetLinearOffsetBytes(v10, 0, 2, 0, 0);
  v19 = MPSGetLinearOffsetBytes(v11, 0, 2, 0, 0);
  v20 = *MEMORY[0x277CD73C8];
  v21 = *&v9[v20];
  if (v21 > 285212703)
  {
    if (v21 <= 536870915)
    {
      v22 = v4;
      if (v21 > 301989895)
      {
        if (v21 == 301989896)
        {
          v23 = 512;
          v24 = *&v10[v20];
          if (v24 <= 285212703)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v21 != 335544328)
          {
            goto LABEL_124;
          }

          v23 = 544;
          v24 = *&v10[v20];
          if (v24 <= 285212703)
          {
            goto LABEL_103;
          }
        }
      }

      else if (v21 == 285212704)
      {
        v23 = 416;
        v24 = *&v10[v20];
        if (v24 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v21 != 285212736)
        {
          goto LABEL_124;
        }

        v23 = 448;
        v24 = *&v10[v20];
        if (v24 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_125;
    }

    v22 = v4;
    if (v21 > 536870927)
    {
      switch(v21)
      {
        case 536870928:
          v23 = 64;
          v24 = *&v10[v20];
          if (v24 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        case 536870944:
          v23 = 96;
          v24 = *&v10[v20];
          if (v24 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        case 536870976:
          v23 = 128;
          v24 = *&v10[v20];
          if (v24 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        default:
          goto LABEL_124;
      }

      goto LABEL_125;
    }

    v23 = 0;
    if (v21 != 536870916)
    {
      if (v21 != 536870920)
      {
        goto LABEL_124;
      }

      v23 = 32;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }

      goto LABEL_125;
    }

LABEL_102:
    v24 = *&v10[v20];
    if (v24 > 285212703)
    {
      goto LABEL_125;
    }

    goto LABEL_103;
  }

  if (v21 <= 31)
  {
    v22 = v4;
    if (v21 > 7)
    {
      if (v21 == 8)
      {
        v23 = 192;
        v24 = *&v10[v20];
        if (v24 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v21 != 16)
        {
          goto LABEL_124;
        }

        v23 = 224;
        v24 = *&v10[v20];
        if (v24 <= 285212703)
        {
          goto LABEL_103;
        }
      }
    }

    else if (v21 == -1879048176)
    {
      v23 = 384;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v21 != 4)
      {
        goto LABEL_124;
      }

      v23 = 160;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_125;
  }

  v22 = v4;
  if (v21 <= 268435463)
  {
    if (v21 != 32)
    {
      if (v21 != 64)
      {
        goto LABEL_124;
      }

      v23 = 288;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }

      goto LABEL_125;
    }

    v23 = 256;
    goto LABEL_102;
  }

  switch(v21)
  {
    case 268435464:
      v23 = 480;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }

      break;
    case 268435472:
      v23 = 320;
      v24 = *&v10[v20];
      if (v24 <= 285212703)
      {
        goto LABEL_103;
      }

      break;
    case 268435488:
      v23 = 352;
      v24 = *&v10[v20];
      if (v24 > 285212703)
      {
        break;
      }

LABEL_103:
      if (v24 <= 31)
      {
        if (v24 > 7)
        {
          if (v24 == 8)
          {
            v25 = 6144;
            goto LABEL_147;
          }

          if (v24 == 16)
          {
            v25 = 7168;
            goto LABEL_147;
          }
        }

        else
        {
          if (v24 == -1879048176)
          {
            v25 = 12288;
            goto LABEL_147;
          }

          if (v24 == 4)
          {
            v25 = 5120;
            goto LABEL_147;
          }
        }
      }

      else if (v24 <= 268435463)
      {
        if (v24 == 32)
        {
          v25 = 0x2000;
          goto LABEL_147;
        }

        if (v24 == 64)
        {
          v25 = 9216;
          goto LABEL_147;
        }
      }

      else
      {
        switch(v24)
        {
          case 268435464:
            v25 = 15360;
            goto LABEL_147;
          case 268435472:
            v25 = 10240;
            goto LABEL_147;
          case 268435488:
            v25 = 11264;
            goto LABEL_147;
        }
      }

      goto LABEL_146;
    default:
LABEL_124:
      v23 = 576;
      v24 = *&v10[v20];
      if (v24 > 285212703)
      {
        break;
      }

      goto LABEL_103;
  }

LABEL_125:
  if (v24 <= 536870915)
  {
    if (v24 > 301989895)
    {
      if (v24 == 301989896)
      {
        v25 = 0x4000;
        goto LABEL_147;
      }

      if (v24 == 335544328)
      {
        v25 = 17408;
        goto LABEL_147;
      }
    }

    else
    {
      if (v24 == 285212704)
      {
        v25 = 13312;
        goto LABEL_147;
      }

      if (v24 == 285212736)
      {
        v25 = 14336;
        goto LABEL_147;
      }
    }
  }

  else if (v24 <= 536870927)
  {
    if (v24 == 536870916)
    {
      v25 = 0;
      goto LABEL_147;
    }

    if (v24 == 536870920)
    {
      v25 = 1024;
      goto LABEL_147;
    }
  }

  else
  {
    switch(v24)
    {
      case 536870928:
        v25 = 2048;
        goto LABEL_147;
      case 536870944:
        v25 = 3072;
        goto LABEL_147;
      case 536870976:
        v25 = 4096;
        goto LABEL_147;
    }
  }

LABEL_146:
  v25 = 18432;
LABEL_147:
  v26 = v23 | v25;
  v27 = *&v11[v20];
  v56 = v18;
  v57 = v10;
  v54 = v19;
  if (v27 > 285212703)
  {
    if (v27 <= 536870915)
    {
      if (v27 > 301989895)
      {
        v28 = v11;
        if (v27 == 301989896)
        {
          v31 = v17;
          v29 = a2;
          v32 = 16;
          v30 = v51;
          goto LABEL_191;
        }

        v29 = a2;
        v30 = v51;
        if (v27 == 335544328)
        {
          v31 = v17;
          v32 = 17;
          goto LABEL_191;
        }
      }

      else
      {
        v28 = v11;
        if (v27 == 285212704)
        {
          v31 = v17;
          v29 = a2;
          v32 = 13;
          v30 = v51;
          goto LABEL_191;
        }

        v29 = a2;
        v30 = v51;
        if (v27 == 285212736)
        {
          v31 = v17;
          v32 = 14;
          goto LABEL_191;
        }
      }
    }

    else if (v27 <= 536870927)
    {
      v28 = v11;
      if (v27 == 536870916)
      {
        v31 = v17;
        v29 = a2;
        v32 = 0;
        v30 = v51;
        goto LABEL_191;
      }

      v29 = a2;
      v30 = v51;
      if (v27 == 536870920)
      {
        v31 = v17;
        v32 = 1;
        goto LABEL_191;
      }
    }

    else
    {
      if (v27 == 536870928)
      {
        v28 = v11;
        v31 = v17;
        v29 = a2;
        v32 = 2;
        v30 = v51;
        goto LABEL_191;
      }

      v28 = v11;
      if (v27 == 536870944)
      {
        v31 = v17;
        v29 = a2;
        v32 = 3;
        v30 = v51;
        goto LABEL_191;
      }

      v29 = a2;
      v30 = v51;
      if (v27 == 536870976)
      {
        v31 = v17;
        v32 = 4;
        goto LABEL_191;
      }
    }
  }

  else if (v27 <= 31)
  {
    if (v27 > 7)
    {
      v30 = v51;
      v28 = v11;
      if (v27 == 8)
      {
        v31 = v17;
        v29 = a2;
        v32 = 6;
        goto LABEL_191;
      }

      v29 = a2;
      if (v27 == 16)
      {
        v31 = v17;
        v32 = 7;
        goto LABEL_191;
      }
    }

    else
    {
      v28 = v11;
      if (v27 == -1879048176)
      {
        v31 = v17;
        v29 = a2;
        v32 = 12;
        v30 = v51;
        goto LABEL_191;
      }

      v29 = a2;
      v30 = v51;
      if (v27 == 4)
      {
        v31 = v17;
        v32 = 5;
        goto LABEL_191;
      }
    }
  }

  else if (v27 <= 268435463)
  {
    v30 = v51;
    v28 = v11;
    if (v27 == 32)
    {
      v31 = v17;
      v29 = a2;
      v32 = 8;
      goto LABEL_191;
    }

    v29 = a2;
    if (v27 == 64)
    {
      v31 = v17;
      v32 = 9;
      goto LABEL_191;
    }
  }

  else
  {
    if (v27 == 268435464)
    {
      v28 = v11;
      v31 = v17;
      v29 = a2;
      v32 = 15;
      v30 = v51;
      goto LABEL_191;
    }

    v28 = v11;
    if (v27 == 268435472)
    {
      v31 = v17;
      v29 = a2;
      v32 = 10;
      v30 = v51;
      goto LABEL_191;
    }

    v29 = a2;
    v30 = v51;
    if (v27 == 268435488)
    {
      v31 = v17;
      v32 = 11;
      goto LABEL_191;
    }
  }

  v31 = v17;
  v32 = 18;
LABEL_191:
  v33 = v26 | v32;
  v34 = *(a1 + 144);
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v76 = v35;
  v77 = v35;
  v73 = -1;
  v75 = v35;
  v72 = v35;
  v74 = v33 | (v34 << 16);
  v36 = v28;
  v37 = &v28[*MEMORY[0x277CD7410]];
  v38 = *v37;
  v39 = *(v37 + 1);
  v60 = *v37;
  v61 = v39;
  v62 = 0;
  v63 = v50;
  v64 = HIDWORD(v49);
  v65 = v22;
  v66 = 0;
  v67 = v30;
  v68 = v5;
  v69 = v49;
  v70 = 0;
  v71 = v34;
  v40 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v42 = [ComputeState threadExecutionWidth];
  if (v42 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  v44 = [ComputeState maxTotalThreadsPerThreadgroup];
  v45 = 256;
  if (v44 < 0x100)
  {
    v45 = v44;
  }

  v46 = v45 > 2 * v43;
  v47 = v45 / v43;
  if (v46)
  {
    v40 = v47;
  }

  [v29 setComputePipelineState:ComputeState];
  [v29 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{v52 + v55, 0}];
  [v29 setBuffer:objc_msgSend(v57 offset:"buffer") atIndex:{v53 + v31, 1}];
  [v29 setBuffer:objc_msgSend(v36 offset:"buffer") atIndex:{v54 + v56, 2}];
  objc_msgSend_setBytes_length_atIndex_(v29);
  v59[0] = (v38 + v43 - 1) / v43;
  v59[1] = (v39 + v40 - 1) / v40;
  v59[2] = 1;
  v58[0] = v43;
  v58[1] = v40;
  v58[2] = 1;
  [v29 dispatchThreadgroups:v59 threadsPerThreadgroup:v58];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMathBinaryGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v78 = v8;
  v13 = *(a4 + 112);
  v14 = *(a4 + 208);
  v15 = MEMORY[0x277CD7410];
  v16 = *MEMORY[0x277CD7410];
  v17 = *MEMORY[0x277CD7410];
  v18 = MEMORY[0x277CD73D8];
  if (*&v7[v17] == 1)
  {
    v70 = 0;
    if (*&v7[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v69 = 0;
    if (*&v78[v17] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    LODWORD(v8) = 0;
    v19 = v16;
    if (*&v78[v16 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v7[*MEMORY[0x277CD73D8]] == 1)
  {
    v70 = *&v7[*MEMORY[0x277CD7400]];
    if (*&v7[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v7[*MEMORY[0x277CD73D8]])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    v70 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    v17 = *MEMORY[0x277CD7410];
  }

  if (*&v7[v17 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v7[*v18 + 1])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    v69 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v78[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v7[*v18 + 1] != 1)
  {
    if (*&v78[v17] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v69 = *&v7[*MEMORY[0x277CD7400]];
  if (*&v78[v17] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v78[*v18] == 1)
  {
    LODWORD(v8) = *&v78[*MEMORY[0x277CD7400]];
    v19 = v16;
    if (*&v78[v16 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v78[*v18])
    {
      LOWORD(v8) = [v78 dataType];
      v15 = MEMORY[0x277CD7410];
      LODWORD(v8) = v8 >> 3;
      v16 = *MEMORY[0x277CD7410];
    }

    v19 = v16;
    if (*&v78[v16 + 4] == 1)
    {
LABEL_23:
      v9 = 0;
      if (*&v13[v19] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v10 = 0;
      v21 = v16;
      if (*&v13[v16 + 4] == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_26:
  if (!v78[*v18 + 1])
  {
    v20 = v8;
    LOWORD(v8) = [v78 dataType];
    v15 = MEMORY[0x277CD7410];
    v9 = v8 >> 3;
    LODWORD(v8) = v20;
    v16 = *MEMORY[0x277CD7410];
    if (*&v13[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v78[*v18 + 1] != 1)
  {
    if (*&v13[v19] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v9 = *&v78[*MEMORY[0x277CD7400]];
  if (*&v13[v19] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v13[*v18] == 1)
  {
    v10 = *&v13[*MEMORY[0x277CD7400]];
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!*&v13[*v18])
    {
      v22 = v8;
      v23 = v9;
      LOWORD(v8) = [v13 dataType];
      v9 = v23;
      v15 = MEMORY[0x277CD7410];
      v10 = v8 >> 3;
      LODWORD(v8) = v22;
      v16 = *MEMORY[0x277CD7410];
    }

    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
LABEL_38:
      v11 = 0;
      if (*&v14[v21] != 1)
      {
        goto LABEL_49;
      }

LABEL_46:
      v12 = 0;
      if (*&v14[v16 + 4] != 1)
      {
        goto LABEL_55;
      }

LABEL_53:
      LODWORD(v31) = 0;
      goto LABEL_59;
    }
  }

LABEL_41:
  if (!v13[*v18 + 1])
  {
    v24 = v8;
    v25 = v9;
    v26 = v10;
    LOWORD(v8) = [v13 dataType];
    v10 = v26;
    v9 = v25;
    v15 = MEMORY[0x277CD7410];
    v11 = v8 >> 3;
    LODWORD(v8) = v24;
    v16 = *MEMORY[0x277CD7410];
    if (*&v14[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v13[*v18 + 1] != 1)
  {
    if (*&v14[v21] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v11 = *&v13[*MEMORY[0x277CD7400]];
  if (*&v14[v21] == 1)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (*&v14[*v18] == 1)
  {
    v12 = *&v14[*MEMORY[0x277CD7400]];
    if (*&v14[v16 + 4] != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!*&v14[*v18])
  {
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v30 = v11;
    LOWORD(v8) = [v14 dataType];
    v11 = v30;
    v10 = v29;
    v9 = v28;
    v15 = MEMORY[0x277CD7410];
    v12 = v8 >> 3;
    LODWORD(v8) = v27;
    v16 = *MEMORY[0x277CD7410];
  }

  if (*&v14[v16 + 4] == 1)
  {
    goto LABEL_53;
  }

LABEL_55:
  v31 = &v14[*v18];
  if (v31[1])
  {
    if (v31[1] == 1)
    {
      LODWORD(v31) = *&v14[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v32 = v8;
    v33 = v6;
    v34 = v9;
    v35 = v10;
    v36 = v11;
    v37 = v12;
    LOWORD(v8) = [v14 dataType];
    v12 = v37;
    v11 = v36;
    v10 = v35;
    v9 = v34;
    LODWORD(v6) = v33;
    v15 = MEMORY[0x277CD7410];
    LODWORD(v31) = v8 >> 3;
    LODWORD(v8) = v32;
  }

LABEL_59:
  v38 = *(a4 + 8);
  v39 = *(v38 + 64);
  v40 = *(v38 + 144);
  v41 = *MEMORY[0x277CD73C8];
  v42 = *&v7[v41];
  v74 = *(a4 + 192);
  if (v42 > 285212703)
  {
    if (v42 <= 536870915)
    {
      if (v42 > 301989895)
      {
        if (v42 == 301989896)
        {
          v43 = 512;
          goto LABEL_103;
        }

        if (v42 == 335544328)
        {
          v43 = 544;
          goto LABEL_103;
        }
      }

      else
      {
        if (v42 == 285212704)
        {
          v43 = 416;
          goto LABEL_103;
        }

        if (v42 == 285212736)
        {
          v43 = 448;
          goto LABEL_103;
        }
      }
    }

    else if (v42 <= 536870927)
    {
      if (v42 == 536870916)
      {
        v43 = 0;
        goto LABEL_103;
      }

      if (v42 == 536870920)
      {
        v43 = 32;
        goto LABEL_103;
      }
    }

    else
    {
      switch(v42)
      {
        case 536870928:
          v43 = 64;
          goto LABEL_103;
        case 536870944:
          v43 = 96;
          goto LABEL_103;
        case 536870976:
          v43 = 128;
          goto LABEL_103;
      }
    }
  }

  else if (v42 <= 31)
  {
    if (v42 > 7)
    {
      if (v42 == 8)
      {
        v43 = 192;
        goto LABEL_103;
      }

      if (v42 == 16)
      {
        v43 = 224;
        goto LABEL_103;
      }
    }

    else
    {
      if (v42 == -1879048176)
      {
        v43 = 384;
        goto LABEL_103;
      }

      if (v42 == 4)
      {
        v43 = 160;
        goto LABEL_103;
      }
    }
  }

  else if (v42 <= 268435463)
  {
    if (v42 == 32)
    {
      v43 = 256;
      goto LABEL_103;
    }

    if (v42 == 64)
    {
      v43 = 288;
      goto LABEL_103;
    }
  }

  else
  {
    switch(v42)
    {
      case 268435464:
        v43 = 480;
        goto LABEL_103;
      case 268435472:
        v43 = 320;
        goto LABEL_103;
      case 268435488:
        v43 = 352;
        goto LABEL_103;
    }
  }

  v43 = 576;
LABEL_103:
  v44 = *&v78[v41];
  v73 = *(a4 + 96);
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 0x4000;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v44 != 335544328)
          {
            goto LABEL_184;
          }

          v45 = 17408;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }
        }
      }

      else if (v44 == 285212704)
      {
        v45 = 13312;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if (v44 != 285212736)
        {
          goto LABEL_184;
        }

        v45 = 14336;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          goto LABEL_185;
        }

        goto LABEL_163;
      }

      if (v44 != 536870920)
      {
        goto LABEL_184;
      }

      v45 = 1024;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 2048;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        case 536870944:
          v45 = 3072;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        case 536870976:
          v45 = 4096;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        default:
          goto LABEL_184;
      }
    }
  }

  else if (v44 <= 31)
  {
    if (v44 > 7)
    {
      if (v44 == 8)
      {
        v45 = 6144;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if (v44 != 16)
        {
          goto LABEL_184;
        }

        v45 = 7168;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }
    }

    else if (v44 == -1879048176)
    {
      v45 = 12288;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v44 != 4)
      {
        goto LABEL_184;
      }

      v45 = 5120;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 0x2000;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v44 != 64)
      {
        goto LABEL_184;
      }

      v45 = 9216;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 15360;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }

        break;
      case 268435472:
        v45 = 10240;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }

        break;
      case 268435488:
        v45 = 11264;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          break;
        }

LABEL_163:
        if (v46 <= 31)
        {
          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v47 = 196608;
              goto LABEL_207;
            }

            if (v46 == 16)
            {
              v47 = 229376;
              goto LABEL_207;
            }
          }

          else
          {
            if (v46 == -1879048176)
            {
              v47 = 393216;
              goto LABEL_207;
            }

            if (v46 == 4)
            {
              v47 = 163840;
              goto LABEL_207;
            }
          }
        }

        else if (v46 <= 268435463)
        {
          if (v46 == 32)
          {
            v47 = 0x40000;
            goto LABEL_207;
          }

          if (v46 == 64)
          {
            v47 = 294912;
            goto LABEL_207;
          }
        }

        else
        {
          switch(v46)
          {
            case 268435464:
              v47 = 491520;
              goto LABEL_207;
            case 268435472:
              v47 = 327680;
              goto LABEL_207;
            case 268435488:
              v47 = 360448;
              goto LABEL_207;
          }
        }

        goto LABEL_206;
      default:
LABEL_184:
        v45 = 18432;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          break;
        }

        goto LABEL_163;
    }
  }

LABEL_185:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v47 = 0x80000;
        goto LABEL_207;
      }

      if (v46 == 335544328)
      {
        v47 = 557056;
        goto LABEL_207;
      }
    }

    else
    {
      if (v46 == 285212704)
      {
        v47 = 425984;
        goto LABEL_207;
      }

      if (v46 == 285212736)
      {
        v47 = 458752;
        goto LABEL_207;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v47 = 0;
      goto LABEL_207;
    }

    if (v46 == 536870920)
    {
      v47 = 0x8000;
      goto LABEL_207;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v47 = 0x10000;
        goto LABEL_207;
      case 536870944:
        v47 = 98304;
        goto LABEL_207;
      case 536870976:
        v47 = 0x20000;
        goto LABEL_207;
    }
  }

LABEL_206:
  v47 = 589824;
LABEL_207:
  v48 = *&v14[v41];
  v71 = v40;
  v72 = v7;
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      v49 = v14;
      if (v48 > 301989895)
      {
        v50 = a2;
        if (v48 == 301989896)
        {
          v52 = v78;
          v53 = 16;
          v51 = a5;
          goto LABEL_251;
        }

        v51 = a5;
        if (v48 == 335544328)
        {
          v52 = v78;
          v53 = 17;
          goto LABEL_251;
        }
      }

      else
      {
        v50 = a2;
        if (v48 == 285212704)
        {
          v52 = v78;
          v53 = 13;
          v51 = a5;
          goto LABEL_251;
        }

        v51 = a5;
        if (v48 == 285212736)
        {
          v52 = v78;
          v53 = 14;
          goto LABEL_251;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      v49 = v14;
      v50 = a2;
      if (v48 == 536870916)
      {
        v52 = v78;
        v53 = 0;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 536870920)
      {
        v52 = v78;
        v53 = 1;
        goto LABEL_251;
      }
    }

    else
    {
      v49 = v14;
      if (v48 == 536870928)
      {
        v50 = a2;
        v52 = v78;
        v53 = 2;
        v51 = a5;
        goto LABEL_251;
      }

      v50 = a2;
      if (v48 == 536870944)
      {
        v52 = v78;
        v53 = 3;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 536870976)
      {
        v52 = v78;
        v53 = 4;
        goto LABEL_251;
      }
    }
  }

  else if (v48 <= 31)
  {
    v49 = v14;
    if (v48 > 7)
    {
      v50 = a2;
      v51 = a5;
      if (v48 == 8)
      {
        v52 = v78;
        v53 = 6;
        goto LABEL_251;
      }

      if (v48 == 16)
      {
        v52 = v78;
        v53 = 7;
        goto LABEL_251;
      }
    }

    else
    {
      v50 = a2;
      if (v48 == -1879048176)
      {
        v52 = v78;
        v53 = 12;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 4)
      {
        v52 = v78;
        v53 = 5;
        goto LABEL_251;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    v49 = v14;
    v50 = a2;
    v51 = a5;
    if (v48 == 32)
    {
      v52 = v78;
      v53 = 8;
      goto LABEL_251;
    }

    if (v48 == 64)
    {
      v52 = v78;
      v53 = 9;
      goto LABEL_251;
    }
  }

  else
  {
    v49 = v14;
    if (v48 == 268435464)
    {
      v50 = a2;
      v52 = v78;
      v53 = 15;
      v51 = a5;
      goto LABEL_251;
    }

    v50 = a2;
    if (v48 == 268435472)
    {
      v52 = v78;
      v53 = 10;
      v51 = a5;
      goto LABEL_251;
    }

    v51 = a5;
    if (v48 == 268435488)
    {
      v52 = v78;
      v53 = 11;
      goto LABEL_251;
    }
  }

  v52 = v78;
  v53 = 18;
LABEL_251:
  v54 = 0x2000000;
  v55 = *(a1 + 144);
  if (!v51)
  {
    v54 = 0;
  }

  *&v56 = -1;
  *(&v56 + 1) = -1;
  v97 = v56;
  v98 = v56;
  v94 = -1;
  v96 = v56;
  v93 = v56;
  v95 = v43 | v45 | v47 | v54 | v53 | (v55 << 16);
  v57 = &v49[*v15];
  v58 = *v57;
  v59 = *(v57 + 1);
  v81 = *v57;
  v82 = v59;
  v83 = v6;
  v84 = v69;
  v85 = v9;
  v86 = v31;
  v87 = v11;
  v88 = v70;
  v89 = v8;
  v90 = v12;
  v91 = v10;
  v92 = v55;
  v60 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v62 = [ComputeState threadExecutionWidth];
  if (v62 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62;
  }

  v64 = [ComputeState maxTotalThreadsPerThreadgroup];
  v65 = 256;
  if (v64 < 0x100)
  {
    v65 = v64;
  }

  v66 = v65 > 2 * v63;
  v67 = v65 / v63;
  if (v66)
  {
    v60 = v67;
  }

  [v50 setComputePipelineState:ComputeState];
  [v50 setBuffer:objc_msgSend(v72 offset:"buffer") atIndex:{v39, 0}];
  [v50 setBuffer:objc_msgSend(v52 offset:"buffer") atIndex:{v71, 1}];
  [v50 setBuffer:objc_msgSend(v13 offset:"buffer") atIndex:{v73, 2}];
  [v50 setBuffer:objc_msgSend(v49 offset:"buffer") atIndex:{v74, 3}];
  objc_msgSend_setBytes_length_atIndex_(v50);
  v80[0] = (v58 + v63 - 1) / v63;
  v80[1] = (v59 + v60 - 1) / v60;
  v80[2] = 1;
  v79[0] = v63;
  v79[1] = v60;
  v79[2] = 1;
  [v50 dispatchThreadgroups:v80 threadsPerThreadgroup:v79];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t encode_qmm_generic(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5)
{
  v8 = a5[28].i32[0];
  if (a5[29].i8[8] == 1)
  {
    if (v8 == -1879048176 || v8 == 268435472 || v8 == 268435488)
    {
      goto LABEL_9;
    }
  }

  else if (v8 == -1879048176 || v8 == 268435472 || v8 == 268435488)
  {
LABEL_9:
    v9 = a5[29].i64[0] | (a5[28].i64[1] << 8) | ((a5[1].i64[1] == 0) << 16);
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    v27 = v10;
    v28 = v10;
    v25 = v10;
    v26 = v10;
    v24 = v10;
    v28.i64[0] = [*(a3 + 16) count] | ((*(a3 + 112) != 0) << 8) | 0x10000;
    v25.i64[0] = v9;
    v19 = 0u;
    v18 = 0u;
    v17 = *(a3 + 232);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    MPSLibrary::ReleaseMPSKey();
    if (PipelineStateForMPSKey)
    {
      goto LABEL_10;
    }
  }

  PipelineStateForMPSKey = 0;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
    PipelineStateForMPSKey = 0;
  }

LABEL_10:
  v12 = a5[26].i64[0];
  v13 = a5[26].i64[1];
  v14 = vuzp1q_s32(a5[24], a5[25]);
  v24 = vuzp1q_s32(a5[22], a5[23]);
  v25 = v14;
  v26.i32[0] = v13;
  v20 = a5[27];
  *(v26.i64 + 4) = vmovn_s64(v20);
  [a1 setComputePipelineState:{PipelineStateForMPSKey, v17, v18, v19}];
  [a1 setBuffer:objc_msgSend(a5->i64[0] offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(a5->i64[0], 0, 4, 0, 0) + a5[6].i64[0], 29}];
  [a1 setBuffer:objc_msgSend(a5->i64[1] offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(a5->i64[1], 0, 4, 0, 0) + a5[11].i64[0], 28}];
  [a1 setBuffer:objc_msgSend(a5[1].i64[0] offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(a5[1].i64[0], 0, 4, 0, 0) + a5[16].i64[0], 27}];
  v15 = a5[1].i64[1];
  if (v15)
  {
    [a1 setBuffer:objc_msgSend(v15 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(a5[1].i64[1], 0, 4, 0, 0) + a5[21].i64[0], 26}];
  }

  objc_msgSend_setBytes_length_atIndex_(a1);
  MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
  v23[0] = (v20.i64[0] + 63) >> 6;
  v23[1] = (v13 + 63) >> 6;
  v23[2] = v12;
  v21 = xmmword_239B14630;
  v22 = 2;
  [a1 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

unint64_t MPSGetLinearOffsetBytes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (a1 + *MEMORY[0x277CD7418]);
  v90 = v10[2];
  v91 = v10[3];
  v88 = *v10;
  v89 = v10[1];
  v11 = (a1 + *MEMORY[0x277CD7410]);
  v86 = v11[2];
  v87 = v11[3];
  v84 = *v11;
  v85 = v11[1];
  v12 = MEMORY[0x277CD73D8];
  v83 = *(a1 + *MEMORY[0x277CD73D8]);
  makeStrideBytes();
  v13 = (a1 + *MEMORY[0x277CD73D0]);
  v15 = v13[2];
  v14 = v13[3];
  v17 = *v13;
  v16 = v13[1];
  v18 = MEMORY[0x277CD73C8];
  if (a3)
  {
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20 = vceqq_s32(v17, v19);
    v21.i64[0] = v20.i32[0];
    v21.i64[1] = v20.i32[1];
    v22 = v21;
    v23 = vceqq_s32(v16, v19);
    v21.i64[0] = v23.i32[0];
    v21.i64[1] = v23.i32[1];
    v24 = v21;
    v25 = vceqq_s32(v15, v19);
    v21.i64[0] = v25.i32[0];
    v21.i64[1] = v25.i32[1];
    v26 = v21;
    v27 = vceqq_s32(v14, v19);
    v21.i64[0] = v27.i32[0];
    v21.i64[1] = v27.i32[1];
    v28 = v21;
    v21.i64[0] = v20.i32[2];
    v21.i64[1] = v20.i32[3];
    v29 = v21;
    v21.i64[0] = v23.i32[2];
    v21.i64[1] = v23.i32[3];
    v30 = v21;
    v21.i64[0] = v25.i32[2];
    v21.i64[1] = v25.i32[3];
    v31 = v21;
    v21.i64[0] = v27.i32[2];
    v21.i64[1] = v27.i32[3];
    v32 = vbicq_s8(v127[15], v21);
    v33 = vbicq_s8(v127[13], v31);
    v34 = vbicq_s8(v127[11], v30);
    v35 = vbicq_s8(v127[9], v29);
    v36 = vbicq_s8(v127[14], v28);
    v37 = vbicq_s8(v127[12], v26);
    v38 = vbicq_s8(v127[10], v24);
    v39 = vbicq_s8(v127[8], v22);
    v40 = *(a1 + *v12);
    v41 = *(a1 + *MEMORY[0x277CD73C8]);
    if ((v41 & 0xFFF8) != 0)
    {
      v42 = 0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = v41 >> 3;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v118 = v40;
        v52 = *(&v118 | (a2 + v42) & 0xF) & 0xF;
        v127[0] = v39;
        v127[1] = v35;
        v127[2] = v38;
        v127[3] = v34;
        v127[4] = v37;
        v127[5] = v33;
        v127[6] = v36;
        v127[7] = v32;
        v53 = *(v127 + v52);
        v119 = v43;
        v120 = v44;
        v121 = v46;
        v122 = v47;
        v123 = v48;
        v124 = v49;
        v125 = v50;
        v126 = v51;
        *(&v119 + (v42 & 0xF)) = v53 / v45;
        v51 = v126;
        v50 = v125;
        v49 = v124;
        v48 = v123;
        v47 = v122;
        v46 = v121;
        v44 = v120;
        v43 = v119;
        ++v42;
      }

      while (a3 != v42);
    }

    else
    {
      v54 = 0;
      v43 = 0uLL;
      v44 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v108 = v40;
        v55 = *(&v108 | (a2 + v54) & 0xF);
        v117[0] = v39;
        v117[1] = v35;
        v117[2] = v38;
        v117[3] = v34;
        v117[4] = v37;
        v117[5] = v33;
        v117[6] = v36;
        v117[7] = v32;
        v56 = *(v117 + (v55 & 0xF));
        v109 = v43;
        v110 = v44;
        v111 = v46;
        v112 = v47;
        v113 = v48;
        v114 = v49;
        v115 = v50;
        v116 = v51;
        *(&v109 + (v54 & 0xF)) = v56;
        v50 = v115;
        v51 = v116;
        v48 = v113;
        v49 = v114;
        v46 = v111;
        v47 = v112;
        v43 = v109;
        v44 = v110;
        ++v54;
      }

      while (a3 != v54);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  if (a5 && *(a1 + *v18) == 4)
  {
    if (!a3)
    {
      return 0;
    }

    v57 = 0;
    v58 = (a1 + *MEMORY[0x277CD7428]);
    v60 = v58[6];
    v59 = v58[7];
    v62 = v58[4];
    v61 = v58[5];
    v64 = v58[2];
    v63 = v58[3];
    v66 = *v58;
    v65 = v58[1];
    v67 = *(a1 + *v12);
    do
    {
      v97 = v67;
      v107[0] = v66;
      v107[1] = v65;
      v107[2] = v64;
      v107[3] = v63;
      v107[4] = v62;
      v107[5] = v61;
      v107[6] = v60;
      v107[7] = v59;
      v68 = *(&v97 | (a2 + v57) & 0xF) & 0xF;
      v69 = *(v107 + v68);
      v106[0] = v17;
      v106[1] = v16;
      v106[2] = v15;
      v106[3] = v14;
      if (*(v106 + v68) == 1)
      {
        v70 = 0;
      }

      else
      {
        v70 = v69;
      }

      v98 = v43;
      v99 = v44;
      v100 = v46;
      v101 = v47;
      v102 = v48;
      v103 = v49;
      v104 = v50;
      v105 = v51;
      *(&v98 + (v57 & 0xF)) = v70;
      v50 = v104;
      v51 = v105;
      v48 = v102;
      v49 = v103;
      v46 = v100;
      v47 = v101;
      v43 = v98;
      v44 = v99;
      ++v57;
    }

    while (a3 != v57);
    goto LABEL_19;
  }

  if (a3)
  {
LABEL_19:
    v71 = 0;
    result = 0;
    v73 = (a4 + 16);
    do
    {
      v95 = v83;
      v81 = *(&v95 | (a2 + v71) & 0xF);
      v96[0] = v88;
      v96[1] = v89;
      v96[2] = v90;
      v96[3] = v91;
      v82 = *(v96 + (v81 & 0xF));
      if (a4)
      {
        v94[0] = v84;
        v94[1] = v85;
        v94[2] = v86;
        v94[3] = v87;
        v74 = *(v94 + (v81 & 0xF));
        *v73 = v74;
        v93[0] = v43;
        v93[1] = v44;
        v93[2] = v46;
        v93[3] = v47;
        v93[4] = v48;
        v93[5] = v49;
        v93[6] = v50;
        v93[7] = v51;
        v75 = *(v93 + (v71 & 0xF));
        v76 = v74 == 1;
        if (v74 == 1)
        {
          v77 = 0;
        }

        else
        {
          v77 = *(v93 + (v71 & 0xF));
        }

        v73[4] = v77;
        if (v76)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75;
        }

        *(a4 + 32 + 8 * v71 + 16) = v78;
        *(v73 - 4) = v82;
      }

      else
      {
        v92[0] = v43;
        v92[1] = v44;
        v92[2] = v46;
        v92[3] = v47;
        v92[4] = v48;
        v92[5] = v49;
        v92[6] = v50;
        v92[7] = v51;
        v75 = *(v92 + (v71 & 0xF));
      }

      if (*(a1 + *v18) == 4)
      {
        v79 = 1;
      }

      else
      {
        v79 = *(a1 + *v18) >> 3;
      }

      if (v81)
      {
        v80 = 0;
      }

      else
      {
        v80 = *(a1 + *v18) == 4;
      }

      result += v75 * v79 * (v82 >> (v80 & (a5 ^ 1)));
      ++v71;
      ++v73;
    }

    while (a3 != v71);
    goto LABEL_37;
  }

  result = 0;
LABEL_37:
  if (a5)
  {
    result >>= *(a1 + *v18) == 4;
  }

  return result;
}

void MPSSetNDArraysOnComputeEncoder(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v7 = *(a2 + 112);
  v8 = *(a2 + 232);
  if (v8)
  {
    v9 = *([v8 graph] + 80);
    v193 = v9 != 1;
    v10 = v9 == 1 && *(a2 + 208) != 0;
    v11 = *([*(a2 + 232) graph] + 72) + v10;
  }

  else
  {
    v12 = *(a2 + 208);
    v13 = [*(a2 + 16) count];
    v193 = 0;
    if (v7)
    {
      v11 = v13 + 1;
    }

    else
    {
      v11 = v13;
    }

    if (v12)
    {
      ++v11;
    }
  }

  v14 = 5 * v11;
  v15 = 16 * v14;
  v16 = malloc_type_calloc(4 * (v14 & 0xFFFFFFFFFFFFFFFLL) + 32, 4uLL, 0x100004052888210uLL);
  v17 = &v16[v15];
  v18 = *(a2 + 232);
  v195 = v7;
  if (v18)
  {
    v19 = [v18 numberOfInputTensors];
    v20 = [*(a2 + 232) numberOfOutputTensors];
    if (v19)
    {
      v21 = 0;
      v22 = v17 + 8;
      do
      {
        v23 = [*(a2 + 232) inputTensorAtIndex:v21];
        *(v22 - 2) = BaseTensor::GetDimensionSize(v23);
        *(v22 - 1) = BaseTensor::GetDimensionSize(v23);
        *v22 = BaseTensor::GetDimensionSize(v23);
        v22[1] = BaseTensor::GetDimensionSize(v23);
        ++v21;
        v22 += 4;
      }

      while (v19 != v21);
    }

    if (v20)
    {
      v24 = 0;
      v25 = v17 + 108;
      do
      {
        v26 = [*(a2 + 232) outputTensorAtIndex:v24];
        *(v25 - 3) = BaseTensor::GetDimensionSize(v26);
        *(v25 - 2) = BaseTensor::GetDimensionSize(v26);
        *(v25 - 1) = BaseTensor::GetDimensionSize(v26);
        *v25 = BaseTensor::GetDimensionSize(v26);
        v25 += 4;
        ++v24;
      }

      while (v20 != v24);
    }

    v27 = *(a2 + 232);
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_28:
    v28 = 0;
    v201 = v16;
    v29 = 0;
    if (![*(a2 + 16) count])
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v30 = [*(a2 + 16) count];
  if (v7)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = MEMORY[0x277CD7438];
  if (v31)
  {
    v33 = 0;
    v34 = v17 + 8;
    do
    {
      v35 = [objc_msgSend(*(a2 + 16) objectAtIndexedSubscript:{v33), "descriptor"}];
      [v35 sliceRangeForDimension:*&v35[*v32]];
      *(v34 - 2) = v36;
      [v35 sliceRangeForDimension:v35[*v32 + 1]];
      *(v34 - 1) = v37;
      [v35 sliceRangeForDimension:v35[*v32 + 2]];
      *v34 = v38;
      [v35 sliceRangeForDimension:v35[*v32 + 3]];
      v34[1] = v39;
      ++v33;
      v34 += 4;
    }

    while (v31 != v33);
  }

  v40 = [*(a2 + 208) descriptor];
  [v40 sliceRangeForDimension:*&v40[*v32]];
  *(v17 + 24) = v41;
  [v40 sliceRangeForDimension:v40[*v32 + 1]];
  *(v17 + 25) = v42;
  [v40 sliceRangeForDimension:v40[*v32 + 2]];
  *(v17 + 26) = v43;
  [v40 sliceRangeForDimension:v40[*v32 + 3]];
  *(v17 + 27) = v44;
  v27 = *(a2 + 232);
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_19:
  v28 = [v27 graph];
  v201 = v16;
  v29 = 0;
  if ([*(a2 + 16) count])
  {
LABEL_29:
    v45 = 8;
    do
    {
      v52 = [*(a2 + 16) objectAtIndexedSubscript:v29];
      v53 = v52;
      if (v28)
      {
        v54 = **(v28 + 64);
        if (v29 >= (*(*(v28 + 64) + 8) - v54) >> 3)
        {
          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        v55 = *(v54 + 8 * v29);
        v56 = *(v55 + 96);
        v57 = *(v55 + 76);
        if (v56 == 2)
        {
          if ((a4 & 1) == 0)
          {
            [a1 setTexture:v52 atIndex:v57 + 1];
          }

          goto LABEL_32;
        }

        if (v56 != 1)
        {
          abort();
        }

        v58 = *(*(a2 + 8) + 8 * v45);
        v59 = MPSGetLinearOffsetBytes(v52, 0, a3, &v201[80 * v57], a5);
        v48 = [v53 buffer];
        v49 = v59 + v58;
        v50 = a1;
        v51 = v57;
      }

      else
      {
        v46 = *(*(a2 + 8) + 8 * v45);
        v47 = MPSGetLinearOffsetBytes(v52, 0, a3, v16, a5);
        v48 = [v53 buffer];
        v49 = v47 + v46;
        v50 = a1;
        v51 = v29;
      }

      [v50 setBuffer:v48 offset:v49 atIndex:v51];
LABEL_32:
      ++v29;
      v45 += 10;
      v16 += 80;
    }

    while (v29 < [*(a2 + 16) count]);
  }

LABEL_40:
  if (!v195)
  {
    v67 = v201;
    v107 = *(a2 + 208);
    if (!v107)
    {
      goto LABEL_78;
    }

    goto LABEL_50;
  }

  v60 = *(a2 + 112);
  v61 = *(a2 + 96);
  v62 = v29 - *(v28 + 76);
  v63 = &v60[*MEMORY[0x277CD7418]];
  v203 = *(v63 + 3);
  v199 = *(v63 + 2);
  v64 = *v63;
  v196 = *(v63 + 1);
  v65 = &v60[*MEMORY[0x277CD7410]];
  v189 = *(v65 + 3);
  v191 = v64;
  v185 = *(v65 + 1);
  v187 = *(v65 + 2);
  v183 = *v65;
  v66 = MEMORY[0x277CD73D8];
  v182 = *&v60[*MEMORY[0x277CD73D8]];
  makeStrideBytes();
  v67 = v201;
  if (a3)
  {
    v68 = &v201[80 * v62];
    v69 = &v60[*MEMORY[0x277CD73D0]];
    v70.i64[0] = 0x100000001;
    v70.i64[1] = 0x100000001;
    v71 = vceqq_s32(*v69, v70);
    v72.i64[0] = v71.i32[0];
    v72.i64[1] = v71.i32[1];
    v73 = v72;
    v74 = vceqq_s32(v69[1], v70);
    v72.i64[0] = v74.i32[0];
    v72.i64[1] = v74.i32[1];
    v75 = v72;
    v76 = vceqq_s32(v69[2], v70);
    v72.i64[0] = v76.i32[0];
    v72.i64[1] = v76.i32[1];
    v77 = v72;
    v78 = vceqq_s32(v69[3], v70);
    v72.i64[0] = v78.i32[0];
    v72.i64[1] = v78.i32[1];
    v79 = v72;
    v72.i64[0] = v71.i32[2];
    v72.i64[1] = v71.i32[3];
    v80 = v72;
    v72.i64[0] = v74.i32[2];
    v72.i64[1] = v74.i32[3];
    v81 = v72;
    v72.i64[0] = v76.i32[2];
    v72.i64[1] = v76.i32[3];
    v82 = v72;
    v72.i64[0] = v78.i32[2];
    v72.i64[1] = v78.i32[3];
    v83 = vbicq_s8(v263, v72);
    v84 = vbicq_s8(v261, v82);
    v85 = vbicq_s8(v259, v81);
    v86 = vbicq_s8(v257, v80);
    v87 = vbicq_s8(v262, v79);
    v88 = vbicq_s8(v260, v77);
    v89 = vbicq_s8(v258, v75);
    v90 = vbicq_s8(v256, v73);
    v91 = *&v60[*v66];
    v92 = MEMORY[0x277CD73C8];
    v93 = *MEMORY[0x277CD73C8];
    v94 = *&v60[v93];
    if ((v94 & 0xFFF8) != 0)
    {
      v95 = 0;
      v96 = 0uLL;
      v97 = 0uLL;
      v98 = v94 >> 3;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      do
      {
        v246 = v91;
        v105 = *(&v246 | v95 & 0xF) & 0xF;
        v255[0] = v90;
        v255[1] = v86;
        v255[2] = v89;
        v255[3] = v85;
        v255[4] = v88;
        v255[5] = v84;
        v255[6] = v87;
        v255[7] = v83;
        v106 = *(v255 + v105);
        v247 = v96;
        v248 = v97;
        v249 = v99;
        v250 = v100;
        v251 = v101;
        v252 = v102;
        v253 = v103;
        v254 = v104;
        *(&v247 + (v95 & 0xF)) = v106 / v98;
        v104 = v254;
        v103 = v253;
        v102 = v252;
        v101 = v251;
        v100 = v250;
        v99 = v249;
        v97 = v248;
        v96 = v247;
        ++v95;
      }

      while (a3 != v95);
    }

    else
    {
      v153 = 0;
      v96 = 0uLL;
      v97 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      do
      {
        v236 = v91;
        v154 = *(&v236 | v153 & 0xF) & 0xF;
        v245[0] = v90;
        v245[1] = v86;
        v245[2] = v89;
        v245[3] = v85;
        v245[4] = v88;
        v245[5] = v84;
        v245[6] = v87;
        v245[7] = v83;
        v155 = *(v245 + v154);
        v237 = v96;
        v238 = v97;
        v239 = v99;
        v240 = v100;
        v241 = v101;
        v242 = v102;
        v243 = v103;
        v244 = v104;
        *(&v237 + (v153 & 0xF)) = v155;
        v104 = v244;
        v103 = v243;
        v102 = v242;
        v101 = v241;
        v100 = v240;
        v99 = v239;
        v97 = v238;
        v96 = v237;
        ++v153;
      }

      while (a3 != v153);
    }

    v156 = 0;
    v108 = 0;
    v157 = v68 + 32;
    v158 = v68 + 48;
    do
    {
      v234 = v182;
      v165 = *(&v234 | v156 & 0xF);
      v235[0] = v191;
      v235[1] = v196;
      v235[2] = v199;
      v235[3] = v203;
      v166 = *(v235 + (v165 & 0xF));
      if (v201)
      {
        v233[0] = v183;
        v233[1] = v185;
        v233[2] = v187;
        v233[3] = v189;
        v159 = *(v233 + (v165 & 0xF));
        *(v157 - 4) = v159;
        v232[0] = v96;
        v232[1] = v97;
        v232[2] = v99;
        v232[3] = v100;
        v232[4] = v101;
        v232[5] = v102;
        v232[6] = v103;
        v232[7] = v104;
        v160 = *(v232 + (v156 & 0xF));
        v161 = v159 == 1;
        if (v159 == 1)
        {
          v162 = 0;
        }

        else
        {
          v162 = *(v232 + (v156 & 0xF));
        }

        *v157 = v162;
        if (v161)
        {
          v93 = 0;
        }

        else
        {
          v93 = v160;
        }

        *&v158[8 * v156] = v93;
        *(v157 - 8) = v166;
        LODWORD(v93) = *v92;
      }

      else
      {
        v231[0] = v96;
        v231[1] = v97;
        v231[2] = v99;
        v231[3] = v100;
        v231[4] = v101;
        v231[5] = v102;
        v231[6] = v103;
        v231[7] = v104;
        v160 = *(v231 + (v156 & 0xF));
      }

      if (*&v60[v93] == 4)
      {
        v163 = 1;
      }

      else
      {
        v163 = *&v60[v93] >> 3;
      }

      if (v165)
      {
        v164 = 0;
      }

      else
      {
        v164 = *&v60[v93] == 4;
      }

      v108 += v160 * v163 * (v166 >> v164);
      ++v156;
      ++v157;
    }

    while (a3 != v156);
  }

  else
  {
    v108 = 0;
  }

  [a1 setBuffer:objc_msgSend(v60 offset:"buffer" atIndex:{v182), v108 + v61, v62}];
  ++v29;
  v107 = *(a2 + 208);
  if (v107)
  {
LABEL_50:
    if (v193)
    {
      [a1 setTexture:v107 atIndex:0];
    }

    else
    {
      v109 = *(a2 + 192);
      v110 = v29 - *(v28 + 76);
      v111 = &v107[*MEMORY[0x277CD7418]];
      v204 = *(v111 + 3);
      v200 = *(v111 + 2);
      v194 = *v111;
      v197 = *(v111 + 1);
      v112 = &v107[*MEMORY[0x277CD7410]];
      v190 = *(v112 + 2);
      v192 = *(v112 + 3);
      v186 = *v112;
      v188 = *(v112 + 1);
      v113 = MEMORY[0x277CD73D8];
      v184 = *&v107[*MEMORY[0x277CD73D8]];
      makeStrideBytes();
      if (a3)
      {
        v114 = &v67[80 * v110];
        v115 = &v107[*MEMORY[0x277CD73D0]];
        v116.i64[0] = 0x100000001;
        v116.i64[1] = 0x100000001;
        v117 = vceqq_s32(*v115, v116);
        v118.i64[0] = v117.i32[0];
        v118.i64[1] = v117.i32[1];
        v119 = v118;
        v120 = vceqq_s32(v115[1], v116);
        v118.i64[0] = v120.i32[0];
        v118.i64[1] = v120.i32[1];
        v121 = v118;
        v122 = vceqq_s32(v115[2], v116);
        v118.i64[0] = v122.i32[0];
        v118.i64[1] = v122.i32[1];
        v123 = v118;
        v124 = vceqq_s32(v115[3], v116);
        v118.i64[0] = v124.i32[0];
        v118.i64[1] = v124.i32[1];
        v125 = v118;
        v118.i64[0] = v117.i32[2];
        v118.i64[1] = v117.i32[3];
        v126 = v118;
        v118.i64[0] = v120.i32[2];
        v118.i64[1] = v120.i32[3];
        v127 = v118;
        v118.i64[0] = v122.i32[2];
        v118.i64[1] = v122.i32[3];
        v128 = v118;
        v118.i64[0] = v124.i32[2];
        v118.i64[1] = v124.i32[3];
        v129 = vbicq_s8(v263, v118);
        v130 = vbicq_s8(v261, v128);
        v131 = vbicq_s8(v259, v127);
        v132 = vbicq_s8(v257, v126);
        v133 = vbicq_s8(v262, v125);
        v134 = vbicq_s8(v260, v123);
        v135 = vbicq_s8(v258, v121);
        v136 = vbicq_s8(v256, v119);
        v137 = *&v107[*v113];
        v138 = MEMORY[0x277CD73C8];
        v139 = *MEMORY[0x277CD73C8];
        v140 = *&v107[v139];
        if ((v140 & 0xFFF8) != 0)
        {
          v141 = 0;
          v142 = 0uLL;
          v143 = 0uLL;
          v144 = v140 >> 3;
          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
          do
          {
            v221 = v137;
            v151 = *(&v221 | v141 & 0xF) & 0xF;
            v230[0] = v136;
            v230[1] = v132;
            v230[2] = v135;
            v230[3] = v131;
            v230[4] = v134;
            v230[5] = v130;
            v230[6] = v133;
            v230[7] = v129;
            v152 = *(v230 + v151);
            v222 = v142;
            v223 = v143;
            v224 = v145;
            v225 = v146;
            v226 = v147;
            v227 = v148;
            v228 = v149;
            v229 = v150;
            *(&v222 + (v141 & 0xF)) = v152 / v144;
            v149 = v228;
            v150 = v229;
            v147 = v226;
            v148 = v227;
            v145 = v224;
            v146 = v225;
            v142 = v222;
            v143 = v223;
            ++v141;
          }

          while (a3 != v141);
        }

        else
        {
          v168 = 0;
          v142 = 0uLL;
          v143 = 0uLL;
          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
          do
          {
            v211 = v137;
            v169 = *(&v211 | v168 & 0xF) & 0xF;
            v220[0] = v136;
            v220[1] = v132;
            v220[2] = v135;
            v220[3] = v131;
            v220[4] = v134;
            v220[5] = v130;
            v220[6] = v133;
            v220[7] = v129;
            v170 = *(v220 + v169);
            v212 = v142;
            v213 = v143;
            v214 = v145;
            v215 = v146;
            v216 = v147;
            v217 = v148;
            v218 = v149;
            v219 = v150;
            *(&v212 + (v168 & 0xF)) = v170;
            v149 = v218;
            v150 = v219;
            v147 = v216;
            v148 = v217;
            v145 = v214;
            v146 = v215;
            v142 = v212;
            v143 = v213;
            ++v168;
          }

          while (a3 != v168);
        }

        v171 = 0;
        v167 = 0;
        v172 = v114 + 32;
        v173 = v114 + 48;
        do
        {
          v209 = v184;
          v180 = *(&v209 | v171 & 0xF);
          v210[0] = v194;
          v210[1] = v197;
          v210[2] = v200;
          v210[3] = v204;
          v181 = *(v210 + (v180 & 0xF));
          if (v67)
          {
            v208[0] = v186;
            v208[1] = v188;
            v208[2] = v190;
            v208[3] = v192;
            v174 = *(v208 + (v180 & 0xF));
            *(v172 - 4) = v174;
            v207[0] = v142;
            v207[1] = v143;
            v207[2] = v145;
            v207[3] = v146;
            v207[4] = v147;
            v207[5] = v148;
            v207[6] = v149;
            v207[7] = v150;
            v175 = *(v207 + (v171 & 0xF));
            v176 = v174 == 1;
            if (v174 == 1)
            {
              v177 = 0;
            }

            else
            {
              v177 = *(v207 + (v171 & 0xF));
            }

            *v172 = v177;
            if (v176)
            {
              v139 = 0;
            }

            else
            {
              v139 = v175;
            }

            *&v173[8 * v171] = v139;
            *(v172 - 8) = v181;
            LODWORD(v139) = *v138;
          }

          else
          {
            v206[0] = v142;
            v206[1] = v143;
            v206[2] = v145;
            v206[3] = v146;
            v206[4] = v147;
            v206[5] = v148;
            v206[6] = v149;
            v206[7] = v150;
            v175 = *(v206 + (v171 & 0xF));
          }

          if (*&v107[v139] == 4)
          {
            v178 = 1;
          }

          else
          {
            v178 = *&v107[v139] >> 3;
          }

          if (v180)
          {
            v179 = 0;
          }

          else
          {
            v179 = *&v107[v139] == 4;
          }

          v167 += v175 * v178 * (v181 >> v179);
          ++v171;
          ++v172;
        }

        while (a3 != v171);
      }

      else
      {
        v167 = 0;
      }

      [a1 setBuffer:objc_msgSend(v107 offset:"buffer") atIndex:{v167 + v109, v110}];
    }
  }

LABEL_78:
  objc_msgSend_setBytes_length_atIndex_(a1);
  free(v67);
}

void MPSSetResourcesOnCommandEncoder(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = [a7 graph];
  if ([a3 count])
  {
    is_mul_ok([a3 count], 0x50uLL);
    operator new[]();
  }

  v17 = (*(*(v13 + 64) + 8) - **(v13 + 64)) >> 3;
  v18 = 0;
  v19 = a3;
  v20 = 0;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  v23 = v14;
  v24 = v14;
  v21 = v14;
  v22 = v14;
  v25 = 0;
  v26 = 0;
  v29 = v14;
  v30 = v14;
  v27 = v14;
  v28 = v14;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = 0;
  if (isKindOfClass)
  {
    v16 = [a6 offset];
  }

  v31 = v16;
  v32 = 0;
  v33 = a6;
  v34 = 0;
  v35 = 0;
  v36 = a7;
  MPSSetNDArraysOnComputeEncoder(a1, &v17, a8, 0, 0);
}

void CallNDArrayEncodeMultiDestination(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 16);
  v9 = *(a6 + 40);
  for (i = 0; i < [v9 count]; ++i)
  {
    [v9 objectAtIndexedSubscript:i];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }
  }

  [v9 objectAtIndexedSubscript:i];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v172 = a6;
    if (a4 < a5)
    {
      if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
      {
        v154 = *(a1 + *MEMORY[0x277CD7360]);
        if (!v154)
        {
          v155 = objc_opt_class();
          v154 = NSStringFromClass(v155);
        }

        v11 = a2;
        [a2 pushDebugGroup:v154];
      }

      else
      {
        v11 = 0;
      }

      (*(a1 + 112))(*(a1 + 104), a2, a3, v172);
      if (v11)
      {
        [v11 popDebugGroup];
      }

      return;
    }

    v12 = [v9 objectAtIndexedSubscript:i];
    v13 = (v12 + *MEMORY[0x277CD7410]);
    v201 = v13[1];
    v211 = *v13;
    v181 = v13[3];
    v191 = v13[2];
    v14 = [v9 objectAtIndexedSubscript:i];
    v15 = MEMORY[0x277CD73D8];
    v249 = *(v14 + *MEMORY[0x277CD73D8]);
    v173 = v9;
    v252[3] = v181;
    v252[2] = v191;
    v252[1] = v201;
    v252[0] = v211;
    v16 = a6;
    v17 = *(v252 + (*(&v249 | a4 & 0xF) & 0xF));
    v18 = (*(v16 + 32) + 80 * i);
    v202 = v18[1];
    v212 = *v18;
    v182 = v18[3];
    v192 = v18[2];
    v250 = *([v9 objectAtIndexedSubscript:i] + *v15);
    v251[3] = v182;
    v251[2] = v192;
    v251[1] = v202;
    v251[0] = v212;
    v19 = *(v251 + (*(&v250 | a4 & 0xF) & 0xF));
    if (v19 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v157 = v20;
    v163 = (v17 + v20 - 1) / v20;
    v165 = a4;
    if ([v9 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = v172;
      do
      {
        [v9 objectAtIndexedSubscript:v22];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = [v9 objectAtIndexedSubscript:v22];
          v25 = (v24 + *MEMORY[0x277CD7410]);
          v203 = v25[1];
          v213 = *v25;
          v183 = v25[3];
          v193 = v25[2];
          v26 = [v9 objectAtIndexedSubscript:v22];
          v27 = MEMORY[0x277CD73D8];
          v245 = *(v26 + *MEMORY[0x277CD73D8]);
          v248[3] = v183;
          v248[2] = v193;
          v248[1] = v203;
          v248[0] = v213;
          v28 = *(v248 + (*(&v245 | a4 & 0xF) & 0xF));
          v29 = (*(v172 + 32) + v21);
          v204 = v29[1];
          v214 = *v29;
          v184 = v29[3];
          v194 = v29[2];
          v246 = *([v173 objectAtIndexedSubscript:v22] + *v27);
          v247[3] = v184;
          v247[2] = v194;
          v247[1] = v204;
          v247[0] = v214;
          v30 = *(v247 + (*(&v246 | a4 & 0xF) & 0xF));
          v31 = v28 + v30;
          v9 = v173;
          v32 = (v31 - 1) / v30;
          v33 = v163;
          if (v163 <= v32)
          {
            v33 = v32;
          }

          v163 = v33;
        }

        ++v22;
        v21 += 80;
      }

      while (v22 < [v9 count]);
    }

    else
    {
      v23 = v172;
    }

    v180 = malloc_type_calloc([v8 count], 8uLL, 0x100004000313F17uLL);
    v179 = malloc_type_calloc([v8 count], 8uLL, 0x100004000313F17uLL);
    if ([v8 count])
    {
      v34 = 0;
      v35 = 64;
      v36 = MEMORY[0x277CD73D8];
      do
      {
        v180[v34] = *(*(v23 + 8) + v35);
        v44 = [v8 objectAtIndexedSubscript:v34];
        v45 = (v44 + *MEMORY[0x277CD7418]);
        v205 = v45[2];
        v215 = v45[3];
        v185 = *v45;
        v195 = v45[1];
        v176 = *(v44 + *v36);
        makeStrideBytes();
        v46 = (v44 + *MEMORY[0x277CD73D0]);
        v47.i64[0] = 0x100000001;
        v47.i64[1] = 0x100000001;
        v48 = vceqq_s32(*v46, v47);
        v49.i64[0] = v48.i32[0];
        v49.i64[1] = v48.i32[1];
        v50 = v49;
        v51 = vceqq_s32(v46[1], v47);
        v49.i64[0] = v51.i32[0];
        v49.i64[1] = v51.i32[1];
        v52 = v49;
        v53 = vceqq_s32(v46[2], v47);
        v49.i64[0] = v53.i32[0];
        v49.i64[1] = v53.i32[1];
        v54 = v49;
        v55 = vceqq_s32(v46[3], v47);
        v49.i64[0] = v55.i32[0];
        v49.i64[1] = v55.i32[1];
        v56 = v49;
        v49.i64[0] = v48.i32[2];
        v49.i64[1] = v48.i32[3];
        v57 = v49;
        v49.i64[0] = v51.i32[2];
        v49.i64[1] = v51.i32[3];
        v58 = v49;
        v49.i64[0] = v53.i32[2];
        v49.i64[1] = v53.i32[3];
        v59 = v49;
        v49.i64[0] = v55.i32[2];
        v49.i64[1] = v55.i32[3];
        v60 = vbicq_s8(v260, v49);
        v61 = vbicq_s8(v258, v59);
        v62 = vbicq_s8(v256, v58);
        v63 = vbicq_s8(v254, v57);
        v64 = vbicq_s8(v259, v56);
        v65 = vbicq_s8(v257, v54);
        v66 = vbicq_s8(v255, v52);
        v67 = vbicq_s8(v253, v50);
        v42 = *MEMORY[0x277CD73C8];
        v68 = *(v44 + v42);
        if ((v68 & 0xFFF8) != 0)
        {
          v243 = *(v44 + *v36);
          v37 = *(&v243 | v165 & 0xF) & 0xF;
          v244[0] = v67;
          v244[1] = v63;
          v244[2] = v66;
          v244[3] = v62;
          v244[4] = v65;
          v244[5] = v61;
          v244[6] = v64;
          v244[7] = v60;
          v38 = *(v244 + v37) / (v68 >> 3);
        }

        else
        {
          v241 = *(v44 + *v36);
          v69 = *(&v241 | v165 & 0xF) & 0xF;
          v242[0] = v67;
          v242[1] = v63;
          v242[2] = v66;
          v242[3] = v62;
          v242[4] = v65;
          v242[5] = v61;
          v242[6] = v64;
          v242[7] = v60;
          v38 = *(v242 + v69);
        }

        v39 = *(v44 + v42);
        v40 = v39 == 4;
        v41 = v40;
        LODWORD(v42) = v39 >> 3;
        if (v40)
        {
          v42 = 1;
        }

        else
        {
          v42 = v42;
        }

        v239 = v176;
        v43 = *(&v239 | v165 & 0xF);
        v240[0] = v185;
        v240[1] = v195;
        v240[2] = v205;
        v240[3] = v215;
        if (v43)
        {
          v41 = 0;
        }

        v179[v34++] = v38 * v42 * (*(v240 + (v43 & 0xF)) >> v41);
        v35 += 80;
      }

      while (v34 < [v8 count]);
    }

    v171 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    v170 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    if ([v9 count])
    {
      v70 = 0;
      v71 = 64;
      v72 = MEMORY[0x277CD73D8];
      do
      {
        [v9 objectAtIndexedSubscript:v70];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v171[v70] = *(*(v23 + 32) + v71);
          v79 = [v9 objectAtIndexedSubscript:v70];
          v80 = (v79 + *MEMORY[0x277CD7418]);
          v206 = v80[2];
          v216 = v80[3];
          v186 = *v80;
          v196 = v80[1];
          v177 = *(v79 + *v72);
          makeStrideBytes();
          v81 = (v79 + *MEMORY[0x277CD73D0]);
          v82.i64[0] = 0x100000001;
          v82.i64[1] = 0x100000001;
          v83 = vceqq_s32(*v81, v82);
          v84.i64[0] = v83.i32[0];
          v84.i64[1] = v83.i32[1];
          v85 = v84;
          v86 = vceqq_s32(v81[1], v82);
          v84.i64[0] = v86.i32[0];
          v84.i64[1] = v86.i32[1];
          v87 = v84;
          v88 = vceqq_s32(v81[2], v82);
          v84.i64[0] = v88.i32[0];
          v84.i64[1] = v88.i32[1];
          v89 = v84;
          v90 = vceqq_s32(v81[3], v82);
          v84.i64[0] = v90.i32[0];
          v84.i64[1] = v90.i32[1];
          v91 = v84;
          v84.i64[0] = v83.i32[2];
          v84.i64[1] = v83.i32[3];
          v92 = v84;
          v84.i64[0] = v86.i32[2];
          v84.i64[1] = v86.i32[3];
          v93 = v84;
          v84.i64[0] = v88.i32[2];
          v84.i64[1] = v88.i32[3];
          v94 = v84;
          v84.i64[0] = v90.i32[2];
          v84.i64[1] = v90.i32[3];
          v95 = vbicq_s8(v260, v84);
          v96 = vbicq_s8(v258, v94);
          v97 = vbicq_s8(v256, v93);
          v98 = vbicq_s8(v254, v92);
          v99 = vbicq_s8(v259, v91);
          v100 = vbicq_s8(v257, v89);
          v101 = vbicq_s8(v255, v87);
          v102 = vbicq_s8(v253, v85);
          v77 = *MEMORY[0x277CD73C8];
          v103 = *(v79 + v77);
          if ((v103 & 0xFFF8) != 0)
          {
            v237 = *(v79 + *v72);
            v73 = *(&v237 | v165 & 0xF) & 0xF;
            v238[0] = v102;
            v238[1] = v98;
            v238[2] = v101;
            v238[3] = v97;
            v238[4] = v100;
            v238[5] = v96;
            v238[6] = v99;
            v238[7] = v95;
            v74 = *(v238 + v73) / (v103 >> 3);
          }

          else
          {
            v235 = *(v79 + *v72);
            v104 = *(&v235 | v165 & 0xF) & 0xF;
            v236[0] = v102;
            v236[1] = v98;
            v236[2] = v101;
            v236[3] = v97;
            v236[4] = v100;
            v236[5] = v96;
            v236[6] = v99;
            v236[7] = v95;
            v74 = *(v236 + v104);
          }

          v75 = *(v79 + v77);
          v40 = v75 == 4;
          v76 = v40;
          LODWORD(v77) = v75 >> 3;
          if (v40)
          {
            v77 = 1;
          }

          else
          {
            v77 = v77;
          }

          v233 = v177;
          v78 = *(&v233 | v165 & 0xF);
          v234[0] = v186;
          v234[1] = v196;
          v234[2] = v206;
          v234[3] = v216;
          if (v78)
          {
            v76 = 0;
          }

          v170[v70] = v74 * v77 * (*(v234 + (v78 & 0xF)) >> v76);
        }

        ++v70;
        v71 += 80;
      }

      while (v70 < [v9 count]);
    }

    if (v163)
    {
      v105 = 0;
      v106 = 0;
      v156 = v165 - 1;
      v169 = (&v224 | v165 & 0xF);
      v168 = (&v223 | v165 & 0xF);
      v167 = (&v222 | v165 & 0xF);
      v164 = (&v221 | v165 & 0xF);
      v178 = (&v230 | v165 & 0xF);
      v175 = (&v229 | v165 & 0xF);
      v174 = (&v228 | v165 & 0xF);
      v166 = (&v227 | v165 & 0xF);
      while (1)
      {
        v162 = v105;
        if ([v8 count])
        {
          v107 = 0;
          for (j = 0; j < [v8 count]; ++j)
          {
            v110 = [v8 objectAtIndexedSubscript:j];
            v111 = (v110 + *MEMORY[0x277CD7410]);
            v207 = v111[1];
            v217 = *v111;
            v187 = v111[3];
            v197 = v111[2];
            v112 = [v8 objectAtIndexedSubscript:j];
            v113 = MEMORY[0x277CD73D8];
            v228 = *(v112 + *MEMORY[0x277CD73D8]);
            v232[2] = v197;
            v232[3] = v187;
            v232[0] = v217;
            v232[1] = v207;
            v114 = *(v232 + (*v174 & 0xF));
            v115 = (*(v23 + 8) + v107);
            v208 = v115[1];
            v218 = *v115;
            v188 = v115[3];
            v198 = v115[2];
            v229 = *([v8 objectAtIndexedSubscript:j] + *v113);
            v231[2] = v198;
            v231[3] = v188;
            v231[0] = v218;
            v231[1] = v208;
            v116 = *(v231 + (*v175 & 0xF));
            v117 = [v8 objectAtIndexedSubscript:j];
            v230 = *([v8 objectAtIndexedSubscript:j] + *v113);
            v118 = *v178;
            if (*v178)
            {
              makeStrideBytes();
              if (v118 >= 0x10)
              {
                v119 = 0;
              }

              else
              {
                v119 = v118;
              }

              v120 = v253.i64[v119 & 0xF];
              v121 = v179[j];
              if ((v116 & 0x80000000) != 0)
              {
LABEL_59:
                v122 = [v8 objectAtIndexedSubscript:j];
                v123 = [v8 objectAtIndexedSubscript:j];
                v227 = *(v123 + *MEMORY[0x277CD73D8]);
                v124 = *v166;
                if (*v166)
                {
                  makeStrideBytes();
                  if (v124 >= 0x10)
                  {
                    v125 = 0;
                  }

                  else
                  {
                    v125 = v124;
                  }

                  v126 = v253.i64[v125 & 0xF];
                }

                else
                {
                  v126 = *(v122 + *MEMORY[0x277CD73C8]) >> 3;
                }

                v23 = v172;
                v109 = v126 * (v114 - 1);
                goto LABEL_51;
              }
            }

            else
            {
              v120 = *(v117 + *MEMORY[0x277CD73C8]) >> 3;
              v121 = v179[j];
              if ((v116 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }
            }

            v109 = 0;
LABEL_51:
            *(*(v23 + 8) + v107 + 64) = v109 + v121 + v180[j] + v120 * v116 * (v106 % v114);
            v107 += 80;
          }
        }

        v127 = v173;
        if ([v173 count])
        {
          break;
        }

LABEL_47:
        CallNDArrayEncodeMultiDestination(a1, a2, a3, v156, a5, v23);
        v105 = v162 + 1;
        v106 += v157;
        if (v162 + 1 == v163)
        {
          goto LABEL_87;
        }
      }

      v128 = 0;
      v129 = 0;
      while (1)
      {
        [v127 objectAtIndexedSubscript:v129];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_69;
        }

        v130 = [v127 objectAtIndexedSubscript:v129];
        v131 = (v130 + *MEMORY[0x277CD7410]);
        v209 = v131[1];
        v219 = *v131;
        v189 = v131[3];
        v199 = v131[2];
        v132 = [v127 objectAtIndexedSubscript:v129];
        v133 = MEMORY[0x277CD73D8];
        v222 = *(v132 + *MEMORY[0x277CD73D8]);
        v226[2] = v199;
        v226[3] = v189;
        v226[0] = v219;
        v226[1] = v209;
        v134 = *(v226 + (*v167 & 0xF));
        v135 = (*(v23 + 32) + v128);
        v210 = v135[1];
        v220 = *v135;
        v190 = v135[3];
        v200 = v135[2];
        v223 = *([v127 objectAtIndexedSubscript:v129] + *v133);
        v225[2] = v200;
        v225[3] = v190;
        v225[0] = v220;
        v225[1] = v210;
        v136 = *(v225 + (*v168 & 0xF));
        v137 = [v127 objectAtIndexedSubscript:v129];
        v224 = *([v127 objectAtIndexedSubscript:v129] + *v133);
        v138 = *v169;
        if (*v169)
        {
          makeStrideBytes();
          if (v138 >= 0x10)
          {
            v139 = 0;
          }

          else
          {
            v139 = v138;
          }

          v140 = v253.i64[v139 & 0xF];
          v141 = v170[v129];
          if ((v136 & 0x80000000) != 0)
          {
LABEL_79:
            v145 = [v173 objectAtIndexedSubscript:v129];
            v146 = [v173 objectAtIndexedSubscript:v129];
            v221 = *(v146 + *MEMORY[0x277CD73D8]);
            v147 = *v164;
            if (*v164)
            {
              makeStrideBytes();
              if (v147 >= 0x10)
              {
                v148 = 0;
              }

              else
              {
                v148 = v147;
              }

              v149 = v253.i64[v148 & 0xF];
            }

            else
            {
              v149 = *(v145 + *MEMORY[0x277CD73C8]) >> 3;
            }

            v23 = v172;
            v142 = v149 * (v134 - 1);
            v143 = v106 % v134;
            v144 = *(v172 + 32);
            if (v106 % v134 >= v106)
            {
              goto LABEL_68;
            }

LABEL_86:
            *(v144 + v128 + 72) = 1;
            goto LABEL_68;
          }
        }

        else
        {
          v140 = *(v137 + *MEMORY[0x277CD73C8]) >> 3;
          v141 = v170[v129];
          if ((v136 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }
        }

        v142 = 0;
        v143 = v106 % v134;
        v144 = *(v23 + 32);
        if (v106 % v134 < v106)
        {
          goto LABEL_86;
        }

LABEL_68:
        *(v144 + v128 + 64) = v142 + v141 + v140 * v136 * v143 + v171[v129];
        v127 = v173;
LABEL_69:
        ++v129;
        v128 += 80;
        if (v129 >= [v127 count])
        {
          goto LABEL_47;
        }
      }
    }

LABEL_87:
    if ([v8 count])
    {
      v150 = 0;
      v151 = 64;
      do
      {
        *(*(v23 + 8) + v151) = v180[v150++];
        v151 += 80;
      }

      while (v150 < [v8 count]);
    }

    if ([v173 count])
    {
      v152 = 0;
      v153 = 64;
      do
      {
        *(*(v23 + 32) + v153) = v171[v152++];
        v153 += 80;
      }

      while (v152 < [v173 count]);
    }

    free(v180);
    free(v179);
    free(v171);
    free(v170);
  }
}

void sub_239A87A10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void sub_239A88444(_Unwind_Exception *a1)
{
  MPSAutoEncoder::~MPSAutoEncoder((v1 - 208));
  ScopedMPSSignpost::~ScopedMPSSignpost((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_239A8B440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    v16 = a1;
    operator delete(v15);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_239A8C8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  (*(*v52 + 8))(v52, a2, a3, a4, a5, a6, a7, a8);
  v55 = *(v53 - 192);
  if (v55)
  {
    *(v53 - 184) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void CallNDArrayEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v6 = a1;
  if (a4 < a5)
  {
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v118 = a6;
      v119 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v119)
      {
        v120 = objc_opt_class();
        v119 = NSStringFromClass(v120);
      }

      v7 = a2;
      [a2 pushDebugGroup:v119];
      a6 = v118;
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 136))(*(v6 + 96), a2, a3, a6);
    if (v7)
    {
      [v7 popDebugGroup];
    }

    return;
  }

  v9 = a6[2];
  v10 = a6[26];
  v11 = v10 + *MEMORY[0x277CD7410];
  v12 = MEMORY[0x277CD73D8];
  v182 = *(v10 + *MEMORY[0x277CD73D8]);
  v13 = *(&v182 | a4 & 0xF);
  v133 = *(v11 + 4 * (v13 & 0xF));
  v121 = a6[24];
  v14 = (v10 + *MEMORY[0x277CD7418]);
  v155 = v14[2];
  v159 = v14[3];
  v147 = *v14;
  v151 = v14[1];
  v138 = a6;
  makeStrideBytes();
  v15 = (v10 + *MEMORY[0x277CD73D0]);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vceqq_s32(*v15, v16);
  v18.i64[0] = v17.i32[0];
  v18.i64[1] = v17.i32[1];
  v19 = v18;
  v20 = vceqq_s32(v15[1], v16);
  v18.i64[0] = v20.i32[0];
  v18.i64[1] = v20.i32[1];
  v21 = v18;
  v22 = vceqq_s32(v15[2], v16);
  v18.i64[0] = v22.i32[0];
  v18.i64[1] = v22.i32[1];
  v23 = v18;
  v24 = vceqq_s32(v15[3], v16);
  v18.i64[0] = v24.i32[0];
  v18.i64[1] = v24.i32[1];
  v25 = v18;
  v18.i64[0] = v17.i32[2];
  v18.i64[1] = v17.i32[3];
  v26 = v18;
  v18.i64[0] = v20.i32[2];
  v18.i64[1] = v20.i32[3];
  v27 = v18;
  v18.i64[0] = v22.i32[2];
  v18.i64[1] = v22.i32[3];
  v28 = v18;
  v18.i64[0] = v24.i32[2];
  v18.i64[1] = v24.i32[3];
  v29 = vbicq_s8(v190, v18);
  v30 = vbicq_s8(v188, v28);
  v31 = vbicq_s8(v186, v27);
  v32 = vbicq_s8(v184, v26);
  v33 = vbicq_s8(v189, v25);
  v34 = vbicq_s8(v187, v23);
  v35 = vbicq_s8(v185, v21);
  v36 = vbicq_s8(v183, v19);
  v37 = *(v10 + *MEMORY[0x277CD73C8]);
  v136 = a4;
  v139 = v10;
  if ((v37 & 0xFFF8) != 0)
  {
    v38 = v37 >> 3;
    v180 = *(v10 + *v12);
    v39 = *(&v180 | a4 & 0xF) & 0xF;
    v181[0] = v36;
    v181[1] = v32;
    v181[2] = v35;
    v181[3] = v31;
    v181[4] = v34;
    v181[5] = v30;
    v181[6] = v33;
    v181[7] = v29;
    v40 = *(v181 + v39) / v38;
  }

  else
  {
    LODWORD(v38) = 0;
    v178 = *(v10 + *v12);
    v41 = *(&v178 | a4 & 0xF) & 0xF;
    v179[0] = v36;
    v179[1] = v32;
    v179[2] = v35;
    v179[3] = v31;
    v179[4] = v34;
    v179[5] = v30;
    v179[6] = v33;
    v179[7] = v29;
    v40 = *(v179 + v41);
  }

  v42 = v37 == 4;
  if (v42)
  {
    v38 = 1;
  }

  else
  {
    v38 = v38;
  }

  v127 = v38;
  v129 = v40;
  v177[0] = v147;
  v177[1] = v151;
  v177[2] = v155;
  v177[3] = v159;
  v125 = *(v177 + (v13 & 0xF));
  if (v13)
  {
    v42 = 0;
  }

  v123 = v42;
  v43 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
  v146 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
  if ([v9 count])
  {
    v44 = 0;
    v45 = 64;
    v141 = (&v173 | a4 & 0xF);
    v46 = (&v171 | a4 & 0xF);
    v47 = (&v175 | a4 & 0xF);
    do
    {
      v55 = v43;
      v43[v44] = *(v138[1] + v45);
      v56 = [v9 objectAtIndexedSubscript:v44];
      v57 = (v56 + *MEMORY[0x277CD7418]);
      v156 = v57[2];
      v160 = v57[3];
      v148 = *v57;
      v152 = v57[1];
      v58 = MEMORY[0x277CD73D8];
      v143 = *(v56 + *MEMORY[0x277CD73D8]);
      makeStrideBytes();
      v59 = (v56 + *MEMORY[0x277CD73D0]);
      v60.i64[0] = 0x100000001;
      v60.i64[1] = 0x100000001;
      v61 = vceqq_s32(*v59, v60);
      v62.i64[0] = v61.i32[0];
      v62.i64[1] = v61.i32[1];
      v63 = v62;
      v64 = vceqq_s32(v59[1], v60);
      v62.i64[0] = v64.i32[0];
      v62.i64[1] = v64.i32[1];
      v65 = v62;
      v66 = vceqq_s32(v59[2], v60);
      v62.i64[0] = v66.i32[0];
      v62.i64[1] = v66.i32[1];
      v67 = v62;
      v68 = vceqq_s32(v59[3], v60);
      v62.i64[0] = v68.i32[0];
      v62.i64[1] = v68.i32[1];
      v69 = v62;
      v62.i64[0] = v61.i32[2];
      v62.i64[1] = v61.i32[3];
      v70 = v62;
      v62.i64[0] = v64.i32[2];
      v62.i64[1] = v64.i32[3];
      v71 = v62;
      v62.i64[0] = v66.i32[2];
      v62.i64[1] = v66.i32[3];
      v72 = v62;
      v62.i64[0] = v68.i32[2];
      v62.i64[1] = v68.i32[3];
      v73 = vbicq_s8(v190, v62);
      v74 = vbicq_s8(v188, v72);
      v75 = vbicq_s8(v186, v71);
      v76 = vbicq_s8(v184, v70);
      v77 = vbicq_s8(v189, v69);
      v78 = vbicq_s8(v187, v67);
      v79 = vbicq_s8(v185, v65);
      v80 = vbicq_s8(v183, v63);
      v53 = *MEMORY[0x277CD73C8];
      v81 = *(v56 + v53);
      if ((v81 & 0xFFF8) != 0)
      {
        v175 = *(v56 + *v58);
        v48 = *v47 & 0xF;
        v176[0] = v80;
        v176[1] = v76;
        v176[2] = v79;
        v176[3] = v75;
        v176[4] = v78;
        v176[5] = v74;
        v176[6] = v77;
        v176[7] = v73;
        v49 = *(v176 + v48) / (v81 >> 3);
      }

      else
      {
        v173 = *(v56 + *v58);
        v82 = *v141 & 0xF;
        v174[0] = v80;
        v174[1] = v76;
        v174[2] = v79;
        v174[3] = v75;
        v174[4] = v78;
        v174[5] = v74;
        v174[6] = v77;
        v174[7] = v73;
        v49 = *(v174 + v82);
      }

      v50 = *(v56 + v53);
      v51 = v50 == 4;
      v52 = v51;
      LODWORD(v53) = v50 >> 3;
      if (v51)
      {
        v53 = 1;
      }

      else
      {
        v53 = v53;
      }

      v171 = v143;
      v54 = *v46;
      v172[0] = v148;
      v172[1] = v152;
      v172[2] = v156;
      v172[3] = v160;
      if (v54)
      {
        v52 = 0;
      }

      v146[v44++] = v49 * v53 * (*(v172 + (v54 & 0xF)) >> v52);
      v45 += 80;
      v43 = v55;
    }

    while (v44 < [v9 count]);
  }

  v83 = v138;
  v170 = *(v139 + *MEMORY[0x277CD73D8]);
  v84 = *(&v170 | v136 & 0xF);
  v85 = *(v138 + (v84 & 0xF) + 32);
  if (*(&v170 | v136 & 0xF))
  {
    makeStrideBytes();
    if (v84 >= 0x10)
    {
      v86 = 0;
    }

    else
    {
      v86 = v84;
    }

    v87 = v183.i64[v86 & 0xF];
    v145 = v43;
    if ((v85 & 0x80000000) == 0)
    {
LABEL_30:
      v88 = 0;
      if (!v133)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v87 = *(v139 + *MEMORY[0x277CD73C8]) >> 3;
    v145 = v43;
    if ((v85 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  v89 = v6;
  v90 = v133 - 1;
  v169 = *(v139 + *MEMORY[0x277CD73D8]);
  v91 = (&v169 | v136 & 0xF);
  v92 = *v91;
  if (*v91)
  {
    makeStrideBytes();
    if (v92 >= 0x10)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    v6 = v89;
    v88 = v183.i64[v93 & 0xF] * v90;
    if (!v133)
    {
      goto LABEL_63;
    }

    goto LABEL_40;
  }

  v6 = v89;
  v88 = (*(v139 + *MEMORY[0x277CD73C8]) >> 3) * v90;
  if (v133)
  {
LABEL_40:
    v94 = 0;
    v128 = v129 * (v125 >> v123) * v127 + v122 + v88;
    v130 = v87 * v85;
    if (v85 >= 0)
    {
      v95 = v85;
    }

    else
    {
      v95 = -v85;
    }

    v124 = v95;
    v126 = v136 - 1;
    v144 = (&v166 | v136 & 0xF);
    v142 = (&v165 | v136 & 0xF);
    v140 = (&v164 | v136 & 0xF);
    v137 = (&v163 | v136 & 0xF);
    v131 = v6;
    while (![v9 count])
    {
LABEL_44:
      v83[24] = v128 + v130 * v94;
      CallNDArrayEncode(v131, a2, a3, v126, a5, v83);
      v94 += v124;
      if (v94 >= v133)
      {
        goto LABEL_63;
      }
    }

    v96 = 0;
    v97 = 0;
    while (1)
    {
      v99 = [v9 objectAtIndexedSubscript:v97];
      v100 = (v99 + *MEMORY[0x277CD7410]);
      v157 = v100[1];
      v161 = *v100;
      v149 = v100[3];
      v153 = v100[2];
      v101 = [v9 objectAtIndexedSubscript:v97];
      v102 = MEMORY[0x277CD73D8];
      v164 = *(v101 + *MEMORY[0x277CD73D8]);
      v168[2] = v153;
      v168[3] = v149;
      v168[0] = v161;
      v168[1] = v157;
      v103 = *(v168 + (*v140 & 0xF));
      v104 = (v83[1] + v96);
      v158 = v104[1];
      v162 = *v104;
      v150 = v104[3];
      v154 = v104[2];
      v165 = *([v9 objectAtIndexedSubscript:v97] + *v102);
      v167[2] = v154;
      v167[3] = v150;
      v167[0] = v162;
      v167[1] = v158;
      v105 = *(v167 + (*v142 & 0xF));
      v106 = [v9 objectAtIndexedSubscript:v97];
      v166 = *([v9 objectAtIndexedSubscript:v97] + *v102);
      v107 = *v144;
      if (*v144)
      {
        makeStrideBytes();
        if (v107 >= 0x10)
        {
          v108 = 0;
        }

        else
        {
          v108 = v107;
        }

        v109 = v183.i64[v108 & 0xF];
        v110 = v146[v97];
        if ((v105 & 0x80000000) != 0)
        {
LABEL_56:
          v111 = [v9 objectAtIndexedSubscript:v97];
          v112 = [v9 objectAtIndexedSubscript:v97];
          v163 = *(v112 + *MEMORY[0x277CD73D8]);
          v113 = *v137;
          if (*v137)
          {
            makeStrideBytes();
            if (v113 >= 0x10)
            {
              v114 = 0;
            }

            else
            {
              v114 = v113;
            }

            v115 = v183.i64[v114 & 0xF];
          }

          else
          {
            v115 = *(v111 + *MEMORY[0x277CD73C8]) >> 3;
          }

          v83 = v138;
          v98 = v115 * (v103 - 1);
          goto LABEL_48;
        }
      }

      else
      {
        v109 = *(v106 + *MEMORY[0x277CD73C8]) >> 3;
        v110 = v146[v97];
        if ((v105 & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      v98 = 0;
LABEL_48:
      *(v83[1] + v96 + 64) = v98 + v110 + v145[v97++] + v109 * v105 * (v94 % v103);
      v96 += 80;
      if (v97 >= [v9 count])
      {
        goto LABEL_44;
      }
    }
  }

LABEL_63:
  v83[24] = v122;
  if ([v9 count])
  {
    v116 = 0;
    v117 = 64;
    do
    {
      *(v83[1] + v117) = v145[v116++];
      v117 += 80;
    }

    while (v116 < [v9 count]);
  }

  free(v145);
  free(v146);
}

void sub_239A8D7CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

uint64_t CallNDArrayGradientEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  if (a4 < a5)
  {
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v166 = a6;
      v167 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v167)
      {
        v168 = objc_opt_class();
        v167 = NSStringFromClass(v168);
      }

      v9 = a2;
      [a2 pushDebugGroup:v167];
      a6 = v166;
    }

    else
    {
      v9 = 0;
    }

    (*(a1 + 104))(*(a1 + 96), a2, a3, a6, a7);
    if (v9)
    {
      [v9 popDebugGroup];
    }

    return 0;
  }

  v11 = a6[2];
  v12 = a6[14];
  v181 = a6[26];
  v13 = v12 + *MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  v15 = *MEMORY[0x277CD73D8];
  v193 = v12;
  v248 = *(v12 + v15);
  v184 = *(v13 + 4 * (*(&v248 | a4 & 0xF) & 0xF));
  v170 = a6[24];
  v16 = (v181 + *MEMORY[0x277CD7418]);
  v211 = v16[2];
  v216 = v16[3];
  v201 = *v16;
  v206 = v16[1];
  *v199 = *(v181 + v15);
  v190 = a6;
  makeStrideBytes();
  v17 = (v181 + *MEMORY[0x277CD73D0]);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vceqq_s32(*v17, v18);
  v20.i64[0] = v19.i32[0];
  v20.i64[1] = v19.i32[1];
  v21 = v20;
  v22 = vceqq_s32(v17[1], v18);
  v20.i64[0] = v22.i32[0];
  v20.i64[1] = v22.i32[1];
  v23 = v20;
  v24 = vceqq_s32(v17[2], v18);
  v20.i64[0] = v24.i32[0];
  v20.i64[1] = v24.i32[1];
  v25 = v20;
  v26 = vceqq_s32(v17[3], v18);
  v20.i64[0] = v26.i32[0];
  v20.i64[1] = v26.i32[1];
  v27 = v20;
  v20.i64[0] = v19.i32[2];
  v20.i64[1] = v19.i32[3];
  v28 = v20;
  v20.i64[0] = v22.i32[2];
  v20.i64[1] = v22.i32[3];
  v29 = v20;
  v20.i64[0] = v24.i32[2];
  v20.i64[1] = v24.i32[3];
  v30 = v20;
  v20.i64[0] = v26.i32[2];
  v20.i64[1] = v26.i32[3];
  v31 = vbicq_s8(v256, v20);
  v32 = vbicq_s8(v254, v30);
  v33 = vbicq_s8(v252, v29);
  v34 = vbicq_s8(v250, v28);
  v35 = vbicq_s8(v255, v27);
  v36 = vbicq_s8(v253, v25);
  v37 = vbicq_s8(v251, v23);
  v38 = vbicq_s8(v249, v21);
  v39 = *(v181 + *MEMORY[0x277CD73C8]);
  v187 = a7;
  v182 = a1;
  if ((v39 & 0xFFF8) != 0)
  {
    v40 = v39 >> 3;
    v246 = *(v181 + *v14);
    v41 = *(&v246 | a4 & 0xF) & 0xF;
    v247[0] = v38;
    v247[1] = v34;
    v247[2] = v37;
    v247[3] = v33;
    v247[4] = v36;
    v247[5] = v32;
    v247[6] = v35;
    v247[7] = v31;
    v42 = *(v247 + v41) / v40;
  }

  else
  {
    LODWORD(v40) = 0;
    v244 = *(v181 + *v14);
    v43 = *(&v244 | a4 & 0xF) & 0xF;
    v245[0] = v38;
    v245[1] = v34;
    v245[2] = v37;
    v245[3] = v33;
    v245[4] = v36;
    v245[5] = v32;
    v245[6] = v35;
    v245[7] = v31;
    v42 = *(v245 + v43);
  }

  v188 = v42;
  v44 = v39 == 4;
  if (v44)
  {
    v40 = 1;
  }

  else
  {
    v40 = v40;
  }

  v179 = v40;
  v242 = *v199;
  v195 = a4;
  v45 = *(&v242 | a4 & 0xF);
  v243[0] = v201;
  v243[1] = v206;
  v243[2] = v211;
  v243[3] = v216;
  v177 = *(v243 + (v45 & 0xF));
  if (v45)
  {
    v44 = 0;
  }

  v175 = v44;
  v46 = malloc_type_calloc([v11 count], 8uLL, 0x100004000313F17uLL);
  v200 = malloc_type_calloc([v11 count], 8uLL, 0x100004000313F17uLL);
  if ([v11 count])
  {
    v47 = 0;
    v48 = 64;
    v49 = (&v238 | a4 & 0xF);
    v50 = (&v236 | a4 & 0xF);
    v51 = (&v240 | a4 & 0xF);
    do
    {
      v46[v47] = *(v190[1] + v48);
      v59 = [v11 objectAtIndexedSubscript:v47];
      v60 = (v59 + *MEMORY[0x277CD7418]);
      v212 = v60[2];
      v217 = v60[3];
      v202 = *v60;
      v207 = v60[1];
      v61 = MEMORY[0x277CD73D8];
      *v197 = *(v59 + *MEMORY[0x277CD73D8]);
      makeStrideBytes();
      v62 = (v59 + *MEMORY[0x277CD73D0]);
      v63.i64[0] = 0x100000001;
      v63.i64[1] = 0x100000001;
      v64 = vceqq_s32(*v62, v63);
      v65.i64[0] = v64.i32[0];
      v65.i64[1] = v64.i32[1];
      v66 = v65;
      v67 = vceqq_s32(v62[1], v63);
      v65.i64[0] = v67.i32[0];
      v65.i64[1] = v67.i32[1];
      v68 = v65;
      v69 = vceqq_s32(v62[2], v63);
      v65.i64[0] = v69.i32[0];
      v65.i64[1] = v69.i32[1];
      v70 = v65;
      v71 = vceqq_s32(v62[3], v63);
      v65.i64[0] = v71.i32[0];
      v65.i64[1] = v71.i32[1];
      v72 = v65;
      v65.i64[0] = v64.i32[2];
      v65.i64[1] = v64.i32[3];
      v73 = v65;
      v65.i64[0] = v67.i32[2];
      v65.i64[1] = v67.i32[3];
      v74 = v65;
      v65.i64[0] = v69.i32[2];
      v65.i64[1] = v69.i32[3];
      v75 = v65;
      v65.i64[0] = v71.i32[2];
      v65.i64[1] = v71.i32[3];
      v76 = vbicq_s8(v256, v65);
      v77 = vbicq_s8(v254, v75);
      v78 = vbicq_s8(v252, v74);
      v79 = vbicq_s8(v250, v73);
      v80 = vbicq_s8(v255, v72);
      v81 = vbicq_s8(v253, v70);
      v82 = vbicq_s8(v251, v68);
      v83 = vbicq_s8(v249, v66);
      v57 = *MEMORY[0x277CD73C8];
      v84 = *(v59 + v57);
      if ((v84 & 0xFFF8) != 0)
      {
        v240 = *(v59 + *v61);
        v52 = *v51 & 0xF;
        v241[0] = v83;
        v241[1] = v79;
        v241[2] = v82;
        v241[3] = v78;
        v241[4] = v81;
        v241[5] = v77;
        v241[6] = v80;
        v241[7] = v76;
        v53 = *(v241 + v52) / (v84 >> 3);
      }

      else
      {
        v238 = *(v59 + *v61);
        v85 = *v49 & 0xF;
        v239[0] = v83;
        v239[1] = v79;
        v239[2] = v82;
        v239[3] = v78;
        v239[4] = v81;
        v239[5] = v77;
        v239[6] = v80;
        v239[7] = v76;
        v53 = *(v239 + v85);
      }

      v54 = *(v59 + v57);
      v55 = v54 == 4;
      v56 = v55;
      LODWORD(v57) = v54 >> 3;
      if (v55)
      {
        v57 = 1;
      }

      else
      {
        v57 = v57;
      }

      v236 = *v197;
      v58 = *v50;
      v237[0] = v202;
      v237[1] = v207;
      v237[2] = v212;
      v237[3] = v217;
      if (v58)
      {
        v56 = 0;
      }

      v200[v47++] = v53 * v57 * (*(v237 + (v58 & 0xF)) >> v56);
      v48 += 80;
    }

    while (v47 < [v11 count]);
  }

  v86 = v190;
  v169 = v190[12];
  v87 = (v193 + *MEMORY[0x277CD7418]);
  v213 = v87[2];
  v218 = v87[3];
  v203 = *v87;
  v208 = v87[1];
  v88 = MEMORY[0x277CD73D8];
  v191 = *(v193 + *MEMORY[0x277CD73D8]);
  makeStrideBytes();
  v89 = (v193 + *MEMORY[0x277CD73D0]);
  v90.i64[0] = 0x100000001;
  v90.i64[1] = 0x100000001;
  v91 = vceqq_s32(*v89, v90);
  v92.i64[0] = v91.i32[0];
  v92.i64[1] = v91.i32[1];
  v93 = v92;
  v94 = vceqq_s32(v89[1], v90);
  v92.i64[0] = v94.i32[0];
  v92.i64[1] = v94.i32[1];
  v95 = v92;
  v96 = vceqq_s32(v89[2], v90);
  v92.i64[0] = v96.i32[0];
  v92.i64[1] = v96.i32[1];
  v97 = v92;
  v98 = vceqq_s32(v89[3], v90);
  v92.i64[0] = v98.i32[0];
  v92.i64[1] = v98.i32[1];
  v99 = v92;
  v92.i64[0] = v91.i32[2];
  v92.i64[1] = v91.i32[3];
  v100 = v92;
  v92.i64[0] = v94.i32[2];
  v92.i64[1] = v94.i32[3];
  v101 = v92;
  v92.i64[0] = v96.i32[2];
  v92.i64[1] = v96.i32[3];
  v102 = v92;
  v92.i64[0] = v98.i32[2];
  v92.i64[1] = v98.i32[3];
  v103 = vbicq_s8(v256, v92);
  v104 = vbicq_s8(v254, v102);
  v105 = vbicq_s8(v252, v101);
  v106 = vbicq_s8(v250, v100);
  v107 = vbicq_s8(v255, v99);
  v108 = vbicq_s8(v253, v97);
  v109 = vbicq_s8(v251, v95);
  v110 = vbicq_s8(v249, v93);
  v111 = *(v193 + *MEMORY[0x277CD73C8]);
  if ((v111 & 0xFFF8) != 0)
  {
    v112 = v111 >> 3;
    v234 = *(v193 + *v88);
    v113 = v195;
    v114 = *(&v234 | v195 & 0xF);
    v235[0] = v110;
    v235[1] = v106;
    v235[2] = v109;
    v235[3] = v105;
    v235[4] = v108;
    v235[5] = v104;
    v235[6] = v107;
    v235[7] = v103;
    v115 = *(v235 + (v114 & 0xF)) / v112;
  }

  else
  {
    LODWORD(v112) = 0;
    v232 = *(v193 + *v88);
    v113 = v195;
    v114 = *(&v232 | v195 & 0xF);
    v233[0] = v110;
    v233[1] = v106;
    v233[2] = v109;
    v233[3] = v105;
    v233[4] = v108;
    v233[5] = v104;
    v233[6] = v107;
    v233[7] = v103;
    v115 = *(v233 + (v114 & 0xF));
  }

  v198 = v46;
  v116 = v111 == 4;
  if (v116)
  {
    v117 = 1;
  }

  else
  {
    v117 = v112;
  }

  v230 = v191;
  v118 = *(&v230 | v113 & 0xF);
  v231[0] = v203;
  v231[1] = v208;
  v231[2] = v213;
  v231[3] = v218;
  v119 = *(v231 + (v118 & 0xF));
  if (v118)
  {
    v120 = 0;
  }

  else
  {
    v120 = v116;
  }

  v121 = *(v190 + (v114 & 0xF) + 8);
  if (v114)
  {
    makeStrideBytes();
    if ((v114 & 0xF0) != 0)
    {
      v122 = 0;
    }

    else
    {
      v122 = v114;
    }

    v123 = v249.i64[v122 & 0xF];
    if ((v121 & 0x80000000) == 0)
    {
LABEL_39:
      v124 = 0;
      if (!v184)
      {
        goto LABEL_87;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v123 = v112;
    if ((v121 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  v125 = v184 - 1;
  v229 = *(v193 + *MEMORY[0x277CD73D8]);
  v126 = (&v229 | v113 & 0xF);
  v127 = *v126;
  if (*v126)
  {
    makeStrideBytes();
    if (v127 >= 0x10)
    {
      v128 = 0;
    }

    else
    {
      v128 = v127;
    }

    v86 = v190;
    v124 = v249.i64[v128 & 0xF] * v125;
    v113 = v195;
    if (!v184)
    {
      goto LABEL_87;
    }

    goto LABEL_49;
  }

  v124 = (*(v193 + *MEMORY[0x277CD73C8]) >> 3) * v125;
  v113 = v195;
  if (v184)
  {
LABEL_49:
    v129 = 0;
    v130 = v188 * (v177 >> v175) * v179;
    v180 = v123 * v121;
    v178 = v130 + v170;
    v176 = v115 * (v119 >> v120) * v117 + v169 + v124;
    if (v121 >= 0)
    {
      v131 = v121;
    }

    else
    {
      v131 = -v121;
    }

    v173 = v131;
    v174 = v113 - 1;
    v172 = (&v222 | v113 & 0xF);
    v171 = (&v221 | v113 & 0xF);
    v196 = (&v226 | v113 & 0xF);
    v194 = (&v225 | v113 & 0xF);
    v192 = (&v224 | v113 & 0xF);
    v189 = (&v223 | v113 & 0xF);
    do
    {
      if ([v11 count])
      {
        v133 = 0;
        for (i = 0; i < [v11 count]; ++i)
        {
          v136 = [v11 objectAtIndexedSubscript:i];
          v137 = (v136 + *MEMORY[0x277CD7410]);
          v214 = v137[1];
          v219 = *v137;
          v204 = v137[3];
          v209 = v137[2];
          v138 = [v11 objectAtIndexedSubscript:i];
          v139 = MEMORY[0x277CD73D8];
          v224 = *(v138 + *MEMORY[0x277CD73D8]);
          v228[2] = v209;
          v228[3] = v204;
          v228[0] = v219;
          v228[1] = v214;
          v140 = *(v228 + (*v192 & 0xF));
          v141 = (v86[1] + v133);
          v215 = v141[1];
          v220 = *v141;
          v205 = v141[3];
          v210 = v141[2];
          v225 = *([v11 objectAtIndexedSubscript:i] + *v139);
          v227[2] = v210;
          v227[3] = v205;
          v227[0] = v220;
          v227[1] = v215;
          v142 = *(v227 + (*v194 & 0xF));
          v143 = [v11 objectAtIndexedSubscript:i];
          v226 = *([v11 objectAtIndexedSubscript:i] + *v139);
          v144 = *v196;
          if (*v196)
          {
            makeStrideBytes();
            if (v144 >= 0x10)
            {
              v145 = 0;
            }

            else
            {
              v145 = v144;
            }

            v146 = v249.i64[v145 & 0xF];
            v147 = v200[i];
            if ((v142 & 0x80000000) != 0)
            {
LABEL_66:
              v148 = [v11 objectAtIndexedSubscript:i];
              v149 = [v11 objectAtIndexedSubscript:i];
              v223 = *(v149 + *MEMORY[0x277CD73D8]);
              v150 = *v189;
              if (*v189)
              {
                makeStrideBytes();
                if (v150 >= 0x10)
                {
                  v151 = 0;
                }

                else
                {
                  v151 = v150;
                }

                v152 = v249.i64[v151 & 0xF];
              }

              else
              {
                v152 = *(v148 + *MEMORY[0x277CD73C8]) >> 3;
              }

              v86 = v190;
              v135 = v152 * (v140 - 1);
              goto LABEL_58;
            }
          }

          else
          {
            v146 = *(v143 + *MEMORY[0x277CD73C8]) >> 3;
            v147 = v200[i];
            if ((v142 & 0x80000000) != 0)
            {
              goto LABEL_66;
            }
          }

          v135 = 0;
LABEL_58:
          *(v86[1] + v133 + 64) = v135 + v147 + v198[i] + v146 * v142 * (v129 % v140);
          v133 += 80;
        }
      }

      v153 = v181 + *MEMORY[0x277CD7410];
      v222 = *(v181 + *MEMORY[0x277CD73D8]);
      v154 = *v172;
      v155 = 4 * (v154 & 0xF);
      v156 = *(v153 + v155);
      v157 = *(v86 + v155 + 128);
      if (*v172)
      {
        makeStrideBytes();
        if (v154 >= 0x10)
        {
          v158 = 0;
        }

        else
        {
          v158 = v154;
        }

        v159 = v249.i64[v158 & 0xF];
        if ((v157 & 0x80000000) != 0)
        {
LABEL_80:
          v221 = *(v181 + *MEMORY[0x277CD73D8]);
          v160 = *v171;
          if (*v171)
          {
            makeStrideBytes();
            if (v160 >= 0x10)
            {
              v161 = 0;
            }

            else
            {
              v161 = v160;
            }

            v162 = v249.i64[v161 & 0xF];
          }

          else
          {
            v162 = *(v181 + *MEMORY[0x277CD73C8]) >> 3;
          }

          v132 = v162 * (v184 - 1);
          goto LABEL_54;
        }
      }

      else
      {
        v159 = *(v181 + *MEMORY[0x277CD73C8]) >> 3;
        if ((v157 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }
      }

      v132 = 0;
LABEL_54:
      v86[24] = v178 + v132 + v159 * v157 * (v129 % v156);
      v86[12] = v176 + v180 * v129;
      v187 |= v129 % v156 < v129;
      CallNDArrayGradientEncode(v182, a2, a3, v174, a5, v86, v187 & 1);
      v129 += v173;
    }

    while (v129 < v184);
  }

LABEL_87:
  v86[24] = v170;
  v86[12] = v169;
  if ([v11 count])
  {
    v163 = 0;
    v164 = 64;
    do
    {
      *(v86[1] + v164) = v198[v163++];
      v164 += 80;
    }

    while (v163 < [v11 count]);
  }

  free(v198);
  free(v200);
  return 0;
}