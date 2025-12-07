uint64_t sub_1AF14EE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD60F8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    return v14(*(a1 + 16), a2, a3);
  }

  else
  {
    return 1;
  }
}

void sub_1AF14EF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD60F8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(result + 32);
  if (v14)
  {
    v14(*(result + 16), a2, a3);
  }
}

uint64_t sub_1AF14EF74(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD18 != -1)
  {
    sub_1AFDD6170();
  }

  return qword_1ED73AD10;
}

uint64_t sub_1AF14EFAC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD48 != -1)
  {
    sub_1AFDD6184();
  }

  return qword_1ED73AD40;
}

uint64_t sub_1AF14EFE4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734720 != -1)
  {
    sub_1AFDD6198();
  }

  return qword_1ED739958;
}

uint64_t sub_1AF14F01C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD28 != -1)
  {
    sub_1AFDD61AC();
  }

  return qword_1ED73AD20;
}

uint64_t sub_1AF14F054(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD68 != -1)
  {
    sub_1AFDD61C0();
  }

  return qword_1ED73AD60;
}

uint64_t sub_1AF14F08C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD08 != -1)
  {
    sub_1AFDD61D4();
  }

  return qword_1ED73AD00;
}

uint64_t sub_1AF14F0C4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD58 != -1)
  {
    sub_1AFDD61E8();
  }

  return qword_1ED73AD50;
}

uint64_t sub_1AF14F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    return v14(a2, a1, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AF14F170(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = a1;
  if (!a2 && (v10 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD6274(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a4)
    {
      return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
    }
  }

  else if (a4)
  {
    return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
  }

  v17 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
}

uint64_t sub_1AF14F224(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 96))(a1, a2);
}

uint64_t sub_1AF14F274(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

CFStringRef sub_1AF14F2BC(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t sub_1AF14F378(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1AF14F38C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[7];

  free(v5);
}

uint64_t sub_1AF14F3F8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6584A0 = result;
  return result;
}

void *sub_1AF14F420(const void *a1, const void *a2, const void *a3)
{
  if (qword_1EB6584A8 != -1)
  {
    sub_1AFDD62EC();
  }

  v6 = sub_1AF0D160C(qword_1EB6584A0, 0x30uLL);
  v7 = CFRetain(a1);
  v6[2] = v7;
  sub_1AF14F0FC(v6, v7, a2);
  v6[4] = CFRetain(a3);
  v6[3] = CFRetain(a2);
  return v6;
}

void sub_1AF14F4B8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void sub_1AF14F4E8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD30 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"influenceFactor", 72, 1, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF14F554(uint64_t result)
{
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  return result;
}

void sub_1AF14F568()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD10 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"targetOffset", 176, 9, 0);
  sub_1AF1DD02C(@"worldUp", 160, 9, 0);
  sub_1AF1DD02C(@"localFront", 192, 8, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF14F61C(const void *a1)
{
  if (qword_1ED73AD18 != -1)
  {
    sub_1AFDD6314();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD10, 0xC0uLL);
  *(v2 + 72) = 1065353216;
  *(v2 + 76) = 257;
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 136) = v3;
  *(v2 + 144) = 0;
  *(v2 + 176) = xmmword_1AFE201A0;
  *(v2 + 192) = xmmword_1AFE206C0;
  *(v2 + 160) = xmmword_1AFE20160;
  *(v2 + 88) = sub_1AF14F6D8;
  *(v2 + 96) = sub_1AF14FFB8;
  return v2;
}

uint64_t sub_1AF14F6D8(uint64_t a1, uint64_t a2, simd_float4 *a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v9 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6274(v9, a2, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a2 + 16);
  v17 = *(v16 + 136);
  if (v17)
  {
    _ZF = v17 == a3;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  v20 = sub_1AF1B8774(v17, a2);
  v22 = v20;
  v23 = *(v16 + 136);
  if (v22)
  {
    *v24.i64 = sub_1AF1BA240(v23, v21);
    v167 = v25;
    v172 = v24;
    v157 = v27;
    v160 = v26;
    v29 = sub_1AF1B9A6C(*(v16 + 136), v28);
    if (v29)
    {
      v31 = sub_1AF1B9B04(v29, v30);
      v32 = 0;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      v178[0] = *v31;
      v178[1] = v33;
      v178[2] = v34;
      v178[3] = v35;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      do
      {
        *(&v179 + v32 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, COERCE_FLOAT(v178[v32])), v167, *&v178[v32], 1), v160, v178[v32], 2), v157, v178[v32], 3);
        ++v32;
      }

      while (v32 != 4);
      v36 = v179;
      v37 = v180;
      v38 = v181;
      v39 = v182;
    }

    else
    {
      v37 = v167;
      v36 = v172;
      v39 = v157;
      v38 = v160;
    }
  }

  else
  {
    v40 = sub_1AF1B9B04(v23, v21);
    v36 = *v40;
    v37 = v40[1];
    v38 = v40[2];
    v39 = v40[3];
  }

  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(v16 + 176))), v37, *(v16 + 176), 1), v38, *(v16 + 176), 2), v39, *(v16 + 176), 3);
  v179 = xmmword_1AFE201A0;
  v168 = v41;
  if (*(v16 + 144) != 1)
  {
    v185 = *sub_1AF1B9B04(a3, v30);
    v186 = __invert_f4(v185);
    v186.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v186.columns[3], v186.columns[2], v168, 2), v186.columns[1], *v168.f32, 1), v186.columns[0], v168.f32[0]);
    v186.columns[0] = vmulq_f32(v186.columns[3], v186.columns[3]);
    v186.columns[1].f32[0] = v186.columns[0].f32[2] + vaddv_f32(*v186.columns[0].f32);
    *v186.columns[0].f32 = vrsqrte_f32(v186.columns[1].u32[0]);
    *v186.columns[0].f32 = vmul_f32(*v186.columns[0].f32, vrsqrts_f32(v186.columns[1].u32[0], vmul_f32(*v186.columns[0].f32, *v186.columns[0].f32)));
    v186.columns[0] = vmulq_n_f32(v186.columns[3], vmul_f32(*v186.columns[0].f32, vrsqrts_f32(v186.columns[1].u32[0], vmul_f32(*v186.columns[0].f32, *v186.columns[0].f32))).f32[0]);
    v186.columns[1] = *(v16 + 192);
    v102 = vnegq_f32(v186.columns[1]);
    v186.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v186.columns[0], v186.columns[0]), v186.columns[0], 0xCuLL), v102), v186.columns[0], vextq_s8(vuzp1q_s32(v186.columns[1], v186.columns[1]), v186.columns[1], 0xCuLL));
    v186.columns[2] = vextq_s8(vuzp1q_s32(v186.columns[3], v186.columns[3]), v186.columns[3], 0xCuLL);
    v186.columns[0] = vmulq_f32(v186.columns[1], v186.columns[0]);
    v186.columns[2].f32[3] = (v186.columns[0].f32[2] + vaddv_f32(*v186.columns[0].f32)) + 1.0;
    v186.columns[0] = vmulq_f32(v186.columns[2], v186.columns[2]);
    *v186.columns[0].f32 = vadd_f32(*v186.columns[0].f32, *&vextq_s8(v186.columns[0], v186.columns[0], 8uLL));
    v186.columns[0] = vdupq_lane_s32(vadd_f32(*v186.columns[0].f32, vdup_lane_s32(*v186.columns[0].f32, 1)), 0);
    v186.columns[1] = vrsqrteq_f32(v186.columns[0]);
    v186.columns[1] = vmulq_f32(v186.columns[1], vrsqrtsq_f32(v186.columns[0], vmulq_f32(v186.columns[1], v186.columns[1])));
    v186.columns[3] = vrsqrtsq_f32(v186.columns[0], vmulq_f32(v186.columns[1], v186.columns[1]));
    v186.columns[1] = vmulq_f32(vmulq_f32(v186.columns[1], v186.columns[3]), v186.columns[2]);
    v175 = vbslq_s8(vceqzq_f32(v186.columns[0]), v186.columns[2], v186.columns[1]);
    *_Q0.i64 = sub_1AF1BA0F4(a3, v103, *v175.i64, *v186.columns[1].i64, *v186.columns[2].i64, *v186.columns[3].i64, *v102.i64, v104, v105);
    _Q6 = v175;
    _Q1.i32[0] = v175.i32[3];
    v45 = vnegq_f32(_Q0);
    v106 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v175, 0xCuLL), v45), v175, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v47 = vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL);
    v48 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, v175, 3), v175, _Q0, 3), v47);
    _Q2.i64[0] = vmulq_f32(_Q0, v175).u64[0];
    v47.f32[0] = vaddv_f32(*_Q2.f32);
    __asm { FMLA            S2, S1, V0.S[3] }

    v48.i32[3] = _Q2.i32[0];
LABEL_25:
    v179 = v48;
    goto LABEL_26;
  }

  result = sub_1AF1B9A6C(a3, v30);
  if (!result)
  {
    return result;
  }

  v183 = *sub_1AF1B9B04(result, v42);
  v184 = __invert_f4(v183);
  v156 = v184;
  v169 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v184.columns[3], v184.columns[2], v168, 2), v184.columns[1], *v168.f32, 1), v184.columns[0], v168.f32[0]);
  v155 = *(v16 + 160);
  *_Q0.i64 = sub_1AF1B9F08(a3);
  v47.i64[0] = v169.i64[0];
  v48 = xmmword_1AFE201A0;
  _Q2 = vabdq_f32(v169, _Q0);
  _Q1 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), _Q2);
  _Q1.i32[3] = _Q1.i32[2];
  _Q1.i32[0] = vminvq_u32(_Q1);
  if ((_Q1.i32[0] & 0x80000000) == 0)
  {
    v51 = vsubq_f32(v169, _Q0);
    v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156.columns[0], v155.f32[0]), v156.columns[1], *v155.f32, 1), v156.columns[2], v155, 2), v156.columns[3], v155, 3);
    v53 = vmulq_f32(v52, v52);
    *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
    v55 = vrsqrte_f32(v54);
    v56 = vmul_f32(v55, vrsqrts_f32(v54, vmul_f32(v55, v55)));
    v161 = vmulq_n_f32(v52, vmul_f32(v56, vrsqrts_f32(v54, vmul_f32(v56, v56))).f32[0]);
    v57 = vmulq_f32(v51, v51);
    v53.f32[0] = v57.f32[2] + vaddv_f32(*v57.f32);
    *v57.f32 = vrsqrte_f32(v53.u32[0]);
    *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v57.f32, *v57.f32)));
    v173 = vmulq_n_f32(v51, vmul_f32(*v57.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
    *v58.i64 = sub_1AF1555CC(*(v16 + 192), v173);
    v170 = v58;
    v59 = vmulq_f32(v58, xmmword_1AFE21390);
    v60 = vnegq_f32(v59);
    v61 = vtrn2q_s32(v59, vtrn1q_s32(v59, v60));
    v62 = vmlaq_f32(vextq_s8(v59, v60, 8uLL), 0, vextq_s8(v61, v61, 8uLL));
    v63 = vrev64q_s32(v59);
    v63.i32[0] = v60.i32[1];
    v63.i32[3] = v60.i32[2];
    v64 = vmlaq_f32(v62, 0, v63);
    v65 = vnegq_f32(v64);
    v66 = vtrn2q_s32(v64, vtrn1q_s32(v64, v65));
    v67 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v64, v65, 8uLL), *v58.f32, 1), vextq_s8(v66, v66, 8uLL), v58.f32[0]);
    v68 = vrev64q_s32(v64);
    v68.i32[0] = v65.i32[1];
    v68.i32[3] = v65.i32[2];
    v69 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v64, v58, 3), v68, v58, 2), v67);
    v70 = vmulq_f32(v69, v173);
    v70.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
    v71 = vmlsq_lane_f32(v69, v173, *v70.f32, 0);
    v72 = vmulq_f32(v71, v71);
    v72.f32[0] = v72.f32[2] + vaddv_f32(*v72.f32);
    v73 = vdupq_lane_s32(*v72.f32, 0);
    v73.i32[3] = 0;
    v74 = vrsqrteq_f32(v73);
    v75 = vmulq_f32(v74, vrsqrtsq_f32(v73, vmulq_f32(v74, v74)));
    v76 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v72.f32[0] != 0.0)), 0x1FuLL));
    v76.i32[3] = 0;
    v77 = vbslq_s8(vcltzq_s32(v76), vmulq_f32(vmulq_f32(v75, vrsqrtsq_f32(v73, vmulq_f32(v75, v75))), v71), v71);
    v78 = vmulq_f32(v161, v173);
    v78.f32[0] = v78.f32[2] + vaddv_f32(*v78.f32);
    v79 = vmlsq_lane_f32(v161, v173, *v78.f32, 0);
    v80 = vmulq_f32(v79, v79);
    v81 = v79;
    v80.f32[0] = v80.f32[2] + vaddv_f32(*v80.f32);
    v82 = vdupq_lane_s32(*v80.f32, 0);
    v82.i32[3] = 0;
    v83 = vrsqrteq_f32(v82);
    v84 = vmulq_f32(v83, vrsqrtsq_f32(v82, vmulq_f32(v83, v83)));
    v85 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v80.f32[0] != 0.0)), 0x1FuLL));
    v85.i32[3] = 0;
    v86 = vbslq_s8(vcltzq_s32(v85), vmulq_f32(vmulq_f32(v84, vrsqrtsq_f32(v82, vmulq_f32(v84, v84))), v81), v81);
    v87 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL), vnegq_f32(v77)), v86, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
    v162 = vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL);
    v88 = vmulq_f32(v86, v77);
    v89 = acosf(fminf(fmaxf(v88.f32[2] + vaddv_f32(*v88.f32), -1.0), 1.0));
    v90 = vmulq_f32(v173, v162);
    v91 = (v90.f32[2] + vaddv_f32(*v90.f32)) <= 0.0;
    v92 = vmulq_f32(v173, v173);
    v92.f32[0] = v92.f32[2] + vaddv_f32(*v92.f32);
    v93 = vdupq_lane_s32(*v92.f32, 0);
    if (v91)
    {
      v89 = -v89;
    }

    v93.i32[3] = 0;
    v94 = vrsqrteq_f32(v93);
    v95 = vmulq_f32(v94, vrsqrtsq_f32(v93, vmulq_f32(v94, v94)));
    v96 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v92.f32[0] != 0.0)), 0x1FuLL));
    v96.i32[3] = 0;
    v174 = vbslq_s8(vcltzq_s32(v96), vmulq_f32(vmulq_f32(v95, vrsqrtsq_f32(v93, vmulq_f32(v95, v95))), v173), v173);
    v97 = __sincosf_stret(v89 * 0.5);
    *_Q1.i32 = v97.__cosval;
    _Q6 = v170;
    _Q0 = vmulq_n_f32(v174, v97.__sinval);
    _Q2 = vmlaq_n_f32(vmulq_laneq_f32(_Q0, v170, 3), v170, v97.__cosval);
    v45 = vnegq_f32(_Q0);
    v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v170, 0xCuLL), v45), v170, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v47 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    v48 = vaddq_f32(_Q2, v47);
    _Q0.i64[0] = vmulq_f32(v170, _Q0).u64[0];
    _Q2.f32[0] = vaddv_f32(*_Q0.f32);
    __asm { FMLA            S0, S1, V6.S[3] }

    v48.i32[3] = _Q0.i32[0];
    goto LABEL_25;
  }

LABEL_26:
  _Q0.i32[0] = 1.0;
  if (a5 != 1.0)
  {
    v176 = v48;
    *v107.i64 = sub_1AF1BA0F4(a3, v43, *_Q0.i64, *_Q1.i64, *_Q2.i64, *v47.i64, *v48.i64, *v45.i64, _Q6);
    v108 = v107;
    v109 = vmulq_f32(v107, v176);
    v171 = v108;
    v110 = 1.0;
    v111 = 1.0 - a5;
    if (vaddv_f32(vadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL))) >= 0.0)
    {
      v131 = vsubq_f32(v108, v176);
      v132 = vmulq_f32(v131, v131);
      v133 = vaddq_f32(v108, v176);
      v134 = vmulq_f32(v133, v133);
      v135 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v132.i8, *&vextq_s8(v132, v132, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL)))));
      v136 = v135 + v135;
      _ZF = (v135 + v135) == 0.0;
      v137 = 1.0;
      if (!_ZF)
      {
        v137 = sinf(v136) / v136;
      }

      v138 = v137;
      v139 = vrecpe_f32(LODWORD(v137));
      v140 = vmul_f32(v139, vrecps_f32(LODWORD(v138), v139));
      LODWORD(v141) = vmul_f32(v140, vrecps_f32(LODWORD(v138), v140)).u32[0];
      if ((v111 * v136) != 0.0)
      {
        v165 = v141;
        v140.f32[0] = sinf(v111 * v136);
        v141 = v165;
        v110 = v140.f32[0] / (v111 * v136);
      }

      v140.f32[0] = v111 * (v141 * v110);
      v142 = vdupq_lane_s32(v140, 0);
      v143 = v136 * a5;
      v144 = 1.0;
      if (v143 != 0.0)
      {
        v159 = v142;
        v166 = v141;
        v145 = sinf(v143);
        v142 = v159;
        v141 = v166;
        v144 = v145 / v143;
      }

      v130 = vmlaq_f32(vmulq_n_f32(v176, (v141 * v144) * a5), v171, v142);
    }

    else
    {
      v112 = vaddq_f32(v108, v176);
      v113 = vmulq_f32(v112, v112);
      v114 = vsubq_f32(v108, v176);
      v115 = vmulq_f32(v114, v114);
      v116 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v113.i8, *&vextq_s8(v113, v113, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)))));
      v117 = v116 + v116;
      _ZF = (v116 + v116) == 0.0;
      v118 = 1.0;
      if (!_ZF)
      {
        v118 = sinf(v117) / v117;
      }

      v119 = v118;
      v120 = vrecpe_f32(LODWORD(v118));
      v121 = vmul_f32(v120, vrecps_f32(LODWORD(v119), v120));
      LODWORD(v122) = vmul_f32(v121, vrecps_f32(LODWORD(v119), v121)).u32[0];
      if ((v111 * v117) != 0.0)
      {
        v163 = v122;
        v123 = sinf(v111 * v117);
        v122 = v163;
        v110 = v123 / (v111 * v117);
      }

      v124.i32[1] = v176.i32[1];
      v125 = vnegq_f32(v176);
      *v124.i32 = v111 * (v122 * v110);
      v126 = vdupq_lane_s32(v124, 0);
      v127 = v117 * a5;
      v128 = 1.0;
      if (v127 != 0.0)
      {
        v158 = v126;
        v164 = v122;
        v177 = v125;
        v129 = sinf(v127);
        v126 = v158;
        v122 = v164;
        v125 = v177;
        v128 = v129 / v127;
      }

      v130 = vmlaq_f32(vmulq_n_f32(v125, (v122 * v128) * a5), v171, v126);
    }

    v146 = vmulq_f32(v130, v130);
    *v146.i8 = vadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
    v147 = vdupq_lane_s32(vadd_f32(*v146.i8, vdup_lane_s32(*v146.i8, 1)), 0);
    v148 = vrsqrteq_f32(v147);
    v149 = vmulq_f32(v148, vrsqrtsq_f32(v147, vmulq_f32(v148, v148)));
    v179 = vbslq_s8(vceqzq_f32(v147), v130, vmulq_f32(vmulq_f32(v149, vrsqrtsq_f32(v147, vmulq_f32(v149, v149))), v130));
  }

  v150 = sub_1AF1DE360(a4, v43);
  v152 = sub_1AF1DE3A8(a4, v151);
  v154 = sub_1AF288070(9, v153);
  sub_1AF1C35C0(v150, v152, &v179, v154, 3, 0);
  return 1;
}

void sub_1AF14FFC8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 144) = v2;
}

CFTypeRef sub_1AF15001C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 136) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 136) = result;
  }

  return result;
}

__n128 sub_1AF15009C(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[11].n128_u32[3];
  a1[11] = result;
  return result;
}

__n128 sub_1AF150100(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[10].n128_u32[3];
  a1[10] = result;
  return result;
}

void sub_1AF150164(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[12] = a3;
}

uint64_t sub_1AF1501C0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AD50 = result;
  return result;
}

uint64_t sub_1AF1501E8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD58 != -1)
  {
    sub_1AFDD61E8();
  }

  result = sub_1AF0D160C(qword_1ED73AD50, 0x80uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF15025C;
  *(result + 96) = sub_1AF150350;
  *(result + 136) = 263;
  return result;
}

BOOL sub_1AF15025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v10 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = sub_1AF12F10C(a1, a2);
  if (v17)
  {
    v18 = *(a2 + 16);
    if (*(v18 + 136))
    {
      memset(v26, 0, sizeof(v26));
      sub_1AF150360(a1, v18, a3, v26, a5);
      v20 = sub_1AF1DE360(a4, v19);
      v22 = sub_1AF1DE3A8(a4, v21);
      v24 = sub_1AF288070(10, v23);
      sub_1AF1C35C0(v20, v22, v26, v24, *(a4 + 34), *(a4 + 35));
    }
  }

  return v17 != 0;
}

