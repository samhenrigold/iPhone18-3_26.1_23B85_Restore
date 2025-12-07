uint64_t glvmWindowTransformGP(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t _Q6)
{
  v11 = *(a3 + 48);
  v12 = ((*(a3 + 96) - v11) / 0x280uLL) & 3;
  v13 = (a4 >> 2) & 3;
  v14 = 6944;
  if ((a4 & 0x20) == 0)
  {
    v14 = 6976;
  }

  v15 = 6960;
  if ((a4 & 0x20) == 0)
  {
    v15 = 6992;
  }

  v16 = (v11 - 2557);
  v17 = 65280;
  v18 = 65280;
  do
  {
    v19 = v18;
    v20 = v16;
    v21 = (v16 + 2557);
    _X22 = v20 + 5197;
    _X23 = v20 + 6477;
    _X24 = v20 + 7117;
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X23]
    }

    _X23 = v20 + 5837;
    __asm
    {
      PRFM            #0, [X23]
      PRFM            #0, [X22]
    }

    if (a4)
    {
      _Q6.i64[0] = *(a1 + 7072);
      _Q6.i32[2] = *(a2 + 160);
      _Q6.i32[3] = _Q6.i32[2];
      v38.i64[0] = *(a1 + 7080);
      v38.i32[2] = *(a2 + 164);
      v38.i32[3] = v38.i32[2];
      v34 = vmlaq_f32(vmulq_laneq_f32(v38, v21[5], 3), v21[5], _Q6);
      v35 = vmlaq_f32(vmulq_laneq_f32(v38, v21[45], 3), v21[45], _Q6);
      v36 = vmlaq_f32(vmulq_laneq_f32(v38, v21[85], 3), v21[85], _Q6);
      v37 = vmlaq_f32(vmulq_laneq_f32(v38, v21[125], 3), v21[125], _Q6);
      v21[5] = v34;
      v21[45] = v35;
      v21[85] = v36;
      v21[125] = v37;
      if ((a4 & 0x40) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v34 = v21[5];
      v35 = v21[45];
      v36 = v21[85];
      v37 = v21[125];
      if ((a4 & 0x40) != 0)
      {
        goto LABEL_6;
      }
    }

    if ((a4 & 2) != 0)
    {
      v48 = 0;
      v21->i32[0] = 0;
      v21[40].i32[0] = 0;
      v21[80].i32[0] = 0;
      v21[120].i32[0] = 0;
    }

    else
    {
      v39 = -v34.f32[3];
      if (v34.f32[0] <= v34.f32[3])
      {
        v40 = 16 * (v34.f32[0] < -v34.f32[3]);
      }

      else
      {
        v40 = (16 * (v34.f32[0] < -v34.f32[3])) | 0x20;
      }

      if (v34.f32[1] < v39)
      {
        v40 |= 4u;
      }

      if (v34.f32[1] > v34.f32[3])
      {
        v40 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v40 |= v34.f32[2] < v39;
        if (v34.f32[2] > v34.f32[3])
        {
          v40 |= 2u;
        }
      }

      v41 = -v35.f32[3];
      if (v35.f32[0] <= v35.f32[3])
      {
        v42 = 16 * (v35.f32[0] < -v35.f32[3]);
      }

      else
      {
        v42 = (16 * (v35.f32[0] < -v35.f32[3])) | 0x20;
      }

      if (v35.f32[1] < v41)
      {
        v42 |= 4u;
      }

      if (v35.f32[1] > v35.f32[3])
      {
        v42 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v42 |= v35.f32[2] < v41;
        if (v35.f32[2] > v35.f32[3])
        {
          v42 |= 2u;
        }
      }

      v43 = -v36.f32[3];
      if (v36.f32[0] <= v36.f32[3])
      {
        v44 = 16 * (v36.f32[0] < -v36.f32[3]);
      }

      else
      {
        v44 = (16 * (v36.f32[0] < -v36.f32[3])) | 0x20;
      }

      if (v36.f32[1] < v43)
      {
        v44 |= 4u;
      }

      if (v36.f32[1] > v36.f32[3])
      {
        v44 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v44 |= v36.f32[2] < v43;
        if (v36.f32[2] > v36.f32[3])
        {
          v44 |= 2u;
        }
      }

      v45 = -v37.f32[3];
      if (v37.f32[0] <= v37.f32[3])
      {
        v46 = 16 * (v37.f32[0] < -v37.f32[3]);
      }

      else
      {
        v46 = (16 * (v37.f32[0] < -v37.f32[3])) | 0x20;
      }

      if (v37.f32[1] < v45)
      {
        v46 |= 4u;
      }

      if (v37.f32[1] > v37.f32[3])
      {
        v46 |= 8u;
      }

      if ((a4 & 0x100) == 0)
      {
        v46 |= v37.f32[2] < v45;
        if (v37.f32[2] > v37.f32[3])
        {
          v46 |= 2u;
        }
      }

      v21->i32[0] = v40 << 24;
      v21[40].i32[0] = v42 << 24;
      v21[80].i32[0] = v44 << 24;
      v21[120].i32[0] = v46 << 24;
      v47 = v42 & v40;
      v48 = v42 | v40 | v44 | v46;
      v49 = v47 & v44 & v46;
      if (v49)
      {
        if (!v13)
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      }
    }

    v49 = 0;
    v63 = *(a1 + v15);
    v64 = *(a1 + v14);
    v65 = *(a2 + 160);
    v66 = v65 / v34.f32[3];
    v67 = v65 / v35.f32[3];
    v68 = v65 / v36.f32[3];
    v69 = vmulq_n_f32(v35, v65 / v35.f32[3]);
    v70 = vmulq_n_f32(v36, v65 / v36.f32[3]);
    v71 = v65 / v37.f32[3];
    v72 = vmulq_n_f32(v37, v65 / v37.f32[3]);
    v73 = vmlaq_f32(v63, vmulq_n_f32(v34, v65 / v34.f32[3]), v64);
    v34 = vmlaq_f32(v63, v69, v64);
    v21[4] = v73;
    v21[44] = v34;
    v21[84] = vmlaq_f32(v63, v70, v64);
    v21[124] = vmlaq_f32(v63, v72, v64);
    v21[4].f32[3] = v66;
    v21[44].f32[3] = v67;
    v21[84].f32[3] = v68;
    v21[124].f32[3] = v71;
    if (!v13)
    {
LABEL_62:
      if ((a4 & 2) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_71;
    }

LABEL_55:
    _X24 = v20 + 7213;
    _X25 = v20 + 6573;
    _X26 = v20 + 5933;
    _X27 = v20 + 5293;
    __asm { PRFM            #0, [X27] }

    v55.i32[0] = v21[11].i32[0];
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X25]
    }

    v58 = v21[91].f32[0];
    __asm { PRFM            #0, [X24] }

    v61.i32[0] = v55.i32[0];
    v61.i32[1] = v21[51].i32[0];
    v60 = v21[131].f32[0];
    v61.i64[1] = __PAIR64__(LODWORD(v60), LODWORD(v58));
    if (v13 == 3)
    {
      v34.i32[0] = *(a1 + 12972);
      v62 = vmulq_f32(vmulq_f32(v61, v61), vmulq_n_f32(vnegq_f32(vdupq_lane_s32(*v34.f32, 0)), v34.f32[0]));
LABEL_65:
      __asm { FMOV            V3.4S, #1.0 }

      v75 = vsubq_f32(_Q3, v62);
      v76 = vcvt_hight_f64_f32(v75);
      v77 = vmulq_f32(v62, v62);
      __asm { FMOV            V16.2D, #0.5 }

      v79 = vaddq_f64(vmulq_f64(vcvtq_f64_f32(*v77.f32), _Q16), vcvtq_f64_f32(*v75.f32));
      v80 = vaddq_f64(vmulq_f64(vcvt_hight_f64_f32(v77), _Q16), v76);
      v81 = vmulq_f32(v62, v77);
      __asm { FMOV            V16.2D, #-6.0 }

      v83 = vaddq_f64(v80, vdivq_f64(vcvt_hight_f64_f32(v81), _Q16));
      v84 = vaddq_f64(v79, vdivq_f64(vcvtq_f64_f32(*v81.f32), _Q16));
      v85 = vmulq_f32(v62, v81);
      v86 = vcvtq_f64_f32(*v85.f32);
      __asm { FMOV            V6.2D, #24.0 }

      v87 = vaddq_f64(v83, vdivq_f64(vcvt_hight_f64_f32(v85), _Q6));
      __asm { FMOV            V4.2D, #1.0 }

      v89 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q4, vaddq_f64(v84, vdivq_f64(v86, _Q6)))), vdivq_f64(_Q4, v87));
      goto LABEL_70;
    }

    if (v13 == 2)
    {
      if ((a4 & 0x80) != 0)
      {
        v61.f32[0] = fmaxf(v55.f32[0], 0.0);
        v61.i32[1] = fmaxf(v21[51].f32[0], 0.0);
        v61.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(fmaxf(v60, 0.0)), COERCE_UNSIGNED_INT(fmaxf(v58, 0.0)));
      }

      v62 = vmulq_n_f32(vnegq_f32(vabsq_f32(v61)), *(a1 + 12972));
      goto LABEL_65;
    }

    v55.i32[1] = v21[51].i32[0];
    if ((a4 & 0x80) != 0)
    {
      *v90.f32 = vneg_f32(v55);
      v91 = -v58;
    }

    else
    {
      *v90.f32 = vneg_f32(vabs_f32(v55));
      v91 = -fabsf(v58);
      v60 = fabsf(v60);
    }

    _Q6.i32[0] = *(a1 + 12984);
    v55.f32[0] = *(a1 + 12980) * _Q6.f32[0];
    v90.f32[2] = v91;
    v90.f32[3] = -v60;
    v92 = vmaxnmq_f32(vmlaq_f32(vdupq_lane_s32(v55, 0), vdupq_lane_s32(*_Q6.f32, 0), v90), 0);
    __asm { FMOV            V3.4S, #1.0 }

    v89 = vminnmq_f32(v92, _Q3);
LABEL_70:
    v21[11].i32[1] = v89.i32[0];
    v21[51].i32[1] = v89.i32[1];
    v21[91].i32[1] = v89.i32[2];
    v21[131].i32[1] = v89.i32[3];
    if ((a4 & 2) != 0)
    {
LABEL_6:
      v18 = 0;
      goto LABEL_7;
    }

LABEL_71:
    v18 = v48 | (v49 << 8);
LABEL_7:
    v17 = (v19 | v17) & (v19 | 0xFF);
    v16 = v20 + 2560;
  }

  while ((v20 + 5117) < *(a3 + 96));
  if (v12)
  {
    v18 = ((*v16 << 8) | 0xFF) & (*v16 | 0xFF00);
    if (v12 != 1)
    {
      v18 = ((v20[3200] << 8) | 0xFF) & (v18 | v20[3200]);
      if (v12 == 3)
      {
        v18 = ((v20[3840] << 8) | 0xFF) & (v18 | v20[3840]);
      }
    }
  }

  return (v18 | v17) & (v18 | 0xFFu);
}

_DWORD *glvmSetSourceIndirectLimits_2(_DWORD *result, unint64_t a2, unint64_t *a3, __int16 a4, __int16 a5, __int16 a6, unsigned __int16 a7)
{
  v7 = (a2 >> 6) & 7;
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return result;
    }

    v8 = *a3;
    v9 = (a4 & 0xFFF) << 16;
    goto LABEL_4;
  }

  v8 = *a3;
  if ((*a3 & 0x3C000000000000) == 0x1C000000000000)
  {
    v10 = v8 & 0xFFDF0000FFFFFFFFLL | (a7 << 32);
    goto LABEL_16;
  }

  v11 = (*&result[2 * result[15] + 2 * HIWORD(a2)] >> 8) & 0x1F;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v9 = (a6 & 0xFFF) << 16;
      goto LABEL_4;
    }

    if (v11 == 6)
    {
      v8 = v8 & 0xFFFFFFFFF003FFFFLL | ((result[34] & 0x3FF) << 18);
      *a3 = v8;
      v12 = result[35] >> 1;
LABEL_15:
      v10 = v8 & 0xFFFF0000FFFFFFFFLL | (v12 << 32);
      goto LABEL_16;
    }

LABEL_14:
    v12 = a7;
    goto LABEL_15;
  }

  if (!v11)
  {
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  v9 = (a5 & 0xFFF) << 16;
LABEL_4:
  v10 = v8 & 0xFFFFFFFFF000FFFFLL | v9;
LABEL_16:
  *a3 = v10;
  return result;
}

uint64_t glvmInterpretGPTransformPrimitive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v60 = a3;
  v61 = a4;
  v59 = a2;
  v66 = *MEMORY[0x277D85DE8];
  v14 = *a7;
  MEMORY[0x28223BE20](a1);
  v17 = &v57 - v16;
  if (*(v18 + 72))
  {
    v19 = a6[14];
  }

  else
  {
    v19 = 0;
  }

  bzero(v17, v15);
  v21 = a6[27];
  v22 = a6[31];
  v63 = a8;
  v64 = a1;
  v62 = a7;
  if (v21 != v22)
  {
    v58 = v14;
    v36 = 0;
    v37 = &a6[2 * v21];
    v38 = &a6[2 * v22];
    v39 = v37;
    do
    {
      if ((*v39 & 0x3FC0) != 0x12C0)
      {
        break;
      }

      ++v36;
      v39 += (*v39 & 7) + 2;
    }

    while (v39 != v38);
    v40 = MEMORY[0x28223BE20](v20);
    v23 = (&v57 - 8);
    v55 = 0u;
    v56 = 0u;
    *(&v57 - 4) = 0u;
    v54 = 0u;
    MEMORY[0x28223BE20](v40);
    v24 = &v57 - v41;
    bzero(&v57 - v41, v42);
    if (v21 != v22)
    {
      v43 = 0;
      do
      {
        if ((*v37 & 0x3FC0) != 0x12C0)
        {
          break;
        }

        glvmOperationInitSub(v24, v43 | ((v37[1] & 0x3FFFFLL) << 32));
        v37 += (*v37 & 7) + 2;
        ++v43;
      }

      while (v37 != v38);
    }

    LODWORD(v14) = v58;
    v25 = a9;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  MEMORY[0x28223BE20](v20);
  v23 = (&v57 - 8);
  v55 = 0u;
  v56 = 0u;
  *(&v57 - 4) = 0u;
  v54 = 0u;
  v24 = &v65;
  v25 = a9;
  if (!v19)
  {
    goto LABEL_28;
  }

LABEL_6:
  v26 = 0;
  v27 = 0;
  v28 = a6[15];
  v29 = v19;
  do
  {
    v30 = *&a6[2 * v28];
    v31 = (v30 >> 8) & 0x1F;
    v32 = HIDWORD(v30) & 0x3FFF;
    if (v32 >= v26)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = v26;
    }

    if (v32 >= v27)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v27;
    }

    if (v31 != 1)
    {
      v34 = v27;
    }

    if (v31 == 2)
    {
      v26 = v33;
    }

    else
    {
      v27 = v34;
    }

    ++v28;
    --v29;
  }

  while (v29);
  v35 = (v27 | (v26 << 16)) << 32;
LABEL_29:
  v44 = v35 | (2 * a6[29]);
  *&v56 = v24;
  v45 = v64;
  glvmInterpretGPTransformPrimitiveInner(v64, v59, v60, v61, a5, a6, v62, v63, v25, v17, v55, v23, v56, v44);
  glvmOperationENDSTREAMPRIMITIVES(a5, v25);
  return glvmWindowTransformGP(v45, a5, v25, v14, v46, v47, v48, v49, v50, v51, v52);
}

__n128 glvmOperationCopyAttributes(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = *a2;
  if ((a4 & 0x100000001) != 0)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  if ((a4 & 0x200000002) != 0)
  {
    *(a1 + 32) = *(a2 + 32);
  }

  if ((a4 & 0x400000004) != 0)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  if ((a4 & 0x800000008) != 0)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  if ((a4 & 0x1000000010) != 0)
  {
    *(a1 + 80) = *(a2 + 80);
  }

  if ((a4 & 0x2000000020) != 0)
  {
    *(a1 + 96) = *(a2 + 96);
  }

  if ((a4 & 0x4000000040) != 0)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  if ((a4 & 0x8000000080) != 0)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  if ((a4 & 0x10000000100) != 0)
  {
    *(a1 + 144) = *(a2 + 144);
  }

  if ((a4 & 0x20000000200) != 0)
  {
    *(a1 + 160) = *(a2 + 160);
  }

  if ((a4 & 0x40000000400) != 0)
  {
    *(a1 + 176) = *(a2 + 176);
  }

  if ((a4 & 0x80000000800) != 0)
  {
    *(a1 + 192) = *(a2 + 192);
  }

  if ((a4 & 0x100000001000) != 0)
  {
    *(a1 + 208) = *(a2 + 208);
  }

  if ((a4 & 0x200000002000) != 0)
  {
    *(a1 + 224) = *(a2 + 224);
  }

  if ((a4 & 0x400000004000) != 0)
  {
    *(a1 + 240) = *(a2 + 240);
  }

  if ((a4 & 0x800000008000) != 0)
  {
    *(a1 + 256) = *(a2 + 256);
  }

  if ((a4 & 0x1000000010000) != 0)
  {
    *(a1 + 272) = *(a2 + 272);
  }

  if ((a4 & 0x2000000020000) != 0)
  {
    *(a1 + 288) = *(a2 + 288);
  }

  if ((a4 & 0x4000000040000) != 0)
  {
    *(a1 + 304) = *(a2 + 304);
  }

  if ((a4 & 0x8000000080000) != 0)
  {
    *(a1 + 320) = *(a2 + 320);
  }

  if ((a4 & 0x10000000100000) != 0)
  {
    *(a1 + 336) = *(a2 + 336);
  }

  if ((a4 & 0x20000000200000) != 0)
  {
    *(a1 + 352) = *(a2 + 352);
  }

  if ((a4 & 0x40000000400000) != 0)
  {
    *(a1 + 368) = *(a2 + 368);
  }

  if ((a4 & 0x80000000800000) != 0)
  {
    *(a1 + 384) = *(a2 + 384);
  }

  if ((a4 & 0x100000001000000) != 0)
  {
    *(a1 + 400) = *(a2 + 400);
  }

  if ((a4 & 0x200000002000000) != 0)
  {
    *(a1 + 416) = *(a2 + 416);
  }

  if ((a4 & 0x400000004000000) != 0)
  {
    *(a1 + 432) = *(a2 + 432);
  }

  if ((a4 & 0x800000008000000) != 0)
  {
    *(a1 + 448) = *(a2 + 448);
  }

  if ((a4 & 0x1000000010000000) != 0)
  {
    *(a1 + 464) = *(a2 + 464);
  }

  if ((a4 & 0x2000000020000000) != 0)
  {
    *(a1 + 480) = *(a2 + 480);
  }

  if ((a4 & 0x4000000040000000) != 0)
  {
    *(a1 + 496) = *(a2 + 496);
  }

  if ((a4 & 0x8000000080000000) != 0)
  {
    *(a1 + 512) = *(a2 + 512);
  }

  if ((a3 & 0x40) != 0)
  {
    *(a1 + 528) = *(a2 + 528);
  }

  if (a3 < 0)
  {
    *(a1 + 544) = *(a2 + 544);
  }

  result = *(a2 + 560);
  *(a1 + 560) = result;
  return result;
}

float32x4_t glvmPreloadPositionAttrib(float32x4_t *a1, float32x4_t *a2, uint64_t a3)
{
  v3 = a1[7];
  if ((a3 & 0x100000000000) != 0)
  {
    v10 = a1[6];
    v4 = a1 + 6;
    v11 = v4[2];
    v9 = vaddq_f32(v3, v10);
    *a2 = v10;
    a2[1] = v9;
    v12 = vaddq_f32(v11, v10);
    a2[2] = v12;
    v8 = vaddq_f32(v3, v12);
  }

  else
  {
    v5 = a1[6];
    v4 = a1 + 6;
    v6 = vaddq_f32(v3, v5);
    *a2 = v5;
    a2[1] = v6;
    v7 = vaddq_f32(v3, v6);
    a2[2] = v7;
    v8 = vaddq_f32(v3, v7);
    v9 = v8;
  }

  a2[3] = v8;
  result = vaddq_f32(v3, v9);
  *v4 = result;
  if ((a3 & 0x80000000000) == 0)
  {
    if ((a3 & 0x40000000000) == 0)
    {
      return result;
    }

LABEL_8:
    v19 = a2[2];
    v20 = a2[3];
    v21 = vmaxnmq_f32(vminnmq_f32(a2[1], xmmword_23A29C1F0), xmmword_23A29C200);
    *a2 = vmaxnmq_f32(vminnmq_f32(*a2, xmmword_23A29C1F0), xmmword_23A29C200);
    a2[1] = v21;
    result = vmaxnmq_f32(vminnmq_f32(v19, xmmword_23A29C1F0), xmmword_23A29C200);
    a2[2] = result;
    a2[3] = vmaxnmq_f32(vminnmq_f32(v20, xmmword_23A29C1F0), xmmword_23A29C200);
    return result;
  }

  v14 = a2[1];
  *v15.f32 = vcvt_f32_s32(vcvt_s32_f32(*a2->f32));
  v15.i64[1] = vextq_s8(*a2, *a2, 8uLL).u64[0];
  *v16.f32 = vcvt_f32_s32(vcvt_s32_f32(*v14.i8));
  v16.i64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
  *a2 = v15;
  a2[1] = v16;
  v17 = a2[2];
  v18 = a2[3];
  *v15.f32 = vcvt_f32_s32(vcvt_s32_f32(*v17.i8));
  v15.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
  *result.f32 = vcvt_f32_s32(vcvt_s32_f32(*v18.i8));
  result.i64[1] = vextq_s8(v18, v18, 8uLL).u64[0];
  a2[2] = v15;
  a2[3] = result;
  if ((a3 & 0x40000000000) != 0)
  {
    goto LABEL_8;
  }

  return result;
}