BOOL sub_1AF150360(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float a5)
{
  v9 = sub_1AF12F10C(a1, a2);
  if (v9)
  {
    *v10.i64 = sub_1AF1BA240(a3, v8);
    v276 = v11;
    v282 = v10;
    v272 = v12;
    v268 = v13;
    v15 = sub_1AF1B9B04(a3, v14);
    v17 = 0uLL;
    if (*(a2 + 137) == 1)
    {
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v272, v272), v272, 0xCuLL), vnegq_f32(v276)), v272, vextq_s8(vuzp1q_s32(v276, v276), v276, 0xCuLL));
      v19 = vmulq_f32(v282, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
      v243 = (v19.f32[2] + vaddv_f32(*v19.f32)) < 0.0;
      v20 = 1.0;
      if (v243)
      {
        v20 = -1.0;
      }

      v21 = vmulq_f32(v282, v282);
      v22 = vmulq_f32(v276, v276);
      v23 = vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8));
      v24 = vextq_s8(v21, v21, 8uLL);
      *v24.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v24.f32, *&vextq_s8(v22, v22, 8uLL)), v23));
      v25 = vmulq_f32(v272, v272);
      v24.i32[2] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      v17 = vmulq_n_f32(v24, v20);
    }

    v267 = v17;
    v270 = *(v15 + 1);
    v271 = *v15;
    v287 = *(v15 + 3);
    v269 = *(v15 + 2);
    v26 = sub_1AF1B9B04(v9, v16);
    v29 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    v31 = *(a2 + 136);
    if (v31 <= 2)
    {
      v59 = v268;
      if (!*(a2 + 136))
      {
        v99 = v276;
        v98 = v282;
        v100 = v272;
        goto LABEL_67;
      }

      if (v31 == 1)
      {
        v123 = vmulq_f32(v30, 0);
        v124 = vmlaq_f32(vaddq_f32(v28, v123), 0, v29);
        v125 = vmulq_f32(v124, v124);
        v125.f32[0] = v125.f32[2] + vaddv_f32(*v125.f32);
        v126 = vdupq_lane_s32(*v125.f32, 0);
        v126.i32[3] = 0;
        v127 = vrsqrteq_f32(v126);
        v128 = vmulq_f32(v127, vrsqrtsq_f32(v126, vmulq_f32(v127, v127)));
        v129 = vmulq_f32(v124, vmulq_f32(v128, vrsqrtsq_f32(v126, vmulq_f32(v128, v128))));
        v130 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v125.f32[0] != 0.0)), 0x1FuLL));
        v130.i32[3] = 0;
        v131 = vaddq_f32(v29, vmlaq_f32(v123, 0, v28));
        v132 = vmulq_f32(v131, v131);
        v132.f32[0] = v132.f32[2] + vaddv_f32(*v132.f32);
        v133 = vdupq_lane_s32(*v132.f32, 0);
        v134 = vbslq_s8(vcltzq_s32(v130), v129, v124);
        v133.i32[3] = 0;
        v135 = vrsqrteq_f32(v133);
        v136 = vmulq_f32(v135, vrsqrtsq_f32(v133, vmulq_f32(v135, v135)));
        v137 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v132.f32[0] != 0.0)), 0x1FuLL));
        v137.i32[3] = 0;
        v138 = vbslq_s8(vcltzq_s32(v137), vmulq_f32(v131, vmulq_f32(v136, vrsqrtsq_f32(v133, vmulq_f32(v136, v136)))), v131);
        v139 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL), vnegq_f32(v138)), v134, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
        v140 = vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL);
        v141 = vmulq_f32(v139, v139);
        v136.f32[0] = v141.f32[1] + (v141.f32[2] + v141.f32[0]);
        *v141.f32 = vrsqrte_f32(v136.u32[0]);
        *v141.f32 = vmul_f32(*v141.f32, vrsqrts_f32(v136.u32[0], vmul_f32(*v141.f32, *v141.f32)));
        v142 = vmulq_n_f32(v140, vmul_f32(*v141.f32, vrsqrts_f32(v136.u32[0], vmul_f32(*v141.f32, *v141.f32))).f32[0]);
        v143 = vmulq_f32(v142, xmmword_1AFE213B0);
        v144 = vmlaq_f32(vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL), xmmword_1AFE20160, v142);
        v145 = vextq_s8(vuzp1q_s32(v144, v144), v144, 0xCuLL);
        v146 = vmulq_f32(v144, v144);
        v134.f32[0] = v146.f32[1] + (v146.f32[2] + v146.f32[0]);
        *v146.f32 = vrsqrte_f32(v134.u32[0]);
        *v146.f32 = vmul_f32(*v146.f32, vrsqrts_f32(v134.u32[0], vmul_f32(*v146.f32, *v146.f32)));
        v147 = vmulq_n_f32(v145, vmul_f32(*v146.f32, vrsqrts_f32(v134.u32[0], vmul_f32(*v146.f32, *v146.f32))).f32[0]);
        v148 = vmulq_f32(v147, xmmword_1AFE213B0);
        v149 = vmlaq_f32(vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL), xmmword_1AFE20160, v147);
        v150 = xmmword_1AFE20150;
        HIDWORD(v150) = HIDWORD(*v26);
        v147.i32[3] = HIDWORD(*&v26[1]);
        v151 = vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL);
        v151.i32[3] = HIDWORD(*&v26[2]);
        v29 = v150;
        v28 = v147;
        v30 = v151;
        v32 = a5;
      }

      else
      {
        v32 = a5;
        if (v31 == 2)
        {
          v60 = vmulq_f32(v30, 0);
          v61 = vaddq_f32(v29, vmlaq_f32(v60, 0, v28));
          v62 = vmulq_f32(v61, v61);
          v62.f32[0] = v62.f32[2] + vaddv_f32(*v62.f32);
          v63 = vdupq_lane_s32(*v62.f32, 0);
          v63.i32[3] = 0;
          v64 = vrsqrteq_f32(v63);
          v65 = vmulq_f32(v64, vrsqrtsq_f32(v63, vmulq_f32(v64, v64)));
          v66 = vmulq_f32(v61, vmulq_f32(v65, vrsqrtsq_f32(v63, vmulq_f32(v65, v65))));
          v67 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v62.f32[0] != 0.0)), 0x1FuLL));
          v67.i32[3] = 0;
          v68 = vmlaq_f32(vaddq_f32(v28, v60), 0, v29);
          v69 = vmulq_f32(v68, v68);
          v69.f32[0] = v69.f32[2] + vaddv_f32(*v69.f32);
          v70 = vdupq_lane_s32(*v69.f32, 0);
          v70.i32[3] = 0;
          v71 = vbslq_s8(vcltzq_s32(v67), v66, v61);
          v72 = vrsqrteq_f32(v70);
          v73 = vmulq_f32(v72, vrsqrtsq_f32(v70, vmulq_f32(v72, v72)));
          v74 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v69.f32[0] != 0.0)), 0x1FuLL));
          v74.i32[3] = 0;
          v75 = vbslq_s8(vcltzq_s32(v74), vmulq_f32(v68, vmulq_f32(v73, vrsqrtsq_f32(v70, vmulq_f32(v73, v73)))), v68);
          v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), vnegq_f32(v71)), v75, vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL));
          v77 = vmulq_f32(v76, v76);
          v73.f32[0] = v77.f32[1] + (v77.f32[2] + v77.f32[0]);
          *v77.f32 = vrsqrte_f32(v73.u32[0]);
          *v77.f32 = vmul_f32(*v77.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v77.f32, *v77.f32)));
          v78 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), vmul_f32(*v77.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v77.f32, *v77.f32))).f32[0]);
          v79 = vmulq_f32(v78, xmmword_1AFE213A0);
          v80 = vmlaq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), xmmword_1AFE20180, v78);
          v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
          v82 = vmulq_f32(v80, v80);
          v76.f32[0] = v82.f32[1] + (v82.f32[2] + v82.f32[0]);
          *v82.f32 = vrsqrte_f32(v76.u32[0]);
          *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v76.u32[0], vmul_f32(*v82.f32, *v82.f32)));
          v83 = vmulq_n_f32(v81, vmul_f32(*v82.f32, vrsqrts_f32(v76.u32[0], vmul_f32(*v82.f32, *v82.f32))).f32[0]);
          v84 = xmmword_1AFE20160;
          v85 = vmlaq_f32(vmulq_f32(v83, xmmword_1AFE213B0), xmmword_1AFE20160, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
          v83.i32[3] = HIDWORD(*v26);
          HIDWORD(v84) = HIDWORD(*&v26[1]);
          v86 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
          v86.i32[3] = HIDWORD(*&v26[2]);
          v29 = v83;
          v28 = v84;
          v30 = v86;
        }
      }
    }

    else if (*(a2 + 136) > 4u)
    {
      v32 = a5;
      if (v31 == 5)
      {
        v112 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v113 = vmlaq_f32(vmulq_f32(v28, xmmword_1AFE213A0), xmmword_1AFE20180, v112);
        v114 = vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL);
        v115 = vmulq_f32(v113, v113);
        *&v116 = v115.f32[1] + (v115.f32[2] + v115.f32[0]);
        *v115.f32 = vrsqrte_f32(v116);
        *v115.f32 = vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32)));
        v117 = vmulq_n_f32(v114, vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32))).f32[0]);
        v118 = vmlaq_f32(vmulq_f32(v112, vnegq_f32(v117)), v28, vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL));
        v119 = vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL);
        v120 = vmulq_f32(v118, v118);
        *&v121 = v120.f32[1] + (v120.f32[2] + v120.f32[0]);
        *v120.f32 = vrsqrte_f32(v121);
        *v120.f32 = vmul_f32(*v120.f32, vrsqrts_f32(v121, vmul_f32(*v120.f32, *v120.f32)));
        v122 = vmulq_n_f32(v119, vmul_f32(*v120.f32, vrsqrts_f32(v121, vmul_f32(*v120.f32, *v120.f32))).f32[0]);
        v117.i32[3] = HIDWORD(*v26);
        v122.i32[3] = HIDWORD(*&v26[2]);
        v29 = v117;
        v30 = v122;
      }

      else if (v31 == 6)
      {
        v87 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
        v88 = vmlaq_f32(vmulq_f32(v87, xmmword_1AFE213A0), xmmword_1AFE20160, v30);
        v89 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
        v90 = vmulq_f32(v88, v88);
        *&v91 = v90.f32[1] + (v90.f32[2] + v90.f32[0]);
        *v90.f32 = vrsqrte_f32(v91);
        *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
        v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
        v93 = vmlaq_f32(vmulq_f32(v87, vnegq_f32(v92)), v30, vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL));
        v94 = vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL);
        v95 = vmulq_f32(v93, v93);
        *&v96 = v95.f32[1] + (v95.f32[2] + v95.f32[0]);
        *v95.f32 = vrsqrte_f32(v96);
        *v95.f32 = vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32)));
        v97 = vmulq_n_f32(v94, vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32))).f32[0]);
        v97.i32[3] = HIDWORD(*v26);
        v92.i32[3] = HIDWORD(*&v26[1]);
        v29 = v97;
        v28 = v92;
      }
    }

    else
    {
      v32 = a5;
      if (v31 == 3)
      {
        v101 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
        v102 = vmlaq_f32(vmulq_f32(v101, xmmword_1AFE213C0), xmmword_1AFE20180, v30);
        v103 = vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL);
        v104 = vmulq_f32(v102, v102);
        *&v105 = v104.f32[1] + (v104.f32[2] + v104.f32[0]);
        *v104.f32 = vrsqrte_f32(v105);
        *v104.f32 = vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32)));
        v106 = vmulq_n_f32(v103, vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32))).f32[0]);
        v107 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL), vnegq_f32(v30)), v106, v101);
        v108 = vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL);
        v109 = vmulq_f32(v107, v107);
        *&v110 = v109.f32[1] + (v109.f32[2] + v109.f32[0]);
        *v109.f32 = vrsqrte_f32(v110);
        *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32)));
        v111 = vmulq_n_f32(v108, vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32))).f32[0]);
        v106.i32[3] = HIDWORD(*v26);
        v111.i32[3] = HIDWORD(*&v26[1]);
        v29 = v106;
        v28 = v111;
      }

      else if (v31 == 4)
      {
        v33 = vaddq_f32(v29, vmlaq_f32(vmulq_f32(v30, 0), 0, v28));
        v34 = vmulq_f32(v33, v33);
        v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
        v35 = vdupq_lane_s32(*v34.f32, 0);
        v35.i32[3] = 0;
        v36 = vrsqrteq_f32(v35);
        v37 = vmulq_f32(v36, vrsqrtsq_f32(v35, vmulq_f32(v36, v36)));
        v38 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v34.f32[0] != 0.0)), 0x1FuLL));
        v38.i32[3] = 0;
        v39 = vbslq_s8(vcltzq_s32(v38), vmulq_f32(v33, vmulq_f32(v37, vrsqrtsq_f32(v35, vmulq_f32(v37, v37)))), v33);
        v40 = vmlaq_f32(vmlaq_f32(v30, 0, v28), 0, v29);
        v41 = vmulq_f32(v40, v40);
        v41.f32[0] = v41.f32[2] + vaddv_f32(*v41.f32);
        v42 = vdupq_lane_s32(*v41.f32, 0);
        v42.i32[3] = 0;
        v43 = vrsqrteq_f32(v42);
        v44 = vmulq_f32(v43, vrsqrtsq_f32(v42, vmulq_f32(v43, v43)));
        v45 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v41.f32[0] != 0.0)), 0x1FuLL));
        v45.i32[3] = 0;
        v46 = vbslq_s8(vcltzq_s32(v45), vmulq_f32(v40, vmulq_f32(v44, vrsqrtsq_f32(v42, vmulq_f32(v44, v44)))), v40);
        v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(v39)), v46, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
        v48 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
        v49 = vmulq_f32(v47, v47);
        v40.f32[0] = v49.f32[1] + (v49.f32[2] + v49.f32[0]);
        *v42.f32 = vrsqrte_f32(v40.u32[0]);
        *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v42.f32, *v42.f32)));
        v50 = vmulq_n_f32(v48, vmul_f32(*v42.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v42.f32, *v42.f32))).f32[0]);
        v51 = xmmword_1AFE20180;
        v52 = vmlaq_f32(vmulq_f32(v50, xmmword_1AFE213A0), xmmword_1AFE20180, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
        v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
        v54 = vmulq_f32(v52, v52);
        v49.f32[0] = v54.f32[1] + (v54.f32[2] + v54.f32[0]);
        *v54.f32 = vrsqrte_f32(v49.u32[0]);
        *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v54.f32, *v54.f32)));
        v55 = vmulq_n_f32(v53, vmul_f32(*v54.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v54.f32, *v54.f32))).f32[0]);
        v56 = vmulq_f32(v55, xmmword_1AFE213C0);
        v57 = vmlaq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), xmmword_1AFE20150, v55);
        v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
        v55.i32[3] = HIDWORD(*v26);
        v58.i32[3] = HIDWORD(*&v26[1]);
        HIDWORD(v51) = HIDWORD(*&v26[2]);
        v29 = v55;
        v28 = v58;
        v30 = v51;
      }
    }

    v273 = v29;
    v277 = v28;
    v283 = v30;
    if (v32 != 1.0)
    {
      v290 = 0uLL;
      v289[0] = 0uLL;
      v297.i32[2] = 0;
      v297.i64[0] = 0;
      v296.i32[2] = 0;
      v296.i64[0] = 0;
      v295.i32[2] = 0;
      v295.i64[0] = 0;
      v294.i32[2] = 0;
      v294.i64[0] = 0;
      v152 = sub_1AF120324(&v290, &v297, &v295, v271, v270, v269, v287);
      v153 = sub_1AF120324(v289, &v296, &v294, v273, v277, v283, v287);
      if (v152 && v153)
      {
        v154 = vmulq_f32(v290, v289[0]);
        v288 = v290;
        v284 = v289[0];
        v155 = 1.0;
        if (vaddv_f32(vadd_f32(*v154.i8, *&vextq_s8(v154, v154, 8uLL))) >= 0.0)
        {
          v178 = 1.0 - a5;
          v179 = vsubq_f32(v290, v289[0]);
          v180 = vmulq_f32(v179, v179);
          v181 = vaddq_f32(v290, v289[0]);
          v182 = vmulq_f32(v181, v181);
          v183 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v180.i8, *&vextq_s8(v180, v180, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v182.i8, *&vextq_s8(v182, v182, 8uLL)))));
          v184 = v183 + v183;
          v163 = (v183 + v183) == 0.0;
          v185 = 1.0;
          if (!v163)
          {
            v185 = sinf(v184) / v184;
          }

          v186 = v185;
          v187 = vrecpe_f32(LODWORD(v185));
          v188 = vmul_f32(v187, vrecps_f32(LODWORD(v186), v187));
          LODWORD(v189) = vmul_f32(v188, vrecps_f32(LODWORD(v186), v188)).u32[0];
          if ((v178 * v184) != 0.0)
          {
            v280 = v189;
            v188.f32[0] = sinf(v178 * v184);
            v189 = v280;
            v155 = v188.f32[0] / (v178 * v184);
          }

          v188.f32[0] = v178 * (v189 * v155);
          v190 = vdupq_lane_s32(v188, 0);
          v171 = a5;
          v191 = v184 * a5;
          v192 = 1.0;
          if (v191 != 0.0)
          {
            v275 = v190;
            v281 = v189;
            v193 = sinf(v191);
            v190 = v275;
            v189 = v281;
            v171 = a5;
            v192 = v193 / v191;
          }

          v177 = vmlaq_f32(vmulq_n_f32(v284, (v189 * v192) * v171), v288, v190);
        }

        else
        {
          v156 = 1.0 - a5;
          v157 = vaddq_f32(v290, v289[0]);
          v158 = vmulq_f32(v157, v157);
          v159 = vsubq_f32(v290, v289[0]);
          v160 = vmulq_f32(v159, v159);
          v161 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v158.i8, *&vextq_s8(v158, v158, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v160.i8, *&vextq_s8(v160, v160, 8uLL)))));
          v162 = v161 + v161;
          v163 = (v161 + v161) == 0.0;
          v164 = 1.0;
          if (!v163)
          {
            v164 = sinf(v162) / v162;
          }

          v165 = v164;
          v166 = vrecpe_f32(LODWORD(v164));
          v167 = vmul_f32(v166, vrecps_f32(LODWORD(v165), v166));
          LODWORD(v168) = vmul_f32(v167, vrecps_f32(LODWORD(v165), v167)).u32[0];
          if ((v156 * v162) != 0.0)
          {
            v278 = v168;
            v169 = sinf(v156 * v162);
            v168 = v278;
            v155 = v169 / (v156 * v162);
          }

          v170.i32[1] = v284.i32[1];
          v171 = a5;
          v172 = vnegq_f32(v284);
          *v170.i32 = v156 * (v168 * v155);
          v173 = vdupq_lane_s32(v170, 0);
          v174 = v162 * a5;
          v175 = 1.0;
          if (v174 != 0.0)
          {
            v279 = v168;
            v285 = v172;
            v274 = v173;
            v176 = sinf(v174);
            v173 = v274;
            v168 = v279;
            v172 = v285;
            v171 = a5;
            v175 = v176 / v174;
          }

          v177 = vmlaq_f32(vmulq_n_f32(v172, (v168 * v175) * v171), v288, v173);
        }

        v194 = vmulq_f32(v177, v177);
        *v194.i8 = vadd_f32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
        v195 = vdupq_lane_s32(vadd_f32(*v194.i8, vdup_lane_s32(*v194.i8, 1)), 0);
        v196 = vrsqrteq_f32(v195);
        v197 = vmulq_f32(v196, vrsqrtsq_f32(v195, vmulq_f32(v196, v196)));
        v198 = vbslq_s8(vceqzq_f32(v195), v177, vmulq_f32(vmulq_f32(v197, vrsqrtsq_f32(v195, vmulq_f32(v197, v197))), v177));
        v199 = vmlaq_n_f32(v295, vsubq_f32(v294, v295), v171);
        v200 = vmlaq_n_f32(v297, vsubq_f32(v296, v297), v171);
        v200.i32[3] = 1.0;
        v287 = v200;
        v201 = vabsq_f32(v199);
        v201.i32[3] = 0;
        v202.i64[0] = 0x8000000080000000;
        v202.i64[1] = 0x8000000080000000;
        v203 = vorrq_s8(vandq_s8(v199, v202), vabsq_f32(vmaxnmq_f32(v201, xmmword_1AFE20A30)));
        v204 = vmulq_f32(v198, v198);
        v205 = vmulq_laneq_f32(v198, v198, 3);
        v200.f32[0] = vmuls_lane_f32(v198.f32[0], *v198.f32, 1);
        v206 = vmuls_lane_f32(v198.f32[1], v198, 2);
        v198.f32[0] = vmuls_lane_f32(v198.f32[0], v198, 2);
        v207 = vaddq_f32(v203, v203);
        v208.i32[3] = 0;
        v208.f32[0] = (0.5 - v204.f32[1]) - v204.f32[2];
        v208.f32[1] = v200.f32[0] + v205.f32[2];
        v208.f32[2] = v198.f32[0] - v205.f32[1];
        v209.i32[3] = 0;
        v204.f32[0] = 0.5 - v204.f32[0];
        v210.i32[3] = 0;
        v210.f32[0] = v200.f32[0] - v205.f32[2];
        v210.f32[1] = v204.f32[0] - v204.f32[2];
        v210.f32[2] = v206 + v205.f32[0];
        v270 = vmulq_lane_f32(v210, *v207.f32, 1);
        v271 = vmulq_n_f32(v208, v207.f32[0]);
        v209.f32[0] = v198.f32[0] + v205.f32[1];
        v209.f32[1] = v206 - v205.f32[0];
        v209.f32[2] = v204.f32[0] - v204.f32[1];
        v269 = vmulq_laneq_f32(v209, v207, 2);
      }

      v273 = v271;
      v277 = v270;
      v283 = v269;
    }

    v211 = sub_1AF1B9A6C(a3, v27);
    if (v211)
    {
      v213 = *sub_1AF1B9B04(v211, v212);
    }

    else
    {
      v213 = *zmmword_1AFE213F0;
    }

    v298 = __invert_f4(v213);
    v214 = 0;
    v289[0] = v273;
    v289[1] = v277;
    v289[2] = v283;
    v289[3] = v287;
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    do
    {
      *(&v290 + v214 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v298.columns[0], COERCE_FLOAT(*&v289[v214])), v298.columns[1], *v289[v214].i8, 1), v298.columns[2], v289[v214], 2), v298.columns[3], v289[v214], 3);
      ++v214;
    }

    while (v214 != 4);
    v98 = v290;
    v99 = v291;
    v100 = v292;
    if (*(a2 + 137) == 1)
    {
      v215 = vmulq_f32(v290, v290);
      v216 = vmulq_f32(v291, v291);
      v217 = vmulq_f32(v292, v292);
      v218 = vzip2q_s32(v215, v217);
      v219 = vzip1q_s32(vzip1q_s32(v215, v217), v216);
      v220 = vtrn2q_s32(v215, v216);
      v220.i32[2] = v217.i32[1];
      v221 = vaddq_f32(vzip1q_s32(v218, vdupq_laneq_s32(v216, 2)), vaddq_f32(v219, v220));
      v216.i64[0] = 0x80000000800000;
      v216.i64[1] = 0x80000000800000;
      v222 = vcgeq_f32(v216, v221);
      v221.i32[3] = 0;
      v223 = vrsqrteq_f32(v221);
      v224 = vmulq_f32(v223, vrsqrtsq_f32(v221, vmulq_f32(v223, v223)));
      v225 = v222;
      v225.i32[3] = 0;
      v226 = vbslq_s8(vcltzq_s32(v225), v221, vmulq_f32(v224, vrsqrtsq_f32(v221, vmulq_f32(v224, v224))));
      v227 = vmulq_n_f32(v290, v226.f32[0]);
      v228 = vmulq_lane_f32(v291, *v226.f32, 1);
      v229 = vmulq_laneq_f32(v292, v226, 2);
      v230 = vuzp1q_s32(v229, v229);
      v231 = vuzp1q_s32(v228, v228);
      v232 = v227;
      if (v222.i32[0])
      {
        v233 = vmlaq_f32(vmulq_f32(vextq_s8(v230, v229, 0xCuLL), vnegq_f32(v228)), v229, vextq_s8(v231, v228, 0xCuLL));
        v232 = vextq_s8(vuzp1q_s32(v233, v233), v233, 0xCuLL);
      }

      v234 = vuzp1q_s32(v227, v227);
      v235 = v228;
      if (v222.i32[1])
      {
        v236 = vmlaq_f32(vmulq_f32(vextq_s8(v234, v227, 0xCuLL), vnegq_f32(v229)), v227, vextq_s8(v230, v229, 0xCuLL));
        v235 = vextq_s8(vuzp1q_s32(v236, v236), v236, 0xCuLL);
      }

      if (v222.i32[2])
      {
        v237 = vmlaq_f32(vmulq_f32(vextq_s8(v231, v228, 0xCuLL), vnegq_f32(v227)), v228, vextq_s8(v234, v227, 0xCuLL));
        v229 = vextq_s8(vuzp1q_s32(v237, v237), v237, 0xCuLL);
      }

      v238 = (*v232.i32 + *&v235.i32[1]) + v229.f32[2];
      if (v238 > 0.0)
      {
        v239 = sqrtf(v238 + 1.0);
        *v240.f32 = vsub_f32(*&vzip2q_s32(v235, vuzp1q_s32(v235, v229)), *&vtrn2q_s32(v229, vzip2q_s32(v229, v232)));
        v240.f32[2] = *&v232.i32[1] - *v235.i32;
        v240.f32[3] = v239 * v239;
        v241 = 0.5 / v239;
LABEL_56:
        v242 = vmulq_n_f32(v240, v241);
LABEL_66:
        v59 = v268;
        v59.i32[3] = 1.0;
        v250 = vabsq_f32(v267);
        v250.i32[3] = 0;
        v251.i64[0] = 0x8000000080000000;
        v251.i64[1] = 0x8000000080000000;
        v252 = vorrq_s8(vandq_s8(v267, v251), vabsq_f32(vmaxnmq_f32(v250, xmmword_1AFE20A30)));
        v253 = vmulq_f32(v242, v242);
        v254 = vmulq_laneq_f32(v242, v242, 3);
        v255 = vmuls_lane_f32(v242.f32[0], *v242.f32, 1);
        v256 = vmuls_lane_f32(v242.f32[1], v242, 2);
        v257 = vmuls_lane_f32(v242.f32[0], v242, 2);
        v258 = vaddq_f32(v252, v252);
        v259.i32[3] = 0;
        v259.f32[0] = (0.5 - v253.f32[1]) - v253.f32[2];
        v259.f32[1] = v255 + v254.f32[2];
        v259.f32[2] = v257 - v254.f32[1];
        v260.i32[3] = 0;
        v253.f32[0] = 0.5 - v253.f32[0];
        v261.i32[3] = 0;
        v261.f32[0] = v255 - v254.f32[2];
        v261.f32[1] = v253.f32[0] - v253.f32[2];
        v261.f32[2] = v256 + v254.f32[0];
        v98 = vmulq_n_f32(v259, v258.f32[0]);
        v99 = vmulq_lane_f32(v261, *v258.f32, 1);
        v260.f32[0] = v257 + v254.f32[1];
        v260.f32[1] = v256 - v254.f32[0];
        v260.f32[2] = v253.f32[0] - v253.f32[1];
        v100 = vmulq_laneq_f32(v260, v258, 2);
        goto LABEL_67;
      }

      v243 = *v232.i32 < *&v235.i32[1] || *v232.i32 < v229.f32[2];
      if (v243)
      {
        if (*&v235.i32[1] <= v229.f32[2])
        {
          v263 = vzip2q_s32(v232, v235).u64[0];
          v264 = __PAIR64__(v232.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v229.f32[2] + 1.0) - *v232.i32) - *&v235.i32[1])));
          v265 = vdup_lane_s32(*v235.i8, 0);
          v266 = vsub_f32(*v232.i8, v265);
          v265.i32[0] = v264.i32[0];
          v265.i32[0] = vmul_f32(v264, v265).u32[0];
          v265.i32[1] = v266.i32[1];
          *v240.f32 = vadd_f32(v263, *v229.f32);
          *&v240.u32[2] = v265;
          v241 = 0.5 / v264.f32[0];
          goto LABEL_56;
        }

        v245 = sqrtf(((*&v235.i32[1] + 1.0) - *v232.i32) - v229.f32[2]);
        v249.f32[0] = *&v232.i32[1] + *v235.i32;
        v244 = vzip2q_s32(v232, v235).u64[0];
        v249.f32[1] = v245 * v245;
        *&v249.u32[2] = vext_s8(vadd_f32(*v229.f32, v244), vsub_f32(*v229.f32, v244), 4uLL);
      }

      else
      {
        v245 = sqrtf(((*v232.i32 + 1.0) - *&v235.i32[1]) - v229.f32[2]);
        v249.f32[0] = v245 * v245;
        v246 = *&v232.i32[1] + *v235.i32;
        v247 = vzip2q_s32(v232, v235).u64[0];
        LODWORD(v248) = vadd_f32(v247, *v229.f32).u32[0];
        HIDWORD(v248) = vsub_f32(v247, *&v229).i32[1];
        v249.f32[1] = v246;
        v249.i64[1] = v248;
      }

      v242 = vmulq_n_f32(v249, 0.5 / v245);
      goto LABEL_66;
    }

    v59 = v268;
LABEL_67:
    *a4 = v98;
    a4[1] = v99;
    a4[2] = v100;
    a4[3] = v59;
  }

  return v9 != 0;
}

uint64_t sub_1AF15146C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734738 != -1)
  {
    sub_1AFDD63A0();
  }

  return qword_1ED739960;
}

void sub_1AF1514A8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF1514D8(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintConstantScale>");
}

CFStringRef sub_1AF15150C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintConstantScale>");
}

uint64_t sub_1AF151540()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739960 = result;
  return result;
}

uint64_t sub_1AF151568(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734738 != -1)
  {
    sub_1AFDD63A0();
  }

  result = sub_1AF0D160C(qword_1ED739960, 0x80uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF1515D8;
  *(result + 96) = sub_1AF1522BC;
  *(result + 136) = 1065353216;
  return result;
}

uint64_t sub_1AF1515D8(__n128 *a1, uint64_t a2, __n128 *a3, uint64_t a4, float a5)
{
  v8 = *(a2 + 16);
  *v10.i64 = sub_1AF1B7F84(a3, a2);
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v238 = v10;
  v241 = v11;
  v230 = v13;
  v233 = v12;
  if (*(v8 + 140))
  {
    result = sub_1AF12F10C(a1, v9);
    if (!result)
    {
      return result;
    }

    v16 = result;
    result = sub_1AF1BB260(result, v15);
    if (!result)
    {
      return result;
    }

    result = sub_1AF15E428(result, v17);
    if (!result)
    {
      return result;
    }

    v19 = result;
    if (*result)
    {
      v32 = *(result + 40);
    }

    else
    {
      v259 = *sub_1AF1B9B04(v16, v18);
      v260 = __invert_f4(v259);
      v215 = v260.columns[0];
      v218 = v260.columns[1];
      v226 = v260.columns[2];
      v221 = v260.columns[3];
      v21 = sub_1AF1B9AB4(a3, v20);
      v22 = vmulq_f32(vaddq_f32(v221, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, v21.n128_f32[0]), v218, v21.n128_u64[0], 1), v226, v21, 2)), xmmword_1AFE206C0);
      v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      v25 = sub_1AF15E4B8(v19, v24);
      v26 = 1.0 / (tan(v25 * 3.14159265 / 180.0 * 0.5) + v23);
      v29 = sub_1AF130548(a1);
      v28 = v29.n128_u64[1];
      v29.n128_f64[0] = v29.n128_f32[3];
      if (v29.n128_f32[3] < 0.000001)
      {
        v29.n128_f64[0] = 0.000001;
      }

      v30 = v29.n128_f32[2] / v29.n128_f64[0];
      if (sub_1AF15DE9C(v19, v27, v30))
      {
        v31 = *&v28;
      }

      else
      {
        v31 = *(&v28 + 1);
      }

      v32 = v31 * v26;
    }

    v93 = v238;
    v94 = v241;
    v95 = v233;
    if (v32 == 0.0)
    {
      return 0;
    }

    v165 = vmulq_f32(v238, v238);
    v166 = vmulq_f32(v233, v233);
    v167 = vmulq_f32(v230, v230);
    v168 = vzip2q_s32(v165, v167);
    v169 = vzip1q_s32(vzip1q_s32(v165, v167), v166);
    v170 = vtrn2q_s32(v165, v166);
    v170.i32[2] = v167.i32[1];
    v171 = vaddq_f32(vzip1q_s32(v168, vdupq_laneq_s32(v166, 2)), vaddq_f32(v169, v170));
    v166.i64[0] = 0x80000000800000;
    v166.i64[1] = 0x80000000800000;
    v172 = vcgeq_f32(v166, v171);
    v171.i32[3] = 0;
    v173 = vrsqrteq_f32(v171);
    v174 = vmulq_f32(v173, vrsqrtsq_f32(v171, vmulq_f32(v173, v173)));
    v175 = v172;
    v175.i32[3] = 0;
    v176 = vbslq_s8(vcltzq_s32(v175), v171, vmulq_f32(v174, vrsqrtsq_f32(v171, vmulq_f32(v174, v174))));
    v177 = vmulq_n_f32(v238, v176.f32[0]);
    v178 = vmulq_lane_f32(v233, *v176.f32, 1);
    v179 = vmulq_laneq_f32(v230, v176, 2);
    v180 = vuzp1q_s32(v179, v179);
    v181 = vuzp1q_s32(v178, v178);
    v182 = v177;
    if (v172.i32[0])
    {
      v183 = vmlaq_f32(vmulq_f32(vextq_s8(v180, v179, 0xCuLL), vnegq_f32(v178)), v179, vextq_s8(v181, v178, 0xCuLL));
      v182 = vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL);
    }

    v184 = vuzp1q_s32(v177, v177);
    v185 = v178;
    if (v172.i32[1])
    {
      v180 = vmlaq_f32(vmulq_f32(vextq_s8(v184, v177, 0xCuLL), vnegq_f32(v179)), v177, vextq_s8(v180, v179, 0xCuLL));
      v185 = vextq_s8(vuzp1q_s32(v180, v180), v180, 0xCuLL);
    }

    *v180.i32 = *(v8 + 136) / v32;
    if (v172.i32[2])
    {
      v186 = vmlaq_f32(vmulq_f32(vextq_s8(v181, v178, 0xCuLL), vnegq_f32(v177)), v178, vextq_s8(v184, v177, 0xCuLL));
      v179 = vextq_s8(vuzp1q_s32(v186, v186), v186, 0xCuLL);
    }

    v187 = (*v182.i32 + *&v185.i32[1]) + v179.f32[2];
    if (v187 > 0.0)
    {
      v188 = sqrtf(v187 + 1.0);
      *v189.f32 = vsub_f32(*&vzip2q_s32(v185, vuzp1q_s32(v185, v179)), *&vtrn2q_s32(v179, vzip2q_s32(v179, v182)));
      v189.f32[2] = *&v182.i32[1] - *v185.i32;
      v189.f32[3] = v188 * v188;
      v190 = 0.5 / v188;
LABEL_73:
      v191 = vmulq_n_f32(v189, v190);
LABEL_83:
      v75 = v241;
      v75.n128_u32[3] = 1.0;
      v199 = vabsq_f32(vdupq_lane_s32(*v180.i8, 0));
      v199.i32[3] = 0;
      v200.i64[0] = 0x8000000080000000;
      v200.i64[1] = 0x8000000080000000;
      v201 = vorrq_s8(vdupq_lane_s32(*&vandq_s8(v180, v200), 0), vabsq_f32(vmaxnmq_f32(v199, xmmword_1AFE20A30)));
      v202 = vmulq_f32(v191, v191);
      v203 = vmulq_laneq_f32(v191, v191, 3);
      v204 = vmuls_lane_f32(v191.f32[0], *v191.f32, 1);
      v205 = vmuls_lane_f32(v191.f32[1], v191, 2);
      v206 = vmuls_lane_f32(v191.f32[0], v191, 2);
      v207 = vaddq_f32(v201, v201);
      v208.i32[3] = 0;
      v208.f32[0] = (0.5 - v202.f32[1]) - v202.f32[2];
      v208.f32[1] = v204 + v203.f32[2];
      v208.f32[2] = v206 - v203.f32[1];
      v209.i32[3] = 0;
      v202.f32[0] = 0.5 - v202.f32[0];
      v210.i32[3] = 0;
      v210.f32[0] = v204 - v203.f32[2];
      v210.f32[1] = v202.f32[0] - v202.f32[2];
      v210.f32[2] = v205 + v203.f32[0];
      v86 = vmulq_n_f32(v208, v207.f32[0]);
      v89 = vmulq_lane_f32(v210, *v207.f32, 1);
      v209.f32[0] = v206 + v203.f32[1];
      v209.f32[1] = v205 - v203.f32[0];
      v209.f32[2] = v202.f32[0] - v202.f32[1];
      v90 = vmulq_laneq_f32(v209, v207, 2);
      v92 = a5;
      goto LABEL_37;
    }

    if (*v182.i32 < *&v185.i32[1] || *v182.i32 < v179.f32[2])
    {
      if (*&v185.i32[1] <= v179.f32[2])
      {
        v211 = vzip2q_s32(v182, v185).u64[0];
        v212 = __PAIR64__(v182.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v179.f32[2] + 1.0) - *v182.i32) - *&v185.i32[1])));
        v213 = vdup_lane_s32(*v185.i8, 0);
        v214 = vsub_f32(*v182.i8, v213);
        v213.i32[0] = v212.i32[0];
        v213.i32[0] = vmul_f32(v212, v213).u32[0];
        v213.i32[1] = v214.i32[1];
        *v189.f32 = vadd_f32(v211, *v179.f32);
        *&v189.u32[2] = v213;
        v190 = 0.5 / v212.f32[0];
        goto LABEL_73;
      }

      v194 = sqrtf(((*&v185.i32[1] + 1.0) - *v182.i32) - v179.f32[2]);
      v198.f32[0] = *&v182.i32[1] + *v185.i32;
      v193 = vzip2q_s32(v182, v185).u64[0];
      v198.f32[1] = v194 * v194;
      *&v198.u32[2] = vext_s8(vadd_f32(*v179.f32, v193), vsub_f32(*v179.f32, v193), 4uLL);
    }

    else
    {
      v194 = sqrtf(((*v182.i32 + 1.0) - *&v185.i32[1]) - v179.f32[2]);
      v198.f32[0] = v194 * v194;
      v195 = *&v182.i32[1] + *v185.i32;
      v196 = vzip2q_s32(v182, v185).u64[0];
      LODWORD(v197) = vadd_f32(v196, *v179.f32).u32[0];
      HIDWORD(v197) = vsub_f32(v196, *&v179).i32[1];
      v198.f32[1] = v195;
      v198.i64[1] = v197;
    }

    v191 = vmulq_n_f32(v198, 0.5 / v194);
    goto LABEL_83;
  }

  v33 = sub_1AF1B9A6C(a3, v9);
  v35 = v33;
  v36 = v238;
  v37 = v241;
  v38 = v230;
  v39 = v233;
  if (v33)
  {
    v40 = sub_1AF1B9B04(v33, v34);
    v41 = 0;
    v42 = *v40;
    v43 = v40[1];
    v44 = v40[2];
    v45 = v40[3];
    v247 = v238;
    v248 = v233;
    v249 = v230;
    v250 = v241;
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    do
    {
      *(&v251 + v41) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*(&v247 + v41))), v43, *&v247.f32[v41 / 4], 1), v44, *(&v247 + v41), 2), v45, *(&v247 + v41), 3);
      v41 += 16;
    }

    while (v41 != 64);
    v36 = v251;
    v39 = v252;
    v38 = v253;
    v37 = v254;
  }

  v46 = vmulq_f32(v36, v36);
  v47 = vmulq_f32(v39, v39);
  v48 = vmulq_f32(v38, v38);
  v49 = vzip2q_s32(v46, v48);
  v50 = vzip1q_s32(vzip1q_s32(v46, v48), v47);
  v51 = vtrn2q_s32(v46, v47);
  v51.i32[2] = v48.i32[1];
  v52 = vaddq_f32(vzip1q_s32(v49, vdupq_laneq_s32(v47, 2)), vaddq_f32(v50, v51));
  v51.i64[0] = 0x80000000800000;
  v51.i64[1] = 0x80000000800000;
  v53 = vcgeq_f32(v51, v52);
  v52.i32[3] = 0;
  v54 = vrsqrteq_f32(v52);
  v55 = vmulq_f32(v54, vrsqrtsq_f32(v52, vmulq_f32(v54, v54)));
  v56 = v53;
  v56.i32[3] = 0;
  v57 = vbslq_s8(vcltzq_s32(v56), v52, vmulq_f32(v55, vrsqrtsq_f32(v52, vmulq_f32(v55, v55))));
  v58 = vmulq_n_f32(v36, v57.f32[0]);
  v59 = vmulq_lane_f32(v39, *v57.f32, 1);
  v60 = vmulq_laneq_f32(v38, v57, 2);
  v61 = vuzp1q_s32(v60, v60);
  v62 = vuzp1q_s32(v59, v59);
  v63 = v58;
  if (v53.i32[0])
  {
    v64 = vmlaq_f32(vmulq_f32(vextq_s8(v61, v60, 0xCuLL), vnegq_f32(v59)), v60, vextq_s8(v62, v59, 0xCuLL));
    v63 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
  }

  v65 = vuzp1q_s32(v58, v58);
  v66 = v59;
  if (v53.i32[1])
  {
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(v65, v58, 0xCuLL), vnegq_f32(v60)), v58, vextq_s8(v61, v60, 0xCuLL));
    v66 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
  }

  if (v53.i32[2])
  {
    v68 = vextq_s8(v65, v58, 0xCuLL);
    v58 = vnegq_f32(v58);
    v53 = vmlaq_f32(vmulq_f32(vextq_s8(v62, v59, 0xCuLL), v58), v59, v68);
    v60 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
  }

  v69 = (*v63.i32 + *&v66.i32[1]) + v60.f32[2];
  v227 = v37;
  if (v69 <= 0.0)
  {
    if (*v63.i32 < *&v66.i32[1] || *v63.i32 < v60.f32[2])
    {
      if (*&v66.i32[1] <= v60.f32[2])
      {
        *v53.i32 = sqrtf(((v60.f32[2] + 1.0) - *v63.i32) - *&v66.i32[1]);
        v70.i64[0] = vzip2q_s32(v63, v66).u64[0];
        v58.i64[0] = __PAIR64__(v63.u32[1], v53.u32[0]);
        v164 = vdup_lane_s32(*v66.i8, 0);
        *v63.i8 = vsub_f32(*v63.i8, v164);
        v164.i32[0] = v53.i32[0];
        v66.i32[0] = vmul_f32(*v58.f32, v164).u32[0];
        v66.i32[1] = v63.i32[1];
        *v71.f32 = vadd_f32(*v70.f32, *v60.f32);
        v71.i64[1] = v66.i64[0];
        *v63.i32 = 0.5 / *v53.i32;
        goto LABEL_24;
      }

      *v53.i32 = sqrtf(((*&v66.i32[1] + 1.0) - *v63.i32) - v60.f32[2]);
      v70.f32[0] = *&v63.i32[1] + *v66.i32;
      v58.f32[0] = *v53.i32 * *v53.i32;
      v63.i64[0] = vzip2q_s32(v63, v66).u64[0];
      *v66.i8 = vadd_f32(*v60.f32, *v63.i8);
      v70.f32[1] = *v53.i32 * *v53.i32;
      *&v70.u32[2] = vext_s8(*v66.i8, vsub_f32(*v60.f32, *v63.i8), 4uLL);
    }

    else
    {
      *v53.i32 = sqrtf(((*v63.i32 + 1.0) - *&v66.i32[1]) - v60.f32[2]);
      v70.f32[0] = *v53.i32 * *v53.i32;
      v58.f32[0] = *&v63.i32[1] + *v66.i32;
      v63.i64[0] = vzip2q_s32(v63, v66).u64[0];
      v66.i32[0] = vadd_f32(*v63.i8, *v60.f32).u32[0];
      v66.i32[1] = vsub_f32(*&v63, *&v60).i32[1];
      v70.i32[1] = v58.i32[0];
      v70.i64[1] = v66.i64[0];
    }

    v72 = vmulq_n_f32(v70, 0.5 / *v53.i32);
    goto LABEL_33;
  }

  *v53.i32 = sqrtf(v69 + 1.0);
  v70.i64[0] = vzip2q_s32(v66, vuzp1q_s32(v66, v60)).u64[0];
  v58 = vzip2q_s32(v60, v63);
  *v71.f32 = vsub_f32(*v70.f32, *&vtrn2q_s32(v60, v58));
  v71.f32[2] = *&v63.i32[1] - *v66.i32;
  v71.f32[3] = *v53.i32 * *v53.i32;
  *v63.i32 = 0.5 / *v53.i32;
LABEL_24:
  v72 = vmulq_n_f32(v71, *v63.i32);
LABEL_33:
  v222 = v72;
  *v74.i64 = sub_1AF1BA070(a3, v34, *v72.i64, *v63.i64, *v66.i64, *v53.i64, *v70.i64, *v58.i64, v62);
  v75 = v227;
  v75.n128_u32[3] = 1.0;
  v76 = vabsq_f32(v74);
  v76.i32[3] = 0;
  v77.i64[0] = 0x8000000080000000;
  v77.i64[1] = 0x8000000080000000;
  v78 = vorrq_s8(vandq_s8(v74, v77), vabsq_f32(vmaxnmq_f32(v76, xmmword_1AFE20A30)));
  v79 = v222;
  v80 = vmulq_f32(v79, v79);
  v81 = vmulq_laneq_f32(v79, v79, 3);
  v82 = vmuls_lane_f32(v79.f32[0], *v79.f32, 1);
  v83 = vmuls_lane_f32(v222.f32[1], v222, 2);
  v79.f32[0] = vmuls_lane_f32(v79.f32[0], v79, 2);
  v84 = vaddq_f32(v78, v78);
  v85.i32[3] = 0;
  v85.f32[0] = (0.5 - v80.f32[1]) - v80.f32[2];
  v85.f32[1] = v82 + v81.f32[2];
  v85.f32[2] = v79.f32[0] - v81.f32[1];
  v86 = vmulq_n_f32(v85, v84.f32[0]);
  v80.f32[0] = 0.5 - v80.f32[0];
  v87.i32[3] = 0;
  v87.f32[0] = v82 - v81.f32[2];
  v87.f32[1] = v80.f32[0] - v80.f32[2];
  v87.f32[2] = v83 + v81.f32[0];
  v81.f32[0] = v83 - v81.f32[0];
  v88.f32[0] = v79.f32[0] + v81.f32[1];
  v88.i32[1] = v81.i32[0];
  v88.i64[1] = COERCE_UNSIGNED_INT(v80.f32[0] - v80.f32[1]);
  v89 = vmulq_lane_f32(v87, *v84.f32, 1);
  v243 = v86;
  v244 = v89;
  v90 = vmulq_laneq_f32(v88, v84, 2);
  v245 = v90;
  v246 = v75;
  if (!v35)
  {
    v92 = a5;
    v93 = v238;
    v94 = v241;
    v95 = v233;
    goto LABEL_39;
  }

  v228 = v75;
  v216 = v86;
  v219 = v89;
  v223 = v90;
  v261 = *sub_1AF1B9B04(v35, v18);
  v262 = __invert_f4(v261);
  v91 = 0;
  v247 = v216;
  v248 = v219;
  v249 = v223;
  v250 = v228;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  do
  {
    *(&v251 + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v262.columns[0], COERCE_FLOAT(*(&v247 + v91))), v262.columns[1], *&v247.f32[v91 / 4], 1), v262.columns[2], *(&v247 + v91), 2), v262.columns[3], *(&v247 + v91), 3);
    v91 += 16;
  }

  while (v91 != 64);
  v86 = v251;
  v89 = v252;
  v90 = v253;
  v75 = v254;
  v92 = a5;
  v93 = v238;
  v94 = v241;
  v95 = v233;
LABEL_37:
  v243 = v86;
  v244 = v89;
  v245 = v90;
  v246 = v75;
LABEL_39:
  if (v92 != 1.0)
  {
    v251 = 0uLL;
    v247 = 0uLL;
    v258.i32[2] = 0;
    v258.i64[0] = 0;
    v257.i32[2] = 0;
    v257.i64[0] = 0;
    v256.i32[2] = 0;
    v256.i64[0] = 0;
    v255.i32[2] = 0;
    v255.i64[0] = 0;
    v220 = v89;
    v224 = v90;
    v229 = v75;
    v217 = v86;
    v96 = sub_1AF120324(&v251, &v258, &v256, v93, v95, v230, v94);
    v97 = sub_1AF120324(&v247, &v257, &v255, v217, v220, v224, v229);
    if (v96)
    {
      v98 = v238;
      v99 = v241;
      v100 = v230;
      v101 = v233;
      if (v97)
      {
        v102 = vmulq_f32(v251, v247);
        v239 = v247;
        v242 = v251;
        v103 = 1.0;
        if (vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL))) >= 0.0)
        {
          v126 = 1.0 - a5;
          v127 = vsubq_f32(v251, v247);
          v128 = vmulq_f32(v127, v127);
          v129 = vaddq_f32(v251, v247);
          v130 = vmulq_f32(v129, v129);
          v131 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v128.i8, *&vextq_s8(v128, v128, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL)))));
          v132 = v131 + v131;
          v111 = (v131 + v131) == 0.0;
          v133 = 1.0;
          if (!v111)
          {
            v133 = sinf(v132) / v132;
          }

          v134 = v133;
          v135 = vrecpe_f32(LODWORD(v133));
          v136 = vmul_f32(v135, vrecps_f32(LODWORD(v134), v135));
          LODWORD(v137) = vmul_f32(v136, vrecps_f32(LODWORD(v134), v136)).u32[0];
          if ((v126 * v132) != 0.0)
          {
            v236 = v137;
            v136.f32[0] = sinf(v126 * v132);
            v137 = v236;
            v103 = v136.f32[0] / (v126 * v132);
          }

          v136.f32[0] = v126 * (v137 * v103);
          v138 = vdupq_lane_s32(v136, 0);
          v121 = a5;
          v139 = v132 * a5;
          v140 = 1.0;
          if (v139 != 0.0)
          {
            v232 = v138;
            v237 = v137;
            v141 = sinf(v139);
            v138 = v232;
            v137 = v237;
            v121 = a5;
            v140 = v141 / v139;
          }

          v125 = vmlaq_f32(vmulq_n_f32(v239, (v137 * v140) * v121), v242, v138);
        }

        else
        {
          v104 = 1.0 - a5;
          v105 = vaddq_f32(v251, v247);
          v106 = vmulq_f32(v105, v105);
          v107 = vsubq_f32(v251, v247);
          v108 = vmulq_f32(v107, v107);
          v109 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v106.i8, *&vextq_s8(v106, v106, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL)))));
          v110 = v109 + v109;
          v111 = (v109 + v109) == 0.0;
          v112 = 1.0;
          if (!v111)
          {
            v112 = sinf(v110) / v110;
          }

          v113 = v112;
          v114 = vrecpe_f32(LODWORD(v112));
          v115 = vmul_f32(v114, vrecps_f32(LODWORD(v113), v114));
          LODWORD(v116) = vmul_f32(v115, vrecps_f32(LODWORD(v113), v115)).u32[0];
          if ((v104 * v110) != 0.0)
          {
            v234 = v116;
            v117 = sinf(v104 * v110);
            v116 = v234;
            v103 = v117 / (v104 * v110);
          }

          v118.i32[1] = v239.i32[1];
          v119 = vnegq_f32(v239);
          *v118.i32 = v104 * (v116 * v103);
          v120 = vdupq_lane_s32(v118, 0);
          v121 = a5;
          v122 = v110 * a5;
          v123 = 1.0;
          if (v122 != 0.0)
          {
            v235 = v116;
            v240 = v119;
            v231 = v120;
            v124 = sinf(v122);
            v120 = v231;
            v116 = v235;
            v119 = v240;
            v121 = a5;
            v123 = v124 / v122;
          }

          v125 = vmlaq_f32(vmulq_n_f32(v119, (v116 * v123) * v121), v242, v120);
        }

        v142 = vmulq_f32(v125, v125);
        *v142.i8 = vadd_f32(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
        v143 = vdupq_lane_s32(vadd_f32(*v142.i8, vdup_lane_s32(*v142.i8, 1)), 0);
        v144 = vrsqrteq_f32(v143);
        v145 = vmulq_f32(v144, vrsqrtsq_f32(v143, vmulq_f32(v144, v144)));
        v146 = vbslq_s8(vceqzq_f32(v143), v125, vmulq_f32(vmulq_f32(v145, vrsqrtsq_f32(v143, vmulq_f32(v145, v145))), v125));
        v147 = vmlaq_n_f32(v256, vsubq_f32(v255, v256), v121);
        v99 = vmlaq_n_f32(v258, vsubq_f32(v257, v258), v121);
        v99.i32[3] = 1.0;
        v148 = vabsq_f32(v147);
        v148.i32[3] = 0;
        v149.i64[0] = 0x8000000080000000;
        v149.i64[1] = 0x8000000080000000;
        v150 = vorrq_s8(vandq_s8(v147, v149), vabsq_f32(vmaxnmq_f32(v148, xmmword_1AFE20A30)));
        v151 = vmulq_f32(v146, v146);
        v152 = vmulq_laneq_f32(v146, v146, 3);
        v153 = vmuls_lane_f32(v146.f32[0], *v146.f32, 1);
        v154 = vmuls_lane_f32(v146.f32[1], v146, 2);
        v146.f32[0] = vmuls_lane_f32(v146.f32[0], v146, 2);
        v155 = vaddq_f32(v150, v150);
        v156.i32[3] = 0;
        v156.f32[0] = (0.5 - v151.f32[1]) - v151.f32[2];
        v156.f32[1] = v153 + v152.f32[2];
        v156.f32[2] = v146.f32[0] - v152.f32[1];
        v157.i32[3] = 0;
        v151.f32[0] = 0.5 - v151.f32[0];
        v158.i32[3] = 0;
        v158.f32[0] = v153 - v152.f32[2];
        v158.f32[1] = v151.f32[0] - v151.f32[2];
        v158.f32[2] = v154 + v152.f32[0];
        v98 = vmulq_n_f32(v156, v155.f32[0]);
        v101 = vmulq_lane_f32(v158, *v155.f32, 1);
        v157.f32[0] = v146.f32[0] + v152.f32[1];
        v157.f32[1] = v154 - v152.f32[0];
        v157.f32[2] = v151.f32[0] - v151.f32[1];
        v100 = vmulq_laneq_f32(v157, v155, 2);
      }
    }

    else
    {
      v98 = v238;
      v99 = v241;
      v100 = v230;
      v101 = v233;
    }

    v243 = v98;
    v244 = v101;
    v245 = v100;
    v246 = v99;
  }

  v159 = sub_1AF1DE360(a4, v18);
  v161 = sub_1AF1DE3A8(a4, v160);
  v163 = sub_1AF288070(10, v162);
  sub_1AF1C35C0(v159, v161, &v243, v163, *(a4 + 34), *(a4 + 35));
  return 1;
}

void sub_1AF1522E0(uint64_t a1)
{
  _Block_release(*(a1 + 136));
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF152328(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintProcedural>");
}

CFStringRef sub_1AF15235C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintProcedural>");
}

uint64_t sub_1AF152390()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739958 = result;
  return result;
}

uint64_t sub_1AF1523B8(const void *a1, const void *a2)
{
  if (qword_1ED734720 != -1)
  {
    sub_1AFDD6198();
  }

  v4 = sub_1AF0D160C(qword_1ED739958, 0x88uLL);
  *(v4 + 72) = 1065353216;
  *(v4 + 76) = 257;
  *(v4 + 136) = _Block_copy(a1);
  *(v4 + 144) = CFRetain(a2);
  *(v4 + 88) = sub_1AF152468;
  *(v4 + 96) = sub_1AF152494;
  *(v4 + 72) = 1065353216;
  *(v4 + 76) = 1;
  return v4;
}

void *sub_1AF15249C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734720 != -1)
  {
    sub_1AFDD6198();
  }

  v3 = sub_1AF0D160C(qword_1ED739958, 0x88uLL);
  v3[17] = _Block_copy(*(a1 + 136));
  v3[18] = CFRetain(*(a1 + 144));
  v3[11] = sub_1AF152468;
  v3[12] = sub_1AF152494;
  return v3;
}

void sub_1AF152524()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD20 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"targetPosition", 144, 8, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF1525A8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD28 != -1)
  {
    sub_1AFDD61AC();
  }

  result = sub_1AF0D160C(qword_1ED73AD20, 0xB0uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF152614;
  *(result + 96) = sub_1AF1530AC;
  return result;
}