float32x4_t glvmPreloadSourceAttribs(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, float32x4_t result)
{
  if (a6)
  {
    if ((a6 & 0x100000001) == 1)
    {
      result = a2[1];
      *(a4 + 64) = result;
      *(a4 + 80) = result;
      *(a4 + 96) = result;
      *(a4 + 112) = result;
      a6 &= 0xFFFFFFFEFFFFFFFELL;
    }

    if ((a6 & 0x200000002) == 2)
    {
      result = a2[2];
      *(a4 + 128) = result;
      *(a4 + 144) = result;
      *(a4 + 160) = result;
      *(a4 + 176) = result;
      a6 &= 0xFFFFFFFDFFFFFFFDLL;
    }

    if ((a6 & 0x400000004) == 4)
    {
      result = a2[3];
      *(a4 + 192) = result;
      *(a4 + 208) = result;
      *(a4 + 224) = result;
      *(a4 + 240) = result;
      a6 &= 0xFFFFFFFBFFFFFFFBLL;
    }

    if ((a6 & 0x800000008) == 8)
    {
      result = a2[4];
      *(a4 + 256) = result;
      *(a4 + 272) = result;
      *(a4 + 288) = result;
      *(a4 + 304) = result;
      a6 &= 0xFFFFFFF7FFFFFFF7;
    }

    if ((a6 & 0x1000000010) == 0x10)
    {
      result = a2[5];
      *(a4 + 320) = result;
      *(a4 + 336) = result;
      *(a4 + 352) = result;
      *(a4 + 368) = result;
      a6 &= 0xFFFFFFEFFFFFFFEFLL;
    }

    if ((a6 & 0x2000000020) == 0x20)
    {
      result = a2[6];
      *(a4 + 384) = result;
      *(a4 + 400) = result;
      *(a4 + 416) = result;
      *(a4 + 432) = result;
      a6 &= 0xFFFFFFDFFFFFFFDFLL;
    }

    if ((a6 & 0x4000000040) == 0x40)
    {
      result = a2[7];
      *(a4 + 448) = result;
      *(a4 + 464) = result;
      *(a4 + 480) = result;
      *(a4 + 496) = result;
      a6 &= 0xFFFFFFBFFFFFFFBFLL;
    }

    if ((a6 & 0x8000000080) == 0x80)
    {
      result = a2[8];
      *(a4 + 512) = result;
      *(a4 + 528) = result;
      *(a4 + 544) = result;
      *(a4 + 560) = result;
      a6 &= 0xFFFFFF7FFFFFFF7FLL;
    }

    if ((a6 & 0x10000000100) == 0x100)
    {
      result = a2[9];
      *(a4 + 576) = result;
      *(a4 + 592) = result;
      *(a4 + 608) = result;
      *(a4 + 624) = result;
      a6 &= 0xFFFFFEFFFFFFFEFFLL;
    }

    if ((a6 & 0x20000000200) == 0x200)
    {
      result = a2[10];
      *(a4 + 640) = result;
      *(a4 + 656) = result;
      *(a4 + 672) = result;
      *(a4 + 688) = result;
      a6 &= 0xFFFFFDFFFFFFFDFFLL;
    }

    if ((a6 & 0x40000000400) == 0x400)
    {
      result = a2[11];
      *(a4 + 704) = result;
      *(a4 + 720) = result;
      *(a4 + 736) = result;
      *(a4 + 752) = result;
      a6 &= 0xFFFFFBFFFFFFFBFFLL;
    }

    if ((a6 & 0x80000000800) == 0x800)
    {
      result = a2[12];
      *(a4 + 768) = result;
      *(a4 + 784) = result;
      *(a4 + 800) = result;
      *(a4 + 816) = result;
      a6 &= 0xFFFFF7FFFFFFF7FFLL;
    }

    if ((a6 & 0x100000001000) == 0x1000)
    {
      result = a2[13];
      *(a4 + 832) = result;
      *(a4 + 848) = result;
      *(a4 + 864) = result;
      *(a4 + 880) = result;
      a6 &= 0xFFFFEFFFFFFFEFFFLL;
    }

    if ((a6 & 0x200000002000) == 0x2000)
    {
      result = a2[14];
      *(a4 + 896) = result;
      *(a4 + 912) = result;
      *(a4 + 928) = result;
      *(a4 + 944) = result;
      a6 &= 0xFFFFDFFFFFFFDFFFLL;
    }

    if ((a6 & 0x400000004000) == 0x4000)
    {
      result = a2[15];
      *(a4 + 960) = result;
      *(a4 + 976) = result;
      *(a4 + 992) = result;
      *(a4 + 1008) = result;
      a6 &= 0xFFFFBFFFFFFFBFFFLL;
    }

    if ((a6 & 0x800000008000) == 0x8000)
    {
      result = a2[16];
      *(a4 + 1024) = result;
      *(a4 + 1040) = result;
      *(a4 + 1056) = result;
      *(a4 + 1072) = result;
      a6 &= 0xFFFF7FFFFFFF7FFFLL;
    }

    if ((a6 & 0x1000000010000) == 0x10000)
    {
      result = a2[17];
      *(a4 + 1088) = result;
      *(a4 + 1104) = result;
      *(a4 + 1120) = result;
      *(a4 + 1136) = result;
      a6 &= 0xFFFEFFFFFFFEFFFFLL;
    }

    if ((a6 & 0x2000000020000) == 0x20000)
    {
      result = a2[18];
      *(a4 + 1152) = result;
      *(a4 + 1168) = result;
      *(a4 + 1184) = result;
      *(a4 + 1200) = result;
      a6 &= 0xFFFDFFFFFFFDFFFFLL;
    }

    if ((a6 & 0x4000000040000) == 0x40000)
    {
      result = a2[19];
      *(a4 + 1216) = result;
      *(a4 + 1232) = result;
      *(a4 + 1248) = result;
      *(a4 + 1264) = result;
      a6 &= 0xFFFBFFFFFFFBFFFFLL;
    }

    if ((a6 & 0x8000000080000) == 0x80000)
    {
      result = a2[20];
      *(a4 + 1280) = result;
      *(a4 + 1296) = result;
      *(a4 + 1312) = result;
      *(a4 + 1328) = result;
      a6 &= 0xFFF7FFFFFFF7FFFFLL;
    }

    if ((a6 & 0x10000000100000) == 0x100000)
    {
      result = a2[21];
      *(a4 + 1344) = result;
      *(a4 + 1360) = result;
      *(a4 + 1376) = result;
      *(a4 + 1392) = result;
      a6 &= 0xFFEFFFFFFFEFFFFFLL;
    }

    if ((a6 & 0x20000000200000) == 0x200000)
    {
      result = a2[22];
      *(a4 + 1408) = result;
      *(a4 + 1424) = result;
      *(a4 + 1440) = result;
      *(a4 + 1456) = result;
      a6 &= 0xFFDFFFFFFFDFFFFFLL;
    }

    if ((a6 & 0x40000000400000) == 0x400000)
    {
      result = a2[23];
      *(a4 + 1472) = result;
      *(a4 + 1488) = result;
      *(a4 + 1504) = result;
      *(a4 + 1520) = result;
      a6 &= 0xFFBFFFFFFFBFFFFFLL;
    }

    if ((a6 & 0x80000000800000) == 0x800000)
    {
      result = a2[24];
      *(a4 + 1536) = result;
      *(a4 + 1552) = result;
      *(a4 + 1568) = result;
      *(a4 + 1584) = result;
      a6 &= 0xFF7FFFFFFF7FFFFFLL;
    }

    if ((a6 & 0x100000001000000) == 0x1000000)
    {
      result = a2[25];
      *(a4 + 1600) = result;
      *(a4 + 1616) = result;
      *(a4 + 1632) = result;
      *(a4 + 1648) = result;
      a6 &= 0xFEFFFFFFFEFFFFFFLL;
    }

    if ((a6 & 0x200000002000000) == 0x2000000)
    {
      result = a2[26];
      *(a4 + 1664) = result;
      *(a4 + 1680) = result;
      *(a4 + 1696) = result;
      *(a4 + 1712) = result;
      a6 &= 0xFDFFFFFFFDFFFFFFLL;
    }

    if ((a6 & 0x400000004000000) == 0x4000000)
    {
      result = a2[27];
      *(a4 + 1728) = result;
      *(a4 + 1744) = result;
      *(a4 + 1760) = result;
      *(a4 + 1776) = result;
      a6 &= 0xFBFFFFFFFBFFFFFFLL;
    }

    if ((a6 & 0x800000008000000) == 0x8000000)
    {
      result = a2[28];
      *(a4 + 1792) = result;
      *(a4 + 1808) = result;
      *(a4 + 1824) = result;
      *(a4 + 1840) = result;
      a6 &= 0xF7FFFFFFF7FFFFFFLL;
    }

    if ((a6 & 0x1000000010000000) == 0x10000000)
    {
      result = a2[29];
      *(a4 + 1856) = result;
      *(a4 + 1872) = result;
      *(a4 + 1888) = result;
      *(a4 + 1904) = result;
      a6 &= 0xEFFFFFFFEFFFFFFFLL;
    }

    if ((a6 & 0x2000000020000000) == 0x20000000)
    {
      result = a2[30];
      *(a4 + 1920) = result;
      *(a4 + 1936) = result;
      *(a4 + 1952) = result;
      *(a4 + 1968) = result;
      a6 &= 0xDFFFFFFFDFFFFFFFLL;
    }

    if ((a6 & 0x4000000040000000) == 0x40000000)
    {
      result = a2[31];
      *(a4 + 1984) = result;
      *(a4 + 2000) = result;
      *(a4 + 2016) = result;
      *(a4 + 2032) = result;
      a6 &= 0xBFFFFFFFBFFFFFFFLL;
    }

    if ((a6 & 0x8000000080000000) == 0x80000000)
    {
      result = a2[32];
      *(a4 + 2048) = result;
      *(a4 + 2064) = result;
      *(a4 + 2080) = result;
      *(a4 + 2096) = result;
      a6 &= 0x7FFFFFFF7FFFFFFFuLL;
    }
  }

  v8 = (a5 >> 9) & 1;
  v9 = (a5 >> 6) | v8;
  if (a6 | v9)
  {
    result.f32[0] = *(a1 + 80);
    result = vdupq_lane_s32(*result.f32, 0);
    if (a6)
    {
      if ((a6 & 0x100000001) == 0x100000000)
      {
        v10 = a3[1];
        v11 = vmlaq_f32(a2[1], v10, result);
        *(a4 + 64) = v11;
        v12 = vaddq_f32(v10, v11);
        if ((a7 & 0x100000000000) != 0)
        {
          v13 = vaddq_f32(v11, a3[37]);
        }

        else
        {
          v13 = vaddq_f32(v10, v12);
        }

        *(a4 + 80) = v12;
        *(a4 + 96) = v13;
        *(a4 + 112) = vaddq_f32(v10, v13);
        a6 &= 0xFFFFFFFEFFFFFFFELL;
      }

      if ((a6 & 0x200000002) == 0x200000000)
      {
        v14 = a3[2];
        v15 = vmlaq_f32(a2[2], v14, result);
        *(a4 + 128) = v15;
        v16 = vaddq_f32(v14, v15);
        if ((a7 & 0x100000000000) != 0)
        {
          v17 = vaddq_f32(v15, a3[38]);
        }

        else
        {
          v17 = vaddq_f32(v14, v16);
        }

        *(a4 + 144) = v16;
        *(a4 + 160) = v17;
        *(a4 + 176) = vaddq_f32(v14, v17);
        a6 &= 0xFFFFFFFDFFFFFFFDLL;
      }

      if ((a6 & 0x400000004) == 0x400000000)
      {
        v18 = a3[3];
        v19 = vmlaq_f32(a2[3], v18, result);
        *(a4 + 192) = v19;
        v20 = vaddq_f32(v18, v19);
        if ((a7 & 0x100000000000) != 0)
        {
          v21 = vaddq_f32(v19, a3[39]);
        }

        else
        {
          v21 = vaddq_f32(v18, v20);
        }

        *(a4 + 208) = v20;
        *(a4 + 224) = v21;
        *(a4 + 240) = vaddq_f32(v18, v21);
        a6 &= 0xFFFFFFFBFFFFFFFBLL;
      }

      if ((a6 & 0x800000008) == 0x800000000)
      {
        v22 = a3[4];
        v23 = vmlaq_f32(a2[4], v22, result);
        *(a4 + 256) = v23;
        v24 = vaddq_f32(v22, v23);
        if ((a7 & 0x100000000000) != 0)
        {
          v25 = vaddq_f32(v23, a3[40]);
        }

        else
        {
          v25 = vaddq_f32(v22, v24);
        }

        *(a4 + 272) = v24;
        *(a4 + 288) = v25;
        *(a4 + 304) = vaddq_f32(v22, v25);
        a6 &= 0xFFFFFFF7FFFFFFF7;
      }

      if ((a6 & 0x1000000010) == 0x1000000000)
      {
        v26 = a3[5];
        v27 = vmlaq_f32(a2[5], v26, result);
        *(a4 + 320) = v27;
        v28 = vaddq_f32(v26, v27);
        if ((a7 & 0x100000000000) != 0)
        {
          v29 = vaddq_f32(v27, a3[41]);
        }

        else
        {
          v29 = vaddq_f32(v26, v28);
        }

        *(a4 + 336) = v28;
        *(a4 + 352) = v29;
        *(a4 + 368) = vaddq_f32(v26, v29);
        a6 &= 0xFFFFFFEFFFFFFFEFLL;
      }

      if ((a6 & 0x2000000020) == 0x2000000000)
      {
        v30 = a3[6];
        v31 = vmlaq_f32(a2[6], v30, result);
        *(a4 + 384) = v31;
        v32 = vaddq_f32(v30, v31);
        if ((a7 & 0x100000000000) != 0)
        {
          v33 = vaddq_f32(v31, a3[42]);
        }

        else
        {
          v33 = vaddq_f32(v30, v32);
        }

        *(a4 + 400) = v32;
        *(a4 + 416) = v33;
        *(a4 + 432) = vaddq_f32(v30, v33);
        a6 &= 0xFFFFFFDFFFFFFFDFLL;
      }

      if ((a6 & 0x4000000040) == 0x4000000000)
      {
        v34 = a3[7];
        v35 = vmlaq_f32(a2[7], v34, result);
        *(a4 + 448) = v35;
        v36 = vaddq_f32(v34, v35);
        if ((a7 & 0x100000000000) != 0)
        {
          v37 = vaddq_f32(v35, a3[43]);
        }

        else
        {
          v37 = vaddq_f32(v34, v36);
        }

        *(a4 + 464) = v36;
        *(a4 + 480) = v37;
        *(a4 + 496) = vaddq_f32(v34, v37);
        a6 &= 0xFFFFFFBFFFFFFFBFLL;
      }

      if ((a6 & 0x8000000080) == 0x8000000000)
      {
        v38 = a3[8];
        v39 = vmlaq_f32(a2[8], v38, result);
        *(a4 + 512) = v39;
        v40 = vaddq_f32(v38, v39);
        if ((a7 & 0x100000000000) != 0)
        {
          v41 = vaddq_f32(v39, a3[44]);
        }

        else
        {
          v41 = vaddq_f32(v38, v40);
        }

        *(a4 + 528) = v40;
        *(a4 + 544) = v41;
        *(a4 + 560) = vaddq_f32(v38, v41);
        a6 &= 0xFFFFFF7FFFFFFF7FLL;
      }

      if ((a6 & 0x10000000100) == 0x10000000000)
      {
        v42 = a3[9];
        v43 = vmlaq_f32(a2[9], v42, result);
        *(a4 + 576) = v43;
        v44 = vaddq_f32(v42, v43);
        if ((a7 & 0x100000000000) != 0)
        {
          v45 = vaddq_f32(v43, a3[45]);
        }

        else
        {
          v45 = vaddq_f32(v42, v44);
        }

        *(a4 + 592) = v44;
        *(a4 + 608) = v45;
        *(a4 + 624) = vaddq_f32(v42, v45);
        a6 &= 0xFFFFFEFFFFFFFEFFLL;
      }

      if ((a6 & 0x20000000200) == 0x20000000000)
      {
        v46 = a3[10];
        v47 = vmlaq_f32(a2[10], v46, result);
        *(a4 + 640) = v47;
        v48 = vaddq_f32(v46, v47);
        if ((a7 & 0x100000000000) != 0)
        {
          v49 = vaddq_f32(v47, a3[46]);
        }

        else
        {
          v49 = vaddq_f32(v46, v48);
        }

        *(a4 + 656) = v48;
        *(a4 + 672) = v49;
        *(a4 + 688) = vaddq_f32(v46, v49);
        a6 &= 0xFFFFFDFFFFFFFDFFLL;
      }

      if ((a6 & 0x40000000400) == 0x40000000000)
      {
        v50 = a3[11];
        v51 = vmlaq_f32(a2[11], v50, result);
        *(a4 + 704) = v51;
        v52 = vaddq_f32(v50, v51);
        if ((a7 & 0x100000000000) != 0)
        {
          v53 = vaddq_f32(v51, a3[47]);
        }

        else
        {
          v53 = vaddq_f32(v50, v52);
        }

        *(a4 + 720) = v52;
        *(a4 + 736) = v53;
        *(a4 + 752) = vaddq_f32(v50, v53);
        a6 &= 0xFFFFFBFFFFFFFBFFLL;
      }

      if ((a6 & 0x80000000800) == 0x80000000000)
      {
        v54 = a3[12];
        v55 = vmlaq_f32(a2[12], v54, result);
        *(a4 + 768) = v55;
        v56 = vaddq_f32(v54, v55);
        if ((a7 & 0x100000000000) != 0)
        {
          v57 = vaddq_f32(v55, a3[48]);
        }

        else
        {
          v57 = vaddq_f32(v54, v56);
        }

        *(a4 + 784) = v56;
        *(a4 + 800) = v57;
        *(a4 + 816) = vaddq_f32(v54, v57);
        a6 &= 0xFFFFF7FFFFFFF7FFLL;
      }

      if ((a6 & 0x100000001000) == 0x100000000000)
      {
        v58 = a3[13];
        v59 = vmlaq_f32(a2[13], v58, result);
        *(a4 + 832) = v59;
        v60 = vaddq_f32(v58, v59);
        if ((a7 & 0x100000000000) != 0)
        {
          v61 = vaddq_f32(v59, a3[49]);
        }

        else
        {
          v61 = vaddq_f32(v58, v60);
        }

        *(a4 + 848) = v60;
        *(a4 + 864) = v61;
        *(a4 + 880) = vaddq_f32(v58, v61);
        a6 &= 0xFFFFEFFFFFFFEFFFLL;
      }

      if ((a6 & 0x200000002000) == 0x200000000000)
      {
        v62 = a3[14];
        v63 = vmlaq_f32(a2[14], v62, result);
        *(a4 + 896) = v63;
        v64 = vaddq_f32(v62, v63);
        if ((a7 & 0x100000000000) != 0)
        {
          v65 = vaddq_f32(v63, a3[50]);
        }

        else
        {
          v65 = vaddq_f32(v62, v64);
        }

        *(a4 + 912) = v64;
        *(a4 + 928) = v65;
        *(a4 + 944) = vaddq_f32(v62, v65);
        a6 &= 0xFFFFDFFFFFFFDFFFLL;
      }

      if ((a6 & 0x400000004000) == 0x400000000000)
      {
        v66 = a3[15];
        v67 = vmlaq_f32(a2[15], v66, result);
        *(a4 + 960) = v67;
        v68 = vaddq_f32(v66, v67);
        if ((a7 & 0x100000000000) != 0)
        {
          v69 = vaddq_f32(v67, a3[51]);
        }

        else
        {
          v69 = vaddq_f32(v66, v68);
        }

        *(a4 + 976) = v68;
        *(a4 + 992) = v69;
        *(a4 + 1008) = vaddq_f32(v66, v69);
        a6 &= 0xFFFFBFFFFFFFBFFFLL;
      }

      if ((a6 & 0x800000008000) == 0x800000000000)
      {
        v70 = a3[16];
        v71 = vmlaq_f32(a2[16], v70, result);
        *(a4 + 1024) = v71;
        v72 = vaddq_f32(v70, v71);
        if ((a7 & 0x100000000000) != 0)
        {
          v73 = vaddq_f32(v71, a3[52]);
        }

        else
        {
          v73 = vaddq_f32(v70, v72);
        }

        *(a4 + 1040) = v72;
        *(a4 + 1056) = v73;
        *(a4 + 1072) = vaddq_f32(v70, v73);
        a6 &= 0xFFFF7FFFFFFF7FFFLL;
      }

      if ((a6 & 0x1000000010000) == 0x1000000000000)
      {
        v74 = a3[17];
        v75 = vmlaq_f32(a2[17], v74, result);
        *(a4 + 1088) = v75;
        v76 = vaddq_f32(v74, v75);
        if ((a7 & 0x100000000000) != 0)
        {
          v77 = vaddq_f32(v75, a3[53]);
        }

        else
        {
          v77 = vaddq_f32(v74, v76);
        }

        *(a4 + 1104) = v76;
        *(a4 + 1120) = v77;
        *(a4 + 1136) = vaddq_f32(v74, v77);
        a6 &= 0xFFFEFFFFFFFEFFFFLL;
      }

      if ((a6 & 0x2000000020000) == 0x2000000000000)
      {
        v78 = a3[18];
        v79 = vmlaq_f32(a2[18], v78, result);
        *(a4 + 1152) = v79;
        v80 = vaddq_f32(v78, v79);
        if ((a7 & 0x100000000000) != 0)
        {
          v81 = vaddq_f32(v79, a3[54]);
        }

        else
        {
          v81 = vaddq_f32(v78, v80);
        }

        *(a4 + 1168) = v80;
        *(a4 + 1184) = v81;
        *(a4 + 1200) = vaddq_f32(v78, v81);
        a6 &= 0xFFFDFFFFFFFDFFFFLL;
      }

      if ((a6 & 0x4000000040000) == 0x4000000000000)
      {
        v82 = a3[19];
        v83 = vmlaq_f32(a2[19], v82, result);
        *(a4 + 1216) = v83;
        v84 = vaddq_f32(v82, v83);
        if ((a7 & 0x100000000000) != 0)
        {
          v85 = vaddq_f32(v83, a3[55]);
        }

        else
        {
          v85 = vaddq_f32(v82, v84);
        }

        *(a4 + 1232) = v84;
        *(a4 + 1248) = v85;
        *(a4 + 1264) = vaddq_f32(v82, v85);
        a6 &= 0xFFFBFFFFFFFBFFFFLL;
      }

      if ((a6 & 0x8000000080000) == 0x8000000000000)
      {
        v86 = a3[20];
        v87 = vmlaq_f32(a2[20], v86, result);
        *(a4 + 1280) = v87;
        v88 = vaddq_f32(v86, v87);
        if ((a7 & 0x100000000000) != 0)
        {
          v89 = vaddq_f32(v87, a3[56]);
        }

        else
        {
          v89 = vaddq_f32(v86, v88);
        }

        *(a4 + 1296) = v88;
        *(a4 + 1312) = v89;
        *(a4 + 1328) = vaddq_f32(v86, v89);
        a6 &= 0xFFF7FFFFFFF7FFFFLL;
      }

      if ((a6 & 0x10000000100000) == 0x10000000000000)
      {
        v90 = a3[21];
        v91 = vmlaq_f32(a2[21], v90, result);
        *(a4 + 1344) = v91;
        v92 = vaddq_f32(v90, v91);
        if ((a7 & 0x100000000000) != 0)
        {
          v93 = vaddq_f32(v91, a3[57]);
        }

        else
        {
          v93 = vaddq_f32(v90, v92);
        }

        *(a4 + 1360) = v92;
        *(a4 + 1376) = v93;
        *(a4 + 1392) = vaddq_f32(v90, v93);
        a6 &= 0xFFEFFFFFFFEFFFFFLL;
      }

      if ((a6 & 0x20000000200000) == 0x20000000000000)
      {
        v94 = a3[22];
        v95 = vmlaq_f32(a2[22], v94, result);
        *(a4 + 1408) = v95;
        v96 = vaddq_f32(v94, v95);
        if ((a7 & 0x100000000000) != 0)
        {
          v97 = vaddq_f32(v95, a3[58]);
        }

        else
        {
          v97 = vaddq_f32(v94, v96);
        }

        *(a4 + 1424) = v96;
        *(a4 + 1440) = v97;
        *(a4 + 1456) = vaddq_f32(v94, v97);
        a6 &= 0xFFDFFFFFFFDFFFFFLL;
      }

      if ((a6 & 0x40000000400000) == 0x40000000000000)
      {
        v98 = a3[23];
        v99 = vmlaq_f32(a2[23], v98, result);
        *(a4 + 1472) = v99;
        v100 = vaddq_f32(v98, v99);
        if ((a7 & 0x100000000000) != 0)
        {
          v101 = vaddq_f32(v99, a3[59]);
        }

        else
        {
          v101 = vaddq_f32(v98, v100);
        }

        *(a4 + 1488) = v100;
        *(a4 + 1504) = v101;
        *(a4 + 1520) = vaddq_f32(v98, v101);
        a6 &= 0xFFBFFFFFFFBFFFFFLL;
      }

      if ((a6 & 0x80000000800000) == 0x80000000000000)
      {
        v102 = a3[24];
        v103 = vmlaq_f32(a2[24], v102, result);
        *(a4 + 1536) = v103;
        v104 = vaddq_f32(v102, v103);
        if ((a7 & 0x100000000000) != 0)
        {
          v105 = vaddq_f32(v103, a3[60]);
        }

        else
        {
          v105 = vaddq_f32(v102, v104);
        }

        *(a4 + 1552) = v104;
        *(a4 + 1568) = v105;
        *(a4 + 1584) = vaddq_f32(v102, v105);
        a6 &= 0xFF7FFFFFFF7FFFFFLL;
      }

      if ((a6 & 0x100000001000000) == 0x100000000000000)
      {
        v106 = a3[25];
        v107 = vmlaq_f32(a2[25], v106, result);
        *(a4 + 1600) = v107;
        v108 = vaddq_f32(v106, v107);
        if ((a7 & 0x100000000000) != 0)
        {
          v109 = vaddq_f32(v107, a3[61]);
        }

        else
        {
          v109 = vaddq_f32(v106, v108);
        }

        *(a4 + 1616) = v108;
        *(a4 + 1632) = v109;
        *(a4 + 1648) = vaddq_f32(v106, v109);
        a6 &= 0xFEFFFFFFFEFFFFFFLL;
      }

      if ((a6 & 0x200000002000000) == 0x200000000000000)
      {
        v110 = a3[26];
        v111 = vmlaq_f32(a2[26], v110, result);
        *(a4 + 1664) = v111;
        v112 = vaddq_f32(v110, v111);
        if ((a7 & 0x100000000000) != 0)
        {
          v113 = vaddq_f32(v111, a3[62]);
        }

        else
        {
          v113 = vaddq_f32(v110, v112);
        }

        *(a4 + 1680) = v112;
        *(a4 + 1696) = v113;
        *(a4 + 1712) = vaddq_f32(v110, v113);
        a6 &= 0xFDFFFFFFFDFFFFFFLL;
      }

      if ((a6 & 0x400000004000000) == 0x400000000000000)
      {
        v114 = a3[27];
        v115 = vmlaq_f32(a2[27], v114, result);
        *(a4 + 1728) = v115;
        v116 = vaddq_f32(v114, v115);
        if ((a7 & 0x100000000000) != 0)
        {
          v117 = vaddq_f32(v115, a3[63]);
        }

        else
        {
          v117 = vaddq_f32(v114, v116);
        }

        *(a4 + 1744) = v116;
        *(a4 + 1760) = v117;
        *(a4 + 1776) = vaddq_f32(v114, v117);
        a6 &= 0xFBFFFFFFFBFFFFFFLL;
      }

      if ((a6 & 0x800000008000000) == 0x800000000000000)
      {
        v118 = a3[28];
        v119 = vmlaq_f32(a2[28], v118, result);
        *(a4 + 1792) = v119;
        v120 = vaddq_f32(v118, v119);
        if ((a7 & 0x100000000000) != 0)
        {
          v121 = vaddq_f32(v119, a3[64]);
        }

        else
        {
          v121 = vaddq_f32(v118, v120);
        }

        *(a4 + 1808) = v120;
        *(a4 + 1824) = v121;
        *(a4 + 1840) = vaddq_f32(v118, v121);
        a6 &= 0xF7FFFFFFF7FFFFFFLL;
      }

      if ((a6 & 0x1000000010000000) == 0x1000000000000000)
      {
        v122 = a3[29];
        v123 = vmlaq_f32(a2[29], v122, result);
        *(a4 + 1856) = v123;
        v124 = vaddq_f32(v122, v123);
        if ((a7 & 0x100000000000) != 0)
        {
          v125 = vaddq_f32(v123, a3[65]);
        }

        else
        {
          v125 = vaddq_f32(v122, v124);
        }

        *(a4 + 1872) = v124;
        *(a4 + 1888) = v125;
        *(a4 + 1904) = vaddq_f32(v122, v125);
        a6 &= 0xEFFFFFFFEFFFFFFFLL;
      }

      if ((a6 & 0x2000000020000000) == 0x2000000000000000)
      {
        v126 = a3[30];
        v127 = vmlaq_f32(a2[30], v126, result);
        *(a4 + 1920) = v127;
        v128 = vaddq_f32(v126, v127);
        if ((a7 & 0x100000000000) != 0)
        {
          v129 = vaddq_f32(v127, a3[66]);
        }

        else
        {
          v129 = vaddq_f32(v126, v128);
        }

        *(a4 + 1936) = v128;
        *(a4 + 1952) = v129;
        *(a4 + 1968) = vaddq_f32(v126, v129);
        a6 &= 0xDFFFFFFFDFFFFFFFLL;
      }

      if ((a6 & 0x4000000040000000) == 0x4000000000000000)
      {
        v130 = a3[31];
        v131 = vmlaq_f32(a2[31], v130, result);
        *(a4 + 1984) = v131;
        v132 = vaddq_f32(v130, v131);
        if ((a7 & 0x100000000000) != 0)
        {
          v133 = vaddq_f32(v131, a3[67]);
        }

        else
        {
          v133 = vaddq_f32(v130, v132);
        }

        *(a4 + 2000) = v132;
        *(a4 + 2016) = v133;
        *(a4 + 2032) = vaddq_f32(v130, v133);
        a6 &= 0xBFFFFFFFBFFFFFFFLL;
      }

      if ((a6 & 0x8000000080000000) == 0x8000000000000000)
      {
        v134 = a3[32];
        v135 = vmlaq_f32(a2[32], v134, result);
        *(a4 + 2048) = v135;
        v136 = vaddq_f32(v134, v135);
        if ((a7 & 0x100000000000) != 0)
        {
          v137 = vaddq_f32(v135, a3[68]);
        }

        else
        {
          v137 = vaddq_f32(v134, v136);
        }

        *(a4 + 2064) = v136;
        *(a4 + 2080) = v137;
        *(a4 + 2096) = vaddq_f32(v134, v137);
        a6 &= 0x7FFFFFFF7FFFFFFFuLL;
      }
    }

    if (a6 | v9)
    {
      __asm { FMOV            V2.4S, #1.0 }

      v143 = vdivq_f32(_Q2, *(a4 + 2624));
      *(a4 + 2624) = vdupq_lane_s32(*v143.f32, 0);
      *(a4 + 2640) = vdupq_lane_s32(*v143.f32, 1);
      *(a4 + 2656) = vdupq_laneq_s32(v143, 2);
      *(a4 + 2672) = vdupq_laneq_s32(v143, 3);
      if (a6)
      {
        if ((~a6 & 0x100000001) == 0)
        {
          v144 = a3[1];
          v145 = vmlaq_f32(a2[1], v144, result);
          *(a4 + 64) = v145;
          v146 = vaddq_f32(v144, v145);
          if ((a7 & 0x100000000000) != 0)
          {
            v147 = vaddq_f32(v145, a3[37]);
          }

          else
          {
            v147 = vaddq_f32(v144, v146);
          }

          *(a4 + 64) = vmulq_n_f32(v145, v143.f32[0]);
          *(a4 + 80) = vmulq_lane_f32(v146, *v143.f32, 1);
          *(a4 + 96) = vmulq_laneq_f32(v147, v143, 2);
          *(a4 + 112) = vmulq_laneq_f32(vaddq_f32(v144, v147), v143, 3);
        }

        if ((~a6 & 0x200000002) == 0)
        {
          v148 = a3[2];
          v149 = vmlaq_f32(a2[2], v148, result);
          *(a4 + 128) = v149;
          v150 = vaddq_f32(v148, v149);
          if ((a7 & 0x100000000000) != 0)
          {
            v151 = vaddq_f32(v149, a3[38]);
          }

          else
          {
            v151 = vaddq_f32(v148, v150);
          }

          *(a4 + 128) = vmulq_n_f32(v149, v143.f32[0]);
          *(a4 + 144) = vmulq_lane_f32(v150, *v143.f32, 1);
          *(a4 + 160) = vmulq_laneq_f32(v151, v143, 2);
          *(a4 + 176) = vmulq_laneq_f32(vaddq_f32(v148, v151), v143, 3);
        }

        if ((~a6 & 0x400000004) == 0)
        {
          v152 = a3[3];
          v153 = vmlaq_f32(a2[3], v152, result);
          *(a4 + 192) = v153;
          v154 = vaddq_f32(v152, v153);
          if ((a7 & 0x100000000000) != 0)
          {
            v155 = vaddq_f32(v153, a3[39]);
          }

          else
          {
            v155 = vaddq_f32(v152, v154);
          }

          *(a4 + 192) = vmulq_n_f32(v153, v143.f32[0]);
          *(a4 + 208) = vmulq_lane_f32(v154, *v143.f32, 1);
          *(a4 + 224) = vmulq_laneq_f32(v155, v143, 2);
          *(a4 + 240) = vmulq_laneq_f32(vaddq_f32(v152, v155), v143, 3);
        }

        if ((~a6 & 0x800000008) == 0)
        {
          v156 = a3[4];
          v157 = vmlaq_f32(a2[4], v156, result);
          *(a4 + 256) = v157;
          v158 = vaddq_f32(v156, v157);
          if ((a7 & 0x100000000000) != 0)
          {
            v159 = vaddq_f32(v157, a3[40]);
          }

          else
          {
            v159 = vaddq_f32(v156, v158);
          }

          *(a4 + 256) = vmulq_n_f32(v157, v143.f32[0]);
          *(a4 + 272) = vmulq_lane_f32(v158, *v143.f32, 1);
          *(a4 + 288) = vmulq_laneq_f32(v159, v143, 2);
          *(a4 + 304) = vmulq_laneq_f32(vaddq_f32(v156, v159), v143, 3);
        }

        if ((~a6 & 0x1000000010) == 0)
        {
          v160 = a3[5];
          v161 = vmlaq_f32(a2[5], v160, result);
          *(a4 + 320) = v161;
          v162 = vaddq_f32(v160, v161);
          if ((a7 & 0x100000000000) != 0)
          {
            v163 = vaddq_f32(v161, a3[41]);
          }

          else
          {
            v163 = vaddq_f32(v160, v162);
          }

          *(a4 + 320) = vmulq_n_f32(v161, v143.f32[0]);
          *(a4 + 336) = vmulq_lane_f32(v162, *v143.f32, 1);
          *(a4 + 352) = vmulq_laneq_f32(v163, v143, 2);
          *(a4 + 368) = vmulq_laneq_f32(vaddq_f32(v160, v163), v143, 3);
        }

        if ((~a6 & 0x2000000020) == 0)
        {
          v164 = a3[6];
          v165 = vmlaq_f32(a2[6], v164, result);
          *(a4 + 384) = v165;
          v166 = vaddq_f32(v164, v165);
          if ((a7 & 0x100000000000) != 0)
          {
            v167 = vaddq_f32(v165, a3[42]);
          }

          else
          {
            v167 = vaddq_f32(v164, v166);
          }

          *(a4 + 384) = vmulq_n_f32(v165, v143.f32[0]);
          *(a4 + 400) = vmulq_lane_f32(v166, *v143.f32, 1);
          *(a4 + 416) = vmulq_laneq_f32(v167, v143, 2);
          *(a4 + 432) = vmulq_laneq_f32(vaddq_f32(v164, v167), v143, 3);
        }

        if ((~a6 & 0x4000000040) == 0)
        {
          v168 = a3[7];
          v169 = vmlaq_f32(a2[7], v168, result);
          *(a4 + 448) = v169;
          v170 = vaddq_f32(v168, v169);
          if ((a7 & 0x100000000000) != 0)
          {
            v171 = vaddq_f32(v169, a3[43]);
          }

          else
          {
            v171 = vaddq_f32(v168, v170);
          }

          *(a4 + 448) = vmulq_n_f32(v169, v143.f32[0]);
          *(a4 + 464) = vmulq_lane_f32(v170, *v143.f32, 1);
          *(a4 + 480) = vmulq_laneq_f32(v171, v143, 2);
          *(a4 + 496) = vmulq_laneq_f32(vaddq_f32(v168, v171), v143, 3);
        }

        if ((~a6 & 0x8000000080) == 0)
        {
          v172 = a3[8];
          v173 = vmlaq_f32(a2[8], v172, result);
          *(a4 + 512) = v173;
          v174 = vaddq_f32(v172, v173);
          if ((a7 & 0x100000000000) != 0)
          {
            v175 = vaddq_f32(v173, a3[44]);
          }

          else
          {
            v175 = vaddq_f32(v172, v174);
          }

          *(a4 + 512) = vmulq_n_f32(v173, v143.f32[0]);
          *(a4 + 528) = vmulq_lane_f32(v174, *v143.f32, 1);
          *(a4 + 544) = vmulq_laneq_f32(v175, v143, 2);
          *(a4 + 560) = vmulq_laneq_f32(vaddq_f32(v172, v175), v143, 3);
        }

        if ((~a6 & 0x10000000100) == 0)
        {
          v176 = a3[9];
          v177 = vmlaq_f32(a2[9], v176, result);
          *(a4 + 576) = v177;
          v178 = vaddq_f32(v176, v177);
          if ((a7 & 0x100000000000) != 0)
          {
            v179 = vaddq_f32(v177, a3[45]);
          }

          else
          {
            v179 = vaddq_f32(v176, v178);
          }

          *(a4 + 576) = vmulq_n_f32(v177, v143.f32[0]);
          *(a4 + 592) = vmulq_lane_f32(v178, *v143.f32, 1);
          *(a4 + 608) = vmulq_laneq_f32(v179, v143, 2);
          *(a4 + 624) = vmulq_laneq_f32(vaddq_f32(v176, v179), v143, 3);
        }

        if ((~a6 & 0x20000000200) == 0)
        {
          v180 = a3[10];
          v181 = vmlaq_f32(a2[10], v180, result);
          *(a4 + 640) = v181;
          v182 = vaddq_f32(v180, v181);
          if ((a7 & 0x100000000000) != 0)
          {
            v183 = vaddq_f32(v181, a3[46]);
          }

          else
          {
            v183 = vaddq_f32(v180, v182);
          }

          *(a4 + 640) = vmulq_n_f32(v181, v143.f32[0]);
          *(a4 + 656) = vmulq_lane_f32(v182, *v143.f32, 1);
          *(a4 + 672) = vmulq_laneq_f32(v183, v143, 2);
          *(a4 + 688) = vmulq_laneq_f32(vaddq_f32(v180, v183), v143, 3);
        }

        if ((~a6 & 0x40000000400) == 0)
        {
          v184 = a3[11];
          v185 = vmlaq_f32(a2[11], v184, result);
          *(a4 + 704) = v185;
          v186 = vaddq_f32(v184, v185);
          if ((a7 & 0x100000000000) != 0)
          {
            v187 = vaddq_f32(v185, a3[47]);
          }

          else
          {
            v187 = vaddq_f32(v184, v186);
          }

          *(a4 + 704) = vmulq_n_f32(v185, v143.f32[0]);
          *(a4 + 720) = vmulq_lane_f32(v186, *v143.f32, 1);
          *(a4 + 736) = vmulq_laneq_f32(v187, v143, 2);
          *(a4 + 752) = vmulq_laneq_f32(vaddq_f32(v184, v187), v143, 3);
        }

        if ((~a6 & 0x80000000800) == 0)
        {
          v188 = a3[12];
          v189 = vmlaq_f32(a2[12], v188, result);
          *(a4 + 768) = v189;
          v190 = vaddq_f32(v188, v189);
          if ((a7 & 0x100000000000) != 0)
          {
            v191 = vaddq_f32(v189, a3[48]);
          }

          else
          {
            v191 = vaddq_f32(v188, v190);
          }

          *(a4 + 768) = vmulq_n_f32(v189, v143.f32[0]);
          *(a4 + 784) = vmulq_lane_f32(v190, *v143.f32, 1);
          *(a4 + 800) = vmulq_laneq_f32(v191, v143, 2);
          *(a4 + 816) = vmulq_laneq_f32(vaddq_f32(v188, v191), v143, 3);
        }

        if ((~a6 & 0x100000001000) == 0)
        {
          v192 = a3[13];
          v193 = vmlaq_f32(a2[13], v192, result);
          *(a4 + 832) = v193;
          v194 = vaddq_f32(v192, v193);
          if ((a7 & 0x100000000000) != 0)
          {
            v195 = vaddq_f32(v193, a3[49]);
          }

          else
          {
            v195 = vaddq_f32(v192, v194);
          }

          *(a4 + 832) = vmulq_n_f32(v193, v143.f32[0]);
          *(a4 + 848) = vmulq_lane_f32(v194, *v143.f32, 1);
          *(a4 + 864) = vmulq_laneq_f32(v195, v143, 2);
          *(a4 + 880) = vmulq_laneq_f32(vaddq_f32(v192, v195), v143, 3);
        }

        if ((~a6 & 0x200000002000) == 0)
        {
          v196 = a3[14];
          v197 = vmlaq_f32(a2[14], v196, result);
          *(a4 + 896) = v197;
          v198 = vaddq_f32(v196, v197);
          if ((a7 & 0x100000000000) != 0)
          {
            v199 = vaddq_f32(v197, a3[50]);
          }

          else
          {
            v199 = vaddq_f32(v196, v198);
          }

          *(a4 + 896) = vmulq_n_f32(v197, v143.f32[0]);
          *(a4 + 912) = vmulq_lane_f32(v198, *v143.f32, 1);
          *(a4 + 928) = vmulq_laneq_f32(v199, v143, 2);
          *(a4 + 944) = vmulq_laneq_f32(vaddq_f32(v196, v199), v143, 3);
        }

        if ((~a6 & 0x400000004000) == 0)
        {
          v200 = a3[15];
          v201 = vmlaq_f32(a2[15], v200, result);
          *(a4 + 960) = v201;
          v202 = vaddq_f32(v200, v201);
          if ((a7 & 0x100000000000) != 0)
          {
            v203 = vaddq_f32(v201, a3[51]);
          }

          else
          {
            v203 = vaddq_f32(v200, v202);
          }

          *(a4 + 960) = vmulq_n_f32(v201, v143.f32[0]);
          *(a4 + 976) = vmulq_lane_f32(v202, *v143.f32, 1);
          *(a4 + 992) = vmulq_laneq_f32(v203, v143, 2);
          *(a4 + 1008) = vmulq_laneq_f32(vaddq_f32(v200, v203), v143, 3);
        }

        if ((~a6 & 0x800000008000) == 0)
        {
          v204 = a3[16];
          v205 = vmlaq_f32(a2[16], v204, result);
          *(a4 + 1024) = v205;
          v206 = vaddq_f32(v204, v205);
          if ((a7 & 0x100000000000) != 0)
          {
            v207 = vaddq_f32(v205, a3[52]);
          }

          else
          {
            v207 = vaddq_f32(v204, v206);
          }

          *(a4 + 1024) = vmulq_n_f32(v205, v143.f32[0]);
          *(a4 + 1040) = vmulq_lane_f32(v206, *v143.f32, 1);
          *(a4 + 1056) = vmulq_laneq_f32(v207, v143, 2);
          *(a4 + 1072) = vmulq_laneq_f32(vaddq_f32(v204, v207), v143, 3);
        }

        if ((~a6 & 0x1000000010000) == 0)
        {
          v208 = a3[17];
          v209 = vmlaq_f32(a2[17], v208, result);
          *(a4 + 1088) = v209;
          v210 = vaddq_f32(v208, v209);
          if ((a7 & 0x100000000000) != 0)
          {
            v211 = vaddq_f32(v209, a3[53]);
          }

          else
          {
            v211 = vaddq_f32(v208, v210);
          }

          *(a4 + 1088) = vmulq_n_f32(v209, v143.f32[0]);
          *(a4 + 1104) = vmulq_lane_f32(v210, *v143.f32, 1);
          *(a4 + 1120) = vmulq_laneq_f32(v211, v143, 2);
          *(a4 + 1136) = vmulq_laneq_f32(vaddq_f32(v208, v211), v143, 3);
        }

        if ((~a6 & 0x2000000020000) == 0)
        {
          v212 = a3[18];
          v213 = vmlaq_f32(a2[18], v212, result);
          *(a4 + 1152) = v213;
          v214 = vaddq_f32(v212, v213);
          if ((a7 & 0x100000000000) != 0)
          {
            v215 = vaddq_f32(v213, a3[54]);
          }

          else
          {
            v215 = vaddq_f32(v212, v214);
          }

          *(a4 + 1152) = vmulq_n_f32(v213, v143.f32[0]);
          *(a4 + 1168) = vmulq_lane_f32(v214, *v143.f32, 1);
          *(a4 + 1184) = vmulq_laneq_f32(v215, v143, 2);
          *(a4 + 1200) = vmulq_laneq_f32(vaddq_f32(v212, v215), v143, 3);
        }

        if ((~a6 & 0x4000000040000) == 0)
        {
          v216 = a3[19];
          v217 = vmlaq_f32(a2[19], v216, result);
          *(a4 + 1216) = v217;
          v218 = vaddq_f32(v216, v217);
          if ((a7 & 0x100000000000) != 0)
          {
            v219 = vaddq_f32(v217, a3[55]);
          }

          else
          {
            v219 = vaddq_f32(v216, v218);
          }

          *(a4 + 1216) = vmulq_n_f32(v217, v143.f32[0]);
          *(a4 + 1232) = vmulq_lane_f32(v218, *v143.f32, 1);
          *(a4 + 1248) = vmulq_laneq_f32(v219, v143, 2);
          *(a4 + 1264) = vmulq_laneq_f32(vaddq_f32(v216, v219), v143, 3);
        }

        if ((~a6 & 0x8000000080000) == 0)
        {
          v220 = a3[20];
          v221 = vmlaq_f32(a2[20], v220, result);
          *(a4 + 1280) = v221;
          v222 = vaddq_f32(v220, v221);
          if ((a7 & 0x100000000000) != 0)
          {
            v223 = vaddq_f32(v221, a3[56]);
          }

          else
          {
            v223 = vaddq_f32(v220, v222);
          }

          *(a4 + 1280) = vmulq_n_f32(v221, v143.f32[0]);
          *(a4 + 1296) = vmulq_lane_f32(v222, *v143.f32, 1);
          *(a4 + 1312) = vmulq_laneq_f32(v223, v143, 2);
          *(a4 + 1328) = vmulq_laneq_f32(vaddq_f32(v220, v223), v143, 3);
        }

        if ((~a6 & 0x10000000100000) == 0)
        {
          v224 = a3[21];
          v225 = vmlaq_f32(a2[21], v224, result);
          *(a4 + 1344) = v225;
          v226 = vaddq_f32(v224, v225);
          if ((a7 & 0x100000000000) != 0)
          {
            v227 = vaddq_f32(v225, a3[57]);
          }

          else
          {
            v227 = vaddq_f32(v224, v226);
          }

          *(a4 + 1344) = vmulq_n_f32(v225, v143.f32[0]);
          *(a4 + 1360) = vmulq_lane_f32(v226, *v143.f32, 1);
          *(a4 + 1376) = vmulq_laneq_f32(v227, v143, 2);
          *(a4 + 1392) = vmulq_laneq_f32(vaddq_f32(v224, v227), v143, 3);
        }

        if ((~a6 & 0x20000000200000) == 0)
        {
          v228 = a3[22];
          v229 = vmlaq_f32(a2[22], v228, result);
          *(a4 + 1408) = v229;
          v230 = vaddq_f32(v228, v229);
          if ((a7 & 0x100000000000) != 0)
          {
            v231 = vaddq_f32(v229, a3[58]);
          }

          else
          {
            v231 = vaddq_f32(v228, v230);
          }

          *(a4 + 1408) = vmulq_n_f32(v229, v143.f32[0]);
          *(a4 + 1424) = vmulq_lane_f32(v230, *v143.f32, 1);
          *(a4 + 1440) = vmulq_laneq_f32(v231, v143, 2);
          *(a4 + 1456) = vmulq_laneq_f32(vaddq_f32(v228, v231), v143, 3);
        }

        if ((~a6 & 0x40000000400000) == 0)
        {
          v232 = a3[23];
          v233 = vmlaq_f32(a2[23], v232, result);
          *(a4 + 1472) = v233;
          v234 = vaddq_f32(v232, v233);
          if ((a7 & 0x100000000000) != 0)
          {
            v235 = vaddq_f32(v233, a3[59]);
          }

          else
          {
            v235 = vaddq_f32(v232, v234);
          }

          *(a4 + 1472) = vmulq_n_f32(v233, v143.f32[0]);
          *(a4 + 1488) = vmulq_lane_f32(v234, *v143.f32, 1);
          *(a4 + 1504) = vmulq_laneq_f32(v235, v143, 2);
          *(a4 + 1520) = vmulq_laneq_f32(vaddq_f32(v232, v235), v143, 3);
        }

        if ((~a6 & 0x80000000800000) == 0)
        {
          v236 = a3[24];
          v237 = vmlaq_f32(a2[24], v236, result);
          *(a4 + 1536) = v237;
          v238 = vaddq_f32(v236, v237);
          if ((a7 & 0x100000000000) != 0)
          {
            v239 = vaddq_f32(v237, a3[60]);
          }

          else
          {
            v239 = vaddq_f32(v236, v238);
          }

          *(a4 + 1536) = vmulq_n_f32(v237, v143.f32[0]);
          *(a4 + 1552) = vmulq_lane_f32(v238, *v143.f32, 1);
          *(a4 + 1568) = vmulq_laneq_f32(v239, v143, 2);
          *(a4 + 1584) = vmulq_laneq_f32(vaddq_f32(v236, v239), v143, 3);
        }

        if ((~a6 & 0x100000001000000) == 0)
        {
          v240 = a3[25];
          v241 = vmlaq_f32(a2[25], v240, result);
          *(a4 + 1600) = v241;
          v242 = vaddq_f32(v240, v241);
          if ((a7 & 0x100000000000) != 0)
          {
            v243 = vaddq_f32(v241, a3[61]);
          }

          else
          {
            v243 = vaddq_f32(v240, v242);
          }

          *(a4 + 1600) = vmulq_n_f32(v241, v143.f32[0]);
          *(a4 + 1616) = vmulq_lane_f32(v242, *v143.f32, 1);
          *(a4 + 1632) = vmulq_laneq_f32(v243, v143, 2);
          *(a4 + 1648) = vmulq_laneq_f32(vaddq_f32(v240, v243), v143, 3);
        }

        if ((~a6 & 0x200000002000000) == 0)
        {
          v244 = a3[26];
          v245 = vmlaq_f32(a2[26], v244, result);
          *(a4 + 1664) = v245;
          v246 = vaddq_f32(v244, v245);
          if ((a7 & 0x100000000000) != 0)
          {
            v247 = vaddq_f32(v245, a3[62]);
          }

          else
          {
            v247 = vaddq_f32(v244, v246);
          }

          *(a4 + 1664) = vmulq_n_f32(v245, v143.f32[0]);
          *(a4 + 1680) = vmulq_lane_f32(v246, *v143.f32, 1);
          *(a4 + 1696) = vmulq_laneq_f32(v247, v143, 2);
          *(a4 + 1712) = vmulq_laneq_f32(vaddq_f32(v244, v247), v143, 3);
        }

        if ((~a6 & 0x400000004000000) == 0)
        {
          v248 = a3[27];
          v249 = vmlaq_f32(a2[27], v248, result);
          *(a4 + 1728) = v249;
          v250 = vaddq_f32(v248, v249);
          if ((a7 & 0x100000000000) != 0)
          {
            v251 = vaddq_f32(v249, a3[63]);
          }

          else
          {
            v251 = vaddq_f32(v248, v250);
          }

          *(a4 + 1728) = vmulq_n_f32(v249, v143.f32[0]);
          *(a4 + 1744) = vmulq_lane_f32(v250, *v143.f32, 1);
          *(a4 + 1760) = vmulq_laneq_f32(v251, v143, 2);
          *(a4 + 1776) = vmulq_laneq_f32(vaddq_f32(v248, v251), v143, 3);
        }

        if ((~a6 & 0x800000008000000) == 0)
        {
          v252 = a3[28];
          v253 = vmlaq_f32(a2[28], v252, result);
          *(a4 + 1792) = v253;
          v254 = vaddq_f32(v252, v253);
          if ((a7 & 0x100000000000) != 0)
          {
            v255 = vaddq_f32(v253, a3[64]);
          }

          else
          {
            v255 = vaddq_f32(v252, v254);
          }

          *(a4 + 1792) = vmulq_n_f32(v253, v143.f32[0]);
          *(a4 + 1808) = vmulq_lane_f32(v254, *v143.f32, 1);
          *(a4 + 1824) = vmulq_laneq_f32(v255, v143, 2);
          *(a4 + 1840) = vmulq_laneq_f32(vaddq_f32(v252, v255), v143, 3);
        }

        if ((~a6 & 0x1000000010000000) == 0)
        {
          v256 = a3[29];
          v257 = vmlaq_f32(a2[29], v256, result);
          *(a4 + 1856) = v257;
          v258 = vaddq_f32(v256, v257);
          if ((a7 & 0x100000000000) != 0)
          {
            v259 = vaddq_f32(v257, a3[65]);
          }

          else
          {
            v259 = vaddq_f32(v256, v258);
          }

          *(a4 + 1856) = vmulq_n_f32(v257, v143.f32[0]);
          *(a4 + 1872) = vmulq_lane_f32(v258, *v143.f32, 1);
          *(a4 + 1888) = vmulq_laneq_f32(v259, v143, 2);
          *(a4 + 1904) = vmulq_laneq_f32(vaddq_f32(v256, v259), v143, 3);
        }

        if ((~a6 & 0x2000000020000000) == 0)
        {
          v260 = a3[30];
          v261 = vmlaq_f32(a2[30], v260, result);
          *(a4 + 1920) = v261;
          v262 = vaddq_f32(v260, v261);
          if ((a7 & 0x100000000000) != 0)
          {
            v263 = vaddq_f32(v261, a3[66]);
          }

          else
          {
            v263 = vaddq_f32(v260, v262);
          }

          *(a4 + 1920) = vmulq_n_f32(v261, v143.f32[0]);
          *(a4 + 1936) = vmulq_lane_f32(v262, *v143.f32, 1);
          *(a4 + 1952) = vmulq_laneq_f32(v263, v143, 2);
          *(a4 + 1968) = vmulq_laneq_f32(vaddq_f32(v260, v263), v143, 3);
        }

        if ((~a6 & 0x4000000040000000) == 0)
        {
          v264 = a3[31];
          v265 = vmlaq_f32(a2[31], v264, result);
          *(a4 + 1984) = v265;
          v266 = vaddq_f32(v264, v265);
          if ((a7 & 0x100000000000) != 0)
          {
            v267 = vaddq_f32(v265, a3[67]);
          }

          else
          {
            v267 = vaddq_f32(v264, v266);
          }

          *(a4 + 1984) = vmulq_n_f32(v265, v143.f32[0]);
          *(a4 + 2000) = vmulq_lane_f32(v266, *v143.f32, 1);
          *(a4 + 2016) = vmulq_laneq_f32(v267, v143, 2);
          *(a4 + 2032) = vmulq_laneq_f32(vaddq_f32(v264, v267), v143, 3);
        }

        if ((~a6 & 0x8000000080000000) == 0)
        {
          v268 = a3[32];
          v269 = vmlaq_f32(a2[32], v268, result);
          *(a4 + 2048) = v269;
          v270 = vaddq_f32(v268, v269);
          if ((a7 & 0x100000000000) != 0)
          {
            v271 = vaddq_f32(v269, a3[68]);
          }

          else
          {
            v271 = vaddq_f32(v268, v270);
          }

          *(a4 + 2048) = vmulq_n_f32(v269, v143.f32[0]);
          *(a4 + 2064) = vmulq_lane_f32(v270, *v143.f32, 1);
          *(a4 + 2080) = vmulq_laneq_f32(v271, v143, 2);
          *(a4 + 2096) = vmulq_laneq_f32(vaddq_f32(v268, v271), v143, 3);
        }
      }

      if (a5 >> 6)
      {
        if ((a5 & 0x40) != 0)
        {
          v272 = a3[33];
          v273 = vmlaq_f32(a2[33], v272, result);
          *(a4 + 2112) = v273;
          v274 = vaddq_f32(v272, v273);
          if ((a7 & 0x100000000000) != 0)
          {
            v275 = vaddq_f32(v273, a3[69]);
          }

          else
          {
            v275 = vaddq_f32(v272, v274);
          }

          *(a4 + 2112) = vmulq_n_f32(v273, v143.f32[0]);
          *(a4 + 2128) = vmulq_lane_f32(v274, *v143.f32, 1);
          *(a4 + 2144) = vmulq_laneq_f32(v275, v143, 2);
          *(a4 + 2160) = vmulq_laneq_f32(vaddq_f32(v272, v275), v143, 3);
        }

        if ((a5 & 0x80) != 0)
        {
          v276 = a3[34];
          v277 = vmlaq_f32(a2[34], v276, result);
          *(a4 + 2176) = v277;
          v278 = vaddq_f32(v276, v277);
          if ((a7 & 0x100000000000) != 0)
          {
            v279 = vaddq_f32(v277, a3[70]);
          }

          else
          {
            v279 = vaddq_f32(v276, v278);
          }

          *(a4 + 2176) = vmulq_n_f32(v277, v143.f32[0]);
          *(a4 + 2192) = vmulq_lane_f32(v278, *v143.f32, 1);
          *(a4 + 2208) = vmulq_laneq_f32(v279, v143, 2);
          *(a4 + 2224) = vmulq_laneq_f32(vaddq_f32(v276, v279), v143, 3);
        }
      }

      if (v8)
      {
        v280 = a3[35];
        v281 = vmlaq_f32(a2[35], v280, result);
        *(a4 + 2240) = v281;
        v282 = vaddq_f32(v280, v281);
        if ((a7 & 0x100000000000) != 0)
        {
          v283 = vaddq_f32(v281, a3[71]);
        }

        else
        {
          v283 = vaddq_f32(v280, v282);
        }

        *(a4 + 2240) = vmulq_n_f32(v281, v143.f32[0]);
        *(a4 + 2256) = vmulq_lane_f32(v282, *v143.f32, 1);
        *(a4 + 2272) = vmulq_laneq_f32(v283, v143, 2);
        result = vmulq_laneq_f32(vaddq_f32(v280, v283), v143, 3);
        *(a4 + 2288) = result;
      }
    }
  }

  return result;
}

unsigned __int16 glvmOperationKIL@<H0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>)
{
  result = vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[6]))));
  *(a1 + 144) &= ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(*a2)))) & 1) == 0) | (2 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[2])))) & 1) == 0)) & 0xF3 | (4 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(a2[4])))) & 1) == 0)) & 0xF7 | (8 * ((result & 1) == 0));
  return result;
}