BOOL sub_1AF152614(uint64_t a1, uint64_t a2, simd_float4 *a3, float a4)
{
  v4 = *(a2 + 16);
  v5 = v4[8].n128_u64[1];
  if (!v5)
  {
    return 0;
  }

  v7 = v4[10].n128_u64[0];
  if (v7)
  {
LABEL_3:
    v220 = v4[10].n128_i64[1];
    v8 = sub_1AF1C3FAC(v5, a2);
    if (v8 && (v8 = sub_1AF1CFFC0(v8, v9)) != 0)
    {
      v15 = v8;
      v16 = 0;
    }

    else
    {
      v17 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD63B4(v17, v9, v18, v19, v20, v21, v22, v23);
      }

      v15 = 0;
      v16 = 1;
    }

    v219 = a4;
    if (a4 != 1.0 && v220 >= 1)
    {
      v24 = v220;
      v25 = v7;
      do
      {
        sub_1AF1DEE48(v15, *v25);
        *&v34 = sub_1AF1BA0F4(*v25, v26, v27, v28, v29, v30, v31, v32, v33);
        *(v25 + 2) = v34;
        v25 += 6;
        --v24;
      }

      while (v24);
    }

    v35 = 0;
    v36 = v220 - 1;
    v238 = 0u;
    v37 = 0.5;
    v225 = 0u;
    do
    {
      v38 = (v7 + 8);
      if (v220 >= 2)
      {
        do
        {
          v39 = *v7;
          v40 = v38[-1].i64[0];
          if (!v35)
          {
            sub_1AF1DEE48(v15, v38[-1].i64[0]);
          }

          v41.n128_f64[0] = sub_1AF1B9F08(v39);
          v239 = v41;
          v43 = sub_1AF1B9A6C(v39, v42);
          *v44.i64 = sub_1AF15328C(v43, v40, v239);
          v238 = v44;
          *v45.i64 = sub_1AF15328C(0, v40, v4[9]);
          v46 = v45;
          v47 = vmulq_f32(v238, v238);
          *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
          *v47.f32 = vrsqrte_f32(v48);
          *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
          v49 = vmulq_n_f32(v238, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
          v50 = vmulq_f32(v46, v46);
          *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
          *v50.f32 = vrsqrte_f32(v51);
          *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
          v233 = v49;
          v225 = v46;
          v226 = vmulq_n_f32(v46, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
          v52 = vmulq_f32(v49, v226);
          v53 = v52.f32[2] + vaddv_f32(*v52.f32);
          v54 = v53 > 1.0 || v53 < -1.0;
          if (v53 <= 1.0 && v53 < -1.0)
          {
            v55 = -1.0;
          }

          else
          {
            v55 = 1.0;
          }

          if (v54)
          {
            v53 = v55;
          }

          v56 = acosf(v53);
          if ((v4[11].n128_u8[8] & 1) != 0 || v56 > 0.00001)
          {
            v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v226, v226), v226, 0xCuLL), vnegq_f32(v233)), v226, vextq_s8(vuzp1q_s32(v233, v233), v233, 0xCuLL));
            v58 = vmulq_f32(v57, v57);
            v58.f32[0] = v58.f32[1] + (v58.f32[2] + v58.f32[0]);
            v59 = vdupq_lane_s32(*v58.f32, 0);
            v59.i32[3] = 0;
            v60 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
            v61 = vrsqrteq_f32(v59);
            v62 = vmulq_f32(v61, vrsqrtsq_f32(v59, vmulq_f32(v61, v61)));
            v63 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v58.f32[0] != 0.0)), 0x1FuLL));
            v63.i32[3] = 0;
            v64 = vbslq_s8(vcltzq_s32(v63), vmulq_f32(v60, vmulq_f32(v62, vrsqrtsq_f32(v59, vmulq_f32(v62, v62)))), v60);
            v65 = vmulq_f32(v64, v64);
            v65.f32[0] = v65.f32[2] + vaddv_f32(*v65.f32);
            v66 = vdupq_lane_s32(*v65.f32, 0);
            v66.i32[3] = 0;
            v67 = vrsqrteq_f32(v66);
            v68 = vmulq_f32(v67, vrsqrtsq_f32(v66, vmulq_f32(v67, v67)));
            v69 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v65.f32[0] != 0.0)), 0x1FuLL));
            v69.i32[3] = 0;
            v234 = vbslq_s8(vcltzq_s32(v69), vmulq_f32(vmulq_f32(v68, vrsqrtsq_f32(v66, vmulq_f32(v68, v68))), v64), v64);
            v71 = __sincosf_stret(v56 * v37);
            *&v70 = v71.__cosval;
            v227 = v70;
            v72 = *v234.i64;
            v235 = vmulq_n_f32(v234, v71.__sinval);
            *_Q0.i64 = sub_1AF1BA0F4(v40, v73, *v235.i64, v72, v74, v75, v76, v77, v78);
            _D5 = v227;
            v82 = v235;
            v83 = vnegq_f32(_Q0);
            v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v235, 0xCuLL), v83), v235, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
            v89 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(_Q0, *&v227), v235, _Q0, 3), vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL));
            __asm { FMLA            S2, S5, V0.S[3] }

            v89.i32[3] = _S2;
            v90 = vmulq_f32(v89, v89);
            *v90.i8 = vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
            v91 = vdupq_lane_s32(vadd_f32(*v90.i8, vdup_lane_s32(*v90.i8, 1)), 0);
            v92 = vrsqrteq_f32(v91);
            v93 = vmulq_f32(v92, vrsqrtsq_f32(v91, vmulq_f32(v92, v92)));
            v94 = vmulq_f32(vmulq_f32(v93, vrsqrtsq_f32(v91, vmulq_f32(v93, v93))), v89);
            _Q3 = vbslq_s8(vceqzq_f32(v91), v89, v94);
            v96 = v38[-1].f32[2];
            if (v96 < 3.14159265)
            {
              _Q1 = vmulq_f32(*v38, *v38);
              *_Q1.i8 = vadd_f32(*_Q1.i8, *&vextq_s8(_Q1, _Q1, 8uLL));
              v228 = *v38;
              v236 = _Q3;
              _Q1.i32[0] = vdivq_f32(vmulq_f32(*v38, xmmword_1AFE21390), vdupq_lane_s32(vadd_f32(*&_Q1, vdup_lane_s32(*&_Q1, 1)), 0)).i32[3];
              __asm { FMLA            S0, S1, V3.S[3]; float }

              v99 = acosf(_S0);
              v100 = fabsf(v99 + v99);
              if (v100 <= v96)
              {
                _Q3 = v236;
              }

              else
              {
                v101 = v96 / v100;
                v102 = vmulq_f32(v236, v228);
                v103 = vaddq_f32(v236, v228);
                v104 = 1.0;
                if (vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL))) >= 0.0)
                {
                  v122 = vsubq_f32(v228, v236);
                  v123 = vmulq_f32(v122, v122);
                  v124 = vmulq_f32(v103, v103);
                  v125 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v124.i8, *&vextq_s8(v124, v124, 8uLL)))));
                  v126 = v125 + v125;
                  v127 = 1.0;
                  if ((v125 + v125) != 0.0)
                  {
                    v127 = sinf(v125 + v125) / v126;
                  }

                  v128 = (1.0 - v101) * v126;
                  if (v128 != 0.0)
                  {
                    v223 = v127;
                    v129 = sinf((1.0 - v101) * v126);
                    v127 = v223;
                    v104 = v129 / v128;
                  }

                  v130 = v101 * v126;
                  v131 = 1.0;
                  if (v130 != 0.0)
                  {
                    v224 = v127;
                    v132 = sinf(v130);
                    v127 = v224;
                    v131 = v132 / v130;
                  }

                  v133 = v127;
                  v134 = vrecpe_f32(LODWORD(v127));
                  v135 = vmul_f32(v134, vrecps_f32(LODWORD(v133), v134));
                  v136 = vmul_f32(v135, vrecps_f32(LODWORD(v133), v135)).f32[0];
                  v135.f32[0] = (1.0 - v101) * (v136 * v104);
                  v120 = vdupq_lane_s32(v135, 0);
                  v121 = vmulq_n_f32(v236, v101 * (v136 * v131));
                }

                else
                {
                  v105 = vmulq_f32(v103, v103);
                  v106 = vsubq_f32(v228, v236);
                  v107 = vmulq_f32(v106, v106);
                  v108 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)))));
                  v109 = v108 + v108;
                  v110 = 1.0;
                  if ((v108 + v108) != 0.0)
                  {
                    v110 = sinf(v108 + v108) / v109;
                  }

                  v111 = (1.0 - v101) * v109;
                  if (v111 != 0.0)
                  {
                    v221 = v110;
                    v112 = sinf((1.0 - v101) * v109);
                    v110 = v221;
                    v104 = v112 / v111;
                  }

                  v113 = v101 * v109;
                  v114 = 1.0;
                  if (v113 != 0.0)
                  {
                    v222 = v110;
                    v115 = sinf(v113);
                    v110 = v222;
                    v114 = v115 / v113;
                  }

                  v116 = v110;
                  v117 = vrecpe_f32(LODWORD(v110));
                  v118 = vmul_f32(v117, vrecps_f32(LODWORD(v116), v117));
                  v119 = vmul_f32(v118, vrecps_f32(LODWORD(v116), v118)).f32[0];
                  v118.f32[0] = (1.0 - v101) * (v119 * v104);
                  v120 = vdupq_lane_s32(v118, 0);
                  v121 = vmulq_n_f32(vnegq_f32(v236), v101 * (v119 * v114));
                }

                v137 = vmlaq_f32(v121, v228, v120);
                v138 = vmulq_f32(v137, v137);
                *v138.i8 = vadd_f32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
                v139 = vdupq_lane_s32(vadd_f32(*v138.i8, vdup_lane_s32(*v138.i8, 1)), 0);
                v140 = vrsqrteq_f32(v139);
                v141 = vmulq_f32(v140, vrsqrtsq_f32(v139, vmulq_f32(v140, v140)));
                v94 = vmulq_f32(vmulq_f32(v141, vrsqrtsq_f32(v139, vmulq_f32(v141, v141))), v137);
                v89 = vceqzq_f32(v139);
                _Q3 = vbslq_s8(v89, v137, v94);
                v37 = 0.5;
              }
            }

            sub_1AF1BA184(v40, _Q3, v79, *v89.i64, *v94.i64, _Q3.n128_f64[0], *v83.i64, _D5, v82);
          }

          if ((v16 & 1) == 0)
          {
            sub_1AF1DEDE8(v15, v40);
          }

          v38 += 3;
          --v36;
        }

        while (v36);
      }

      HIDWORD(v144) = v225.i32[1];
      v142 = vsubq_f32(v238, v225);
      v143 = vmulq_f32(v142, v142);
      ++v35;
      LODWORD(v144) = 1063675494;
      _ZF = sqrtf(v143.f32[2] + vaddv_f32(*v143.f32)) < 0.9 || v35 == 10;
      v36 = v220 - 1;
    }

    while (!_ZF);
    result = 1;
    v143.i32[0] = 1.0;
    if (v219 != 1.0 && v220 >= 2)
    {
      v147 = 1.0 - v219;
      v148 = (v7 + 10);
      do
      {
        v149 = v148[-2].i64[0];
        *v150.i64 = sub_1AF1BA0F4(v149, v9, *v143.i64, v144, v10, v11, v12, v13, v14);
        v151 = v150;
        v152 = *v148;
        v153 = vmulq_f32(v150, *v148);
        v154 = vaddq_f32(v151, *v148);
        v237 = v151;
        v240 = *v148;
        if (vaddv_f32(vadd_f32(*v153.i8, *&vextq_s8(v153, v153, 8uLL))) >= 0.0)
        {
          v176 = vsubq_f32(v152, v151);
          v177 = vmulq_f32(v176, v176);
          v178 = vmulq_f32(v154, v154);
          v179 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v177.i8, *&vextq_s8(v177, v177, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v178.i8, *&vextq_s8(v178, v178, 8uLL)))));
          v180 = v179 + v179;
          v181 = 1.0;
          v182 = 1.0;
          if ((v179 + v179) != 0.0)
          {
            v182 = sinf(v179 + v179) / v180;
          }

          if ((v147 * v180) != 0.0)
          {
            v231 = v182;
            v183 = sinf(v147 * v180);
            v182 = v231;
            v181 = v183 / (v147 * v180);
          }

          v184 = v180 * v219;
          v185 = 1.0;
          if (v184 != 0.0)
          {
            v232 = v182;
            v186 = sinf(v184);
            v182 = v232;
            v185 = v186 / v184;
          }

          v187 = v182;
          v188 = vrecpe_f32(LODWORD(v182));
          v189 = vmul_f32(v188, vrecps_f32(LODWORD(v187), v188));
          v190 = vmul_f32(v189, vrecps_f32(LODWORD(v187), v189)).f32[0];
          v189.f32[0] = v147 * (v190 * v181);
          v174 = vdupq_lane_s32(v189, 0);
          v175 = vmulq_n_f32(v237, (v190 * v185) * v219);
        }

        else
        {
          v155 = vmulq_f32(v154, v154);
          v156 = vsubq_f32(v152, v151);
          v157 = vmulq_f32(v156, v156);
          v159 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v155.i8, *&vextq_s8(v155, v155, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v157.i8, *&vextq_s8(v157, v157, 8uLL)))));
          v163 = v159 + v159;
          v164 = 1.0;
          v165 = 1.0;
          if ((v159 + v159) != 0.0)
          {
            v165 = sinf(v159 + v159) / v163;
          }

          if ((v147 * v163) != 0.0)
          {
            v229 = v165;
            v166 = sinf(v147 * v163);
            v165 = v229;
            v164 = v166 / (v147 * v163);
          }

          v167 = v163 * v219;
          v168 = 1.0;
          if (v167 != 0.0)
          {
            v230 = v165;
            v169 = sinf(v167);
            v165 = v230;
            v168 = v169 / v167;
          }

          v170 = v165;
          v171 = vrecpe_f32(LODWORD(v165));
          v172 = vmul_f32(v171, vrecps_f32(LODWORD(v170), v171));
          v173 = vmul_f32(v172, vrecps_f32(LODWORD(v170), v172)).f32[0];
          v172.f32[0] = v147 * (v173 * v164);
          v174 = vdupq_lane_s32(v172, 0);
          v175 = vmulq_n_f32(vnegq_f32(v237), (v173 * v168) * v219);
        }

        v191 = vmlaq_f32(v175, v240, v174);
        v192 = vmulq_f32(v191, v191);
        *v192.i8 = vadd_f32(*v192.i8, *&vextq_s8(v192, v192, 8uLL));
        v193 = vdupq_lane_s32(vadd_f32(*v192.i8, vdup_lane_s32(*v192.i8, 1)), 0);
        v194 = vrsqrteq_f32(v193);
        v195 = vmulq_f32(v194, vrsqrtsq_f32(v193, vmulq_f32(v194, v194)));
        v196 = vrsqrtsq_f32(v193, vmulq_f32(v195, v195));
        v197 = vmulq_f32(vmulq_f32(v195, v196), v191);
        v198 = vceqzq_f32(v193);
        sub_1AF1BA184(v149, vbslq_s8(v198, v191, v197), v158, *v198.i64, *v197.i64, *v196.i64, v160, v161, v162);
        v148 += 3;
        --v36;
      }

      while (v36);
      return 1;
    }

    return result;
  }

  v199 = a3;
  if (v5 == a3)
  {
    if ((byte_1EB6584B1 & 1) == 0)
    {
      byte_1EB6584B1 = 1;
      v217 = sub_1AF0D5194(a1, a2);
      result = os_log_type_enabled(v217, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1AFDD6470(v217);
    }

    return 0;
  }

  v200 = 0;
  v201 = 0;
  v202 = a3;
  while (v202)
  {
    ++v201;
    v202 = sub_1AF1B9A6C(v202, a2);
    v200 += 48;
    if (v202 == v5)
    {
      v203 = malloc_type_malloc(v200, 0x102004031CE6520uLL);
      v211 = 0;
      v4[10].n128_u64[0] = v203;
      v4[10].n128_u64[1] = v201;
      do
      {
        v212 = v4[10].n128_u64[0];
        *(v212 + v211 + 8) = 1078530011;
        v213 = v4[11].n128_u64[0];
        if (v213)
        {
          Value = CFDictionaryGetValue(v213, v199);
          v212 = v4[10].n128_u64[0];
          if (Value)
          {
            *(v212 + v211 + 8) = Value;
          }
        }

        *(v212 + v211) = v199;
        *&v215 = sub_1AF1BA0F4(v199, a2, v204, v205, v206, v207, v208, v209, v210);
        *(v4[10].n128_u64[0] + v211 + 16) = v215;
        v199 = sub_1AF1B9A6C(v199, v216);
        v211 += 48;
        --v201;
      }

      while (v201);
      v7 = v4[10].n128_u64[0];
      goto LABEL_3;
    }
  }

  if (byte_1EB6584B0)
  {
    return 0;
  }

  byte_1EB6584B0 = 1;
  v218 = sub_1AF0D5194(0, a2);
  result = os_log_type_enabled(v218, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD642C(v218);
    return 0;
  }

  return result;
}

void sub_1AF1530BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
  v12 = *(a1 + 160);
  if (v12)
  {
    free(v12);
    *(a1 + 160) = 0;
  }
}

void sub_1AF153120(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[9] = a3;
}

void sub_1AF15317C(uint64_t a1, void *key, float a3)
{
  Mutable = *(a1 + 176);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a1 + 176) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, LODWORD(a3));
  *(a1 + 184) = 1;
  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = *(a1 + 168);
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(v9);
      v12 = xmmword_1AFE21100;
      v13 = xmmword_1AFE21110;
      v14 = (v7 + 104);
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (vuzp1_s16(v16, *v11.i8).u8[0])
        {
          *(v14 - 24) = a3;
        }

        if (vuzp1_s16(v16, *&v11).i8[2])
        {
          *(v14 - 12) = a3;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
        {
          *v14 = a3;
          v14[12] = a3;
        }

        v12 = vaddq_s64(v12, v15);
        v13 = vaddq_s64(v13, v15);
        v14 += 48;
        v10 -= 4;
      }

      while (v10);
    }
  }
}

double sub_1AF15328C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 != a2)
  {
    v33 = v3;
    v34 = v4;
    v24 = a3;
    v35 = *sub_1AF1B9B04(a2, a2);
    v36 = __invert_f4(v35);
    if (a1)
    {
      v22 = v36.columns[1];
      v23 = v36.columns[0];
      v20 = v36.columns[3];
      v21 = v36.columns[2];
      v7 = sub_1AF1B9B04(a1, v6);
      v36.columns[3] = v20;
      v36.columns[2] = v21;
      v36.columns[1] = v22;
      v36.columns[0] = v23;
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
    }

    else
    {
      v11 = *&zmmword_1AFE213F0[32];
      v10 = *&zmmword_1AFE213F0[48];
      v9 = *zmmword_1AFE213F0;
      v8 = *&zmmword_1AFE213F0[16];
    }

    v12 = 0;
    v13 = v24;
    v13.n128_u32[3] = 1.0;
    v25 = v9;
    v26 = v8;
    v27 = v11;
    v28 = v10;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    do
    {
      *(&v29 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(&v25 + v12))), v36.columns[1], *(&v25 + v12), 1), v36.columns[2], *(&v25 + v12), 2), v36.columns[3], *(&v25 + v12), 3);
      v12 += 16;
    }

    while (v12 != 64);
    v14 = 0;
    v15 = v29;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    v25 = xmmword_1AFE20150;
    v26 = xmmword_1AFE20160;
    v27 = xmmword_1AFE20180;
    v28 = v13;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    do
    {
      *(&v29 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v25 + v14))), v16, *(&v25 + v14), 1), v17, *(&v25 + v14), 2), v18, *(&v25 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
    a3.n128_u64[0] = v32.i64[0];
  }

  return a3.n128_f64[0];
}

void sub_1AF1533C8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD40 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"minimumDistance", 144, 1, 0);
  sub_1AF1DD02C(@"maximumDistance", 148, 1, 0);

  sub_1AF1DD018();
}

void sub_1AF153464(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[11] = a3;
}

void sub_1AF1534C0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 152) = v2;
}

void sub_1AF153514(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 144) = a3;
}

void sub_1AF153568(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 148) = a3;
}

BOOL sub_1AF1535BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v8 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  v16 = v15[8].i64[1];
  if (v16)
  {
    v135 = sub_1AF1B9AB4(v15[8].i64[1], a2);
    v137 = sub_1AF1B9AB4(a3, v17);
    v19 = vsubq_f32(v137, v135);
    v20 = vmulq_f32(v19, v19);
    v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    v134 = v20;
    if (v20.f32[0] == 0.0)
    {
      v21.f32[0] = arc4random();
      v132 = v21;
      v130 = arc4random();
      v22 = arc4random();
      v24 = v132;
      v24.f32[1] = v130;
      v24.f32[2] = v22;
      v19 = vmulq_f32(v24, v24);
      v23 = v24;
      v24.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v24.u32[0]);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v24.u32[0], vmul_f32(*v19.f32, *v19.f32)));
      *v24.f32 = vrsqrts_f32(v24.u32[0], vmul_f32(*v19.f32, *v19.f32));
      *v19.f32 = vmul_f32(*v19.f32, *v24.f32);
      v25 = vmulq_n_f32(v23, v19.f32[0]);
    }

    else
    {
      v24 = vdupq_lane_s32(*v20.f32, 0);
      v25 = vdivq_f32(v19, v24);
    }

    if (v15[9].i8[8] == 1)
    {
      v128 = v25;
      *v26.i64 = sub_1AF1B9BEC(v15[8].i64[1], v18);
      v133 = v26;
      v27 = vmulq_f32(v26, xmmword_1AFE21390);
      v28 = vmulq_f32(v27, v27);
      *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      v29 = vdupq_lane_s32(vadd_f32(*v28.i8, vdup_lane_s32(*v28.i8, 1)), 0);
      v30 = vrsqrteq_f32(v29);
      v31 = vmulq_f32(v30, vrsqrtsq_f32(v29, vmulq_f32(v30, v30)));
      v131 = v27;
      v32 = vbslq_s8(vceqzq_f32(v29), v27, vmulq_f32(v27, vmulq_f32(v31, vrsqrtsq_f32(v29, vmulq_f32(v31, v31)))));
      v33 = vmulq_f32(v32, xmmword_1AFE21390);
      v34 = vnegq_f32(v33);
      v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
      v36 = vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), *&vnegq_f32(v128), 1);
      v37 = vrev64q_s32(v33);
      v37.i32[0] = v34.i32[1];
      v37.i32[3] = v34.i32[2];
      v38 = vmlsq_laneq_f32(vmlsq_lane_f32(v36, vextq_s8(v35, v35, 8uLL), *v128.f32, 0), v37, v128, 2);
      v39 = vnegq_f32(v38);
      v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
      v41 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v32.f32, 1), vextq_s8(v40, v40, 8uLL), v32.f32[0]);
      v42 = vrev64q_s32(v38);
      v42.i32[0] = v39.i32[1];
      v42.i32[3] = v39.i32[2];
      v129 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v38, v32, 3), v42, v32, 2), v41);
      *v43.i64 = sub_1AF1555CC(v129, v15[11]);
      v44 = v43;
      v45 = vmulq_f32(v43, xmmword_1AFE201A0);
      v126 = v44;
      v46 = 1.0;
      if (vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL))) >= 0.0)
      {
        v69 = 1.0 - a5;
        v70 = vsubq_f32(xmmword_1AFE201A0, v44);
        v71 = vmulq_f32(v70, v70);
        v72 = vaddq_f32(v44, xmmword_1AFE201A0);
        v73 = vmulq_f32(v72, v72);
        v74 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL)))));
        v75 = v74 + v74;
        v54 = (v74 + v74) == 0.0;
        v76 = 1.0;
        if (!v54)
        {
          v76 = sinf(v75) / v75;
        }

        v77 = v76;
        v78 = vrecpe_f32(LODWORD(v76));
        v79 = vmul_f32(v78, vrecps_f32(LODWORD(v77), v78));
        LODWORD(v80) = vmul_f32(v79, vrecps_f32(LODWORD(v77), v79)).u32[0];
        if ((v69 * v75) != 0.0)
        {
          v124 = v80;
          v79.f32[0] = sinf(v69 * v75);
          v80 = v124;
          v46 = v79.f32[0] / (v69 * v75);
        }

        v79.f32[0] = v69 * (v80 * v46);
        v81 = vdupq_lane_s32(v79, 0);
        v82 = a5;
        v83 = v75 * a5;
        v84 = 1.0;
        if (v83 != 0.0)
        {
          v121 = v81;
          v125 = v80;
          v85 = sinf(v83);
          v81 = v121;
          v80 = v125;
          v82 = a5;
          v84 = v85 / v83;
        }

        v68 = vmlaq_f32(vmulq_n_f32(v126, (v80 * v84) * v82), xmmword_1AFE201A0, v81);
      }

      else
      {
        v47 = 1.0 - a5;
        v48 = vaddq_f32(v44, xmmword_1AFE201A0);
        v49 = vmulq_f32(v48, v48);
        v50 = vsubq_f32(xmmword_1AFE201A0, v44);
        v51 = vmulq_f32(v50, v50);
        v52 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL)))));
        v53 = v52 + v52;
        v54 = (v52 + v52) == 0.0;
        v55 = 1.0;
        if (!v54)
        {
          v55 = sinf(v53) / v53;
        }

        v56 = v55;
        v57 = vrecpe_f32(LODWORD(v55));
        v58 = vmul_f32(v57, vrecps_f32(LODWORD(v56), v57));
        LODWORD(v59) = vmul_f32(v58, vrecps_f32(LODWORD(v56), v58)).u32[0];
        if ((v47 * v53) != 0.0)
        {
          v122 = v59;
          v60 = sinf(v47 * v53);
          v59 = v122;
          v46 = v60 / (v47 * v53);
        }

        v61.i32[1] = v126.i32[1];
        v62 = vnegq_f32(v126);
        *v61.i32 = v47 * (v59 * v46);
        v63 = vdupq_lane_s32(v61, 0);
        v64 = a5;
        v65 = v53 * a5;
        v66 = 1.0;
        if (v65 != 0.0)
        {
          v123 = v59;
          v127 = v62;
          v120 = v63;
          v67 = sinf(v65);
          v63 = v120;
          v59 = v123;
          v62 = v127;
          v64 = a5;
          v66 = v67 / v65;
        }

        v68 = vmlaq_f32(vmulq_n_f32(v62, (v59 * v66) * v64), xmmword_1AFE201A0, v63);
      }

      v86 = vmulq_f32(v68, v68);
      *v86.i8 = vadd_f32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
      v87 = vdupq_lane_s32(vadd_f32(*v86.i8, vdup_lane_s32(*v86.i8, 1)), 0);
      v88 = vrsqrteq_f32(v87);
      v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
      v90 = vbslq_s8(vceqzq_f32(v87), v68, vmulq_f32(vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89))), v68));
      v91 = vmulq_f32(v90, xmmword_1AFE21390);
      v92 = vnegq_f32(v91);
      v93 = vtrn2q_s32(v91, vtrn1q_s32(v91, v92));
      v94 = vmulq_lane_f32(vextq_s8(v91, v92, 8uLL), *v129.f32, 1);
      v95 = vrev64q_s32(v91);
      v95.i32[0] = v92.i32[1];
      v95.i32[3] = v92.i32[2];
      v96 = vmlaq_laneq_f32(vmlaq_n_f32(v94, vextq_s8(v93, v93, 8uLL), v129.f32[0]), v95, v129, 2);
      v97 = vnegq_f32(v96);
      v98 = vtrn2q_s32(v96, vtrn1q_s32(v96, v97));
      v99 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v96, v97, 8uLL), *v90.f32, 1), vextq_s8(v98, v98, 8uLL), v90.f32[0]);
      v100 = vrev64q_s32(v96);
      v100.i32[0] = v97.i32[1];
      v100.i32[3] = v97.i32[2];
      v101 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v96, v90, 3), v100, v90, 2), v99);
      v102 = vnegq_f32(v131);
      v103 = vtrn2q_s32(v131, vtrn1q_s32(v131, v102));
      v104 = vmlsq_lane_f32(vmulq_lane_f32(vextq_s8(v131, v102, 8uLL), *&vnegq_f32(v101), 1), vextq_s8(v103, v103, 8uLL), *v101.f32, 0);
      v105 = vrev64q_s32(v131);
      v105.i32[0] = v102.i32[1];
      v105.i32[3] = v102.i32[2];
      v24 = vmlsq_laneq_f32(v104, v105, v101, 2);
      v106 = vnegq_f32(v24);
      v107 = vtrn2q_s32(v24, vtrn1q_s32(v24, v106));
      v108 = vrev64q_s32(v24);
      v108.i32[0] = v106.i32[1];
      v109 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v106, 8uLL), *v133.f32, 1), vextq_s8(v107, v107, 8uLL), v133.f32[0]);
      v108.i32[3] = v106.i32[2];
      v19 = vmlaq_laneq_f32(vmulq_laneq_f32(v24, v133, 3), v108, v133, 2);
      v25 = vaddq_f32(v19, v109);
    }

    v19.i32[0] = v15[9].i32[0];
    v24.i32[0] = v15[9].i32[1];
    v138 = vmlaq_n_f32(v137, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v19, v134), 0), vmlaq_n_f32(v135, v25, v19.f32[0]), vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v134, v24), 0), vmlaq_n_f32(v135, v25, v24.f32[0]), vmlaq_n_f32(v135, v25, v134.f32[0]))), v137), a5);
    v110 = sub_1AF1B9A6C(a3, v18);
    if (v110)
    {
      v112 = *sub_1AF1B9B04(v110, v111);
    }

    else
    {
      v112 = *zmmword_1AFE213F0;
    }

    v140 = __invert_f4(v112);
    v139 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v140.columns[3], v140.columns[2], v138, 2), v140.columns[1], *v138.f32, 1), v140.columns[0], v138.f32[0]);
    v114 = sub_1AF1DE360(a4, v113);
    v116 = sub_1AF1DE3A8(a4, v115);
    v118 = sub_1AF288070(8, v117);
    sub_1AF1C35C0(v114, v116, &v139, v118, 6, 0);
  }

  return v16 != 0;
}

int32x2_t sub_1AF153BCC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD48 != -1)
  {
    sub_1AFDD6184();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD40, 0xB0uLL);
  *(v2 + 72) = 1065353216;
  *(v2 + 76) = 257;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0x7F7FFFFF00000000;
  *(v2 + 152) = 0;
  *(v2 + 176) = xmmword_1AFE206C0;
  result = vdup_n_s32(0x43B40000u);
  *(v2 + 156) = result;
  *(v2 + 88) = sub_1AF1535BC;
  *(v2 + 96) = sub_1AF153BBC;
  return result;
}