float32x4_t glvmPreloadFPTransformFour(float32x4_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float32x4_t *a11, uint64_t a12, int a13, int a14)
{
  v14 = a14;
  v114 = *MEMORY[0x277D85DE8];
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  result.i64[0] = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  memset(v107, 0, sizeof(v107));
  v17 = *(a7 + 128);
  if (!v17)
  {
    v26 = ~a14;
    goto LABEL_25;
  }

  v18 = a7 + 8 * *(a7 + 132);
  v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v22 = (a7 + 8 * *(a7 + 132));
LABEL_9:
    v27 = (v18 + 8 * v17);
    do
    {
      *(v107 + (*v22 & 0xF8)) = v22;
      ++v22;
    }

    while (v22 != v27);
    goto LABEL_11;
  }

  v20 = v19 + 1;
  v21 = (v19 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v22 = (v18 + 8 * v21);
  v23 = (v18 + 8);
  v24 = v21;
  do
  {
    v25 = *v23 & 0xF8;
    *(v107 + (*(v23 - 1) & 0xF8)) = v23 - 1;
    *(v107 + v25) = v23;
    v23 += 2;
    v24 -= 2;
  }

  while (v24);
  if (v20 != v21)
  {
    goto LABEL_9;
  }

LABEL_11:
  v26 = ~a14;
  if (v109)
  {
    v28 = *v109;
    v29 = (*v109 >> 47) + v26;
    if ((*v109 & 0x1000) != 0)
    {
      v29 = a14;
    }

    v30 = a13 + v29 * (*v109 >> 15);
    v31 = (v28 >> 8) & 0xF;
    if (v31 > 4)
    {
      if (v31 - 7 < 2)
      {
        v32 = 8 * v30;
      }

      else if (v31 == 5)
      {
        v32 = 4 * v30;
      }

      else if (v31 == 6)
      {
        v32 = 2 * v30;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 16 * v30;
      if (v31 - 1 >= 4)
      {
        v32 = 0;
      }
    }

    *(a10 + 8 * ((v28 >> 3) - 20)) += v32;
  }

LABEL_25:
  if (*(&v109 + 1))
  {
    v33 = **(&v109 + 1);
    v34 = v26 + (**(&v109 + 1) >> 47);
    if ((**(&v109 + 1) & 0x1000) != 0)
    {
      v34 = a14;
    }

    v35 = a13 + v34 * (**(&v109 + 1) >> 15);
    v36 = (v33 >> 8) & 0xF;
    v37 = 4 * v35;
    v38 = 2 * v35;
    if (v36 != 6)
    {
      v38 = 0;
    }

    if (v36 != 5)
    {
      v37 = v38;
    }

    if (v36 - 7 >= 2)
    {
      v39 = v37;
    }

    else
    {
      v39 = 8 * v35;
    }

    v40 = 16 * v35;
    if (v36 - 1 >= 4)
    {
      v40 = 0;
    }

    if (((v33 >> 8) & 0xF) > 4)
    {
      v40 = v39;
    }

    *(a10 + 8 * ((v33 >> 3) - 20)) += v40;
  }

  if (v110)
  {
    v41 = *v110;
    v42 = v26 + (*v110 >> 47);
    if ((*v110 & 0x1000) != 0)
    {
      v42 = a14;
    }

    v43 = a13 + v42 * (*v110 >> 15);
    v44 = (v41 >> 8) & 0xF;
    v45 = 4 * v43;
    v46 = 2 * v43;
    if (v44 != 6)
    {
      v46 = 0;
    }

    if (v44 != 5)
    {
      v45 = v46;
    }

    if (v44 - 7 >= 2)
    {
      v47 = v45;
    }

    else
    {
      v47 = 8 * v43;
    }

    v48 = 16 * v43;
    if (v44 - 1 >= 4)
    {
      v48 = 0;
    }

    if (((v41 >> 8) & 0xF) > 4)
    {
      v48 = v47;
    }

    *(a10 + 8 * ((v41 >> 3) - 20)) += v48;
  }

  if (*(&v110 + 1))
  {
    v49 = **(&v110 + 1);
    v50 = v26 + (**(&v110 + 1) >> 47);
    if ((**(&v110 + 1) & 0x1000) != 0)
    {
      v50 = a14;
    }

    v51 = a13 + v50 * (**(&v110 + 1) >> 15);
    v52 = (v49 >> 8) & 0xF;
    v53 = 4 * v51;
    v54 = 2 * v51;
    if (v52 != 6)
    {
      v54 = 0;
    }

    if (v52 != 5)
    {
      v53 = v54;
    }

    if (v52 - 7 >= 2)
    {
      v55 = v53;
    }

    else
    {
      v55 = 8 * v51;
    }

    v56 = 16 * v51;
    if (v52 - 1 >= 4)
    {
      v56 = 0;
    }

    if (((v49 >> 8) & 0xF) > 4)
    {
      v56 = v55;
    }

    *(a10 + 8 * ((v49 >> 3) - 20)) += v56;
  }

  if (v111)
  {
    v57 = *v111;
    v58 = v26 + (*v111 >> 47);
    if ((*v111 & 0x1000) != 0)
    {
      v58 = a14;
    }

    v59 = a13 + v58 * (*v111 >> 15);
    v60 = (v57 >> 8) & 0xF;
    v61 = 4 * v59;
    v62 = 2 * v59;
    if (v60 != 6)
    {
      v62 = 0;
    }

    if (v60 != 5)
    {
      v61 = v62;
    }

    if (v60 - 7 >= 2)
    {
      v63 = v61;
    }

    else
    {
      v63 = 8 * v59;
    }

    v64 = 16 * v59;
    if (v60 - 1 >= 4)
    {
      v64 = 0;
    }

    if (((v57 >> 8) & 0xF) > 4)
    {
      v64 = v63;
    }

    *(a10 + 8 * ((v57 >> 3) - 20)) += v64;
  }

  if (*(&v111 + 1))
  {
    v65 = **(&v111 + 1);
    v66 = v26 + (**(&v111 + 1) >> 47);
    if ((**(&v111 + 1) & 0x1000) != 0)
    {
      v66 = a14;
    }

    v67 = a13 + v66 * (**(&v111 + 1) >> 15);
    v68 = (v65 >> 8) & 0xF;
    v69 = 4 * v67;
    v70 = 2 * v67;
    if (v68 != 6)
    {
      v70 = 0;
    }

    if (v68 != 5)
    {
      v69 = v70;
    }

    if (v68 - 7 >= 2)
    {
      v71 = v69;
    }

    else
    {
      v71 = 8 * v67;
    }

    v72 = 16 * v67;
    if (v68 - 1 >= 4)
    {
      v72 = 0;
    }

    if (((v65 >> 8) & 0xF) > 4)
    {
      v72 = v71;
    }

    *(a10 + 8 * ((v65 >> 3) - 20)) += v72;
  }

  if (v112)
  {
    v73 = *v112;
    v74 = v26 + (*v112 >> 47);
    if ((*v112 & 0x1000) != 0)
    {
      v74 = a14;
    }

    v75 = a13 + v74 * (*v112 >> 15);
    v76 = (v73 >> 8) & 0xF;
    v77 = 4 * v75;
    v78 = 2 * v75;
    if (v76 != 6)
    {
      v78 = 0;
    }

    if (v76 != 5)
    {
      v77 = v78;
    }

    if (v76 - 7 >= 2)
    {
      v79 = v77;
    }

    else
    {
      v79 = 8 * v75;
    }

    v80 = 16 * v75;
    if (v76 - 1 >= 4)
    {
      v80 = 0;
    }

    if (((v73 >> 8) & 0xF) > 4)
    {
      v80 = v79;
    }

    *(a10 + 8 * ((v73 >> 3) - 20)) += v80;
  }

  if (*(&v112 + 1))
  {
    v81 = **(&v112 + 1);
    v82 = v26 + (**(&v112 + 1) >> 47);
    if ((**(&v112 + 1) & 0x1000) != 0)
    {
      v82 = a14;
    }

    v83 = a13 + v82 * (**(&v112 + 1) >> 15);
    v84 = (v81 >> 8) & 0xF;
    v85 = 4 * v83;
    v86 = 2 * v83;
    if (v84 != 6)
    {
      v86 = 0;
    }

    if (v84 != 5)
    {
      v85 = v86;
    }

    if (v84 - 7 >= 2)
    {
      v87 = v85;
    }

    else
    {
      v87 = 8 * v83;
    }

    v88 = 16 * v83;
    if (v84 - 1 >= 4)
    {
      v88 = 0;
    }

    if (((v81 >> 8) & 0xF) > 4)
    {
      v88 = v87;
    }

    *(a10 + 8 * ((v81 >> 3) - 20)) += v88;
  }

  if (v113)
  {
    v89 = v26 + (*v113 >> 47);
    if ((*v113 & 0x1000) != 0)
    {
      v89 = a14;
    }

    if ((*v113 & 0x80000000000) != 0)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    *(a10 + 64) += (a13 + v89 * (*v113 >> 15)) << v90;
  }

  if (*(&v113 + 1))
  {
    v91 = **(&v113 + 1);
    v92 = v26 + (**(&v113 + 1) >> 47);
    if ((**(&v113 + 1) & 0x1000) == 0)
    {
      v14 = v92;
    }

    v93 = a13 + v14 * (**(&v113 + 1) >> 15);
    v94 = 8 * v93;
    if ((v91 & 0x80000000000) == 0)
    {
      v94 = v93;
    }

    v95 = 4 * v93;
    if ((v91 & 0x40000000000) == 0)
    {
      v95 = v94;
    }

    *(a10 + 72) += v95;
  }

  v96 = *(a8 + 12);
  v97 = **(&v108 + 1);
  if ((v96 & 2) != 0)
  {
    v98 = 0;
    *(a10 + 80) = 0;
    *(a10 + 84) = dword_23A29C220[a13 & 3];
    *(a10 + 144) = 15;
  }

  else if ((v97 & 0x100000000000) != 0)
  {
    v98 = -(a13 & 1);
    *(a10 + 80) = v98;
    *(a10 + 84) = 228;
  }

  else
  {
    *(a10 + 144) = (15 << (a13 & 3)) & 0xF;
    v98 = -(a13 & 3);
    *(a10 + 80) = v98;
  }

  if ((v15 >> 9) & 1 | v16 | (v15 >> 6) | ((v15 & 0x4100) != 0))
  {
    if ((v96 & 2) != 0)
    {
      result = *a12;
      *(a10 + 112) = *a12;
      if ((v97 & 0x100000000000) != 0)
      {
        *(a10 + 128) = *(a12 + 576);
      }

      v100 = *a11;
      *(a10 + 96) = *a11;
      if ((v15 & 0x1000) == 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      result.f32[0] = v98;
      v99 = vdupq_lane_s32(*result.f32, 0);
      result = *a12;
      *(a10 + 112) = *a12;
      if ((v97 & 0x100000000000) != 0)
      {
        *(a10 + 128) = *(a12 + 576);
      }

      v100 = vmlaq_f32(*a11, result, v99);
      *(a10 + 96) = v100;
      if ((v15 & 0x1000) == 0)
      {
        goto LABEL_161;
      }
    }

    *(a10 + 100) = (v97 >> 47) - v100.f32[1];
    if ((v97 & 0x100000000000) != 0)
    {
      *(a10 + 132) = -*(a10 + 132);
    }

LABEL_161:
    v101 = (v97 >> 40) & 3;
    if (v101)
    {
      __asm { FMOV            V1.4S, #1.0 }

      _Q1.f32[0] = 1.0 / (v101 + 1);
      _Q1.f32[1] = _Q1.f32[0];
      result = vmulq_f32(_Q1, result);
      *(a10 + 96) = vmulq_f32(_Q1, *(a10 + 96));
      *(a10 + 112) = result;
      if ((v97 & 0x100000000000) != 0)
      {
        result = vmulq_f32(_Q1, *(a10 + 128));
        *(a10 + 128) = result;
      }
    }

    else if ((v15 & 0x2000) != 0)
    {
      result = vaddq_f32(*(a10 + 96), xmmword_23A29C1E0);
      *(a10 + 96) = result;
    }
  }

  return result;
}

uint64_t glvmOperationDispatchFP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20 = 0;
  v21 = 0;
  v23 = a17;
  v22 = a18;
  v25 = a15;
  v24 = a16;
  v26 = a14;
  v27 = a10;
  v28 = a9;
  v58 = *MEMORY[0x277D85DE8];
  v29 = *a16;
  memset(v57, 0, sizeof(v57));
  v56[0] = 0;
  v56[1] = 0;
  v52 = v29;
  v55 = vandq_s8(vdupq_n_s32(v29), xmmword_23A29BFD0);
  do
  {
    if (v55.i32[v20])
    {
      v30 = (v20 == 0) | (2 * (v20 == 1)) | (4 * (v20 == 2)) | (8 * (v20 == 3));
      v31 = *(a18 + 8 * *(a19 + 32 * v20));
      if (v21)
      {
        v32 = 0;
        while (v31 != *(v57 + v32))
        {
          if (v21 == ++v32)
          {
            goto LABEL_2;
          }
        }

        *(v56 + v32) |= v30;
      }

      else
      {
        LODWORD(v32) = 0;
      }

      if (v32 == v21)
      {
LABEL_2:
        *(v57 + v21) = v31;
        *(v56 + v21++) = v30;
      }

      v27 = a10;
      v28 = a9;
    }

    ++v20;
  }

  while (v20 != 4);
  if (v21)
  {
    v33 = HIDWORD(a12);
    v34 = a12;
    v35 = a11;
    v36 = v56;
    v37 = v57;
    v38 = v21;
    v53 = a2;
    v54 = result;
    do
    {
      v39 = *v36++;
      *v24 = v39;
      v40 = *v37++;
      v51 = v22;
      v49 = v24;
      v50 = v23;
      v47 = v26;
      v48 = v25;
      v41 = a3;
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = a8;
      glvmInterpretFPTransformFourInner(result, a2, a3, a4, a5, a6, a7, a8, v28, v27, v35, __SPAIR64__(v33, v34), a13, v47, v48, v49, v50, v51, (2 * (v40 & 0x7FFFFFFF)) | a20 & 0xFFFFFFFF00000000);
      v35 = a11;
      v34 = a12;
      v33 = HIDWORD(a12);
      result = v54;
      v28 = a9;
      v27 = a10;
      a3 = v41;
      a4 = v42;
      a5 = v43;
      v26 = a14;
      v25 = a15;
      a6 = v44;
      v24 = a16;
      a7 = v45;
      v23 = a17;
      a2 = v53;
      a8 = v46;
      v22 = a18;
      --v38;
    }

    while (v38);
  }

  *v24 = v52;
  return result;
}

void glvmInterpretFPTransformFourInner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16, float32x4_t *a17, uint64_t a18, unint64_t a19)
{
  v168 = a8;
  v181 = a3;
  v182 = a5;
  v160 = a4;
  v180 = a2;
  v183 = a1;
  v205 = *MEMORY[0x277D85DE8];
  v20 = a19 >> 1;
  v21 = (a6 + 8 * v20);
  v22 = *v21;
  v23 = *(a6 + 128);
  v24 = (a6 + 8 * *(a6 + 132));
  if (v23)
  {
    v25 = 8 * v23;
    v26 = &v24[v23];
    while ((*v24 & 0xF8) != 0x98)
    {
      ++v24;
      v25 -= 8;
      if (!v25)
      {
        v24 = v26;
        break;
      }
    }
  }

  v166 = a18;
  v165 = a17;
  v161 = a16;
  v164 = a15;
  v163 = a14;
  v162 = a13;
  v179 = *(a7 + 12);
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 0;
  memset(v198, 0, sizeof(v198));
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  memset(v197, 0, sizeof(v197));
  memset(v196, 0, sizeof(v196));
  memset(v195, 0, sizeof(v195));
  memset(v194, 0, sizeof(v194));
  memset(v193, 0, sizeof(v193));
  v27 = *(a6 + 120);
  v167 = v27;
  v28 = *(a6 + 72);
  v157 = a7;
  if (v28)
  {
    v174 = *(a6 + 56);
  }

  else
  {
    v174 = 0;
  }

  v29 = (v22 >> 14) & 1;
  v178 = *(a6 + 32);
  v159 = *v24;
  v30 = *(a6 + 124);
  v156 = *(a6 + 8);
  if ((*(a6 + 8 * *(a6 + 116)) & 0x3FC0) == 0x21C0)
  {
    v169 = 0;
    v170 = 0;
    v158 = 0;
    *&v184[8] = 0;
    v185 = 0;
    v175 = 0;
    *v184 = (v22 >> 14) & 1;
    if (v20 != v30)
    {
LABEL_20:
      v172 = HIWORD(a19);
      v173 = WORD2(a19);
      v155 = a12;
      v154 = a11;
      if (v167)
      {
        v36 = v29;
      }

      else
      {
        v36 = 1;
      }

      v171 = v36;
      v152 = (4 * v167);
      v151 = v27 << 8;
      v177 = a9;
      v153 = a10;
      v149 = a19 & 0xFFFFFFFF00000000 | 1;
      v150 = a19 & 0xFFFFFFFF00000000;
      v176 = (a6 + 8 * v30);
      while (1)
      {
        v37 = v21;
        v188 = 0;
        v38 = *v21;
        v39 = v38 & 7;
        v40 = WORD1(v38) & 1;
        v41 = (v38 >> 15) & 1;
        if (v40 | v41)
        {
          v42 = v37[v39 + 1];
          v39 = v39 - (v41 + v40) + ((v38 << 14) >> 31);
        }

        else
        {
          v42 = 0;
        }

        v43 = v182;
        v188 = v37[1];
        if ((a6 + 8 * *(a6 + 108)) != v37)
        {
          v44 = &v37[-2 - ((*v37 >> 3) & 7)];
          v45 = (*v44 >> 6) - 89;
          v46 = v45 > 0x2E;
          v47 = (1 << v45) & 0x400008000001;
          if (!v46 && v47 != 0)
          {
            v49 = v44[1];
            v50 = (v49 & 0x1FC0000) < 0xC0000 && (v49 & 0x100000000) == 0;
            v51 = *v184;
            if (v50)
            {
              v51 = v171;
            }

            *v184 = v51;
          }
        }

        OperationSpec = glvmGetOperationSpec(v37, &v189);
        v187 = 0;
        if (!v39)
        {
          break;
        }

        v58 = v37[2];
        glvmGetSourceOffsetStride(a6, (v38 >> 38) & 7, 0, v58, 4, v179, &v187, &v189, &v192);
        if (v58)
        {
          glvmSetSourceIndirectLimits_3(a6, v58, &v192, v178, v173, v172, v174);
        }

        v67 = (v58 >> 6) & 7;
        if (!v67 || v67 == 5 || v187)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v59, v183, v180, v181, v43, a6, v177, *&v184[4], v175, v185, v198, v58, v192);
          if (v39 == 1)
          {
            break;
          }
        }

        else
        {
          if (v67 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v183, v180, v181, v43, a6, *&v184[4], v185, v198, v58, v192);
          }

          else if (v67 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v183, v180, v181, v43, a6, *&v184[4], v185, v198, v58, v192);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v183, v180, v181, v59, v60, v61, v62, v63, v64, v65, v66, v43, a6, *&v184[4], v185, v198, v58, v192);
          }

          if (v39 == 1)
          {
            break;
          }
        }

        v68 = v37[3];
        glvmGetSourceOffsetStride(a6, (v38 >> 38) & 7, 1, v68, 4, v179, &v187, &v189, &v191);
        if (v68)
        {
          glvmSetSourceIndirectLimits_3(a6, v68, &v191, v178, v173, v172, v174);
        }

        v77 = (v68 >> 6) & 7;
        if (!v77 || v77 == 5 || v187)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v69, v183, v180, v181, v43, a6, v177, *&v184[4], v175, v185, v197, v68, v191);
          if (v39 < 3)
          {
            break;
          }
        }

        else
        {
          if (v77 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v183, v180, v181, v43, a6, *&v184[4], v185, v197, v68, v191);
          }

          else if (v77 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v183, v180, v181, v43, a6, *&v184[4], v185, v197, v68, v191);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v183, v180, v181, v69, v70, v71, v72, v73, v74, v75, v76, v43, a6, *&v184[4], v185, v197, v68, v191);
          }

          if (v39 < 3)
          {
            break;
          }
        }

        v78 = v37[4];
        glvmGetSourceOffsetStride(a6, (v38 >> 38) & 7, 2, v78, 4, v179, &v187, &v189, &v191);
        if (v78)
        {
          glvmSetSourceIndirectLimits_3(a6, v78, &v191, v178, v173, v172, v174);
        }

        v87 = (v78 >> 6) & 7;
        if (!v87 || v87 == 5 || v187)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v79, v183, v180, v181, v43, a6, v177, *&v184[4], v175, v185, v196, v78, v191);
          if (v39 == 3)
          {
            break;
          }
        }

        else
        {
          if (v87 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v183, v180, v181, v43, a6, *&v184[4], v185, v196, v78, v191);
          }

          else if (v87 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v183, v180, v181, v43, a6, *&v184[4], v185, v196, v78, v191);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v183, v180, v181, v79, v80, v81, v82, v83, v84, v85, v86, v43, a6, *&v184[4], v185, v196, v78, v191);
          }

          if (v39 == 3)
          {
            break;
          }
        }

        v96 = v37[5];
        glvmGetSourceOffsetStride(a6, (v38 >> 38) & 7, 3, v96, 4, v179, &v187, &v189, &v191);
        if (v96)
        {
          glvmSetSourceIndirectLimits_3(a6, v96, &v191, v178, v173, v172, v174);
        }

        v105 = (v96 >> 6) & 7;
        if (!v105 || v105 == 5 || v187)
        {
          LOD.n128_f64[0] = glvmLoadSourceAttribFP(v97, v183, v180, v181, v43, a6, v177, *&v184[4], v175, v185, v195, v96, v191);
          if ((v38 & 0x100000000) != 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v105 == 4)
          {
            LOD.n128_f64[0] = glvmLoadSourceAddress(v183, v180, v181, v43, a6, *&v184[4], v185, v195, v96, v191);
          }

          else if (v105 == 1)
          {
            LOD.n128_f64[0] = glvmLoadSourceTemp(v183, v180, v181, v43, a6, *&v184[4], v185, v195, v96, v191);
          }

          else
          {
            OperationSpec = glvmLoadSourceParam(v183, v180, v181, v97, v98, v99, v100, v101, v102, v103, v104, v43, a6, *&v184[4], v185, v195, v96, v191);
          }

          if ((v38 & 0x100000000) != 0)
          {
            goto LABEL_77;
          }
        }

LABEL_78:
        v88 = (v38 >> 6);
        v186 = &v37[(v38 & 7) + 2];
        if (v88 <= 0xA9)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          switch((v38 >> 6))
          {
            case 1u:
              LOD = glvmOperationLIT(v43, v198, v193);
              break;
            case 2u:
              LOD = glvmOperationABS(v43, v198, v193, v189);
              break;
            case 3u:
              glvmOperationCEI(v43, v198[0].i64, v193, v189, LOD);
              break;
            case 4u:
              glvmOperationFRC(v43, v198, v193, v189);
              break;
            case 5u:
              glvmOperationFLR(v43, v198[0].i64, v193, v189, LOD);
              break;
            case 6u:
              LOD = glvmOperationFWD(v43, v198, v193);
              break;
            case 7u:
              LOD = glvmOperationSSG(LOD, v43, v198, v193, v189);
              break;
            case 8u:
              LOD = glvmOperationANY(LOD, v43, v198, v193, v189);
              break;
            case 9u:
              LOD = glvmOperationALL(LOD, v43, v198, v193, v189);
              break;
            case 0xAu:
              LOD = glvmOperationNOT(v43, v198, v193);
              break;
            case 0xBu:
              glvmOperationNSE(v43, v198[0].i32, v193[0].i32, v189);
              break;
            case 0xCu:
              glvmOperationSQT(v43, v198[0].i64, v193, v189);
              break;
            case 0xDu:
              LOD = glvmOperationRSQ(v43, v198, v193);
              break;
            case 0xEu:
              LOD = glvmOperationRCP(v43, v198, v193);
              break;
            case 0xFu:
              glvmOperationRCC();
              break;
            case 0x10u:
              glvmOperationEX2(v43, v198, v193, v189);
              break;
            case 0x11u:
              glvmOperationEXP(v43, v198, v193);
              break;
            case 0x12u:
              LOD = glvmOperationLEN(v43, v198, v193, v189, LOD, v54.f64[0], v55.f64[0], v56.f64[0]);
              break;
            case 0x13u:
              glvmOperationLG2(v43, v198, v193, v189);
              break;
            case 0x14u:
              glvmOperationLOG(v43, v198, v193);
              break;
            case 0x15u:
              LOD = glvmOperationNRM(v43, v198, v193[0].i64, v189, LOD);
              break;
            case 0x16u:
              LOD = glvmOperationRAD(v43, v198, v193);
              break;
            case 0x17u:
              LOD = glvmOperationDEG(v43, v198, v193);
              break;
            case 0x18u:
              LOD.n128_f64[0] = glvmOperationSCS(v43, v198, v193);
              break;
            case 0x19u:
              LOD.n128_f64[0] = glvmOperationSIN(v43, v198, v193);
              break;
            case 0x1Au:
              LOD.n128_f64[0] = glvmOperationCOS(v43, v198, v193);
              break;
            case 0x1Bu:
              LOD = glvmOperationTAN(v43, v198, v193);
              break;
            case 0x1Cu:
              LOD = glvmOperationASN(v43, v198, v193);
              break;
            case 0x1Du:
              LOD = glvmOperationACS(v43, v198, v193);
              break;
            case 0x1Eu:
              if (v39 == 1)
              {
                LOD.n128_f64[0] = glvmOperationATN(v43, v198, v193);
              }

              else
              {
                LOD = glvmOperationATN2(v43, v198, v197, v193);
              }

              break;
            case 0x1Fu:
              glvmOperationADD(v43, v198, v197, v193, v189);
              break;
            case 0x20u:
              glvmOperationSUB(v43, v198, v197, v193, v189);
              break;
            case 0x21u:
              glvmOperationMOD(v43, v198, v197, v193, v189);
              break;
            case 0x22u:
              glvmOperationMUL(v43, v198, v197, v193, v189);
              break;
            case 0x23u:
              glvmOperationMLC();
              break;
            case 0x24u:
              LOD = glvmOperationANL(v43, v198, v197, v193);
              break;
            case 0x25u:
              LOD = glvmOperationORL(v43, v198, v197, v193);
              break;
            case 0x26u:
              LOD = glvmOperationXRL(v43, v198, v197, v193);
              break;
            case 0x27u:
              glvmOperationDOT(LOD.n128_f64[0], v43, v198, v197, v193, v189);
              break;
            case 0x28u:
              glvmOperationDP3(v43, v198, v197, v193, v189);
              break;
            case 0x29u:
              glvmOperationDP4(LOD.n128_f64[0], v43, v198, v197, v193, v189);
              break;
            case 0x2Au:
              LOD = glvmOperationDPH(LOD.n128_f64[0], v43, v198[0].i32, v197[0].i32, v193);
              break;
            case 0x2Bu:
              LOD = glvmOperationDST(v43, v198, v197, v193);
              break;
            case 0x2Cu:
              glvmOperationMIN(v43, v198[0].i64, v197[0].i64, v193, v189);
              break;
            case 0x2Du:
              glvmOperationMAX(v43, v198[0].i64, v197[0].i64, v193, v189);
              break;
            case 0x2Eu:
              LOD.n128_f64[0] = glvmOperationXPD(v43, v198, v197, v193, v189);
              break;
            case 0x2Fu:
              LOD = glvmOperationRFL(LOD, v54.f64[0], v55.f64[0], v56.f64[0], v43, v198, v197, v193, v189);
              break;
            case 0x30u:
              LOD = glvmOperationSTR(v43, v198, v197, v193);
              break;
            case 0x31u:
              LOD = glvmOperationSEQ(LOD, v43, v198, v197, v193, v189);
              break;
            case 0x32u:
              glvmOperationSGE(v43, v198, v197, v193, v189);
              break;
            case 0x33u:
              glvmOperationSGT(v43, v198, v197, v193, v189);
              break;
            case 0x34u:
              glvmOperationSLE(v43, v198, v197, v193, v189);
              break;
            case 0x35u:
              glvmOperationSLT(v43, v198, v197, v193, v189);
              break;
            case 0x36u:
              LOD = glvmOperationSNE(LOD, v43, v198, v197, v193, v189);
              break;
            case 0x37u:
              LOD.n128_f64[0] = glvmOperationSFL(v43, v198, v197, v193);
              break;
            case 0x38u:
              glvmOperationPOW(v43, v198, v197, v193, v189);
              break;
            case 0x39u:
              glvmOperationSEL(v43, v198, v197, v193, v189);
              break;
            case 0x3Au:
              LOD = glvmOperationDIV(LOD, v43, v198, v197, v193, v189);
              break;
            case 0x3Bu:
              LOD = glvmOperationFFW(LOD, v54, v55, v56, v43, v198, v197, v196, v193, v189);
              break;
            case 0x3Cu:
              glvmOperationLRP(v43, v198, v197, v196, v193, v189);
              break;
            case 0x3Du:
              glvmOperationCLM(v43, v198[0].i64, v197[0].i64, v196[0].i64, v193, v189);
              break;
            case 0x3Eu:
              LOD = glvmOperationCMP(v43, v198, v197, v196, v193);
              break;
            case 0x3Fu:
              LOD = glvmOperationMAD(v43, v198, v197, v196, v193, v189);
              break;
            case 0x40u:
              LOD = glvmOperationSMS(v43, v198, v197, v196, v193, v189);
              break;
            case 0x41u:
              glvmOperationSWZ(v43, v198, v193, v42, v189);
              break;
            case 0x42u:
            case 0x43u:
            case 0x44u:
            case 0x45u:
            case 0xA4u:
              v89 = 1;
              goto LABEL_81;
            case 0x46u:
            case 0x47u:
            case 0x82u:
            case 0x83u:
            case 0xA5u:
            case 0xA6u:
              goto LABEL_82;
            case 0x48u:
              LOD = glvmOperationARL(v43, v198, v193);
              break;
            case 0x49u:
              glvmOperationARR();
              break;
            case 0x4Au:
              glvmOperationARA();
              break;
            case 0x4Bu:
            case 0x4Eu:
            case 0x52u:
            case 0x53u:
            case 0x56u:
            case 0x57u:
            case 0x5Au:
            case 0x5Bu:
            case 0x60u:
            case 0x61u:
            case 0x68u:
            case 0x6Fu:
            case 0x72u:
            case 0x75u:
            case 0x76u:
            case 0x77u:
            case 0x78u:
            case 0x79u:
            case 0x99u:
              break;
            case 0x4Cu:
              if (v39 == 1)
              {
                v189 = v149;
                glvmOperationDispatchFP(v183, v180, v181, v160, v43, a6, v157, v168, v177, v153, v154, v155, *&v184[4], v175, v169, v170, v185, v158, v198, v149);
              }

              else
              {
                v189 = (2 * (v188 & 0x3FFFF)) | v150;
                glvmInterpretFPTransformFourInner(v183, v180, v181, v160, v43, a6, v157, v168, v177, v153, v154, v155, *&v184[4], v175, v169, v170, v185, v158, v189);
              }

              if ((v156 & 2) == 0 || *(v177 + 144))
              {
                break;
              }

              return;
            case 0x4Du:
              v125 = a6 + 8 * (v188 & 0x3FFFF);
              v126 = glvmPredicateBRA(v43, v198, v170, (v188 >> 17) & 0x7F00 | (v188 >> 18) & 0x7F | (*(v125 + 8) >> 2) & 0x7F0000);
              goto LABEL_296;
            case 0x4Fu:
              if (v167)
              {
                if (v39 == 1)
                {
                  LOD = vmvnq_s8(vcgezq_f32(v203));
                  LOD.n128_u64[0] = vmovn_s32(LOD);
                  LOD.n128_u16[0] = vmaxv_u16(LOD.n128_u64[0]);
                  v117 = ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v198[0])))) & 1) == 0) | (2 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v199)))) & 1) == 0)) & 0xF3 | (4 * ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v201)))) & 1) == 0)) & 0xF7 | (8 * ((LOD.n128_u8[0] & 1) == 0));
                  if ((v184[0] & 1) == 0)
                  {
                    v117 |= ~*v170;
                  }
                }

                else if (v184[0])
                {
                  v117 = 0;
                }

                else
                {
                  v117 = ~*v170;
                }

                v139 = *(v177 + 144) & v117;
                *(v177 + 144) = v139;
                if (!v139)
                {
                  return;
                }
              }

              else
              {
                if (v39 != 1)
                {
                  *(v177 + 144) = 0;
                  return;
                }

                v137 = v177;
                LOD.n128_u64[0] = glvmOperationKIL(v177, v198);
                if (!*(v137 + 144))
                {
                  return;
                }
              }

              break;
            case 0x50u:
              LOD = glvmOperationDDX(v43, v198, v193);
              break;
            case 0x51u:
              LOD = glvmOperationDDY(v43, v198, v193);
              break;
            case 0x54u:
              v125 = a6 + 8 * (v188 & 0x3FFFF);
              v126 = glvmPredicateBRK(v43, v198, v170, (v188 >> 7) & 0x2000000 | (v188 >> 18) & 0x7F | (*(v125 + 8) >> 2) & 0x7F0000);