void sub_1AF153C64()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD60 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"maximumLinearAcceleration", 140, 1, 0);
  sub_1AF1DD02C(@"maximumLinearVelocity", 136, 1, 0);
  sub_1AF1DD02C(@"decelerationDistance", 144, 1, 0);
  sub_1AF1DD02C(@"damping", 148, 1, 0);

  sub_1AF1DD018();
}

void sub_1AF153D30(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 136) = a3;
}

void sub_1AF153D84(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 140) = a3;
}

uint64_t sub_1AF153DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x100004084AB7CDAuLL);
  *(a2 + 56) = v13;
  *v13 = sub_1AF1B9AB4(a3, v14);
  v13[1] = 0u;
  v16.n128_f64[0] = sub_1AF1B9BEC(a3, v15);
  v13[2] = v16;
  v13[3] = 0u;
  return 1;
}

uint64_t sub_1AF153E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v9 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a2 + 56);
  v19 = sub_1AF1302D4(a1);
  if (v19 != *(v17 + 72))
  {
    v20 = sub_1AF1B9A6C(a3, v18);
    if (v20)
    {
      v22 = *sub_1AF1B9B04(v20, v21);
    }

    else
    {
      v22 = *zmmword_1AFE213F0;
    }

    v74 = __invert_f4(v22);
    v68 = v74.columns[0];
    v69 = v74.columns[1];
    v70 = v74.columns[3];
    v71 = v74.columns[2];
    if (*(v17 + 80) == 1)
    {
      *v74.columns[0].i64 = v19 - *(v17 + 72);
      v74.columns[0].f32[0] = *v74.columns[0].i64;
    }

    else
    {
      v74.columns[0].i32[0] = 1015580809;
    }

    v67 = *v74.columns[0].f32;
    v24 = *(a2 + 16);
    v25 = sub_1AF1B9AB4(a3, v23);
    if ((*(v17 + 80) & 1) == 0)
    {
      *v17 = v25;
      *(v17 + 80) = 1;
    }

    v66 = v25;
    *(v17 + 72) = sub_1AF1302D4(a1);
    v27 = v24[34];
    v28 = v24[35];
    v29 = *v17;
    v30 = *(v17 + 16);
    v31 = vsubq_f32(v66, *v17);
    v32 = vdupq_lane_s32(v67, 0);
    v33 = vdivq_f32(v31, v32);
    v34 = vdivq_f32(vsubq_f32(v33, v30), v32);
    v35 = vmulq_f32(v34, v34);
    v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    if (sqrtf(v36) > v28)
    {
      v37 = v36;
      v38 = vrsqrte_f32(LODWORD(v36));
      v39 = vmul_f32(v38, vrsqrts_f32(LODWORD(v37), vmul_f32(v38, v38)));
      v33 = vmlaq_f32(v30, v32, vmulq_n_f32(vmulq_n_f32(v34, vmul_f32(v39, vrsqrts_f32(LODWORD(v37), vmul_f32(v39, v39))).f32[0]), v28));
    }

    v40 = vmulq_f32(v33, v33);
    v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    if (sqrtf(v41) > v27)
    {
      v42 = v41;
      v43 = vrsqrte_f32(LODWORD(v41));
      v44 = vmul_f32(v43, vrsqrts_f32(LODWORD(v42), vmul_f32(v43, v43)));
      v33 = vmulq_n_f32(vmulq_n_f32(v33, vmul_f32(v44, vrsqrts_f32(LODWORD(v42), vmul_f32(v44, v44))).f32[0]), v27);
    }

    v45 = v24[36];
    v46 = vmulq_n_f32(v33, 1.0 - v24[37]);
    if (v45 != 0.0)
    {
      v47 = vmulq_f32(v31, v31);
      v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
      v49 = vmulq_f32(v46, v46);
      v50 = v49.f32[2] + vaddv_f32(*v49.f32);
      v51 = sqrtf(v50);
      if (v48 >= v45)
      {
        *(v17 + 64) = v51;
      }

      else
      {
        v52 = v48 / v45;
        if (v52 >= 1.0)
        {
          v53 = 1.0;
        }

        else
        {
          v53 = v52 * v52;
        }

        v54 = v53 * *(v17 + 64);
        if (v51 > v54)
        {
          v55 = v50;
          v56 = vrsqrte_f32(LODWORD(v50));
          v57 = vmul_f32(v56, vrsqrts_f32(LODWORD(v55), vmul_f32(v56, v56)));
          v46 = vmulq_n_f32(vmulq_n_f32(v46, vmul_f32(v57, vrsqrts_f32(LODWORD(v55), vmul_f32(v57, v57))).f32[0]), v54);
        }
      }
    }

    v58 = vmlaq_n_f32(v29, v46, *v67.i32);
    if (a5 != 0.0)
    {
      v59 = vmlaq_n_f32(v66, vsubq_f32(v58, v66), a5);
      v46 = vdivq_f32(vsubq_f32(v59, v29), v32);
      v58 = v59;
    }

    *v17 = v58;
    *(v17 + 16) = v46;
    v73 = vaddq_f32(v70, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, v58.f32[0]), v69, *v58.f32, 1), v71, v58, 2));
    v60 = sub_1AF1DE360(a4, v26);
    v62 = sub_1AF1DE3A8(a4, v61);
    v64 = sub_1AF288070(8, v63);
    sub_1AF1C35C0(v60, v62, &v73, v64, 6, 0);
  }

  return 1;
}

double sub_1AF154184(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD68 != -1)
  {
    sub_1AFDD61C0();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD60, 0x88uLL);
  *(v2 + 72) = 1065353216;
  *(v2 + 76) = 257;
  result = 1.40444743e306;
  *(v2 + 136) = xmmword_1AFE213D0;
  *(v2 + 88) = sub_1AF153E74;
  *(v2 + 96) = sub_1AF154174;
  *(v2 + 80) = sub_1AF153DD8;
  return result;
}

void sub_1AF15420C()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD00 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"orientationOffset", 192, 9, 3);
  sub_1AF1DD02C(@"positionOffset", 160, 8, 6);
  sub_1AF1DD02C(@"scaleOffset", 176, 8, 7);

  sub_1AF1DD018();
}

void sub_1AF1542C0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 144) = *(result + 144) & 0xFE | v2;
}

void sub_1AF154320(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(result + 144) = *(result + 144) & 0xFD | v12;
}

void sub_1AF15438C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(result + 144) = *(result + 144) & 0xFB | v12;
}

void sub_1AF1543F8(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[10] = a3;
}

uint64_t sub_1AF154454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v8 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  if (!v15[8].i64[1])
  {
    return 0;
  }

  v16 = sub_1AF1B9A6C(a3, a2);
  result = sub_1AF1B9B04(a3, v17);
  if (result)
  {
    v20 = result;
    if (v16)
    {
      v21 = *sub_1AF1B9B04(v16, v19);
    }

    else
    {
      v21 = *zmmword_1AFE213F0;
    }

    v281 = __invert_f4(v21);
    v276 = v281.columns[1];
    v277 = v281.columns[0];
    v274 = v281.columns[3];
    v275 = v281.columns[2];
    if (v15[9].i8[0])
    {
      v273 = sub_1AF1B9AB4(v15[8].i64[1], v22);
      v56 = sub_1AF1B9AB4(a3, v55);
      v272 = vmlaq_n_f32(v56, vsubq_f32(vaddq_f32(v273, v15[10]), v56), a5);
      if ((v15[9].i8[0] & 2) != 0)
      {
LABEL_12:
        v23 = sub_1AF1B9B04(v15[8].i64[1], v22);
        v25 = *(v23 + 16);
        v26 = *(v23 + 32);
        v27 = vmulq_f32(*v23, *v23);
        v28 = vmulq_f32(v25, v25);
        v29 = vmulq_f32(v26, v26);
        v30 = vzip2q_s32(v27, v29);
        v31 = vzip1q_s32(vzip1q_s32(v27, v29), v28);
        v32 = vtrn2q_s32(v27, v28);
        v32.i32[2] = v29.i32[1];
        v33 = vaddq_f32(vzip1q_s32(v30, vdupq_laneq_s32(v28, 2)), vaddq_f32(v31, v32));
        v32.i64[0] = 0x80000000800000;
        v32.i64[1] = 0x80000000800000;
        v34 = vcgeq_f32(v32, v33);
        v33.i32[3] = 0;
        v35 = vrsqrteq_f32(v33);
        v36 = vmulq_f32(v35, vrsqrtsq_f32(v33, vmulq_f32(v35, v35)));
        v37 = v34;
        v37.i32[3] = 0;
        v38 = vbslq_s8(vcltzq_s32(v37), v33, vmulq_f32(v36, vrsqrtsq_f32(v33, vmulq_f32(v36, v36))));
        v39 = vmulq_n_f32(*v23, v38.f32[0]);
        v40 = vmulq_lane_f32(v25, *v38.f32, 1);
        v41 = vmulq_laneq_f32(v26, v38, 2);
        v42 = vuzp1q_s32(v41, v41);
        v43 = vuzp1q_s32(v40, v40);
        v44 = v39;
        if (v34.i32[0])
        {
          v45 = vmlaq_f32(vmulq_f32(vextq_s8(v42, v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(v43, v40, 0xCuLL));
          v44 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
        }

        v46 = vuzp1q_s32(v39, v39);
        v47 = v40;
        if (v34.i32[1])
        {
          v48 = vmlaq_f32(vmulq_f32(vextq_s8(v46, v39, 0xCuLL), vnegq_f32(v41)), v39, vextq_s8(v42, v41, 0xCuLL));
          v47 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
        }

        if (v34.i32[2])
        {
          v49 = vmlaq_f32(vmulq_f32(vextq_s8(v43, v40, 0xCuLL), vnegq_f32(v39)), v40, vextq_s8(v46, v39, 0xCuLL));
          v41 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
        }

        v50 = (*v44.i32 + *&v47.i32[1]) + v41.f32[2];
        if (v50 > 0.0)
        {
          v51 = sqrtf(v50 + 1.0);
          *v52.f32 = vsub_f32(*&vzip2q_s32(v47, vuzp1q_s32(v47, v41)), *&vtrn2q_s32(v41, vzip2q_s32(v41, v44)));
          v52.f32[2] = *&v44.i32[1] - *v47.i32;
          v52.f32[3] = v51 * v51;
          v53 = 0.5 / v51;
LABEL_20:
          v54 = vmulq_n_f32(v52, v53);
          goto LABEL_46;
        }

        _NF = *v44.i32 < *&v47.i32[1] || *v44.i32 < v41.f32[2];
        if (_NF)
        {
          if (*&v47.i32[1] <= v41.f32[2])
          {
            v247 = vzip2q_s32(v44, v47).u64[0];
            v248 = __PAIR64__(v44.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v41.f32[2] + 1.0) - *v44.i32) - *&v47.i32[1])));
            v249 = vdup_lane_s32(*v47.i8, 0);
            v250 = vsub_f32(*v44.i8, v249);
            v249.i32[0] = v248.i32[0];
            v249.i32[0] = vmul_f32(v248, v249).u32[0];
            v249.i32[1] = v250.i32[1];
            *v52.f32 = vadd_f32(v247, *v41.f32);
            *&v52.u32[2] = v249;
            v53 = 0.5 / v248.f32[0];
            goto LABEL_20;
          }

          v91 = sqrtf(((*&v47.i32[1] + 1.0) - *v44.i32) - v41.f32[2]);
          v95.f32[0] = *&v44.i32[1] + *v47.i32;
          v88 = vzip2q_s32(v44, v47).u64[0];
          v95.f32[1] = v91 * v91;
          *&v95.u32[2] = vext_s8(vadd_f32(*v41.f32, v88), vsub_f32(*v41.f32, v88), 4uLL);
        }

        else
        {
          v91 = sqrtf(((*v44.i32 + 1.0) - *&v47.i32[1]) - v41.f32[2]);
          v95.f32[0] = v91 * v91;
          v92 = *&v44.i32[1] + *v47.i32;
          v93 = vzip2q_s32(v44, v47).u64[0];
          LODWORD(v94) = vadd_f32(v93, *v41.f32).u32[0];
          HIDWORD(v94) = vsub_f32(v93, *&v41).i32[1];
          v95.f32[1] = v92;
          v95.i64[1] = v94;
        }

        v54 = vmulq_n_f32(v95, 0.5 / v91);
LABEL_46:
        v268 = v54;
        v96 = sub_1AF1B9B04(a3, v24);
        v97 = *(v96 + 16);
        v98 = *(v96 + 32);
        v99 = vmulq_f32(*v96, *v96);
        v100 = vmulq_f32(v97, v97);
        v101 = vmulq_f32(v98, v98);
        v102 = vzip2q_s32(v99, v101);
        v103 = vzip1q_s32(vzip1q_s32(v99, v101), v100);
        v104 = vtrn2q_s32(v99, v100);
        v104.i32[2] = v101.i32[1];
        v105 = vaddq_f32(vzip1q_s32(v102, vdupq_laneq_s32(v100, 2)), vaddq_f32(v103, v104));
        v104.i64[0] = 0x80000000800000;
        v104.i64[1] = 0x80000000800000;
        v106 = vcgeq_f32(v104, v105);
        v105.i32[3] = 0;
        v107 = vrsqrteq_f32(v105);
        v108 = vmulq_f32(v107, vrsqrtsq_f32(v105, vmulq_f32(v107, v107)));
        v109 = v106;
        v109.i32[3] = 0;
        v110 = vbslq_s8(vcltzq_s32(v109), v105, vmulq_f32(v108, vrsqrtsq_f32(v105, vmulq_f32(v108, v108))));
        v111 = vmulq_n_f32(*v96, v110.f32[0]);
        v112 = vmulq_lane_f32(v97, *v110.f32, 1);
        v113 = vmulq_laneq_f32(v98, v110, 2);
        v114 = vuzp1q_s32(v113, v113);
        v115 = vuzp1q_s32(v112, v112);
        v116 = v111;
        if (v106.i32[0])
        {
          v117 = vmlaq_f32(vmulq_f32(vextq_s8(v114, v113, 0xCuLL), vnegq_f32(v112)), v113, vextq_s8(v115, v112, 0xCuLL));
          v116 = vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL);
        }

        v118 = vuzp1q_s32(v111, v111);
        v119 = v112;
        if (v106.i32[1])
        {
          v120 = vmlaq_f32(vmulq_f32(vextq_s8(v118, v111, 0xCuLL), vnegq_f32(v113)), v111, vextq_s8(v114, v113, 0xCuLL));
          v119 = vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL);
        }

        if (v106.i32[2])
        {
          v121 = vmlaq_f32(vmulq_f32(vextq_s8(v115, v112, 0xCuLL), vnegq_f32(v111)), v112, vextq_s8(v118, v111, 0xCuLL));
          v113 = vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL);
        }

        v122 = (*v116.i32 + *&v119.i32[1]) + v113.f32[2];
        if (v122 > 0.0)
        {
          v123 = sqrtf(v122 + 1.0);
          *v124.f32 = vsub_f32(*&vzip2q_s32(v119, vuzp1q_s32(v119, v113)), *&vtrn2q_s32(v113, vzip2q_s32(v113, v116)));
          v124.f32[2] = *&v116.i32[1] - *v119.i32;
          v124.f32[3] = v123 * v123;
          v125 = 0.5 / v123;
LABEL_54:
          v126 = vmulq_n_f32(v124, v125);
LABEL_64:
          _Q0 = v15[12];
          _S1 = _Q0.i32[3];
          _Q6 = v268;
          v142 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(v268)), _Q0, vextq_s8(vuzp1q_s32(_Q6, _Q6), v268, 0xCuLL));
          v146 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v268, _Q0, 3), _Q0, v268, 3), vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
          __asm { FMLA            S0, S1, V6.S[3] }

          v146.i32[3] = _Q0.i32[0];
          v147 = vmulq_f32(v126, v146);
          v266 = v126;
          v269 = v146;
          v148 = 1.0;
          if (vaddv_f32(vadd_f32(*v147.i8, *&vextq_s8(v147, v147, 8uLL))) >= 0.0)
          {
            v170 = 1.0 - a5;
            v171 = vsubq_f32(v126, v146);
            v172 = vmulq_f32(v171, v171);
            v173 = vaddq_f32(v126, v146);
            v174 = vmulq_f32(v173, v173);
            v175 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v172.i8, *&vextq_s8(v172, v172, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v174.i8, *&vextq_s8(v174, v174, 8uLL)))));
            v176 = v175 + v175;
            _ZF = (v175 + v175) == 0.0;
            v177 = 1.0;
            if (!_ZF)
            {
              v177 = sinf(v176) / v176;
            }

            v178 = v177;
            v179 = vrecpe_f32(LODWORD(v177));
            v180 = vmul_f32(v179, vrecps_f32(LODWORD(v178), v179));
            LODWORD(v181) = vmul_f32(v180, vrecps_f32(LODWORD(v178), v180)).u32[0];
            if ((v170 * v176) != 0.0)
            {
              v263 = v181;
              v180.f32[0] = sinf(v170 * v176);
              v181 = v263;
              v148 = v180.f32[0] / (v170 * v176);
            }

            v180.f32[0] = v170 * (v181 * v148);
            v182 = vdupq_lane_s32(v180, 0);
            v183 = a5;
            v184 = v176 * a5;
            v185 = 1.0;
            if (v184 != 0.0)
            {
              v260 = v182;
              v264 = v181;
              v186 = sinf(v184);
              v182 = v260;
              v181 = v264;
              v183 = a5;
              v185 = v186 / v184;
            }

            v169 = vmlaq_f32(vmulq_n_f32(v269, (v181 * v185) * v183), v266, v182);
          }

          else
          {
            v149 = 1.0 - a5;
            v150 = vaddq_f32(v126, v146);
            v151 = vmulq_f32(v150, v150);
            v152 = vsubq_f32(v126, v146);
            v153 = vmulq_f32(v152, v152);
            v154 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v151.i8, *&vextq_s8(v151, v151, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v153.i8, *&vextq_s8(v153, v153, 8uLL)))));
            v155 = v154 + v154;
            _ZF = (v154 + v154) == 0.0;
            v156 = 1.0;
            if (!_ZF)
            {
              v156 = sinf(v155) / v155;
            }

            v157 = v156;
            v158 = vrecpe_f32(LODWORD(v156));
            v159 = vmul_f32(v158, vrecps_f32(LODWORD(v157), v158));
            LODWORD(v160) = vmul_f32(v159, vrecps_f32(LODWORD(v157), v159)).u32[0];
            if ((v149 * v155) != 0.0)
            {
              v261 = v160;
              v161 = sinf(v149 * v155);
              v160 = v261;
              v148 = v161 / (v149 * v155);
            }

            v162.i32[1] = v269.i32[1];
            v163 = vnegq_f32(v269);
            *v162.i32 = v149 * (v160 * v148);
            v164 = vdupq_lane_s32(v162, 0);
            v165 = a5;
            v166 = v155 * a5;
            v167 = 1.0;
            if (v166 != 0.0)
            {
              v259 = v164;
              v262 = v160;
              v270 = v163;
              v168 = sinf(v166);
              v164 = v259;
              v160 = v262;
              v163 = v270;
              v165 = a5;
              v167 = v168 / v166;
            }

            v169 = vmlaq_f32(vmulq_n_f32(v163, (v160 * v167) * v165), v266, v164);
          }

          v187 = vmulq_f32(v169, v169);
          *v187.i8 = vadd_f32(*v187.i8, *&vextq_s8(v187, v187, 8uLL));
          v188 = vdupq_lane_s32(vadd_f32(*v187.i8, vdup_lane_s32(*v187.i8, 1)), 0);
          v189 = vrsqrteq_f32(v188);
          v190 = vmulq_f32(v189, vrsqrtsq_f32(v188, vmulq_f32(v189, v189)));
          v86 = vbslq_s8(vceqzq_f32(v188), v169, vmulq_f32(vmulq_f32(v190, vrsqrtsq_f32(v188, vmulq_f32(v190, v190))), v169));
          goto LABEL_80;
        }

        if (*v116.i32 < *&v119.i32[1] || *v116.i32 < v113.f32[2])
        {
          if (*&v119.i32[1] <= v113.f32[2])
          {
            v255 = vzip2q_s32(v116, v119).u64[0];
            v256 = __PAIR64__(v116.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v113.f32[2] + 1.0) - *v116.i32) - *&v119.i32[1])));
            v257 = vdup_lane_s32(*v119.i8, 0);
            v258 = vsub_f32(*v116.i8, v257);
            v257.i32[0] = v256.i32[0];
            v257.i32[0] = vmul_f32(v256, v257).u32[0];
            v257.i32[1] = v258.i32[1];
            *v124.f32 = vadd_f32(v255, *v113.f32);
            *&v124.u32[2] = v257;
            v125 = 0.5 / v256.f32[0];
            goto LABEL_54;
          }

          v134 = sqrtf(((*&v119.i32[1] + 1.0) - *v116.i32) - v113.f32[2]);
          v138.f32[0] = *&v116.i32[1] + *v119.i32;
          v128 = vzip2q_s32(v116, v119).u64[0];
          v138.f32[1] = v134 * v134;
          *&v138.u32[2] = vext_s8(vadd_f32(*v113.f32, v128), vsub_f32(*v113.f32, v128), 4uLL);
        }

        else
        {
          v134 = sqrtf(((*v116.i32 + 1.0) - *&v119.i32[1]) - v113.f32[2]);
          v138.f32[0] = v134 * v134;
          v135 = *&v116.i32[1] + *v119.i32;
          v136 = vzip2q_s32(v116, v119).u64[0];
          LODWORD(v137) = vadd_f32(v136, *v113.f32).u32[0];
          HIDWORD(v137) = vsub_f32(v136, *&v113).i32[1];
          v138.f32[1] = v135;
          v138.i64[1] = v137;
        }

        v126 = vmulq_n_f32(v138, 0.5 / v134);
        goto LABEL_64;
      }
    }

    else
    {
      v272 = *(v20 + 48);
      if ((v15[9].i8[0] & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v57 = *(v20 + 16);
    v58 = *(v20 + 32);
    v59 = vmulq_f32(*v20, *v20);
    v60 = vmulq_f32(v57, v57);
    v61 = vmulq_f32(v58, v58);
    v62 = vzip2q_s32(v59, v61);
    v63 = vzip1q_s32(vzip1q_s32(v59, v61), v60);
    v64 = vtrn2q_s32(v59, v60);
    v64.i32[2] = v61.i32[1];
    v65 = vaddq_f32(vzip1q_s32(v62, vdupq_laneq_s32(v60, 2)), vaddq_f32(v63, v64));
    v64.i64[0] = 0x80000000800000;
    v64.i64[1] = 0x80000000800000;
    v66 = vcgeq_f32(v64, v65);
    v65.i32[3] = 0;
    v67 = vrsqrteq_f32(v65);
    v68 = vmulq_f32(v67, vrsqrtsq_f32(v65, vmulq_f32(v67, v67)));
    v69 = v66;
    v69.i32[3] = 0;
    v70 = vbslq_s8(vcltzq_s32(v69), v65, vmulq_f32(v68, vrsqrtsq_f32(v65, vmulq_f32(v68, v68))));
    v71 = vmulq_n_f32(*v20, v70.f32[0]);
    v72 = vmulq_lane_f32(v57, *v70.f32, 1);
    v73 = vmulq_laneq_f32(v58, v70, 2);
    v74 = vuzp1q_s32(v73, v73);
    v75 = vuzp1q_s32(v72, v72);
    v76 = v71;
    if (v66.i32[0])
    {
      v77 = vmlaq_f32(vmulq_f32(vextq_s8(v74, v73, 0xCuLL), vnegq_f32(v72)), v73, vextq_s8(v75, v72, 0xCuLL));
      v76 = vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL);
    }

    v78 = vuzp1q_s32(v71, v71);
    v79 = v72;
    if (v66.i32[1])
    {
      v80 = vmlaq_f32(vmulq_f32(vextq_s8(v78, v71, 0xCuLL), vnegq_f32(v73)), v71, vextq_s8(v74, v73, 0xCuLL));
      v79 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
    }

    if (v66.i32[2])
    {
      v81 = vmlaq_f32(vmulq_f32(vextq_s8(v75, v72, 0xCuLL), vnegq_f32(v71)), v72, vextq_s8(v78, v71, 0xCuLL));
      v73 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    }

    v82 = (*v76.i32 + *&v79.i32[1]) + v73.f32[2];
    if (v82 > 0.0)
    {
      v83 = sqrtf(v82 + 1.0);
      *v84.f32 = vsub_f32(*&vzip2q_s32(v79, vuzp1q_s32(v79, v73)), *&vtrn2q_s32(v73, vzip2q_s32(v73, v76)));
      v84.f32[2] = *&v76.i32[1] - *v79.i32;
      v84.f32[3] = v83 * v83;
      v85 = 0.5 / v83;
LABEL_30:
      v86 = vmulq_n_f32(v84, v85);
LABEL_80:
      if ((v15[9].i8[0] & 4) != 0)
      {
        v271 = v86;
        v202 = sub_1AF1B9B04(v15[8].i64[1], v22);
        v203 = *(v202 + 16);
        v204 = *(v202 + 32);
        v205 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v204, v204), v204, 0xCuLL), vnegq_f32(v203)), v204, vextq_s8(vuzp1q_s32(v203, v203), v203, 0xCuLL));
        v206 = vextq_s8(vuzp1q_s32(v205, v205), v205, 0xCuLL);
        v207 = vmulq_f32(v206, *v202);
        v208 = vmulq_f32(*v202, *v202);
        v209 = vmulq_f32(v203, v203);
        *v206.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v208, v208, 8uLL), *&vextq_s8(v209, v209, 8uLL)), vadd_f32(vzip1_s32(*v208.i8, *v209.i8), vzip2_s32(*v208.i8, *v209.i8))));
        v210 = vmulq_f32(v204, v204);
        v206.i32[2] = sqrtf(v210.f32[2] + vaddv_f32(*v210.f32));
        v265 = v206;
        v267 = v207;
        v212 = sub_1AF1B9B04(a3, v211);
        v213 = *(v212 + 16);
        v214 = *(v212 + 32);
        v215 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v214, v214), v214, 0xCuLL), vnegq_f32(v213)), v214, vextq_s8(vuzp1q_s32(v213, v213), v213, 0xCuLL));
        v216 = vmulq_f32(vextq_s8(vuzp1q_s32(v215, v215), v215, 0xCuLL), *v212);
        v217 = vcltz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v216, v216, 8uLL), *&vextq_s8(v267, v267, 8uLL)), vadd_f32(vzip1_s32(*v216.i8, *v267.i8), vzip2_s32(*v216.i8, *v267.i8))));
        if (v217.i8[4])
        {
          v218 = -1.0;
        }

        else
        {
          v218 = 1.0;
        }

        v219 = vmulq_n_f32(v265, v218);
        _ZF = (v217.i8[0] & 1) == 0;
        v220 = vmulq_f32(*v212, *v212);
        v221 = vmulq_f32(v213, v213);
        v222 = vadd_f32(vzip1_s32(*v220.i8, *v221.i8), vzip2_s32(*v220.i8, *v221.i8));
        v224 = vextq_s8(v220, v220, 8uLL);
        *v224.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v224.f32, *&vextq_s8(v221, v221, 8uLL)), v222));
        v223 = vmulq_f32(v214, v214);
        v224.i32[2] = sqrtf(v223.f32[2] + vaddv_f32(*v223.f32));
        if (_ZF)
        {
          v225 = 1.0;
        }

        else
        {
          v225 = -1.0;
        }

        v226 = vmulq_n_f32(v224, v225);
        v227 = vmulq_f32(v15[11], v219);
        v86 = v271;
        v201 = vmlaq_n_f32(v226, vsubq_f32(v227, v226), a5);
      }

      else
      {
        v191 = *(v20 + 16);
        v192 = *(v20 + 32);
        v193 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v192, v192), v192, 0xCuLL), vnegq_f32(v191)), v192, vextq_s8(vuzp1q_s32(v191, v191), v191, 0xCuLL));
        v194 = vmulq_f32(vextq_s8(vuzp1q_s32(v193, v193), v193, 0xCuLL), *v20);
        _NF = (v194.f32[2] + vaddv_f32(*v194.f32)) < 0.0;
        v195 = 1.0;
        if (_NF)
        {
          v195 = -1.0;
        }

        v196 = vmulq_f32(*v20, *v20);
        v197 = vmulq_f32(v191, v191);
        v198 = vadd_f32(vzip1_s32(*v196.i8, *v197.i8), vzip2_s32(*v196.i8, *v197.i8));
        v199 = vextq_s8(v196, v196, 8uLL);
        *v199.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v199.f32, *&vextq_s8(v197, v197, 8uLL)), v198));
        v200 = vmulq_f32(v192, v192);
        v199.i32[2] = sqrtf(v200.f32[2] + vaddv_f32(*v200.f32));
        v201 = vmulq_n_f32(v199, v195);
      }

      v228 = 0;
      v229 = v272;
      v229.i32[3] = 1.0;
      v230 = vabsq_f32(v201);
      v230.i32[3] = 0;
      v231.i64[0] = 0x8000000080000000;
      v231.i64[1] = 0x8000000080000000;
      v232 = vorrq_s8(vandq_s8(v201, v231), vabsq_f32(vmaxnmq_f32(v230, xmmword_1AFE20A30)));
      v233 = vmulq_f32(v86, v86);
      v234 = vmulq_laneq_f32(v86, v86, 3);
      v235 = vmuls_lane_f32(v86.f32[0], *v86.f32, 1);
      v236 = vmuls_lane_f32(v86.f32[1], v86, 2);
      v237 = vmuls_lane_f32(v86.f32[0], v86, 2);
      v238.i32[3] = 0;
      v238.f32[0] = (0.5 - v233.f32[1]) - v233.f32[2];
      v238.f32[1] = v235 + v234.f32[2];
      v238.f32[2] = v237 - v234.f32[1];
      v233.f32[0] = 0.5 - v233.f32[0];
      v239.i32[3] = 0;
      v239.f32[0] = v235 - v234.f32[2];
      v239.f32[1] = v233.f32[0] - v233.f32[2];
      v239.f32[2] = v236 + v234.f32[0];
      v234.f32[0] = v236 - v234.f32[0];
      v240.i32[3] = 0;
      v240.f32[0] = v237 + v234.f32[1];
      v240.i32[1] = v234.i32[0];
      v240.f32[2] = v233.f32[0] - v233.f32[1];
      v241 = vaddq_f32(v232, v232);
      v279[0] = vmulq_n_f32(v238, v241.f32[0]);
      v279[1] = vmulq_lane_f32(v239, *v241.f32, 1);
      v279[2] = vmulq_laneq_f32(v240, v241, 2);
      v279[3] = v229;
      memset(v280, 0, sizeof(v280));
      do
      {
        v280[v228] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v277, COERCE_FLOAT(v279[v228])), v276, *&v279[v228], 1), v275, v279[v228], 2), v274, v279[v228], 3);
        ++v228;
      }

      while (v228 != 4);
      v242 = sub_1AF1DE360(a4, v22);
      v244 = sub_1AF1DE3A8(a4, v243);
      v246 = sub_1AF288070(10, v245);
      sub_1AF1C35C0(v242, v244, v280, v246, *(a4 + 34), *(a4 + 35));
      return 1;
    }

    if (*v76.i32 < *&v79.i32[1] || *v76.i32 < v73.f32[2])
    {
      if (*&v79.i32[1] <= v73.f32[2])
      {
        v251 = vzip2q_s32(v76, v79).u64[0];
        v252 = __PAIR64__(v76.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v73.f32[2] + 1.0) - *v76.i32) - *&v79.i32[1])));
        v253 = vdup_lane_s32(*v79.i8, 0);
        v254 = vsub_f32(*v76.i8, v253);
        v253.i32[0] = v252.i32[0];
        v253.i32[0] = vmul_f32(v252, v253).u32[0];
        v253.i32[1] = v254.i32[1];
        *v84.f32 = vadd_f32(v251, *v73.f32);
        *&v84.u32[2] = v253;
        v85 = 0.5 / v252.f32[0];
        goto LABEL_30;
      }

      v129 = sqrtf(((*&v79.i32[1] + 1.0) - *v76.i32) - v73.f32[2]);
      v133.f32[0] = *&v76.i32[1] + *v79.i32;
      v90 = vzip2q_s32(v76, v79).u64[0];
      v133.f32[1] = v129 * v129;
      *&v133.u32[2] = vext_s8(vadd_f32(*v73.f32, v90), vsub_f32(*v73.f32, v90), 4uLL);
    }

    else
    {
      v129 = sqrtf(((*v76.i32 + 1.0) - *&v79.i32[1]) - v73.f32[2]);
      v133.f32[0] = v129 * v129;
      v130 = *&v76.i32[1] + *v79.i32;
      v131 = vzip2q_s32(v76, v79).u64[0];
      LODWORD(v132) = vadd_f32(v131, *v73.f32).u32[0];
      HIDWORD(v132) = vsub_f32(v131, *&v73).i32[1];
      v133.f32[1] = v130;
      v133.i64[1] = v132;
    }

    v86 = vmulq_n_f32(v133, 0.5 / v129);
    goto LABEL_80;
  }

  return result;
}