LABEL_296:
              v119 = v186;
              if (v126)
              {
                v119 = v125;
              }

              goto LABEL_329;
            case 0x55u:
              if (!glvmPredicateIF(v43, v198, v170, v189, (v188 >> 18) & 0x7F))
              {
                goto LABEL_241;
              }

              goto LABEL_219;
            case 0x58u:
              if (!glvmPredicateELSE(v43, v198, v170, (v188 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x59u:
              glvmPredicateENDIF(v43, v198, v170, (v188 >> 7) & 0x2000000 | (v188 >> 18) & 0x7F | (v188 >> 17) & 0x7F00);
              break;
            case 0x5Cu:
              glvmOperationPK2H(v43, v198, v193);
              break;
            case 0x5Du:
              glvmOperationPK2US(v43, v198, v193);
              break;
            case 0x5Eu:
              glvmOperationPK4B(v43, v198, v193);
              break;
            case 0x5Fu:
              glvmOperationPK4UB(v43, v198, v193);
              break;
            case 0x62u:
            case 0x63u:
LABEL_81:
              v90 = 1;
              v91 = v89;
LABEL_82:
              v92 = (a6 + 8 * *(a6 + 92) + ((v42 >> 35) & 0x7F0));
              v93 = *v92;
              if ((v189 & 0x100) != 0 && (v38 & 0x3F00 | 0x80) == 0x1180 || v88 - 167 <= 0xFFFFFFFD && (v189 & 0x1F000000) == 0x11000000)
              {
                glvmOperationMOV(v182, v197, v194, 0x400004800000000uLL);
              }

              if ((v189 & 0x200) == 0)
              {
                goto LABEL_112;
              }

              if (v88 == 165)
              {
                v94 = 0x400004800000000;
              }

              else
              {
                v94 = 0x100001800000000;
              }

              switch(v39)
              {
                case 2u:
                  v95 = v197;
                  break;
                case 4u:
                  v95 = v195;
                  break;
                case 3u:
                  v95 = v196;
                  break;
                default:
                  goto LABEL_112;
              }

              glvmOperationMOV(v182, v95, v195, v94);
LABEL_112:
              if (v88 == 166)
              {
                v108 = BYTE3(v189) & 0x1F;
                if (v108 <= 0x11 && ((1 << v108) & 0x219E0) != 0)
                {
                  v109 = v182;
                  glvmOperationMOV(v182, v195, v194, 0x400004800000000uLL);
                  glvmOperationMOV(v109, v196, v195, 0x400004800000000uLL);
                  v107 = v109;
                  goto LABEL_120;
                }

                glvmOperationMOV(v182, v196, v194, 0x400004800000000uLL);
                if (v39 == 4)
                {
                  v136 = v182;
                  glvmOperationMOV(v182, v195, v196, 0x100001800000000uLL);
                }

                else
                {
                  v136 = v182;
                  glvmOperationZERO(v182, v196, 0x400000800000000uLL);
                }

                v133 = v195;
                v134 = v136;
                v135 = 0x400004800000000;
              }

              else
              {
                if (v88 != 165)
                {
                  goto LABEL_121;
                }

                v106 = BYTE3(v189) & 0x1F;
                if (v106 <= 0x11 && ((1 << v106) & 0x219E0) != 0 || ((v131 = v39 == 2, (v189 & 0x200) == 0) ? (v132 = 1) : (v131 = 0, v132 = v39 != 3), !v131 && v132))
                {
                  v107 = v182;
LABEL_120:
                  glvmOperationZERO(v107, v196, 0x400000800000000uLL);
                  goto LABEL_121;
                }

                v133 = v196;
                v134 = v182;
                v135 = 0x100001800000000;
              }

              glvmOperationMOV(v134, v197, v133, v135);
LABEL_121:
              v110 = *v92;
              v111 = v91 ^ 1;
              if ((*v92 & 0x400000000000000) == 0)
              {
                v111 = 1;
              }

              if ((v111 & 1) == 0 && (v88 == 164 || (v110 & 0x2000000000000000) != 0 || ((v110 >> 44) & 1) != ((v110 >> 45) & 7)))
              {
                v112 = v182;
                glvmOperationDDX(v182, v198, v197);
                glvmOperationDDY(v112, v198, v196);
                v110 = *v92;
              }

              v113 = v93 & 0xDFFFFFFFFFFFFFFFLL;
              if (v90)
              {
                v113 = v93;
              }

              if ((v110 & 0x400000000000000) != 0)
              {
                v43 = v182;
                switch(v88)
                {
                  case 0xA4u:
                    LOD = glvmSamplerQueryLOD(v183, v182, v168, v198, v197, v196, v195, v194, v193, v113, v92[1], v189);
                    break;
                  case 0x83u:
                    LOD = glvmSamplerSize(v183, v182, v168, v198, v197, v196, v195, v194, v193, v113, v92[1], v189);
                    break;
                  case 0x82u:
                    LOD = glvmSamplerFetch(v183, v182, v168, v198, v197, v196, v195, v194, v193, v113, v92[1], HIDWORD(v92[1]), v189);
                    break;
                  default:
                    glvmSamplerSample(v183, v182, v168, v198, v197, v196, v195, v194, v193, v113, v92[1], v189);
                    break;
                }

                if ((v189 & 0x800000) != 0)
                {
                  v114 = v92[1];
                  if (!(v114 >> 28) || (v115 = v114 >> 28, v115 == 10) || v115 == 5)
                  {
                    LOD = glvmOperationSAT(v43, v193, v193);
                  }
                }
              }

              else
              {
                v43 = v182;
                glvmSamplerInvalid(v183, v182, v168, v198, v197, v196, v195, v194, v193[0].i8, v113, v92[1], v189, SWORD2(v189), SBYTE6(v189), SHIBYTE(v189));
              }

              break;
            case 0x64u:
              glvmOperationUP2H(v43, v198, v193[0].i32);
              break;
            case 0x65u:
              LOD = glvmOperationUP2US(LOD.n128_f32[0], v43, v198, v193);
              break;
            case 0x66u:
              LOD = glvmOperationUP4B(LOD.n128_u64[0], v43, v198[0].i8, v193);
              break;
            case 0x67u:
              LOD = glvmOperationUP4UB(LOD.n128_f32[0], v43, v198, v193);
              break;
            case 0x69u:
              glvmOperationRFR(v43, v198, v197, v196[0].i64, v193, v189, LOD);
              break;
            case 0x6Au:
              v118 = v170;
              if ((*v170 & *(v177 + 144)) == 0)
              {
                break;
              }

              v119 = a6 + 8 * (v188 & 0x3FFFF);
              v120 = (v188 >> 18) & 0x7F;
              v121 = (*(v119 + 8) >> 18) & 0x7F;
              if (v120 <= v121)
              {
                goto LABEL_329;
              }

              v122 = v120 + ~v121;
              if (v122 < 7)
              {
                v123 = 0;
                v124 = (v188 >> 18) & 0x7F;
LABEL_361:
                v147 = &v170[v124];
                do
                {
                  v148 = *v147--;
                  v123 |= v148;
                  LODWORD(v124) = v124 - 1;
                }

                while (v121 < v124);
                goto LABEL_363;
              }

              v140 = v122 + 1;
              v141 = (v122 + 1) & 0x1FFFFFFF8;
              v124 = v120 - v141;
              v142 = &v170[v120 - 3];
              v143 = 0uLL;
              v144 = v141;
              v54 = 0uLL;
              do
              {
                v145 = vrev64q_s32(*v142);
                v55 = vextq_s8(v145, v145, 8uLL);
                v146 = vrev64q_s32(v142[-1]);
                v56 = vextq_s8(v146, v146, 8uLL);
                v143 = vorrq_s8(v55, v143);
                v54 = vorrq_s8(v56, v54);
                v142 -= 2;
                v144 -= 8;
              }

              while (v144);
              LOD = vorrq_s8(v54, v143);
              *&v54.f64[0] = vextq_s8(LOD, LOD, 8uLL).u64[0];
              LOD.n128_u64[0] = vorr_s8(LOD.n128_u64[0], *&v54.f64[0]);
              v123 = LOD.n128_u32[0] | LOD.n128_u32[1];
              if (v140 != v141)
              {
                goto LABEL_361;
              }

LABEL_363:
              if (v123)
              {
                v170[v121] |= *v170;
                *v118 = 0;
              }

              else
              {
LABEL_329:
                v186 = v119;
              }

              break;
            case 0x6Bu:
              glvmPredicateWHILE();
              *v184 = 0;
              break;
            case 0x6Cu:
              if ((*v170 & *(v177 + 144)) == 0 || (v188 & 0x100000000) != 0 && !*v170)
              {
                break;
              }

              v116 = v188 & 0x3FFFF;
              goto LABEL_262;
            case 0x6Eu:
              v130 = (v188 >> 12) & 7;
              if (v130 != 3 && v130 != 5)
              {
                glvmLoadDestTemp(*&v184[4], v185, v193, dword_23A29C270[2 * ((v188 >> 27) & 3)] & ((v188 >> 12) & 0xFF000000 | BYTE4(v188) & 0xF | (v188 >> 6) & 0x1C0 | (v188 >> 2) & 0x1E0000 | dword_23A29C230[2 * ((v188 >> 25) & 3)]) | dword_23A29C290[2 * ((v188 >> 27) & 3)] | dword_23A29C250[2 * ((v188 >> 29) & 3)], v190);
              }

              glvmOperationDSL(v43, v198, v197, v193, v189);
              break;
            case 0x70u:
              glvmOperationEXPE(v43, v198, v193, v189);
              break;
            case 0x71u:
              LOD = glvmOperationLOGE(v43, v198, v193, v189);
              break;
            case 0x73u:
              glvmOperationTARGCONT(v170, (v188 >> 18) & 0x7F);
              break;
            case 0x74u:
              glvmOperationTARGBRK(v170, (v188 >> 18) & 0x7F);
              break;
            case 0x7Au:
              LOD = glvmOperationBDL(v160, v43, v198, v197, v193, v189);
              break;
            case 0x7Bu:
              glvmOperationROUND(v43, v198[0].i64, v193, v189);
              break;
            case 0x7Cu:
              glvmOperationTRUNCATE(v43, v198[0].i64, v193, v189);
              break;
            case 0x7Du:
              LOD = glvmOperationAND(v43, v198, v197, v193);
              break;
            case 0x7Eu:
              LOD = glvmOperationOR(v43, v198, v197, v193);
              break;
            case 0x7Fu:
              LOD = glvmOperationXOR(v43, v198, v197, v193);
              break;
            case 0x80u:
              glvmOperationSHL(v43, v198, v197, v193);
              break;
            case 0x81u:
              glvmOperationSHR(v43, v198, v197, v193, v189);
              break;
            case 0x84u:
              LOD = glvmOperationCOMP(v43, v198, v193);
              break;
            case 0x85u:
              LOD = glvmOperationDISTANCE(v43, v198, v197, v193, v189, LOD);
              break;
            case 0x86u:
              LOD.n128_f64[0] = glvmOperationINVERSESQRT(v43, v198[0].i64, v193, v189);
              break;
            case 0x87u:
              if (v167)
              {
                MEMORY[0x28223BE20](OperationSpec);
                v128 = (&v149 - v127);
                bzero(&v149 - v127, v129);
                v189 = v151;
                v170 = v128;
                glvmOperationInitMasksForNested(v43, v161, v128, v151);
              }

              glvmOperationFUNCSTART();
              v158 = v166;
              *&v184[4] = v162;
              v185 = v165;
              v169 = v164;
              v175 = v163;
              break;
            case 0x88u:
              if ((v188 & 0xFE000000) != 0)
              {
                glvmOperationTARGBRA(v170, (v188 >> 17) & 0x7F00 | (v188 >> 18) & 0x7F);
              }

              else
              {
                glvmOperationRET();
              }

              v119 = v176;
              goto LABEL_329;
            case 0x89u:
              glvmOperationROUNDEVEN(v43, v198[0].i64, v193, v189);
              break;
            case 0x8Au:
              glvmOperationISNAN(v43, v198, v193, v189);
              break;
            case 0x8Bu:
              glvmOperationISINF(v43, v198, v193, v189);
              break;
            case 0x8Cu:
              if (!glvmPredicateSWITCH(v43, v198, v170, v189, (v188 >> 18) & 0x7F))
              {
LABEL_241:
                *v184 = 0;
                break;
              }

LABEL_219:
              *v184 = 0;
LABEL_261:
              v116 = v188 & 0x3FFFF;
LABEL_262:
              v119 = a6 + 8 * v116;
              goto LABEL_329;
            case 0x8Du:
              if (!glvmPredicateCASE(v43, v198, v197, v170, v189, (v188 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x8Eu:
              if (!glvmPredicateDEFAULT(v43, v198, v170, (v188 >> 18) & 0x7F))
              {
                break;
              }

              goto LABEL_261;
            case 0x8Fu:
              if (!glvmPredicateENDSWITCH(v43, v198, v170, (v188 >> 7) & 0x2000000 | (v188 >> 18) & 0x7F | ((*v37 >> 46 != 0) << 26)))
              {
                break;
              }

              goto LABEL_261;
            case 0x90u:
              glvmOperationSINH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x91u:
              glvmOperationCOSH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x92u:
              glvmOperationTANH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x93u:
              glvmOperationASINH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x94u:
              glvmOperationACOSH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x95u:
              glvmOperationATANH(v43, v198[0].i32, v193[0].i32);
              break;
            case 0x96u:
              LOD = glvmOperationTO_BITS(v43, v198, v193);
              break;
            case 0x97u:
              LOD = glvmOperationFROM_BITS(v43, v198, v193);
              break;
            case 0x98u:
              glvmOperationLOAD(v160, v43, v198, v197[0].i32, v196, v193, v189);
              break;
            case 0x9Au:
              glvmOperationEXTRACT_EXPONENT(v43, v198, v193, v189);
              break;
            case 0x9Bu:
              glvmOperationEXTRACT_SIGNIFICAND(v43, v198[0].i64, v193, v189);
              break;
            case 0x9Cu:
              glvmOperationLDEXP(v43, v198[0].i64, v197, v193, v189);
              break;
            case 0x9Du:
              glvmOperationPK2W(v43, v198, v193);
              break;
            case 0x9Eu:
              glvmOperationUP2W(v43, v198, v193);
              break;
            case 0x9Fu:
              glvmOperationMUL_HB(v43, v198, v197, v193, v189);
              break;
            case 0xA0u:
              glvmOperationBITFIELD_REVERSE(v43, v198, v193);
              break;
            case 0xA1u:
              glvmOperationBITCOUNT(v43, v198, v193);
              break;
            case 0xA2u:
              glvmOperationFIND_LSB(v43, v198, v193);
              break;
            case 0xA3u:
              glvmOperationFIND_MSB(v43, v198, v193[0].i32, v189);
              break;
            case 0xA7u:
              LOD = glvmOperationINTERPOLATE_AT_CENTROID(v198, v193);
              break;
            case 0xA8u:
              glvmOperationINTERPOLATE_AT_SAMPLE(v177, v153, v154, v155, SHIDWORD(v155), v198, v197, v193, v192, v159, *(a6 + 16));
              break;
            case 0xA9u:
              glvmOperationINTERPOLATE_AT_OFFSET(v177, v153, v154, v155, SHIDWORD(v155), v198, v197, v193, v192, v159, *(a6 + 16));
              break;
            default:
              glvmOperationMOV(v43, v198, v193, v189);
              break;
          }
        }

        if ((v38 & 0x100000000) != 0)
        {
          if ((v189 & 0x1F00000000800000) == 0x400000000000000 && ((*(v37 + 5) & 8) != 0 || (v188 & 0x7000) == 0x3000 && (*(a6 + 8 * (*(a6 + 68) + HIWORD(v188))) & 0x1F00) == 0x400 && *(v183 + 12906)))
          {
            LOD = glvmOperationSAT(v43, v193, v193);
          }

          v138 = (v188 >> 12) & 7;
          if (*v184)
          {
            v21 = v186;
            if (v138 == 1)
            {
              glvmStoreDestTemp(*&v184[4], v185, v193, v188, v190, LOD, v54.f64[0], v55.f64[0], v56, v57);
            }

            else if (v138 == 5 || v138 == 3)
            {
              glvmStoreDestOutputFP(LOD, v54.f64[0], v55.f64[0], v56, v57, v177, *&v184[4], v169, v185, v193, v188, v190);
            }

            else
            {
              glvmStoreDestAddress(*&v184[4], v185, v193[0].i8, v188, v190);
            }
          }

          else
          {
            v21 = v186;
            if (v138 == 1)
            {
              glvmStoreDestTempWithMask(*&v184[4], v185, v193, v170, v188, v190, LOD, v54.f64[0], v55.f64[0], v56, v57);
              *v184 = 0;
            }

            else if (v138 == 5 || v138 == 3)
            {
              glvmStoreDestOutputWithMaskFP(LOD, v54.f64[0], v55.f64[0], v56, v57, v177, *&v184[4], v169, v185, v193, v170, v188, v190);
              *v184 = 0;
            }

            else
            {
              glvmStoreDestAddressWithMask(*&v184[4], v185, v193[0].i8, v170, v188, v190);
              *v184 = 0;
            }
          }
        }

        else
        {
          v21 = v186;
        }

        if (v21 == v176)
        {
          return;
        }
      }

      if ((v38 & 0x100000000) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      OperationSpec = glvmGetDestOffsetCount(a6, (v38 >> 38) & 7, &v188, &v189, 4, v178, &v190);
      goto LABEL_78;
    }
  }

  else
  {
    if (v167)
    {
      v31 = (v22 >> 14) & 1;
    }

    else
    {
      v31 = 1;
    }

    *v184 = v31;
    if (v167)
    {
      MEMORY[0x28223BE20](a1);
      v33 = (&v149 - v32);
      bzero(&v149 - v32, v34);
      v189 = v27 << 8;
      glvmOperationInitMasksForNested(v182, v161, v33, v189);
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v170 = v35;
    glvmOperationFUNCSTART();
    v158 = v166;
    *&v184[4] = v162;
    v185 = v165;
    v169 = v164;
    v175 = v163;
    if (v20 != v30)
    {
      goto LABEL_20;
    }
  }
}

_DWORD *glvmSetSourceIndirectLimits_3(_DWORD *result, unint64_t a2, unint64_t *a3, __int16 a4, __int16 a5, __int16 a6, unsigned __int16 a7)
{
  v7 = (a2 >> 6) & 7;
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return result;
    }

    v8 = *a3;
    v9 = (a4 & 0xFFF) << 16;
    goto LABEL_4;
  }

  v8 = *a3;
  if ((*a3 & 0x3C000000000000) == 0x1C000000000000)
  {
    v10 = v8 & 0xFFDF0000FFFFFFFFLL | (a7 << 32);
    goto LABEL_16;
  }

  v11 = (*&result[2 * result[15] + 2 * HIWORD(a2)] >> 8) & 0x1F;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v9 = (a6 & 0xFFF) << 16;
      goto LABEL_4;
    }

    if (v11 == 6)
    {
      v8 = v8 & 0xFFFFFFFFF003FFFFLL | ((result[34] & 0x3FF) << 18);
      *a3 = v8;
      v12 = result[35] >> 1;
LABEL_15:
      v10 = v8 & 0xFFFF0000FFFFFFFFLL | (v12 << 32);
      goto LABEL_16;
    }

LABEL_14:
    v12 = a7;
    goto LABEL_15;
  }

  if (!v11)
  {
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  v9 = (a5 & 0xFFF) << 16;
LABEL_4:
  v10 = v8 & 0xFFFFFFFFF000FFFFLL | v9;
LABEL_16:
  *a3 = v10;
  return result;
}

void glvmInterpretFPTransformFour(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, float32x4_t *a10, float32x4_t *a11, uint64_t a12)
{
  v240 = a4;
  v241 = a8;
  v12 = a7;
  v248 = a5;
  v238 = a2;
  v239 = a3;
  v243 = a1;
  v272 = *MEMORY[0x277D85DE8];
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v265 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  v258 = 0u;
  v14 = *(a6 + 16);
  v252 = *(a6 + 8);
  v249 = *(a7 + 12);
  v15 = *(a6 + 128);
  v16 = a6 + 8 * *(a6 + 132);
  v17 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v17)
  {
    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v20 = (v16 + 8 * v19);
    v21 = (v16 + 8);
    v22 = v19;
    do
    {
      a1 = *v21 & 0xF8;
      *(&v257 + (*(v21 - 1) & 0xF8)) = v21 - 1;
      *(&v257 + a1) = v21;
      v21 += 2;
      v22 -= 2;
    }

    while (v22);
    if (v18 == v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = (a6 + 8 * *(a6 + 132));
  }

  v23 = (v16 + 8 * v15);
  do
  {
    *(&v257 + (*v20 & 0xF8)) = v20;
    ++v20;
  }

  while (v20 != v23);
LABEL_9:
  v253 = *(&v266 + 1);
  v24 = **(&v266 + 1);
  if (v266)
  {
    v251 = (HIWORD(*v266) | (WORD2(*v266) >> 8)) | HIBYTE(*v266);
    v250 = v266;
  }

  else
  {
    v250 = 0;
    v251 = 255;
  }

  v247 = v266;
  MEMORY[0x28223BE20](a1);
  v237 = &v231 - v25;
  bzero(&v231 - v25, v26);
  MEMORY[0x28223BE20](v27);
  v28 = (&v231 - 336);
  bzero(&v231 - 336, 0xA80uLL);
  MEMORY[0x28223BE20](v29);
  v30 = (&v231 - 80);
  bzero(&v231 - 80, 0x280uLL);
  v32 = *(a6 + 72);
  v245 = v24;
  if (v32)
  {
    v33 = *(a6 + 56);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(a6 + 108);
  v35 = *(a6 + 124);
  v246 = v12;
  v254 = (&v231 - 80);
  v244 = v14;
  if (v34 == v35)
  {
    inited = MEMORY[0x28223BE20](v31);
    v236 = &v227;
    v39 = 0uLL;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v40 = &v256;
    v41 = v245;
  }

  else
  {
    v42 = 0;
    v43 = (a6 + 8 * v34);
    v44 = (a6 + 8 * v35);
    v45 = v43;
    do
    {
      if ((*v45 & 0x3FC0) != 0x12C0)
      {
        break;
      }

      ++v42;
      v45 += (*v45 & 7) + 2;
    }

    while (v45 != v44);
    v46 = MEMORY[0x28223BE20](v31);
    v236 = &v227;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    MEMORY[0x28223BE20](v46);
    v40 = &v231 - v47;
    bzero(&v231 - v47, v48);
    if (v34 == v35)
    {
      v30 = v254;
      v41 = v245;
    }

    else
    {
      v49 = 0;
      v41 = v245;
      do
      {
        if ((*v43 & 0x3FC0) != 0x12C0)
        {
          break;
        }

        inited = glvmOperationInitSub(v40, v49 | ((v43[1] & 0x3FFFFLL) << 32));
        v43 += (*v43 & 7) + 2;
        ++v49;
      }

      while (v43 != v44);
      v12 = v246;
      v30 = v254;
    }

    v14 = v244;
  }

  v255 = a9;
  if (v33)
  {
    v50 = 0;
    v51 = 0;
    v52 = *(a6 + 60);
    v53 = v33;
    do
    {
      v54 = *(a6 + 8 * v52);
      v55 = (v54 >> 8) & 0x1F;
      v56 = HIDWORD(v54) & 0x3FFF;
      if (v56 >= v50)
      {
        v57 = v56 + 1;
      }

      else
      {
        v57 = v50;
      }

      if (v56 >= v51)
      {
        v58 = v56 + 1;
      }

      else
      {
        v58 = v51;
      }

      if (v55 != 1)
      {
        v58 = v51;
      }

      if (v55 == 2)
      {
        v50 = v57;
      }

      else
      {
        v51 = v58;
      }

      ++v52;
      --v53;
    }

    while (v53);
    LODWORD(v235) = v50 << 16;
    HIDWORD(v235) = v51;
  }

  else
  {
    v235 = 0;
  }

  v59 = (v252 >> 6) | (v252 >> 9) & 1 | v14;
  if (((v252 & 0x4000) != 0) | (BYTE1(v252) & 1) | v59)
  {
    v60 = (v252 >> 14) & 1;
    v61 = (v252 & 0x2000) != 0 ? ((*(v253 + 5) & 3) != 0) << 43 : 0;
    v39 = glvmPreloadPositionAttrib(v255, &v231 - 168, v61 | v41 & 0x100000000000 | (((v249 >> 2) & 1) << 42));
    if (v59 | v60)
    {
      v62 = *v28;
      v63 = *(&v231 - 167);
      v38 = *(&v231 - 166);
      v64 = *(&v231 - 165);
      *&v65 = vzip2q_s32(*v28, v63).u64[0];
      DWORD2(v65) = *(&v231 - 331);
      HIDWORD(v65) = *(&v231 - 329);
      *(v30 + 32) = v65;
      v37 = vuzp2q_s32(v62, v63);
      v39.i64[0] = vuzp2q_s32(v37, v62).u64[0];
      v39.i64[1] = __PAIR64__(HIDWORD(v64), v38.u32[3]);
      v227 = v39;
    }
  }

  v253 = *(&v266 + 1);
  if ((*(*(&v266 + 1) + 5) & 3) != 0 && (v66 = *(a6 + 64), v66))
  {
    v67 = (a6 + 8 * *(a6 + 68));
    v68 = 8 * v66;
    while (1)
    {
      v69 = *v67 & 0x1F00;
      v70 = v69 != 3840;
      if (v69 == 3840)
      {
        break;
      }

      ++v67;
      v68 -= 8;
      if (!v68)
      {
        v71 = 0;
        if (*(&v257 + 1))
        {
          goto LABEL_59;
        }

        goto LABEL_66;
      }
    }

    v71 = 1;
    if (!*(&v257 + 1))
    {
      goto LABEL_66;
    }
  }

  else
  {
    v71 = 0;
    v70 = 1;
    if (!*(&v257 + 1))
    {
      goto LABEL_66;
    }
  }

LABEL_59:
  v72 = *(&v259 + 1);
  if (*(&v259 + 1))
  {
    v72 = (**(&v259 + 1) >> 27) & 0x1CLL | (**(&v259 + 1) >> 19) & 0x200 | 1;
  }

  if (v247)
  {
    v72 = v72 & 0xFFFFFFFFFFFFFFDFLL | (*v250 >> 19) & 0x20 | 2;
  }

  if (v271)
  {
    v72 = *v271 & 0xFFFF8000 | v72 & 0xFFFFFFFF00007A7FLL | (*v271 >> 2) & 0x400 | (*v271 >> 35) & 0x180;
  }

  inited = glvmRasterOpDepthBoundsTest(v12, v255, (v41 >> 33) & 0x800 | (((v249 >> 1) & 1) << 6) | v72 & 0xFFFFF7BF, v39, *v37.i64, v38);
  if (inited)
  {
    return;
  }

LABEL_66:
  v242 = a12;
  v232 = v258;
  if (v258)
  {
    v73 = *v258;
    if ((*v258 & 0x1000) != 0)
    {
      v71 = 1;
    }

    if ((v73 & 0xC000) != 0)
    {
      inited = glvmRasterOpMultisampleCoverageMask(v243, v248, v255, v242, HIDWORD(v242), v73, v41 & 0x100000000000 | (((v249 >> 1) & 1) << 6) | *v253 & 0x30000000000);
      if (inited)
      {
        return;
      }
    }
  }

  v234 = *(&v258 + 1);
  if (!v71 && !v234 && (v252 & 2) == 0)
  {
    if (*(&v259 + 1))
    {
      if ((v252 & 8) != 0)
      {
        goto LABEL_90;
      }

      v74 = (**(&v259 + 1) >> 27) & 0x1CLL | (**(&v259 + 1) >> 19) & 0x200 | 1;
      v75 = v266;
      if (v266)
      {
LABEL_77:
        v74 = v74 & 0xFFFFFFFFFFFFFFDFLL | (*v75 >> 19) & 0x20 | 2;
      }
    }

    else
    {
      if (!v259)
      {
        goto LABEL_90;
      }

      v74 = 0;
      v75 = v266;
      if (v266)
      {
        goto LABEL_77;
      }
    }

    if (v271)
    {
      v74 = *v271 & 0xFFFF8000 | v74 & 0xFFFFFFFF00007A7FLL | (*v271 >> 2) & 0x400 | (*v271 >> 35) & 0x180;
    }

    v76 = (v249 >> 1) & 1;
    v77 = v74 & 0xFFFFFFFFFFFFF7BFLL | (v76 << 6);
    v78 = v259;
    if (v259)
    {
      v79 = *v259;
      v78 = 1;
      v80 = v77 & 0xFFFFFFFFFFFFF7FFLL | (((v41 & 0x100000000000) != 0) << 11);
      if (!v75)
      {
LABEL_83:
        if (*(&v271 + 1))
        {
          v78 = **(&v271 + 1) & 0xFFFF8000 | v78 & 0xFFFFFFFF00007FD3 | (**(&v271 + 1) >> 7) & 0x20 | (**(&v271 + 1) >> 40) & 0xCLL;
        }

        inited = glvmRasterOpDepthStencilTest(v243, v12, v255, v30, v79, v80, v78 & 0xFFFFFFFFAFLL | (16 * v76) | (((v41 >> 44) & 1) << 6), *v39.i64, v37, v38);
        if (inited)
        {
          return;
        }

        v259 = 0uLL;
        goto LABEL_90;
      }
    }

    else
    {
      LODWORD(v79) = 0;
      v80 = v77 & 0xFFFFFFFFFFFFF7FFLL | (((v41 & 0x100000000000) != 0) << 11);
      if (!v75)
      {
        goto LABEL_83;
      }
    }

    v78 |= (*v75 >> 1) & 0x7F80 | (BYTE2(*v75) << 32) | 2;
    goto LABEL_83;
  }

LABEL_90:
  v81 = a10;
  if (*(a6 + 120))
  {
    MEMORY[0x28223BE20](inited);
    v82 = &v230;
    LODWORD(v230) = 15;
    v233 = v81;
    if (!v59)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v82 = 0;
    v233 = a10;
    if (!v59)
    {
LABEL_92:
      if ((v252 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_106;
    }
  }

  v84 = v82;
  if (v249)
  {
    v85 = v244;
    if ((v244 & 0x400000004) != 0)
    {
      v85 = v244 & 0xFFFFFFFBFFFFFFFBLL | 4;
    }

    if ((v85 & 0x800000008) != 0)
    {
      v244 = v85 & 0xFFFFFFF7FFFFFFF7 | 8;
    }

    else
    {
      v244 = v85;
    }
  }

  glvmPreloadSourceAttribs(v255, v81, a11, (&v231 - 336), v252 & 0x2C0, v244, v41, v39);
  v81 = v233;
  v82 = v84;
  if ((v252 & 0x400) == 0)
  {
LABEL_93:
    if ((v252 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_107;
  }

LABEL_106:
  v86 = *v12;
  *(&v231 - 24) = *v12;
  *(&v231 - 23) = v86;
  *(&v231 - 22) = v86;
  *(&v231 - 21) = v86;
  if ((v252 & 0x800) == 0)
  {
LABEL_94:
    v83 = *(a6 + 48);
    if (!v83)
    {
      goto LABEL_126;
    }

LABEL_108:
    v88 = (a6 + 8 * *(a6 + 52));
    v89 = ((v41 >> 40) & 3) + 1;
    v90 = 1.0 / v89;
    v91 = 8 * v83;
    v92 = SHIDWORD(v242) % v89 * v89;
    v93 = v242 % v89;
    v94 = (v242 + 1) % v89;
    v95 = (v242 + 2) % v89;
    v96 = (v242 + 3) % v89;
    *(&v103 + 1) = 0;
    *&v103 = v90 * ((v242 % v89) + 0.5);
    v97 = v103;
    *(&v97 + 1) = v90 * ((SHIDWORD(v242) % v89) + 0.5);
    v98 = (HIDWORD(v242) + 1) % v89;
    *(&v104 + 1) = 0;
    *&v104 = v90 * (v94 + 0.5);
    v99 = v98 * v89;
    v100 = v104;
    DWORD1(v100) = DWORD1(v97);
    *(&v102 + 1) = 0;
    *(&v101 + 1) = 0;
    *&v101 = v90 * (v95 + 0.5);
    DWORD1(v101) = DWORD1(v97);
    *&v102 = v90 * (v96 + 0.5);
    DWORD1(v102) = DWORD1(v97);
    *(&v103 + 1) = v90 * (v98 + 0.5);
    *(&v104 + 1) = *(&v103 + 1);
    do
    {
      if ((*v88 & 0x7C00) == 0x7000)
      {
        v107 = HIDWORD(*v88) & 0x3FLL;
        switch(v107)
        {
          case '\'':
            *(&v231 - 32) = 1 << (v92 + v93);
            *(&v231 - 28) = 1 << (v94 + v92);
            if ((v41 & 0x100000000000) != 0)
            {
              v111 = v99 + v93;
              v112 = v99 + v94;
            }

            else
            {
              v111 = v95 + v92;
              v112 = v96 + v92;
            }

            LODWORD(v225) = 1 << v111;
            LODWORD(v226) = 1 << v112;
            break;
          case '&':
            *(&v231 - 12) = v97;
            *(&v231 - 11) = v100;
            if ((v41 & 0x100000000000) != 0)
            {
              v105 = v103;
              v106 = v104;
            }

            else
            {
              v105 = v101;
              v106 = v102;
            }

            *(&v231 - 10) = v105;
            *(&v231 - 9) = v106;
            break;
          case '%':
            *(&v231 - 64) = v93 + v92;
            *(&v231 - 60) = v94 + v92;
            if ((v41 & 0x100000000000) != 0)
            {
              v108 = v94;
              v109 = v93;
              v110 = v99;
            }

            else
            {
              v108 = v96;
              v109 = v95;
              v110 = v92;
            }

            *(&v231 - 56) = v110 + v109;
            *(&v231 - 52) = v110 + v108;
            break;
        }
      }

      ++v88;
      v91 -= 8;
    }

    while (v91);
    goto LABEL_126;
  }

LABEL_107:
  v87 = v12[1];
  *(&v231 - 20) = v87;
  *(&v231 - 19) = v87;
  *(&v231 - 18) = v87;
  *(&v231 - 17) = v87;
  v83 = *(a6 + 48);
  if (v83)
  {
    goto LABEL_108;
  }

LABEL_126:
  if ((v252 & 8) != 0)
  {
    v113 = vdupq_laneq_s32(*(&v231 - 167), 2);
    *(v30 + 32) = vdupq_laneq_s32(*v28, 2);
    *(v30 + 33) = v113;
    v114 = vdupq_laneq_s32(*(&v231 - 165), 2);
    *(v30 + 34) = vdupq_laneq_s32(*(&v231 - 166), 2);
    *(v30 + 35) = v114;
  }

  glvmInterpretFPTransformFourInner(v243, v238, v239, v240, v248, a6, v12, v241, v255, v81, a11, v242, v237, (&v231 - 336), v30, v82, v236, v40, (2 * *(a6 + 116)) | ((v235 | HIDWORD(v235)) << 32));
  if ((v252 & 2) != 0 && !v255[9].i32[0])
  {
    return;
  }

  v118 = v253;
  v119 = *v253;
  v120 = v251;
  v121 = v233;
  if (v257)
  {
    v122 = 0;
    v123 = v30 + 127;
    v115.i32[0] = 2.0;
    _Q1.i32[0] = 3.0;
    do
    {
      if (((1 << (v122 + 7)) & v120 & v118[1]) != 0)
      {
        v125 = *(&v270 + v122 + 1);
        if (v125)
        {
          if ((*v125 & 0xF00) != 0x400)
          {
            v126 = a11[35].f32[2];
            v127 = v121[35].f32[2] + (v255[5].i32[0] * v126);
            *(v123 - 12) = *(v123 - 12) * v127;
            *(v123 - 8) = (v126 + v127) * *(v123 - 8);
            if ((v41 & 0x100000000000) != 0)
            {
              v128 = v127 + a11[71].f32[2];
              *(v123 - 4) = v128 * *(v123 - 4);
              v124 = v126 + v128;
            }

            else
            {
              *(v123 - 4) = (v127 + (v126 * 2.0)) * *(v123 - 4);
              v124 = v127 + (v126 * 3.0);
            }

            *v117.i32 = v124 * *v123;
            *v123 = *v117.i32;
          }
        }
      }

      --v122;
      v123 -= 16;
    }

    while (v122 != -8);
  }

  LODWORD(v240) = v119;
  LODWORD(v241) = (v119 >> 8) & 0xF;
  v129 = v232;
  if (v232)
  {
    v130 = (32 * v249) & 0x40;
    v131 = *v118 & 0x30000000000 | v245 & 0x100000000000;
    v132 = *v232;
    if ((*v232 & 0x1000) != 0 && v241 != 4)
    {
      v133 = (32 * v249) & 0x40;
      if (glvmRasterOpMultisampleAlphaCoverage(v243, v248, v255, v242, SBYTE4(v242), v254, v132, v131 | v130))
      {
        return;
      }

      v132 = *v129;
      v118 = v253;
      v120 = v251;
      LODWORD(v130) = v133;
    }

    if ((v132 & 0x2000) != 0)
    {
      i32 = v254[31].i32;
      v143 = 7;
      v144 = 216;
      v145 = v130;
      do
      {
        if (((1 << v143) & v120 & v118[1]) != 0)
        {
          v146 = **(&v257 + v144);
          if (v144 != 160)
          {
            v147 = v254;
            *(i32 - 3) = *v254;
            *(i32 - 2) = v147[1];
            *(i32 - 1) = v147[2];
            *i32 = v147[3];
          }

          v145 = (v144 + 96) & 0x38 | v145 & 0xFFFFF0C7 | v146 & 0xF00;
          glvmRasterOpMultisampleAlphaOne(v254->i32, v131 | v145);
          v118 = v253;
          v120 = v251;
        }

        v144 -= 8;
        --v143;
        i32 -= 16;
      }

      while (v144 != 152);
    }
  }

  v135 = v245;
  v134 = v246;
  v136 = v254;
  if (!v70 && glvmRasterOpMultisampleSampleMask(v255, v242, HIDWORD(v242), v254, *v253 & 0x30000000000 | v245 & 0x100000000000))
  {
    return;
  }

  if (v241 != 4 && v234 && glvmRasterOpAlphaTest(v134, v255, v136, *v234))
  {
    return;
  }

  v137 = *(a6 + 96);
  if (v137)
  {
    v138 = *(a6 + 100);
    if (v137 >= 8)
    {
      v139 = v137 & 0xFFFFFFF8;
      v148 = (a6 + 8 * v138 + 32);
      v149 = 0uLL;
      v150.i64[0] = 0x100000001;
      v150.i64[1] = 0x100000001;
      v151 = v139;
      v117 = 0uLL;
      do
      {
        v153 = v148[-2];
        v152 = v148[-1];
        v155 = *v148;
        v154 = v148[1];
        v148 += 4;
        v149 = vorrq_s8(vshlq_u32(v150, vshrq_n_u32(vuzp1q_s32(v153, v152), 0x18uLL)), v149);
        v117 = vorrq_s8(vshlq_u32(v150, vshrq_n_u32(vuzp1q_s32(v155, v154), 0x18uLL)), v117);
        v151 -= 8;
      }

      while (v151);
      v115 = vorrq_s8(v117, v149);
      _Q1 = vextq_s8(v115, v115, 8uLL);
      *v115.f32 = vorr_s8(*v115.f32, *_Q1.f32);
      v140 = v115.i32[0] | v115.i32[1];
      v141 = v253;
      if (v139 == v137)
      {
        goto LABEL_166;
      }
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v141 = v253;
    }

    v156 = a6 + 8 * v139 + 8 * v138;
    v157 = v137 - v139;
    do
    {
      v140 |= 1 << *(v156 + 3);
      v156 += 8;
      --v157;
    }

    while (v157);
LABEL_166:
    LODWORD(v244) = (v140 >> 12) & 1;
    goto LABEL_167;
  }

  LODWORD(v244) = 0;
  v141 = v253;
LABEL_167:
  if ((v241 - 9) <= 1)
  {
    v158 = *v141;
    v159 = *v28;
    if ((v252 & 8) != 0)
    {
      v166 = *v28;
      v166.f32[2] = v136[128];
      v160 = *(&v231 - 167);
      v161 = *(&v231 - 166);
      v165 = v160;
      v165.f32[2] = v136[132];
      *(v136 + 32) = v166;
      *(v136 + 33) = v165;
      v164 = v161;
      v164.f32[2] = v136[136];
      v162 = *(&v231 - 165);
      v163 = v162;
      v163.f32[2] = v136[140];
      *(v136 + 34) = v164;
      *(v136 + 35) = v163;
      if ((v252 & 0x2000) != 0)
      {
LABEL_170:
        v167 = vaddq_f32(v166, xmmword_23A29C210);
        v168 = vaddq_f32(v165, xmmword_23A29C210);
        *(v136 + 32) = v167;
        *(v136 + 33) = v168;
        v169 = vaddq_f32(v164, xmmword_23A29C210);
        v170 = vaddq_f32(v163, xmmword_23A29C210);
        *(v136 + 34) = v169;
        *(v136 + 35) = v170;
        v171 = v167.f32[1];
        v172 = v168.f32[1];
        v173 = v169.f32[1];
        v174 = v170.f32[1];
        if ((v252 & 0x1000) == 0)
        {
LABEL_188:
          if (v260)
          {
            glvmRasterOpFragmentCount(v248, v134, v255);
            v141 = v253;
          }

          v185 = *v141;
          v186 = v240 & 0xF00;
          v187 = HIDWORD(*v141);
          if ((v187 & 0x80) != 0)
          {
            v189 = v186 | 0x38;
            if (v244)
            {
              v186 |= 0x30u;
              if ((v187 & 0x40) != 0)
              {
                v188 = 2;
              }

              else
              {
                v186 = v189;
                v188 = 1;
              }

              goto LABEL_232;
            }

            v190 = *(v136 + 1);
            *(v136 + 28) = *v136;
            *(v136 + 29) = v190;
            v191 = *(v136 + 3);
            *(v136 + 30) = *(v136 + 2);
            *(v136 + 31) = v191;
            LODWORD(v187) = *(v141 + 1);
            if ((v187 & 0x40) == 0)
            {
              v188 = 1;
              v186 |= 0x38u;
              goto LABEL_232;
            }

            v186 |= 0x30u;
            v188 = 2;
          }

          else
          {
            if ((v187 & 0x40) == 0)
            {
              v188 = 0;
              goto LABEL_232;
            }

            v186 |= 0x30u;
            v188 = 1;
            if (v244)
            {
LABEL_232:
              if ((v187 & 0x20) != 0)
              {
                v210 = v186 & 0xFFFFFFC7;
                v186 = v186 & 0xFFFFFFC7 | 0x28;
                if (v244)
                {
                  v211 = v210 | 0x20;
                  if ((v187 & 0x10) != 0)
                  {
                    v186 = v211;
                    v188 += 2;
                  }

                  else
                  {
                    ++v188;
                  }

LABEL_244:
                  if ((v187 & 8) != 0)
                  {
                    v216 = v186 & 0xFFFFFFC7;
                    v186 = v186 & 0xFFFFFFC7 | 0x18;
                    if (v244)
                    {
                      v217 = v216 | 0x10;
                      if ((v187 & 4) != 0)
                      {
                        v186 = v217;
                        v188 += 2;
                      }

                      else
                      {
                        ++v188;
                      }

                      goto LABEL_256;
                    }

                    v218 = *(v136 + 1);
                    *(v136 + 12) = *v136;
                    *(v136 + 13) = v218;
                    v219 = *(v136 + 3);
                    *(v136 + 14) = *(v136 + 2);
                    *(v136 + 15) = v219;
                    LODWORD(v187) = *(v141 + 1);
                    if ((v187 & 4) == 0)
                    {
                      ++v188;
                      goto LABEL_256;
                    }

                    v188 += 2;
                    v186 = v216 | 0x10;
                  }

                  else
                  {
                    if ((v187 & 4) == 0)
                    {
                      goto LABEL_256;
                    }

                    ++v188;
                    v186 = v186 & 0xFFFFFFC7 | 0x10;
                    if (v244)
                    {
                      goto LABEL_256;
                    }
                  }

                  v220 = *(v136 + 1);
                  *(v136 + 8) = *v136;
                  *(v136 + 9) = v220;
                  v221 = *(v136 + 3);
                  *(v136 + 10) = *(v136 + 2);
                  *(v136 + 11) = v221;
                  LODWORD(v187) = *(v141 + 1);
LABEL_256:
                  if ((v187 & 2) != 0)
                  {
                    ++v188;
                    v186 = v186 & 0xFFFFFFC7 | 8;
                    if ((v244 & 1) == 0)
                    {
                      v222 = *(v136 + 1);
                      *(v136 + 4) = *v136;
                      *(v136 + 5) = v222;
                      v223 = *(v136 + 3);
                      *(v136 + 6) = *(v136 + 2);
                      *(v136 + 7) = v223;
                      LODWORD(v187) = *(v141 + 1);
                    }
                  }

                  v224 = v187 & 1;
                  if (v224)
                  {
                    v186 &= 0xFFFFFFC0;
                  }

                  glvmRasterOpWriteFallback(v248, v134, v255, v136, v185 & 0xFFFF80FF00000000 | v135 & 0x100000000000 | v186 & 0xFFFFFFF8 | (v188 + v224 - 1) & 7);
                  return;
                }

                v212 = *(v136 + 1);
                *(v136 + 20) = *v136;
                *(v136 + 21) = v212;
                v213 = *(v136 + 3);
                *(v136 + 22) = *(v136 + 2);
                *(v136 + 23) = v213;
                LODWORD(v187) = *(v141 + 1);
                if ((v187 & 0x10) == 0)
                {
                  ++v188;
                  goto LABEL_244;
                }

                v188 += 2;
                v186 = v210 | 0x20;
              }

              else
              {
                if ((v187 & 0x10) == 0)
                {
                  goto LABEL_244;
                }

                ++v188;
                v186 = v186 & 0xFFFFFFC7 | 0x20;
                if (v244)
                {
                  goto LABEL_244;
                }
              }

              v214 = *(v136 + 1);
              *(v136 + 16) = *v136;
              *(v136 + 17) = v214;
              v215 = *(v136 + 3);
              *(v136 + 18) = *(v136 + 2);
              *(v136 + 19) = v215;
              LODWORD(v187) = *(v141 + 1);
              goto LABEL_244;
            }
          }

          v208 = *(v136 + 1);
          *(v136 + 24) = *v136;
          *(v136 + 25) = v208;
          v209 = *(v136 + 3);
          *(v136 + 26) = *(v136 + 2);
          *(v136 + 27) = v209;
          LODWORD(v187) = *(v141 + 1);
          goto LABEL_232;
        }

LABEL_187:
        v184 = (v158 >> 47);
        v136[129] = v184 - v171;
        v136[133] = v184 - v172;
        v136[137] = v184 - v173;
        v136[141] = v184 - v174;
        goto LABEL_188;
      }
    }

    else
    {
      v160 = *(&v231 - 167);
      v161 = *(&v231 - 166);
      *(v136 + 32) = v159;
      *(v136 + 33) = v160;
      v162 = *(&v231 - 165);
      *(v136 + 34) = v161;
      *(v136 + 35) = v162;
      v163 = v162;
      v164 = v161;
      v165 = v160;
      v166 = v159;
      if ((v252 & 0x2000) != 0)
      {
        goto LABEL_170;
      }
    }

    v171 = *&v159.i32[1];
    v172 = v160.f32[1];
    v173 = v161.f32[1];
    v174 = v162.f32[1];
    if ((v252 & 0x1000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  v175 = *(&v259 + 1);
  v176 = v259;
  if (v259 == 0)
  {
    goto LABEL_207;
  }

  if (*(&v259 + 1))
  {
    v175 = (**(&v259 + 1) >> 27) & 0x1CLL | (**(&v259 + 1) >> 19) & 0x200 | 1;
  }

  v177 = v266;
  if (v266)
  {
    v175 = v175 & 0xFFFFFFFFFFFFFFDFLL | (*v266 >> 19) & 0x20 | 2;
  }

  if (v271)
  {
    v175 = *v271 & 0xFFFF8000 | v175 & 0xFFFFFFFF00007A7FLL | (*v271 >> 2) & 0x400 | (*v271 >> 35) & 0x180;
  }

  if ((v252 & 8) != 0)
  {
    v117 = *(v136 + 132);
    _Q1 = *(v136 + 140);
    v115.i64[0] = vzip1q_s32(*(v136 + 128), v117).u64[0];
    v115.i32[2] = *(v136 + 34);
    v115.i32[3] = _Q1.i32[0];
    if ((v175 & 0x200) == 0)
    {
      __asm { FMOV            V1.4S, #1.0 }

      v115 = vminnmq_f32(vmaxnmq_f32(v115, 0), _Q1);
    }

    *(v136 + 32) = v115;
  }

  if (v176)
  {
    v182 = *v176;
    v183 = 1;
  }

  else
  {
    v183 = 0;
    LODWORD(v182) = 0;
  }

  if (v177)
  {
    v183 |= (*v177 >> 1) & 0x7F80 | (BYTE2(*v177) << 32) | 2;
  }

  v192 = v175 & 0xFFFFFFFFFFFFF7BFLL;
  if (*(&v271 + 1))
  {
    v183 = **(&v271 + 1) & 0xFFFF8000 | v183 & 0xFFFFFFFF00007FD3 | (**(&v271 + 1) >> 7) & 0x20 | (**(&v271 + 1) >> 40) & 0xCLL;
  }

  if ((glvmRasterOpDepthStencilTest(v243, v134, v255, v136, v182, v192 | (((v249 >> 1) & 1) << 6) & 0xFFFFFFFFFFFFF7FFLL | (((v135 >> 44) & 1) << 11), v183 & 0xFFFFFFFFAFLL | (16 * ((v249 >> 1) & 1)) | (((v135 >> 44) & 1) << 6), *v115.i64, _Q1, v117) & 1) == 0)
  {
LABEL_207:
    if (v260)
    {
      glvmRasterOpFragmentCount(v248, v134, v255);
    }

    v193 = 0;
    v252 = v135 & 0x100000000000;
    LODWORD(v249) = (32 * v249) & 0x40;
    v194 = *(&v265 + 1);
    v195 = (v136 + 124);
    v245 = &v264 + 8;
    v196 = 7;
    do
    {
      v197 = *v253;
      if (((1 << v196) & v251 & HIDWORD(*v253)) != 0)
      {
        v198 = (v245 + v193);
        v199 = *(v245 + v193 + 96);
        v200 = *v199;
        if (!((v193 == -56) | v244 & 1))
        {
          v195[-3] = *v136;
          v195[-2] = *(v136 + 4);
          v195[-1] = *(v136 + 8);
          v115 = *(v136 + 12);
          *v195 = v115;
        }

        v201 = *v198;
        v202 = v200 & 0xFFFF800000000000 | v252;
        v203 = ((v193 + 56) & 0x38 | v249 | v197 & 0x2000 | v200 & 0xFFFFDF00) ^ 0x2000;
        if (v250 || v201 || v194)
        {
          glvmRasterOpRead(v255, v254, v202 | v203);
        }

        v204 = *v199 & 0xF00;
        v205 = v246;
        if (v204 != 1024)
        {
          if (v201)
          {
            glvmRasterOpBlend(v246, v248, v254, *v201, v202 | v203, v115, _Q1);
          }

          v206 = (v200 >> 8) & 0xF;
          if (v206 <= 8 && ((1 << v206) & 0x1EC) != 0)
          {
            glvmRasterOpPack(v248, v254, v202 | v203);
          }
        }

        v136 = v254;
        if (v194)
        {
          glvmRasterOpLogicOp(v254, *v194, v202 | v203);
        }

        v207 = v202 | v203;
        if (v247)
        {
          glvmRasterOpMask(v136, *v250, v207, *v115.i64, *_Q1.i64, v117);
        }

        glvmRasterOpWrite(v205, v255, v136, v207);
      }

      v193 -= 8;
      --v196;
      v195 -= 4;
    }

    while (v193 != -64);
  }
}

uint64_t glsmCreateTexture(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x50uLL, 0x850A2C2EuLL);
  if (!v6)
  {
    abort();
  }

  *(v6 + 2) = a2;
  *(v6 + 3) = a3;
  v6[56] = *(a2 + 211);
  *(v6 + 30) = *(a2 + 192);
  *(v6 + 8) = 0;
  *(v6 + 57) = 256;
  v6[59] = 0;
  *(v6 + 4) = 0;
  *a1 = v6;
  return 0;
}

void *glsmAllocateTextureLevels(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 1440 * *(a1 + 56), 0x11AD907CuLL);
  if (!result)
  {
    abort();
  }

  *(a1 + 32) = result;
  return result;
}

void glsmFreeTextureLevelBuffers(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 32);
    do
    {
      v6 = *(v5 + v3 + 72);
      if (v6)
      {
        if (*(v5 + v3 + 64))
        {
          free(v6);
          v5 = *(a1 + 32);
          *(v5 + v3 + 64) = 0;
          v1 = *(a1 + 56);
        }
      }

      *(v5 + v3 + 72) = 0;
      ++v4;
      v3 += 96;
    }

    while (v4 < 15 * v1);
  }
}

void glsmDestroyTexture(void **a1)
{
  if (a1[4])
  {
    glsmFreeTextureLevelBuffers(a1);
    free(a1[4]);
  }

  free(a1);
}

void glsmCleanTextureGeometry(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  v3 = *(result + 24);
  v5 = *(v3 + 20);
  if ((*v4 & 0xF) == 7)
  {
    if (*(v3 + 20))
    {
      glvmSetTextureFormat(result, *(v4 + 192));
      v3 = *(result + 24);
      v5 = *(v3 + 20) & 0xFE;
      *(v3 + 20) = v5;
    }

    if ((v5 & 8) != 0)
    {
      v6 = *v3;
      *(v3 + 4) |= 1u;
      if (v6)
      {
        v7 = *(*v6 + 16) / *(result + 57);
      }

      else
      {
        LODWORD(v7) = 1;
      }

      glsmResetTextureLevel(result, 0, 0, v7, 1u, 1u, 0);
      v33 = -9;
LABEL_61:
      *(*(result + 24) + 20) &= v33;
    }
  }

  else
  {
    if (*(v3 + 20))
    {
      v22 = a2;
      glvmSetTextureFormat(result, *(v4 + 192));
      v23 = *(v4 + 212);
      if (v23 < 0xA)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      if (v23 >= 5)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2;
      }

      if (*(v4 + 212))
      {
        v26 = v25;
      }

      else
      {
        v26 = 1;
      }

      *(result + 58) = v26;
      v27 = *(result + 56);
      if (*(result + 56))
      {
        v28 = 0;
        do
        {
          if (*(v4 + 194))
          {
            if (*(v4 + 194) >> *(v4 + 208) <= 1u)
            {
              v29 = 1;
            }

            else
            {
              v29 = *(v4 + 194) >> *(v4 + 208);
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = *(v4 + 196);
          if (*(v4 + 196) && (*(v4 + 214) & 0x600) != 0)
          {
            if (v30 >> *(v4 + 208) <= 1)
            {
              v30 = 1;
            }

            else
            {
              v30 >>= *(v4 + 208);
            }
          }

          v31 = *(v4 + 198);
          if (*(v4 + 198))
          {
            v32 = *(v4 + 208);
            if ((*(v4 + 214) & 0x1800) != 0)
            {
              if (v31 >> v32 <= 1)
              {
                v31 = 1;
              }

              else
              {
                v31 >>= v32;
              }
            }
          }

          else
          {
            v32 = *(v4 + 208);
          }

          if (v32 <= *(v4 + 210))
          {
            do
            {
              glsmResetTextureLevel(result, v28, v32, v29, v30, v31, v22);
              if (v30 >= 2)
              {
                v30 >>= (*(v4 + 214) & 0x600) != 0;
              }

              if (v31 >= 2)
              {
                v31 >>= (*(v4 + 214) & 0x1800) != 0;
              }

              v29 >>= v29 > 1;
              v21 = v32++ >= *(v4 + 210);
            }

            while (!v21);
            v27 = *(result + 56);
          }

          ++v28;
        }

        while (v28 < v27);
      }

      v33 = -2;
      goto LABEL_61;
    }

    if ((*(v3 + 20) & 4) != 0)
    {
      v8 = *(result + 56);
      if (*(result + 56))
      {
        v9 = 0;
        v10 = 0;
        v11 = *(v4 + 210);
        v12 = 288;
        do
        {
          v13 = *(v4 + 208);
          if (v13 <= v11)
          {
            v14 = 96 * v13;
            v15 = 16 * v13;
            v16 = v12;
            v17 = v9;
            do
            {
              if ((*(*(result + 24) + 2 * v10 + 8) >> v13))
              {
                v18 = *(result + 16);
                if ((*v18 & 0x400) != 0)
                {
                  glvmCalculateSurfaceTextureBase(result, v10, v13);
                  v11 = *(v4 + 210);
                }

                else
                {
                  v19 = (&v18[v15] + v16);
                  v20 = *(result + 32) + v14 + v17;
                  *(v20 + 80) = *v19;
                  *(v20 + 92) = *(v19 - 6);
                  *(v20 + 88) = *(v19 - 2);
                }
              }

              v21 = v13++ >= v11;
              v17 += 96;
              v16 += 32;
            }

            while (!v21);
            v8 = *(result + 56);
          }

          ++v10;
          v9 += 1440;
          v12 += 480;
        }

        while (v10 < v8);
      }
    }
  }
}

void glsmResetTextureLevel(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a1 + 32) + 96 * (15 * a2 + a3);
  v12 = *(a1 + 16);
  v13 = v12;
  v14 = v12[107];
  *(v11 + 16) = a4;
  *(v11 + 20) = a5;
  *(v11 + 24) = a6;
  v15 = *(a1 + 58);
  v16 = ((v14 >> 14) & 2) + v15 * a4;
  v17 = *&vshl_u32(vand_s8(vdup_n_s32(v14), 0xFFFF0000FFFFLL), 0xFFFFFFF5FFFFFFF7) & 0xFFFFFF83FFFFFF83;
  v18 = vceqz_s32(v17);
  *v11 = v16;
  *(v11 + 4) = vmla_s32(vand_s8(v17, vcltz_s32(vshl_n_s32(vdup_n_s32(v14 < 0), 0x1FuLL))), vsub_s32(vbic_s8(vdup_n_s32(v15), v18), v18), __PAIR64__(a6, a5));
  if (a7)
  {
    *v11 = (v16 + 3) & 0xFFFFFFFC;
  }

  if ((*v12 & 0xF) == 0xA)
  {
    a6 /= 6u;
    *(v11 + 24) = a6;
  }

  *(v11 + 32) = a4;
  *(v11 + 36) = a5;
  *(v11 + 40) = a6;
  v19 = *(v11 + 72);
  if (v19 && *(v11 + 64))
  {
    free(v19);
    *(v11 + 64) = 0;
    v13 = *(a1 + 16);
  }

  *(v11 + 72) = 0;
  v20 = *(a1 + 24);
  *(v20 + a2 + 4) |= 1 << a3;
  v21 = *v13;
  if ((v21 & 0x400) != 0)
  {

    glvmCalculateSurfaceTextureBase(a1, a2, a3);
  }

  else
  {
    if ((v21 & 0xF) != 7)
    {
      *(v11 + 92) = v12[240 * a2 + 138 + 16 * a3];
      *(v11 + 88) = *&v12[240 * a2 + 140 + 16 * a3];
      v23 = *&v12[240 * a2 + 144 + 16 * a3];
      goto LABEL_16;
    }

    *(v11 + 92) = a4;
    HIDWORD(v22) = *(a1 + 64);
    LODWORD(v22) = HIDWORD(v22);
    *(v11 + 88) = v22 >> 16;
    if (*v20)
    {
      v23 = ***v20;
LABEL_16:
      *(v11 + 80) = v23;
      return;
    }

    *(v11 + 80) = 0;
  }
}

uint64_t glsmLoadTextureLevelBuffer(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v50 = a1;
  *(a2 + 59) = 1;
  if (*(a2 + 56))
  {
    v4 = a3;
    v6 = 0;
    v41 = 1;
    v7 = 1 << a3;
    v44 = a3;
    v43 = ~(1 << a3);
    v48 = 0u;
    memset(v49, 0, 24);
    v46 = 0u;
    v47 = 0u;
    while (1)
    {
      v8 = *(a2 + 24);
      v9 = *(v8 + 2 * v6 + 8);
      if ((v7 & v9) == 0)
      {
        goto LABEL_60;
      }

      v10 = *(a2 + 32) + 1440 * v6 + 96 * v44;
      v11 = *(a2 + 16);
      v12 = &v11[240 * v6 + 16 * v44];
      v13 = *v11;
      if ((*v11 & 0x400) != 0)
      {
        v14 = *(v10 + 80);
      }

      else
      {
        v14 = *(v12 + 288);
        *(v10 + 80) = v14;
      }

      v15 = *v10;
      v16 = *(v10 + 4);
      v17 = *(v10 + 8);
      v18 = *(a2 + 58);
      if (v14 && *(v10 + 88) == *(a2 + 66) && *(v10 + 90) == *(a2 + 64) && *(v10 + 92) == v15 && v18 == 1)
      {
        if (a4)
        {
          if ((v13 & 0xC00) == 0 && v11[56] != 34237)
          {
LABEL_67:
            v38 = *(v10 + 72);
            if (v38 && *(v10 + 64))
            {
              free(v38);
              v14 = *(v10 + 80);
              v8 = *(a2 + 24);
              LOWORD(v9) = *(v8 + 2 * v6 + 8);
            }

            *(v10 + 64) = 0;
            *(v10 + 72) = v14;
            *(v8 + 2 * v6 + 8) = v9 & v43;
            goto LABEL_60;
          }
        }

        else if ((v13 & 0xC00) == 0)
        {
          goto LABEL_67;
        }
      }

      HIDWORD(v47) = v15 * *(a2 + 57);
      v20 = v17 * v16 * SHIDWORD(v47);
      v22 = *(v10 + 64);
      v21 = *(v10 + 72);
      if (v22 == v20 || v22 == 0 || v21 == 0)
      {
        if (v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        free(v21);
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
      }

      v25 = malloc_type_malloc(v20, 0x850A2C2EuLL);
      if (!v25)
      {
        abort();
      }

      *(v10 + 64) = v20;
      *(v10 + 72) = v25;
LABEL_25:
      if ((v7 & *(*(a2 + 16) + 2 * v6 + 228)) == 0)
      {
        goto LABEL_60;
      }

      if (v18 == 1)
      {
        v26 = 2147479551;
      }

      else
      {
        v26 = 0x7FFFFFFF;
      }

      HIDWORD(v48) = 0;
      LODWORD(v49[0]) = v26;
      v27 = *(a2 + 60);
      if ((v27 + 29328) < 0x24u || v27 == 36975 || (v27 + 32207) <= 0xBu)
      {
        HIDWORD(v48) = 0x100000;
      }

      *(v49 + 12) = 0;
      glgConvertType();
      if (v4)
      {
        v28 = DWORD1(v47);
      }

      else
      {
        v28 = DWORD1(v47);
        if ((*(*(a2 + 16) + 144) & 0xFFFC) != 0x2700)
        {
          goto LABEL_43;
        }
      }

      if (v28 == 19)
      {
        if (DWORD2(v47) == 21)
        {
          v29 = 23;
LABEL_41:
          DWORD2(v47) = v29;
        }

        else if (DWORD2(v47) == 22)
        {
          v29 = 24;
          goto LABEL_41;
        }

        v28 = 19;
      }

LABEL_43:
      v30 = *(a2 + 16);
      if ((*v30 & 0x800) == 0)
      {
        *&v46 = *(v10 + 80);
        if ((v28 - 19) > 1)
        {
          v45[0] = 0.0;
          v45[183] = 0.0;
          glgConvertType();
          v36 = *(v10 + 92);
          v34 = 0;
          LODWORD(v47) = glgGetPixelSize() * v36;
          CompressedImageBytes = *(v12 + 270) * v47;
        }

        else
        {
          CompressedBlockBytes = glgGetCompressedBlockBytes();
          v32 = glgConvertPixelWidthToBlocks();
          LODWORD(v47) = v32 * CompressedBlockBytes / glgGetCompressedBlockHeight();
          CompressedImageBytes = glgGetCompressedImageBytes();
          v34 = 0;
        }

        goto LABEL_50;
      }

      v34 = *(v30 + 256);
      v35 = *(v30 + 248);
      if (!IOSurfaceLockPlane())
      {
        *&v46 = IOSurfaceGetBaseAddressOfPlane(v34, v35);
        LODWORD(v47) = IOSurfaceGetBytesPerRowOfPlane(v34, v35);
        CompressedImageBytes = v47 * *(v12 + 270);
LABEL_50:
        DWORD1(v49[0]) = *(v12 + 268);
        DWORD2(v49[0]) = *(v12 + 270);
        DWORD2(v48) = 2;
        glgConvertType();
        *(&v46 + 1) = *(v10 + 72);
        if ((*(*(a2 + 16) + 1) & 4) != 0)
        {
          *&v46 = v46 + ((DWORD2(v49[0]) - 1) * v47);
          LODWORD(v47) = -v47;
        }

        bzero(v45, 0x2D8uLL);
        if (v18 != 1)
        {
          LODWORD(v45[180]) = 49152;
          v45[0] = v18;
          v45[1] = v18;
        }

        if (*(v12 + 272))
        {
          v37 = 0;
          do
          {
            glgProcessPixelsWithProcessor();
            *&v46 = v46 + CompressedImageBytes;
            *(&v46 + 1) += HIDWORD(v47) * v16;
            ++v37;
          }

          while (v37 < *(v12 + 272));
        }

        *(*(a2 + 24) + 2 * v6 + 8) &= v43;
        if (v34)
        {
          IOSurfaceUnlockPlane();
        }

        v4 = a3;
        goto LABEL_60;
      }

      v41 = 0;
LABEL_60:
      if (++v6 >= *(a2 + 56))
      {
        return v41;
      }
    }
  }

  return 1;
}

uint64_t glsmLoadTextureStructure(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unint64_t *a4, uint64_t a5)
{
  v5 = a5;
  glsmCleanTextureGeometry(a2, a5);
  if (a3)
  {
    result = glvmUpdateTextureStructure(a2, a3, a4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *(a2 + 16);
    result = *(v11 + 209);
    if (!*(v11 + 209))
    {
      return result;
    }
  }

  v12 = *(a2 + 16);
  if ((*v12 & 0xF) == 7)
  {
    v13 = *(a2 + 32);
    if (*(v13 + 64))
    {
      free(*(v13 + 72));
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
    }

    v14 = *(v13 + 80);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = 64;
      v14 = malloc_type_malloc(0x40uLL, 0x850A2C2EuLL);
      if (!v14)
      {
        abort();
      }
    }

    *(v13 + 64) = v15;
    *(v13 + 72) = v14;
    *(a2 + 59) = 1;
    v32 = *(a2 + 24);
    *(v32 + 8) &= ~1u;
LABEL_48:
    *(v32 + 20) = 0;
    return 1;
  }

  if ((*v12 & 0x400) != 0 && !*(v12 + 16))
  {
    return 0;
  }

  if ((*v12 & 0x800) != 0)
  {
    v16 = IOSurfaceGetSeedOfPlane() != *(a2 + 68);
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v17 = *a3;
  v18 = **a3;
  if (v18 != *(a2 + 62))
  {
    v19 = *(a2 + 32);
    if (*v19 <= 7u && *(v19 + 4) <= 7u && (*(v19 + 88) & 0xFFFC) == 0x8C00)
    {
      v20 = *(a2 + 56);
      if (*(a2 + 56))
      {
        v21 = (*(a2 + 24) + 8);
        do
        {
          *v21++ |= 1u;
          --v20;
        }

        while (v20);
        LOWORD(v18) = *v17;
      }
    }
  }

  *(a2 + 62) = v18;
LABEL_25:
  v22 = *(a2 + 16);
  v23 = *(v22 + 214);
  v24 = v23 & 0xF;
  if (v24 > v23 >> 4)
  {
LABEL_43:
    if ((*v22 & 0x400) != 0)
    {
      *(a2 + 68) = *(*(v22 + 16) + 24);
    }

    v32 = *(a2 + 24);
    goto LABEL_48;
  }

  v25 = !v16;
  while (1)
  {
    if ((*v22 & 0x400) != 0)
    {
      if (*(*(v22 + 16) + 24) != *(a2 + 68))
      {
        v29 = *(a2 + 56);
        if (*(a2 + 56))
        {
          v30 = (*(a2 + 24) + 8);
          do
          {
            *v30++ |= 1 << v24;
            --v29;
          }

          while (v29);
        }
      }
    }

    else
    {
      if ((*v22 & 0x800) != 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = *(a2 + 56);
        if (*(a2 + 56))
        {
          v28 = (*(a2 + 24) + 8);
          do
          {
            *v28++ |= 1 << v24;
            --v27;
          }

          while (v27);
        }
      }
    }

    result = glsmLoadTextureLevelBuffer(a1, a2, v24, v5);
    if (!result)
    {
      return result;
    }

    v22 = *(a2 + 16);
    if (v24++ >= *(v22 + 214) >> 4)
    {
      goto LABEL_43;
    }
  }
}

uint64_t glsmCreateSampler(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x850A2C2EuLL);
  if (!v6)
  {
    abort();
  }

  *v6 = a2;
  v6[1] = a3;
  *a1 = v6;
  return 0;
}

uint64_t glsmUpdateTexImageDataInPPStream(uint64_t result, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = HIBYTE(a3[2]) & 1;
  v5 = (2 * a3[22]);
  if (v5)
  {
    v6 = &a3[2 * a3[23]];
    v7 = a2 + 512;
    v8 = 8 * v5;
    do
    {
      v9 = *v6;
      v10 = *v6 & 0x7F;
      if (*(v7 + 8 * v10))
      {
        v11 = (a2 + 16 * v10);
        v12 = *v11;
        v13 = *v11 & 0xFFFFFFFFFFE00000 | v9 & 0x1FFFFF;
        *v6 = *v11;
        v14 = v11[1];
        *v6 = v13;
        v6[1] = v14;
        v15 = v13 & 0xF7FFFFFFFFFFFFFFLL | (((*(**(a2 + 768 + 8 * v10) + 28) + *(result + 13988 + 4 * v10)) != 0.0) << 59);
        *v6 = v15;
        if (*(result + 15440))
        {
          v16 = **(*(v7 + 8 * v10) + 16) & 0xF;
          if (v16)
          {
            v17 = (v16 == 10) << 62;
          }

          else
          {
            v17 = 0x4000000000000000;
          }
        }

        else
        {
          v17 = 0;
        }

        *v6 = v17 | v15 & 0xBFFFFFFFFFFFFFFFLL;
        v18 = (v12 & 0x2000000000000000) != 0 || ((v12 >> 44) & 1) != ((v12 >> 45) & 7);
        v4 |= v18;
      }

      else
      {
        *v6 = v9 & 0xFBFFFFFFFFFFFFFFLL;
      }

      v6 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  if (a4)
  {
    *a4 = v4;
  }

  return result;
}

void *glsmCreateBuffer(void *a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x10uLL, 0x850A2C2EuLL);
  if (!result)
  {
    abort();
  }

  *result = a2;
  result[1] = a3;
  *a1 = result;
  return result;
}

uint64_t glpMakeStringHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (String)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (String)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t *glpDestroyStringHash(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (result[3])(*result, result[5]);
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpStringHashPut(uint64_t a1, const char *a2, size_t __n, double a4, uint64_t a5)
{
  LODWORD(a4) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a4 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpStringHashRehash(a1, v11);
  }

  return _glpStringHashRealPut(a1, a2, __n, a5);
}

uint64_t _glpStringHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 32 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (String, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpStringHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpStringHashRealPut(uint64_t result, const char *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpStringsEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpStringHashGet(uint64_t a1, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpStringHashCache(uint64_t a1, const char *a2, size_t a3, uint64_t a4)
{
  result = glpStringHashGet(a1, a2, a3);
  if (!result)
  {
    glpStringHashPut(a1, a2, a3, v9, a4);
    return a4;
  }

  return result;
}

uint64_t glpStringHashRemove(uint64_t result, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(result + 32));
  v4 = *(result + 40) + 32 * v3;
  if (*v4)
  {
    v7 = result;
    v8 = HIDWORD(__n) % *(result + 32);
    do
    {
      result = glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16));
      if (result)
      {
        *(*(v7 + 40) + 32 * v3) = 0;
        result = _glpStringHashRehash(v7, *(v7 + 32));
      }

      else
      {
        v8 = (v8 + 1) % *(v7 + 32);
      }

      v3 = v8;
      v4 = *(v7 + 40) + 32 * v8;
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakePointerHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Pointer)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 24 * v4, "Hash Storage (Pointer)");
  *(v2 + 40) = v5;
  bzero(v5, 24 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t *glpDestroyPointerHash(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (result[3])(*result, result[5]);
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpPointerHashPut(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpPointerHashRehash(a1, v9);
  }

  return _glpPointerHashRealPut(a1, a2, a3);
}

uint64_t _glpPointerHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 24 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (Pointer, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpPointerHashRealPut(a1, *v7, v8);
      }

      v7 += 3;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpPointerHashRealPut(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = (a2 >> 4) % v3;
  v6 = (v4 + 24 * v5);
  if (*v6)
  {
    if (v6[1] == a2)
    {
LABEL_8:
      --*(result + 36);
    }

    else
    {
      while (1)
      {
        if (v5 + 1 == v3)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        v6 = (v4 + 24 * v5);
        if (!*v6)
        {
          break;
        }

        if (v6[1] == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  *(v4 + 24 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpPointerHashGet(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a2 >> 4) % v2;
  for (result = *(v3 + 24 * v4); result && *(v3 + 24 * v4 + 8) != a2; result = *(v3 + 24 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  return result;
}

uint64_t glpPointerHashCache_b(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = glpPointerHashGet(a1, a2);
  if (!v6)
  {
    v6 = (*(a3 + 16))(a3);
    glpPointerHashPut(a1, a2, v6, v7);
  }

  return v6;
}

uint64_t glpPointerHashRemove(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 4) % *(result + 32);
  v3 = *(result + 40);
  v4 = (v3 + 24 * v2);
  if (*v4)
  {
    v6 = result;
    do
    {
      if (v4[1] == a2)
      {
        *v4 = 0;
        result = _glpPointerHashRehash(v6, *(v6 + 32));
        v3 = *(v6 + 40);
      }

      else
      {
        v2 = (v2 + 1) % *(v6 + 32);
      }

      v4 = (v3 + 24 * v2);
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakeIntHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Int)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 16 * v4, "Hash Storage (Int)");
  *(v2 + 40) = v5;
  bzero(v5, 16 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t *glpDestroyIntHash(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (result[3])(*result, result[5]);
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpIntHashPut(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2;
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpIntHashRehash(a1, v9);
  }

  return _glpIntHashRealPut(a1, v5, a3);
}

uint64_t _glpIntHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 16 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (Int, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpIntHashRealPut(a1, *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpIntHashRealPut(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = a2 % v3;
  while (1)
  {
    v6 = v4 + 16 * v5;
    if (!*v6)
    {
      break;
    }

    if (*(v6 + 8) == a2)
    {
      --*(result + 36);
      break;
    }

    if (v5 + 1 == v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v5 + 1);
    }
  }

  *(v4 + 16 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpIntHashGet(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2 % v2;
  for (result = *(v3 + 16 * v4); result && *(v3 + 16 * v4 + 8) != a2; result = *(v3 + 16 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v4 + 1);
    }
  }

  return result;
}

uint64_t glpIntHashCache_b(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = glpIntHashGet(a1, a2);
  if (!v6)
  {
    v6 = (*(a3 + 16))(a3);
    glpIntHashPut(a1, a2, v6, v7);
  }

  return v6;
}

uint64_t glpIntHashRemove(uint64_t result, unsigned int a2)
{
  v2 = a2 % *(result + 32);
  v3 = *(result + 40);
  v4 = v3 + 16 * v2;
  if (*v4)
  {
    v6 = result;
    do
    {
      if (*(v4 + 8) == a2)
      {
        *v4 = 0;
        result = _glpIntHashRehash(v6, *(v6 + 32));
        v3 = *(v6 + 40);
      }

      else
      {
        v2 = (v2 + 1) % *(v6 + 32);
      }

      v4 = v3 + 16 * v2;
    }

    while (*v4);
  }

  return result;
}

uint64_t glpMakeTypedValueHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (TypedValue)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (TypedValue)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t *glpDestroyTypedValueHash(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (result[3])(*result, result[5]);
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpTypedValueHashPut(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4, double a5)
{
  LODWORD(a5) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a5 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpTypedValueHashRehash(a1, v11);
  }

  return _glpTypedValueHashRealPut(a1, a2, a3, a4);
}

uint64_t _glpTypedValueHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 32 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (TypedValue, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpTypedValueHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpTypedValueHashRealPut(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4)
{
  result = glpTypedValueHash(a2, a3);
  for (i = result % *(a1 + 32); ; i = (i + 1) % *(a1 + 32))
  {
    v10 = *(a1 + 40);
    v11 = v10 + 32 * i;
    if (!*v11)
    {
      break;
    }

    result = glpTypedValuesEqual(a2, a3, *(v11 + 8), *(v11 + 16));
    if (result)
    {
      --*(a1 + 36);
      v10 = *(a1 + 40);
      break;
    }
  }

  v12 = v10 + 32 * i;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(*(a1 + 40) + 32 * i) = a4;
  ++*(a1 + 36);
  return result;
}

uint64_t glpTypedValueHashGet(uint64_t a1, unsigned int *a2, char *a3)
{
  for (i = glpTypedValueHash(a2, a3) % *(a1 + 32); ; i = (i + 1) % *(a1 + 32))
  {
    v7 = *(a1 + 40) + 32 * i;
    if (!*v7)
    {
      break;
    }

    if (glpTypedValuesEqual(a2, a3, *(v7 + 8), *(v7 + 16)))
    {
      return *(*(a1 + 40) + 32 * i);
    }
  }

  return 0;
}

uint64_t glpTypedValueHashCache(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4)
{
  result = glpTypedValueHashGet(a1, a2, a3);
  if (!result)
  {
    glpTypedValueHashPut(a1, a2, a3, a4, v9);
    return a4;
  }

  return result;
}

uint64_t glpMakeDataHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Data)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (Data)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDataHashPut(uint64_t a1, const void *a2, size_t __n, double a4, uint64_t a5)
{
  LODWORD(a4) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a4 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpDataHashRehash(a1, v11);
  }

  return _glpDataHashRealPut(a1, a2, __n, a5);
}

uint64_t _glpDataHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 32 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (Data, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpDataHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpDataHashRealPut(uint64_t result, const void *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpDatasEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpDataHashGet(uint64_t a1, const void *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpDatasEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpAlignTypeSize(uint64_t result, unsigned int a2)
{
  if (result != -1)
  {
    return (result + a2 - 1) / a2 * a2;
  }

  return result;
}

uint64_t glpABIGetMinimumBufferBytesForType(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = &ABIs[6 * a1];
  v4 = (*v3)(a2, a3);
  return ((v3[4])(v4) + 15) & 0xFFFFFFF0;
}

uint64_t glpABIGetStructTypeRangeOfField(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  ElementCount = glpAggregateTypeGetElementCount(a2);
  MEMORY[0x28223BE20](ElementCount);
  v10 = (v13 - v9);
  bzero(v13 - v9, v11);
  glpStructTypeGetSizesAndAlignments(v7, a2, a3, 0, 0, v10);
  return *&v10[2 * a4];
}

uint64_t glpTypeGetAppleVec4Types(unsigned int *a1, _DWORD *a2, int a3, _DWORD *a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8, char a9)
{
  Kind = glpTypeGetKind(a1);
  v54 = a7;
  if (Kind == 2)
  {
    v53 = a8;
    ElementCount = glpArrayTypeGetElementCount(a1);
    v35 = glpArrayTypeGetElementCount(a1);
    if (v35 == -1)
    {
      v36 = ElementCount;
    }

    else
    {
      v36 = v35;
    }

    v48 = v36;
    ElementType = glpArrayTypeGetElementType(a1);
    result = applevec4TypeSize(ElementType, 0);
    v51 = ElementCount;
    v38 = a7;
    if (ElementCount)
    {
      v39 = 4 * result;
      v40 = ElementCount;
      v41 = v53;
      v42 = result;
      do
      {
        v43 = result;
        v44 = glpTypeGetKind(ElementType) == 0;
        glpTypeGetAppleVec4Types(ElementType, a2, v40, a4, v44, a6, v38, v41, a9);
        result = v43;
        if (a4)
        {
          a4 += v42;
        }

        else
        {
          a4 = 0;
        }

        if (a6)
        {
          a6 += v42;
        }

        else
        {
          a6 = 0;
        }

        v41 = (v41 + v43);
        a2 = (a2 + v39);
        --v40;
      }

      while (v40);
    }

    if (v38 && v51 != v48)
    {

      return BitSetSetRangeEquals(v54, v53 + v48 * result, v53 + result * v51, 0);
    }
  }

  else if (Kind == 1)
  {
    result = glpAggregateTypeGetElementCount(a1);
    v50 = result;
    if (result)
    {
      v29 = 0;
      do
      {
        v30 = glpAggregateTypeGetElementType(a1, v29);
        v31 = applevec4TypeSize(v30, 0);
        result = glpTypeGetAppleVec4Types(v30, a2, 1, a4, 0, a6, v54, a8, a9);
        if (a4)
        {
          a4 += v31;
        }

        else
        {
          a4 = 0;
        }

        if (a6)
        {
          v32 = v31;
          v33 = a6;
          if (v31)
          {
            do
            {
              result = glpAggregateTypeGetElementFlags(a1, v29);
              *v33 = *v33 & 7 | (8 * result);
              ++v33;
              --v32;
            }

            while (v32);
          }

          a6 += v31;
        }

        a2 += v31;
        a8 = v31 + a8;
        ++v29;
      }

      while (v29 != v50);
    }
  }

  else
  {
    if (Kind)
    {
      goto LABEL_67;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    v46 = PrimitiveType;
    if ((result - 1) < 3)
    {
      v19 = a8;
      MaxComponentsPerVec4 = glpPrimitiveTypeGetMaxComponentsPerVec4(PrimitiveType);
      ColumnType = PrimitiveType;
      if (glpPrimitiveTypeGetCategory(PrimitiveType) == 3)
      {
        PrimitiveType = PrimitiveType;
        ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
      }

      ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
      ScalarCount = glpPrimitiveTypeGetScalarCount(ColumnType);
      result = glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      if (result)
      {
        v22 = 0;
        v23 = a5;
        v24 = 0;
        v45 = v23 & 1;
        v25 = ScalarCount;
        do
        {
          if (MaxComponentsPerVec4 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = MaxComponentsPerVec4;
          }

          VectorType = glpGetVectorType(ScalarType, v26);
          if (a9)
          {
            v28 = PrimitiveType;
          }

          else
          {
            v28 = VectorType;
          }

          a2[v22] = v28;
          if (a4)
          {
            a4[v22] = a3;
          }

          if (a6)
          {
            a6[v22] = (v45 | (2 * (v22 == 0))) & 0xFB | (4 * (v24 & 1));
          }

          if (v54)
          {
            BitSetSetEquals(v54, v19);
            PrimitiveType = v46;
          }

          if (v25 > MaxComponentsPerVec4)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          if (v25 <= MaxComponentsPerVec4)
          {
            v25 = ScalarCount;
          }

          else
          {
            v25 -= v26;
          }

          ++v22;
          result = glpPrimitiveTypeGetNumVec4s(PrimitiveType);
          ++v19;
        }

        while (v22 < result);
      }

      return result;
    }

    if (result != 4)
    {
LABEL_67:
      abort();
    }

    *a2 = PrimitiveType;
    if (a4)
    {
      *a4 = a3;
    }

    if (a6)
    {
      *a6 = a5 & 1 | 2;
    }

    if (v54)
    {

      return BitSetSetEquals(v54, a8);
    }
  }

  return result;
}

uint64_t applevec4TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind <= 1)
  {
    if (Kind)
    {
      if (Kind == 1)
      {
        v14 = 0;
        glpStructTypeGetSizesAndAlignments(0, a1, a2, &v14, 0, 0);
        return v14;
      }
    }

    else
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category > 2)
      {
        if (Category == 3)
        {
          Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
          ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
          return glpPrimitiveTypeGetNumVec4s(ColumnType) * Columns;
        }

        if (Category == 4)
        {
          return 1;
        }
      }

      else if ((Category - 1) < 2)
      {

        return glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      }
    }

    abort();
  }

  if (Kind != 2)
  {
    if (Kind != 5)
    {
      abort();
    }

    return 1;
  }

  result = glpArrayTypeGetElementCount(a1);
  if (result != -1)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    v9 = applevec4TypeSize(ElementType, a2);
    ElementCount = glpArrayTypeGetElementCount(a1);
    if (ElementCount == -1 || v9 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (ElementCount * v9);
    }
  }

  return result;
}

uint64_t applevec4MatrixStride(uint64_t a1)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a1);

  return glpPrimitiveTypeGetNumVec4s(ColumnType);
}

uint64_t std140TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    result = glpArrayTypeGetElementCount(a1);
    if (result != -1)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      v8 = std140TypeSize(ElementType, a2);
      if (v8 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v8 + 15) & 0xFFFFFFF0;
      }

      ElementCount = glpArrayTypeGetElementCount(a1);
      if (ElementCount == -1 || v8 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9 * ElementCount;
      }
    }
  }

  else if (Kind == 1)
  {
    v12 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, &v12, 0, 0);
    return v12;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeSize(PrimitiveType, a2);
  }

  return result;
}

uint64_t std140TypeAlign(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    return (std140TypeAlign(ElementType, a2) + 15) & 0xFFFFFFF0;
  }

  else if (Kind == 1)
  {
    v8 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, 0, &v8, 0);
    return v8;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeAlign(PrimitiveType);
  }
}

uint64_t std140MatrixStride(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    RowType = glpPrimitiveMatrixGetRowType(a1);
  }

  else
  {
    RowType = glpPrimitiveMatrixGetColumnType(a1);
  }

  return (std140PrimitiveTypeAlign(RowType) + 15) & 0xFFFFFFF0;
}

uint64_t std140PrimitiveTypeSize(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 2)
  {
    if (Category == 1)
    {
      if (a1 == 62)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    if (Category == 2)
    {
      Length = glpPrimitiveVectorGetLength(a1);
      ElementType = glpPrimitiveVectorGetElementType(a1);
      v7 = std140PrimitiveTypeSize(ElementType, a2);
      if (v7 == -1 || Length == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v7 * Length);
      }
    }

LABEL_20:
    abort();
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x400) != 0)
  {
    Rows = glpPrimitiveMatrixGetRows(a1);
  }

  else
  {
    Rows = glpPrimitiveMatrixGetColumns(a1);
  }

  return std140MatrixStride(a1, a2) * Rows;
}

uint64_t std140PrimitiveTypeAlign(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category > 2)
  {
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a1);
      return (std140PrimitiveTypeAlign(ColumnType) + 15) & 0xFFFFFFF0;
    }

    if (Category == 4)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (Category == 1)
  {
    if (a1 == 62)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  if (Category != 2)
  {
LABEL_15:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);
  ElementType = glpPrimitiveVectorGetElementType(a1);
  v5 = std140PrimitiveTypeAlign(ElementType);
  if (Length == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return (v5 << v6);
}

void *glpMallocAlloc(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x352A3853uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpInitPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  v8 = sysconf(29);
  *v7 = (a2 + v8 - 1) / v8 * v8;
  v9 = sysconf(29);
  result = makePoolNode((a1 + v9 - 1) / v9 * v9, 0);
  v7[1] = result;
  *(v7 + 24) = 0;
  *a3 = v7;
  a3[1] = poolAlloc;
  a3[2] = poolRealloc;
  a3[3] = poolFree;
  return result;
}

void *makePoolNode(size_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = mmap(0, a1, 3, 4098, 1107296256, 0);
  *v5 = v6;
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a1;
  v5[4] = a2;
  return v5;
}

size_t poolAlloc(size_t *a1, uint64_t a2)
{
  v3 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = *a1;
  if (v3 > v4)
  {
    v5 = sysconf(29);
    v4 = (v3 + v5 - 1) / v5 * v5;
    PoolNode = a1[1];
LABEL_4:
    PoolNode = makePoolNode(v4, PoolNode);
    a1[1] = PoolNode;
    goto LABEL_5;
  }

  PoolNode = a1[1];
  if (PoolNode[3] < v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  result = PoolNode[1];
  a1[2] = result;
  PoolNode[1] = result + v3;
  PoolNode[3] -= v3;
  return result;
}

uint64_t poolFree(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    if (*(result + 16) == a2)
    {
      v2 = *(result + 8);
      *(v2 + 24) += *(v2 + 8) - a2;
      *(v2 + 8) = a2;
    }
  }

  return result;
}

void *glpInitTempPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  result = glpInitPoolAllocator(a1, a2, a3);
  *(*a3 + 24) = 1;
  return result;
}

void glpDestroyPoolAllocator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      munmap(*v2, *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(v1);
}

uint64_t glpLockPoolAllocator(uint64_t result)
{
  v1 = *(*result + 8);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      result = mprotect(*v1, *(v1 + 8) - *v1, 1);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t glpUnlockPoolAllocator(uint64_t result)
{
  v1 = *(*result + 8);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 32);
      result = mprotect(*v1, *(v1 + 8) - *v1, 3);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t glpOpenArchive(void *a1, int a2, uint64_t a3)
{
  v6 = (a1[1])(*a1, 32, "Archive");
  *v6 = a1;
  *(v6 + 8) = glpMakeStringHash(a1);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (!readTOC(v6))
  {
    glpDestroyStringHash(*(v6 + 8));
    (a1[3])(*a1, v6);
    return 0;
  }

  return v6;
}

uint64_t readTOC(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  glpInitDeserialContext(v31, *a1, *a1, a1[3], *(a1 + 4));
  if (_setjmp(v31))
  {
    v2 = 0;
    goto LABEL_27;
  }

  v3 = HIDWORD(v33);
  if (HIDWORD(v33) >= v33)
  {
    goto LABEL_28;
  }

  v4 = *(*(&v32 + 1) + HIDWORD(v33));
  ++HIDWORD(v33);
  if (v3 + 1 >= v33)
  {
    goto LABEL_28;
  }

  v5 = *(*(&v32 + 1) + v3 + 1);
  HIDWORD(v33) = v3 + 2;
  if (v3 + 2 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(*(&v32 + 1) + v3 + 2);
  HIDWORD(v33) = v3 + 3;
  if (v3 + 3 >= v33)
  {
    goto LABEL_28;
  }

  v7 = *(*(&v32 + 1) + v3 + 3);
  HIDWORD(v33) = v3 + 4;
  if (v4 != 103 || v5 != 108 || v6 != 112 || v7 != 65)
  {
    glpDeserialError(v31, 3u);
  }

  if (v3 + 8 > v33)
  {
    goto LABEL_28;
  }

  v8 = v3;
  v9 = *(*(&v32 + 1) + v3 + 4);
  v10 = (v3 + 8);
  HIDWORD(v33) = v10;
  if (v9 != 1)
  {
    glpDeserialError(v31, 4u);
  }

  if (v10 + 4 > v33)
  {
LABEL_28:
    glpDeserialError(v31, 1u);
  }

  v11 = *(*(&v32 + 1) + v10);
  HIDWORD(v33) = v8 + 12;
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = deserialize_GLPString(v31);
      v15 = v14;
      v16 = (*(*a1 + 8))(**a1, 24, "Archive Entry");
      v18 = HIDWORD(v33);
      v19 = v33;
      if (HIDWORD(v33) + 4 > v33)
      {
        goto LABEL_28;
      }

      v20 = *(&v32 + 1);
      v21 = *(*(&v32 + 1) + HIDWORD(v33));
      HIDWORD(v33) += 4;
      *v16 = v21;
      v22 = (v18 + 4);
      if (v22 + 4 > v19)
      {
        goto LABEL_28;
      }

      v23 = *(v20 + v22);
      HIDWORD(v33) = v18 + 8;
      *(v16 + 4) = v23;
      v24 = (v18 + 8);
      if (v24 + 4 > v19)
      {
        goto LABEL_28;
      }

      v25 = *(v20 + v24);
      HIDWORD(v33) = v18 + 12;
      *(v16 + 8) = v25;
      *(v16 + 16) = 0;
      glpStringHashPut(a1[1], v13, v15, v17, v16);
    }

    while (--v12);
  }

  v26 = a1[1];
  if (*(v26 + 32))
  {
    v27 = *(v26 + 40);
    v28 = *(v26 + 32);
    do
    {
      v29 = *v27;
      if (*v27)
      {
        if (*v29 < HIDWORD(v33))
        {
          glpDeserialError(v31, 5u);
        }

        if (v29[1] + *v29 > v33)
        {
          glpDeserialError(v31, 6u);
        }
      }

      v27 += 4;
      --v28;
    }

    while (v28);
  }

  v2 = 1;
LABEL_27:
  glpDestroyDeserialContext(v31);
  return v2;
}

uint64_t glpArchiveFileGetEntryNamed(uint64_t a1, const char *a2, size_t a3, _DWORD *a4, void *a5)
{
  v7 = a3;
  v10 = glpStringHashGet(*(a1 + 8), a2, a3);
  if (v10)
  {
    v11 = *(v10 + 2);
    if (!v11)
    {
      v11 = *(a1 + 24) + *v10;
      *(v10 + 2) = v11;
    }

    *a4 = v10[2];
    *a5 = v11;
    return 1;
  }

  else
  {
    glpSetCrashLogMessagef("GLProgrammability: archive file doesn't have entry named '%.*s'", v7, a2);
    return 0;
  }
}

uint64_t glpArchiveFileFinishEntryNamed(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(*(a1 + 8), a2, a3);
  *(result + 16) = 0;
  return result;
}

uint64_t glpASTMergeInitContext(uint64_t a1, uint64_t a2, int a3)
{
  glpLinkerGetAllocator();
  v7 = v6;
  *a1 = v6;
  *(a1 + 8) = glpLinkerGetInfoLog(a2);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = a3;
  v8 = *(a2 + 308);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v9 = 3;
      goto LABEL_11;
    }

    if (v8 == 10)
    {
      v9 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v9 = 6;
    goto LABEL_11;
  }

  if (!v8)
  {
    v9 = 1;
    goto LABEL_11;
  }

  if (v8 != 1)
  {
    goto LABEL_8;
  }

  v9 = 2;
LABEL_11:
  *(a1 + 28) = v9;
  *(a1 + 32) = *(a2 + 296);
  *(a1 + 40) = glpMakeStringHash(v7);
  *(a1 + 48) = glpMakeStringHash(v7);
  *(a1 + 56) = glpMakeStringHash(v7);
  *(a1 + 64) = glpMakeStringHash(v7);
  *(a1 + 72) = glpMakeStringHash(v7);
  *(a1 + 80) = glpMakeStringHash(v7);
  *(a1 + 88) = glpMakePointerHash(v7);
  *(a1 + 96) = glpMakePointerHash(v7);
  *(a1 + 104) = glpMakePointerHash(v7);
  *(a1 + 112) = glpMakePointerHash(v7);
  *(a1 + 120) = glpMakePointerHash(v7);
  *(a1 + 128) = glpMakePointerHash(v7);
  *(a1 + 136) = glpMakePointerHash(v7);
  *(a1 + 144) = glpMakePointerHash(v7);
  v14.n128_u64[0] = "-1";
  v14.n128_u64[1] = 0xEDA00000002;
  v15 = 0xFFFFFFFFLL;
  glpMakeTopLevelNode(v7, &v14);
  *(a1 + 152) = v10;
  *(a1 + 160) = glpMakeStringHash(v7);
  *(a1 + 168) = glpMakePointerHash(v7);
  *(a1 + 176) = glpMakePointerHash(v7);
  *(a1 + 184) = glpMakePointerHash(v7);
  *(a1 + 192) = glpMakeStringHash(v7);
  *(a1 + 200) = glpMakeStringHash(v7);
  *(a1 + 208) = glpMakeStringHash(v7);
  *(a1 + 216) = glpMakeStringHash(v7);
  *(a1 + 224) = glpMakeStringHash(v7);
  *(a1 + 232) = glpMakeStringHash(v7);
  *(a1 + 240) = glpMakeStringHash(v7);
  *(a1 + 280) = 4;
  v11 = 0;
  *(a1 + 288) = (v7[1])(*v7, 32, "Vector Storage (GLPType *)");
  v12 = a1 + 248;
  do
  {
    result = glpMakeTypedValueHash(v7);
    *(v12 + v11) = result;
    v11 += 8;
  }

  while (v11 != 32);
  return result;
}

uint64_t glpASTMergePhase1AddTopLevelNode(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!glpTopLevelNodeGetDefCount(a2))
  {
    return 1;
  }

  v4 = 0;
  v85 = a1 + 7;
  v5 = &__block_descriptor_tmp_0;
  v84 = v2;
  while (1)
  {
    Def = glpTopLevelNodeGetDef(v2, v4);
    if (!Def)
    {
      goto LABEL_73;
    }

    v7 = Def;
    Kind = glpASTNodeGetKind(Def);
    if (Kind <= 50)
    {
      break;
    }

    if (Kind > 62)
    {
      if (Kind != 63)
      {
        if (Kind != 85)
        {
          goto LABEL_85;
        }

        Extra = glpSubroutineUniformNodeGetExtra(v7);
        glpPointerHashPut(a1[14], Extra, v7, v14);
        goto LABEL_73;
      }

      SaFlags = glpASTNodeGetSaFlags(v7);
      Layout = glpGlobalTypeQualifierNodeGetLayout(v7);
      GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(a1[19], SaFlags & 0xFFFFFFFFFFFFFF7FLL);
      if (GlobalTypeQualifier)
      {
        v35 = GlobalTypeQualifier;
        v36 = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
        v37 = *a1;
        v88 = "-1";
        v89 = 0xEDA00000002;
        v90 = 0xFFFFFFFFLL;
        appended = glpLayoutObjectAppendMany(v37, 0, &v88, v36, Layout);
        v7 = v35;
        Layout = v36;
        if (!appended)
        {
          v81 = a1[1];
          v88 = "-1";
          v89 = 0xEDA00000002;
          v90 = 0xFFFFFFFFLL;
          glpLogMessage(v81, 0, &v88, "Global layout qualifiers conflict");
          return 0;
        }
      }

      else
      {
        glpTopLevelNodeAddDef(*a1, a1[19], v7);
      }

      glpGlobalTypeQualifierNodeSetLayout(v7, Layout);
    }

    else
    {
      if (Kind == 51)
      {
        Prototype = glpFunctionDefinitionNodeGetPrototype(v7);
        v16 = glpFunctionPrototypeNodeGetExtra(Prototype);
        v17 = glpStringHashGet(a1[6], *(v16 + 40), *(v16 + 48));
        if (v17)
        {
          v19 = v17;
          if (glpPointerHashGet(a1[12], v17))
          {
            if ((*(v19 + 9) & 0x20) == 0)
            {
              v21 = a1[1];
              v22 = *(v16 + 24);
              v23 = *(v16 + 32);
              v93[0] = "-1";
              v93[1] = 0xEDA00000002;
              v93[2] = 0xFFFFFFFFLL;
              glpLogMessage(v21, 0, v93, "duplicate definition of function '%.*s'", v23, v22);
              result = 0;
LABEL_71:
              v2 = v84;
              goto LABEL_72;
            }

            v83 = Prototype;
            glpPointerHashRemove(a1[12], v19);
            glpStringHashRemove(a1[6], *(v16 + 40), *(v16 + 48));
LABEL_58:
            glpStringHashPut(a1[6], *(v16 + 40), *(v16 + 48), v18, v16);
            glpPointerHashPut(a1[12], v16, v7, v51);
            glpPointerHashPut(a1[16], v16, v16, v52);
          }

          else
          {
            v83 = Prototype;
            glpPointerHashPut(a1[12], v19, v7, v20);
            *(v19 + 64) = *(v16 + 64);
          }

          if (*(v16 + 96))
          {
            v53 = 0;
            v54 = MEMORY[0x277D85DD0];
            v87 = v16;
            v86 = MEMORY[0x277D85DD0];
            do
            {
              v55 = *(*(v16 + 104) + 8 * v53);
              v56 = a1[18];
              v88 = v54;
              v89 = 0x40000000;
              v90 = __phase1ProcessFunctionDefinition_block_invoke;
              v91 = v5;
              v92 = a1;
              v57 = glpPointerHashCache_b(v56, v55, &v88);
              v58 = v57;
              v59 = *v57;
              v60 = *(v57 + 4);
              if ((v60 + 1) <= *v57)
              {
                v68 = *(v57 + 8);
                v71 = *(v57 + 4);
              }

              else
              {
                if (v59 <= 1)
                {
                  v59 = 1;
                }

                v61 = 2 * v59;
                if (v61 <= v60 + 1)
                {
                  v62 = v60 + 1;
                }

                else
                {
                  v62 = v61;
                }

                v63 = v7;
                v64 = v4;
                v65 = v5;
                v66 = a1;
                v67 = *a1;
                v68 = (*(v67 + 8))(*v67, 8 * v62, "Vector Storage (GLPASTNode *, growth)");
                memcpy(v68, *(v58 + 8), 8 * *(v58 + 4));
                v69 = *(v67 + 24);
                v70 = *v67;
                a1 = v66;
                v5 = v65;
                v4 = v64;
                v7 = v63;
                v16 = v87;
                v69(v70, *(v58 + 8));
                *v58 = v62;
                v54 = v86;
                *(v58 + 8) = v68;
                v71 = *(v58 + 4);
              }

              memmove(&v68[8 * v60 + 8], &v68[8 * v60], 8 * (v71 - v60));
              *(*(v58 + 8) + 8 * v60) = v7;
              ++*(v58 + 4);
              ++v53;
            }

            while (v53 < *(v16 + 96));
          }

          phase1ProcessFunctionPrototype(a1, v83);
          result = 1;
          goto LABEL_71;
        }

        v83 = Prototype;
        goto LABEL_58;
      }

      if (Kind != 57)
      {
        goto LABEL_85;
      }

      v10 = glpInterfaceBlockNodeGetExtra(v7);
      v11 = *(**(v10 + 72) + 48);
      if ((v11 & 0x20000000) != 0)
      {
        v12 = 0;
      }

      else if ((v11 & 0x40000000) != 0)
      {
        v12 = 1;
      }

      else
      {
        if ((v11 & 0x100000000) == 0)
        {
          goto LABEL_85;
        }

        v12 = 2;
      }

      v39 = glpStringHashGet(v85[v12], *v10, *(v10 + 8));
      if (v39)
      {
        v41 = v39;
        if (!glpTypesEqual(*(v39 + 64), *(v10 + 64)) || *(**(v41 + 72) + 48) != *(**(v10 + 72) + 48))
        {
          v80 = a1[1];
          v88 = "-1";
          v89 = 0xEDA00000002;
          v90 = 0xFFFFFFFFLL;
          glpLogMessage(v80, 0, &v88, "Multiple definitions of interface block '%.*s' differ in name/type/order/qualification of members");
          return 0;
        }

        glpPointerHashPut(a1[17], v10, v41, v42);
        VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(v10);
        if (VariableObjectCount)
        {
          v45 = 0;
          v46 = 8 * VariableObjectCount;
          do
          {
            glpPointerHashPut(a1[15], *(*(v10 + 72) + v45), *(*(v41 + 72) + v45), v44);
            v45 += 8;
          }

          while (v46 != v45);
        }
      }

      else
      {
        v47 = *(**(v10 + 72) + 48);
        if ((v47 & 0x20000000) != 0)
        {
          v48 = 0;
        }

        else if ((v47 & 0x40000000) != 0)
        {
          v48 = 1;
        }

        else
        {
          if ((v47 & 0x100000000) == 0)
          {
LABEL_85:
            abort();
          }

          v48 = 2;
        }

        glpStringHashPut(v85[v48], *v10, *(v10 + 8), v40, v10);
        glpPointerHashPut(a1[13], v10, v7, v72);
        glpPointerHashPut(a1[17], v10, v10, v73);
        v74 = glpInterfaceBlockObjectGetVariableObjectCount(v10);
        if (v74)
        {
          v76 = 0;
          v77 = 8 * v74;
          do
          {
            v78 = *(*(v10 + 72) + v76);
            glpPointerHashPut(a1[11], v78, v7, v75);
            glpPointerHashPut(a1[15], v78, v78, v79);
            v76 += 8;
          }

          while (v77 != v76);
        }
      }
    }

LABEL_73:
    v4 = (v4 + 1);
    if (v4 >= glpTopLevelNodeGetDefCount(v2))
    {
      return 1;
    }
  }

  if (Kind <= 46)
  {
    if (Kind != 45)
    {
      if (Kind != 46)
      {
        goto LABEL_85;
      }

      result = phase1ProcessVariableDeclaration(a1, v7);
LABEL_72:
      if (!result)
      {
        return result;
      }

      goto LABEL_73;
    }

    phase1ProcessFunctionPrototype(a1, v7);
    goto LABEL_73;
  }

  if (Kind != 47)
  {
    if (Kind != 48)
    {
      goto LABEL_85;
    }

    goto LABEL_73;
  }

  BaseType = glpVariableDeclarationGroupNodeGetBaseType(v7);
  if (BaseType)
  {
    v25 = BaseType;
    Name = glpStructTypeNodeGetName(BaseType);
    v28 = v27;
    SaType = glpASTNodeGetSaType(v25);
    v30 = glpStringHashGet(a1[10], Name, v28);
    if (v30)
    {
      if (!glpTypesEqual(v30, SaType))
      {
        v82 = a1[1];
        v88 = "-1";
        v89 = 0xEDA00000002;
        v90 = 0xFFFFFFFFLL;
        glpLogMessage(v82, 0, &v88, "Inconsistent declarations of struct type '%.*s'");
        return 0;
      }
    }

    else
    {
      glpStringHashPut(a1[10], Name, v28, v31, SaType);
    }
  }

  if (!glpVariableDeclarationGroupNodeGetDeclarationCount(v7))
  {
    goto LABEL_73;
  }

  v49 = 0;
  while (1)
  {
    Declaration = glpVariableDeclarationGroupNodeGetDeclaration(v7, v49);
    result = phase1ProcessVariableDeclaration(a1, Declaration);
    if (!result)
    {
      return result;
    }

    if (++v49 >= glpVariableDeclarationGroupNodeGetDeclarationCount(v7))
    {
      goto LABEL_73;
    }
  }
}

uint64_t glpASTMergePhase2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(v2 + 40);
      v6 = *(v5 + v3);
      if (v6)
      {
        v7 = glpPointerHashGet(*(a1 + 88), *(v5 + v3));
        if (*(v6 + 56))
        {
          goto LABEL_38;
        }

        v8 = *(a1 + 24);
        if (v8)
        {
          v9 = 1610612736;
        }

        else
        {
          v9 = 0x40000000;
        }

        if (v8 == 4)
        {
          v9 = 0x20000000;
        }

        if ((v10 = *(v6 + 48), *(a1 + 32)) && (v10 & v9) != 0 || (v10 & 0x100000000) != 0 && (v13 = *(v6 + 8)) != 0 && glpLayoutObjectFind(v13, 28))
        {
LABEL_38:
          if (!phase2AddDef(a1, v7))
          {
            break;
          }

          v11 = *(v6 + 80);
          if (v11)
          {
            v12 = glpPointerHashGet(*(a1 + 104), v11);
            if (!phase2AddDef(a1, v12))
            {
              break;
            }
          }
        }
      }

      ++v4;
      v3 += 32;
      if (v4 >= *(v2 + 32))
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    if (*(a1 + 16) >= 10 && (v14 = *(a1 + 72), *(v14 + 32)))
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(v14 + 40);
        v18 = *(v17 + v15);
        if (v18)
        {
          v19 = glpPointerHashGet(*(a1 + 104), *(v17 + v15));
          if (*(v18 + 44))
          {
            v20 = v19;
            v21 = *(v18 + 56);
            if (v21)
            {
              if ((glpLayoutObjectFind(v21, 21) || glpLayoutObjectFind(*(v18 + 56), 23)) && !phase2AddDef(a1, v20))
              {
                break;
              }
            }
          }
        }

        ++v16;
        v15 += 32;
        if (v16 >= *(v14 + 32))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v22 = glpStringHashGet(*(a1 + 48), "#main", 0x1057F56200000005uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 128) = 1;
        v24 = glpPointerHashGet(*(a1 + 96), v22);
        v25 = phase2AddDef(a1, v24);
        *(v23 + 128) = 0;
        if (v25)
        {
          return *(a1 + 152);
        }
      }

      else
      {
        v27 = *(a1 + 8);
        v28 = glpLanguageToString(*(a1 + 24));
        v29[0] = "-1";
        v29[1] = 0xEDA00000002;
        v29[2] = 0xFFFFFFFFLL;
        glpLogMessage(v27, 0, v29, "No definition of main in %s shader", v28);
      }
    }
  }

  return -1;
}