double sub_1AF155220(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD08 != -1)
  {
    sub_1AFDD61D4();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD00, 0xC0uLL);
  *(v2 + 72) = 1065353216;
  *(v2 + 76) = 257;
  *(v2 + 144) = 7;
  __asm { FMOV            V1.4S, #1.0 }

  *(v2 + 160) = 0u;
  *(v2 + 176) = _Q1;
  result = 0.0;
  *(v2 + 192) = xmmword_1AFE201A0;
  *(v2 + 88) = sub_1AF154454;
  *(v2 + 96) = sub_1AF155210;
  return result;
}

CFStringRef sub_1AF1552AC(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p %@>", v3, a1, a1[8]);
}

CFStringRef sub_1AF155304(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p %@>", v3, a1, a1[8]);
}

void sub_1AF155360(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void sub_1AF1553AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void sub_1AF155460(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 176) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void sub_1AF155524(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF155564(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintDistance>");
}

CFStringRef sub_1AF155598(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintDistance>");
}

double sub_1AF1555CC(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_1AFE213B0);
          v44 = xmmword_1AFE20160;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_1AFE213A0);
          v44 = xmmword_1AFE20180;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_1AFE213C0);
        v44 = xmmword_1AFE20150;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

void sub_1AF1558FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF15592C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintAcceleration>");
}

CFStringRef sub_1AF155960(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintAcceleration>");
}

void sub_1AF155998(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF1559D8(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintReplicator>");
}

CFStringRef sub_1AF155A0C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintReplicator>");
}

uint64_t sub_1AF155A40(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734648 != -1)
  {
    sub_1AFDD64B4();
  }

  return qword_1ED7398E0;
}

uint64_t sub_1AF155A88()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398E0 = result;
  return result;
}

double sub_1AF155AB0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v6);
  v8 = vmulq_f32(v5, v6);
  _D7 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)));
  *v8.i8 = vclez_f32(_D7);
  v10 = v8.i8[4] & v8.i8[0];
  v11 = a1.i64[0];
  if (v10)
  {
    return *&v11;
  }

  v12 = vsubq_f32(a4, a2);
  v13 = vmulq_f32(v4, v12);
  v14 = vmulq_f32(v5, v12);
  _D17 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v13.i8), vzip2_s32(*v14.i8, *v13.i8)));
  v16 = _D17.f32[1] < 0.0 || _D17.f32[0] > _D17.f32[1];
  v11 = a2.i64[0];
  if (!v16)
  {
    return *&v11;
  }

  __asm { FMLA            S16, S17, V7.S[1] }

  if (_D17.f32[1] <= 0.0 && _D7.f32[1] >= 0.0 && _S16 <= 0.0)
  {
    *&result = vmlaq_n_f32(a1, v4, _D7.f32[1] / (_D7.f32[1] - _D17.f32[1])).u64[0];
    return result;
  }

  v23 = vsubq_f32(a4, a3);
  v24 = vmulq_f32(v4, v23);
  v25 = vmulq_f32(v5, v23);
  v26 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v27 = v26.f32[1] < 0.0 || v26.f32[0] > v26.f32[1];
  v11 = a3.i64[0];
  if (!v27)
  {
    return *&v11;
  }

  v28 = (v26.f32[0] * _D7.f32[0]) - (_D7.f32[1] * v26.f32[1]);
  if (v26.f32[1] <= 0.0 && v28 <= 0.0 && _D7.f32[0] >= 0.0)
  {
    v29 = _D7.f32[0] / (_D7.f32[0] - v26.f32[1]);
LABEL_25:
    *&result = vmlaq_n_f32(a1, v5, v29).u64[0];
    return result;
  }

  v30 = (_D17.f32[1] * v26.f32[1]) - (v26.f32[0] * _D17.f32[0]);
  if (v30 > 0.0 || (v31 = _D17.f32[0] - _D17.f32[1], v31 < 0.0) || (v32 = v26.f32[0] - v26.f32[1], v32 < 0.0))
  {
    v33 = 1.0 / (_S16 + (v30 + v28));
    v34 = v28 * v33;
    v29 = _S16 * v33;
    a1 = vmlaq_n_f32(a1, v4, v34);
    goto LABEL_25;
  }

  *&result = vmlaq_n_f32(a2, vsubq_f32(a3, a2), v31 / (v31 + v32)).u64[0];
  return result;
}

void sub_1AF155C40(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float a5, double a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = vsubq_f32(v7, *a1);
  v10 = a1[2];
  v11 = vsubq_f32(v10, *a1);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v9)), v11, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = vmulq_f32(*a1, v16);
  v18 = *a2;
  v19 = vmulq_f32(*a2, v16);
  v20 = vmulq_f32(v16, vnegq_f32(v16));
  v21 = vadd_f32(vzip1_s32(*v17.i8, *v20.i8), vzip2_s32(*v17.i8, *v20.i8));
  v23 = vextq_s8(v20, v20, 8uLL).u64[0];
  v22 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), v23), v21);
  v23.f32[0] = (v22.f32[0] - (v19.f32[2] + vaddv_f32(*v19.f32))) / v22.f32[1];
  if (v23.f32[0] >= 0.0)
  {
    if (v23.f32[0] <= *&a6)
    {
      v42 = *&a6;
      v32 = vmlsq_lane_f32(v18, v16, v23, 0);
    }

    else
    {
      v28 = vmlsq_lane_f32(v18, v16, *&a6, 0);
      v29 = vmulq_f32(v16, v28);
      v30 = vmulq_f32(v16, *a3);
      *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
      v31 = vdiv_f32(vsub_f32(v22, *v30.i8), vdup_lane_s32(*v30.i8, 1)).f32[0];
      if (v31 < 0.0)
      {
        return;
      }

      v42 = *&a6;
      v32 = vmlaq_n_f32(v28, *a3, v31);
    }

    v41 = v32;
    v45 = v32;
    v43[2] = v10;
    v44 = v32;
    v43[0] = v8;
    v43[1] = v7;
    v33 = sub_1AF1DA4CC(v43, &v45);
    v34 = v41;
    if (!v33)
    {
      *v34.i64 = sub_1AF155AB0(*a1, a1[1], a1[2], v45);
      v44 = v34;
    }

    v35 = vsubq_f32(*a2, v34);
    v36 = vmulq_f32(v35, v35);
    v36.f32[0] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
    v37 = vmulq_f32(v35, vnegq_f32(*a3));
    v37.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
    v38 = -(((v36.f32[0] * v36.f32[0]) - (v37.f32[0] * v37.f32[0])) - (v42 * v42));
    v39 = v37.f32[0] - sqrtf(v38);
    if (v38 < 0.0)
    {
      v39 = -1.0;
    }

    if (v39 >= 0.0 && v39 <= a5)
    {
      (*(a4 + 16))(a4, a1, &v44);
    }
  }
}

float32x4_t sub_1AF155E58(float32x4_t *a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(a2);
  v70 = *MEMORY[0x1E69E9840];
  *&a2 = *&a2 + 0.001;
  v11 = vdupq_lane_s32(*&a2, 0);
  v11.i32[3] = 0;
  v38 = v11;
  while (1)
  {
    v12 = vmulq_f32(a4, a4);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    v14 = sqrtf(v13);
    if (v14 < 0.001)
    {
      break;
    }

    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = 2139095039;
    v65 = 0;
    v66 = &v65;
    v15 = a3;
    v15.i32[3] = 1.0;
    v67 = 0x3000000000;
    v16 = v13;
    v17 = vrsqrte_f32(LODWORD(v13));
    v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
    v19 = vmulq_n_f32(a4, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]);
    v41 = a4;
    v20 = vaddq_f32(a4, a3);
    v39 = v20;
    v20.i32[3] = 1.0;
    v21 = vminnmq_f32(vsubq_f32(v15, v38), vsubq_f32(v20, v38));
    v22 = vmaxnmq_f32(vaddq_f32(v38, v15), vaddq_f32(v38, v20));
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    v23 = vmulq_f32(vaddq_f32(v21, v22), v15);
    v24 = vmulq_f32(vsubq_f32(v22, v21), v15);
    v68 = 0;
    v69 = 0;
    a1[13] = v23;
    a1[14] = v24;
    a1[11].i64[0] = a1[10].i64[1];
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = sub_1AF1561A4;
    v43[3] = &unk_1E7A7A638;
    v44 = v23;
    v45 = v24;
    v51 = a7;
    v52 = a1;
    v46 = a3;
    v47 = v19;
    v40 = v19;
    v53 = v14;
    v54 = v8;
    v48 = &v61;
    v49 = &v57;
    v50 = &v65;
    v42 = a3;
    sub_1AF1271CC(v43, v55);
    *&v55[0] = a1[10].i64[0];
    sub_1AF12829C(a6);
    v25 = *(v62 + 24);
    if (v25)
    {
      v26 = v66[2];
      v27 = v58[6];
      v28 = vsubq_f32(vmlaq_n_f32(v42, v40, v27), v26);
      v29 = vmulq_f32(v28, v28);
      *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
      *v29.f32 = vrsqrte_f32(v30);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
      v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      v32 = vmulq_f32(v26, v31);
      v33 = vmlaq_n_f32(v42, v40, v14 + -0.001);
      v34 = vmulq_f32(v33, v31);
      v35 = vmulq_f32(v31, v31);
      *v32.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v35.i8), vzip2_s32(*v32.i8, *v35.i8)));
      v41 = vsubq_f32(vmlaq_n_f32(v33, v31, (*v32.i32 - (v34.f32[2] + vaddv_f32(*v34.f32))) / *&v32.i32[1]), v26);
      v42 = vmlaq_n_f32(v42, v40, v27 + -0.001);
    }

    else
    {
      v37 = v39;
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    a4 = v41;
    a3 = v42;
    if ((v25 & 1) == 0)
    {
      return v37;
    }
  }

  return a3;
}

void sub_1AF1561A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v87[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = vdup_n_s32(0x3727C5ACu);
    do
    {
      v8 = *(a2 + 8 * v6);
      v9 = *(a1 + 120);
      if (v8 != v9 && !sub_1AF1BAAD8(*(a2 + 8 * v6), v9))
      {
        v11 = sub_1AF1B75A0(v8, v10);
        v13 = sub_1AF1B329C(v11, v12);
        v15 = sub_1AF1B9B04(v8, v14);
        v17 = *(v15 + 16);
        v18.columns[2] = *(v15 + 32);
        v18.columns[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18.columns[2], v18.columns[2]), v18.columns[2], 0xCuLL), vnegq_f32(v17)), v18.columns[2], vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
        v18.columns[0] = vmulq_f32(*v15, vextq_s8(vuzp1q_s32(v18.columns[1], v18.columns[1]), v18.columns[1], 0xCuLL));
        if ((v18.columns[0].f32[2] + vaddv_f32(*v18.columns[0].f32)) >= 0.0)
        {
          v18.columns[0].f32[0] = 1.0;
        }

        else
        {
          v18.columns[0].f32[0] = -1.0;
        }

        v18.columns[1] = vmulq_f32(*v15, *v15);
        v19 = vmulq_f32(v17, v17);
        v20 = vadd_f32(vzip1_s32(*v18.columns[1].f32, *v19.i8), vzip2_s32(*v18.columns[1].f32, *v19.i8));
        v18.columns[1] = vextq_s8(v18.columns[1], v18.columns[1], 8uLL);
        *v18.columns[1].f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v18.columns[1].f32, *&vextq_s8(v19, v19, 8uLL)), v20));
        v21 = vmulq_f32(v18.columns[2], v18.columns[2]);
        v18.columns[1].i32[2] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
        v22 = vmulq_n_f32(v18.columns[1], v18.columns[0].f32[0]);
        *v22.i8 = vcgt_f32(v7, vabd_f32(*v22.i8, vdup_laneq_s32(v22, 2)));
        v49 = *(v15 + 48);
        v50 = *(v15 + 32);
        v47 = *(v15 + 16);
        v48 = *v15;
        if ((vpmin_u32(*v22.i8, *v22.i8).u32[0] & 0x80000000) != 0)
        {
          v18.columns[0] = *v15;
          v18.columns[1] = *(v15 + 16);
          v18.columns[3] = *(v15 + 48);
          v88 = __invert_f4(v18);
          v43 = *(a1 + 48);
          v88.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v88.columns[3], v88.columns[2], *(a1 + 32), 2), v88.columns[1], *(a1 + 32), 1), v88.columns[0], COERCE_FLOAT(*(a1 + 32)));
          v88.columns[3].i32[3] = HIDWORD(*(a1 + 32));
          v44 = v43;
          v44.i32[1] = v43.i32[0];
          v44.i32[2] = v43.i32[0];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 0x40000000;
          v75[2] = sub_1AF1565F8;
          v75[3] = &unk_1E7A7A5C0;
          v76 = v48;
          v77 = v47;
          v88.columns[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v88.columns[1]), vuzp2q_s32(vdupq_lane_s32(*v43.i8, 1), v43)), v44, vabsq_f32(v88.columns[0])), vzip2q_s32(vtrn1q_s32(v43, v43), v43), vabsq_f32(v88.columns[2]));
          v78 = v50;
          v79 = v49;
          v45 = *(a1 + 128);
          v88.columns[2] = *(a1 + 80);
          v80 = *(a1 + 64);
          v81 = v88.columns[2];
          v85 = *(a1 + 136);
          v82 = *(a1 + 96);
          v46 = *(a1 + 112);
          v84 = v45;
          v83 = v46;
          sub_1AF1A5C00(v13, v75, v88.columns[3], v88.columns[1]);
        }

        else
        {
          v23 = sub_1AF1A3CCC(v13, v16);
          if (v23)
          {
            v24 = v23;
            v25 = sub_1AF1A4CE8(v13, 0);
            if (sub_1AF1AE6EC(v25, v26))
            {
              v73 = 0u;
              v74 = 0u;
              v28 = sub_1AF1AE1A8(v25, v27, &v73);
              if (BYTE4(v74) != 8)
              {
                v30 = sub_1AF0D5194(v28, v29);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  sub_1AFDD64C8(v86, v87, v30);
                }
              }

              v31 = v74;
              v32 = sub_1AF1A4C6C(v13, 0, 0);
              if (v24 >= 1)
              {
                v33 = v32;
                v34 = 0;
                v35 = v31 - 1;
                do
                {
                  v36 = sub_1AF1A3D1C(v13, v34, 0);
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v37 = sub_1AF1A767C(v36, v33, &v69);
                  if ((BYTE2(v71) & 0xFA) != 0)
                  {
                    v39 = sub_1AF0D5194(v37, v38);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1AF0CE000, v39, OS_LOG_TYPE_DEFAULT, "Warning: Slider can only process triangles.", buf, 2u);
                    }
                  }

                  else
                  {
                    *buf = v69;
                    v66 = v70;
                    v67 = v71;
                    v68 = v72;
                    v51[0] = MEMORY[0x1E69E9820];
                    v51[1] = 0x40000000;
                    v51[2] = sub_1AF156930;
                    v51[3] = &unk_1E7A7A610;
                    v60 = v73;
                    v61 = v74;
                    v63 = v35;
                    v52 = v48;
                    v53 = v47;
                    v54 = v50;
                    v55 = v49;
                    v40 = *(a1 + 128);
                    v41 = *(a1 + 80);
                    v56 = *(a1 + 64);
                    v57 = v41;
                    v64 = *(a1 + 136);
                    v58 = *(a1 + 96);
                    v42 = *(a1 + 112);
                    v62 = v40;
                    v59 = v42;
                    sub_1AF1A80E4(buf, v51, v58);
                  }

                  ++v34;
                }

                while (v24 != v34);
              }
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != a3);
  }
}

uint64_t sub_1AF1565F8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 3 * a3;
    do
    {
      v7 = *(a2 + 16 * (v5 + 1));
      v8 = *(a2 + 16 * (v5 + 2));
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      v20[0] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, *(a2 + 16 * v5), 2), v10, *(a2 + 16 * v5), 1), v9, COERCE_FLOAT(*(a2 + 16 * v5)));
      v20[1] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, v7, 2), v10, *v7.f32, 1), v9, v7.f32[0]);
      v20[2] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, v8, 2), v10, *v8.f32, 1), v9, v8.f32[0]);
      v13 = *(a1 + 152);
      if (*(v13 + 128))
      {
        sub_1AF156740(v13 + 240, v20);
        v13 = *(a1 + 152);
      }

      v14 = *(a1 + 160);
      v7.i32[0] = *(a1 + 164);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = sub_1AF156848;
      v16[3] = &unk_1E7A7A598;
      v17 = *(a1 + 128);
      v18 = *(a1 + 144);
      v19 = v13;
      sub_1AF155C40(v20, (a1 + 96), (a1 + 112), v16, v14, *v7.i64);
      v5 += 3;
    }

    while (v6 != v5);
  }

  return 0;
}

void sub_1AF156740(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1AF10A1D0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_1AF157EB0(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_1AF156848(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    sub_1AF156740(*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    sub_1AF156740(v12, a2);
  }
}

void sub_1AF156930(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6518(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 152);
  v15 = *(a1 + 174);
  v16 = *(a1 + 192);
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = *(a1 + 192);
  }

  v18 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 1)), vdup_n_s32(v15));
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v18.u32[0])), v20, *(v14 + v18.u32[0] + 4)), v21, *(v14 + v18.u32[0] + 8)));
  v24 = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v18.u32[1])), v20, *(v14 + v18.u32[1] + 4)), v21, *(v14 + v18.u32[1] + 8)));
  v31[0] = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v17 * v15)), v20, *(v14 + v17 * v15 + 4)), v21, *(v14 + v17 * v15 + 8)));
  v31[1] = v23;
  v31[2] = v24;
  v25 = *(a1 + 184);
  if (*(v25 + 128))
  {
    sub_1AF156740(v25 + 240, v31);
    v25 = *(a1 + 184);
  }

  v26 = *(a1 + 196);
  v23.i32[0] = *(a1 + 200);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = sub_1AF156AB0;
  v27[3] = &unk_1E7A7A5E8;
  v28 = *(a1 + 128);
  v29 = *(a1 + 144);
  v30 = v25;
  sub_1AF155C40(v31, (a1 + 96), (a1 + 112), v27, v26, *v23.i64);
}

void sub_1AF156AB0(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    sub_1AF156740(*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    sub_1AF156740(v12, a2);
  }
}

uint64_t sub_1AF156B98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 16);
  v54 = sub_1AF1B9AB4(a3, a2);
  v16 = sub_1AF1C3FAC(a3, v15);
  if (v16)
  {
    v18 = *(a2 + 56);
    v19 = sub_1AF1D01D0(v16, v17);
    v21 = sub_1AF1B9B04(a3, v20);
    v23 = *v21;
    v24 = *(v21 + 16);
    v25 = *(v21 + 32);
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
    v27 = vmulq_f32(*v21, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
    v28 = (v27.f32[2] + vaddv_f32(*v27.f32)) < 0.0;
    v29 = 1.0;
    if (v28)
    {
      v29 = -1.0;
    }

    v30 = vmulq_f32(v23, v23);
    v31 = vmulq_f32(v24, v24);
    v32 = vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8));
    v33 = vextq_s8(v30, v30, 8uLL);
    *v33.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v33.f32, *&vextq_s8(v31, v31, 8uLL)), v32));
    v34 = vmulq_f32(v25, v25);
    v33.i32[2] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
    v35 = vmulq_n_f32(v33, v29);
    v36 = v14[9];
    v37 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v21 + 48), v25, v36, 2), v24, *v36.f32, 1), v23, v36.f32[0]), v54);
    v40 = *v18;
    v38 = vaddq_f32(*v18, v37);
    v53 = v37;
    v39 = vaddq_f32(v54, v37);
    v40.f32[0] = vmuls_lane_f32(fmaxf(fmaxf(v35.f32[0], v35.f32[2]), v35.f32[1]), v36, 3);
    v41 = v39;
    v41.i32[3] = v40.i32[0];
    v14[12] = v41;
    if (v14[8].i64[0])
    {
      v14[15].i64[1] = v14[15].i64[0];
      v14[17].i64[0] = v14[16].i64[1];
    }

    v55 = vsubq_f32(sub_1AF155E58(v14, *v40.i64, v38, vsubq_f32(v39, v38), v22, v19, a3), v53);
    *v18 = v55;
    v43 = sub_1AF1B9A6C(a3, v42);
    if (v43)
    {
      v45 = *sub_1AF1B9B04(v43, v44);
    }

    else
    {
      v45 = *zmmword_1AFE21460;
    }

    v57 = __invert_f4(v45);
    v56 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v57.columns[3], v57.columns[2], v55, 2), v57.columns[1], *v55.f32, 1), v57.columns[0], v55.f32[0]);
    v47 = sub_1AF1DE360(a4, v46);
    v49 = sub_1AF1DE3A8(a4, v48);
    v51 = sub_1AF288070(8, v50);
    sub_1AF1C35C0(v47, v49, &v56, v51, 6, 0);
  }

  return 1;
}