uint64_t glpMergeRemapValue(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4)
{
  v6 = *(a1 + 8 * glpPrecisionIndexFromSAFlags(a2) + 248);

  return glpRemapValue(v6, a3, a4);
}

uint64_t phase1ProcessVariableDeclaration(uint64_t *a1, uint64_t a2)
{
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  v5 = glpStringHashGet(a1[5], *(Extra + 16), *(Extra + 24));
  if (!v5)
  {
    glpStringHashPut(a1[5], *(Extra + 16), *(Extra + 24), v6, Extra);
    glpPointerHashPut(a1[11], Extra, a2, v12);
    v13 = a1[15];
    v14 = Extra;
    v15 = Extra;
    goto LABEL_27;
  }

  v7 = v5;
  result = mergeTypes(a1, *(Extra + 32), *(Extra + 40), *Extra, (Extra + 96), *v5, (v5 + 96), v5, (v5 + 96));
  if (!result)
  {
    return result;
  }

  if (*(Extra + 48) != *(v7 + 48))
  {
    v16 = a1[1];
    v24 = "-1";
    v25 = 0xEDA00000002;
    v26 = 0xFFFFFFFFLL;
    glpLogMessage(v16, 0, &v24, "Multiple declarations of variable '%.*s' differ in qualification");
    return 0;
  }

  v10 = *(Extra + 8);
  if (v10)
  {
    if (*(v7 + 8))
    {
      v11 = *(Extra + 8);
      v10 = *(v7 + 8);
LABEL_11:
      if (v11 != v10)
      {
        v17 = *a1;
        v24 = "-1";
        v25 = 0xEDA00000002;
        v26 = 0xFFFFFFFFLL;
        if (!glpLayoutObjectAppendMany(v17, 0, &v24, v10, v11))
        {
          v22 = a1[1];
          v24 = "-1";
          v25 = 0xEDA00000002;
          v26 = 0xFFFFFFFFLL;
          glpLogMessage(v22, 0, &v24, "Multiple declarations of variable '%.*s' conflict in layouts");
          return 0;
        }
      }

      goto LABEL_13;
    }

    *(v7 + 8) = v10;
    v11 = *(Extra + 8);
    if (v11)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v18 = *(Extra + 72);
  if (v18)
  {
    v19 = *(v7 + 72);
    if (v19)
    {
      if (glpCompareValues(v18, *Extra, v19))
      {
        v20 = a1[1];
        v24 = "-1";
        v25 = 0xEDA00000002;
        v26 = 0xFFFFFFFFLL;
        glpLogMessage(v20, 0, &v24, "Multiple declarations of variable '%.*s' conflict in initializer");
        return 0;
      }
    }

    else
    {
      *(v7 + 64) = *(Extra + 64);
      *(v7 + 72) = *(Extra + 72);
    }
  }

  if (!*(v7 + 72))
  {
    if (*(v7 + 56))
    {
      if (*(Extra + 56))
      {
        v21 = a1[1];
        v24 = "-1";
        v25 = 0xEDA00000002;
        v26 = 0xFFFFFFFFLL;
        glpLogMessage(v21, 0, &v24, "Multiple declarations of variable '%.*s' have initializers");
        return 0;
      }

      v23 = 1;
    }

    else
    {
      v23 = *(Extra + 56) != 0;
    }

    *(v7 + 56) = v23;
  }

  v13 = a1[15];
  v14 = Extra;
  v15 = v7;
LABEL_27:
  glpPointerHashPut(v13, v14, v15, v9);
  return 1;
}

uint64_t phase1ProcessFunctionPrototype(uint64_t *a1, uint64_t a2)
{
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  v5 = glpStringHashGet(a1[6], *(Extra + 40), *(Extra + 48));
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = Extra;
  }

  glpStringHashPut(a1[6], *(Extra + 40), *(Extra + 48), v6, v7);
  if ((*(v7 + 10) & 2) != 0)
  {
    glpPointerHashPut(a1[12], v7, a2, v8);
  }

  result = glpPointerHashPut(a1[16], Extra, v7, v8);
  v11 = *(v7 + 72);
  if (v11)
  {
    result = glpPointerHashPut(a1[15], *(Extra + 72), v11, v10);
  }

  if (*(Extra + 88))
  {
    v12 = 0;
    do
    {
      result = glpPointerHashPut(a1[15], *(*(Extra + 80) + 8 * v12), *(*(v7 + 80) + 8 * v12), v10);
      ++v12;
    }

    while (v12 < *(Extra + 88));
  }

  return result;
}