void sub_1AF156DC4(uint64_t a1, uint64_t a2)
{
  v21[0] = xmmword_1AFE20150;
  v21[1] = xmmword_1AFE20160;
  v21[2] = xmmword_1AFE20180;
  v21[3] = xmmword_1AFE201A0;
  v20 = xmmword_1AFE21170;
  sub_1AF0FE168(a2, v21, &v20, *(a1 + 192));
  v19 = xmmword_1AFE21180;
  sub_1AF0FEDA4(a2, (a1 + 208), v21, &v19);
  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  v18 = xmmword_1AFE21170;
  while (v4 != v5)
  {
    sub_1AF0FE080(a2, 0, &v18, 0, *v4, v4[1]);
    sub_1AF0FE080(a2, 0, &v18, 0, v4[1], v4[2]);
    v6 = v4[2];
    v7 = *v4;
    v4 += 3;
    sub_1AF0FE080(a2, 0, &v18, 0, v6, v7);
  }

  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v17 = xmmword_1AFE21180;
  while (v8 != v9)
  {
    sub_1AF0FE080(a2, 0, &v17, 0, *v8, v8[1]);
    sub_1AF0FE080(a2, 0, &v17, 0, v8[1], v8[2]);
    v10 = v8[2];
    v11 = *v8;
    v8 += 3;
    sub_1AF0FE080(a2, 0, &v17, 0, v10, v11);
  }

  v13 = *(a1 + 264);
  v12 = *(a1 + 272);
  v16 = xmmword_1AFE20BF0;
  while (v13 != v12)
  {
    sub_1AF0FE080(a2, 0, &v16, 0, *v13, v13[1]);
    sub_1AF0FE080(a2, 0, &v16, 0, v13[1], v13[2]);
    v14 = v13[2];
    v15 = *v13;
    v13 += 3;
    sub_1AF0FE080(a2, 0, &v16, 0, v14, v15);
  }
}

uint64_t sub_1AF156F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF1B9AB4(a3, a2);
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 56) = v4;
  *v4 = v6;
  return 1;
}

uint64_t sub_1AF157008(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734648 != -1)
  {
    sub_1AFDD64B4();
  }

  v2 = sub_1AF0D160C(qword_1ED7398E0, 0x110uLL);
  sub_1AF14F554(v2);
  *(v2 + 160) = -1;
  *(v2 + 156) = 1065353216;
  *(v2 + 80) = sub_1AF156F98;
  *(v2 + 88) = sub_1AF156B98;
  *(v2 + 96) = sub_1AF156FF8;
  *(v2 + 112) = sub_1AF156DC4;
  return v2;
}

void sub_1AF1570A8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 160) = a2;
}

void sub_1AF1570FC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 156) = a3;
}

__n128 sub_1AF157150(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      sub_1AFDD6328(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[9].n128_u32[3];
  a1[9] = result;
  return result;
}

uint64_t sub_1AF1571B4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734618 != -1)
  {
    sub_1AFDD6590();
  }

  return qword_1ED7398C8;
}

void sub_1AF1571F0(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  sub_1AF14F4B8(a1);
}

uint64_t sub_1AF15724C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398C8 = result;
  return result;
}

CFTypeRef sub_1AF157274(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 144);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 144) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 144) = result;
  }

  return result;
}

void sub_1AF1572F4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0.0001;
  if (a3 >= 0.0001)
  {
    v13 = a3;
  }

  *(result + 168) = v13;
}

BOOL sub_1AF157364(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1C3FAC(a3, a2);
  if (!v14)
  {
    return 0;
  }

  v16 = sub_1AF1D01D0(v14, v15);
  v17 = *(a2 + 16);
  v18 = *(v17 + 136);
  v66 = v18;
  v19 = v18 != 0;
  if (v18)
  {
    v20 = v16;
    v63 = 0xA00000000;
    v64 = v65;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2000000000;
    v62[3] = &v63;
    if (*(v17 + 152) == 1)
    {
      sub_1AF157668(&v63, v18);
      sub_1AF157668(&v63, a3);
    }

    else
    {
      sub_1AF1576F0(&v63, &v66);
      *&v52[0] = a3;
      sub_1AF1576F0(&v63, v52);
    }

    v21 = 126 - 2 * __clz(v63);
    if (v63)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    sub_1AF157F08(v64, &v64[v63], v52, v22, 1);
    v42 = sub_1AF1B9AB4(a3, v23);
    v25 = sub_1AF1B9AB4(v66, v24);
    v26 = vsubq_f32(v42, v25);
    v27 = vmulq_f32(v26, v26);
    v27.f32[0] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
    __asm { FMOV            V2.4S, #1.0 }

    v40 = vdivq_f32(v26, vdupq_lane_s32(*v27.f32, 0));
    v58 = 0;
    v59 = &v58;
    v60 = 0x2000000000;
    v61 = 2139095039;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = sub_1AF15774C;
    v44[3] = &unk_1E7A7A6A8;
    v47 = &v54;
    v48 = &v58;
    v41 = v25;
    v45 = v25;
    v46 = v42;
    v49 = v62;
    v50 = v17;
    v51 = a3;
    sub_1AF1271CC(v44, v52);
    *&v52[0] = *(v17 + 160);
    sub_1AF127D6C(v20);
    if (*(v55 + 24) == 1)
    {
      v43 = vmlaq_n_f32(v41, v40, v59[6] - *(v17 + 168));
      v34 = sub_1AF1DE360(a4, v33);
      v36 = sub_1AF1DE3A8(a4, v35);
      v38 = sub_1AF288070(8, v37);
      sub_1AF1C35C0(v34, v36, &v43, v38, 6, 0);
    }

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(v62, 8);
    if (HIDWORD(v63) && v64 != v65)
    {
      free(v64);
    }
  }

  return v19;
}

uint64_t sub_1AF157668(unsigned int *a1, uint64_t a2)
{
  v5 = a2;
  sub_1AF1576F0(a1, &v5);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1AF158D94;
  v4[3] = &unk_1E7A7A6C8;
  v4[4] = a1;
  return sub_1AF1B94AC(v5, v4);
}

void sub_1AF1576F0(unsigned int *result, void *a2)
{
  v4 = *result;
  v5 = *result + 1;
  if (v5 > result[1])
  {
    sub_1AF158DE0(result, 1, 0);
    v4 = *result;
    v5 = *result + 1;
  }

  *(*(result + 1) + 8 * v4) = *a2;
  *result = v5;
}

void sub_1AF15774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v90[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v6 = 0;
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = *(*(*(a1 + 72) + 8) + 24);
    do
    {
      v9 = *(v4 + 8 * v6);
      v10 = *(*(*(a1 + 80) + 8) + 24);
      v11 = *(v10 + 1);
      v12 = *v10;
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[v14 >> 1];
          v18 = *v16;
          v17 = v16 + 1;
          v14 += ~(v14 >> 1);
          if (v18 < v9)
          {
            v13 = v17;
          }

          else
          {
            v14 = v15;
          }
        }

        while (v14);
      }

      else
      {
        v13 = v11;
      }

      if (v13 == &v11[v12] || v9 < *v13)
      {
        v19 = sub_1AF1B75A0(*(v4 + 8 * v6), a2);
        v21 = sub_1AF1B9B04(v9, v20);
        v23.columns[1] = *(v21 + 16);
        v23.columns[2] = *(v21 + 32);
        v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23.columns[2], v23.columns[2]), v23.columns[2], 0xCuLL), vnegq_f32(v23.columns[1])), v23.columns[2], vextq_s8(vuzp1q_s32(v23.columns[1], v23.columns[1]), v23.columns[1], 0xCuLL));
        v23.columns[0] = vmulq_f32(*v21, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
        v23.columns[0].f32[0] = (v23.columns[0].f32[2] + vaddv_f32(*v23.columns[0].f32)) >= 0.0 ? 1.0 : -1.0;
        v61 = v23.columns[0].f32[0];
        v58 = *(v21 + 16);
        v59 = *v21;
        v23.columns[0] = *v21;
        v65 = *(v21 + 32);
        v23.columns[3] = *(v21 + 48);
        v91 = __invert_f4(v23);
        v66 = v91.columns[0];
        v68 = v91.columns[3];
        v62 = v91.columns[2];
        v60 = *(a1 + 32);
        v63 = *(a1 + 48);
        v64 = v91.columns[1];
        v25 = sub_1AF1B329C(v19, v24);
        v27 = sub_1AF1A3CCC(v25, v26);
        if (v27)
        {
          v28 = v27;
          v29 = sub_1AF1A4CE8(v25, 0);
          if (sub_1AF1AE6EC(v29, v30))
          {
            v57 = v7;
            v87 = 0u;
            v88 = 0u;
            sub_1AF1AE1A8(v29, a2, &v87);
            v31 = sub_1AF1A4C6C(v25, 0, 0);
            v32 = v31;
            if (BYTE4(v88) != 8)
            {
              v33 = sub_1AF0D5194(v31, a2);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDD65A4(v89, v90, v33);
              }
            }

            if (v28 >= 1)
            {
              v34 = 0;
              v35 = vmulq_f32(v59, v59);
              v36 = vmulq_f32(v58, v58);
              v37 = vadd_f32(vzip1_s32(*v35.i8, *v36.i8), vzip2_s32(*v35.i8, *v36.i8));
              v38 = vextq_s8(v35, v35, 8uLL);
              *v38.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v38.f32, *&vextq_s8(v36, v36, 8uLL)), v37));
              v39 = vmulq_f32(v65, v65);
              v38.i32[2] = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
              v40 = vmulq_n_f32(v38, v61);
              v41 = fmaxf(fmaxf(v40.f32[0], v40.f32[2]), v40.f32[1]);
              v42 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v68, v62, v60, 2), v64, *v60.f32, 1), v66, v60.f32[0]);
              v43 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v68, v62, v63, 2), v64, *v63.f32, 1), v66, v63.f32[0]);
              v44 = vsubq_f32(v43, v42);
              v45 = vmulq_f32(v44, v44);
              v37.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
              *v45.f32 = vrsqrte_f32(v37.u32[0]);
              *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v45.f32, *v45.f32)));
              v67 = vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
              v69 = v42;
              v46 = vsubq_f32(v42, v43);
              v47 = vmulq_f32(v46, v46);
              v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
              v49 = v88 - 1;
              do
              {
                v50 = sub_1AF1A3D1C(v25, v34, 0);
                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                v51 = sub_1AF1A767C(v50, v32, &v83);
                if ((BYTE2(v85) & 0xFA) != 0)
                {
                  v53 = sub_1AF0D5194(v51, v52);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1AF0CE000, v53, OS_LOG_TYPE_DEFAULT, "Warning: Occluder can only process triangles.", buf, 2u);
                  }
                }

                else
                {
                  *buf = v83;
                  v80 = v84;
                  v81 = v85;
                  v82 = v86;
                  v70[0] = MEMORY[0x1E69E9820];
                  v70[1] = 0x40000000;
                  v70[2] = sub_1AF157C28;
                  v70[3] = &unk_1E7A7A680;
                  v74 = v87;
                  v75 = v88;
                  v76 = v49;
                  v71 = v69;
                  v72 = v67;
                  v77 = v48;
                  v78 = v41;
                  v73 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
                  sub_1AF1A80E4(buf, v70, v73);
                }

                ++v34;
              }

              while (v28 != v34);
            }

            v4 = a2;
            v3 = a3;
            if (*(*(*(a1 + 72) + 8) + 24) < v8)
            {
              v54 = *(*(a1 + 88) + 144);
              if (v54)
              {
                if (sub_1AF14EE94(v54, v9, *(a1 + 96)))
                {
                  sub_1AF14EF08(*(*(a1 + 88) + 144), v9, *(a1 + 96));
                }

                else
                {
                  *(*(*(a1 + 64) + 8) + 24) = v57 & 1;
                  *(*(*(a1 + 72) + 8) + 24) = v8;
                }
              }
            }

            v7 = *(*(*(a1 + 64) + 8) + 24);
            v8 = *(*(*(a1 + 72) + 8) + 24);
          }
        }
      }

      ++v6;
    }

    while (v6 != v3);
  }
}

float32_t sub_1AF157C28(float32x4_t *a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6518(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[5].i64[0];
  v15 = a1[6].u8[6];
  v16 = a1[7].u32[0];
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = a1[7].i32[0];
  }

  v18 = v14 + v17 * v15;
  v19.i64[0] = *v18;
  v19.i32[2] = *(v18 + 8);
  v19.i32[3] = 1.0;
  v20 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 1)), vdup_n_s32(v15));
  v21 = v14 + v20.u32[0];
  v22.i64[0] = *v21;
  v22.i32[2] = *(v21 + 8);
  v22.i32[3] = 1.0;
  v23 = v14 + v20.u32[1];
  v24.i64[0] = *v23;
  v24.i32[2] = *(v23 + 8);
  v24.i32[3] = 1.0;
  v25 = vsubq_f32(v22, v19);
  v26 = vsubq_f32(v24, v19);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmulq_f32(v27, v27);
  *&v30 = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
  *v29.f32 = vrsqrte_f32(v30);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
  v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
  v32 = vmulq_f32(v19, v31);
  v33 = a1[2];
  v34 = a1[3];
  v35 = vmulq_f32(v33, v31);
  v36 = vmulq_f32(v34, v31);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v36.i8), vzip2_s32(*v32.i8, *v36.i8)));
  v37 = (*v36.i32 - (v35.f32[2] + vaddv_f32(*v35.f32))) / *&v36.i32[1];
  if (v37 > 0.0 && v37 < a1[7].f32[1])
  {
    v41 = vmlaq_n_f32(v33, v34, v37);
    v40[0] = v19;
    v40[1] = v22;
    v40[2] = v24;
    v19.f32[0] = v37 * a1[7].f32[2];
    if (v19.f32[0] < *(*(a1[4].i64[0] + 8) + 24))
    {
      v39 = v37;
      if (sub_1AF1DA4CC(v40, &v41))
      {
        *(*(a1[4].i64[1] + 8) + 24) = 1;
        v19.f32[0] = v39 * a1[7].f32[2];
        *(*(a1[4].i64[0] + 8) + 24) = v19.i32[0];
      }
    }
  }

  return v19.f32[0];
}

uint64_t sub_1AF157E28(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734618 != -1)
  {
    sub_1AFDD6590();
  }

  v2 = sub_1AF0D160C(qword_1ED7398C8, 0xA0uLL);
  sub_1AF14F554(v2);
  *(v2 + 160) = 1;
  *(v2 + 168) = 925353388;
  *(v2 + 152) = 1;
  *(v2 + 88) = sub_1AF157364;
  *(v2 + 96) = sub_1AF157E18;
  return v2;
}

void sub_1AF157EB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

unint64_t sub_1AF157F08(unint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_1AF158B04(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = sub_1AF158608(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = sub_1AF1586B8(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = sub_1AF15876C(v9, v41);
    v9 = v41 + 1;
    result = sub_1AF15876C(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = sub_1AF157F08(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *sub_1AF158608(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *sub_1AF1586B8(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_1AF15876C(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

uint64_t *sub_1AF158B04(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1AF158CD0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_1AF158CD0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1AF158CD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF158D94(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 && sub_1AF1B8088(a2, a2))
  {
    sub_1AF1576F0(*(a1 + 32), &v4);
  }

  return 0;
}

void sub_1AF158DE0(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(8 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 8 * v7);
  memcpy(v8, v4, 8 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

void sub_1AF158EB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF158EE8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734728 = result;
  return result;
}

uint64_t sub_1AF158F10(uint64_t a1)
{
  if (qword_1ED734730 != -1)
  {
    sub_1AFDD65F4();
  }

  result = sub_1AF0D160C(qword_1ED734728, 0x18uLL);
  *(result + 24) = a1;
  return result;
}

void sub_1AF158F5C(_BOOL8 a1, const __CFArray *a2, void *a3, const char *a4)
{
  v6 = a1;
  v123 = *MEMORY[0x1E69E9840];
  if (!a1 && (v7 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v7, a2, v8, v9, v10, v11, v12, v13);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD0D34(v14, a2, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (!v6)
  {
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(v6 + 16);
  if (!v29)
  {
    v29 = sub_1AF375248();
    *(v6 + 16) = v29;
  }

  v30 = sub_1AF375228(v29, a4);
  v110 = v6;
  theArray = v30;
  v104 = a4;
  if (v30)
  {
    v32 = sub_1AF27835C();
    if (v32 > 0.0)
    {
      v33 = v32;
      Count = CFArrayGetCount(theArray);
      v103 = sub_1AF1CFFC0(*(v6 + 24), v35);
      Mutable = CFSetCreateMutable(0, Count, 0);
      v111 = Count;
      if (Count >= 1)
      {
        v37 = 0;
        v38 = v33;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v37);
          v40 = *(ValueAtIndex + 4);
          v42 = sub_1AF1DE3A8(v40, v41);
          if (!CFSetContainsValue(Mutable, v42))
          {
            v44 = sub_1AF1DE538(v40, v43);
            if (v44 == 10)
            {
              CFSetAddValue(Mutable, v42);
              v47 = sub_1AF1CF830(*(v6 + 24), v46);
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v107 = v42[1];
              v108 = *v42;
              v105 = v42[3];
              v106 = v42[2];
              sub_1AF1DEACC(v103, *(ValueAtIndex + 5));
              v109 = v47;
              sub_1AF117998(v47, v40);
              v124 = __invert_f4(*v42->f32);
              v49 = 0;
              v118 = v124;
              *buf = 0u;
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              do
              {
                *&buf[v49 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*&v118.columns[v49])), v107, *v118.columns[v49].f32, 1), v106, v118.columns[v49], 2), v105, v118.columns[v49], 3);
                ++v49;
              }

              while (v49 != 4);
              v114 = *buf;
              v115 = v120;
              v116 = v121;
              v117 = v122;
              v50 = sub_1AF1CD954(10, v48);
              v52 = sub_1AF1CD954(10, v51);
              sub_1AF1CDB88(v50, &v114);
              v53 = sub_1AF1CDB88(v52, MEMORY[0x1E69E9B18]);
              v55 = sub_1AF113D84(v53, v54);
              sub_1AF112D10(v55, 1);
              sub_1AF112ECC(v55, 1);
              sub_1AF1129D0(v55, v56, v38);
              sub_1AF278318();
              sub_1AF112C48(v55, v57);
              sub_1AF11407C(v55, v50);
              sub_1AF113F9C(v55, v52);
              CFRelease(v50);
              CFRelease(v52);
              sub_1AF118298(v109, v55, v40, *(ValueAtIndex + 3), @"__controller");
              CFRelease(v55);
              v6 = v110;
            }

            else
            {
              v58 = sub_1AF0D5194(v44, v45);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v60 = sub_1AF1DE538(v40, v59);
                *buf = 67109120;
                *&buf[4] = v60;
                _os_log_impl(&dword_1AF0CE000, v58, OS_LOG_TYPE_DEFAULT, "Warning: unsupported ease out for contraint applied on base type %d", buf, 8u);
              }
            }
          }

          ++v37;
        }

        while (v37 != v111);
      }

      CFRelease(Mutable);
      a4 = v104;
    }

    v30 = sub_1AF375228(*(v6 + 16), a4);
    if (v30)
    {
      v61 = v30;
      v62 = CFArrayGetCount(v30);
      v64 = sub_1AF1CFFC0(*(v6 + 24), v63);
      if (v62 >= 1)
      {
        v65 = v64;
        for (i = 0; i != v62; ++i)
        {
          v67 = CFArrayGetValueAtIndex(v61, i);
          sub_1AF1DEACC(v65, v67[5]);
          sub_1AF1DEBA4(v65, v67[5]);
        }
      }

      v6 = v110;
      v30 = sub_1AF375238(*(v110 + 16), a4);
    }
  }

  if (a2)
  {
    if (!a3)
    {
      v68 = sub_1AF0D5194(v30, v31);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD119C(v68, v69, v70, v71, v72, v73, v74, v75);
      }
    }

    v76 = CFArrayGetCount(a2);
    v77 = CFArrayCreateMutable(0, v76, MEMORY[0x1E695E9C0]);
    v79 = sub_1AF1CFFC0(*(v6 + 24), v78);
    if (v76 >= 1)
    {
      v80 = v79;
      for (j = 0; j != v76; ++j)
      {
        v82 = CFArrayGetValueAtIndex(a2, j);
        v85 = sub_1AF14F224(v82, v83);
        if (!v85)
        {
          v86 = sub_1AF0D5194(0, v84);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD6608(buf, &buf[4], v86);
          }
        }

        v87 = sub_1AF1DB6D0(a3, v85, 0);
        v88 = sub_1AF14F420(v82, a3, v87);
        v88[5] = sub_1AF1DE784(v80, v87);
        CFArrayAppendValue(v77, v88);
        CFRelease(v88);
        CFRelease(v87);
        if (+[VFXTransaction disableActions]_0() || (v90 = sub_1AF27835C(), v90 <= 0.0))
        {
          *(v88 + 12) = 1065353216;
        }

        else
        {
          v91 = v90;
          v92 = sub_1AF1CF830(*(v6 + 24), v89);
          v118.columns[0].i32[0] = 1065353216;
          v94 = sub_1AF1CD954(1, v93);
          v95 = sub_1AF1CDB88(v94, &v118);
          v97 = sub_1AF113D84(v95, v96);
          sub_1AF1131B4(v97, 1);
          v98 = v91;
          sub_1AF1129D0(v97, v99, v98);
          sub_1AF278318();
          sub_1AF112C48(v97, v100);
          sub_1AF113F9C(v97, v94);
          CFRelease(v94);
          v101 = sub_1AF1DE1CC(v88, (v88 + 6), 1, 0);
          sub_1AF118298(v92, v97, v101, v88, @"__controller");
          CFRelease(v97);
          v102 = v101;
          v6 = v110;
          CFRelease(v102);
        }
      }
    }

    sub_1AF375230(*(v6 + 16), v104, v77);
    CFRelease(v77);
  }
}

BOOL sub_1AF15956C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[4];
    v12 = sub_1AF1CFFC0(a1[3], a2);
    v13 = a1[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF159630;
    v15[3] = &unk_1E7A7A708;
    v15[4] = v12;
    v15[5] = v11;
    sub_1AF375240(v13, v15);
  }

  return v10 != 0;
}

void sub_1AF159630(uint64_t a1, int a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v9 = *(ValueAtIndex + 2);
      if (*(v9 + 76) != 1)
      {
        goto LABEL_14;
      }

      v10 = ValueAtIndex[12] * *(v9 + 72);
      if (v10 <= 0.0)
      {
        goto LABEL_14;
      }

      v12 = sub_1AF14F360(v9);
      if (v12)
      {
        break;
      }

      if (!sub_1AF1BBE50(*(ValueAtIndex + 3), v11) || !sub_1AF356D38(*(ValueAtIndex + 3), v13))
      {
        sub_1AF1DEEC0(*(a1 + 32), *(ValueAtIndex + 5));
LABEL_12:
        if ((v12 & sub_1AF14F170(*(a1 + 40), ValueAtIndex, *(ValueAtIndex + 3), *(ValueAtIndex + 4), v10)) == 1)
        {
          sub_1AF1DE904(*(a1 + 32), *(ValueAtIndex + 5));
        }

        goto LABEL_14;
      }

      if ((sub_1AF356D00(*(ValueAtIndex + 3), v14) & 1) == 0)
      {
        break;
      }

LABEL_14:
      if (v6 == ++v7)
      {
        return;
      }
    }

    sub_1AF1DEDDC(*(a1 + 32), *(ValueAtIndex + 5));
    goto LABEL_12;
  }
}

uint64_t sub_1AF159740(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AF1597F0;
    v13[3] = &unk_1E7A7A728;
    v13[4] = a2;
    return sub_1AF375240(result, v13);
  }

  return result;
}

CFIndex sub_1AF1597F0(int a1, int a2, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      result = *(CFArrayGetValueAtIndex(theArray, i) + 2);
      if (*(result + 76) == 1 && *(result + 72) > 0.0)
      {
        result = sub_1AF14F378(result);
      }
    }
  }

  return result;
}

CFStringRef sub_1AF15987C(unsigned int *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %d objects>", v3, a1, a1[6]);
}

CFStringRef sub_1AF1598D4(unsigned int *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %d objects>", v3, a1, a1[6]);
}

uint64_t sub_1AF15992C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739968 = result;
  return result;
}

uint64_t sub_1AF159954(int a1, int a2)
{
  if (qword_1ED739970 != -1)
  {
    sub_1AFDD6658();
  }

  v4 = sub_1AF0D160C(qword_1ED739968, 0x18uLL);
  v5 = v4;
  *(v4 + 32) = a1;
  v6 = *(v4 + 28);
  if (v6 != a2)
  {
    sub_1AF159D08(v4, v6 * a1, (a2 * a1));
    *(v5 + 28) = a2;
  }

  return v5;
}

uint64_t sub_1AF1599D4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF159A1C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 28);
}

uint64_t sub_1AF159A64(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1599D4(a1, a2);
  if (v11 <= a2)
  {
    v13 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD66E4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return *(a1 + 16) + *(a1 + 32) * a2;
}

uint64_t sub_1AF159AF0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

void sub_1AF159B38(uint64_t result, int a2)
{
  v3 = *(result + 28);
  if (v3 != a2)
  {
    sub_1AF159D08(result, *(result + 32) * v3, (*(result + 32) * a2));
    *(result + 28) = a2;
  }
}

void sub_1AF159B7C(_DWORD *result, unsigned int a2)
{
  if (result[6] != a2)
  {
    v4 = result[7];
    if (v4 < a2)
    {
      sub_1AF159D08(result, result[8] * v4, result[8] * a2);
      result[7] = a2;
    }

    result[6] = a2;
  }
}

uint64_t sub_1AF159BD4(uint64_t a1, void *__src)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 28))
  {
    v5 = v4 ? 2 * v4 : 4;
    if (v4 != v5)
    {
      sub_1AF159D08(a1, *(a1 + 32) * v4, (*(a1 + 32) * v5));
      *(a1 + 28) = v5;
      v4 = *(a1 + 24);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = (v7 * v4);
  v9 = (v6 + v8);
  if (__src)
  {
    memcpy(v9, __src, v7);
  }

  else
  {
    bzero(v9, *(a1 + 32));
  }

  ++*(a1 + 24);
  return v6 + v8;
}

void sub_1AF159C78(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 24))
  {
    v12 = 0;
    do
    {
      (*(a2 + 16))(a2, v12, *(result + 16) + (*(result + 32) * v12));
      ++v12;
    }

    while (v12 < *(result + 24));
  }
}

void sub_1AF159D08(uint64_t a1, unsigned int a2, size_t size)
{
  v4 = *(a1 + 16);
  if (size)
  {
    v5 = size;
    v6 = size;
    if (v4)
    {
      v8 = malloc_type_realloc(v4, size, 0x111CC173uLL);
      *(a1 + 16) = v8;
      v9 = v5 - a2;
      if (v5 <= a2)
      {
        return;
      }

      v10 = &v8[a2];
    }

    else
    {
      v10 = sub_1AF288064(size);
      *(a1 + 16) = v10;
      v9 = v6;
    }

    bzero(v10, v9);
  }

  else
  {
    free(v4);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF159DAC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_reset(*(a1 + 16), a2, a3);
  v6 = objc_msgSend_engine(*(a1 + 16), v4, v5);
  objc_msgSend_disconnectNodeInput_(v6, v7, *(a1 + 16));
  v10 = objc_msgSend_engine(*(a1 + 16), v8, v9);
  objc_msgSend_disconnectNodeOutput_(v10, v11, *(a1 + 16));
  v14 = objc_msgSend_engine(*(a1 + 16), v12, v13);
  objc_msgSend_detachNode_(v14, v15, *(a1 + 16));

  v16 = *(a1 + 32);
  if (v16 != (a1 + 40))
  {
    do
    {
      v17 = v16[4];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = v16[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v16[2];
          v20 = *v19 == v16;
          v16 = v19;
        }

        while (!v20);
      }

      v16 = v19;
    }

    while (v19 != (a1 + 40));
  }

  sub_1AF112128(a1 + 32, *(a1 + 40));
  return a1;
}