uint64_t mergeTypes(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, uint64_t *a8, _DWORD *a9)
{
  Kind = glpTypeGetKind(a4);
  if (Kind != glpTypeGetKind(a6) || (Kind & 0xFFFFFFFE) != 2)
  {
    if (!glpTypesEqual(a4, a6))
    {
      v27 = glpTypeHumanReadableDescription(a4, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, *a1);
      v29 = v28;
      v30 = glpTypeHumanReadableDescription(a6, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, *a1);
      v31 = a1[1];
      v52 = "-1";
      v53 = 0xEDA00000002;
      v54 = 0xFFFFFFFFLL;
      v47 = v32;
      v48 = v30;
      v45 = v29;
      v46 = v27;
      v43 = a3;
      v44 = a2;
      v33 = "Multiple declarations of '%.*s' have different types (%.*s and %.*s)";
      v34 = v31;
LABEL_10:
      glpLogMessage(v34, 0, &v52, v33, v43, v44, v45, v46, v47, v48);
      return 0;
    }

    *a8 = a4;
    return 1;
  }

  v50 = a8;
  v18 = a9 + 1;
  if (Kind == 3)
  {
    ElementType = glpBankTypeGetElementType(a4);
    v20 = glpBankTypeGetElementType(a6);
    v51 = 0;
    result = mergeTypes(a1, a2, a3, ElementType, a5 + 1, v20, a7 + 1, &v51, v18);
    if (!result)
    {
      return result;
    }

    ElementCount = glpBankTypeGetElementCount(a4);
    v23 = glpBankTypeGetElementCount(a6);
    v24 = *a5;
    v25 = *a7;
    v26 = -1;
LABEL_17:
    if (ElementCount == -1)
    {
      if (v23 == -1)
      {
        if (v24 <= v25)
        {
          v39 = v25;
        }

        else
        {
          v39 = v24;
        }

        LODWORD(v23) = -1;
        goto LABEL_33;
      }

      if (v24 <= v23)
      {
        goto LABEL_24;
      }

      v34 = a1[1];
      v52 = "-1";
      v53 = 0xEDA00000002;
      v54 = 0xFFFFFFFFLL;
      v45 = a2;
      v46 = v23;
      v43 = v24;
      v44 = a3;
    }

    else
    {
      if (v23 != -1)
      {
        if (ElementCount != v23)
        {
          v34 = a1[1];
          v52 = "-1";
          v53 = 0xEDA00000002;
          v54 = 0xFFFFFFFFLL;
          v45 = a3;
          v46 = a2;
          v43 = ElementCount;
          v44 = v23;
          v33 = "Sizes (%u and %u) in multiple declarations of array '%.*s' differ";
          goto LABEL_10;
        }

LABEL_24:
        v39 = 0;
LABEL_33:
        v40 = *a1;
        if (Kind == 3)
        {
          Bank = glpBankTypeGetBank(a4);
          BankType = glpMakeBankType(v40, Bank, v51, v23);
        }

        else
        {
          BankType = glpMakeArrayType(*a1, v51, v23, v26);
        }

        *v50 = BankType;
        *a9 = v39;
        return 1;
      }

      if (v25 <= ElementCount)
      {
        v39 = 0;
        LODWORD(v23) = ElementCount;
        goto LABEL_33;
      }

      v34 = a1[1];
      v52 = "-1";
      v53 = 0xEDA00000002;
      v54 = 0xFFFFFFFFLL;
      v45 = a2;
      v46 = ElementCount;
      v43 = v25;
      v44 = a3;
    }

    v33 = "Implicit size (%u) of multiply-declared array '%.*s' exceeds specified size (%u)";
    goto LABEL_10;
  }

  v35 = glpArrayTypeGetElementType(a4);
  v36 = glpArrayTypeGetElementType(a6);
  v51 = 0;
  result = mergeTypes(a1, a2, a3, v35, a5 + 1, v36, a7 + 1, &v51, v18);
  if (result)
  {
    v49 = glpArrayTypeGetElementCount(a4);
    v23 = glpArrayTypeGetElementCount(a6);
    MaxElementCount = glpArrayTypeGetMaxElementCount(a4);
    v38 = glpArrayTypeGetMaxElementCount(a6);
    v24 = *a5;
    v25 = *a7;
    if (MaxElementCount == -1)
    {
      v26 = v38;
    }

    else
    {
      v26 = MaxElementCount;
    }

    ElementCount = v49;
    goto LABEL_17;
  }

  return result;
}

void *__phase1ProcessFunctionDefinition_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 8))(***(a1 + 32), 16, "subroutine implementations by type");
  v3 = **(a1 + 32);
  *v2 = 4;
  v2[1] = (*(v3 + 8))(*v3, 32, "Vector Storage (GLPASTNode *)");
  return v2;
}

uint64_t glpCGTopLevel(void *a1, uint64_t a2, uint64_t *a3)
{
  for (i = 20; i != 24; ++i)
  {
    glpLinkerGetAllocator();
    v7 = *a3++;
    glpPackConstants(v8, v7, a1[i]);
  }

  if (glpTopLevelNodeGetDefCount(a2))
  {
    v9 = 0;
    do
    {
      Def = glpTopLevelNodeGetDef(a2, v9);
      if (Def)
      {
        v11 = Def;
        if (glpASTNodeGetKind(Def) == 51)
        {
          Prototype = glpFunctionDefinitionNodeGetPrototype(v11);
          Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
          if ((*(Extra + 10) & 0x10) != 0)
          {
            v17 = Extra;
            v18 = AddOp(a1[17], 0x4Bu, 0, 0, 0, v14, v15, v16, 0);
            v19 = glpLinkerPoolAlloc(a1[19]);
            v19[2] = v17;
            *v19 = *a1;
            v19[1] = v18;
            *a1 = v19;
          }
        }
      }

      ++v9;
    }

    while (v9 < glpTopLevelNodeGetDefCount(a2));
  }

  if (!glpTopLevelNodeGetDefCount(a2))
  {
LABEL_14:
    v22 = *a1;
    if (*a1)
    {
      do
      {
        v23 = *(v22[2] + 136);
        if (!v23)
        {
          abort();
        }

        *(v22[1] + 24) = *(v22[1] + 24) & 0x3FFFFFFFFFFFLL | (*(v23 + 88) << 46);
        v22 = *v22;
      }

      while (v22);
      if (*a1)
      {
        *a1 = 0;
      }
    }

    v24 = a1[3];
    if (*(v24 + 32))
    {
      for (j = 0; j < *(v24 + 32); ++j)
      {
        v26 = *(*(v24 + 40) + 16 * j);
        if (v26)
        {
          v27 = *v26;
          if (v26[1])
          {
            v28 = v27[3];
            if (HIWORD(v28) - WORD1(v28) == -1)
            {
              goto LABEL_30;
            }

            v29 = 0;
            v30 = HIWORD(v28) - WORD1(v28) + 1;
            do
            {
              if (!BitSetGetEquals(v26[1], v29))
              {
                v31 = *(a1[17] + 32);
                v32 = PPStreamChunkListChunkAtIndex(v31, v29 + *(*v26 + 26));
                PPStreamChunkListRemoveChunk(v31, v32);
              }

              ++v29;
            }

            while (v30 != v29);
            v27 = *v26;
          }

          if (v27)
          {
LABEL_30:
            PPStreamChunkListRemoveChunk(*(a1[17] + 80), v27);
          }
        }
      }
    }

    v33 = a1[4];
    if (!*(v33 + 32))
    {
LABEL_45:
      v42 = a1[17];
      if (*(v42 + 136) == 2)
      {
        PPStreamAddOption(v42, 12);
        v42 = a1[17];
      }

      PPStreamPackIndices(v42);
      return 0;
    }

    v34 = 0;
    while (1)
    {
      v35 = *(*(v33 + 40) + 16 * v34);
      if (v35)
      {
        v36 = *v35;
        if (v35[1])
        {
          v37 = v36[3];
          if (HIWORD(v37) - WORD1(v37) == -1)
          {
            goto LABEL_43;
          }

          v38 = 0;
          v39 = HIWORD(v37) - WORD1(v37) + 1;
          do
          {
            if (!BitSetGetEquals(v35[1], v38))
            {
              v40 = *(a1[17] + 56);
              v41 = PPStreamChunkListChunkAtIndex(v40, v38 + *(*v35 + 26));
              PPStreamChunkListRemoveChunk(v40, v41);
            }

            ++v38;
          }

          while (v39 != v38);
          v36 = *v35;
        }

        if (v36)
        {
LABEL_43:
          PPStreamChunkListRemoveChunk(*(a1[17] + 72), v36);
        }
      }

      if (++v34 >= *(v33 + 32))
      {
        goto LABEL_45;
      }
    }
  }

  v20 = 0;
  while (1)
  {
    v21 = glpTopLevelNodeGetDef(a2, v20);
    if (!glpCGNode(a1, v21))
    {
      return 0xFFFFFFFFLL;
    }

    if (++v20 >= glpTopLevelNodeGetDefCount(a2))
    {
      goto LABEL_14;
    }
  }
}

uint64_t glpCGNode(void *a1, uint64_t a2)
{
  if (a2)
  {
    Expr = a2;
    while (2)
    {
      v11 = glpASTNodeGetKind(Expr) - 16;
      result = 1;
      switch(v11)
      {
        case 0:

          return glpCGNegate(a1, Expr);
        case 1:

          return glpCGLogicalNot(a1, Expr);
        case 2:

          return glpCGBitwiseNot(a1, Expr);
        case 23:

          return glpCGAssign(a1, Expr);
        case 25:
        case 26:
        case 47:
          return result;
        case 27:

          return glpCGCommaExpr(a1, Expr);
        case 28:
          glpCGParameterDeclaration(a1, Expr);
          return 1;
        case 29:

          return glpCGFunctionPrototype(a1, Expr);
        case 30:

          return glpCGVariableDeclaration(a1, Expr);
        case 31:

          return glpCGVariableDeclarationGroup(a1, Expr);
        case 35:

          return glpCGFunctionDefinition(a1, Expr);
        case 41:
          glpCGInterfaceBlock(a1, Expr);
          return 1;
        case 49:
          Expr = glpExpressionStatementNodeGetExpr(Expr);
          if (!Expr)
          {
            return 1;
          }

          continue;
        case 50:

          return glpCGBlock(a1, Expr);
        case 51:

          return glpCGIfStatement(a1, Expr);
        case 52:

          return glpCGLoopStatement(a1, Expr);
        case 53:

          return glpCGSwitchStatement(a1, Expr);
        case 54:

          return glpCGCaseStatement(a1, Expr);
        case 55:

          return glpCGDefaultStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 56:

          return glpCGBreakStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 57:

          return glpCGContinueStatement(a1, v4, v5, v6, v7, v8, v9, v10);
        case 58:
          a1[16] = AddOp(a1[17], 0x4Fu, 0, 0, 0, v8, v9, v10, 0);
          return 1;
        case 59:
          glpCGReturnStatement(a1, v4, v5, v6, v7, v8, v9, v10);
          return 1;
        case 62:
          glpCGRawCallNode(a1, Expr);
          return 1;
        case 63:

          return glpCGSubroutineRawCallNode(a1, Expr);
        case 65:

          return glpCGLValue(a1, Expr);
        case 66:

          return glpCGRValue(a1, Expr);
        case 68:

          return glpCGPPStreamOpNode(a1, Expr);
        case 69:
          glpCGSubroutineUniformNode(a1, Expr);
          return 1;
        default:
          abort();
      }
    }
  }

  return 1;
}