void *sub_1AF159E98(void *result, const char *a2, uint64_t a3)
{
  if (!result[2])
  {
    v3 = result;
    objc_msgSend_lock(*(*result + 8), a2, a3);
    v6 = *v3;
    if (v3[2])
    {
      v7 = *(v6 + 8);

      return objc_msgSend_unlock(v7, v4, v5);
    }

    else
    {
      v8 = sub_1AF159FA8(v6, v4, v5);
      if (objc_msgSend_mainMixerNode(v8, v9, v10))
      {
        v12 = objc_alloc_init(MEMORY[0x1E6958400]);
        v3[2] = v12;
        objc_msgSend_attachNode_(v8, v13, v12);
        v14 = objc_alloc(MEMORY[0x1E6958418]);
        inited = objc_msgSend_initStandardFormatWithSampleRate_channels_(v14, v15, 2, 44100.0);
        v17 = v3[2];
        v20 = objc_msgSend_mainMixerNode(v8, v18, v19);
        objc_msgSend_connect_to_format_(v8, v21, v17, v20, inited);
      }

      else
      {
        v24 = sub_1AF0D5194(0, v11);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD675C(v24);
        }
      }

      return objc_msgSend_unlock(*(*v3 + 8), v22, v23);
    }
  }

  return result;
}

id sub_1AF159FA8(id *a1, const char *a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF15A7D0;
  block[3] = &unk_1E7A79EE8;
  block[4] = a1;
  if (qword_1EB6584B8 != -1)
  {
    dispatch_once(&qword_1EB6584B8, block);
  }

  objc_msgSend_lock(a1[1], a2, a3);
  if ((objc_msgSend_isRunning(*a1, v4, v5) & 1) == 0)
  {
    v12 = 0;
    v8 = objc_msgSend_startAndReturnError_(*a1, v6, &v12);
    if ((v8 & 1) == 0)
    {
      v9 = sub_1AF0D5194(v8, v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD67E0(&v12, v9, v10);
      }

      *a1 = 0;
    }
  }

  objc_msgSend_unlock(a1[1], v6, v7);
  return *a1;
}

uint64_t sub_1AF15A0A0(void *a1, char *a2, uint64_t a3)
{
  sub_1AF159E98(a1, a2, a3);
  v7 = objc_msgSend_audioPlayer(a2, v5, v6);
  if ((objc_msgSend_customAudioNode(a2, v8, v9) & 1) == 0)
  {
    v12 = sub_1AF159FA8(*a1, v10, v11);
    if (objc_msgSend_engine(v7, v13, v14) != v12)
    {
      v17 = objc_msgSend_engine(v7, v15, v16);
      objc_msgSend_detachNode_(v17, v18, v7);
      objc_msgSend_attachNode_(v12, v19, v7);
    }

    v20 = a1[2];
    v21 = objc_msgSend_audioBufferFormat(a2, v15, v16);
    objc_msgSend_connect_to_format_(v12, v22, v7, v20, v21);
    if (v7)
    {
      objc_msgSend_play(a2, v10, v11);
    }
  }

  v23 = objc_msgSend_nodeRef(a2, v10, v11);
  v29 = v23;
  objc_msgSend_lock(*(*a1 + 8), v24, v25);
  if (v23)
  {
    CFRetain(v23);
  }

  sub_1AF15AE68((a1 + 4), &v29, &v29);
  return objc_msgSend_unlock(*(*a1 + 8), v26, v27);
}

void *sub_1AF15A1B8(id **a1, void *a2, uint64_t a3)
{
  cf = objc_msgSend_nodeRef(a2, a2, a3);
  v7 = sub_1AF159FA8(*a1, v5, v6);
  v10 = objc_msgSend_audioNode(a2, v8, v9);
  result = objc_msgSend_detachNode_(v7, v11, v10);
  if (cf)
  {
    objc_msgSend_lock((*a1)[1], v13, v14);
    sub_1AF15AF34(a1 + 4, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    return objc_msgSend_unlock((*a1)[1], v15, v16);
  }

  return result;
}

uint64_t *sub_1AF15A254(uint64_t *result, const char *a2)
{
  if (result[2])
  {
    v2 = result;
    v3 = result[3];
    if (v3 || (v3 = sub_1AF12F344(v2[1], a2)) != 0)
    {
      v5 = sub_1AF1B9B04(v3, a2);
      v6 = *(v5 + 16);
      v19 = *(v5 + 32);
      v20 = v6;
      v7 = v2[2];
      LODWORD(v6) = HIDWORD(*(v5 + 48));
      LODWORD(v8) = *(v5 + 56);
      objc_msgSend_setListenerPosition_(v7, v9, v10, *(v5 + 48), *&v6, v8);
      v21 = vneg_f32(*&v19);
      v22 = -*(&v19 + 2);
      v23 = v20;
      v24 = DWORD2(v20);
      objc_msgSend_setListenerVectorOrientation_(v7, v11, &v21);
    }

    objc_msgSend_lock(*(*v2 + 8), a2, v4);
    v14 = v2[4];
    if (v14 != v2 + 5)
    {
      do
      {
        v15 = v14[4];
        if (v15)
        {
          sub_1AF1BBAE0(v15, v12);
        }

        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
      }

      while (v17 != v2 + 5);
    }

    return objc_msgSend_unlock(*(*v2 + 8), v12, v13);
  }

  return result;
}

void *sub_1AF15A36C(void *a1)
{
  *a1 = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  a1[1] = objc_alloc_init(MEMORY[0x1E696AE68]);
  return a1;
}

void sub_1AF15A3DC(_Unwind_Exception *a1)
{
  sub_1AF112128(v2, *v4);
  sub_1AF15AFB8(v1, *v3);
  _Unwind_Resume(a1);
}

void *sub_1AF15A468(uint64_t a1, unint64_t a2)
{
  v6 = sub_1AF12DDCC(a2, a2);
  if (v6)
  {
    objc_msgSend_lock(*(a1 + 8), v4, v5, v6, a2);
    v9 = *(a1 + 24);
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = a1 + 24;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v6;
      v13 = v11 < v6;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == a1 + 24)
    {
      goto LABEL_18;
    }

    if (v6 < *(v10 + 32))
    {
      goto LABEL_18;
    }

    v16 = *(v10 + 48);
    v14 = v10 + 48;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v14;
    do
    {
      v18 = *(v15 + 32);
      v12 = v18 >= a2;
      v19 = v18 < a2;
      if (v12)
      {
        v17 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v17 == v14 || *(v17 + 32) > a2)
    {
LABEL_18:
      operator new();
    }

    v6 = *(v17 + 40);
    objc_msgSend_unlock(*(a1 + 8), v7, v8);
  }

  return v6;
}

uint64_t sub_1AF15A5C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AF12DDCC(a2, a2);
  objc_msgSend_lock(*(a1 + 8), v5, v6);
  if (v4)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = a1 + 24;
      do
      {
        v11 = *(v9 + 32);
        v12 = v11 >= v4;
        v13 = v11 < v4;
        if (v12)
        {
          v10 = v9;
        }

        v9 = *(v9 + 8 * v13);
      }

      while (v9);
      if (v10 != a1 + 24 && v4 >= *(v10 + 32))
      {
        v14 = *(v10 + 48);
        if (v14)
        {
          v15 = (v10 + 48);
          do
          {
            v16 = *(v14 + 32);
            v12 = v16 >= a2;
            v17 = v16 < a2;
            if (v12)
            {
              v15 = v14;
            }

            v14 = *(v14 + 8 * v17);
          }

          while (v14);
          if (v15 != (v10 + 48) && v15[4] <= a2)
          {
            v18 = v15[5];
            if (v18)
            {
              v19 = sub_1AF159DAC(v18, v7, v8);
              MEMORY[0x1B271C6B0](v19, 0x10A0C406E04462DLL);
            }

            sub_1AF112440((v10 + 40), v15);
            operator delete(v15);
          }
        }

        if (!*(v10 + 56))
        {
          sub_1AF15B0F4((a1 + 16), v10);
        }
      }
    }
  }

  else
  {
    v20 = *(a1 + 16);
    if (v20 != a1 + 24)
    {
      do
      {
        v21 = *(v20 + 48);
        if (v21)
        {
          v22 = (v20 + 48);
          do
          {
            v23 = *(v21 + 32);
            v12 = v23 >= a2;
            v24 = v23 < a2;
            if (v12)
            {
              v22 = v21;
            }

            v21 = *(v21 + 8 * v24);
          }

          while (v21);
          if (v22 != (v20 + 48) && v22[4] <= a2)
          {
            v25 = v22[5];
            if (v25)
            {
              v26 = sub_1AF159DAC(v25, v7, v8);
              MEMORY[0x1B271C6B0](v26, 0x10A0C406E04462DLL);
            }

            sub_1AF112440((v20 + 40), v22);
            operator delete(v22);
          }
        }

        if (*(v20 + 56))
        {
          v27 = *(v20 + 8);
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = *(v20 + 16);
              v29 = *v28 == v20;
              v20 = v28;
            }

            while (!v29);
          }
        }

        else
        {
          v28 = sub_1AF15B0F4((a1 + 16), v20);
        }

        v20 = v28;
      }

      while (v28 != (a1 + 24));
    }
  }

  v30 = *(a1 + 8);

  return objc_msgSend_unlock(v30, v7, v8);
}

void sub_1AF15A7D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = objc_alloc_init(MEMORY[0x1E69583F8]);
  v8 = objc_alloc_init(MEMORY[0x1E6958458]);
  objc_msgSend_attachNode_(*v1, v2, v8);
  v3 = *v1;
  v6 = objc_msgSend_mainMixerNode(v3, v4, v5);
  objc_msgSend_connect_to_format_(v3, v7, v8, v6, 0);
}

uint64_t sub_1AF15A858(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_audioPlayer(a2, a2, a3);
  result = objc_msgSend_customAudioNode(a2, v5, v6);
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      objc_msgSend_lock(*(a1 + 8), v8, v9);
      v20 = objc_msgSend_world(a2, v10, v11);
      v21 = &v20;
      v12 = sub_1AF15B018(a1 + 16, &v20, &unk_1AFE22A40, &v21);
      v15 = v12[5];
      v16 = v12 + 6;
      if (v15 != v12 + 6)
      {
        do
        {
          sub_1AF15A0A0(v15[5], a2, v14);
          v17 = v15[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v15[2];
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v15 = v18;
        }

        while (v18 != v16);
      }

      return objc_msgSend_unlock(*(a1 + 8), v13, v14);
    }
  }

  return result;
}

void *sub_1AF15A954(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_customAudioNode(a2, a2, a3);
  if ((result & 1) == 0)
  {
    objc_msgSend_lock(*(a1 + 8), v6, v7);
    v18 = objc_msgSend_world(a2, v8, v9);
    v19 = &v18;
    v10 = sub_1AF15B018(a1 + 16, &v18, &unk_1AFE22A40, &v19);
    v13 = v10[5];
    v14 = v10 + 6;
    if (v13 != v10 + 6)
    {
      do
      {
        sub_1AF15A1B8(v13[5], a2, v12);
        v15 = v13[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v13[2];
            v17 = *v16 == v13;
            v13 = v16;
          }

          while (!v17);
        }

        v13 = v16;
      }

      while (v16 != v14);
    }

    return objc_msgSend_unlock(*(a1 + 8), v11, v12);
  }

  return result;
}

void *sub_1AF15AA28(void *a1, double a2, double a3, double a4, __n128 a5, const char *a6, uint64_t a7)
{
  v7 = objc_msgSend_audioNode(a1, a6, a7, a2, a3, a4);
  result = objc_msgSend_conformsToProtocol_(v7, v8, &unk_1F2629150);
  if (result)
  {
    LODWORD(v13) = a5.n128_u32[2];
    LODWORD(v12) = a5.n128_u32[1];

    return objc_msgSend_setPosition_(v7, v10, v11, a5.n128_f64[0], v12, v13);
  }

  return result;
}

uint64_t sub_1AF15AA98(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_audioPlayer(a1, a2, a3);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = objc_msgSend_audioPlayer(a1, v5, v6);
    result = objc_msgSend_engine(v7, v8, v9);
    if (result)
    {
      return objc_msgSend_play(v7, v10, v11);
    }
  }

  return result;
}

uint64_t sub_1AF15AB24(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v4 = qword_1ED73A410;

  return sub_1AF15A858(v4, a1, a3);
}

void *sub_1AF15AB78(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v4 = qword_1ED73A410;

  return sub_1AF15A954(v4, a1, a3);
}

void *sub_1AF15ABCC(unint64_t a1, uint64_t a2)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    result[3] = a2;
  }

  return result;
}

void *sub_1AF15AC20(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t *sub_1AF15AC70(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {

    return sub_1AF15A254(result, v3);
  }

  return result;
}

id sub_1AF15ACD8(char a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1ED739AD8 != -1)
    {
      sub_1AFDD6870();
    }

    v3 = qword_1ED73A410;

    return sub_1AF159FA8(v3, a2, a3);
  }

  else if (qword_1ED73A410)
  {
    if (qword_1ED739AD8 != -1)
    {
      sub_1AFDD6870();
    }

    return *qword_1ED73A410;
  }

  else
  {
    return 0;
  }
}

void *sub_1AF15AD68(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    v5 = result;
    sub_1AF159E98(result, v3, v4);
    return v5[2];
  }

  return result;
}

void *sub_1AF15ADC0(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v2 = qword_1ED73A410;

  return sub_1AF15A468(v2, a1);
}

uint64_t sub_1AF15AE14(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v2 = qword_1ED73A410;

  return sub_1AF15A5C8(v2, a1);
}

void *sub_1AF15AE68(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF15AF34(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1AF112440(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1AF15AFB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF15AFB8(a1, *a2);
    sub_1AF15AFB8(a1, a2[1]);
    sub_1AF112128((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_1AF15B018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1AF15B0F4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1AF112440(a1, a2);
  sub_1AF112128(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_1AF15B134(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734758[0] != -1)
  {
    sub_1AFDD6884();
  }

  return qword_1ED734750;
}

double sub_1AF15B16C()
{
  qword_1ED734750 = _CFRuntimeRegisterClass();
  xmmword_1ED722E10 = xmmword_1F24E73A8;
  qword_1ED722E68 = sub_1AF15B3C0;
  result = *&xmmword_1F24E73B8;
  unk_1ED722E28 = xmmword_1F24E73B8;
  return result;
}

uint64_t sub_1AF15B1E0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734758[0] != -1)
  {
    sub_1AFDD6884();
  }

  v2 = sub_1AF0D160C(qword_1ED734750, 0x90uLL);
  sub_1AF1706A4(v2);
  *(v2 + 64) = &off_1F24E7398;
  v3 = MEMORY[0x1E69E9B18];
  v4 = *(MEMORY[0x1E69E9B18] + 16);
  *(v2 + 96) = *MEMORY[0x1E69E9B18];
  *(v2 + 112) = v4;
  v5 = *(v3 + 48);
  *(v2 + 128) = *(v3 + 32);
  *(v2 + 144) = v5;
  return v2;
}

void sub_1AF15B254(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }
}

void sub_1AF15B29C(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 72) = v5;
    v6 = sub_1AF21CF54(cf);
    v7 = *(a1 + 80);
    if (v7 != v6)
    {
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 80) = 0;
      }

      if (v6)
      {
        v8 = CFRetain(v6);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 80) = v8;
    }

    CFRelease(v6);
  }
}

__n128 *sub_1AF15B358(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  result[9] = a5;
  return result;
}

id sub_1AF15B370(uint64_t a1)
{
  sub_1AF15B254(a1);

  return sub_1AF1705EC(a1);
}

uint64_t sub_1AF15B3C0(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD6898(v3);
    }
  }

  v4 = sub_1AF15B1E0(a1, a2);
  sub_1AF1706AC(v2, v4);
  sub_1AF15B29C(v4, *(v2 + 72));
  return v4;
}

uint64_t sub_1AF15B428(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v24 = 0;
  v25 = 0;
  sub_1AF21D67C(a1[5].i64[0], &v25, &v24);
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v11 = vmulq_lane_f32(v8, v25, 1);
  v12 = vmlaq_f32(vmlaq_n_f32(v11, v7, v25.f32[0]), 0, v9);
  v13 = vmulq_lane_f32(v8, v24, 1);
  v14 = vmlaq_f32(vmlaq_n_f32(v13, v7, v25.f32[0]), 0, v9);
  v15 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v11, v7, v24.f32[0]), 0, v9));
  v16 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v13, v7, v24.f32[0]), 0, v9));
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17 = vaddq_f32(v10, v14);
  v18 = vminnmq_f32(v15, v16);
  v17.i32[3] = 0;
  v18.i32[3] = 0;
  v19 = vaddq_f32(v10, v12);
  v20 = vminnmq_f32(v17, v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = vmaxnmq_f32(v15, v16);
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v17, v21);
  v22.i32[3] = 0;
  *a3 = vminnmq_f32(v19, v20);
  *a4 = vmaxnmq_f32(v19, v22);
  return 1;
}

uint64_t sub_1AF15B50C(float32x4_t *a1, uint64_t a2, _BOOL8 a3)
{
  v10.i32[2] = 0;
  v10.i64[0] = 0;
  v9.i32[2] = 0;
  v9.i64[0] = 0;
  sub_1AF15B428(a1, 0, &v10, &v9);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v8 = vmlaq_f32(v10, v4, vsubq_f32(v9, v10));
  v5 = vsubq_f32(v8, v10);
  v6 = vmulq_f32(v5, v5);
  sub_1AF1DA1D0(a3, &v8, sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)));
  return 1;
}

__CFString *sub_1AF15B598(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0xF)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD691C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return off_1E7A7A790[v2];
}

__CFString *sub_1AF15B5EC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 5)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6994(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return off_1E7A7A808[v2];
}

__CFString *sub_1AF15B64C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | targetCount:%d needsBlendColor:%d\n", v3, a1, *(a1 + 48), *(a1 + 56));
  if (*(a1 + 48) >= 1)
  {
    v5 = 0;
    v6 = (a1 + 23);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      if (*(v6 - 6))
      {
        v10 = *v6;
        v11 = a1;
        v12 = Mutable;
        v13 = *(v6 - 1);
        v14 = *(v6 - 2);
        v15 = "true";
        if ((*(v6 - 7) & 1) == 0)
        {
          v15 = "false";
        }

        v38 = v15;
        v16 = sub_1AF15B598(v7, v4);
        v18 = sub_1AF15B5EC(v9, v17);
        v20 = sub_1AF15B598(v8, v19);
        v22 = sub_1AF15B598(v14, v21);
        v24 = sub_1AF15B5EC(v10, v23);
        v25 = v13;
        Mutable = v12;
        a1 = v11;
        v37 = sub_1AF15B598(v25, v26);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)] alpha[(src * %@) %@ (dst * %@)]\n", v38, v16, v18, v20, v22, v24, v37);
      }

      else
      {
        if (*(v6 - 7))
        {
          v27 = "true";
        }

        else
        {
          v27 = "false";
        }

        v28 = sub_1AF15B598(v7, v4);
        v30 = sub_1AF15B5EC(v9, v29);
        v33 = sub_1AF15B598(v8, v31);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)]\n", v27, v28, v30, v33, v34, v35, v36);
      }

      ++v5;
      v6 += 8;
    }

    while (v5 < *(a1 + 48));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF15B81C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D40 = result;
  return result;
}

uint64_t sub_1AF15B844(uint64_t a1, uint64_t a2)
{
  if (qword_1EB654D48 != -1)
  {
    sub_1AFDD6A0C();
  }

  result = sub_1AF0D160C(qword_1EB654D40, 0x30uLL);
  if (a2 > 3)
  {
    return 0;
  }

  *(result + 48) = a2;
  if (a2 < 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (result + 16);
    v8 = (a1 + 2);
    do
    {
      *v7 = *(v8 - 1);
      if (*(v8 - 2) == 1)
      {
        v5.i16[0] = *v8;
        v5.i64[1] = v5.i64[0];
        *v5.i8 = vceq_s8(vqtbl1_s8(v5, 0x101000000000101), 0xC0A0D0B0C0A0D0BLL);
        v5.i8[0] = vmaxv_u8(*v5.i8);
        v6 |= v5.i32[0];
        if (*(v8 - 1) == 1)
        {
          v5.i16[0] = *(v8 + 3);
          v5.i64[1] = v5.i64[0];
          *v5.i8 = vceq_s8(vqtbl1_s8(v5, 16843009), 0xC0A0D0B0C0A0D0BLL);
          v5.i8[0] = vmaxv_u8(*v5.i8);
          v6 |= v5.i32[0];
        }
      }

      v8 += 4;
      ++v7;
      --a2;
    }

    while (a2);
  }

  *(result + 56) = v6 & 1;
  return result;
}

uint64_t sub_1AF15B948(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD6A20(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(v3 + 48) <= a2)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A98(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(v3 + 8 * a2 + 16);
}

uint64_t sub_1AF15B9CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

uint64_t sub_1AF15BA14(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF15BA5C(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6584C8 != -1)
  {
    sub_1AFDD6B10();
  }

  return qword_1EB6584C0;
}

uint64_t sub_1AF15BA94()
{
  v1 = 0x1010001010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584C0 = result;
  return result;
}

uint64_t sub_1AF15BAD4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6584D8 != -1)
  {
    sub_1AFDD6B24();
  }

  return qword_1EB6584D0;
}

uint64_t sub_1AF15BB0C()
{
  v1 = 0x2000002000001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584D0 = result;
  return result;
}

uint64_t sub_1AF15BB4C(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6584E8 != -1)
  {
    sub_1AFDD6B38();
  }

  return qword_1EB6584E0;
}

uint64_t sub_1AF15BB84()
{
  v1 = 0x10002000101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584E0 = result;
  return result;
}

uint64_t sub_1AF15BBC4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731C60 != -1)
  {
    sub_1AFDD6B4C();
  }

  return qword_1ED731C58;
}

uint64_t sub_1AF15BBFC()
{
  v1 = 0x5010005010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1ED731C58 = result;
  return result;
}

uint64_t sub_1AF15BC40(uint64_t a1, uint64_t a2)
{
  if (qword_1EB654D58[0] != -1)
  {
    sub_1AFDD6B60();
  }

  return qword_1EB654D50;
}

uint64_t sub_1AF15BC78()
{
  v1 = 0x10000010000;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB654D50 = result;
  return result;
}

uint64_t sub_1AF15BCB4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6584F8 != -1)
  {
    sub_1AFDD6B74();
  }

  return qword_1EB6584F0;
}

uint64_t sub_1AF15BCEC()
{
  v1 = 0x1000201010101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584F0 = result;
  return result;
}

uint64_t sub_1AF15BD2C(uint64_t a1, uint64_t a2)
{
  if (qword_1EB658508 != -1)
  {
    sub_1AFDD6B88();
  }

  return qword_1EB658500;
}

uint64_t sub_1AF15BD64()
{
  v1 = 0x401010401010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB658500 = result;
  return result;
}

uint64_t sub_1AF15BDA8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB644898[0] != -1)
  {
    sub_1AFDD6B9C();
  }

  return qword_1EB644890;
}

uint64_t sub_1AF15BDE0()
{
  v1 = 0x5010003010101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB644890 = result;
  return result;
}

void sub_1AF15BE24(void *a1)
{
  values = a1;
  v1 = CFDictionaryCreate(0, off_1E7A7B9E8, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = sub_1AF1C3FAC(values, v2);
  sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v3, v1, 1u);
  CFRelease(v1);
}

uint64_t sub_1AF15BEA8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD88 != -1)
  {
    sub_1AFDD6BB0();
  }

  return qword_1ED73AD80;
}

double sub_1AF15BEE0()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD80 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"sensorHeight", 248, 1, 0);
  sub_1AF1DD02C(@"filmOffset", 80, 7, 0);
  sub_1AF1DD02C(@"postProjectionTransformTranslation", 88, 7, 0);
  sub_1AF1DD02C(@"postProjectionTransformScale", 96, 7, 0);
  sub_1AF1DD02C(@"focusDistance", 240, 1, 0);
  sub_1AF1DD02C(@"focalLength", 244, 1, 0);
  sub_1AF1DD02C(@"fieldOfView", 108, 1, 0);
  sub_1AF1DD02C(@"orthographicScale", 104, 1, 0);
  sub_1AF1DD02C(@"projectionTransform", 112, 10, 0);
  sub_1AF1DD02C(@"zFar", 72, 1, 0);
  sub_1AF1DD02C(@"zNear", 68, 1, 0);
  sub_1AF1DD02C(@"depthOfField", 256, 5, 1);
  sub_1AF1DD02C(@"motionBlur", 264, 5, 1);
  sub_1AF1DD02C(@"grain", 272, 5, 1);
  sub_1AF1DD02C(@"exposure", 280, 5, 1);
  sub_1AF1DD02C(@"toneMapping", 288, 5, 1);
  sub_1AF1DD02C(@"bloom", 296, 5, 1);
  sub_1AF1DD02C(@"vignetting", 304, 5, 1);
  sub_1AF1DD02C(@"lensBlur", 312, 5, 1);
  sub_1AF1DD02C(@"colorFringe", 320, 5, 1);
  sub_1AF1DD02C(@"colorGrading", 328, 5, 1);
  sub_1AF1DD02C(@"chromaticTransform", 336, 5, 1);
  sub_1AF1DD02C(@"doughnutBokeh", 344, 5, 1);
  sub_1AF1DD018();
  xmmword_1ED72F530 = xmmword_1F24E7508;
  qword_1ED72F540 = sub_1AF15F06C;
  result = *&xmmword_1F24E7518;
  unk_1ED72F558 = xmmword_1F24E7518;
  unk_1ED72F568 = unk_1F24E7528;
  qword_1ED72F578 = qword_1F24E7538;
  unk_1ED72F580 = sub_1AF1606B0;
  return result;
}

double sub_1AF15C19C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AD88 != -1)
  {
    sub_1AFDD6BB0();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD80, 0x1B0uLL);
  *(v2 + 68) = 0x42C800003DCCCCCDLL;
  *(v2 + 88) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(v2 + 96) = _D1;
  *(v2 + 104) = 0x41D7EE863F800000;
  *(v2 + 248) = 1103101952;
  *(v2 + 240) = 0x4248000040200000;
  *(v2 + 432) = -1;
  v8 = *(v2 + 360);
  *(v2 + 368) = xmmword_1AFE20150;
  *(v2 + 384) = xmmword_1AFE20160;
  result = 0.0;
  *(v2 + 400) = xmmword_1AFE20180;
  *(v2 + 416) = xmmword_1AFE201A0;
  *(v2 + 360) = v8 & 0xFC;
  return result;
}

void sub_1AF15C248(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[360];
  if (((((v12 & 2) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    a1[360] = v12 & 0xFD | v13;
    sub_1AF15BE24(a1);
  }
}

uint64_t sub_1AF15C2CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 256);
}

void sub_1AF15C314(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[32];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[32];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[32] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[32] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C3C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 264);
}

void sub_1AF15C40C(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[33];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[33];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[33] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[33] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C4BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 272);
}

void sub_1AF15C504(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[34];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[34];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[34] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[34] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C5B4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 280);
}

void sub_1AF15C5FC(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[35];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[35];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[35] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[35] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C6AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 288);
}

void sub_1AF15C6F4(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[36];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[36];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[36] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[36] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}