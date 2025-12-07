uint64_t sub_2779D5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v8;
  v185 = *MEMORY[0x277D85DE8];
  v20 = v8 + 644296;
  v21 = (v8 + 270312);
  result = 999999999;
  v23 = *(v9 + 12);
  v24 = *(v9 + 16);
  v25 = *(v9 + 48);
  v26 = v9 + 232;
  if ((*(v19 + 245616) & 0xFD) == 0)
  {
    LOBYTE(v27) = 0;
    goto LABEL_61;
  }

  v27 = *v20;
  if (*v20)
  {
    v141 = v10;
    v28 = 0;
    v182[0] = 0u;
    v181 = 0u;
    v29 = &v147.i64[1];
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    v161 = 0u;
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v151 = 0u;
    v125 = v16;
    *(v182 + 1) = v16;
    v30 = __clz(v12) ^ 0x1F;
    if (v12)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = 0;
    }

    LODWORD(v151) = 7;
    *(v182 + 2) = v31;
    v32 = &v147;
    v33 = 1;
    v147 = 0uLL;
    v148 = 0uLL;
    do
    {
      v34 = v33;
      v35 = *(v26 + 8 * v28);
      if ((v35 - 1) < 0x3B9AC9FF)
      {
        v32->i32[0] = v35;
      }

      v33 = 0;
      v32 = &v147.i32[1];
      v28 = 1;
    }

    while ((v34 & 1) != 0);
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = v37;
      v39 = *(v9 + 248 + 8 * v36);
      if ((v39 - 1) < 0x3B9AC9FF)
      {
        *v29 = v39;
      }

      v36 = 1;
      v37 = 1;
      v29 = (&v147.i64[1] + 4);
    }

    while ((v38 & 1) == 0);
    v40 = *(v9 + 200);
    v41 = *(v9 + 216);
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    v43 = vaddq_s64(v40, v42);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v43)), *v41.i8).u8[0])
    {
      LODWORD(v148) = *(v9 + 200);
    }

    v44 = vaddq_s64(v41, v42);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v43)), *&v41).i8[2])
    {
      DWORD1(v148) = v40.i32[2];
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v44))).i32[1])
    {
      DWORD2(v148) = v41.i32[0];
    }

    v45 = vuzp1_s16(*v41.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v44)));
    if (v45.i8[6])
    {
      HIDWORD(v148) = v41.i32[2];
    }

    v46 = 0;
    v47 = 0x7FFFFFFF;
    if (v14 < 0x7FFFFFFF)
    {
      v47 = v14;
    }

    *v45.i32 = v47;
    v48 = vdupq_n_s32(v47);
    v49 = vdupq_lane_s32(v45, 0);
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      *(&v182[v46] + 12) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v147 + v46 * 16)), vcgeq_s32(*(&v147 + v46 * 16), v48)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v147 + v46 * 16)), v49));
      ++v46;
    }

    while (v46 != 2);
    v184 = 0uLL;
    v55 = 0xFFu;
    v183 = 0uLL;
    if (v25 > 8)
    {
      switch(v25)
      {
        case 9:
          v56 = 3u;
          break;
        case 0xC:
          v56 = 4u;
          break;
        case 0xF:
          v56 = 5u;
          break;
        default:
          goto LABEL_40;
      }
    }

    else
    {
      v56 = v25;
      if (v25)
      {
        if (v25 == 3)
        {
          v56 = 1u;
        }

        else
        {
          if (v25 != 6)
          {
            goto LABEL_40;
          }

          v56 = 2u;
        }
      }
    }

    v55 = *(&unk_277C31428 + v56 + 48);
LABEL_40:
    v131 = v18;
    v57 = 0xFFu;
    if (v25 > 8)
    {
      switch(v25)
      {
        case 9:
          v58 = 3u;
          goto LABEL_52;
        case 0xC:
          v58 = 4u;
          goto LABEL_52;
        case 0xF:
          v58 = 5u;
          goto LABEL_52;
      }
    }

    else
    {
      v58 = v25;
      switch(v25)
      {
        case 0:
LABEL_52:
          v57 = *(&unk_277C31428 + v58 + 54);
          break;
        case 3:
          v58 = 1u;
          goto LABEL_52;
        case 6:
          v58 = 2u;
          goto LABEL_52;
      }
    }

    v126 = v9 + 232;
    v127 = v9;
    v128 = v14;
    v137 = v12;
    v133 = v21;
    v135 = v20;
    if (*(*v21 + 77))
    {
      v59 = 1;
    }

    else
    {
      v59 = 3;
    }

    v60 = v19;
    v129 = v24;
    v130 = v23;
    v139 = v25;
    sub_277A5D0C0(v131, v21[244], v23, v24, v59, v25);
    v61 = 0;
    v62 = 0;
    v63 = *(v131 + 72);
    v64 = *(v131 + 48);
    v143 = v63 * byte_277C3CAE8[v55];
    v65 = byte_277C3CAFE[v57];
    v66 = v64;
    do
    {
      v184.i32[v62] = sub_277A5D00C(*v60, v131 + 416, v66 + v61, v63, v55, 0, (*(*(v131 + 8376) + 192) >> 3) & 1);
      v183.i32[v62++] = sub_277A5D00C(*v60, v131 + 416, v64, v63, v57, 0, (*(*(v131 + 8376) + 192) >> 3) & 1);
      v64 += v65;
      v61 += v143;
    }

    while (v62 != 4);
    v12 = v137;
    *v67.i32 = (v137 + 1);
    v68 = vdupq_lane_s32(v67, 0);
    v69.i64[0] = 0x100000001;
    v69.i64[1] = 0x100000001;
    v70 = vdupq_n_s32(0x3DCCCCCDu);
    v71 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v184, v69)), v68);
    v72 = vbslq_s8(vcgtq_f32(v70, v71), v70, v71);
    __asm { FMOV            V4.4S, #10.0 }

    v74 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v183, v69)), v68);
    v75 = vbslq_s8(vcgtq_f32(v70, v74), v70, v74);
    *(&v182[2] + 12) = vbslq_s8(vcgtq_f32(v72, _Q4), _Q4, v72);
    *(&v182[3] + 12) = vbslq_s8(vcgtq_f32(v75, _Q4), _Q4, v75);
    v20 = v135;
    (*(v135 + 32))(*(v135 + 16), &v151);
    memset(v149, 0, sizeof(v149));
    v147 = 0u;
    v148 = 0u;
    v76 = (*(v20 + 40))(*(v20 + 16), &v147);
    LOBYTE(v27) = v76 == 0;
    v10 = v141;
    if (!v76)
    {
      *v141 = v150;
    }

    LODWORD(v25) = v139;
    v19 = v60;
    v18 = v131;
    v21 = v133;
    v24 = v129;
    v23 = v130;
    v9 = v127;
    v14 = v128;
    result = 999999999;
    v26 = v126;
    v16 = v125;
  }

LABEL_61:
  if (v14 <= 999999999 && (v27 & 1) == 0)
  {
    switch(v25)
    {
      case 6:
        v142 = v10;
        v77 = &unk_27A71D208;
        break;
      case 0xC:
        v142 = v10;
        v77 = &unk_27A71D3D8;
        break;
      case 9:
        v142 = v10;
        v77 = &unk_27A71D2F0;
        break;
      default:
        return result;
    }

    v132 = v77;
    v78 = 0;
    v79 = __clz(v12) ^ 0x1F;
    if (v12)
    {
      v80 = v79 + 1;
    }

    else
    {
      v80 = 0;
    }

    v147.f32[0] = v16;
    v147.f32[1] = v80;
    v152 = 0u;
    v151 = 0u;
    v81 = &v151;
    v82 = 1;
    do
    {
      v83 = v82;
      v84 = *(v26 + 8 * v78);
      if ((v84 - 1) < 0x3B9AC9FF)
      {
        *v81 = v84;
      }

      v82 = 0;
      v81 = (&v151 + 4);
      v78 = 1;
    }

    while ((v83 & 1) != 0);
    v85 = 0;
    for (i = 8; i != 16; i += 4)
    {
      v87 = *(v9 + 248 + 8 * v85);
      if ((v87 - 1) < 0x3B9AC9FF)
      {
        *(&v151 + i) = v87;
      }

      v85 = 1;
    }

    v88 = *(v9 + 200);
    v89 = *(v9 + 216);
    v90.i64[0] = -1;
    v90.i64[1] = -1;
    v91 = vaddq_s64(v88, v90);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v91)), *v89.i8).u8[0])
    {
      LODWORD(v152) = *(v9 + 200);
    }

    v92 = vaddq_s64(v89, v90);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v91)), *&v89).i8[2])
    {
      DWORD1(v152) = v88.i32[2];
    }

    if (vuzp1_s16(*&v89, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v92))).i32[1])
    {
      DWORD2(v152) = v89.i32[0];
    }

    v93 = vuzp1_s16(*v89.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v92)));
    if (v93.i8[6])
    {
      HIDWORD(v152) = v89.i32[2];
    }

    v94 = 0;
    *v93.i32 = v14;
    v95 = vdupq_n_s32(v14);
    v96 = vdupq_lane_s32(v93, 0);
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      *(&v147 + v94 + 8) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v151 + v94)), vcgeq_s32(*(&v151 + v94), v95)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v151 + v94)), v96));
      v94 += 16;
    }

    while (v94 != 32);
    v184 = 0uLL;
    v183 = 0uLL;
    if (v25 > 8)
    {
      if (v25 == 9)
      {
        v98 = 3u;
      }

      else
      {
        v98 = 4u;
      }
    }

    else
    {
      v98 = 2u;
    }

    v99 = *(&unk_277C31428 + v98 + 48);
    v136 = v20;
    v138 = v12;
    if (v25 > 8)
    {
      if (v25 == 9)
      {
        v100 = 3u;
      }

      else
      {
        v100 = 4u;
      }
    }

    else
    {
      v100 = 2u;
    }

    v101 = *(&unk_277C31428 + v100 + 54);
    v134 = v21;
    if (*(*v21 + 77))
    {
      v102 = 1;
    }

    else
    {
      v102 = 3;
    }

    v103 = v19;
    v140 = v25;
    sub_277A5D0C0(v18, v21[244], v23, v24, v102, v25);
    v104 = 0;
    v105 = 0;
    v106 = *(v18 + 72);
    v107 = *(v18 + 48);
    v144 = v106 * byte_277C3CAE8[v99];
    v108 = byte_277C3CAFE[v101];
    v109 = v107;
    do
    {
      v184.i32[v105] = sub_277A5D00C(*v103, v18 + 416, v109 + v104, v106, v99, 0, (*(*(v18 + 8376) + 192) >> 3) & 1);
      v183.i32[v105++] = sub_277A5D00C(*v103, v18 + 416, v107, v106, v101, 0, (*(*(v18 + 8376) + 192) >> 3) & 1);
      v107 += v108;
      v104 += v144;
    }

    while (v105 != 4);
    *v110.i32 = (v138 + 1);
    v111 = vdupq_lane_s32(v110, 0);
    v112.i64[0] = 0x100000001;
    v112.i64[1] = 0x100000001;
    v113 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v184, v112)), v111);
    v114 = vdupq_n_s32(0x3DCCCCCDu);
    v115 = vbslq_s8(vcgtq_f32(v114, v113), v114, v113);
    __asm { FMOV            V4.4S, #10.0 }

    *(v149 + 8) = vbslq_s8(vcgtq_f32(v115, _Q4), _Q4, v115);
    v117 = vdivq_f32(vcvtq_f32_u32(vaddq_s32(v183, v112)), v111);
    v118 = vbslq_s8(vcgtq_f32(v114, v117), v114, v117);
    *(&v149[1] + 8) = vbslq_s8(vcgtq_f32(v118, _Q4), _Q4, v118);
    if ((*(v103 + 245616) & 0xFD) != 0)
    {
      sub_2779D4488(v134[238], *(v136 + 4) != 0, &v147, 18, 7);
    }

    v146 = 0uLL;
    result = sub_2779D28B0(&v147, v132, &v146);
    v119 = 0;
    v120 = vcvtq_s32_f32(vmulq_f32(v146, vdupq_n_s32(0x42C80000u)));
    v121 = vmaxvq_s32(vmaxq_s32(v120, vdupq_n_s32(0xFFFFFC18)));
    v122 = v121 - 500;
    if (v140 == 6)
    {
      v123 = v121 - 500;
    }

    else
    {
      v123 = v121;
    }

    if (v140 != 9)
    {
      v122 = v123;
    }

    v145 = v120;
    v124 = v121 - 200;
    if (v140 != 12)
    {
      v124 = v122;
    }

    *v142 = 0;
    do
    {
      if (v145.i32[v119] >= v124)
      {
        if (v119)
        {
          *v142 = 1;
        }

        if (v119 >= 2)
        {
          *(v142 + 1) = 1;
        }
      }

      ++v119;
    }

    while (v119 != 4);
  }

  return result;
}

float32x4_t *sub_2779D68DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  v16 = result;
  v51 = *MEMORY[0x277D85DE8];
  v17 = 98893;
  v18 = *(v14 + 48);
  if (v18 <= 8)
  {
    if (v18 == 3)
    {
      v19 = &unk_27A71D4C0;
    }

    else
    {
      if (v18 != 6)
      {
        return result;
      }

      v17 = 98894;
      v19 = &unk_27A71D5A8;
    }
  }

  else
  {
    switch(v18)
    {
      case 9u:
        v17 = 98895;
        v19 = &unk_27A71D690;
        break;
      case 0xCu:
        v17 = 98896;
        v19 = &unk_27A71D778;
        break;
      case 0xFu:
        v17 = 98897;
        v19 = &unk_27A71D860;
        break;
      default:
        return result;
    }
  }

  v20 = result->u32[v17];
  if ((v20 & 0x80000000) == 0)
  {
    v21 = &result[40268].i32[2];
    v22 = byte_277C3BCB6[*(v14 + 48)];
    v23 = flt_277BCCF58[result[24728].i32[0] - 1];
    v24 = 0x7FFFFFFFLL;
    if (v11 < 0x7FFFFFFF)
    {
      v24 = v11;
    }

    v50.f32[0] = (((*(v9 + 16920) * 0.0078125) * 0.0019531) / (1 << v22)) * v10;
    v50.f32[1] = (v24 >> v22);
    v25 = **(v9 + 128) >> (v13 - 8);
    v50.f32[2] = v12;
    v50.i32[3] = vcvts_n_f32_u32(v25 * v25, 8uLL);
    sub_2779D4488(result[17013].i64[1], result[40268].i32[3] != 0, &v50, 4, 2);
    if ((v16[15351].i8[0] & 0xFD) != 0 && *v21 && (v49 = 0u, v48 = 0u, v47 = 0u, v46 = 0u, v45 = 0u, v44 = 0u, v43 = 0u, v42 = 0u, v41 = 0u, v40 = 0u, v39 = 0u, v38 = 0u, v37 = 0u, v36 = 0u, v35 = 0u, v34 = 0u, v33 = 0u, v32 = 0u, v31 = 0u, v30 = 0u, *&v29[16] = 0u, *v29 = 0u, memset(v28, 0, sizeof(v28)), LODWORD(v28[0]) = 2, *&v29[12] = v50, (v16[40270].i64[1])(v16[40269].i64[1], v28), memset(v26, 0, 512), result = (v16[40271].i64[0])(v16[40269].i64[1], v26), !result))
    {
      *(v15 + 296) = v27;
    }

    else
    {
      v26[0].i32[0] = 0;
      result = sub_2779D28B0(&v50, v19, v26);
      if ((v26[0].f32[0] * 100.0) >= (v23 * v20))
      {
        *(v15 + 296) = 0;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_2779D6C38(unsigned __int8 *result, uint64_t a2)
{
  v2 = byte_277C3CAFE[*(a2 + 48)];
  if (v2 <= byte_277C3CAFE[result[1]])
  {
    if (v2 > byte_277C3CAFE[*result])
    {
      return result;
    }

    *(a2 + 296) = 0;
    *(a2 + 288) = 0;
    if (*(a2 + 40))
    {
      if (*(a2 + 44))
      {
        *(a2 + 300) = 0;
      }
    }

    v3 = *(a2 + 300) == 0;
    v4 = 284;
  }

  else
  {
    v3 = 0;
    *(a2 + 284) = 0;
    *(a2 + 296) = 0x100000000;
    v4 = 292;
  }

  *(a2 + v4) = v3;
  return result;
}

float32x4_t *sub_2779D6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  v18 = v11;
  v19 = v10;
  v20 = result;
  v121 = *MEMORY[0x277D85DE8];
  v21 = &result[24720].i32[3];
  if (v14 && result[17005].i8[15] == 1)
  {
    v22 = vtst_s32(*(v15 + 288), *(v15 + 288));
  }

  else
  {
    v22 = 0;
  }

  v23 = v22.i8[0] & 1;
  v24 = v22.i8[4] & 1;
  if (*v21)
  {
    if (*v21 != 1)
    {
      v28 = *v11;
      v26 = v28 == 1 || v28 == 3;
      v27 = v28 == 2 || v28 == 3;
      goto LABEL_21;
    }

    v25 = *v11;
    if (v25 == 1)
    {
      v26 = 1;
    }

    else
    {
      if (v12 <= 31 && !*v11)
      {
        v27 = 1;
        v26 = 1;
        goto LABEL_21;
      }

      v26 = v25 == 3;
      if (v25 == 2)
      {
        v27 = 1;
        goto LABEL_21;
      }
    }

    v27 = v25 == 3;
LABEL_21:
    v23 &= v26;
    v24 &= v27;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v30 = vnegq_f64(v29);
    *(v15 + 232) = vbicq_s8(*(v15 + 232), vceqq_s64(*(v15 + 232), v30));
    *(v15 + 248) = vbicq_s8(*(v15 + 248), vceqq_s64(*(v15 + 248), v30));
    *(v15 + 200) = vbicq_s8(*(v15 + 200), vceqq_s64(*(v15 + 200), v30));
    *(v15 + 216) = vbicq_s8(*(v15 + 216), vceqq_s64(*(v15 + 216), v30));
  }

  *a9 = v23;
  a9[1] = v23;
  if (*v21)
  {
    v31 = *(v15 + 208);
    v32 = *(v15 + 200) + *(v15 + 240);
    _VF = __OFADD__(v32, v31);
    v34 = v32 + v31;
    if (v34 < 0 != _VF)
    {
      v34 += 15;
    }

    v35 = v34 >> 4;
    v36 = 14;
    if (*v21 != 1)
    {
      v36 = 15;
    }

    if (v35 * v36 >= v13)
    {
      v37 = 0;
    }

    else
    {
      v37 = v23;
    }

    if ((*(v15 + 216) + *(v15 + 232) + *(v15 + 224)) / 16 * v36 >= v13)
    {
      v23 = 0;
    }

    *a9 = v37;
    a9[1] = v23;
  }

  else
  {
    v37 = v23;
  }

  a9[2] = v24;
  a9[3] = v24;
  if (*v21)
  {
    v38 = *(v15 + 200) + *(v15 + 256);
    v39 = *(v15 + 216);
    _VF = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v40 < 0 != _VF)
    {
      v40 += 15;
    }

    v41 = v40 >> 4;
    v42 = 14;
    if (*v21 != 1)
    {
      v42 = 15;
    }

    if (v41 * v42 >= v13)
    {
      v43 = 0;
    }

    else
    {
      v43 = v24;
    }

    if ((*(v15 + 208) + *(v15 + 248) + *(v15 + 224)) / 16 * v42 >= v13)
    {
      v24 = 0;
    }

    a9[2] = v43;
    a9[3] = v24;
  }

  else
  {
    v43 = v24;
  }

  if (result[24721].i32[1] && v14 && *(v15 + 288) && *(v15 + 292))
  {
    v44 = *(v10 + 153152);
    v45 = __clz(v44) ^ 0x1F;
    v46 = v44 ? v45 + 1 : 0;
    if (v13 <= 999999999)
    {
      v47 = *(v15 + 48);
      if (v47 >= 3 && v47 - 6 <= 9 && ((0x249u >> (v47 - 6)) & 1) != 0)
      {
        v79 = *(v15 + 48);
        v48 = 0;
        v49 = *(&off_27A71D948 + (v47 - 6));
        v82[0].f32[0] = *v11;
        v82[0].f32[1] = v46;
        v80 = 0u;
        v81 = 0u;
        v50 = &v80;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = *(v15 + 232 + 8 * v48);
          if ((v53 - 1) < 0x3B9AC9FF)
          {
            *v50 = v53;
          }

          v51 = 0;
          v50 = (&v80 + 4);
          v48 = 1;
        }

        while ((v52 & 1) != 0);
        v54 = 0;
        for (i = 8; i != 16; i += 4)
        {
          v56 = *(v15 + 248 + 8 * v54);
          if ((v56 - 1) < 0x3B9AC9FF)
          {
            *(&v80 + i) = v56;
          }

          v54 = 1;
        }

        v57 = *(v15 + 200);
        v58 = *(v15 + 216);
        v59.i64[0] = -1;
        v59.i64[1] = -1;
        v60 = vaddq_s64(v57, v59);
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v60)), *v58.i8).u8[0])
        {
          LODWORD(v81) = *(v15 + 200);
        }

        v61 = vaddq_s64(v58, v59);
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v60)), *&v58).i8[2])
        {
          DWORD1(v81) = v57.i32[2];
        }

        if (vuzp1_s16(*&v58, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v61))).i32[1])
        {
          DWORD2(v81) = v58.i32[0];
        }

        v62 = vuzp1_s16(*v58.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v61)));
        if (v62.i8[6])
        {
          HIDWORD(v81) = v58.i32[2];
        }

        v63 = 0;
        *v62.i32 = v13;
        v64 = vdupq_n_s32(v13);
        v65 = vdupq_lane_s32(v62, 0);
        __asm { FMOV            V2.4S, #1.0 }

        do
        {
          *(&v82[v63] + 8) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v80 + v63 * 16)), vcgeq_s32(*(&v80 + v63 * 16), v64)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v80 + v63 * 16)), v65));
          ++v63;
        }

        while (v63 != 2);
        if ((result[15351].i8[0] & 0xFD) == 0 || (sub_2779D4488(result[17013].i64[1], result[40268].i32[3] != 0, v82, 10, 6), (v20[15351].i8[0] & 0xFD) == 0) || !v20[40268].i32[2] || (*&v120[4] = 0u, *v118 = 0u, memset(v117, 0, sizeof(v117)), LODWORD(v117[0]) = 6, *&v118[12] = v82[0], v119 = v82[1], *v120 = v83, (v20[40270].i64[1])(v20[40269].i64[1], v117), v114 = 0u, v115 = 0u, v112 = 0u, v113 = 0u, v110 = 0u, v111 = 0u, v108 = 0u, v109 = 0u, v106 = 0u, v107 = 0u, v104 = 0u, v105 = 0u, v102 = 0u, v103 = 0u, v100 = 0u, v101 = 0u, v98 = 0u, v99 = 0u, v96 = 0u, v97 = 0u, v94 = 0u, v95 = 0u, v92 = 0u, v93 = 0u, v90 = 0u, v91 = 0u, v88 = 0u, v89 = 0u, v86 = 0u, v87 = 0u, v84 = 0u, v85 = 0u, result = (v20[40271].i64[0])(v20[40269].i64[1], &v84), result))
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          result = sub_2779D28B0(v82, v49, &v84);
          v70 = 0;
          v71 = vdupq_n_s32(0xFFFFFC18);
          v72 = vdupq_n_s32(0x42C80000u);
          do
          {
            v73 = vcvtq_s32_f32(vmulq_f32(*(&v84 + v70 * 16), v72));
            v117[v70] = v73;
            v71 = vmaxq_s32(v71, v73);
            ++v70;
          }

          while (v70 != 4);
          v24 = 0;
          v43 = 0;
          v23 = 0;
          v37 = 0;
          v74 = 0;
          v75 = vmaxvq_s32(v71);
          v76 = v75 - 150;
          if (v79 != 6)
          {
            v76 = v75;
          }

          v77 = v75 - 100;
          if (v79 != 9)
          {
            v77 = v76;
          }

          *a9 = 0;
          *(a9 + 1) = 0;
          while (*(v117 + v74) < v77)
          {
LABEL_93:
            if (++v74 == 16)
            {
              goto LABEL_99;
            }
          }

          if (v74)
          {
            v37 = 1;
            *a9 = 1;
            if ((v74 & 2) == 0)
            {
LABEL_89:
              if ((v74 & 4) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }
          }

          else if ((v74 & 2) == 0)
          {
            goto LABEL_89;
          }

          v23 = 1;
          a9[1] = 1;
          if ((v74 & 4) == 0)
          {
LABEL_91:
            if (v74 >= 8)
            {
              v24 = 1;
              a9[3] = 1;
            }

            goto LABEL_93;
          }

LABEL_90:
          v43 = 1;
          a9[2] = 1;
          goto LABEL_91;
        }

        v78 = v116;
        v23 = DWORD1(v116);
        *a9 = v116;
        v43 = DWORD2(v78);
        v24 = HIDWORD(v78);
        v37 = v78;
      }
    }
  }

LABEL_99:
  if (v21[25] >= 2)
  {
    if (!v37 || (result = sub_2779D74B0(v18, 1, v17, *(v19 + 16904), 0, 1), *a9 = result & v37, v21[25] >= 2))
    {
      if (!v23 || (result = sub_2779D74B0(v18, 1, v17, *(v19 + 16904), 2, 3), a9[1] = result & v23, v21[25] >= 2))
      {
        if (!v43 || (result = sub_2779D74B0(v18, 2, v17, *(v19 + 16904), 0, 2), a9[2] = result & v43, v21[25] >= 2))
        {
          if (v24)
          {
            result = sub_2779D74B0(v18, 2, v17, *(v19 + 16904), 1, 3);
            a9[3] = result & v24;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2779D74B0(unsigned __int8 *a1, int a2, int *a3, int a4, int a5, int a6)
{
  v6 = 510 - 2 * a4;
  v8 = __OFSUB__(v6, 254);
  v7 = v6 == 254;
  v9 = 3 * (v6 / 255);
  if (!((256 - 2 * a4 < 0) ^ v8 | v7))
  {
    v9 = 3;
  }

  if (a3)
  {
    if (a2 == 1)
    {
      v10 = *a3;
    }

    else
    {
      v10 = a3[1];
    }
  }

  else
  {
    v10 = *a1 == a2;
  }

  v11 = *&a1[8 * a5 + 208];
  if (v11)
  {
    v12 = v10 != 0;
    if (!*v11)
    {
      ++v12;
    }
  }

  else if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&a1[8 * a6 + 208];
  if (v13)
  {
    v14 = *v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  return v14 + v12 >= v9;
}

double sub_2779D7568(uint64_t a1, int *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 270312) + 28);
  memset(v16, 0, sizeof(v16));
  if (a2)
  {
    sub_2779B3658(a1, a2, a3, a5, a6, v9);
  }

  if (*(a1 + 395120))
  {
    v10 = 7;
  }

  else
  {
    v10 = 1;
  }

  sub_277978170(a1 + 245616, (a3 + 416), **(a3 + 8280), v10, v13, a3 + 8728, a3 + 10584, v14, &v15);
  if (*(v13 | v10))
  {
    v11 = (a3 + 8728 + (v10 << 6));
  }

  else
  {
    v11 = &v14[v10];
  }

  *(v16 + v10) = (((v11[1] + ((v11[1] & 0x8000) == 0)) << 13) + 24576) & 0xFFFF0000 | ((*v11 + ((*v11 & 0x8000) == 0) + 3) >> 3);
  return sub_2779D7714(a4, v16);
}

double sub_2779D7714(unsigned __int8 *a1, __int128 *a2)
{
  while (1)
  {
    v4 = *a2;
    *(a1 + 56) = a2[1];
    *(a1 + 40) = v4;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    if (*a1 < 3u)
    {
      break;
    }

    sub_2779D7714(*(a1 + 1), a2);
    sub_2779D7714(*(a1 + 2), a2);
    sub_2779D7714(*(a1 + 3), a2);
    a1 = *(a1 + 4);
  }

  return result;
}

uint64_t sub_2779D778C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = 0;
  v5 = a1;
  do
  {
    v6 = v4++;
    v7 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v7);
  v8 = 0xFFFFFFFFLL;
  if (!HIDWORD(a1) && v6 <= 7 && a4 && a3 && v6 < a2)
  {
    v9 = 0;
    do
    {
      v10 = a1 > 0x7F;
      v11 = a1 & 0x7F;
      a1 >>= 7;
      *(a3 + v9++) = v11 | (v10 << 7);
    }

    while (v4 != v9);
    v8 = 0;
    *a4 = v4;
  }

  return v8;
}

uint64_t sub_2779D7808(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  _W8 = -1;
  if (a3 >= 8)
  {
    do
    {
      v5 = *a2;
      a2 += 4;
      _X9 = v5;
      __asm { CRC32CX         W8, W8, X9 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v11 = *a2;
    a2 += 2;
    _W10 = v11;
    __asm { CRC32CW         W8, W8, W10 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v13 = *a2++;
    _W10 = v13;
    __asm { CRC32CH         W8, W8, W10 }

    a3 -= 2;
  }

  if (a3)
  {
    _W9 = *a2;
    __asm { CRC32CB         W8, W8, W9 }
  }

  return ~_W8;
}

uint64_t sub_2779D7864(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 4);
}

uint64_t sub_2779D78DC(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 5);
}

uint64_t sub_2779D7954(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 5);
}

uint64_t sub_2779D79BC(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 6);
}

uint64_t sub_2779D7A24(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 7);
}

uint64_t sub_2779D7A8C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 7);
}

uint64_t sub_2779D7B0C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 8);
}

uint64_t sub_2779D7B8C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 9);
}

uint64_t sub_2779D7C0C(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 16);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 9);
}

uint64_t sub_2779D7CAC(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 32);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 10);
}

uint64_t sub_2779D7D4C(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 64);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 11);
}

uint64_t sub_2779D7DEC(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + v10);
      v12 = *(a3 + v10);
      v13 = vsubl_u8(*v11.i8, *v12.i8);
      v14 = vsubl_high_u8(v11, v12);
      v7 = vaddq_s16(v13, v7);
      v8 = vaddq_s16(v14, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v13.i8, *v13.i8), *v14.i8, *v14.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v13, v13), v14, v14);
      v15 = v10 >= 0x30;
      v10 += 16;
    }

    while (!v15);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 32);
  v16 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v17 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v17;
  return v17 - ((v16 * v16) >> 11);
}

uint64_t sub_2779D7E88(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 32;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x30;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 32;
  }

  while (v5 < 0x40);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 12);
}

uint64_t sub_2779D7F48(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 32;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x30;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 32;
  }

  while (v5 < 0x80);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 13);
}

uint64_t sub_2779D8008(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x70;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 16;
  }

  while (v5 < 0x40);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 13);
}

uint64_t sub_2779D80C8(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x70;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 16;
  }

  while (v5 < 0x80);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 14);
}

uint64_t sub_2779D8188(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 6);
}

uint64_t sub_2779D8200(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 8);
}

uint64_t sub_2779D8268(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 6);
}

uint64_t sub_2779D82E8(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 10);
}

uint64_t sub_2779D8368(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 8);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 8);
}

uint64_t sub_2779D8408(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + v10);
      v12 = *(a3 + v10);
      v13 = vsubl_u8(*v11.i8, *v12.i8);
      v14 = vsubl_high_u8(v11, v12);
      v7 = vaddq_s16(v13, v7);
      v8 = vaddq_s16(v14, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v13.i8, *v13.i8), *v14.i8, *v14.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v13, v13), v14, v14);
      v15 = v10 >= 0x30;
      v10 += 16;
    }

    while (!v15);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 16);
  v16 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v17 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v17;
  return v17 - ((v16 * v16) >> 10);
}

uint64_t sub_2779D84A4(uint64_t result, int a2, uint64_t a3, int a4, int32x4_t *a5, int32x4_t *a6, _DWORD *a7, _DWORD *a8, uint64_t a9)
{
  for (i = 0; i != 4; ++i)
  {
    v10 = (result + 8 * i);
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = -8;
    v14 = 0uLL;
    v15 = (a3 + 8 * i);
    do
    {
      v16 = vsubl_u8(*v10, *v15);
      v11 = vaddq_s16(v16, v11);
      v12 = vmlal_s16(v12, *v16.i8, *v16.i8);
      v14 = vmlal_high_s16(v14, v16, v16);
      v10 = (v10 + a2);
      v15 = (v15 + a4);
    }

    while (!__CFADD__(v13++, 1));
    a6->i32[i] = vaddlvq_s16(v11);
    a5->i32[i] = vaddvq_s32(vaddq_s32(v14, v12));
  }

  v18 = 0;
  *a7 += vaddvq_s32(*a5);
  *a8 += vaddvq_s32(*a6);
  do
  {
    *(a9 + v18 * 4) = a5->i32[v18] - ((a6->i32[v18] * a6->i32[v18]) >> 6);
    ++v18;
  }

  while (v18 != 4);
  return result;
}

uint64_t sub_2779D8574(uint64_t result, int a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v8 = 0;
  v24 = 0;
  v25 = 0;
  v9 = &v25;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (result + 16 * v8);
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = -16;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = (a3 + 16 * v8);
    do
    {
      v19 = vsubl_u8(*v12, *v18);
      v20 = vsubl_high_u8(*v12->i8, *v18->i8);
      v13 = vaddq_s16(v19, v13);
      v17 = vaddq_s16(v20, v17);
      v14 = vmlal_s16(vmlal_s16(v14, *v19.i8, *v19.i8), *v20.i8, *v20.i8);
      v16 = vmlal_high_s16(vmlal_high_s16(v16, v19, v19), v20, v20);
      v12 = (v12 + a2);
      v18 = (v18 + a4);
    }

    while (!__CFADD__(v15++, 1));
    v10 = 0;
    *v9 = vaddlvq_s16(vaddq_s16(v13, v17));
    a5[v8] = vaddvq_s32(vaddq_s32(v16, v14));
    v9 = &v24;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  *a6 += a5[1] + *a5;
  v23 = v24;
  v22 = v25;
  *a7 += v24 + v25;
  *a8 = *a5 - ((v22 * v22) >> 8);
  a8[1] = a5[1] - ((v23 * v23) >> 8);
  return result;
}

float sub_2779D866C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -8;
  v7 = 0uLL;
  do
  {
    v8 = *a1;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *a3;
    v11 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v12 = vsubl_u8(v8, v10);
    v13 = vsubl_u8(v9, v11);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v12.i8, *v12.i8), v12, v12);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v13.i8, *v13.i8), v13, v13);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v7, v5)));
  *a5 = result;
  return result;
}

float sub_2779D86D4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -16;
  v7 = 0uLL;
  do
  {
    v8 = *a1;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *a3;
    v11 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v12 = vsubl_u8(v8, v10);
    v13 = vsubl_u8(v9, v11);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v12.i8, *v12.i8), v12, v12);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v13.i8, *v13.i8), v13, v13);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v7, v5)));
  *a5 = result;
  return result;
}

float sub_2779D873C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -8;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = *a1;
    v11 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v12 = *a3;
    v13 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v14 = vsubl_u8(*v10.i8, *v12.i8);
    v15 = vsubl_high_u8(v10, v12);
    v16 = vsubl_u8(*v11.i8, *v13.i8);
    v17 = vsubl_high_u8(v11, v13);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v14.i8, *v14.i8), v14, v14);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v15.i8, *v15.i8), v15, v15);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v16.i8, *v16.i8), v16, v16);
    v9 = vmlal_high_s16(vmlal_s16(v9, *v17.i8, *v17.i8), v17, v17);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v7, v5), vaddq_s32(v8, v9))));
  *a5 = result;
  return result;
}

float sub_2779D87CC(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -16;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = *a1;
    v11 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v12 = *a3;
    v13 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v14 = vsubl_u8(*v10.i8, *v12.i8);
    v15 = vsubl_high_u8(v10, v12);
    v16 = vsubl_u8(*v11.i8, *v13.i8);
    v17 = vsubl_high_u8(v11, v13);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v14.i8, *v14.i8), v14, v14);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v15.i8, *v15.i8), v15, v15);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v16.i8, *v16.i8), v16, v16);
    v9 = vmlal_high_s16(vmlal_s16(v9, *v17.i8, *v17.i8), v17, v17);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v7, v5), vaddq_s32(v8, v9))));
  *a5 = result;
  return result;
}

uint8x8_t *sub_2779D885C(uint8x8_t *result, int a2, uint16x8_t *a3, unsigned int a4, int a5, int a6)
{
  v6 = 2 * a4;
  if (a5 == 8)
  {
    v7 = 0uLL;
    do
    {
      v8 = vsubw_u8(*a3, *result);
      v9 = vsubw_u8(*(a3 + 2 * a4), *(result + a2));
      v7 = vpadalq_u32(v7, vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v8.i8, *v8.i8), v8, v8), *v9.i8, *v9.i8), v9, v9));
      result = (result + 2 * a2);
      a3 = (a3 + 2 * v6);
      a6 -= 2;
    }

    while (a6);
  }

  else
  {
    v10 = 2 * v6;
    v11 = 0uLL;
    do
    {
      v12.i32[0] = result->i32[0];
      v12.i32[1] = *(result->i32 + a2);
      v13.i32[0] = *(result->i32 + 2 * a2);
      v13.i32[1] = *(result->i32 + 3 * a2);
      v14.i64[0] = a3->i64[0];
      v14.i64[1] = *(a3->i64 + 2 * a4);
      v15.i64[0] = *(a3->i64 + v10);
      v15.i64[1] = *(a3->i64 + 2 * a4 + v10);
      v16 = vsubw_u8(v14, v12);
      v17 = vsubw_u8(v15, v13);
      v11 = vpadalq_u32(v11, vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v16.i8, *v16.i8), v16, v16), *v17.i8, *v17.i8), v17, v17));
      result = (result + 4 * a2);
      a3 = (a3 + 8 * a4);
      a6 -= 4;
    }

    while (a6);
  }

  return result;
}

double sub_2779D893C(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 4 * a2);
  v7 = (a1 - 2 * a2);
  v8 = (a1 + 2 * a2);
  *v13.i8 = *v6;
  v9 = vabd_u16(*v7, *a1);
  v10 = vsra_n_u16(vadd_s16(v9, v9), vabd_u16(*v6, *v8), 1uLL);
  *v11.i8 = *v7;
  v11.u64[1] = *a1;
  v12 = vcgt_u16(v10, vdup_n_s16(a3 << (a6 - 8)));
  v13.u64[1] = *v8;
  v14 = vabdq_u16(v11, v13);
  v15 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), v14);
  v16 = vand_s8(vbic_s8(*&vextq_s8(v15, v15, 8uLL), v12), *v15.i8);
  v15.i16[0] = vaddv_s16(v16);
  if (v15.i32[0])
  {
    v17 = vcgtq_u16(v14, vdupq_n_s16(*a5 << (a6 - 8)));
    *v17.i8 = vand_s8(vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), v16);
    *v18.i8 = v16;
    v18.u64[1] = v16;
    v19.u64[1] = *v8;
    *v19.i8 = *v7;
    v20 = vsubq_s16(vextq_s8(v11, v13, 8uLL), v19);
    v21 = 1 << (a6 - 1);
    v22 = vdup_n_s16(-v21);
    v23 = vdup_n_s16(v21 - 1);
    v24 = vmla_s16(vand_s8(*v17.i8, vmin_s16(vmax_s16(*&vextq_s8(v20, v20, 8uLL), v22), v23)), *v20.i8, 0x3000300030003);
    *v20.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v24, 0x4000400040004), v22), v23), 3uLL);
    *v25.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v24, 0x3000300030003), v22), v23), 3uLL);
    *v26.i8 = vrshr_n_s16(*v20.i8, 1uLL);
    v26.u64[1] = vneg_s16(*v26.i8);
    v25.u64[1] = vneg_s16(*v20.i8);
    v27 = vaddq_s16(v25, v11);
    v28 = vdupq_n_s16(~(-1 << a6));
    v29 = vbslq_s8(v18, vminq_u16(vmaxq_s16(v27, 0), v28), v11);
    *v30.i8 = veor_s8(*v17.i8, v16);
    v30.i64[1] = v30.i64[0];
    v13 = vbslq_s8(v30, vminq_u16(vmaxq_s16(vaddq_s16(v26, v13), 0), v28), v13);
    *v6 = *v13.i8;
    *v7 = *v29.i8;
    *a1 = vextq_s8(v29, v29, 8uLL).u64[0];
    v13.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
    *v8 = *v13.i8;
  }

  return *v13.i64;
}

double sub_2779D8AAC(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v7 = *(a1 - 4);
  v6 = (a1 - 4);
  v8 = (v6 + 2 * a2);
  v9 = (v6 + 4 * a2);
  v10 = (v6 + 6 * a2);
  v11 = vtrn1_s16(v7, *v8);
  v12 = vtrn2_s16(v7, *v8);
  v13 = vtrn1_s16(*v9, *v10);
  v14 = vtrn2_s16(*v9, *v10);
  *v22.i8 = vzip1_s32(v11, v13);
  v15 = vzip2_s32(v11, v13);
  *v16.i8 = vzip1_s32(v12, v14);
  v17 = vzip2_s32(v12, v14);
  v18 = vabd_u16(*v16.i8, v15);
  v19 = vsra_n_u16(vadd_s16(v18, v18), vabd_u16(*v22.i8, v17), 1uLL);
  v20.i64[0] = v16.i64[0];
  v20.u64[1] = v15;
  v21 = vcgt_u16(v19, vdup_n_s16(a3 << (a6 - 8)));
  v22.u64[1] = v17;
  v23 = vabdq_u16(v20, v22);
  v24 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), v23);
  v25 = vand_s8(vbic_s8(*&vextq_s8(v24, v24, 8uLL), v21), *v24.i8);
  v24.i16[0] = vaddv_s16(v25);
  if (v24.i32[0])
  {
    v26 = vcgtq_u16(v23, vdupq_n_s16(*a5 << (a6 - 8)));
    *v26.i8 = vand_s8(vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), v25);
    *v27.i8 = v25;
    v27.u64[1] = v25;
    v16.u64[1] = v17;
    v28 = vsubq_s16(vextq_s8(v20, v22, 8uLL), v16);
    v29 = 1 << (a6 - 1);
    v30 = vdup_n_s16(-v29);
    v31 = vdup_n_s16(v29 - 1);
    v32 = vmla_s16(vand_s8(*v26.i8, vmin_s16(vmax_s16(*&vextq_s8(v28, v28, 8uLL), v30), v31)), *v28.i8, 0x3000300030003);
    *v28.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v32, 0x4000400040004), v30), v31), 3uLL);
    *v33.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v32, 0x3000300030003), v30), v31), 3uLL);
    *v34.i8 = vrshr_n_s16(*v28.i8, 1uLL);
    v34.u64[1] = vneg_s16(*v34.i8);
    v33.u64[1] = vneg_s16(*v28.i8);
    v35 = vaddq_s16(v33, v20);
    v36 = vdupq_n_s16(~(-1 << a6));
    v37 = vbslq_s8(v27, vminq_u16(vmaxq_s16(v35, 0), v36), v20);
    *v38.i8 = veor_s8(*v26.i8, v25);
    v38.i64[1] = v38.i64[0];
    v22 = vbslq_s8(v38, vminq_u16(vmaxq_s16(vaddq_s16(v34, v22), 0), v36), v22);
    v38.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
    v35.i64[0] = vextq_s8(v22, v22, 8uLL).u64[0];
    *v36.i8 = vtrn1_s16(*v22.i8, *v37.i8);
    *v22.i8 = vtrn2_s16(*v22.i8, *v37.i8);
    *v37.i8 = vtrn1_s16(*v38.i8, *v35.i8);
    *v38.i8 = vtrn2_s16(*v38.i8, *v35.i8);
    *v6 = vzip1_s32(*v36.i8, *v37.i8);
    *v8 = vzip1_s32(*v22.i8, *v38.i8);
    *v22.i8 = vzip2_s32(*v22.i8, *v38.i8);
    *v9 = vzip2_s32(*v36.i8, *v37.i8);
    *v10 = *v22.i8;
  }

  return *v22.i64;
}

double sub_2779D8C5C(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 4 * a2);
  v7 = (a1 - 2 * a2);
  v8 = (a1 + 2 * a2);
  *v14.i8 = *(a1 - 6 * a2);
  *v13.i8 = *v6;
  v9 = a6 - 8;
  v10 = vabd_u16(*v7, *a1);
  v11 = vsra_n_u16(vadd_s16(v10, v10), vabd_u16(*v6, *v8), 1uLL);
  *v12.i8 = *v7;
  v12.u64[1] = *a1;
  v13.u64[1] = *v8;
  v14.u64[1] = *(a1 + 4 * a2);
  v15 = vcgt_u16(v11, vdup_n_s16(a3 << (a6 - 8)));
  v16 = vabdq_u16(v12, v13);
  v17 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(v16, vabdq_u16(v13, v14)));
  *v18.i8 = vand_s8(vbic_s8(*&vextq_s8(v17, v17, 8uLL), v15), *v17.i8);
  v17.i16[0] = vaddv_s16(*v18.i8);
  if (v17.i32[0])
  {
    v19 = vcgeq_u16(vdupq_n_s16(1 << v9), vmaxq_u16(v16, vabdq_u16(v12, v14)));
    *v19.i8 = vand_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v20 = vcgtq_u16(v16, vdupq_n_s16(*a5 << v9));
    *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    *v21.i8 = *v7;
    v21.u64[1] = *v8;
    v22 = 1 << (a6 - 1);
    v23 = vdup_n_s16(-v22);
    v24 = vdup_n_s16(v22 - 1);
    v25 = vsubq_s16(vextq_s8(v12, v13, 8uLL), v21);
    v20.i64[1] = v20.i64[0];
    v18.i64[1] = v18.i64[0];
    *v21.i8 = vmla_s16(vand_s8(*v20.i8, vmin_s16(vmax_s16(*&vextq_s8(v25, v25, 8uLL), v23), v24)), *v25.i8, 0x3000300030003);
    *v25.i8 = vmin_s16(vmax_s16(vadd_s16(*v21.i8, 0x4000400040004), v23), v24);
    *v21.i8 = vmin_s16(vmax_s16(vadd_s16(*v21.i8, 0x3000300030003), v23), v24);
    *v25.i8 = vshr_n_s16(*v25.i8, 3uLL);
    *v26.i8 = vrshr_n_s16(*v25.i8, 1uLL);
    v26.u64[1] = vneg_s16(*v26.i8);
    *v21.i8 = vshr_n_s16(*v21.i8, 3uLL);
    v21.u64[1] = vneg_s16(*v25.i8);
    v27 = vaddq_s16(v21, v12);
    v28 = vdupq_n_s16(~(-1 << a6));
    v29 = vminq_u16(vmaxq_s16(v27, 0), v28);
    v30 = vbslq_s8(v20, v13, vminq_u16(vmaxq_s16(vaddq_s16(v26, v13), 0), v28));
    if (v19.i64[0])
    {
      v19.i64[1] = v19.i64[0];
      v31 = vaddq_s16(v13, v12);
      v32 = vaddq_s16(v31, v14);
      v33.u64[1] = *v7;
      *v33.i8 = *a1;
      v34 = vaddq_s16(vaddq_s16(v14, v33), vaddq_s16(v32, v32));
      v13 = vbslq_s8(v18, vbslq_s8(v19, vrshrq_n_u16(v34, 3uLL), v30), v13);
      v35 = vbslq_s8(v18, vbslq_s8(v19, vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v31, v31, 8uLL), vaddq_s16(v14, v14)), v34), 3uLL), v29), v12);
    }

    else
    {
      v13 = vbslq_s8(v18, v30, v13);
      v35 = vbslq_s8(v18, v29, v12);
    }

    *v6 = *v13.i8;
    *v7 = *v35.i8;
    *a1 = vextq_s8(v35, v35, 8uLL).u64[0];
    v13.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
    *v8 = *v13.i8;
  }

  return *v13.i64;
}

double sub_2779D8E58(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = *(a1 - 6);
  v7 = a1 - 6 + 2 * a2;
  v8 = a1 - 6 + 4 * a2;
  v9 = a1 - 6 + 6 * a2;
  v10 = vtrn1q_s16(v6, *v7);
  v23 = vtrn2q_s16(v6, *v7);
  v11 = vtrn1q_s16(*v8, *v9);
  v13 = vtrn2q_s16(*v8, *v9);
  v19 = vtrn1q_s32(v10, v11);
  v12 = vtrn2q_s32(v10, v11).u64[0];
  v20 = vtrn1q_s32(v23, v13);
  v13.i64[0] = vtrn2q_s32(v23, v13).u64[0];
  v14 = vextq_s8(v19, v19, 8uLL).u64[0];
  v15 = a6 - 8;
  v16 = vabd_u16(v12, *v13.i8);
  v17 = vadd_s16(v16, v16);
  *v18.i8 = v12;
  v18.i64[1] = v13.i64[0];
  v19.i64[1] = v20.i64[1];
  v20.u64[1] = v14;
  *v23.i8 = vcgt_u16(vsra_n_u16(v17, vabd_u16(*v20.i8, v14), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  v21 = vabdq_u16(v18, v20);
  v22 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(v21, vabdq_u16(v20, v19)));
  *v23.i8 = vand_s8(vbic_s8(*&vextq_s8(v22, v22, 8uLL), *v23.i8), *v22.i8);
  v22.i16[0] = vaddv_s16(*v23.i8);
  if (v22.i32[0])
  {
    v24 = vcgeq_u16(vdupq_n_s16(1 << v15), vmaxq_u16(v21, vabdq_u16(v18, v19)));
    *v24.i8 = vand_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v25 = vcgtq_u16(v21, vdupq_n_s16(*a5 << v15));
    *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    *v26.i8 = v12;
    v26.u64[1] = v14;
    v27 = 1 << (a6 - 1);
    v28 = vdup_n_s16(-v27);
    v29 = vdup_n_s16(v27 - 1);
    v30 = vsubq_s16(vextq_s8(v18, v20, 8uLL), v26);
    v25.i64[1] = v25.i64[0];
    v23.i64[1] = v23.i64[0];
    *v26.i8 = vmla_s16(vand_s8(*v25.i8, vmin_s16(vmax_s16(*&vextq_s8(v30, v30, 8uLL), v28), v29)), *v30.i8, 0x3000300030003);
    *v30.i8 = vmin_s16(vmax_s16(vadd_s16(*v26.i8, 0x4000400040004), v28), v29);
    *v26.i8 = vmin_s16(vmax_s16(vadd_s16(*v26.i8, 0x3000300030003), v28), v29);
    *v30.i8 = vshr_n_s16(*v30.i8, 3uLL);
    *v31.i8 = vrshr_n_s16(*v30.i8, 1uLL);
    v31.u64[1] = vneg_s16(*v31.i8);
    *v26.i8 = vshr_n_s16(*v26.i8, 3uLL);
    v26.u64[1] = vneg_s16(*v30.i8);
    v32 = vaddq_s16(v26, v18);
    v33 = vdupq_n_s16(~(-1 << a6));
    v34 = vminq_u16(vmaxq_s16(v32, 0), v33);
    v35 = vbslq_s8(v25, v20, vminq_u16(vmaxq_s16(vaddq_s16(v31, v20), 0), v33));
    if (v24.i64[0])
    {
      v24.i64[1] = v24.i64[0];
      v36 = vaddq_s16(v18, v20);
      v37 = vaddq_s16(v36, v19);
      v13.u64[1] = v12;
      v38 = vaddq_s16(vaddq_s16(v13, v19), vaddq_s16(v37, v37));
      v39 = vrshrq_n_u16(v38, 3uLL);
      v40 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v36, v36, 8uLL), vaddq_s16(v19, v19)), v38), 3uLL);
      v19 = vbslq_s8(v23, vbslq_s8(v24, v39, v35), v20);
      v41 = vbslq_s8(v23, vbslq_s8(v24, v40, v34), v18);
    }

    else
    {
      v19 = vbslq_s8(v23, v35, v20);
      v41 = vbslq_s8(v23, v34, v18);
    }

    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    v43 = vextq_s8(v19, v19, 8uLL).u64[0];
    v44 = vtrn1_s16(*v19.i8, *v41.i8);
    v45 = vtrn2_s16(*v19.i8, *v41.i8);
    v46 = vtrn1_s16(v42, v43);
    v47 = vtrn2_s16(v42, v43);
    *(a1 - 4) = vzip1_s32(v44, v46);
    *(v7 + 2) = vzip1_s32(v45, v47);
    *v19.i8 = vzip2_s32(v45, v47);
    *(v8 + 2) = vzip2_s32(v44, v46);
    *(v9 + 2) = v19.i64[0];
  }

  return *v19.i64;
}

double sub_2779D9090(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 6 * a2);
  v7 = (a1 - 4 * a2);
  v8 = (a1 - 2 * a2);
  v9 = (a1 + 2 * a2);
  v10 = (a1 + 4 * a2);
  *v17.i8 = a1[-a2];
  v11 = a6 - 8;
  v12 = vabd_u16(*v8, *a1);
  v13 = vcgt_u16(vsra_n_u16(vadd_s16(v12, v12), vabd_u16(*v7, *v9), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  *v14.i8 = *v8;
  v14.u64[1] = *a1;
  *v15.i8 = *v7;
  v15.u64[1] = *v9;
  v16.i64[0] = *v6;
  v16.i64[1] = *v10;
  v17.u64[1] = *(a1 + 6 * a2);
  v18 = vabdq_u16(v14, v15);
  v20 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v18, vabdq_u16(v15, v16)), vabdq_u16(v16, v17)));
  v19 = vbic_s8(*&vextq_s8(v20, v20, 8uLL), v13);
  *v20.i8 = vand_s8(v19, *v20.i8);
  v19.i16[0] = vaddv_s16(*v20.i8);
  if (v19.i32[0])
  {
    v21 = vcgeq_u16(vdupq_n_s16(1 << v11), vmaxq_u16(vmaxq_u16(v18, vabdq_u16(v14, v16)), vabdq_u16(v14, v17)));
    *v21.i8 = vand_s8(vand_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), *v20.i8);
    v22 = vcgtq_u16(v18, vdupq_n_s16(*a5 << v11));
    *v23.i8 = *v8;
    v23.u64[1] = *v9;
    v24 = 1 << (a6 - 1);
    v25 = vdup_n_s16(-v24);
    v26 = vdup_n_s16(v24 - 1);
    v27 = vsubq_s16(vextq_s8(v14, v15, 8uLL), v23);
    *v28.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v28.i64[1] = v28.i64[0];
    v20.i64[1] = v20.i64[0];
    v29 = vmla_s16(vand_s8(*v28.i8, vmin_s16(vmax_s16(*&vextq_s8(v27, v27, 8uLL), v25), v26)), *v27.i8, 0x3000300030003);
    *v22.i8 = vmin_s16(vmax_s16(vadd_s16(v29, 0x3000300030003), v25), v26);
    *v27.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v29, 0x4000400040004), v25), v26), 3uLL);
    *v30.i8 = vrshr_n_s16(*v27.i8, 1uLL);
    v30.u64[1] = vneg_s16(*v30.i8);
    *v22.i8 = vshr_n_s16(*v22.i8, 3uLL);
    v22.u64[1] = vneg_s16(*v27.i8);
    v31 = vdupq_n_s16(~(-1 << a6));
    v32 = vminq_u16(vmaxq_s16(vaddq_s16(v22, v14), 0), v31);
    v33 = vbslq_s8(v28, v15, vminq_u16(vmaxq_s16(vaddq_s16(v30, v15), 0), v31));
    if (v21.i64[0])
    {
      v21.i64[1] = v21.i64[0];
      v34 = vaddq_s16(v17, v16);
      v35.u64[1] = *v8;
      v36 = vaddq_s16(v17, v15);
      *v35.i8 = *a1;
      v37 = vaddq_s16(vaddq_s16(vaddq_s16(v35, v14), v36), vaddq_s16(v34, v34));
      v38.u64[1] = *v7;
      *v38.i8 = *v9;
      v39 = vaddq_s16(vaddq_s16(v38, v15), vsubq_s16(v37, v34));
      v40.i64[1] = *v6;
      v40.i64[0] = *v10;
      v16 = vbslq_s8(v21, vrshrq_n_u16(v37, 3uLL), v16);
      v41 = vbslq_s8(v20, vbslq_s8(v21, vrshrq_n_u16(v39, 3uLL), v33), v15);
      v42 = vbslq_s8(v20, vbslq_s8(v21, vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(v40, v14), v36), v39), 3uLL), v32), v14);
    }

    else
    {
      v41 = vbslq_s8(v20, v33, v15);
      v42 = vbslq_s8(v20, v32, v14);
    }

    *v6 = v16.i64[0];
    *v7 = *v41.i8;
    *v8 = *v42.i8;
    *a1 = vextq_s8(v42, v42, 8uLL).u64[0];
    *v9 = vextq_s8(v41, v41, 8uLL).u64[0];
    v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
    *v10 = v16.i64[0];
  }

  return *v16.i64;
}

double sub_2779D92F8(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v7 = *(a1 - 8);
  v6 = (a1 - 8);
  v8 = (v6 + 2 * a2);
  v9 = (v6 + 4 * a2);
  v10 = (v6 + 6 * a2);
  v11 = vtrn1q_s16(v7, *v8);
  v12 = vtrn1q_s16(*v9, *v10);
  v13 = vrev64q_s32(vtrn2q_s16(v7, *v8));
  v14 = vrev64q_s32(vtrn2q_s16(*v9, *v10));
  v15 = vzip1q_s32(v11, v12);
  v26 = vzip2q_s32(v11, v12);
  v16 = vzip1q_s32(v13, v14);
  v17 = vzip2q_s32(v13, v14);
  v18 = vzip2q_s64(v15, v17);
  v19.i64[0] = v15.i64[0];
  v19.i64[1] = v17.i64[0];
  v20.i64[0] = v16.i64[0];
  v20.i64[1] = v26.i64[0];
  v21 = vzip2q_s64(v16, v26);
  v22 = a6 - 8;
  v23 = vextq_s8(v18, v18, 8uLL);
  *v26.i8 = vabd_u16(*v16.i8, *v26.i8);
  v24 = vabdq_u16(v20, v18);
  v25 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v24, vabdq_u16(v18, v21)), vabdq_u16(v21, v19)));
  *v26.i8 = vand_s8(vbic_s8(*&vextq_s8(v25, v25, 8uLL), vcgt_u16(vsra_n_u16(vadd_s16(*v26.i8, *v26.i8), vabd_u16(*v18.i8, *v23.i8), 1uLL), vdup_n_s16(a3 << (a6 - 8)))), *v25.i8);
  v25.i16[0] = vaddv_s16(*v26.i8);
  if (v25.i32[0])
  {
    v27 = vcgeq_u16(vdupq_n_s16(1 << v22), vmaxq_u16(vmaxq_u16(v24, vabdq_u16(v20, v21)), vabdq_u16(v20, v19)));
    *v27.i8 = vand_s8(vand_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), *v26.i8);
    v28 = vcgtq_u16(v24, vdupq_n_s16(*a5 << v22));
    *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v16.i64[1] = v23.i64[0];
    v29 = 1 << (a6 - 1);
    v30 = vdup_n_s16(-v29);
    v31 = vdup_n_s16(v29 - 1);
    v32 = vsubq_s16(vextq_s8(v20, v18, 8uLL), v16);
    v28.i64[1] = v28.i64[0];
    v26.i64[1] = v26.i64[0];
    v33 = vmla_s16(vand_s8(*v28.i8, vmin_s16(vmax_s16(*&vextq_s8(v32, v32, 8uLL), v30), v31)), *v32.i8, 0x3000300030003);
    *v32.i8 = vmin_s16(vmax_s16(vadd_s16(v33, 0x4000400040004), v30), v31);
    v34 = vmin_s16(vmax_s16(vadd_s16(v33, 0x3000300030003), v30), v31);
    *v32.i8 = vshr_n_s16(*v32.i8, 3uLL);
    *v35.i8 = vrshr_n_s16(*v32.i8, 1uLL);
    v35.u64[1] = vneg_s16(*v35.i8);
    *v36.i8 = vshr_n_s16(v34, 3uLL);
    v36.u64[1] = vneg_s16(*v32.i8);
    v37 = vaddq_s16(v36, v20);
    v38 = vdupq_n_s16(~(-1 << a6));
    v39 = vminq_u16(vmaxq_s16(v37, 0), v38);
    v40 = vbslq_s8(v28, v18, vminq_u16(vmaxq_s16(vaddq_s16(v35, v18), 0), v38));
    if (v27.i64[0])
    {
      v27.i64[1] = v27.i64[0];
      v41 = vaddq_s16(v21, v19);
      v42 = vaddq_s16(v18, v19);
      v43 = vaddq_s16(vaddq_s16(vaddq_s16(v42, v20), vextq_s8(v20, v20, 8uLL)), vaddq_s16(v41, v41));
      v44 = vaddq_s16(vaddq_s16(v23, v18), vsubq_s16(v43, v41));
      v45 = vrshrq_n_u16(v44, 3uLL);
      v46 = vrshrq_n_u16(vaddq_s16(vaddq_s16(vsubq_s16(v20, v42), vextq_s8(v21, v21, 8uLL)), v44), 3uLL);
      v21 = vbslq_s8(v27, vrshrq_n_u16(v43, 3uLL), v21);
      v47 = vbslq_s8(v26, vbslq_s8(v27, v45, v40), v18);
      v48 = vbslq_s8(v26, vbslq_s8(v27, v46, v39), v20);
    }

    else
    {
      v47 = vbslq_s8(v26, v40, v18);
      v48 = vbslq_s8(v26, v39, v20);
    }

    v49 = vtrn1q_s16(v48, v47);
    v50 = vtrn2q_s16(v48, v47);
    v51 = vtrn1q_s16(v21, v19);
    v52 = vtrn2q_s16(v21, v19);
    v53 = vtrn1q_s32(v49, v51);
    v54 = vtrn2q_s32(v49, v51);
    v55 = vtrn1q_s32(v50, v52);
    v19 = vtrn2q_s32(v50, v52);
    *v50.i8 = vrev64_s16(*v53.i8);
    v50.i64[1] = vextq_s8(v53, v53, 8uLL).u64[0];
    *v53.i8 = vrev64_s16(*v55.i8);
    v53.i64[1] = vextq_s8(v55, v55, 8uLL).u64[0];
    *v6 = v50;
    *v8 = v53;
    *v53.i8 = vrev64_s16(*v54.i8);
    v53.i64[1] = vextq_s8(v54, v54, 8uLL).u64[0];
    *v9 = v53;
    *v53.i8 = vrev64_s16(*v19.i8);
    v19.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
    v53.i64[1] = v19.i64[0];
    *v10 = v53;
  }

  return *v19.i64;
}

double sub_2779D9580(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = &a1[-a2];
  v7 = (a1 - 6 * a2);
  v8 = (a1 - 4 * a2);
  v9 = (a1 - 2 * a2);
  v10 = (a1 + 2 * a2);
  v11 = (a1 + 4 * a2);
  v12 = (a1 + 6 * a2);
  *v13.i8 = *v10;
  v14.i64[0] = *v11;
  v15 = a3;
  v16 = a6 - 8;
  v17 = vabd_u16(*v9, *a1);
  v18 = vcgt_u16(vsra_n_u16(vadd_s16(v17, v17), vabd_u16(*v8, *v10), 1uLL), vdup_n_s16(v15 << (a6 - 8)));
  *v19.i8 = *v9;
  v19.u64[1] = *a1;
  *v20.i8 = *v8;
  v20.u64[1] = *v10;
  v21.i64[0] = *v7;
  v21.i64[1] = *v11;
  *v22.i8 = *v6;
  v22.i64[1] = *v12;
  v23 = vabdq_u16(v19, v20);
  v25 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v23, vabdq_u16(v20, v21)), vabdq_u16(v21, v22)));
  v24 = vbic_s8(*&vextq_s8(v25, v25, 8uLL), v18);
  *v25.i8 = vand_s8(v24, *v25.i8);
  v24.i16[0] = vaddv_s16(*v25.i8);
  if (v24.i32[0])
  {
    v26 = (a1 - 12 * a2);
    v27 = (a1 - 10 * a2);
    v28 = (a1 + 10 * a2);
    v29 = vdupq_n_s16(1 << v16);
    v30 = vcgeq_u16(v29, vmaxq_u16(vmaxq_u16(v23, vabdq_u16(v19, v21)), vabdq_u16(v19, v22)));
    *v31.i8 = vand_s8(vand_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), *v25.i8);
    v32 = vcgtq_u16(v23, vdupq_n_s16(*a5 << v16));
    v33 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v34.i64[0] = *v27;
    v34.u64[1] = a1[a2];
    v35.i64[0] = *v26;
    v35.i64[1] = v28->i64[0];
    *v36.i8 = *v9;
    v36.u64[1] = *v10;
    v37 = 1 << (a6 - 1);
    v38 = vdup_n_s16(-v37);
    v39 = vdup_n_s16(v37 - 1);
    v40 = vsubq_s16(vextq_s8(v19, v20, 8uLL), v36);
    *v41.i8 = v33;
    v41.u64[1] = v33;
    v25.i64[1] = v25.i64[0];
    v42 = vmla_s16(vand_s8(vmin_s16(vmax_s16(*&vextq_s8(v40, v40, 8uLL), v38), v39), v33), *v40.i8, 0x3000300030003);
    v43 = vmin_s16(vmax_s16(vadd_s16(v42, 0x3000300030003), v38), v39);
    *v40.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v42, 0x4000400040004), v38), v39), 3uLL);
    *v44.i8 = vrshr_n_s16(*v40.i8, 1uLL);
    v44.u64[1] = vneg_s16(*v44.i8);
    *v45.i8 = vshr_n_s16(v43, 3uLL);
    v45.u64[1] = vneg_s16(*v40.i8);
    v46 = vdupq_n_s16(~(-1 << a6));
    v47 = vminq_u16(vmaxq_s16(vaddq_s16(v45, v19), 0), v46);
    v48 = vbslq_s8(v41, v20, vminq_u16(vmaxq_s16(vaddq_s16(v44, v20), 0), v46));
    if (v31.i64[0])
    {
      *v49.i8 = *(a1 - 14 * a2);
      v49.u64[1] = *(a1 + 12 * a2);
      v50 = vcgeq_u16(v29, vmaxq_u16(vmaxq_u16(vabdq_u16(v19, v34), vabdq_u16(v19, v35)), vabdq_u16(v19, v49)));
      *v50.i8 = vand_s8(vand_s8(*&vextq_s8(v50, v50, 8uLL), *v50.i8), *v31.i8);
      v31.i64[1] = v31.i64[0];
      v51 = vaddq_s16(v22, v21);
      *v52.i8 = *a1;
      v52.u64[1] = *v9;
      v53 = vaddq_s16(v22, v20);
      v54 = vaddq_s16(v52, v19);
      v55 = vaddq_s16(vaddq_s16(v54, v53), vaddq_s16(v51, v51));
      v56 = vrshrq_n_u16(v55, 3uLL);
      v13.u64[1] = *v8;
      v57 = vaddq_s16(vaddq_s16(v13, v20), vsubq_s16(v55, v51));
      v14.i64[1] = *v7;
      v58 = vrshrq_n_u16(v57, 3uLL);
      v59 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(v14, v19), v53), v57), 3uLL);
      if (v50.i64[0])
      {
        v50.i64[1] = v50.i64[0];
        v60.i64[0] = 0x7000700070007;
        v60.i64[1] = 0x7000700070007;
        v61 = vaddq_s16(v35, v34);
        v62 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v54, v20), vaddq_s16(v21, v22)), v49, v60), vaddq_s16(v61, v61));
        v63 = vaddq_s16(vaddq_s16(v22, v13), vsubq_s16(v62, vaddq_s16(v49, v49)));
        v64 = vaddq_s16(vsubq_s16(vaddq_s16(v14, v21), vaddq_s16(v35, v49)), v63);
        v65.u64[1] = *v6;
        v66 = vrshrq_n_u16(v64, 4uLL);
        v65.i64[0] = *v12;
        v67 = vaddq_s16(vsubq_s16(vaddq_s16(v65, v20), vaddq_s16(v34, v49)), v64);
        v68 = vrshrq_n_u16(v67, 4uLL);
        v69.i64[1] = *v27;
        *v69.i8 = a1[a2];
        v70 = vaddq_s16(vsubq_s16(vaddq_s16(v19, v69), vaddq_s16(v22, v49)), v67);
        v71.u64[1] = *v9;
        *v71.i8 = *a1;
        v72 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(*v28, v71), vaddq_s16(v49, v21)), v70), 4uLL);
        v35 = vbslq_s8(v50, vrshrq_n_u16(v62, 4uLL), v35);
        v34 = vbslq_s8(v50, vrshrq_n_u16(v63, 4uLL), v34);
        v22 = vbslq_s8(v50, v66, v22);
        v21 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vandq_s8(v25, v31), 0xFuLL)), vbslq_s8(v50, v68, v56), v21);
        v73 = vbslq_s8(v25, vbslq_s8(v31, vbslq_s8(v50, vrshrq_n_u16(v70, 4uLL), v58), v48), v20);
        v74 = vbslq_s8(v31, vbslq_s8(v50, v72, v59), v47);
      }

      else
      {
        v21 = vbslq_s8(v31, v56, v21);
        v73 = vbslq_s8(v25, vbslq_s8(v31, v58, v48), v20);
        v74 = vbslq_s8(v31, v59, v47);
      }

      v75 = vbslq_s8(v25, v74, v19);
    }

    else
    {
      v73 = vbslq_s8(v25, v48, v20);
      v75 = vbslq_s8(v25, v47, v19);
    }

    *v26 = v35.i64[0];
    *v27 = v34.i64[0];
    *v6 = *v22.i8;
    *v7 = v21.i64[0];
    *v8 = *v73.i8;
    *v9 = *v75.i8;
    *a1 = vextq_s8(v75, v75, 8uLL).u64[0];
    *v10 = vextq_s8(v73, v73, 8uLL).u64[0];
    *v11 = vextq_s8(v21, v21, 8uLL).u64[0];
    *v12 = vextq_s8(v22, v22, 8uLL).u64[0];
    a1[a2] = vextq_s8(v34, v34, 8uLL).u64[0];
    v21.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
    v28->i64[0] = v21.i64[0];
  }

  return *v21.i64;
}

int32x4_t sub_2779D9988(int16x8_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = a1[-1];
  v7 = (a1 + 2 * a2 - 16);
  v8 = (a1 + 4 * a2 - 16);
  v9 = (a1 + 6 * a2 - 16);
  v10 = *(a1 + 2 * a2);
  v11 = vtrn1q_s16(v6, *v7);
  v12 = vtrn2q_s16(v6, *v7);
  v13 = *(a1 + 4 * a2);
  v14 = *(a1 + 6 * a2);
  v15 = vtrn1q_s16(*v8, *v9);
  v16 = vtrn2q_s16(*v8, *v9);
  v17 = vtrn1q_s32(v11, v15);
  result = vtrn2q_s32(v11, v15);
  v19 = vtrn1q_s32(v12, v16);
  v20 = vtrn2q_s32(v12, v16);
  v35 = vtrn1q_s16(*a1, v10);
  v21 = vtrn2q_s16(*a1, v10);
  v22 = vtrn1q_s16(v13, v14);
  v23 = vtrn2q_s16(v13, v14);
  v24 = vtrn1q_s32(v35, v22);
  v25 = vtrn2q_s32(v35, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a6 - 8;
  *v22.i8 = vabd_u16(*&vextq_s8(v20, v20, 8uLL), *v24.i8);
  *v35.i8 = vcgt_u16(vsra_n_u16(vadd_s16(*v22.i8, *v22.i8), vabd_u16(*&vextq_s8(result, result, 8uLL), *v26.i8), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  v29 = vextq_s8(v20, v24, 8uLL);
  v30 = vextq_s8(result, v26, 8uLL);
  v31 = vextq_s8(v19, v25, 8uLL);
  v32 = vextq_s8(v17, v27, 8uLL);
  v33 = vabdq_u16(v29, v30);
  v34 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v33, vabdq_u16(v30, v31)), vabdq_u16(v31, v32)));
  *v35.i8 = vand_s8(vbic_s8(*&vextq_s8(v34, v34, 8uLL), *v35.i8), *v34.i8);
  v34.i16[0] = vaddv_s16(*v35.i8);
  if (v34.i32[0])
  {
    v36 = vdupq_n_s16(1 << v28);
    v37 = vcgeq_u16(v36, vmaxq_u16(vmaxq_u16(v33, vabdq_u16(v29, v31)), vabdq_u16(v29, v32)));
    *v37.i8 = vand_s8(vand_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), *v35.i8);
    v39 = vcgtq_u16(v33, vdupq_n_s16(*a5 << v28));
    *v38.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
    v39.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
    v40.i64[0] = v20.i64[0];
    v40.i64[1] = v39.i64[0];
    result.i64[1] = v26.i64[1];
    v19.i64[1] = v25.i64[1];
    v17.i64[1] = v27.i64[1];
    v41.i64[0] = v29.i64[0];
    v41.i64[1] = v30.i64[1];
    v42 = 1 << (a6 - 1);
    v43 = vdup_n_s16(-v42);
    v44 = vdup_n_s16(v42 - 1);
    v45 = vsubq_s16(vextq_s8(v29, v30, 8uLL), v41);
    v38.i64[1] = v38.i64[0];
    v35.i64[1] = v35.i64[0];
    v46 = vmla_s16(vand_s8(*v38.i8, vmin_s16(vmax_s16(*&vextq_s8(v45, v45, 8uLL), v43), v44)), *v45.i8, 0x3000300030003);
    *v45.i8 = vmin_s16(vmax_s16(vadd_s16(v46, 0x4000400040004), v43), v44);
    v47 = vmin_s16(vmax_s16(vadd_s16(v46, 0x3000300030003), v43), v44);
    *v45.i8 = vshr_n_s16(*v45.i8, 3uLL);
    *v48.i8 = vrshr_n_s16(*v45.i8, 1uLL);
    v48.u64[1] = vneg_s16(*v48.i8);
    *v49.i8 = vshr_n_s16(v47, 3uLL);
    v49.u64[1] = vneg_s16(*v45.i8);
    v50 = vaddq_s16(v49, v29);
    v51 = vdupq_n_s16(~(-1 << a6));
    v52 = vminq_u16(vmaxq_s16(v50, 0), v51);
    v53 = vbslq_s8(v38, v30, vminq_u16(vmaxq_s16(vaddq_s16(v48, v30), 0), v51));
    if (v37.i64[0])
    {
      v54 = vcgeq_u16(v36, vmaxq_u16(vmaxq_u16(vabdq_u16(v29, v40), vabdq_u16(v29, result)), vabdq_u16(v29, v19)));
      *v54.i8 = vand_s8(*&vextq_s8(v54, v54, 8uLL), vand_s8(*v54.i8, *v37.i8));
      v37.i64[1] = v37.i64[0];
      v55 = vaddq_s16(v31, v32);
      v56 = vextq_s8(v29, v29, 8uLL);
      v57 = vaddq_s16(v30, v32);
      v58 = vaddq_s16(vaddq_s16(vaddq_s16(v56, v29), v57), vaddq_s16(v55, v55));
      v59 = vrshrq_n_u16(v58, 3uLL);
      v60 = vextq_s8(v30, v30, 8uLL);
      v61 = vaddq_s16(vaddq_s16(v60, v30), vsubq_s16(v58, v55));
      v62 = vrshrq_n_u16(v61, 3uLL);
      v63 = vextq_s8(v31, v31, 8uLL);
      v64 = vrshrq_n_u16(vaddq_s16(vaddq_s16(vsubq_s16(v29, v57), v63), v61), 3uLL);
      if (v54.i64[0])
      {
        v54.i64[1] = v54.i64[0];
        v65.i64[0] = 0x7000700070007;
        v65.i64[1] = 0x7000700070007;
        v66 = vaddq_s16(v40, result);
        v67 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v55, v30), vaddq_s16(v29, v56)), v19, v65), vaddq_s16(v66, v66));
        v68 = vrshrq_n_u16(v67, 4uLL);
        v69 = vaddq_s16(vaddq_s16(v60, v32), vsubq_s16(v67, vaddq_s16(v19, v19)));
        v70 = vrshrq_n_u16(v69, 4uLL);
        v71 = vaddq_s16(vaddq_s16(vsubq_s16(v31, vaddq_s16(v19, result)), v63), v69);
        v72 = vrshrq_n_u16(v71, 4uLL);
        v73 = vaddq_s16(vaddq_s16(vsubq_s16(v30, vaddq_s16(v40, v19)), vextq_s8(v32, v32, 8uLL)), v71);
        v74 = vrshrq_n_u16(v73, 4uLL);
        v39.i64[1] = v20.i64[0];
        v75 = vaddq_s16(vaddq_s16(vsubq_s16(v29, vaddq_s16(v32, v19)), v39), v73);
        v76 = vaddq_s16(result, v29);
        v77 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v76, v76, 8uLL), vaddq_s16(v19, v31)), v75), 4uLL);
        result = vbslq_s8(v54, v68, result);
        v40 = vbslq_s8(v54, v70, v40);
        v32 = vbslq_s8(v54, v72, v32);
        v31 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vandq_s8(v35, v37), 0xFuLL)), vbslq_s8(v54, v74, v59), v31);
        v78 = vbslq_s8(v35, vbslq_s8(v37, vbslq_s8(v54, vrshrq_n_u16(v75, 4uLL), v62), v53), v30);
        v79 = vbslq_s8(v37, vbslq_s8(v54, v77, v64), v52);
      }

      else
      {
        v31 = vbslq_s8(v37, v59, v31);
        v78 = vbslq_s8(v35, vbslq_s8(v37, v62, v53), v30);
        v79 = vbslq_s8(v37, v64, v52);
      }

      v80 = vbslq_s8(v35, v79, v29);
    }

    else
    {
      v78 = vbslq_s8(v35, v53, v30);
      v80 = vbslq_s8(v35, v52, v29);
    }

    v81.i64[0] = v17.i64[0];
    v81.i64[1] = v32.i64[0];
    v82 = vzip2q_s64(v32, v17);
    v83.i64[0] = v19.i64[0];
    v83.i64[1] = v31.i64[0];
    v84.i64[0] = result.i64[0];
    v84.i64[1] = v78.i64[0];
    v85 = vzip2q_s64(v31, v19);
    v86 = vzip2q_s64(v78, result);
    v87.i64[0] = v40.i64[0];
    v87.i64[1] = v80.i64[0];
    v88 = vzip2q_s64(v80, v40);
    v89 = vtrn1q_s16(v81, v83);
    v90 = vtrn2q_s16(v81, v83);
    v91 = vtrn1q_s16(v84, v87);
    v92 = vtrn2q_s16(v84, v87);
    v93 = vtrn1q_s32(v89, v91);
    v94 = vtrn2q_s32(v89, v91);
    v95 = vtrn1q_s32(v90, v92);
    v96 = vtrn2q_s32(v90, v92);
    v97 = vtrn1q_s16(v88, v86);
    v98 = vtrn2q_s16(v88, v86);
    v99 = vtrn1q_s16(v85, v82);
    a1[-1] = v93;
    *a1 = vtrn1q_s32(v97, v99);
    v100 = vtrn2q_s16(v85, v82);
    *v7 = v95;
    *(a1 + 2 * a2) = vtrn1q_s32(v98, v100);
    *v8 = v94;
    *(a1 + 4 * a2) = vtrn2q_s32(v97, v99);
    result = vtrn2q_s32(v98, v100);
    *v9 = v96;
    *(a1 + 6 * a2) = result;
  }

  return result;
}

uint64_t sub_2779D9D84()
{
  v0 = getenv("AOM_SIMD_CAPS");
  if (v0 && *v0)
  {
    v1 = strtol(v0, 0, 0);
  }

  else
  {
    v14 = 8;
    v15 = 0;
    v2 = sysctlbyname("hw.optional.armv8_crc32", &v15, &v14, 0, 0);
    if (v15)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    v14 = 8;
    v15 = 0;
    v5 = sysctlbyname("hw.optional.arm.FEAT_DotProd", &v15, &v14, 0, 0);
    if (v15)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 |= 4u;
    }

    v14 = 8;
    v15 = 0;
    v7 = sysctlbyname("hw.optional.arm.FEAT_I8MM", &v15, &v14, 0, 0);
    if (v15)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = v4 | 8;
    }

    else
    {
      v9 = v4;
    }

    v10 = getenv("AOM_SIMD_CAPS_MASK");
    if (v10 && *v10)
    {
      v11 = strtol(v10, 0, 0);
    }

    else
    {
      v11 = -1;
    }

    v1 = v11 & v9;
  }

  v12 = v1 & 0xFFFFFFF3;
  if ((v1 & 4) != 0)
  {
    v12 = v1;
  }

  if ((v12 & 4) == 0)
  {
    v12 &= 0xFFFFFFEB;
  }

  if ((v12 & 8) == 0)
  {
    v12 &= 0xFFFFFFE7;
  }

  if ((v12 & 0x10) != 0)
  {
    return v12;
  }

  else
  {
    return v12 & 0xFFFFFFCF;
  }
}

uint64_t sub_2779D9ED4(uint64_t a1, int a2, int a3)
{
  memset(v4, 0, sizeof(v4));
  sub_2779D9F18(a1, a2, a3, v4);
  return sub_2779DA010(v4, 0, 1, 0);
}

uint64_t sub_2779D9F18(uint64_t result, int a2, int a3, uint64_t a4)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v4 = **(result + 8280);
  v5 = result + 2608 * a2;
  v6 = 10574;
  if (!a2)
  {
    v6 = 9944;
  }

  v7 = 31160;
  if (!a2)
  {
    v7 = 30040;
  }

  v8 = *(result + 11064) + v6;
  *(a4 + 24) = *(v5 + 592);
  *(a4 + 32) = v8;
  *(a4 + 40) = result + v7;
  *(a4 + 8) = *(v4 + a2 + 142);
  v9 = byte_277C3CAE8[a3];
  v10 = byte_277C3CAFE[a3];
  v11 = ((*(result + 8352) >> 31) & (*(result + 8352) >> 3)) + v9;
  v12 = ((*(result + 8344) >> 31) & (*(result + 8344) >> 3)) + v10;
  v13 = v10 >> *(v5 + 436);
  v14 = a2 > 0;
  v15 = v9 >> *(v5 + 440) < 4;
  if (v14 && v13 < 4)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a4 + 12) = v16 + v13;
  if (v14 && v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  *a4 = v17 + (v11 >> *(v5 + 440));
  *(a4 + 4) = (v12 >> *(v5 + 436)) + v16;
  return result;
}

uint64_t sub_2779DA010(int *a1, _BYTE **a2, int a3, int a4)
{
  v4 = a1[1] - 1;
  v48 = *a1;
  v47 = (v4 + *a1);
  if (v47 < 2)
  {
    v5 = 0;
    goto LABEL_70;
  }

  v5 = 0;
  v6 = *(a1 + 3);
  v8 = a1[2];
  v7 = a1[3];
  v9 = v8 - 2;
  LODWORD(v10) = v8 - 1;
  if (v8 - 1 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v10;
  }

  v45 = v4;
  v46 = a1[1] - 1;
  v11 = *(a1 + 4) + 90 * v9;
  v12 = *(a1 + 5) + 160 * v9;
  for (i = 1; i != v47; ++i)
  {
    if (i >= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = i;
    }

    v15 = i - v48;
    if (i - v48 < 0)
    {
      v15 = -1;
    }

    if (v14 <= v15)
    {
      goto LABEL_67;
    }

    if (i >= v45)
    {
      v16 = v45;
    }

    else
    {
      v16 = i;
    }

    do
    {
      v17 = i - v16;
      if ((v16 != 0) != i > v16)
      {
        v18 = v17 < 1;
        if (v17 >= 1)
        {
          v19 = (i - v14) * v7;
        }

        else
        {
          v19 = v7 * v17;
        }

        if (v18)
        {
          v20 = v16 + (i - v14) * v7 - 1;
        }

        else
        {
          v20 = v16 + (i - v14 - 1) * v7;
        }

        v21 = *(v6 + v20);
        LODWORD(v22) = *(v6 + v16 + v19);
        v23 = v21 == v22;
        if (v21 <= v22)
        {
          v24 = 0;
          v29 = 0;
          if (!v23)
          {
LABEL_30:
            if (!a3)
            {
              goto LABEL_58;
            }

LABEL_31:
            v5 += *(v12 + 32 * v29 + 4 * v22);
            goto LABEL_66;
          }
        }

        else
        {
          v24 = v22 + 1;
        }

        v29 = 0;
        LODWORD(v22) = v24;
        goto LABEL_30;
      }

      v22 = v6 + v17 * v7;
      v51 = *(v22 + v16 - 1);
      v25 = v51;
      v26 = v6 + (v17 - 1) * v7;
      v52 = *(v26 + v16);
      v27 = *(v26 + v16 - 1);
      v53 = v27;
      v50 = 1;
      v49 = 514;
      if (v51 == v52)
      {
        LOBYTE(v49) = 4;
        v52 = -1;
        if (v51 == v27)
        {
          LOBYTE(v49) = 5;
          v28 = 1;
        }

        else
        {
          HIBYTE(v49) = 1;
          v52 = v27;
          v28 = 2;
        }

        goto LABEL_48;
      }

      if (v51 == v27)
      {
        LOBYTE(v49) = 3;
        v28 = 2;
        goto LABEL_39;
      }

      if (v52 != v27)
      {
        v28 = 3;
LABEL_39:
        if (v52 == 255)
        {
          goto LABEL_40;
        }

        if (v51 <= v52 || v51 == v27)
        {
          goto LABEL_48;
        }

        v31 = 2;
LABEL_47:
        LOBYTE(v49) = v31;
        v51 = v52;
        HIBYTE(v49) = 2;
        v52 = v25;
        goto LABEL_48;
      }

      if (v52 != 255)
      {
        v31 = 3;
        v28 = 2;
        goto LABEL_47;
      }

      v28 = 2;
LABEL_40:
      HIBYTE(v49) = 1;
      v52 = v27;
LABEL_48:
      v32 = 0;
      v33 = *(v22 + v16);
      LODWORD(v22) = v33;
      while (1)
      {
        v34 = *(&v51 + v32);
        if (v34 <= v33)
        {
          break;
        }

        LODWORD(v22) = v22 + 1;
LABEL_52:
        if (v28 == ++v32)
        {
          goto LABEL_55;
        }
      }

      if (v34 != v33)
      {
        goto LABEL_52;
      }

      LODWORD(v22) = v32;
LABEL_55:
      v35 = 0;
      v36 = 0;
      do
      {
        v36 += byte_277BEB853[v35] * *(&v49 + v35);
        ++v35;
      }

      while (v28 != v35);
      v29 = 9 - v36;
      if (a3)
      {
        goto LABEL_31;
      }

LABEL_58:
      **a2 = **a2 & 0xF8 | v22 & 7;
      **a2 = **a2 & 0xF | (16 * v29);
      ++*a2;
      if (a4)
      {
        v37 = 0;
        v38 = v11 + 18 * v29;
        v39 = *(v38 + 2 * v8);
        v40 = (v8 > 3) + (v39 >> 4) + 4;
        v22 = v22;
        do
        {
          v41 = *(v38 + 2 * v37);
          v42 = v41 + ((0x8000 - v41) >> v40);
          if (v37 >= v22)
          {
            LOWORD(v42) = v41 - (v41 >> v40);
          }

          *(v38 + 2 * v37++) = v42;
        }

        while (v10 != v37);
        v43 = *(v38 + 2 * v8);
        if (v39 < 0x20)
        {
          ++v43;
        }

        *(v38 + 2 * v8) = v43;
      }

LABEL_66:
      --v16;
      --v14;
    }

    while (v16 > v15);
LABEL_67:
    v4 = v46;
  }

LABEL_70:
  if (a3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_2779DA394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  v13 = result + 432;
  v14 = *(result + 8352);
  v15 = byte_277C3CAE8[a3];
  if (v14 < 0)
  {
    v15 += v14 >> (*(v13 + 2608 * a7 + 8) + 3);
  }

  v16 = v15 >> 2;
  v17 = byte_277C3CAFE[a3];
  v18 = *(result + 8344);
  if (v18 < 0)
  {
    v17 += v18 >> (*(v13 + 2608 * a7 + 4) + 3);
  }

  v19 = v17 >> 2;
  v20 = __OFSUB__(v16, a4);
  v21 = v16 - a4;
  if ((v21 < 0) ^ v20 | (v21 == 0))
  {
    v22 = 1;
  }

  else
  {
    v22 = v19 <= a5;
  }

  if (!v22)
  {
    v23 = **(result + 8280);
    if (a7 || v23[(a5 >> byte_277BFC806[a3]) + 146 + (a4 >> byte_277BFC81C[a3] << byte_277BFC832[a3])] == a2)
    {
      v24 = byte_277C3BCDE[4 * *v23 + 2 * *(v13 + 2608 * a7 + 4) + *(v13 + 2608 * a7 + 8)];
      if (*(a8 + 20))
      {

        sub_277A38314(a7, a6, a4, a5, v24, a2, a8, a8);
      }

      else
      {

        sub_277A39A78(a7, a6, a4, a5, v24, a2, a8);
      }
    }

    else
    {
      v25 = *&byte_277BFDB54[4 * a2];
      if (v25 >= v21)
      {
        v25 = v21;
      }

      v26 = v19 - a5;
      if (*&byte_277BFDBA0[4 * a2] >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = *&byte_277BFDBA0[4 * a2];
      }

      v33 = v25;
      if (v25 >= 1)
      {
        v28 = 0;
        v29 = byte_277C3295E[a2];
        v30 = *&byte_277BFDBA0[4 * v29];
        v32 = *&byte_277BFDB54[4 * v29];
        do
        {
          if (v27 >= 1)
          {
            for (i = 0; i < v27; i += v30)
            {
              v34 = a6;
              sub_2779DA394(result, v29, a3, (v28 + v10), (a5 + i), a6, 0, a8);
              a6 = (v34 + v32 * v30);
            }
          }

          v28 += v32;
        }

        while (v28 < v33);
      }
    }
  }
}

void sub_2779DA624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, signed int a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  v128 = v19;
  v129 = v18;
  v21 = v20;
  v126 = v22;
  v127 = v23;
  v24 = v15;
  v150 = *MEMORY[0x277D85DE8];
  v125 = byte_277C3CAE8[v25];
  v124 = byte_277C3CAFE[v25];
  if (*(v15 + 24) >= *(v15 + 16))
  {
    v26 = *(v15 + 16);
  }

  else
  {
    v26 = *(v15 + 24);
  }

  v27 = a10 / 20.0;
  v28 = v27 * v27;
  if (v27 * v27 <= 1.0)
  {
    v29 = v27 * v27;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = vcvtd_n_f64_s32(a10, 6uLL);
  v31 = v30 * v30;
  v32 = vcvtd_n_f64_s32(a11, 2uLL);
  v33 = v32 * v32;
  memset(v143, 0, sizeof(v143));
  bzero(v141, 0x900uLL);
  bzero(v140, 0x1000uLL);
  v34 = 0;
  v35 = fmax(v26 * 0.1, 1.0);
  v36 = (v17 + 2);
  do
  {
    *(v143 + v34) = fmax(sqrt(*(v36 - 1) * *(v36 - 1) + *v36 * *v36) / v35, 1.0);
    v34 += 8;
    v36 += 2;
  }

  while (v34 != 32);
  v37 = 0.00001;
  if (v28 >= 0.00001)
  {
    v38 = v29;
  }

  else
  {
    v38 = 0.00001;
  }

  v39 = 1.0;
  if (v33 <= 1.0)
  {
    v40 = v33;
  }

  else
  {
    v40 = 1.0;
  }

  if (a10 > 127)
  {
    v38 = v31 * 0.5;
  }

  if (v33 >= 0.00001)
  {
    v37 = v40;
  }

  v122 = v37;
  v123 = v38;
  if (v21 >= 1)
  {
    v41 = 0;
    v131 = 0;
    v120 = v24 + 32;
    v121 = v129 + 16;
    v118 = v21;
    v119 = v24 + 40;
    do
    {
      v42 = *(v121 + 2608 * v41 + 4);
      v43 = *(v121 + 2608 * v41 + 8);
      v44 = v125 >> v43;
      v45 = *(v129 + 24);
      v46 = v42 - *(v129 + 20);
      v47 = *(v120 + 4 * (v41 != 0));
      v48 = *(v119 + 8 * v41);
      v49 = v43 - v45;
      v50 = v41;
      v51 = v124 >> v42;
      if (v41)
      {
        v52 = v39 / ((1 << (v43 - v45 + v46)) + 25);
      }

      else
      {
        v52 = 0.04;
      }

      v53 = log(*(v128 + 8 * v41) * 2.0 + 5.0);
      v130 = v50;
      if (v50 == 1 && v44)
      {
        v54 = 0;
        v55 = 1 << v49;
        LODWORD(v56) = 1 << v46;
        if (1 << v46 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v56;
        }

        if (v55 <= 1)
        {
          v55 = 1;
        }

        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB73B0;
        v59 = xmmword_277BB73C0;
        do
        {
          if (v51)
          {
            for (i = 0; i != v51; ++i)
            {
              if (v49 != 31)
              {
                v62 = 0;
                v63 = i + 32 * v54;
                v64 = ((36 * (v54 << v49)) | 2) + (i << v46);
                do
                {
                  if (v46 != 31)
                  {
                    v65 = v140[v63];
                    v66 = v64;
                    v67 = v56;
                    do
                    {
                      v65 += v141[v66++];
                      --v67;
                    }

                    while (v67);
                    v140[v63] = v65;
                  }

                  ++v62;
                  v64 += 36;
                }

                while (v62 != v55);
              }
            }
          }

          ++v54;
        }

        while (v54 != v44);
      }

      else
      {
        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB73B0;
        v59 = xmmword_277BB73C0;
      }

      v68 = 0;
      v69 = 0;
      v70 = a13 + v131;
      v71 = 1.0 / (v122 * (v123 * (v53 + 0.5)));
      if (v44 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v44;
      }

      v73 = a13 + v131;
      v74 = &v142;
      v75 = a9;
      do
      {
        v76 = 0;
        v77 = v74;
        do
        {
          v78 = vabdq_u8(*(v48 + v51 * v127 + v44 * v126 * v47 + v68 + v76), *(v73 + v76));
          v77[-1] = vmull_u8(*v78.i8, *v78.i8);
          *v77 = vmull_high_u8(v78, v78);
          v76 += 16;
          v77 += 2;
        }

        while (v76 < v51);
        ++v69;
        v74 = (v74 + 72);
        v73 += v51;
        v68 += v47;
      }

      while (v69 != v72);
      v139[0] = unk_277BEB860;
      v139[1] = unk_277BEB870;
      v139[2] = unk_277BEB880;
      v139[3] = unk_277BEB890;
      if (v51)
      {
        v79 = 0;
        v80 = (v51 - 4);
        do
        {
          v81 = &v141[v79];
          for (j = 32; j != 80; j += 16)
          {
            v83 = *v81;
            if (v79)
            {
              if (v79 >= v80)
              {
                v83 = vqtbl1q_s8(v83, v60);
              }
            }

            else
            {
              v83 = vqtbl1q_s8(v83, v59);
            }

            *(&v144 + j) = v83;
            v81 = (v81 + 72);
          }

          v144 = v146;
          v145 = v146;
          if (v44)
          {
            for (k = 0; k != v44; ++k)
            {
              for (m = 0; m != 4; ++m)
              {
                v86 = 0;
                v87 = 0uLL;
                do
                {
                  v87 = vpadalq_u16(v87, vandq_s8(*(&v144 + v86), v139[m]));
                  v86 += 16;
                }

                while (v86 != 80);
                *&v149[128 * k + 4 * (m | v79)] = vaddvq_s32(v87);
              }

              v144 = v145;
              v145 = v146;
              v146 = v147;
              v147 = v148;
              if (k <= (v44 - 4))
              {
                v88 = *v81;
                if (v79)
                {
                  if (v79 >= v80)
                  {
                    v88 = vqtbl1q_s8(v88, v60);
                  }
                }

                else
                {
                  v88 = vqtbl1q_s8(v88, v59);
                }

                v148 = v88;
                v81 = (v81 + 72);
              }

              else
              {
                v148 = v147;
              }
            }
          }

          v79 += 4;
        }

        while (v79 < v51);
      }

      v89 = a14 + 4 * v131;
      v90 = a15 + 2 * v131;
      if (a12)
      {
        if (v44)
        {
          v91 = 0;
          v92 = 0;
          v93 = v44 >> 1;
          v94 = v140;
          v95 = v149;
          do
          {
            if (v51)
            {
              for (n = 0; n != v51; ++n)
              {
                if (n < v51 >> 1)
                {
                  v97 = 2 * (v91 >= v93);
                }

                else
                {
                  v97 = 2 * (v91 >= v93) + 1;
                }

                v98 = v71 * (*(v143 + v97) * (*(a9 + 4 * v97) * 0.00833333333 + v52 * (v94[n] + *&v95[4 * n]) * 0.0416666667));
                if (v98 >= 7.0)
                {
                  v98 = 7.0;
                }

                v99 = v98;
                v100 = v92 + n;
                v101 = ((COERCE_FLOAT((v99 * -12102000.0) + 1065292415) * 1000.0) + v58);
                v102 = *(v90 + 2 * (v92 + n));
                *(v89 + 4 * v100) += v101 * *(v70 + n);
                *(v90 + 2 * v100) = v102 + v101;
              }

              v92 += n;
            }

            ++v91;
            v94 += 32;
            v95 += 128;
            v70 += v51;
          }

          while (v91 != v44);
        }
      }

      else if (v44)
      {
        v103 = 0;
        v104 = 0;
        v132 = v44 >> 1;
        v133 = v44;
        v105 = v51 >> 1;
        v106 = v140;
        v107 = v149;
        v135 = v51;
        do
        {
          if (v51)
          {
            v108 = 0;
            v134 = v103;
            v136 = 2 * (v103 >= v132);
            v137 = v107;
            do
            {
              v138 = *(v70 + v108);
              v109 = v136;
              if (v108 >= v105)
              {
                v109 = v136 + 1;
              }

              v110 = *(v75 + 4 * v109);
              v111 = v104 + v108;
              v112 = v71 * (*(v143 + v109) * (v110 * 0.00833333333 + v52 * (v106[v108] + *&v107[4 * v108]) * 0.0416666667));
              v113 = -v112;
              if (v112 >= 7.0)
              {
                v113 = v57;
              }

              v114 = v70;
              v115 = v104;
              v116 = exp(v113);
              v107 = v137;
              v104 = v115;
              v70 = v114;
              v57 = -7.0;
              v117 = v116 * 1000.0;
              *(v89 + 4 * v111) += v117 * v138;
              *(v90 + 2 * v111) += v117;
              v51 = v135;
              v75 = a9;
              ++v108;
            }

            while (v135 != v108);
            v104 = (v115 + v108);
            v44 = v133;
            v103 = v134;
          }

          ++v103;
          v106 += 32;
          v107 += 128;
          v70 += v51;
        }

        while (v103 != v44);
      }

      v131 += v51 * v44;
      v41 = v130 + 1;
      v39 = 1.0;
    }

    while (v130 + 1 != v118);
  }
}

void sub_2779DAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = 0;
  v840 = *MEMORY[0x277D85DE8];
  v12 = vdupq_n_s16(0x16A1u);
  v13 = vdupq_n_s16(0xE95Fu);
  v14 = vdupq_n_s16(0x1D90u);
  v15 = vdupq_n_s16(0xC3Fu);
  v16 = vdupq_n_s16(0xE270u);
  v632 = vdupq_n_s16(0xF3C1u);
  v630 = vdupq_n_s16(0x1F63u);
  v17 = vdupq_n_s16(0x63Eu);
  v628 = vdupq_n_s16(0xE09Du);
  v626 = vdupq_n_s16(0x11C7u);
  v18 = vdupq_n_s16(0x1A9Bu);
  v624 = vdupq_n_s16(0xEE39u);
  v19 = vdupq_n_s16(0x1FD9u);
  v20 = vdupq_n_s16(0x323u);
  v21 = vdupq_n_s16(0xE027u);
  v22 = vdupq_n_s16(0x144Du);
  do
  {
    v23 = 0;
    v24 = v8;
    do
    {
      v635[v23++] = *v24;
      v24 = (v24 + 2 * v10);
    }

    while (v23 != 16);
    for (i = 0; i != 16; ++i)
    {
      v635[i] = vshlq_n_s16(v635[i], 2uLL);
    }

    v26 = 0;
    for (j = 15; j != 7; --j)
    {
      *&v815[v26 * 16] = vqaddq_s16(v635[v26], v635[j]);
      ++v26;
    }

    v28 = 8;
    do
    {
      *&v815[v28 * 16] = vqsubq_s16(v635[j--], v635[v28]);
      ++v28;
    }

    while (j != -1);
    v29 = 0;
    for (k = 112; k != 48; k -= 16)
    {
      *(&v775 + v29) = vqaddq_s16(*&v815[v29], *&v815[k]);
      v29 += 16;
    }

    v31 = 64;
    do
    {
      *(&v775 + v31) = vqsubq_s16(*&v815[k], *&v815[v31]);
      k -= 16;
      v31 += 16;
    }

    while (k != -16);
    v32 = 0;
    v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v818.i8, *v12.i8), *v821.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v818, v12), v821, v12), 0xDuLL);
    v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v818.i8, *v13.i8), *v821.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v818, v13), v821, v12), 0xDuLL);
    v35 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v819.i8, *v12.i8), *v820.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v819, v12), v820, v12), 0xDuLL);
    v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v819.i8, *v13.i8), *v820.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v819, v13), v820, v12), 0xDuLL);
    v37 = vqaddq_s16(v775, v778);
    v38 = vqaddq_s16(v776, v777);
    v39 = vqsubq_s16(v776, v777);
    v40 = vqsubq_s16(v775, v778);
    v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v780.i8, *v12.i8), *v781.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v780, v12), v781, v12), 0xDuLL);
    v42 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v780.i8, *v13.i8), *v781.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v780, v13), v781, v12), 0xDuLL);
    v43 = vqaddq_s16(v816, v36);
    v44 = vqaddq_s16(v817, v34);
    v45 = vqsubq_s16(v817, v34);
    v46 = vqsubq_s16(v816, v36);
    v47 = vqsubq_s16(v823, v35);
    v48 = vqsubq_s16(v822, v33);
    v49 = vqaddq_s16(v822, v33);
    v50 = vqaddq_s16(v823, v35);
    v51 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v38.i8, *v12.i8), *v37.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v38, v12), v37, v12), 0xDuLL);
    v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v38.i8, *v13.i8), *v37.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v38, v13), v37, v12), 0xDuLL);
    v53 = vmlal_s16(vmull_s16(*v39.i8, *v15.i8), *v40.i8, *v14.i8);
    v54 = vmlal_high_s16(vmull_high_s16(v39, v15), v40, v14);
    v55 = vmlal_s16(vmull_s16(*v39.i8, *v16.i8), *v40.i8, *v15.i8);
    v56 = vmlal_high_s16(vmull_high_s16(v39, v16), v40, v15);
    v57 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xDuLL), v54, 0xDuLL);
    v58 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xDuLL), v56, 0xDuLL);
    v59 = vqaddq_s16(v779, v42);
    v60 = vqsubq_s16(v779, v42);
    v61 = vqsubq_s16(v782, v41);
    v62 = vqaddq_s16(v782, v41);
    v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v44.i8, *v15.i8), *v49.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v44, v15), v49, v14), 0xDuLL);
    v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v44.i8, *v16.i8), *v49.i8, *v15.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v44, v16), v49, v15), 0xDuLL);
    v65 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v45.i8, *v16.i8), *v48.i8, *v15.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v45, v16), v48, v15), 0xDuLL);
    v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v45.i8, *v632.i8), *v48.i8, *v16.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v45, v632), v48, v16), 0xDuLL);
    v67 = vmlal_s16(vmull_s16(*v60.i8, *v624.i8), *v61.i8, *v18.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v60, v624), v61, v18);
    v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v60.i8, *v18.i8), *v61.i8, *v626.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v60, v18), v61, v626), 0xDuLL);
    v70 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v71 = vqaddq_s16(v43, v64);
    v72 = vqsubq_s16(v43, v64);
    v73 = vqsubq_s16(v46, v66);
    v74 = vqaddq_s16(v46, v66);
    v75 = vqaddq_s16(v47, v65);
    v76 = vqsubq_s16(v47, v65);
    v77 = vqsubq_s16(v50, v63);
    v78 = vqaddq_s16(v50, v63);
    v635[0] = v51;
    v635[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v71.i8, *v20.i8), *v78.i8, *v19.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v71, v20), v78, v19), 0xDuLL);
    v635[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v59.i8, *v628.i8), *v62.i8, *v17.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v59, v628), v62, v17), 0xDuLL);
    v635[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v71.i8, *v21.i8), *v78.i8, *v20.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v71, v21), v78, v20), 0xDuLL);
    v79 = vdupq_n_s16(0x18BDu);
    v80 = vdupq_n_s16(0x1C39u);
    v81 = vdupq_n_s16(0xF16u);
    v82 = vmlal_s16(vmull_s16(*v73.i8, *v81.i8), *v76.i8, *v80.i8);
    v83 = vmlal_high_s16(vmull_high_s16(v73, v81), v76, v80);
    v84 = vdupq_n_s16(0xE3C7u);
    v85 = vmlal_s16(vmull_s16(*v73.i8, *v84.i8), *v76.i8, *v81.i8);
    v86 = vmlal_high_s16(vmull_high_s16(v73, v84), v76, v81);
    v87 = vdupq_n_s16(0x94Au);
    v88 = vdupq_n_s16(0x1E9Fu);
    v89 = vmlal_s16(vmull_s16(*v74.i8, *v88.i8), *v75.i8, *v87.i8);
    v90 = vmlal_high_s16(vmull_high_s16(v74, v88), v75, v87);
    v91 = vdupq_n_s16(0xF6B6u);
    v92 = vmlal_s16(vmull_s16(*v74.i8, *v91.i8), *v75.i8, *v88.i8);
    v93 = vmlal_high_s16(vmull_high_s16(v74, v91), v75, v88);
    v94 = vdupq_n_s16(0xEBB3u);
    v635[8] = v52;
    v635[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v72.i8, *v79.i8), *v77.i8, *v22.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v72, v79), v77, v22), 0xDuLL);
    v635[6] = v70;
    v635[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v72.i8, *v94.i8), *v77.i8, *v79.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v72, v94), v77, v79), 0xDuLL);
    v635[4] = v57;
    v635[5] = vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xDuLL), v83, 0xDuLL);
    v635[10] = v69;
    v635[11] = vrshrn_high_n_s32(vrshrn_n_s32(v85, 0xDuLL), v86, 0xDuLL);
    v635[12] = v58;
    v635[13] = vrshrn_high_n_s32(vrshrn_n_s32(v89, 0xDuLL), v90, 0xDuLL);
    v635[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v59.i8, *v17.i8), *v62.i8, *v630.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v59, v17), v62, v630), 0xDuLL);
    v635[3] = vrshrn_high_n_s32(vrshrn_n_s32(v92, 0xDuLL), v93, 0xDuLL);
    do
    {
      v635[v32] = vrshrq_n_s16(v635[v32], 4uLL);
      ++v32;
    }

    while (v32 != 16);
    v95 = 0;
    v96 = 1;
    do
    {
      v97 = &v635[8 * v95];
      v98 = v97[1];
      v99 = vtrn1q_s16(*v97, v98);
      v100 = vtrn2q_s16(*v97, v98);
      v101 = v97[2];
      v102 = v97[3];
      v103 = vtrn1q_s16(v101, v102);
      v104 = vtrn2q_s16(v101, v102);
      v105 = v97[4];
      v106 = v97[5];
      v107 = vtrn1q_s16(v105, v106);
      v108 = vtrn2q_s16(v105, v106);
      v109 = v97[6];
      v110 = v97[7];
      v111 = vtrn1q_s16(v109, v110);
      v112 = vtrn2q_s16(v109, v110);
      v113 = vtrn1q_s32(v99, v103);
      v114 = vtrn2q_s32(v99, v103);
      v115 = vtrn1q_s32(v100, v104);
      v116 = vtrn2q_s32(v100, v104);
      v117 = vtrn1q_s32(v107, v111);
      v118 = vtrn2q_s32(v107, v111);
      v119 = vtrn1q_s32(v108, v112);
      v120 = vtrn2q_s32(v108, v112);
      v121 = vzip2q_s64(v113, v117);
      v113.i64[1] = v117.i64[0];
      v122 = vzip2q_s64(v115, v119);
      v115.i64[1] = v119.i64[0];
      v123 = vzip2q_s64(v114, v118);
      v114.i64[1] = v118.i64[0];
      v124 = vzip2q_s64(v116, v120);
      v116.i64[1] = v120.i64[0];
      v125 = &v634[1024 * v95 + 128 * v11];
      *v125 = v113;
      v125[1] = v115;
      LOBYTE(v97) = v96;
      v125[2] = v114;
      v125[3] = v116;
      v125[4] = v121;
      v125[5] = v122;
      v125[6] = v123;
      v125[7] = v124;
      v95 = 1;
      v96 = 0;
    }

    while ((v97 & 1) != 0);
    ++v11;
    v8 += 16;
  }

  while (v11 != 8);
  v126 = 0;
  v127 = 1;
  v128 = vdupq_n_s16(0x16A0u);
  v129 = vdupq_n_s16(0xE960u);
  v464 = vneg_f16(0x8888888888888888);
  v633 = v128;
  v631 = v129;
  do
  {
    v130 = 0;
    v131 = v127;
    v132 = 63;
    v133 = &v634[1024 * v126];
    do
    {
      *&v815[v130 * 16] = vqaddq_s16(v133[v130], v133[v132--]);
      ++v130;
    }

    while (v132 != 31);
    v134 = 32;
    do
    {
      *&v815[v134 * 16] = vqsubq_s16(v133[v132--], v133[v134]);
      ++v134;
    }

    while (v132 != -1);
    v135 = 0;
    for (m = 496; m != 240; m -= 16)
    {
      *(&v775 + v135) = vqaddq_s16(*&v815[v135], *&v815[m]);
      v135 += 16;
    }

    v137 = 256;
    do
    {
      *(&v775 + v137) = vqsubq_s16(*&v815[m], *&v815[v137]);
      m -= 16;
      v137 += 16;
    }

    while (m != -16);
    v138 = 0;
    v814 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v824.i8, *v128.i8), *v839.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v824, v128), v839, v128), 0xDuLL);
    v813 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v825.i8, *v128.i8), *v838.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v825, v128), v838, v128), 0xDuLL);
    v799 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v824.i8, *v129.i8), *v839.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v824, v129), v839, v128), 0xDuLL);
    v800 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v825.i8, *v129.i8), *v838.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v825, v129), v838, v128), 0xDuLL);
    v812 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v826.i8, *v128.i8), *v837.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v826, v128), v837, v128), 0xDuLL);
    v811 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v827.i8, *v128.i8), *v836.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v827, v128), v836, v128), 0xDuLL);
    v801 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v826.i8, *v129.i8), *v837.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v826, v129), v837, v128), 0xDuLL);
    v802 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v827.i8, *v129.i8), *v836.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v827, v129), v836, v128), 0xDuLL);
    v810 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v828.i8, *v128.i8), *v835.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v828, v128), v835, v128), 0xDuLL);
    v809 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v128.i8), *v834.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v128), v834, v128), 0xDuLL);
    v803 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v828.i8, *v129.i8), *v835.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v828, v129), v835, v128), 0xDuLL);
    v804 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v129.i8), *v834.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v129), v834, v128), 0xDuLL);
    v808 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v128.i8), *v833.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v128), v833, v128), 0xDuLL);
    v807 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v831.i8, *v128.i8), *v832.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v831, v128), v832, v128), 0xDuLL);
    v805 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v129.i8), *v833.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v129), v833, v128), 0xDuLL);
    v806 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v831.i8, *v129.i8), *v832.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v831, v129), v832, v128), 0xDuLL);
    for (n = 240; n != 112; n -= 16)
    {
      *&v734[v138] = vqaddq_s16(*(&v775 + v138), *(&v775 + n));
      v138 += 16;
    }

    v140 = 128;
    do
    {
      *&v734[v140] = vqsubq_s16(*(&v775 + n), *(&v775 + v140));
      n -= 16;
      v140 += 16;
    }

    while (n != -16);
    v743 = v783;
    v744 = v784;
    v745 = v785;
    v746 = v786;
    v754 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v787.i8, *v128.i8), *v794.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v787, v128), v794, v128), 0xDuLL);
    v753 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v788.i8, *v128.i8), *v793.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v788, v128), v793, v128), 0xDuLL);
    v747 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v787.i8, *v129.i8), *v794.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v787, v129), v794, v128), 0xDuLL);
    v748 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v788.i8, *v129.i8), *v793.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v788, v129), v793, v128), 0xDuLL);
    v752 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v789.i8, *v128.i8), *v792.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v789, v128), v792, v128), 0xDuLL);
    v751 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v790.i8, *v128.i8), *v791.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v790, v128), v791, v128), 0xDuLL);
    v749 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v789.i8, *v129.i8), *v792.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v789, v129), v792, v128), 0xDuLL);
    v750 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v790.i8, *v129.i8), *v791.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v790, v129), v791, v128), 0xDuLL);
    v755 = v795;
    v756 = v796;
    v757 = v797;
    v758 = v798;
    v141 = 512;
    for (ii = 752; ii != 624; ii -= 16)
    {
      *&v734[v141] = vqaddq_s16(*&v815[v141], *(&v775 + ii));
      v141 += 16;
    }

    v143 = 640;
    do
    {
      *&v734[v143] = vqsubq_s16(*&v815[ii], *(&v775 + v143));
      ii -= 16;
      v143 += 16;
    }

    while (ii != 496);
    v144 = 768;
    for (jj = 1008; jj != 880; jj -= 16)
    {
      *&v734[v144] = vqsubq_s16(*&v815[jj], *(&v775 + v144));
      v144 += 16;
    }

    v146 = 880;
    for (kk = 896; kk != 1024; kk += 16)
    {
      *&v734[kk] = vqaddq_s16(*&v815[kk], *(&v775 + v146));
      v146 -= 16;
    }

    v148 = 0;
    for (mm = 112; mm != 48; mm -= 16)
    {
      *(&v690 + v148) = vqaddq_s16(*&v734[v148], *&v734[mm]);
      v148 += 16;
    }

    v150 = 64;
    do
    {
      *(&v690 + v150) = vqsubq_s16(*&v734[mm], *&v734[v150]);
      mm -= 16;
      v150 += 16;
    }

    while (mm != -16);
    v701 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v737.i8, *v128.i8), *v740.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v737, v128), v740, v128), 0xDuLL);
    v700 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v738.i8, *v128.i8), *v739.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v738, v128), v739, v128), 0xDuLL);
    v698 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v737.i8, *v129.i8), *v740.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v737, v129), v740, v128), 0xDuLL);
    v699 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v738.i8, *v129.i8), *v739.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v738, v129), v739, v128), 0xDuLL);
    v151 = 256;
    for (nn = 368; nn != 304; nn -= 16)
    {
      *(&v690 + v151) = vqaddq_s16(*&v734[v151], *&v734[nn]);
      v151 += 16;
    }

    v153 = 320;
    do
    {
      *(&v690 + v153) = vqsubq_s16(*&v734[nn], *&v734[v153]);
      nn -= 16;
      v153 += 16;
    }

    while (nn != 240);
    v154 = 384;
    for (i1 = 496; i1 != 432; i1 -= 16)
    {
      *(&v690 + v154) = vqsubq_s16(*&v734[i1], *&v734[v154]);
      v154 += 16;
    }

    v156 = 432;
    for (i2 = 448; i2 != 512; i2 += 16)
    {
      *(&v690 + i2) = vqaddq_s16(*&v734[i2], *&v734[v156]);
      v156 -= 16;
    }

    v158 = vdupq_n_s16(0x1D90u);
    v159 = vdupq_n_s16(0xC3Eu);
    v160 = vdupq_n_s16(0xE270u);
    v733 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v759.i8, *v159.i8), *v774.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v759, v159), v774, v158), 0xDuLL);
    v732 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v760.i8, *v159.i8), *v773.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v760, v159), v773, v158), 0xDuLL);
    v718 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v759.i8, *v160.i8), *v774.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v759, v160), v774, v159), 0xDuLL);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v760.i8, *v160.i8), *v773.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v760, v160), v773, v159), 0xDuLL);
    v731 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v761.i8, *v159.i8), *v772.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v761, v159), v772, v158), 0xDuLL);
    v730 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v762.i8, *v159.i8), *v771.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v762, v159), v771, v158), 0xDuLL);
    v720 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v761.i8, *v160.i8), *v772.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v761, v160), v772, v159), 0xDuLL);
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v762.i8, *v160.i8), *v771.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v762, v160), v771, v159), 0xDuLL);
    v161 = vdupq_n_s16(0xF3C2u);
    v729 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v763.i8, *v160.i8), *v770.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v763, v160), v770, v159), 0xDuLL);
    v728 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v764.i8, *v160.i8), *v769.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v764, v160), v769, v159), 0xDuLL);
    v722 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v763.i8, *v161.i8), *v770.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v763, v161), v770, v160), 0xDuLL);
    v723 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v764.i8, *v161.i8), *v769.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v764, v161), v769, v160), 0xDuLL);
    v727 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v765.i8, *v160.i8), *v768.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v765, v160), v768, v159), 0xDuLL);
    v726 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v766.i8, *v160.i8), *v767.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v766, v160), v767, v159), 0xDuLL);
    v724 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v765.i8, *v161.i8), *v768.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v765, v161), v768, v160), 0xDuLL);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v766.i8, *v161.i8), *v767.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v766, v161), v767, v160), 0xDuLL);
    v636 = vqaddq_s16(v690, v693);
    v637 = vqaddq_s16(v691, v692);
    v638 = vqsubq_s16(v691, v692);
    v639 = vqsubq_s16(v690, v693);
    v641 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v128.i8), *v696.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v128), v696, v128), 0xDuLL);
    v640 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v129.i8), *v696.i8, *v128.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v129), v696, v128), 0xDuLL);
    v642 = vqaddq_s16(v735, v699);
    v643 = vqaddq_s16(v736, v698);
    v644 = vqsubq_s16(v736, v698);
    v645 = vqsubq_s16(v735, v699);
    v646 = vqsubq_s16(v742, v700);
    v647 = vqsubq_s16(v741, v701);
    v648 = vqaddq_s16(v741, v701);
    v649 = vqaddq_s16(v742, v700);
    v657 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v704.i8, *v159.i8), *v715.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v704, v159), v715, v158), 0xDuLL);
    v656 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v705.i8, *v159.i8), *v714.i8, *v158.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v705, v159), v714, v158), 0xDuLL);
    v650 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v704.i8, *v160.i8), *v715.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v704, v160), v715, v159), 0xDuLL);
    v651 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v705.i8, *v160.i8), *v714.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v705, v160), v714, v159), 0xDuLL);
    v655 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v706.i8, *v160.i8), *v713.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v706, v160), v713, v159), 0xDuLL);
    v654 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v707.i8, *v160.i8), *v712.i8, *v159.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v707, v160), v712, v159), 0xDuLL);
    v652 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v706.i8, *v161.i8), *v713.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v706, v161), v713, v160), 0xDuLL);
    v653 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v707.i8, *v161.i8), *v712.i8, *v160.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v707, v161), v712, v160), 0xDuLL);
    v162 = 512;
    for (i3 = 624; i3 != 560; i3 -= 16)
    {
      *(&v636 + v162) = vqaddq_s16(*&v734[v162], *(&v690 + i3));
      v162 += 16;
    }

    v164 = 576;
    do
    {
      *(&v636 + v164) = vqsubq_s16(*&v734[i3], *(&v690 + v164));
      i3 -= 16;
      v164 += 16;
    }

    while (i3 != 496);
    v165 = 640;
    for (i4 = 752; i4 != 688; i4 -= 16)
    {
      *(&v636 + v165) = vqsubq_s16(*&v734[i4], *(&v690 + v165));
      v165 += 16;
    }

    v167 = 688;
    for (i5 = 704; i5 != 768; i5 += 16)
    {
      *(&v636 + i5) = vqaddq_s16(*&v734[i5], *(&v690 + v167));
      v167 -= 16;
    }

    v169 = 768;
    for (i6 = 880; i6 != 816; i6 -= 16)
    {
      *(&v636 + v169) = vqaddq_s16(*&v734[v169], *(&v690 + i6));
      v169 += 16;
    }

    v171 = 832;
    do
    {
      *(&v636 + v171) = vqsubq_s16(*&v734[i6], *(&v690 + v171));
      i6 -= 16;
      v171 += 16;
    }

    while (i6 != 752);
    v172 = 896;
    for (i7 = 1008; i7 != 944; i7 -= 16)
    {
      *(&v636 + v172) = vqsubq_s16(*&v734[i7], *(&v690 + v172));
      v172 += 16;
    }

    v174 = 944;
    for (i8 = 960; i8 != 1024; i8 += 16)
    {
      *(&v636 + i8) = vqaddq_s16(*&v734[i8], *(&v690 + v174));
      v174 -= 16;
    }

    v176 = 0;
    v629 = vmlal_s16(vmull_s16(*v638.i8, *v159.i8), *v639.i8, *v158.i8);
    v627 = vmlal_high_s16(vmull_high_s16(v638, v159), v639, v158);
    v625 = vmlal_s16(vmull_s16(*v638.i8, *v160.i8), *v639.i8, *v159.i8);
    v623 = vmlal_high_s16(vmull_high_s16(v638, v160), v639, v159);
    v177 = vmlal_s16(vmull_s16(*v643.i8, *v159.i8), *v648.i8, *v158.i8);
    v178 = vmlal_high_s16(vmull_high_s16(v643, v159), v648, v158);
    v179 = vmlal_s16(vmull_s16(*v643.i8, *v160.i8), *v648.i8, *v159.i8);
    v180 = vmlal_high_s16(vmull_high_s16(v643, v160), v648, v159);
    v181 = vqaddq_s16(v703, v650);
    v182 = vqsubq_s16(v703, v650);
    v183 = vqsubq_s16(v716, v657);
    v184 = vdupq_n_s16(0x1F62u);
    v185 = vdupq_n_s16(0x63Eu);
    v580 = vmlal_s16(vmull_s16(*v644.i8, *v160.i8), *v647.i8, *v159.i8);
    v186 = vqaddq_s16(v716, v657);
    v187 = vdupq_n_s16(0xE09Eu);
    v578 = vmlal_high_s16(vmull_high_s16(v644, v160), v647, v159);
    v576 = vmlal_s16(vmull_s16(*v644.i8, *v161.i8), *v647.i8, *v160.i8);
    v574 = vmlal_high_s16(vmull_high_s16(v644, v161), v647, v160);
    v188 = vmlal_s16(vmull_s16(*v660.i8, *v185.i8), *v687.i8, *v184.i8);
    v189 = vmlal_high_s16(vmull_high_s16(v660, v185), v687, v184);
    v190 = vmlal_s16(vmull_s16(*v660.i8, *v187.i8), *v687.i8, *v185.i8);
    v191 = vmlal_high_s16(vmull_high_s16(v660, v187), v687, v185);
    v568 = vmlal_s16(vmull_s16(*v661.i8, *v185.i8), *v686.i8, *v184.i8);
    v564 = vmlal_high_s16(vmull_high_s16(v661, v185), v686, v184);
    v562 = vmlal_s16(vmull_s16(*v661.i8, *v187.i8), *v686.i8, *v185.i8);
    v559 = vmlal_high_s16(vmull_high_s16(v661, v187), v686, v185);
    v588 = vmlal_s16(vmull_s16(*v662.i8, *v187.i8), *v685.i8, *v185.i8);
    v586 = vmlal_high_s16(vmull_high_s16(v662, v187), v685, v185);
    v192 = vdupq_n_s16(0xF9C2u);
    v584 = vmlal_s16(vmull_s16(*v662.i8, *v192.i8), *v685.i8, *v187.i8);
    v582 = vmlal_high_s16(vmull_high_s16(v662, v192), v685, v187);
    v193 = vmlal_s16(vmull_s16(*v663.i8, *v187.i8), *v684.i8, *v185.i8);
    v194 = vmlal_high_s16(vmull_high_s16(v663, v187), v684, v185);
    v195 = vmlal_s16(vmull_s16(*v663.i8, *v192.i8), *v684.i8, *v187.i8);
    v196 = vmlal_high_s16(vmull_high_s16(v663, v192), v684, v187);
    v197 = vqaddq_s16(v694, v640);
    v198 = vqaddq_s16(v697, v641);
    v622 = vmlal_s16(vmull_s16(*v197.i8, *v185.i8), *v198.i8, *v184.i8);
    v621 = vmlal_high_s16(vmull_high_s16(v197, v185), v198, v184);
    v620 = vmlal_s16(vmull_s16(*v197.i8, *v187.i8), *v198.i8, *v185.i8);
    v619 = vmlal_high_s16(vmull_high_s16(v197, v187), v198, v185);
    v592 = vmlal_s16(vmull_s16(*v181.i8, *v185.i8), *v186.i8, *v184.i8);
    v590 = vmlal_high_s16(vmull_high_s16(v181, v185), v186, v184);
    v566 = vmlal_s16(vmull_s16(*v181.i8, *v187.i8), *v186.i8, *v185.i8);
    v199 = vmlal_high_s16(vmull_high_s16(v181, v187), v186, v185);
    v549 = vmlal_s16(vmull_s16(*v182.i8, *v187.i8), *v183.i8, *v185.i8);
    v547 = vmlal_high_s16(vmull_high_s16(v182, v187), v183, v185);
    v543 = vmlal_high_s16(vmull_high_s16(v182, v192), v183, v187);
    v545 = vmlal_s16(vmull_s16(*v182.i8, *v192.i8), *v183.i8, *v187.i8);
    v200 = vqsubq_s16(v694, v640);
    v201 = vqsubq_s16(v697, v641);
    v202 = vqsubq_s16(v708, v653);
    v203 = vqaddq_s16(v708, v653);
    v204 = vqaddq_s16(v711, v654);
    v205 = vqsubq_s16(v711, v654);
    v206 = vdupq_n_s16(0x11C8u);
    v207 = vdupq_n_s16(0x1A9Cu);
    v208 = vmlal_s16(vmull_s16(*v668.i8, *v207.i8), *v679.i8, *v206.i8);
    v209 = vmlal_high_s16(vmull_high_s16(v668, v207), v679, v206);
    v210 = vdupq_n_s16(0xEE38u);
    v211 = vmlal_s16(vmull_s16(*v668.i8, *v210.i8), *v679.i8, *v207.i8);
    v212 = vmlal_high_s16(vmull_high_s16(v668, v210), v679, v207);
    v602 = vmlal_s16(vmull_s16(*v669.i8, *v207.i8), *v678.i8, *v206.i8);
    v600 = vmlal_high_s16(vmull_high_s16(v669, v207), v678, v206);
    v598 = vmlal_s16(vmull_s16(*v669.i8, *v210.i8), *v678.i8, *v207.i8);
    v596 = vmlal_high_s16(vmull_high_s16(v669, v210), v678, v207);
    v610 = vmlal_s16(vmull_s16(*v670.i8, *v210.i8), *v677.i8, *v207.i8);
    v213 = vdupq_n_s16(0xE564u);
    v608 = vmlal_high_s16(vmull_high_s16(v670, v210), v677, v207);
    v606 = vmlal_s16(vmull_s16(*v670.i8, *v213.i8), *v677.i8, *v210.i8);
    v604 = vmlal_high_s16(vmull_high_s16(v670, v213), v677, v210);
    v214 = vmlal_s16(vmull_s16(*v671.i8, *v210.i8), *v676.i8, *v207.i8);
    v215 = vmlal_high_s16(vmull_high_s16(v671, v210), v676, v207);
    v216 = vmlal_s16(vmull_s16(*v671.i8, *v213.i8), *v676.i8, *v210.i8);
    v217 = vmlal_high_s16(vmull_high_s16(v671, v213), v676, v210);
    v616 = vmlal_s16(vmull_s16(*v200.i8, *v207.i8), *v201.i8, *v206.i8);
    v615 = vmlal_high_s16(vmull_high_s16(v200, v207), v201, v206);
    v614 = vmlal_s16(vmull_s16(*v200.i8, *v210.i8), *v201.i8, *v207.i8);
    v613 = vmlal_high_s16(vmull_high_s16(v200, v210), v201, v207);
    v541 = vmlal_s16(vmull_s16(*v202.i8, *v207.i8), *v205.i8, *v206.i8);
    v539 = vmlal_high_s16(vmull_high_s16(v202, v207), v205, v206);
    v537 = vmlal_s16(vmull_s16(*v202.i8, *v210.i8), *v205.i8, *v207.i8);
    v535 = vmlal_high_s16(vmull_high_s16(v202, v210), v205, v207);
    v553 = vmlal_s16(vmull_s16(*v203.i8, *v210.i8), *v204.i8, *v207.i8);
    v551 = vmlal_high_s16(vmull_high_s16(v203, v210), v204, v207);
    v529 = vmlal_high_s16(vmull_high_s16(v203, v213), v204, v210);
    v531 = vmlal_s16(vmull_s16(*v203.i8, *v213.i8), *v204.i8, *v210.i8);
    v218 = vrshrn_high_n_s32(vrshrn_n_s32(v177, 0xDuLL), v178, 0xDuLL);
    v219 = vrshrn_high_n_s32(vrshrn_n_s32(v179, 0xDuLL), v180, 0xDuLL);
    v220 = vrshrn_high_n_s32(vrshrn_n_s32(v188, 0xDuLL), v189, 0xDuLL);
    v221 = vrshrn_high_n_s32(vrshrn_n_s32(v190, 0xDuLL), v191, 0xDuLL);
    v222 = vqaddq_s16(v659, v221);
    v223 = vqsubq_s16(v659, v221);
    v224 = vqsubq_s16(v688, v220);
    v225 = vqaddq_s16(v688, v220);
    v226 = vqaddq_s16(v642, v219);
    v227 = vdupq_n_s16(0x1FD8u);
    v228 = vqaddq_s16(v649, v218);
    v229 = vdupq_n_s16(0x322u);
    v486 = vmlal_s16(vmull_s16(*v226.i8, *v229.i8), *v228.i8, *v227.i8);
    v612 = vmlal_high_s16(vmull_high_s16(v226, v229), v228, v227);
    v230 = vdupq_n_s16(0xE028u);
    v618 = vmlal_s16(vmull_s16(*v226.i8, *v230.i8), *v228.i8, *v229.i8);
    v617 = vmlal_high_s16(vmull_high_s16(v226, v230), v228, v229);
    v231 = vmlal_s16(vmull_s16(*v222.i8, *v229.i8), *v225.i8, *v227.i8);
    v232 = vmlal_high_s16(vmull_high_s16(v222, v229), v225, v227);
    v233 = vmlal_s16(vmull_s16(*v222.i8, *v230.i8), *v225.i8, *v229.i8);
    v234 = vmlal_high_s16(vmull_high_s16(v222, v230), v225, v229);
    v235 = vmlal_s16(vmull_s16(*v223.i8, *v230.i8), *v224.i8, *v229.i8);
    v236 = vmlal_high_s16(vmull_high_s16(v223, v230), v224, v229);
    v237 = vdupq_n_s16(0xFCDEu);
    v238 = vmlal_s16(vmull_s16(*v223.i8, *v237.i8), *v224.i8, *v230.i8);
    v239 = vmlal_high_s16(vmull_high_s16(v223, v237), v224, v230);
    v240 = vrshrn_high_n_s32(vrshrn_n_s32(v193, 0xDuLL), v194, 0xDuLL);
    v241 = vrshrn_high_n_s32(vrshrn_n_s32(v195, 0xDuLL), v196, 0xDuLL);
    v242 = vqsubq_s16(v642, v219);
    v243 = vqsubq_s16(v649, v218);
    v244 = vqsubq_s16(v664, v241);
    v245 = vqaddq_s16(v664, v241);
    v246 = vqaddq_s16(v683, v240);
    v247 = vqsubq_s16(v683, v240);
    v248 = vdupq_n_s16(0x144Cu);
    v249 = vdupq_n_s16(0x18BCu);
    v250 = vmlal_s16(vmull_s16(*v242.i8, *v249.i8), *v243.i8, *v248.i8);
    v251 = vmlal_high_s16(vmull_high_s16(v242, v249), v243, v248);
    v252 = vdupq_n_s16(0xEBB4u);
    v595 = vmlal_s16(vmull_s16(*v242.i8, *v252.i8), *v243.i8, *v249.i8);
    v594 = vmlal_high_s16(vmull_high_s16(v242, v252), v243, v249);
    v484 = vmlal_s16(vmull_s16(*v244.i8, *v249.i8), *v247.i8, *v248.i8);
    v253 = vmlal_high_s16(vmull_high_s16(v244, v249), v247, v248);
    v254 = vmlal_s16(vmull_s16(*v244.i8, *v252.i8), *v247.i8, *v249.i8);
    v255 = vmlal_high_s16(vmull_high_s16(v244, v252), v247, v249);
    v501 = vmlal_s16(vmull_s16(*v245.i8, *v252.i8), *v246.i8, *v249.i8);
    v499 = vmlal_high_s16(vmull_high_s16(v245, v252), v246, v249);
    v256 = vdupq_n_s16(0xE744u);
    v493 = vmlal_high_s16(vmull_high_s16(v245, v256), v246, v252);
    v495 = vmlal_s16(vmull_s16(*v245.i8, *v256.i8), *v246.i8, *v252.i8);
    v257 = vrshrn_high_n_s32(vrshrn_n_s32(v580, 0xDuLL), v578, 0xDuLL);
    v258 = vrshrn_high_n_s32(vrshrn_n_s32(v576, 0xDuLL), v574, 0xDuLL);
    v259 = vrshrn_high_n_s32(vrshrn_n_s32(v208, 0xDuLL), v209, 0xDuLL);
    v260 = vrshrn_high_n_s32(vrshrn_n_s32(v211, 0xDuLL), v212, 0xDuLL);
    v261 = vqaddq_s16(v667, v260);
    v262 = vqsubq_s16(v667, v260);
    v263 = vqsubq_s16(v680, v259);
    v264 = vqaddq_s16(v680, v259);
    v265 = vqsubq_s16(v645, v258);
    v266 = vqsubq_s16(v646, v257);
    v267 = vdupq_n_s16(0x1C38u);
    v268 = vdupq_n_s16(0xF16u);
    v581 = vmlal_s16(vmull_s16(*v265.i8, *v268.i8), *v266.i8, *v267.i8);
    v579 = vmlal_high_s16(vmull_high_s16(v265, v268), v266, v267);
    v269 = vdupq_n_s16(0xE3C8u);
    v577 = vmlal_s16(vmull_s16(*v265.i8, *v269.i8), *v266.i8, *v268.i8);
    v575 = vmlal_high_s16(vmull_high_s16(v265, v269), v266, v268);
    v509 = vmlal_s16(vmull_s16(*v261.i8, *v268.i8), *v264.i8, *v267.i8);
    v507 = vmlal_high_s16(vmull_high_s16(v261, v268), v264, v267);
    v505 = vmlal_s16(vmull_s16(*v261.i8, *v269.i8), *v264.i8, *v268.i8);
    v503 = vmlal_high_s16(vmull_high_s16(v261, v269), v264, v268);
    v270 = vmlal_s16(vmull_s16(*v262.i8, *v269.i8), *v263.i8, *v268.i8);
    v521 = vmlal_high_s16(vmull_high_s16(v262, v269), v263, v268);
    v271 = vdupq_n_s16(0xF0EAu);
    v515 = vmlal_high_s16(vmull_high_s16(v262, v271), v263, v269);
    v517 = vmlal_s16(vmull_s16(*v262.i8, *v271.i8), *v263.i8, *v269.i8);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(v214, 0xDuLL), v215, 0xDuLL);
    v273 = vrshrn_high_n_s32(vrshrn_n_s32(v216, 0xDuLL), v217, 0xDuLL);
    v274 = vqaddq_s16(v645, v258);
    v275 = vqaddq_s16(v646, v257);
    v276 = vqsubq_s16(v672, v273);
    v277 = vqaddq_s16(v672, v273);
    v278 = vqaddq_s16(v675, v272);
    v279 = vdupq_n_s16(0x94Au);
    v280 = vdupq_n_s16(0x1EA0u);
    v281 = vqsubq_s16(v675, v272);
    v573 = vmlal_s16(vmull_s16(*v274.i8, *v280.i8), *v275.i8, *v279.i8);
    v282 = vdupq_n_s16(0xF6B6u);
    v572 = vmlal_high_s16(vmull_high_s16(v274, v280), v275, v279);
    v571 = vmlal_s16(vmull_s16(*v274.i8, *v282.i8), *v275.i8, *v280.i8);
    v570 = vmlal_high_s16(vmull_high_s16(v274, v282), v275, v280);
    v519 = vmlal_s16(vmull_s16(*v276.i8, *v280.i8), *v281.i8, *v279.i8);
    v514 = vmlal_high_s16(vmull_high_s16(v276, v280), v281, v279);
    v512 = vmlal_s16(vmull_s16(*v276.i8, *v282.i8), *v281.i8, *v280.i8);
    v511 = vmlal_high_s16(vmull_high_s16(v276, v282), v281, v280);
    v283 = vmlal_s16(vmull_s16(*v277.i8, *v282.i8), *v278.i8, *v280.i8);
    v284 = vdupq_n_s16(0xE160u);
    v285 = vmlal_high_s16(vmull_high_s16(v277, v282), v278, v280);
    v286 = vmlal_s16(vmull_s16(*v277.i8, *v284.i8), *v278.i8, *v282.i8);
    v287 = vmlal_high_s16(vmull_high_s16(v277, v284), v278, v282);
    v288 = vrshrn_high_n_s32(vrshrn_n_s32(v592, 0xDuLL), v590, 0xDuLL);
    v289 = vrshrn_high_n_s32(vrshrn_n_s32(v566, 0xDuLL), v199, 0xDuLL);
    v290 = vqaddq_s16(v702, v651);
    v291 = vqaddq_s16(v717, v656);
    v292 = vqaddq_s16(v290, v289);
    v293 = vdupq_n_s16(0x1FF6u);
    v294 = vqaddq_s16(v291, v288);
    v295 = vdupq_n_s16(0x192u);
    v567 = vmlal_s16(vmull_s16(*v292.i8, *v295.i8), *v294.i8, *v293.i8);
    v561 = vmlal_high_s16(vmull_high_s16(v292, v295), v294, v293);
    v296 = vdupq_n_s16(0xE00Au);
    v593 = vmlal_s16(vmull_s16(*v292.i8, *v296.i8), *v294.i8, *v295.i8);
    v591 = vmlal_high_s16(vmull_high_s16(v292, v296), v294, v295);
    v297 = vqsubq_s16(v290, v289);
    v298 = vdupq_n_s16(0x157Eu);
    v299 = vdupq_n_s16(0x17B6u);
    v300 = vqsubq_s16(v291, v288);
    v558 = vmlal_s16(vmull_s16(*v297.i8, *v299.i8), *v300.i8, *v298.i8);
    v301 = vdupq_n_s16(0xEA82u);
    v557 = vmlal_high_s16(vmull_high_s16(v297, v299), v300, v298);
    v556 = vmlal_s16(vmull_s16(*v297.i8, *v301.i8), *v300.i8, *v299.i8);
    v555 = vmlal_high_s16(vmull_high_s16(v297, v301), v300, v299);
    v302 = vqsubq_s16(v702, v651);
    v303 = vqsubq_s16(v717, v656);
    v304 = vrshrn_high_n_s32(vrshrn_n_s32(v549, 0xDuLL), v547, 0xDuLL);
    v305 = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xDuLL), v543, 0xDuLL);
    v306 = vqsubq_s16(v302, v305);
    v307 = vqsubq_s16(v303, v304);
    v308 = vdupq_n_s16(0x1CEEu);
    v309 = vdupq_n_s16(0xDAEu);
    v546 = vmlal_s16(vmull_s16(*v306.i8, *v309.i8), *v307.i8, *v308.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v306, v309), v307, v308);
    v310 = vdupq_n_s16(0xE312u);
    v533 = vmlal_high_s16(vmull_high_s16(v306, v310), v307, v309);
    v534 = vmlal_s16(vmull_s16(*v306.i8, *v310.i8), *v307.i8, *v309.i8);
    v311 = vqaddq_s16(v302, v305);
    v312 = vdupq_n_s16(0xF538u);
    v313 = vqaddq_s16(v303, v304);
    v314 = vmull_s16(*v311.i8, *v312.i8);
    v315 = vmull_high_s16(v311, v312);
    v316 = vdupq_n_s16(0x1E22u);
    v525 = vmlal_high_s16(v315, v313, v316);
    v526 = vmlal_s16(v314, *v313.i8, *v316.i8);
    v317 = vrshrn_high_n_s32(vrshrn_n_s32(v541, 0xDuLL), v539, 0xDuLL);
    v318 = vrshrn_high_n_s32(vrshrn_n_s32(v537, 0xDuLL), v535, 0xDuLL);
    v319 = vqsubq_s16(v709, v652);
    v320 = vqsubq_s16(v710, v655);
    v321 = vqaddq_s16(v319, v318);
    v322 = vqaddq_s16(v320, v317);
    v323 = vdupq_n_s16(0x1F0Au);
    v324 = vdupq_n_s16(0x7C6u);
    v524 = vmlal_s16(vmull_s16(*v321.i8, *v324.i8), *v322.i8, *v323.i8);
    v523 = vmlal_high_s16(vmull_high_s16(v321, v324), v322, v323);
    v325 = vdupq_n_s16(0xE0F6u);
    v548 = vmlal_high_s16(vmull_high_s16(v321, v325), v322, v324);
    v550 = vmlal_s16(vmull_s16(*v321.i8, *v325.i8), *v322.i8, *v324.i8);
    v326 = vqsubq_s16(v319, v318);
    v327 = vdupq_n_s16(0x1074u);
    v328 = vqsubq_s16(v320, v317);
    v329 = vdupq_n_s16(0x1B72u);
    v540 = vmlal_s16(vmull_s16(*v326.i8, *v329.i8), *v328.i8, *v327.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v326, v329), v328, v327);
    v330 = vdupq_n_s16(0xEF8Cu);
    v542 = vmlal_s16(vmull_s16(*v326.i8, *v330.i8), *v328.i8, *v329.i8);
    v538 = vmlal_high_s16(vmull_high_s16(v326, v330), v328, v329);
    v331 = vqaddq_s16(v709, v652);
    v332 = vqaddq_s16(v710, v655);
    v333 = vrshrn_high_n_s32(vrshrn_n_s32(v553, 0xDuLL), v551, 0xDuLL);
    v334 = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v529, 0xDuLL);
    v335 = vqsubq_s16(v331, v334);
    v336 = vdupq_n_s16(0x19B4u);
    v337 = vdupq_n_s16(0x1310u);
    v338 = vqsubq_s16(v332, v333);
    v532 = vmlal_s16(vmull_s16(*v335.i8, *v337.i8), *v338.i8, *v336.i8);
    v339 = vdupq_n_s16(0xE64Cu);
    v530 = vmlal_s16(vmull_s16(*v335.i8, *v339.i8), *v338.i8, *v337.i8);
    v527 = vmlal_high_s16(vmull_high_s16(v335, v337), v338, v336);
    v528 = vmlal_high_s16(vmull_high_s16(v335, v339), v338, v337);
    v340 = vqaddq_s16(v331, v334);
    v341 = vqaddq_s16(v332, v333);
    v342 = vdupq_n_s16(0x4B2u);
    v343 = vdupq_n_s16(0x1FA8u);
    v554 = vmlal_s16(vmull_s16(*v340.i8, *v343.i8), *v341.i8, *v342.i8);
    v552 = vmlal_high_s16(vmull_high_s16(v340, v343), v341, v342);
    v344 = vdupq_n_s16(0xFB4Eu);
    v497 = vmlal_high_s16(vmull_high_s16(v340, v344), v341, v343);
    v498 = vmlal_s16(vmull_s16(*v340.i8, *v344.i8), *v341.i8, *v343.i8);
    v345 = vrshrn_high_n_s32(vrshrn_n_s32(v568, 0xDuLL), v564, 0xDuLL);
    v346 = vrshrn_high_n_s32(vrshrn_n_s32(v562, 0xDuLL), v559, 0xDuLL);
    v481 = vrshrn_high_n_s32(vrshrn_n_s32(v231, 0xDuLL), v232, 0xDuLL);
    v491 = vrshrn_high_n_s32(vrshrn_n_s32(v233, 0xDuLL), v234, 0xDuLL);
    v490 = vqaddq_s16(v658, v346);
    v480 = vqaddq_s16(v689, v345);
    v347 = vqsubq_s16(v490, v491);
    v348 = vdupq_n_s16(0x1610u);
    v349 = vqsubq_s16(v480, v481);
    v350 = vdupq_n_s16(0x172Eu);
    v569 = vmlal_s16(vmull_s16(*v347.i8, *v350.i8), *v349.i8, *v348.i8);
    v565 = vmlal_high_s16(vmull_high_s16(v347, v350), v349, v348);
    v351 = vdupq_n_s16(0xE9F0u);
    v563 = vmlal_s16(vmull_s16(*v347.i8, *v351.i8), *v349.i8, *v350.i8);
    v560 = vmlal_high_s16(vmull_high_s16(v347, v351), v349, v350);
    v352 = vqsubq_s16(v658, v346);
    v353 = vqsubq_s16(v689, v345);
    v354 = vrshrn_high_n_s32(vrshrn_n_s32(v235, 0xDuLL), v236, 0xDuLL);
    v355 = vrshrn_high_n_s32(vrshrn_n_s32(v238, 0xDuLL), v239, 0xDuLL);
    v356 = vqsubq_s16(v352, v355);
    v357 = vdupq_n_s16(0x1D42u);
    v358 = vdupq_n_s16(0xCF8u);
    v359 = vqsubq_s16(v353, v354);
    v483 = vmlal_s16(vmull_s16(*v356.i8, *v358.i8), *v359.i8, *v357.i8);
    v360 = vdupq_n_s16(0xE2BEu);
    v482 = vmlal_high_s16(vmull_high_s16(v356, v358), v359, v357);
    v492 = vmlal_s16(vmull_s16(*v356.i8, *v360.i8), *v359.i8, *v358.i8);
    v489 = vmlal_high_s16(vmull_high_s16(v356, v360), v359, v358);
    v361 = vqaddq_s16(v352, v355);
    v362 = vqaddq_s16(v353, v354);
    v363 = vdupq_n_s16(0xB84u);
    v364 = vdupq_n_s16(0x1DDCu);
    v488 = vmlal_s16(vmull_s16(*v361.i8, *v364.i8), *v362.i8, *v363.i8);
    v487 = vmlal_high_s16(vmull_high_s16(v361, v364), v362, v363);
    v365 = vdupq_n_s16(0xF47Cu);
    v478 = vmlal_high_s16(vmull_high_s16(v361, v365), v362, v364);
    v479 = vmlal_s16(vmull_s16(*v361.i8, *v365.i8), *v362.i8, *v364.i8);
    v366 = vrshrn_high_n_s32(vrshrn_n_s32(v588, 0xDuLL), v586, 0xDuLL);
    v367 = vrshrn_high_n_s32(vrshrn_n_s32(v584, 0xDuLL), v582, 0xDuLL);
    v368 = vrshrn_high_n_s32(vrshrn_n_s32(v484, 0xDuLL), v253, 0xDuLL);
    v369 = vrshrn_high_n_s32(vrshrn_n_s32(v254, 0xDuLL), v255, 0xDuLL);
    v370 = vqsubq_s16(v665, v367);
    v371 = vqsubq_s16(v682, v366);
    v372 = vqaddq_s16(v370, v369);
    v373 = vdupq_n_s16(0x1F38u);
    v374 = vqaddq_s16(v371, v368);
    v375 = vdupq_n_s16(0x702u);
    v475 = vmlal_s16(vmull_s16(*v372.i8, *v375.i8), *v374.i8, *v373.i8);
    v473 = vmlal_high_s16(vmull_high_s16(v372, v375), v374, v373);
    v376 = vdupq_n_s16(0xE0C8u);
    v589 = vmlal_s16(vmull_s16(*v372.i8, *v376.i8), *v374.i8, *v375.i8);
    v587 = vmlal_high_s16(vmull_high_s16(v372, v376), v374, v375);
    v377 = vqsubq_s16(v370, v369);
    v378 = vdupq_n_s16(0x111Eu);
    v379 = vdupq_n_s16(0x1B0Au);
    v380 = vqsubq_s16(v371, v368);
    v585 = vmlal_s16(vmull_s16(*v377.i8, *v379.i8), *v380.i8, *v378.i8);
    v381 = vdupq_n_s16(0xEEE2u);
    v583 = vmlal_high_s16(vmull_high_s16(v377, v379), v380, v378);
    v485 = vmlal_s16(vmull_s16(*v377.i8, *v381.i8), *v380.i8, *v379.i8);
    v477 = vmlal_high_s16(vmull_high_s16(v377, v381), v380, v379);
    v382 = vqaddq_s16(v665, v367);
    v383 = vqaddq_s16(v682, v366);
    v384 = vrshrn_high_n_s32(vrshrn_n_s32(v501, 0xDuLL), v499, 0xDuLL);
    v385 = vrshrn_high_n_s32(vrshrn_n_s32(v495, 0xDuLL), v493, 0xDuLL);
    v386 = vqsubq_s16(v382, v385);
    v387 = vqsubq_s16(v383, v384);
    v388 = vdupq_n_s16(0x1A2Au);
    v389 = vdupq_n_s16(0x126Eu);
    v476 = vmlal_s16(vmull_s16(*v386.i8, *v389.i8), *v387.i8, *v388.i8);
    v474 = vmlal_high_s16(vmull_high_s16(v386, v389), v387, v388);
    v390 = vdupq_n_s16(0xE5D6u);
    v494 = vmlal_high_s16(vmull_high_s16(v386, v390), v387, v389);
    v496 = vmlal_s16(vmull_s16(*v386.i8, *v390.i8), *v387.i8, *v389.i8);
    v391 = vqaddq_s16(v382, v385);
    v392 = vdupq_n_s16(0x578u);
    v393 = vqaddq_s16(v383, v384);
    v394 = vdupq_n_s16(0x1F88u);
    v502 = vmlal_s16(vmull_s16(*v391.i8, *v394.i8), *v393.i8, *v392.i8);
    v500 = vmlal_high_s16(vmull_high_s16(v391, v394), v393, v392);
    v395 = vdupq_n_s16(0xFA88u);
    v471 = vmlal_high_s16(vmull_high_s16(v391, v395), v393, v394);
    v472 = vmlal_s16(vmull_s16(*v391.i8, *v395.i8), *v393.i8, *v394.i8);
    v396 = vrshrn_high_n_s32(vrshrn_n_s32(v602, 0xDuLL), v600, 0xDuLL);
    v397 = vrshrn_high_n_s32(vrshrn_n_s32(v598, 0xDuLL), v596, 0xDuLL);
    v398 = vrshrn_high_n_s32(vrshrn_n_s32(v509, 0xDuLL), v507, 0xDuLL);
    v399 = vrshrn_high_n_s32(vrshrn_n_s32(v505, 0xDuLL), v503, 0xDuLL);
    v400 = vqaddq_s16(v666, v397);
    v401 = vqaddq_s16(v681, v396);
    v402 = vqaddq_s16(v400, v399);
    v403 = vdupq_n_s16(0x1FC2u);
    v404 = vdupq_n_s16(0x3EAu);
    v405 = vqaddq_s16(v401, v398);
    v506 = vmlal_s16(vmull_s16(*v402.i8, *v404.i8), *v405.i8, *v403.i8);
    v406 = vdupq_n_s16(0xE03Eu);
    v504 = vmlal_high_s16(vmull_high_s16(v402, v404), v405, v403);
    v603 = vmlal_s16(vmull_s16(*v402.i8, *v406.i8), *v405.i8, *v404.i8);
    v601 = vmlal_high_s16(vmull_high_s16(v402, v406), v405, v404);
    v407 = vqsubq_s16(v400, v399);
    v408 = vqsubq_s16(v401, v398);
    v409 = vdupq_n_s16(0x13B0u);
    v410 = vdupq_n_s16(0x193Au);
    v599 = vmlal_s16(vmull_s16(*v407.i8, *v410.i8), *v408.i8, *v409.i8);
    v597 = vmlal_high_s16(vmull_high_s16(v407, v410), v408, v409);
    v411 = vdupq_n_s16(0xEC50u);
    v508 = vmlal_high_s16(vmull_high_s16(v407, v411), v408, v410);
    v510 = vmlal_s16(vmull_s16(*v407.i8, *v411.i8), *v408.i8, *v410.i8);
    v412 = vqsubq_s16(v666, v397);
    v469 = vqsubq_s16(v681, v396);
    v413 = vrshrn_high_n_s32(vrshrn_n_s32(v270, 0xDuLL), v521, 0xDuLL);
    v414 = vrshrn_high_n_s32(vrshrn_n_s32(v517, 0xDuLL), v515, 0xDuLL);
    v415 = vqsubq_s16(v412, v414);
    v416 = vdupq_n_s16(0x1BD8u);
    v417 = vqsubq_s16(v469, v413);
    v418 = vdupq_n_s16(0xFC6u);
    v516 = vmlal_s16(vmull_s16(*v415.i8, *v418.i8), *v417.i8, *v416.i8);
    v470 = vmlal_high_s16(vmull_high_s16(v415, v418), v417, v416);
    v419 = vdupq_n_s16(0xE428u);
    v522 = vmlal_s16(vmull_s16(*v415.i8, *v419.i8), *v417.i8, *v418.i8);
    v518 = vmlal_high_s16(vmull_high_s16(v415, v419), v417, v418);
    v420 = vrshrn_high_n_s32(vrshrn_n_s32(v610, 0xDuLL), v608, 0xDuLL);
    v421 = vrshrn_high_n_s32(vrshrn_n_s32(v606, 0xDuLL), v604, 0xDuLL);
    v422 = vrshrn_high_n_s32(vrshrn_n_s32(v519, 0xDuLL), v514, 0xDuLL);
    v423 = vrshrn_high_n_s32(vrshrn_n_s32(v512, 0xDuLL), v511, 0xDuLL);
    v520 = vqsubq_s16(v673, v421);
    v465 = vqsubq_s16(v674, v420);
    v424 = vqsubq_s16(v520, v423);
    v425 = vdupq_n_s16(0xE64u);
    v426 = vdupq_n_s16(0x1C96u);
    v427 = vqsubq_s16(v465, v422);
    v611 = vmlal_s16(vmull_s16(*v424.i8, *v426.i8), *v427.i8, *v425.i8);
    v428 = vdupq_n_s16(0xF19Cu);
    v609 = vmlal_high_s16(vmull_high_s16(v424, v426), v427, v425);
    v513 = vmlal_s16(vmull_s16(*v424.i8, *v428.i8), *v427.i8, *v426.i8);
    v468 = vmlal_high_s16(vmull_high_s16(v424, v428), v427, v426);
    v429 = vqaddq_s16(v673, v421);
    v430 = vqaddq_s16(v674, v420);
    v431 = vrshrn_high_n_s32(vrshrn_n_s32(v283, 0xDuLL), v285, 0xDuLL);
    v432 = vrshrn_high_n_s32(vrshrn_n_s32(v286, 0xDuLL), v287, 0xDuLL);
    v433 = vqsubq_s16(v429, v432);
    v434 = vqsubq_s16(v430, v431);
    v435 = vdupq_n_s16(0x183Cu);
    v436 = vdupq_n_s16(0x14E6u);
    v467 = vmlal_s16(vmull_s16(*v433.i8, *v436.i8), *v434.i8, *v435.i8);
    v466 = vmlal_high_s16(vmull_high_s16(v433, v436), v434, v435);
    v437 = vdupq_n_s16(0xE7C4u);
    v438 = vqaddq_s16(v429, v432);
    v439 = vdupq_n_s16(0x25Au);
    v440 = vqaddq_s16(v430, v431);
    v441 = vdupq_n_s16(0x1FEAu);
    v607 = vmlal_s16(vmull_s16(*v438.i8, *v441.i8), *v440.i8, *v439.i8);
    v605 = vmlal_high_s16(vmull_high_s16(v438, v441), v440, v439);
    v442 = vdupq_n_s16(0xFDA6u);
    v443 = vmlal_s16(vmull_s16(*v438.i8, *v442.i8), *v440.i8, *v441.i8);
    v444 = vmlal_high_s16(vmull_high_s16(v438, v442), v440, v441);
    v445 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v636.i8, *v633.i8), *v637.i8, *v633.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v636, v633), v637, v633), 0xDuLL);
    v446 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v636.i8, *v631.i8), *v637.i8, *v633.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v636, v631), v637, v633), 0xDuLL);
    v447 = vqaddq_s16(v490, v491);
    v448 = vqaddq_s16(v412, v414);
    v449 = vqaddq_s16(v520, v423);
    v450 = vqaddq_s16(v465, v422);
    v451 = vqaddq_s16(v469, v413);
    v452 = vqaddq_s16(v480, v481);
    v453 = vdupq_n_s16(0x1FFEu);
    v454 = vmlal_s16(vmull_s16(*v447.i8, 0xCA00CA00CA00CALL), *v452.i8, *v453.i8);
    v411.i64[0] = 0xCA00CA00CA00CALL;
    v411.i64[1] = 0xCA00CA00CA00CALL;
    v455 = vmlal_high_s16(vmull_high_s16(v447, v411), v452, v453);
    v456 = vdupq_n_s16(0xE002u);
    v133[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v447.i8, *v456.i8), *v452.i8, 0xCA00CA00CA00CALL), 0xDuLL), vmlal_high_s16(vmull_high_s16(v447, v456), v452, v411), 0xDuLL);
    *v133 = v445;
    v133[1] = vrshrn_high_n_s32(vrshrn_n_s32(v454, 0xDuLL), v455, 0xDuLL);
    v133[2] = vrshrn_high_n_s32(vrshrn_n_s32(v567, 0xDuLL), v561, 0xDuLL);
    v133[3] = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xDuLL), v444, 0xDuLL);
    v133[4] = vrshrn_high_n_s32(vrshrn_n_s32(v486, 0xDuLL), v612, 0xDuLL);
    v133[5] = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xDuLL), v504, 0xDuLL);
    v133[6] = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v497, 0xDuLL);
    v133[7] = vrshrn_high_n_s32(vrshrn_n_s32(v472, 0xDuLL), v471, 0xDuLL);
    v457 = vdupq_n_s16(0x1ED8u);
    v458 = vdupq_n_s16(0xF778u);
    v459 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v448.i8, *v458.i8), *v451.i8, *v457.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v448, v458), v451, v457), 0xDuLL);
    v133[8] = vrshrn_high_n_s32(vrshrn_n_s32(v622, 0xDuLL), v621, 0xDuLL);
    v133[9] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v473, 0xDuLL);
    v460 = vdupq_n_s16(0x1E62u);
    v133[10] = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xDuLL), v523, 0xDuLL);
    v133[11] = v459;
    v133[12] = vrshrn_high_n_s32(vrshrn_n_s32(v571, 0xDuLL), v570, 0xDuLL);
    v133[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v449.i8, 0xA0A0A0A0A0A0A0ALL), *v450.i8, *v460.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v449, v449, 8uLL), 0xA0A0A0A0A0A0A0ALL), v450, v460), 0xDuLL);
    v133[14] = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v525, 0xDuLL);
    v133[15] = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v478, 0xDuLL);
    v133[16] = vrshrn_high_n_s32(vrshrn_n_s32(v629, 0xDuLL), v627, 0xDuLL);
    v133[17] = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v482, 0xDuLL);
    v133[18] = vrshrn_high_n_s32(vrshrn_n_s32(v546, 0xDuLL), v544, 0xDuLL);
    v133[19] = vrshrn_high_n_s32(vrshrn_n_s32(v513, 0xDuLL), v468, 0xDuLL);
    v133[20] = vrshrn_high_n_s32(vrshrn_n_s32(v581, 0xDuLL), v579, 0xDuLL);
    v133[21] = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v470, 0xDuLL);
    v133[22] = vrshrn_high_n_s32(vrshrn_n_s32(v542, 0xDuLL), v538, 0xDuLL);
    v133[23] = vrshrn_high_n_s32(vrshrn_n_s32(v485, 0xDuLL), v477, 0xDuLL);
    v133[24] = vrshrn_high_n_s32(vrshrn_n_s32(v614, 0xDuLL), v613, 0xDuLL);
    v133[25] = vrshrn_high_n_s32(vrshrn_n_s32(v476, 0xDuLL), v474, 0xDuLL);
    v133[26] = vrshrn_high_n_s32(vrshrn_n_s32(v532, 0xDuLL), v527, 0xDuLL);
    v133[27] = vrshrn_high_n_s32(vrshrn_n_s32(v510, 0xDuLL), v508, 0xDuLL);
    v133[28] = vrshrn_high_n_s32(vrshrn_n_s32(v595, 0xDuLL), v594, 0xDuLL);
    v133[29] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v466, 0xDuLL);
    v133[30] = vrshrn_high_n_s32(vrshrn_n_s32(v556, 0xDuLL), v555, 0xDuLL);
    v133[31] = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xDuLL), v560, 0xDuLL);
    v133[32] = v446;
    v133[33] = vrshrn_high_n_s32(vrshrn_n_s32(v569, 0xDuLL), v565, 0xDuLL);
    v133[34] = vrshrn_high_n_s32(vrshrn_n_s32(v558, 0xDuLL), v557, 0xDuLL);
    v133[35] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v433.i8, *v437.i8), *v434.i8, *v436.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v433, v437), v434, v436), 0xDuLL);
    v133[36] = vrshrn_high_n_s32(vrshrn_n_s32(v250, 0xDuLL), v251, 0xDuLL);
    v133[37] = vrshrn_high_n_s32(vrshrn_n_s32(v599, 0xDuLL), v597, 0xDuLL);
    v133[38] = vrshrn_high_n_s32(vrshrn_n_s32(v530, 0xDuLL), v528, 0xDuLL);
    v133[39] = vrshrn_high_n_s32(vrshrn_n_s32(v496, 0xDuLL), v494, 0xDuLL);
    v133[41] = vrshrn_high_n_s32(vrshrn_n_s32(v585, 0xDuLL), v583, 0xDuLL);
    v133[42] = vrshrn_high_n_s32(vrshrn_n_s32(v540, 0xDuLL), v536, 0xDuLL);
    v133[40] = vrshrn_high_n_s32(vrshrn_n_s32(v616, 0xDuLL), v615, 0xDuLL);
    v133[45] = vrshrn_high_n_s32(vrshrn_n_s32(v611, 0xDuLL), v609, 0xDuLL);
    v133[46] = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xDuLL), v533, 0xDuLL);
    v133[43] = vrshrn_high_n_s32(vrshrn_n_s32(v522, 0xDuLL), v518, 0xDuLL);
    v133[44] = vrshrn_high_n_s32(vrshrn_n_s32(v577, 0xDuLL), v575, 0xDuLL);
    v133[47] = vrshrn_high_n_s32(vrshrn_n_s32(v492, 0xDuLL), v489, 0xDuLL);
    v461 = vdupq_n_s16(0xE19Eu);
    v133[49] = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v487, 0xDuLL);
    v133[48] = vrshrn_high_n_s32(vrshrn_n_s32(v625, 0xDuLL), v623, 0xDuLL);
    v133[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v449.i8, *v461.i8), *v450.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v450, v450, 8uLL), 0xA0A0A0A0A0A0A0ALL), v449, v461), 0xDuLL);
    v133[52] = vrshrn_high_n_s32(vrshrn_n_s32(v573, 0xDuLL), v572, 0xDuLL);
    v133[53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v448.i8, *v457.i8), *v451.i8, v464), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v451, v451, 8uLL), v464), v448, v457), 0xDuLL);
    v133[54] = vrshrn_high_n_s32(vrshrn_n_s32(v550, 0xDuLL), v548, 0xDuLL);
    v133[55] = vrshrn_high_n_s32(vrshrn_n_s32(v589, 0xDuLL), v587, 0xDuLL);
    v133[56] = vrshrn_high_n_s32(vrshrn_n_s32(v620, 0xDuLL), v619, 0xDuLL);
    v133[57] = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v500, 0xDuLL);
    v133[58] = vrshrn_high_n_s32(vrshrn_n_s32(v554, 0xDuLL), v552, 0xDuLL);
    v133[59] = vrshrn_high_n_s32(vrshrn_n_s32(v603, 0xDuLL), v601, 0xDuLL);
    v133[60] = vrshrn_high_n_s32(vrshrn_n_s32(v618, 0xDuLL), v617, 0xDuLL);
    v133[61] = vrshrn_high_n_s32(vrshrn_n_s32(v607, 0xDuLL), v605, 0xDuLL);
    v133[62] = vrshrn_high_n_s32(vrshrn_n_s32(v593, 0xDuLL), v591, 0xDuLL);
    v462 = (v9 + 16 + 32 * v126);
    do
    {
      v463 = v133[v176];
      v462[-1] = vmovl_s16(*v463.i8);
      *v462 = vmovl_high_s16(v463);
      ++v176;
      v462 += 4;
    }

    while (v176 != 32);
    v127 = 0;
    v126 = 1;
    v128 = v633;
    v129 = v631;
  }

  while ((v131 & 1) != 0);

  bzero((v9 + 2048), 0x800uLL);
}

uint64_t sub_2779DD5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v467 = v10;
  v11 = 0;
  v851 = *MEMORY[0x277D85DE8];
  v12 = v644;
  v13 = 1;
  v14 = vdupq_n_s16(0x16A1u);
  v15 = vdupq_n_s16(0xE95Fu);
  v469 = vneg_f16(0x6161616161616161);
  v470 = vneg_f16(0x6565656565656565);
  v468 = vneg_f16(0x7777777777777777);
  v642 = v14;
  v640 = v15;
  do
  {
    v16 = 0;
    v17 = v13;
    v18 = (v8 + 2 * v11);
    do
    {
      v646[v16++] = *v18;
      v18 = (v18 + 2 * v9);
    }

    while (v16 != 64);
    v19 = 0;
    for (i = 63; i != 31; --i)
    {
      *&v826[v19 * 16] = vqaddq_s16(v646[v19], v646[i]);
      ++v19;
    }

    v21 = 32;
    do
    {
      *&v826[v21 * 16] = vqsubq_s16(v646[i--], v646[v21]);
      ++v21;
    }

    while (i != -1);
    v22 = 0;
    for (j = 496; j != 240; j -= 16)
    {
      *(&v786 + v22) = vqaddq_s16(*&v826[v22], *&v826[j]);
      v22 += 16;
    }

    v24 = 256;
    do
    {
      *(&v786 + v24) = vqsubq_s16(*&v826[j], *&v826[v24]);
      j -= 16;
      v24 += 16;
    }

    while (j != -16);
    v25 = 0;
    v825 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v835.i8, *v14.i8), *v850.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v835, v14), v850, v14), 0xDuLL);
    v824 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v836.i8, *v14.i8), *v849.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v836, v14), v849, v14), 0xDuLL);
    v810 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v835.i8, *v15.i8), *v850.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v835, v15), v850, v14), 0xDuLL);
    v811 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v836.i8, *v15.i8), *v849.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v836, v15), v849, v14), 0xDuLL);
    v823 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v837.i8, *v14.i8), *v848.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v837, v14), v848, v14), 0xDuLL);
    v822 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v838.i8, *v14.i8), *v847.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v838, v14), v847, v14), 0xDuLL);
    v812 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v837.i8, *v15.i8), *v848.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v837, v15), v848, v14), 0xDuLL);
    v813 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v838.i8, *v15.i8), *v847.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v838, v15), v847, v14), 0xDuLL);
    v821 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v839.i8, *v14.i8), *v846.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v839, v14), v846, v14), 0xDuLL);
    v820 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v840.i8, *v14.i8), *v845.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v840, v14), v845, v14), 0xDuLL);
    v814 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v839.i8, *v15.i8), *v846.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v839, v15), v846, v14), 0xDuLL);
    v815 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v840.i8, *v15.i8), *v845.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v840, v15), v845, v14), 0xDuLL);
    v819 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v841.i8, *v14.i8), *v844.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v841, v14), v844, v14), 0xDuLL);
    v818 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v842.i8, *v14.i8), *v843.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v842, v14), v843, v14), 0xDuLL);
    v816 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v841.i8, *v15.i8), *v844.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v841, v15), v844, v14), 0xDuLL);
    v817 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v842.i8, *v15.i8), *v843.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v842, v15), v843, v14), 0xDuLL);
    for (k = 240; k != 112; k -= 16)
    {
      *&v745[v25] = vqaddq_s16(*(&v786 + v25), *(&v786 + k));
      v25 += 16;
    }

    v27 = 128;
    for (m = 112; m != -16; m -= 16)
    {
      *&v745[v27] = vqsubq_s16(*(&v786 + m), *(&v786 + v27));
      v27 += 16;
    }

    v754 = v794;
    v755 = v795;
    v756 = v796;
    v757 = v797;
    v765 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v798.i8, *v14.i8), *v805.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v798, v14), v805, v14), 0xDuLL);
    v764 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v799.i8, *v14.i8), *v804.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v799, v14), v804, v14), 0xDuLL);
    v758 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v798.i8, *v15.i8), *v805.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v798, v15), v805, v14), 0xDuLL);
    v759 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v799.i8, *v15.i8), *v804.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v799, v15), v804, v14), 0xDuLL);
    v763 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v800.i8, *v14.i8), *v803.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v800, v14), v803, v14), 0xDuLL);
    v762 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v801.i8, *v14.i8), *v802.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v801, v14), v802, v14), 0xDuLL);
    v760 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v800.i8, *v15.i8), *v803.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v800, v15), v803, v14), 0xDuLL);
    v761 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v801.i8, *v15.i8), *v802.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v801, v15), v802, v14), 0xDuLL);
    v766 = v806;
    v767 = v807;
    v768 = v808;
    v769 = v809;
    v29 = 512;
    for (n = 752; n != 624; n -= 16)
    {
      *&v745[v29] = vqaddq_s16(*&v826[v29], *(&v786 + n));
      v29 += 16;
    }

    v31 = 640;
    do
    {
      *&v745[v31] = vqsubq_s16(*&v826[n], *(&v786 + v31));
      n -= 16;
      v31 += 16;
    }

    while (n != 496);
    v32 = 768;
    for (ii = 1008; ii != 880; ii -= 16)
    {
      *&v745[v32] = vqsubq_s16(*&v826[ii], *(&v786 + v32));
      v32 += 16;
    }

    v34 = 880;
    for (jj = 896; jj != 1024; jj += 16)
    {
      *&v745[jj] = vqaddq_s16(*&v826[jj], *(&v786 + v34));
      v34 -= 16;
    }

    v36 = 0;
    for (kk = 112; kk != 48; kk -= 16)
    {
      *(&v701 + v36) = vqaddq_s16(*&v745[v36], *&v745[kk]);
      v36 += 16;
    }

    v38 = 64;
    do
    {
      *(&v701 + v38) = vqsubq_s16(*&v745[kk], *&v745[v38]);
      kk -= 16;
      v38 += 16;
    }

    while (kk != -16);
    v712 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v748.i8, *v14.i8), *v751.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v748, v14), v751, v14), 0xDuLL);
    v711 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v749.i8, *v14.i8), *v750.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v749, v14), v750, v14), 0xDuLL);
    v709 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v748.i8, *v15.i8), *v751.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v748, v15), v751, v14), 0xDuLL);
    v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v749.i8, *v15.i8), *v750.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v749, v15), v750, v14), 0xDuLL);
    v39 = 256;
    for (mm = 368; mm != 304; mm -= 16)
    {
      *(&v701 + v39) = vqaddq_s16(*&v745[v39], *&v745[mm]);
      v39 += 16;
    }

    v41 = 320;
    do
    {
      *(&v701 + v41) = vqsubq_s16(*&v745[mm], *&v745[v41]);
      mm -= 16;
      v41 += 16;
    }

    while (mm != 240);
    v42 = 384;
    for (nn = 496; nn != 432; nn -= 16)
    {
      *(&v701 + v42) = vqsubq_s16(*&v745[nn], *&v745[v42]);
      v42 += 16;
    }

    v44 = 432;
    for (i1 = 448; i1 != 512; i1 += 16)
    {
      *(&v701 + i1) = vqaddq_s16(*&v745[i1], *&v745[v44]);
      v44 -= 16;
    }

    v46 = vdupq_n_s16(0x1D90u);
    v47 = vdupq_n_s16(0xC3Fu);
    v48 = vdupq_n_s16(0xE270u);
    v744 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v770.i8, *v47.i8), *v785.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v770, v47), v785, v46), 0xDuLL);
    v743 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v771.i8, *v47.i8), *v784.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v771, v47), v784, v46), 0xDuLL);
    v729 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v770.i8, *v48.i8), *v785.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v770, v48), v785, v47), 0xDuLL);
    v730 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v771.i8, *v48.i8), *v784.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v771, v48), v784, v47), 0xDuLL);
    v742 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v772.i8, *v47.i8), *v783.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v772, v47), v783, v46), 0xDuLL);
    v741 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v773.i8, *v47.i8), *v782.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v773, v47), v782, v46), 0xDuLL);
    v731 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v772.i8, *v48.i8), *v783.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v772, v48), v783, v47), 0xDuLL);
    v732 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v773.i8, *v48.i8), *v782.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v773, v48), v782, v47), 0xDuLL);
    v49 = vdupq_n_s16(0xF3C1u);
    v740 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v774.i8, *v48.i8), *v781.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v774, v48), v781, v47), 0xDuLL);
    v739 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v775.i8, *v48.i8), *v780.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v775, v48), v780, v47), 0xDuLL);
    v733 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v774.i8, *v49.i8), *v781.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v774, v49), v781, v48), 0xDuLL);
    v734 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v775.i8, *v49.i8), *v780.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v775, v49), v780, v48), 0xDuLL);
    v738 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v776.i8, *v48.i8), *v779.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v776, v48), v779, v47), 0xDuLL);
    v737 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v777.i8, *v48.i8), *v778.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v777, v48), v778, v47), 0xDuLL);
    v735 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v776.i8, *v49.i8), *v779.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v776, v49), v779, v48), 0xDuLL);
    v736 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v777.i8, *v49.i8), *v778.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v777, v49), v778, v48), 0xDuLL);
    v647 = vqaddq_s16(v701, v704);
    v648 = vqaddq_s16(v702, v703);
    v649 = vqsubq_s16(v702, v703);
    v650 = vqsubq_s16(v701, v704);
    v652 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v706.i8, *v14.i8), *v707.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v706, v14), v707, v14), 0xDuLL);
    v651 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v706.i8, *v15.i8), *v707.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v706, v15), v707, v14), 0xDuLL);
    v653 = vqaddq_s16(v746, v710);
    v654 = vqaddq_s16(v747, v709);
    v655 = vqsubq_s16(v747, v709);
    v656 = vqsubq_s16(v746, v710);
    v657 = vqsubq_s16(v753, v711);
    v658 = vqsubq_s16(v752, v712);
    v659 = vqaddq_s16(v752, v712);
    v660 = vqaddq_s16(v753, v711);
    v668 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v715.i8, *v47.i8), *v726.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v715, v47), v726, v46), 0xDuLL);
    v667 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v716.i8, *v47.i8), *v725.i8, *v46.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v716, v47), v725, v46), 0xDuLL);
    v661 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v715.i8, *v48.i8), *v726.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v715, v48), v726, v47), 0xDuLL);
    v662 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v716.i8, *v48.i8), *v725.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v716, v48), v725, v47), 0xDuLL);
    v666 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v717.i8, *v48.i8), *v724.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v717, v48), v724, v47), 0xDuLL);
    v665 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v718.i8, *v48.i8), *v723.i8, *v47.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v718, v48), v723, v47), 0xDuLL);
    v663 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v717.i8, *v49.i8), *v724.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v717, v49), v724, v48), 0xDuLL);
    v664 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v718.i8, *v49.i8), *v723.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v718, v49), v723, v48), 0xDuLL);
    v50 = 512;
    for (i2 = 624; i2 != 560; i2 -= 16)
    {
      *(&v647 + v50) = vqaddq_s16(*&v745[v50], *(&v701 + i2));
      v50 += 16;
    }

    v52 = 576;
    do
    {
      *(&v647 + v52) = vqsubq_s16(*&v745[i2], *(&v701 + v52));
      i2 -= 16;
      v52 += 16;
    }

    while (i2 != 496);
    v53 = 640;
    for (i3 = 752; i3 != 688; i3 -= 16)
    {
      *(&v647 + v53) = vqsubq_s16(*&v745[i3], *(&v701 + v53));
      v53 += 16;
    }

    v55 = 688;
    for (i4 = 704; i4 != 768; i4 += 16)
    {
      *(&v647 + i4) = vqaddq_s16(*&v745[i4], *(&v701 + v55));
      v55 -= 16;
    }

    v57 = 768;
    for (i5 = 880; i5 != 816; i5 -= 16)
    {
      *(&v647 + v57) = vqaddq_s16(*&v745[v57], *(&v701 + i5));
      v57 += 16;
    }

    v59 = 832;
    do
    {
      *(&v647 + v59) = vqsubq_s16(*&v745[i5], *(&v701 + v59));
      i5 -= 16;
      v59 += 16;
    }

    while (i5 != 752);
    v60 = 896;
    for (i6 = 1008; i6 != 944; i6 -= 16)
    {
      *(&v647 + v60) = vqsubq_s16(*&v745[i6], *(&v701 + v60));
      v60 += 16;
    }

    v62 = 944;
    for (i7 = 960; i7 != 1024; i7 += 16)
    {
      *(&v647 + i7) = vqaddq_s16(*&v745[i7], *(&v701 + v62));
      v62 -= 16;
    }

    v64 = 0;
    v638 = vmlal_s16(vmull_s16(*v649.i8, *v47.i8), *v650.i8, *v46.i8);
    v636 = vmlal_high_s16(vmull_high_s16(v649, v47), v650, v46);
    v634 = vmlal_s16(vmull_s16(*v649.i8, *v48.i8), *v650.i8, *v47.i8);
    v633 = vmlal_high_s16(vmull_high_s16(v649, v48), v650, v47);
    v65 = vmlal_s16(vmull_s16(*v654.i8, *v47.i8), *v659.i8, *v46.i8);
    v66 = vmlal_high_s16(vmull_high_s16(v654, v47), v659, v46);
    v67 = vmlal_s16(vmull_s16(*v654.i8, *v48.i8), *v659.i8, *v47.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v654, v48), v659, v47);
    v69 = vqaddq_s16(v714, v661);
    v70 = vqsubq_s16(v714, v661);
    v71 = vqsubq_s16(v727, v668);
    v72 = vqaddq_s16(v727, v668);
    v73 = vdupq_n_s16(0x1F63u);
    v589 = vmlal_s16(vmull_s16(*v655.i8, *v48.i8), *v658.i8, *v47.i8);
    v74 = vdupq_n_s16(0x63Eu);
    v75 = vdupq_n_s16(0xE09Du);
    v587 = vmlal_high_s16(vmull_high_s16(v655, v48), v658, v47);
    v585 = vmlal_s16(vmull_s16(*v655.i8, *v49.i8), *v658.i8, *v48.i8);
    v581 = vmlal_high_s16(vmull_high_s16(v655, v49), v658, v48);
    v76 = vmlal_s16(vmull_s16(*v671.i8, *v74.i8), *v698.i8, *v73.i8);
    v77 = vmlal_high_s16(vmull_high_s16(v671, v74), v698, v73);
    v78 = vmlal_s16(vmull_s16(*v671.i8, *v75.i8), *v698.i8, *v74.i8);
    v79 = vmlal_high_s16(vmull_high_s16(v671, v75), v698, v74);
    v571 = vmlal_s16(vmull_s16(*v672.i8, *v74.i8), *v697.i8, *v73.i8);
    v569 = vmlal_high_s16(vmull_high_s16(v672, v74), v697, v73);
    v567 = vmlal_s16(vmull_s16(*v672.i8, *v75.i8), *v697.i8, *v74.i8);
    v565 = vmlal_high_s16(vmull_high_s16(v672, v75), v697, v74);
    v597 = vmlal_s16(vmull_s16(*v673.i8, *v75.i8), *v696.i8, *v74.i8);
    v595 = vmlal_high_s16(vmull_high_s16(v673, v75), v696, v74);
    v80 = vdupq_n_s16(0xF9C2u);
    v593 = vmlal_s16(vmull_s16(*v673.i8, *v80.i8), *v696.i8, *v75.i8);
    v591 = vmlal_high_s16(vmull_high_s16(v673, v80), v696, v75);
    v81 = vmlal_s16(vmull_s16(*v674.i8, *v75.i8), *v695.i8, *v74.i8);
    v82 = vmlal_high_s16(vmull_high_s16(v674, v75), v695, v74);
    v83 = vmlal_s16(vmull_s16(*v674.i8, *v80.i8), *v695.i8, *v75.i8);
    v84 = vmlal_high_s16(vmull_high_s16(v674, v80), v695, v75);
    v85 = vqaddq_s16(v705, v651);
    v86 = vqaddq_s16(v708, v652);
    v632 = vmlal_s16(vmull_s16(*v85.i8, *v74.i8), *v86.i8, *v73.i8);
    v631 = vmlal_high_s16(vmull_high_s16(v85, v74), v86, v73);
    v630 = vmlal_s16(vmull_s16(*v85.i8, *v75.i8), *v86.i8, *v74.i8);
    v629 = vmlal_high_s16(vmull_high_s16(v85, v75), v86, v74);
    v601 = vmlal_s16(vmull_s16(*v69.i8, *v74.i8), *v72.i8, *v73.i8);
    v599 = vmlal_high_s16(vmull_high_s16(v69, v74), v72, v73);
    v563 = vmlal_s16(vmull_s16(*v69.i8, *v75.i8), *v72.i8, *v74.i8);
    v561 = vmlal_high_s16(vmull_high_s16(v69, v75), v72, v74);
    v579 = vmlal_s16(vmull_s16(*v70.i8, *v75.i8), *v71.i8, *v74.i8);
    v577 = vmlal_high_s16(vmull_high_s16(v70, v75), v71, v74);
    v575 = vmlal_s16(vmull_s16(*v70.i8, *v80.i8), *v71.i8, *v75.i8);
    v573 = vmlal_high_s16(vmull_high_s16(v70, v80), v71, v75);
    v87 = vqsubq_s16(v705, v651);
    v88 = vqsubq_s16(v708, v652);
    v89 = vqsubq_s16(v719, v664);
    v90 = vqaddq_s16(v719, v664);
    v91 = vqaddq_s16(v722, v665);
    v92 = vqsubq_s16(v722, v665);
    v93 = vdupq_n_s16(0x11C7u);
    v94 = vdupq_n_s16(0x1A9Bu);
    v95 = vmlal_s16(vmull_s16(*v679.i8, *v94.i8), *v690.i8, *v93.i8);
    v96 = vmlal_high_s16(vmull_high_s16(v679, v94), v690, v93);
    v97 = vdupq_n_s16(0xEE39u);
    v98 = vmlal_s16(vmull_s16(*v679.i8, *v97.i8), *v690.i8, *v94.i8);
    v99 = vmlal_high_s16(vmull_high_s16(v679, v97), v690, v94);
    v611 = vmlal_s16(vmull_s16(*v680.i8, *v94.i8), *v689.i8, *v93.i8);
    v609 = vmlal_high_s16(vmull_high_s16(v680, v94), v689, v93);
    v607 = vmlal_s16(vmull_s16(*v680.i8, *v97.i8), *v689.i8, *v94.i8);
    v605 = vmlal_high_s16(vmull_high_s16(v680, v97), v689, v94);
    v619 = vmlal_s16(vmull_s16(*v681.i8, *v97.i8), *v688.i8, *v94.i8);
    v617 = vmlal_high_s16(vmull_high_s16(v681, v97), v688, v94);
    v615 = vmlal_s16(vmull_s16(*v681.i8, v470), *v688.i8, *v97.i8);
    v613 = vmlal_high_s16(vmull_s16(*&vextq_s8(v681, v681, 8uLL), v470), v688, v97);
    v100 = vmlal_s16(vmull_s16(*v682.i8, *v97.i8), *v687.i8, *v94.i8);
    v101 = vmlal_high_s16(vmull_high_s16(v682, v97), v687, v94);
    v102 = vmlal_s16(vmull_s16(*v682.i8, v470), *v687.i8, *v97.i8);
    v103 = vmlal_high_s16(vmull_s16(*&vextq_s8(v682, v682, 8uLL), v470), v687, v97);
    v626 = vmlal_s16(vmull_s16(*v87.i8, *v94.i8), *v88.i8, *v93.i8);
    v625 = vmlal_high_s16(vmull_high_s16(v87, v94), v88, v93);
    v624 = vmlal_s16(vmull_s16(*v87.i8, *v97.i8), *v88.i8, *v94.i8);
    v623 = vmlal_high_s16(vmull_high_s16(v87, v97), v88, v94);
    v559 = vmlal_s16(vmull_s16(*v89.i8, *v94.i8), *v92.i8, *v93.i8);
    v557 = vmlal_high_s16(vmull_high_s16(v89, v94), v92, v93);
    v555 = vmlal_s16(vmull_s16(*v89.i8, *v97.i8), *v92.i8, *v94.i8);
    v553 = vmlal_high_s16(vmull_high_s16(v89, v97), v92, v94);
    v547 = vmlal_s16(vmull_s16(*v90.i8, *v97.i8), *v91.i8, *v94.i8);
    v545 = vmlal_high_s16(vmull_high_s16(v90, v97), v91, v94);
    v541 = vmlal_high_s16(vmull_s16(*&vextq_s8(v90, v90, 8uLL), v470), v91, v97);
    v543 = vmlal_s16(vmull_s16(*v90.i8, v470), *v91.i8, *v97.i8);
    v104 = vrshrn_high_n_s32(vrshrn_n_s32(v65, 0xDuLL), v66, 0xDuLL);
    v105 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v106 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
    v107 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
    v108 = vqaddq_s16(v670, v107);
    v109 = vqsubq_s16(v670, v107);
    v110 = vqsubq_s16(v699, v106);
    v111 = vqaddq_s16(v699, v106);
    v112 = vqaddq_s16(v653, v105);
    v113 = vqaddq_s16(v660, v104);
    v114 = vdupq_n_s16(0x1FD9u);
    v115 = vdupq_n_s16(0x323u);
    v622 = vmlal_s16(vmull_s16(*v112.i8, *v115.i8), *v113.i8, *v114.i8);
    v621 = vmlal_high_s16(vmull_high_s16(v112, v115), v113, v114);
    v116 = vdupq_n_s16(0xE027u);
    v628 = vmlal_s16(vmull_s16(*v112.i8, *v116.i8), *v113.i8, *v115.i8);
    v627 = vmlal_high_s16(vmull_high_s16(v112, v116), v113, v115);
    v117 = vmlal_s16(vmull_s16(*v108.i8, *v115.i8), *v111.i8, *v114.i8);
    v118 = vmlal_high_s16(vmull_high_s16(v108, v115), v111, v114);
    v119 = vmlal_s16(vmull_s16(*v108.i8, *v116.i8), *v111.i8, *v115.i8);
    v120 = vmlal_high_s16(vmull_high_s16(v108, v116), v111, v115);
    v121 = vmlal_s16(vmull_s16(*v109.i8, *v116.i8), *v110.i8, *v115.i8);
    v122 = vmlal_high_s16(vmull_high_s16(v109, v116), v110, v115);
    v123 = vdupq_n_s16(0xFCDDu);
    v124 = vmlal_s16(vmull_s16(*v109.i8, *v123.i8), *v110.i8, *v116.i8);
    v125 = vmlal_high_s16(vmull_high_s16(v109, v123), v110, v116);
    v126 = vrshrn_high_n_s32(vrshrn_n_s32(v81, 0xDuLL), v82, 0xDuLL);
    v127 = vrshrn_high_n_s32(vrshrn_n_s32(v83, 0xDuLL), v84, 0xDuLL);
    v128 = vqsubq_s16(v653, v105);
    v129 = vqsubq_s16(v660, v104);
    v130 = vqsubq_s16(v675, v127);
    v131 = vqaddq_s16(v675, v127);
    v132 = vqaddq_s16(v694, v126);
    v133 = vdupq_n_s16(0x144Du);
    v134 = vdupq_n_s16(0x18BDu);
    v135 = vqsubq_s16(v694, v126);
    v136 = vmlal_s16(vmull_s16(*v128.i8, *v134.i8), *v129.i8, *v133.i8);
    v137 = vdupq_n_s16(0xEBB3u);
    v138 = vmlal_high_s16(vmull_high_s16(v128, v134), v129, v133);
    v604 = vmlal_s16(vmull_s16(*v128.i8, *v137.i8), *v129.i8, *v134.i8);
    v603 = vmlal_high_s16(vmull_high_s16(v128, v137), v129, v134);
    v491 = vmlal_s16(vmull_s16(*v130.i8, *v134.i8), *v135.i8, *v133.i8);
    v139 = vmlal_high_s16(vmull_high_s16(v130, v134), v135, v133);
    v140 = vmlal_s16(vmull_s16(*v130.i8, *v137.i8), *v135.i8, *v134.i8);
    v141 = vmlal_high_s16(vmull_high_s16(v130, v137), v135, v134);
    v505 = vmlal_s16(vmull_s16(*v131.i8, *v137.i8), *v132.i8, *v134.i8);
    v142 = vdupq_n_s16(0xE743u);
    v503 = vmlal_high_s16(vmull_high_s16(v131, v137), v132, v134);
    v501 = vmlal_s16(vmull_s16(*v131.i8, *v142.i8), *v132.i8, *v137.i8);
    v498 = vmlal_high_s16(vmull_high_s16(v131, v142), v132, v137);
    v143 = vrshrn_high_n_s32(vrshrn_n_s32(v589, 0xDuLL), v587, 0xDuLL);
    v144 = vrshrn_high_n_s32(vrshrn_n_s32(v585, 0xDuLL), v581, 0xDuLL);
    v145 = vrshrn_high_n_s32(vrshrn_n_s32(v95, 0xDuLL), v96, 0xDuLL);
    v146 = vrshrn_high_n_s32(vrshrn_n_s32(v98, 0xDuLL), v99, 0xDuLL);
    v147 = vqaddq_s16(v678, v146);
    v148 = vqsubq_s16(v678, v146);
    v149 = vqsubq_s16(v691, v145);
    v150 = vqaddq_s16(v691, v145);
    v151 = vqsubq_s16(v656, v144);
    v152 = vdupq_n_s16(0x1C39u);
    v153 = vdupq_n_s16(0xF16u);
    v154 = vqsubq_s16(v657, v143);
    v155 = vmlal_s16(vmull_s16(*v151.i8, *v153.i8), *v154.i8, *v152.i8);
    v156 = vdupq_n_s16(0xE3C7u);
    v590 = vmlal_high_s16(vmull_high_s16(v151, v153), v154, v152);
    v588 = vmlal_s16(vmull_s16(*v151.i8, *v156.i8), *v154.i8, *v153.i8);
    v586 = vmlal_high_s16(vmull_high_s16(v151, v156), v154, v153);
    v515 = vmlal_s16(vmull_s16(*v147.i8, *v153.i8), *v150.i8, *v152.i8);
    v513 = vmlal_high_s16(vmull_high_s16(v147, v153), v150, v152);
    v511 = vmlal_s16(vmull_s16(*v147.i8, *v156.i8), *v150.i8, *v153.i8);
    v509 = vmlal_high_s16(vmull_high_s16(v147, v156), v150, v153);
    v523 = vmlal_s16(vmull_s16(*v148.i8, *v156.i8), *v149.i8, *v153.i8);
    v157 = vdupq_n_s16(0xF0EAu);
    v521 = vmlal_high_s16(vmull_high_s16(v148, v156), v149, v153);
    v517 = vmlal_high_s16(vmull_high_s16(v148, v157), v149, v156);
    v519 = vmlal_s16(vmull_s16(*v148.i8, *v157.i8), *v149.i8, *v156.i8);
    v158 = vrshrn_high_n_s32(vrshrn_n_s32(v100, 0xDuLL), v101, 0xDuLL);
    v159 = vrshrn_high_n_s32(vrshrn_n_s32(v102, 0xDuLL), v103, 0xDuLL);
    v160 = vqaddq_s16(v656, v144);
    v161 = vqaddq_s16(v657, v143);
    v162 = vqsubq_s16(v683, v159);
    v163 = vqaddq_s16(v683, v159);
    v164 = vqaddq_s16(v686, v158);
    v165 = vdupq_n_s16(0x94Au);
    v166 = vqsubq_s16(v686, v158);
    v167 = vdupq_n_s16(0x1E9Fu);
    v168 = vmlal_s16(vmull_s16(*v160.i8, *v167.i8), *v161.i8, *v165.i8);
    v584 = vmlal_high_s16(vmull_high_s16(v160, v167), v161, v165);
    v169 = vdupq_n_s16(0xF6B6u);
    v583 = vmlal_s16(vmull_s16(*v160.i8, *v169.i8), *v161.i8, *v167.i8);
    v582 = vmlal_high_s16(vmull_high_s16(v160, v169), v161, v167);
    v531 = vmlal_s16(vmull_s16(*v162.i8, *v167.i8), *v166.i8, *v165.i8);
    v529 = vmlal_high_s16(vmull_high_s16(v162, v167), v166, v165);
    v527 = vmlal_s16(vmull_s16(*v162.i8, *v169.i8), *v166.i8, *v167.i8);
    v525 = vmlal_high_s16(vmull_high_s16(v162, v169), v166, v167);
    v170 = vmlal_s16(vmull_s16(*v163.i8, *v169.i8), *v164.i8, *v167.i8);
    v171 = vmlal_high_s16(vmull_high_s16(v163, v169), v164, v167);
    v172 = vmlal_s16(vmull_s16(*v163.i8, v469), *v164.i8, *v169.i8);
    v173 = vmlal_high_s16(vmull_s16(*&vextq_s8(v163, v163, 8uLL), v469), v164, v169);
    v174 = vrshrn_high_n_s32(vrshrn_n_s32(v601, 0xDuLL), v599, 0xDuLL);
    v175 = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xDuLL), v561, 0xDuLL);
    v176 = vqaddq_s16(v713, v662);
    v177 = vqaddq_s16(v728, v667);
    v178 = vqaddq_s16(v176, v175);
    v179 = vqaddq_s16(v177, v174);
    v180 = vdupq_n_s16(0x1FF6u);
    v181 = vdupq_n_s16(0x192u);
    v564 = vmlal_s16(vmull_s16(*v178.i8, *v181.i8), *v179.i8, *v180.i8);
    v562 = vmlal_high_s16(vmull_high_s16(v178, v181), v179, v180);
    v182 = vdupq_n_s16(0xE00Au);
    v602 = vmlal_s16(vmull_s16(*v178.i8, *v182.i8), *v179.i8, *v181.i8);
    v600 = vmlal_high_s16(vmull_high_s16(v178, v182), v179, v181);
    v183 = vqsubq_s16(v176, v175);
    v184 = vqsubq_s16(v177, v174);
    v185 = vdupq_n_s16(0x157Du);
    v186 = vdupq_n_s16(0x17B6u);
    v552 = vmlal_s16(vmull_s16(*v183.i8, *v186.i8), *v184.i8, *v185.i8);
    v551 = vmlal_high_s16(vmull_high_s16(v183, v186), v184, v185);
    v187 = vdupq_n_s16(0xEA83u);
    v549 = vmlal_high_s16(vmull_high_s16(v183, v187), v184, v186);
    v550 = vmlal_s16(vmull_s16(*v183.i8, *v187.i8), *v184.i8, *v186.i8);
    v188 = vqsubq_s16(v713, v662);
    v189 = vqsubq_s16(v728, v667);
    v190 = vrshrn_high_n_s32(vrshrn_n_s32(v579, 0xDuLL), v577, 0xDuLL);
    v191 = vrshrn_high_n_s32(vrshrn_n_s32(v575, 0xDuLL), v573, 0xDuLL);
    v192 = vqsubq_s16(v188, v191);
    v193 = vqsubq_s16(v189, v190);
    v194 = vdupq_n_s16(0x1CEDu);
    v195 = vdupq_n_s16(0xDAFu);
    v576 = vmlal_s16(vmull_s16(*v192.i8, *v195.i8), *v193.i8, *v194.i8);
    v574 = vmlal_high_s16(vmull_high_s16(v192, v195), v193, v194);
    v196 = vdupq_n_s16(0xE313u);
    v580 = vmlal_s16(vmull_s16(*v192.i8, *v196.i8), *v193.i8, *v195.i8);
    v578 = vmlal_high_s16(vmull_high_s16(v192, v196), v193, v195);
    v197 = vqaddq_s16(v188, v191);
    v198 = vqaddq_s16(v189, v190);
    v199 = vdupq_n_s16(0xF538u);
    v200 = vmull_s16(*v197.i8, *v199.i8);
    v201 = vmull_high_s16(v197, v199);
    v202 = vdupq_n_s16(0x1E21u);
    v537 = vmlal_high_s16(v201, v198, v202);
    v538 = vmlal_s16(v200, *v198.i8, *v202.i8);
    v203 = vrshrn_high_n_s32(vrshrn_n_s32(v559, 0xDuLL), v557, 0xDuLL);
    v204 = vrshrn_high_n_s32(vrshrn_n_s32(v555, 0xDuLL), v553, 0xDuLL);
    v205 = vqsubq_s16(v720, v663);
    v206 = vqsubq_s16(v721, v666);
    v207 = vqaddq_s16(v205, v204);
    v208 = vqaddq_s16(v206, v203);
    v209 = vdupq_n_s16(0x1F0Au);
    v210 = vdupq_n_s16(0x7C6u);
    v534 = vmlal_s16(vmull_s16(*v207.i8, *v210.i8), *v208.i8, *v209.i8);
    v533 = vmlal_high_s16(vmull_high_s16(v207, v210), v208, v209);
    v211 = vdupq_n_s16(0xE0F6u);
    v560 = vmlal_s16(vmull_s16(*v207.i8, *v211.i8), *v208.i8, *v210.i8);
    v558 = vmlal_high_s16(vmull_high_s16(v207, v211), v208, v210);
    v212 = vqsubq_s16(v205, v204);
    v213 = vqsubq_s16(v206, v203);
    v214 = vdupq_n_s16(0x1074u);
    v215 = vdupq_n_s16(0x1B73u);
    v556 = vmlal_s16(vmull_s16(*v212.i8, *v215.i8), *v213.i8, *v214.i8);
    v554 = vmlal_high_s16(vmull_high_s16(v212, v215), v213, v214);
    v216 = vdupq_n_s16(0xEF8Cu);
    v539 = vmlal_high_s16(vmull_high_s16(v212, v216), v213, v215);
    v540 = vmlal_s16(vmull_s16(*v212.i8, *v216.i8), *v213.i8, *v215.i8);
    v217 = vqaddq_s16(v720, v663);
    v218 = vqaddq_s16(v721, v666);
    v219 = vrshrn_high_n_s32(vrshrn_n_s32(v547, 0xDuLL), v545, 0xDuLL);
    v220 = vrshrn_high_n_s32(vrshrn_n_s32(v543, 0xDuLL), v541, 0xDuLL);
    v221 = vqsubq_s16(v217, v220);
    v222 = vqsubq_s16(v218, v219);
    v223 = vdupq_n_s16(0x19B4u);
    v224 = vdupq_n_s16(0x1310u);
    v536 = vmlal_s16(vmull_s16(*v221.i8, *v224.i8), *v222.i8, *v223.i8);
    v535 = vmlal_high_s16(vmull_high_s16(v221, v224), v222, v223);
    v225 = vdupq_n_s16(0xE64Cu);
    v542 = vmlal_high_s16(vmull_high_s16(v221, v225), v222, v224);
    v544 = vmlal_s16(vmull_s16(*v221.i8, *v225.i8), *v222.i8, *v224.i8);
    v226 = vqaddq_s16(v217, v220);
    v227 = vqaddq_s16(v218, v219);
    v228 = vdupq_n_s16(0x4B2u);
    v229 = vdupq_n_s16(0x1FA7u);
    v548 = vmlal_s16(vmull_s16(*v226.i8, *v229.i8), *v227.i8, *v228.i8);
    v546 = vmlal_high_s16(vmull_high_s16(v226, v229), v227, v228);
    v230 = vdupq_n_s16(0xFB4Eu);
    v507 = vmlal_high_s16(vmull_high_s16(v226, v230), v227, v229);
    v508 = vmlal_s16(vmull_s16(*v226.i8, *v230.i8), *v227.i8, *v229.i8);
    v231 = vrshrn_high_n_s32(vrshrn_n_s32(v571, 0xDuLL), v569, 0xDuLL);
    v232 = vrshrn_high_n_s32(vrshrn_n_s32(v567, 0xDuLL), v565, 0xDuLL);
    v490 = vrshrn_high_n_s32(vrshrn_n_s32(v117, 0xDuLL), v118, 0xDuLL);
    v493 = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
    v494 = vqaddq_s16(v669, v232);
    v489 = vqaddq_s16(v700, v231);
    v233 = vqsubq_s16(v494, v493);
    v234 = vqsubq_s16(v489, v490);
    v235 = vdupq_n_s16(0x1611u);
    v236 = vdupq_n_s16(0x172Du);
    v572 = vmlal_s16(vmull_s16(*v233.i8, *v236.i8), *v234.i8, *v235.i8);
    v570 = vmlal_high_s16(vmull_high_s16(v233, v236), v234, v235);
    v237 = vdupq_n_s16(0xE9EFu);
    v568 = vmlal_s16(vmull_s16(*v233.i8, *v237.i8), *v234.i8, *v236.i8);
    v566 = vmlal_high_s16(vmull_high_s16(v233, v237), v234, v236);
    v238 = vqsubq_s16(v669, v232);
    v239 = vqsubq_s16(v700, v231);
    v240 = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
    v241 = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xDuLL), v125, 0xDuLL);
    v242 = vqsubq_s16(v238, v241);
    v243 = vqsubq_s16(v239, v240);
    v244 = vdupq_n_s16(0x1D41u);
    v245 = vdupq_n_s16(0xCF8u);
    v488 = vmlal_s16(vmull_s16(*v242.i8, *v245.i8), *v243.i8, *v244.i8);
    v487 = vmlal_high_s16(vmull_high_s16(v242, v245), v243, v244);
    v246 = vdupq_n_s16(0xE2BFu);
    v500 = vmlal_s16(vmull_s16(*v242.i8, *v246.i8), *v243.i8, *v245.i8);
    v497 = vmlal_high_s16(vmull_high_s16(v242, v246), v243, v245);
    v247 = vqaddq_s16(v238, v241);
    v248 = vqaddq_s16(v239, v240);
    v249 = vdupq_n_s16(0xB84u);
    v250 = vdupq_n_s16(0x1DDBu);
    v496 = vmlal_s16(vmull_s16(*v247.i8, *v250.i8), *v248.i8, *v249.i8);
    v495 = vmlal_high_s16(vmull_high_s16(v247, v250), v248, v249);
    v251 = vdupq_n_s16(0xF47Cu);
    v485 = vmlal_high_s16(vmull_high_s16(v247, v251), v248, v250);
    v486 = vmlal_s16(vmull_s16(*v247.i8, *v251.i8), *v248.i8, *v250.i8);
    v252 = vrshrn_high_n_s32(vrshrn_n_s32(v597, 0xDuLL), v595, 0xDuLL);
    v253 = vrshrn_high_n_s32(vrshrn_n_s32(v593, 0xDuLL), v591, 0xDuLL);
    v254 = vrshrn_high_n_s32(vrshrn_n_s32(v491, 0xDuLL), v139, 0xDuLL);
    v255 = vrshrn_high_n_s32(vrshrn_n_s32(v140, 0xDuLL), v141, 0xDuLL);
    v256 = vqsubq_s16(v676, v253);
    v257 = vqsubq_s16(v693, v252);
    v258 = vqaddq_s16(v256, v255);
    v259 = vqaddq_s16(v257, v254);
    v260 = vdupq_n_s16(0x1F39u);
    v261 = vdupq_n_s16(0x703u);
    v492 = vmlal_s16(vmull_s16(*v258.i8, *v261.i8), *v259.i8, *v260.i8);
    v484 = vmlal_high_s16(vmull_high_s16(v258, v261), v259, v260);
    v262 = vdupq_n_s16(0xE0C7u);
    v598 = vmlal_s16(vmull_s16(*v258.i8, *v262.i8), *v259.i8, *v261.i8);
    v596 = vmlal_high_s16(vmull_high_s16(v258, v262), v259, v261);
    v263 = vqsubq_s16(v256, v255);
    v264 = vqsubq_s16(v257, v254);
    v265 = vdupq_n_s16(0x111Fu);
    v266 = vdupq_n_s16(0x1B09u);
    v594 = vmlal_s16(vmull_s16(*v263.i8, *v266.i8), *v264.i8, *v265.i8);
    v592 = vmlal_high_s16(vmull_high_s16(v263, v266), v264, v265);
    v267 = vdupq_n_s16(0xEEE1u);
    v482 = vmlal_high_s16(vmull_high_s16(v263, v267), v264, v266);
    v483 = vmlal_s16(vmull_s16(*v263.i8, *v267.i8), *v264.i8, *v266.i8);
    v268 = vqaddq_s16(v676, v253);
    v269 = vqaddq_s16(v693, v252);
    v270 = vrshrn_high_n_s32(vrshrn_n_s32(v505, 0xDuLL), v503, 0xDuLL);
    v271 = vrshrn_high_n_s32(vrshrn_n_s32(v501, 0xDuLL), v498, 0xDuLL);
    v272 = vqsubq_s16(v268, v271);
    v273 = vqsubq_s16(v269, v270);
    v274 = vdupq_n_s16(0x1A2Au);
    v275 = vdupq_n_s16(0x126Du);
    v481 = vmlal_s16(vmull_s16(*v272.i8, *v275.i8), *v273.i8, *v274.i8);
    v480 = vmlal_high_s16(vmull_high_s16(v272, v275), v273, v274);
    v276 = vdupq_n_s16(0xE5D6u);
    v499 = vmlal_high_s16(vmull_high_s16(v272, v276), v273, v275);
    v277 = vqaddq_s16(v268, v271);
    v278 = vqaddq_s16(v269, v270);
    v279 = vdupq_n_s16(0x579u);
    v280 = vdupq_n_s16(0x1F87u);
    v506 = vmlal_s16(vmull_s16(*v277.i8, *v280.i8), *v278.i8, *v279.i8);
    v502 = vmlal_s16(vmull_s16(*v272.i8, *v276.i8), *v273.i8, *v275.i8);
    v504 = vmlal_high_s16(vmull_high_s16(v277, v280), v278, v279);
    v281 = vdupq_n_s16(0xFA87u);
    v478 = vmlal_high_s16(vmull_high_s16(v277, v281), v278, v280);
    v479 = vmlal_s16(vmull_s16(*v277.i8, *v281.i8), *v278.i8, *v280.i8);
    v282 = vrshrn_high_n_s32(vrshrn_n_s32(v611, 0xDuLL), v609, 0xDuLL);
    v283 = vrshrn_high_n_s32(vrshrn_n_s32(v607, 0xDuLL), v605, 0xDuLL);
    v284 = vrshrn_high_n_s32(vrshrn_n_s32(v515, 0xDuLL), v513, 0xDuLL);
    v285 = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xDuLL), v509, 0xDuLL);
    v286 = vqaddq_s16(v677, v283);
    v287 = vqaddq_s16(v692, v282);
    v288 = vqaddq_s16(v286, v285);
    v289 = vqaddq_s16(v287, v284);
    v290 = vdupq_n_s16(0x1FC2u);
    v291 = vdupq_n_s16(0x3EBu);
    v512 = vmlal_s16(vmull_s16(*v288.i8, *v291.i8), *v289.i8, *v290.i8);
    v510 = vmlal_high_s16(vmull_high_s16(v288, v291), v289, v290);
    v292 = vdupq_n_s16(0xE03Eu);
    v612 = vmlal_s16(vmull_s16(*v288.i8, *v292.i8), *v289.i8, *v291.i8);
    v610 = vmlal_high_s16(vmull_high_s16(v288, v292), v289, v291);
    v293 = vqsubq_s16(v286, v285);
    v294 = vqsubq_s16(v287, v284);
    v295 = vdupq_n_s16(0x13B0u);
    v296 = vdupq_n_s16(0x193Au);
    v608 = vmlal_s16(vmull_s16(*v293.i8, *v296.i8), *v294.i8, *v295.i8);
    v606 = vmlal_high_s16(vmull_high_s16(v293, v296), v294, v295);
    v297 = vdupq_n_s16(0xEC50u);
    v514 = vmlal_high_s16(vmull_high_s16(v293, v297), v294, v296);
    v516 = vmlal_s16(vmull_s16(*v293.i8, *v297.i8), *v294.i8, *v296.i8);
    v298 = vqsubq_s16(v677, v283);
    v299 = vqsubq_s16(v692, v282);
    v300 = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xDuLL), v521, 0xDuLL);
    v301 = vrshrn_high_n_s32(vrshrn_n_s32(v519, 0xDuLL), v517, 0xDuLL);
    v302 = vqsubq_s16(v298, v301);
    v303 = vqsubq_s16(v299, v300);
    v304 = vdupq_n_s16(0x1BD8u);
    v305 = vdupq_n_s16(0xFC6u);
    v477 = vmlal_s16(vmull_s16(*v302.i8, *v305.i8), *v303.i8, *v304.i8);
    v476 = vmlal_high_s16(vmull_high_s16(v302, v305), v303, v304);
    v306 = vdupq_n_s16(0xE428u);
    v520 = vmlal_high_s16(vmull_high_s16(v302, v306), v303, v305);
    v522 = vmlal_s16(vmull_s16(*v302.i8, *v306.i8), *v303.i8, *v305.i8);
    v307 = vqaddq_s16(v298, v301);
    v308 = vqaddq_s16(v299, v300);
    v309 = vdupq_n_s16(0x889u);
    v310 = vdupq_n_s16(0x1ED7u);
    v524 = vmlal_s16(vmull_s16(*v307.i8, *v310.i8), *v308.i8, *v309.i8);
    v518 = vmlal_high_s16(vmull_high_s16(v307, v310), v308, v309);
    v475 = vmlal_s16(vmull_s16(*v307.i8, v468), *v308.i8, *v310.i8);
    v474 = vmlal_high_s16(vmull_s16(*&vextq_s8(v307, v307, 8uLL), v468), v308, v310);
    v311 = vrshrn_high_n_s32(vrshrn_n_s32(v619, 0xDuLL), v617, 0xDuLL);
    v312 = vrshrn_high_n_s32(vrshrn_n_s32(v615, 0xDuLL), v613, 0xDuLL);
    v313 = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v529, 0xDuLL);
    v314 = vrshrn_high_n_s32(vrshrn_n_s32(v527, 0xDuLL), v525, 0xDuLL);
    v530 = vqsubq_s16(v684, v312);
    v532 = vqsubq_s16(v685, v311);
    v315 = vqsubq_s16(v530, v314);
    v316 = vqsubq_s16(v532, v313);
    v317 = vdupq_n_s16(0xE63u);
    v318 = vdupq_n_s16(0x1C95u);
    v620 = vmlal_s16(vmull_s16(*v315.i8, *v318.i8), *v316.i8, *v317.i8);
    v618 = vmlal_high_s16(vmull_high_s16(v315, v318), v316, v317);
    v319 = vdupq_n_s16(0xF19Du);
    v526 = vmlal_s16(vmull_s16(*v315.i8, *v319.i8), *v316.i8, *v318.i8);
    v472 = vmlal_high_s16(vmull_high_s16(v315, v319), v316, v318);
    v320 = vqaddq_s16(v684, v312);
    v321 = vqaddq_s16(v685, v311);
    v322 = vrshrn_high_n_s32(vrshrn_n_s32(v170, 0xDuLL), v171, 0xDuLL);
    v323 = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v173, 0xDuLL);
    v324 = vqsubq_s16(v320, v323);
    v325 = vdupq_n_s16(0x183Bu);
    v326 = vqsubq_s16(v321, v322);
    v327 = vdupq_n_s16(0x14E7u);
    v471 = vmlal_s16(vmull_s16(*v324.i8, *v327.i8), *v326.i8, *v325.i8);
    v328 = vmlal_high_s16(vmull_high_s16(v324, v327), v326, v325);
    v329 = vdupq_n_s16(0xE7C5u);
    v528 = vmlal_s16(vmull_s16(*v324.i8, *v329.i8), *v326.i8, *v327.i8);
    v473 = vmlal_high_s16(vmull_high_s16(v324, v329), v326, v327);
    v330 = vqaddq_s16(v320, v323);
    v331 = vdupq_n_s16(0x25Bu);
    v332 = vdupq_n_s16(0x1FEAu);
    v333 = vqaddq_s16(v321, v322);
    v616 = vmlal_s16(vmull_s16(*v330.i8, *v332.i8), *v333.i8, *v331.i8);
    v334 = vdupq_n_s16(0xFDA5u);
    v614 = vmlal_high_s16(vmull_high_s16(v330, v332), v333, v331);
    v335 = vmlal_s16(vmull_s16(*v330.i8, *v334.i8), *v333.i8, *v332.i8);
    v336 = vmlal_high_s16(vmull_high_s16(v330, v334), v333, v332);
    v337 = vqaddq_s16(v494, v493);
    v338 = vqaddq_s16(v489, v490);
    v339 = vdupq_n_s16(0x1FFEu);
    v340 = vmlal_s16(vmull_s16(*v337.i8, 0xC900C900C900C9), *v338.i8, *v339.i8);
    v319.i64[0] = 0xC900C900C900C9;
    v319.i64[1] = 0xC900C900C900C9;
    v341 = vmlal_high_s16(vmull_high_s16(v337, v319), v338, v339);
    v342 = vdupq_n_s16(0xE002u);
    v646[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v337.i8, *v342.i8), *v338.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v337, v342), v338, v319), 0xDuLL);
    v646[1] = vrshrn_high_n_s32(vrshrn_n_s32(v340, 0xDuLL), v341, 0xDuLL);
    v646[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v647.i8, *v642.i8), *v648.i8, *v642.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v647, v642), v648, v642), 0xDuLL);
    v343 = vqaddq_s16(v530, v314);
    v646[3] = vrshrn_high_n_s32(vrshrn_n_s32(v335, 0xDuLL), v336, 0xDuLL);
    v646[2] = vrshrn_high_n_s32(vrshrn_n_s32(v564, 0xDuLL), v562, 0xDuLL);
    v344 = vqaddq_s16(v532, v313);
    v646[5] = vrshrn_high_n_s32(vrshrn_n_s32(v512, 0xDuLL), v510, 0xDuLL);
    v646[4] = vrshrn_high_n_s32(vrshrn_n_s32(v622, 0xDuLL), v621, 0xDuLL);
    v646[7] = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v478, 0xDuLL);
    v646[6] = vrshrn_high_n_s32(vrshrn_n_s32(v508, 0xDuLL), v507, 0xDuLL);
    v646[9] = vrshrn_high_n_s32(vrshrn_n_s32(v492, 0xDuLL), v484, 0xDuLL);
    v646[8] = vrshrn_high_n_s32(vrshrn_n_s32(v632, 0xDuLL), v631, 0xDuLL);
    v646[11] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v474, 0xDuLL);
    v646[10] = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xDuLL), v533, 0xDuLL);
    v345 = vdupq_n_s16(0x1E63u);
    v646[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v343.i8, 0xA0A0A0A0A0A0A0ALL), *v344.i8, *v345.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v343, v343, 8uLL), 0xA0A0A0A0A0A0A0ALL), v344, v345), 0xDuLL);
    v646[12] = vrshrn_high_n_s32(vrshrn_n_s32(v583, 0xDuLL), v582, 0xDuLL);
    v646[15] = vrshrn_high_n_s32(vrshrn_n_s32(v486, 0xDuLL), v485, 0xDuLL);
    v646[14] = vrshrn_high_n_s32(vrshrn_n_s32(v538, 0xDuLL), v537, 0xDuLL);
    v646[17] = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v487, 0xDuLL);
    v646[16] = vrshrn_high_n_s32(vrshrn_n_s32(v638, 0xDuLL), v636, 0xDuLL);
    v646[19] = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v472, 0xDuLL);
    v646[18] = vrshrn_high_n_s32(vrshrn_n_s32(v576, 0xDuLL), v574, 0xDuLL);
    v646[21] = vrshrn_high_n_s32(vrshrn_n_s32(v477, 0xDuLL), v476, 0xDuLL);
    v646[20] = vrshrn_high_n_s32(vrshrn_n_s32(v155, 0xDuLL), v590, 0xDuLL);
    v646[23] = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v482, 0xDuLL);
    v646[22] = vrshrn_high_n_s32(vrshrn_n_s32(v540, 0xDuLL), v539, 0xDuLL);
    v646[25] = vrshrn_high_n_s32(vrshrn_n_s32(v481, 0xDuLL), v480, 0xDuLL);
    v646[24] = vrshrn_high_n_s32(vrshrn_n_s32(v624, 0xDuLL), v623, 0xDuLL);
    v646[27] = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v514, 0xDuLL);
    v646[26] = vrshrn_high_n_s32(vrshrn_n_s32(v536, 0xDuLL), v535, 0xDuLL);
    v646[29] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v328, 0xDuLL);
    v646[28] = vrshrn_high_n_s32(vrshrn_n_s32(v604, 0xDuLL), v603, 0xDuLL);
    v646[31] = vrshrn_high_n_s32(vrshrn_n_s32(v568, 0xDuLL), v566, 0xDuLL);
    v646[30] = vrshrn_high_n_s32(vrshrn_n_s32(v550, 0xDuLL), v549, 0xDuLL);
    v646[33] = vrshrn_high_n_s32(vrshrn_n_s32(v572, 0xDuLL), v570, 0xDuLL);
    v646[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v647.i8, *v640.i8), *v648.i8, *v642.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v647, v640), v648, v642), 0xDuLL);
    v646[35] = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xDuLL), v473, 0xDuLL);
    v646[34] = vrshrn_high_n_s32(vrshrn_n_s32(v552, 0xDuLL), v551, 0xDuLL);
    v646[37] = vrshrn_high_n_s32(vrshrn_n_s32(v608, 0xDuLL), v606, 0xDuLL);
    v646[36] = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xDuLL), v138, 0xDuLL);
    v646[39] = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v499, 0xDuLL);
    v646[38] = vrshrn_high_n_s32(vrshrn_n_s32(v544, 0xDuLL), v542, 0xDuLL);
    v646[41] = vrshrn_high_n_s32(vrshrn_n_s32(v594, 0xDuLL), v592, 0xDuLL);
    v646[40] = vrshrn_high_n_s32(vrshrn_n_s32(v626, 0xDuLL), v625, 0xDuLL);
    v646[43] = vrshrn_high_n_s32(vrshrn_n_s32(v522, 0xDuLL), v520, 0xDuLL);
    v646[42] = vrshrn_high_n_s32(vrshrn_n_s32(v556, 0xDuLL), v554, 0xDuLL);
    v646[45] = vrshrn_high_n_s32(vrshrn_n_s32(v620, 0xDuLL), v618, 0xDuLL);
    v646[44] = vrshrn_high_n_s32(vrshrn_n_s32(v588, 0xDuLL), v586, 0xDuLL);
    v646[47] = vrshrn_high_n_s32(vrshrn_n_s32(v500, 0xDuLL), v497, 0xDuLL);
    v646[46] = vrshrn_high_n_s32(vrshrn_n_s32(v580, 0xDuLL), v578, 0xDuLL);
    v346 = vdupq_n_s16(0xE19Du);
    v646[49] = vrshrn_high_n_s32(vrshrn_n_s32(v496, 0xDuLL), v495, 0xDuLL);
    v646[48] = vrshrn_high_n_s32(vrshrn_n_s32(v634, 0xDuLL), v633, 0xDuLL);
    v646[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v343.i8, *v346.i8), *v344.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v344, v344, 8uLL), 0xA0A0A0A0A0A0A0ALL), v343, v346), 0xDuLL);
    v646[52] = vrshrn_high_n_s32(vrshrn_n_s32(v168, 0xDuLL), v584, 0xDuLL);
    v646[53] = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xDuLL), v518, 0xDuLL);
    v646[54] = vrshrn_high_n_s32(vrshrn_n_s32(v560, 0xDuLL), v558, 0xDuLL);
    v646[55] = vrshrn_high_n_s32(vrshrn_n_s32(v598, 0xDuLL), v596, 0xDuLL);
    v646[56] = vrshrn_high_n_s32(vrshrn_n_s32(v630, 0xDuLL), v629, 0xDuLL);
    v646[57] = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xDuLL), v504, 0xDuLL);
    v646[58] = vrshrn_high_n_s32(vrshrn_n_s32(v548, 0xDuLL), v546, 0xDuLL);
    v646[59] = vrshrn_high_n_s32(vrshrn_n_s32(v612, 0xDuLL), v610, 0xDuLL);
    v646[60] = vrshrn_high_n_s32(vrshrn_n_s32(v628, 0xDuLL), v627, 0xDuLL);
    v646[61] = vrshrn_high_n_s32(vrshrn_n_s32(v616, 0xDuLL), v614, 0xDuLL);
    v646[62] = vrshrn_high_n_s32(vrshrn_n_s32(v602, 0xDuLL), v600, 0xDuLL);
    do
    {
      v646[v64] = vrshrq_n_s16(v646[v64], 2uLL);
      ++v64;
    }

    while (v64 != 64);
    v347 = v12 + 4;
    for (i8 = 112; i8 != 1136; i8 += 128)
    {
      v349 = *&v645[i8 + 1808];
      v350 = *&v645[i8 + 1824];
      v351 = vtrn1q_s16(v349, v350);
      v352 = vtrn2q_s16(v349, v350);
      v353 = *&v645[i8 + 1840];
      v354 = *&v645[i8 + 1856];
      v355 = vtrn1q_s16(v353, v354);
      v356 = vtrn2q_s16(v353, v354);
      v357 = *&v645[i8 + 1872];
      v358 = *&v645[i8 + 1888];
      v359 = vtrn1q_s16(v357, v358);
      v360 = vtrn2q_s16(v357, v358);
      v361 = *&v645[i8 + 1904];
      v362 = v646[i8 / 0x10];
      v363 = vtrn1q_s16(v361, v362);
      v364 = vtrn2q_s16(v361, v362);
      v365 = vtrn1q_s32(v351, v355);
      v366 = vtrn2q_s32(v351, v355);
      v367 = vtrn1q_s32(v352, v356);
      v368 = vtrn2q_s32(v352, v356);
      v369 = vtrn1q_s32(v359, v363);
      v370 = vtrn2q_s32(v359, v363);
      v371 = vzip2q_s64(v365, v369);
      v365.i64[1] = v369.i64[0];
      v372 = vtrn1q_s32(v360, v364);
      v373 = vtrn2q_s32(v360, v364);
      v374 = vzip2q_s64(v367, v372);
      v367.i64[1] = v372.i64[0];
      v375 = vzip2q_s64(v366, v370);
      v366.i64[1] = v370.i64[0];
      v370.i64[0] = v368.i64[0];
      v370.i64[1] = v373.i64[0];
      v347[-4] = v365;
      v347[-3] = v367;
      v347[-2] = v366;
      v347[-1] = v370;
      *v347 = v371;
      v347[1] = v374;
      v347[2] = v375;
      v347[3] = vzip2q_s64(v368, v373);
      v347 += 16;
    }

    v13 = 0;
    v12 = v645;
    v11 = 8;
    v14 = v642;
    v15 = v640;
  }

  while ((v17 & 1) != 0);
  v376 = 0;
  v377 = v467 + 1;
  v378 = vdupq_n_s16(0x16A0u);
  v379 = vdupq_n_s16(0xE960u);
  v380 = vdupq_n_s16(0x1D90u);
  v381 = vdupq_n_s16(0xC3Eu);
  v382 = vdupq_n_s16(0xE270u);
  v643 = vdupq_n_s16(0xF3C2u);
  v641 = vdupq_n_s16(0x1F62u);
  v383 = vdupq_n_s16(0x63Eu);
  v639 = vdupq_n_s16(0xE09Eu);
  v637 = vdupq_n_s16(0x11C8u);
  v384 = vdupq_n_s16(0x1A9Cu);
  v635 = vdupq_n_s16(0xEE38u);
  v385 = vdupq_n_s16(0x1FD8u);
  v386 = vdupq_n_s16(0x322u);
  v387 = vdupq_n_s16(0xE028u);
  v388 = vdupq_n_s16(0x144Cu);
  result = 2378;
  v390 = v644;
  do
  {
    v391 = 0;
    v392 = &v644[256 * v376];
    for (i9 = 240; i9 != 112; i9 -= 16)
    {
      *&v826[v391] = vqaddq_s16(*&v390[v391], *&v390[i9]);
      v391 += 16;
    }

    v394 = 128;
    do
    {
      *&v826[v394] = vqsubq_s16(*&v390[i9], *&v390[v394]);
      i9 -= 16;
      v394 += 16;
    }

    while (i9 != -16);
    v395 = 0;
    for (i10 = 112; i10 != 48; i10 -= 16)
    {
      *(&v786 + v395) = vqaddq_s16(*&v826[v395], *&v826[i10]);
      v395 += 16;
    }

    v397 = 64;
    do
    {
      *(&v786 + v397) = vqsubq_s16(*&v826[i10], *&v826[v397]);
      i10 -= 16;
      v397 += 16;
    }

    while (i10 != -16);
    v398 = 0;
    v399 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v378.i8), *v832.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v378), v832, v378), 0xDuLL);
    v400 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v379.i8), *v832.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v379), v832, v378), 0xDuLL);
    v401 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v378.i8), *v831.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v378), v831, v378), 0xDuLL);
    v402 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v379.i8), *v831.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v379), v831, v378), 0xDuLL);
    v403 = vqaddq_s16(v786, v789);
    v404 = vqaddq_s16(v787, v788);
    v405 = vqsubq_s16(v787, v788);
    v406 = vqsubq_s16(v786, v789);
    v407 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v791.i8, *v378.i8), *v792.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v791, v378), v792, v378), 0xDuLL);
    v408 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v791.i8, *v379.i8), *v792.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v791, v379), v792, v378), 0xDuLL);
    v409 = vqaddq_s16(v827, v402);
    v410 = vqaddq_s16(v828, v400);
    v411 = vqsubq_s16(v828, v400);
    v412 = vqsubq_s16(v827, v402);
    v413 = vqsubq_s16(v834, v401);
    v414 = vqsubq_s16(v833, v399);
    v415 = vqaddq_s16(v833, v399);
    v416 = vqaddq_s16(v834, v401);
    v417 = vmlal_s16(vmull_s16(*v404.i8, *v379.i8), *v403.i8, *v378.i8);
    v418 = vmlal_high_s16(vmull_high_s16(v404, v379), v403, v378);
    v419 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v404.i8, *v378.i8), *v403.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v404, v378), v403, v378), 0xDuLL);
    v420 = vrshrn_high_n_s32(vrshrn_n_s32(v417, 0xDuLL), v418, 0xDuLL);
    v421 = vmlal_s16(vmull_s16(*v405.i8, *v381.i8), *v406.i8, *v380.i8);
    v422 = vmlal_high_s16(vmull_high_s16(v405, v381), v406, v380);
    v423 = vmlal_s16(vmull_s16(*v405.i8, *v382.i8), *v406.i8, *v381.i8);
    v424 = vmlal_high_s16(vmull_high_s16(v405, v382), v406, v381);
    v425 = vrshrn_high_n_s32(vrshrn_n_s32(v421, 0xDuLL), v422, 0xDuLL);
    v426 = vrshrn_high_n_s32(vrshrn_n_s32(v423, 0xDuLL), v424, 0xDuLL);
    v427 = vqaddq_s16(v790, v408);
    v428 = vqsubq_s16(v790, v408);
    v429 = vqsubq_s16(v793, v407);
    v430 = vqaddq_s16(v793, v407);
    v431 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v410.i8, *v381.i8), *v415.i8, *v380.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v410, v381), v415, v380), 0xDuLL);
    v432 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v410.i8, *v382.i8), *v415.i8, *v381.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v410, v382), v415, v381), 0xDuLL);
    v433 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v411.i8, *v382.i8), *v414.i8, *v381.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v411, v382), v414, v381), 0xDuLL);
    v434 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v411.i8, *v643.i8), *v414.i8, *v382.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v411, v643), v414, v382), 0xDuLL);
    v435 = vmlal_s16(vmull_s16(*v428.i8, *v635.i8), *v429.i8, *v384.i8);
    v436 = vmlal_high_s16(vmull_high_s16(v428, v635), v429, v384);
    v437 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v428.i8, *v384.i8), *v429.i8, *v637.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v428, v384), v429, v637), 0xDuLL);
    v438 = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v436, 0xDuLL);
    v439 = vqaddq_s16(v409, v432);
    v440 = vqsubq_s16(v409, v432);
    v441 = vqsubq_s16(v412, v434);
    v442 = vqaddq_s16(v412, v434);
    v443 = vqaddq_s16(v413, v433);
    v444 = vqsubq_s16(v413, v433);
    v445 = vqsubq_s16(v416, v431);
    v446 = vqaddq_s16(v416, v431);
    *v392 = v419;
    v392[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v439.i8, *v386.i8), *v446.i8, *v385.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v439, v386), v446, v385), 0xDuLL);
    v447 = vdupq_n_s16(0x18BCu);
    v448 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v439.i8, *v387.i8), *v446.i8, *v386.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v439, v387), v446, v386), 0xDuLL);
    v449 = vdupq_n_s16(0x1C38u);
    v450 = vdupq_n_s16(0xF16u);
    v392[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v427.i8, *v639.i8), *v430.i8, *v383.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v427, v639), v430, v383), 0xDuLL);
    v392[15] = v448;
    v451 = vmlal_s16(vmull_s16(*v441.i8, *v450.i8), *v444.i8, *v449.i8);
    v452 = vdupq_n_s16(0xE3C8u);
    v453 = vmlal_high_s16(vmull_high_s16(v441, v450), v444, v449);
    v454 = vmlal_s16(vmull_s16(*v441.i8, *v452.i8), *v444.i8, *v450.i8);
    v455 = vmull_high_s16(v441, v452);
    v456 = vdupq_n_s16(0x94Au);
    v457 = vmlal_high_s16(v455, v444, v450);
    v458 = vdupq_n_s16(0x1EA0u);
    v459 = vmlal_s16(vmull_s16(*v442.i8, *v458.i8), *v443.i8, *v456.i8);
    v460 = vmlal_high_s16(vmull_high_s16(v442, v458), v443, v456);
    v461 = vdupq_n_s16(0xF6B6u);
    v462 = vmlal_s16(vmull_s16(*v442.i8, *v461.i8), *v443.i8, *v458.i8);
    v463 = vmlal_high_s16(vmull_high_s16(v442, v461), v443, v458);
    v464 = vdupq_n_s16(0xEBB4u);
    v392[8] = v420;
    v392[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v440.i8, *v447.i8), *v445.i8, *v388.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v440, v447), v445, v388), 0xDuLL);
    v392[6] = v438;
    v392[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v440.i8, *v464.i8), *v445.i8, *v447.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v440, v464), v445, v447), 0xDuLL);
    v392[4] = v425;
    v392[5] = vrshrn_high_n_s32(vrshrn_n_s32(v451, 0xDuLL), v453, 0xDuLL);
    v392[10] = v437;
    v392[11] = vrshrn_high_n_s32(vrshrn_n_s32(v454, 0xDuLL), v457, 0xDuLL);
    v392[12] = v426;
    v392[13] = vrshrn_high_n_s32(vrshrn_n_s32(v459, 0xDuLL), v460, 0xDuLL);
    v392[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v427.i8, *v383.i8), *v430.i8, *v641.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v427, v383), v430, v641), 0xDuLL);
    v392[3] = vrshrn_high_n_s32(vrshrn_n_s32(v462, 0xDuLL), v463, 0xDuLL);
    v465 = v377;
    do
    {
      v466 = *&v390[v398];
      v465[-1] = vmovl_s16(*v466.i8);
      *v465 = vmovl_high_s16(v466);
      v398 += 16;
      v465 += 8;
    }

    while (v398 != 256);
    ++v376;
    v390 += 256;
    v377 += 2;
  }

  while (v376 != 4);
  return result;
}

uint64_t sub_2779DFDDC(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v7 = a1;
  v48 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    v11 = a5;
    memset(v39, 0, 64);
    sub_277A78D0C(a4, 0xAu, v39);
    return sub_277A78E90(v7, a2, v5, v39, v40.i32, v11);
  }

  v8 = off_28866DB20[a4];
  v9 = off_28866D820[a4];
  v10 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) != 0)
    {
LABEL_9:
      v7 = &a1[7 * a3];
      v5 = -a3;
      goto LABEL_10;
    }

    if (((1 << a4) & 0x80A0) != 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    if (a4 == 6)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v8)(&v7[8 * i], &v40, v5, 13, a5);
    for (j = 0; j != 128; j += 16)
    {
      *(&v40 + j) = vrshrq_n_s16(*(&v40 + j), 2uLL);
    }

    v15 = vtrn1q_s16(v40, v41);
    v16 = vtrn2q_s16(v40, v41);
    v17 = vtrn1q_s16(v42, v43);
    v18 = vtrn2q_s16(v42, v43);
    v19 = vtrn1q_s16(v44, v45);
    v20 = vtrn2q_s16(v44, v45);
    v21 = vtrn1q_s16(v46, v47);
    v22 = vtrn2q_s16(v46, v47);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v30 = vtrn1q_s32(v20, v22);
    v31 = vtrn2q_s32(v20, v22);
    v32 = vzip2q_s64(v25, v30);
    v25.i64[1] = v30.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v28.i64[0] = v26.i64[0];
    v28.i64[1] = v31.i64[0];
    v34 = &v39[8 * i];
    *v34 = v23;
    v34[1] = v25;
    v34[2] = v24;
    v34[3] = v28;
    v34[4] = v29;
    v34[5] = v32;
    v34[6] = v33;
    v34[7] = vzip2q_s64(v26, v31);
  }

  if (v10)
  {
    v35 = v39;
  }

  else
  {
    v36 = v39;
    for (k = 496; k != -16; k -= 16)
    {
      v38 = *v36++;
      *(&v40 + k) = v38;
    }

    v35 = &v40;
  }

  return (v9)(v35, a2, 8, 12);
}

int32x4_t sub_2779E0024(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  do
  {
    *&v9[v3] = vshlq_n_s16(*(a1 + v3), 2uLL);
    v3 += 16;
  }

  while (v3 != 512);
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = *&v9[v4];
    v7 = vmovl_s16(*v6.i8);
    result = vmovl_high_s16(v6);
    v5[-1] = v7;
    *v5 = result;
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 512);
  return result;
}

uint64_t sub_2779E00C4(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v266 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v202 = xmmword_277BEB8A0[16 * a4 - 157];
  v204 = xmmword_277BEB8A0[16 * a4 - 158];
  v206 = xmmword_277BEB8A0[16 * a4 - 155];
  v208 = xmmword_277BEB8A0[16 * a4 - 154];
  v209 = xmmword_277BEB8A0[16 * a4 - 153];
  v210 = xmmword_277BEB8A0[16 * a4 - 156];
  for (i = 496; i != 240; i -= 16)
  {
    *&v257[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 240;
  v9 = 256;
  do
  {
    *&v257[v9] = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *&v240[v10] = vqaddq_s16(*&v257[v10], *&v257[j]);
    v10 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v240[v13] = vqsubq_s16(*&v257[v12], *&v257[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  v256 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v6.i8, 1), *v265.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v6.i8, 1), v265, *v6.i8, 0), 0xDuLL);
  v255 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 1), *v264.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 1), v264, *v6.i8, 0), 0xDuLL);
  v249 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v6.i8, 2), *v265.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v6.i8, 2), v265, *v6.i8, 1), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 2), *v264.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 2), v264, *v6.i8, 1), 0xDuLL);
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 1), *v263.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 1), v263, *v6.i8, 0), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 1), *v262.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 1), v262, *v6.i8, 0), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 2), *v263.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 2), v263, *v6.i8, 1), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 2), *v262.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 2), v262, *v6.i8, 1), 0xDuLL);
  for (k = 112; k != 48; k -= 16)
  {
    *(&v212 + v14) = vqaddq_s16(*&v240[v14], *&v240[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v212 + v17) = vqsubq_s16(*&v240[v16], *&v240[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v223 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v243.i8, *v6.i8, 1), *v246.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v243, *v6.i8, 1), v246, *v6.i8, 0), 0xDuLL);
  v222 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 1), *v245.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 1), v245, *v6.i8, 0), 0xDuLL);
  v18 = 368;
  v220 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v243.i8, *v6.i8, 2), *v246.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v243, *v6.i8, 2), v246, *v6.i8, 1), 0xDuLL);
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 2), *v245.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 2), v245, *v6.i8, 1), 0xDuLL);
  v19 = 256;
  do
  {
    *(&v212 + v19) = vqaddq_s16(*&v257[v19], *&v240[v18]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v212 + v20) = vqsubq_s16(*&v257[v18], *&v240[v20]);
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v212 + v22) = vqsubq_s16(*&v257[v21], *&v240[v22]);
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v212 + v23) = vqaddq_s16(*&v257[v23], *&v240[v24]);
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v25 = 0;
  v26 = vqaddq_s16(v212, v215);
  v27 = vqaddq_s16(v213, v214);
  v28 = vqsubq_s16(v213, v214);
  v29 = vqsubq_s16(v212, v215);
  v30 = vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v6.i8, 2), *v218.i8, *v6.i8, 1);
  v31 = vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v6.i8, 2), v218, *v6.i8, 1);
  v32 = vqaddq_s16(v242, v220);
  v33 = vqsubq_s16(v242, v220);
  v34 = vqsubq_s16(v247, v223);
  v35 = vqaddq_s16(v247, v223);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v6, 5), *v237.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v6, 5), v237, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v6, 6), *v237.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v6, 6), v237, v6, 5);
  v176 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 5), *v236.i8, v6, 4);
  v173 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 5), v236, v6, 4);
  v169 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 6), v236, v6, 5);
  v171 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 6), *v236.i8, v6, 5);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 6), *v235.i8, v6, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 6), v235, v6, 5);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 7), *v235.i8, v6, 6);
  v43 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 7), v235, v6, 6);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 6), *v234.i8, v6, 5);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 6), v234, v6, 5);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 7), *v234.i8, v6, 6);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 7), v234, v6, 6);
  v201 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 1), *v26.i8, *v6.i8, 0);
  v200 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 1), v26, *v6.i8, 0);
  v198 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 2), v26, *v6.i8, 1);
  v199 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 2), *v26.i8, *v6.i8, 1);
  v197 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v29.i8, v6, 4);
  v196 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v29, v6, 4);
  v194 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v29, v6, 5);
  v195 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v29.i8, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 5), *v35.i8, v6, 4);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 5), v35, v6, 4);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 6), *v35.i8, v6, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 6), v35, v6, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 6), *v34.i8, v6, 5);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 6), v34, v6, 5);
  v54 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 7), *v34.i8, v6, 6);
  v55 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 7), v34, v6, 6);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v6.i8, 1), *v218.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v6.i8, 1), v218, *v6.i8, 0), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xDuLL), v31, 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v62 = vqaddq_s16(v216, v57);
  v63 = vqsubq_s16(v216, v57);
  v64 = vqsubq_s16(v219, v56);
  v65 = vqaddq_s16(v219, v56);
  v66 = vqaddq_s16(v225, v59);
  v67 = vqsubq_s16(v225, v59);
  v68 = vqsubq_s16(v230, v61);
  v69 = vqaddq_s16(v230, v61);
  v70 = vqaddq_s16(v233, v60);
  v71 = vqsubq_s16(v233, v60);
  v72 = vqsubq_s16(v238, v58);
  v73 = vqaddq_s16(v238, v58);
  v191 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 1), *v65.i8, *v5.i8, 0);
  v190 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 1), v65, *v5.i8, 0);
  v193 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 2), *v65.i8, *v5.i8, 1);
  v192 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 2), v65, *v5.i8, 1);
  v189 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 4), *v64.i8, v5, 5);
  v188 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 4), v64, v5, 5);
  v187 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 7), *v64.i8, v5, 4);
  v186 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 7), v64, v5, 4);
  v182 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 1), *v73.i8, *v5.i8, 0);
  v181 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 1), v73, *v5.i8, 0);
  v179 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 2), v73, *v5.i8, 1);
  v180 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 2), *v73.i8, *v5.i8, 1);
  v74 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 2), *v72.i8, *v5.i8, 1);
  v75 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 2), v72, *v5.i8, 1);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 3), *v72.i8, *v5.i8, 2);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 3), v72, *v5.i8, 2);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 4), *v71.i8, v5, 5);
  v79 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 4), v71, v5, 5);
  v80 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 7), *v71.i8, v5, 4);
  v81 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 7), v71, v5, 4);
  v162 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 7), *v70.i8, v5, 4);
  v161 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 7), v70, v5, 4);
  v160 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 6), *v70.i8, v5, 7);
  v159 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 6), v70, v5, 7);
  v82 = vqaddq_s16(v241, v221);
  v83 = vqsubq_s16(v241, v221);
  v84 = vqsubq_s16(v248, v222);
  v85 = vqaddq_s16(v248, v222);
  v86 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v90 = vqsubq_s16(v82, v87);
  v91 = vqsubq_s16(v85, v86);
  v185 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v202, 4), *v91.i8, v202, 5);
  v184 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v202, 4), v91, v202, 5);
  v167 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v202, 7), v91, v202, 4);
  v168 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v202, 7), *v91.i8, v202, 4);
  v92 = vqsubq_s16(v83, v89);
  v93 = vqsubq_s16(v84, v88);
  v178 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v202.i8, 1), *v93.i8, *v202.i8, 0);
  v175 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v202.i8, 1), v93, *v202.i8, 0);
  v165 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v202.i8, 2), v93, *v202.i8, 1);
  v166 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v202.i8, 2), *v93.i8, *v202.i8, 1);
  v94 = vqaddq_s16(v82, v87);
  v95 = vqaddq_s16(v83, v89);
  v96 = vqaddq_s16(v84, v88);
  v97 = vqaddq_s16(v85, v86);
  v203 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v204.i8, 1), *v97.i8, *v204.i8, 0);
  v183 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v204.i8, 1), v97, *v204.i8, 0);
  v156 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v204.i8, 2), v97, *v204.i8, 1);
  v157 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v204.i8, 2), *v97.i8, *v204.i8, 1);
  v164 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v204, 4), *v96.i8, v204, 5);
  v163 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v204, 4), v96, v204, 5);
  v158 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v204, 7), *v96.i8, v204, 4);
  v205 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v204, 7), v96, v204, 4);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xDuLL), v173, 0xDuLL);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v171, 0xDuLL), v169, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v42, 0xDuLL), v43, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xDuLL), v75, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
  v106 = vqsubq_s16(v224, v99);
  v107 = vqsubq_s16(v239, v98);
  v108 = vqaddq_s16(v106, v103);
  v109 = vqaddq_s16(v107, v102);
  v177 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v206, 4), *v109.i8, v206, 5);
  v174 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v206, 4), v109, v206, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v206, 7), *v109.i8, v206, 4);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v206, 7), v109, v206, 4);
  v110 = vqsubq_s16(v231, v101);
  v111 = vqsubq_s16(v232, v100);
  v112 = vqaddq_s16(v110, v105);
  v113 = vqaddq_s16(v111, v104);
  v155 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v206.i8, 1), *v113.i8, *v206.i8, 0);
  v154 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v206.i8, 1), v113, *v206.i8, 0);
  v114 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v206.i8, 2), *v113.i8, *v206.i8, 1);
  v207 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v206.i8, 2), v113, *v206.i8, 1);
  v115 = vqsubq_s16(v106, v103);
  v116 = vqsubq_s16(v110, v105);
  v117 = vqsubq_s16(v111, v104);
  v118 = vqsubq_s16(v107, v102);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v208.i8, 1), *v118.i8, *v208.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v208.i8, 1), v118, *v208.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v208.i8, 2), *v118.i8, *v208.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v208.i8, 2), v118, *v208.i8, 1);
  v152 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v208, 4), *v117.i8, v208, 5);
  v153 = v114;
  v123 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v208, 4), v117, v208, 5);
  v124 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v208, 7), *v117.i8, v208, 4);
  v125 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v208, 7), v117, v208, 4);
  v126 = vqaddq_s16(v224, v99);
  v127 = vqaddq_s16(v231, v101);
  v128 = vqaddq_s16(v232, v100);
  v129 = vqaddq_s16(v239, v98);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v182, 0xDuLL), v181, 0xDuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xDuLL), v179, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xDuLL), v161, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xDuLL), v159, 0xDuLL);
  v134 = vqsubq_s16(v126, v131);
  v135 = vqsubq_s16(v129, v130);
  v136 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v209, 4), *v135.i8, v209, 5);
  v137 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v209, 4), v135, v209, 5);
  v138 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v209, 7), *v135.i8, v209, 4);
  v139 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v209, 7), v135, v209, 4);
  v140 = vqsubq_s16(v127, v133);
  v141 = vqsubq_s16(v128, v132);
  v142 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v209.i8, 1), *v141.i8, *v209.i8, 0);
  v143 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v209.i8, 1), v141, *v209.i8, 0);
  v144 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v209.i8, 2), *v141.i8, *v209.i8, 1);
  v145 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v209.i8, 2), v141, *v209.i8, 1);
  v146 = vqaddq_s16(v126, v131);
  v147 = vqaddq_s16(v127, v133);
  v148 = vqaddq_s16(v128, v132);
  v149 = vqaddq_s16(v129, v130);
  v211[0] = vrshrn_high_n_s32(vrshrn_n_s32(v201, 0xDuLL), v200, 0xDuLL);
  v211[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v210.i8, 1), *v149.i8, *v210.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v210.i8, 1), v149, *v210.i8, 0), 0xDuLL);
  v211[30] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xDuLL), v156, 0xDuLL);
  v211[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v210.i8, 2), *v149.i8, *v210.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v210.i8, 2), v149, *v210.i8, 1), 0xDuLL);
  v211[16] = vrshrn_high_n_s32(vrshrn_n_s32(v199, 0xDuLL), v198, 0xDuLL);
  v211[17] = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xDuLL), v137, 0xDuLL);
  v211[14] = vrshrn_high_n_s32(vrshrn_n_s32(v168, 0xDuLL), v167, 0xDuLL);
  v211[15] = vrshrn_high_n_s32(vrshrn_n_s32(v138, 0xDuLL), v139, 0xDuLL);
  v211[8] = vrshrn_high_n_s32(vrshrn_n_s32(v197, 0xDuLL), v196, 0xDuLL);
  v211[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  v211[22] = vrshrn_high_n_s32(vrshrn_n_s32(v166, 0xDuLL), v165, 0xDuLL);
  v211[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  v211[24] = vrshrn_high_n_s32(vrshrn_n_s32(v195, 0xDuLL), v194, 0xDuLL);
  v211[25] = vrshrn_high_n_s32(vrshrn_n_s32(v177, 0xDuLL), v174, 0xDuLL);
  v211[6] = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v205, 0xDuLL);
  v211[7] = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v170, 0xDuLL);
  v211[4] = vrshrn_high_n_s32(vrshrn_n_s32(v191, 0xDuLL), v190, 0xDuLL);
  v211[5] = vrshrn_high_n_s32(vrshrn_n_s32(v155, 0xDuLL), v154, 0xDuLL);
  v211[26] = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xDuLL), v163, 0xDuLL);
  v211[27] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v207, 0xDuLL);
  v211[20] = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xDuLL), v188, 0xDuLL);
  v211[21] = vrshrn_high_n_s32(vrshrn_n_s32(v152, 0xDuLL), v123, 0xDuLL);
  v211[10] = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v175, 0xDuLL);
  v211[11] = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xDuLL), v125, 0xDuLL);
  v211[12] = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xDuLL), v186, 0xDuLL);
  v211[13] = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xDuLL), v143, 0xDuLL);
  v211[18] = vrshrn_high_n_s32(vrshrn_n_s32(v185, 0xDuLL), v184, 0xDuLL);
  v211[19] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v145, 0xDuLL);
  v211[28] = vrshrn_high_n_s32(vrshrn_n_s32(v193, 0xDuLL), v192, 0xDuLL);
  v211[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v210, 4), *v148.i8, v210, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v210, 4), v148, v210, 5), 0xDuLL);
  v211[2] = vrshrn_high_n_s32(vrshrn_n_s32(v203, 0xDuLL), v183, 0xDuLL);
  v211[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v210, 7), *v148.i8, v210, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v210, 7), v148, v210, 4), 0xDuLL);
  v150 = a2 + 1;
  do
  {
    v151 = v211[v25];
    v150[-1] = vmovl_s16(*v151.i8);
    *v150 = vmovl_high_s16(v151);
    ++v25;
    v150 = (v150 + 4 * a3);
  }

  while (v25 != 32);
  return result;
}

int16x8_t sub_2779E0D2C(_OWORD *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 128; j += 16)
  {
    result = vaddq_s16(*&v7[j], *&v7[j]);
    *(a2 + j) = result;
  }

  return result;
}

int16x8_t sub_2779E0DD8(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v52 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v44 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *(&v44 + i) = vshlq_n_s16(*(&v44 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v47.i8, *v6, 3), *v48.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v47, *v6, 3), v48, *v6, 0), 0xDuLL);
  v10 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v47.i8, *v6, 2), *v48.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v47, *v6, 2), v48, *v6, 3), 0xDuLL);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v49.i8, *v6, 1), *v46.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v49, *v6, 1), v46, *v6, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v49.i8, *v6, 2), *v46.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v49, *v6, 2), v46, *v6, 1), 0xDuLL);
  v13 = vqaddq_s16(v44, v9);
  v14 = vqsubq_s16(v10, v51);
  v15 = vqsubq_s16(v44, v9);
  v16 = vqaddq_s16(v51, v10);
  v17 = vqsubq_s16(v12, v45);
  v18 = vqaddq_s16(v50, v11);
  v19 = vqaddq_s16(v45, v12);
  v20 = vqsubq_s16(v50, v11);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v18.i8, *v6->i8, 5), *v17.i8, *v6->i8, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v18, *v6->i8, 5), v17, *v6->i8, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v18.i8, *v6->i8, 6), *v17.i8, *v6->i8, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v18, *v6->i8, 6), v17, *v6->i8, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v19.i8, *v6->i8, 5), *v20.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v19, *v6->i8, 5), v20, *v6->i8, 4), 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v19.i8, *v6->i8, 6), *v20.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v19, *v6->i8, 6), v20, *v6->i8, 5), 0xDuLL);
  v29 = vqaddq_s16(v13, v25);
  v30 = vqaddq_s16(v14, v26);
  v31 = vqaddq_s16(v15, v27);
  v32 = vqsubq_s16(v28, v16);
  v33 = vqsubq_s16(v13, v25);
  v34 = vqsubq_s16(v14, v26);
  v35 = vqsubq_s16(v15, v27);
  v36 = vqaddq_s16(v16, v28);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 1), *v29.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 1), v29, *v7.i8, 0), 0xDuLL);
  v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 2), *v29.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 2), v29, *v7.i8, 1), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 2), *v31.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 2), v31, *v8.i8, 1), 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 4), *v33.i8, v8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 4), v33, v8, 5), 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 7), *v33.i8, v8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 7), v33, v8, 4), 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 1), *v31.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 1), v31, *v8.i8, 0), 0xDuLL);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(*v36.i8, v7, 5), *v35.i8, v7, 4);
  v40 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v36, v7, 5), v35, v7, 4);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(*v36.i8, v7, 6), *v35.i8, v7, 5);
  v42 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v36, v7, 6), v35, v7, 5);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xDuLL), v40, 0xDuLL);
  a2[6] = result;
  a2[7] = v37;
  *a2 = v38;
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xDuLL), v42, 0xDuLL);
  return result;
}

int16x8_t sub_2779E1060(_OWORD *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v48 = *MEMORY[0x277D85DE8];
  do
  {
    *&v39[v4] = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *&v39[i] = vshlq_n_s16(*&v39[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  for (j = 112; j != 48; j -= 16)
  {
    *(&v40 + v6) = vqaddq_s16(*&v39[v6], *&v39[j]);
    v6 += 16;
  }

  v10 = 48;
  v11 = 64;
  do
  {
    *(&v40 + v11) = vqsubq_s16(*&v39[v10], *&v39[v11]);
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = vqaddq_s16(v40, v43);
  v13 = vqaddq_s16(v41, v42);
  v14 = vqsubq_s16(v41, v42);
  v15 = vqsubq_s16(v40, v43);
  v16 = vmlal_lane_s16(vmull_lane_s16(*v45.i8, *v8.i8, 2), *v46.i8, *v8.i8, 1);
  v17 = vmlal_high_lane_s16(vmull_high_lane_s16(v45, *v8.i8, 2), v46, *v8.i8, 1);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v8.i8, 1), *v12.i8, *v8.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v8.i8, 1), v12, *v8.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v8.i8, 2), *v12.i8, *v8.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v8.i8, 2), v12, *v8.i8, 1);
  v22 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v8, 5), *v15.i8, v8, 4);
  v23 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v14, v8, 5), v15, v8, 4);
  v24 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v8, 6), *v15.i8, v8, 5);
  v25 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v14, v8, 6), v15, v8, 5);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v45.i8, *v8.i8, 1), *v46.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v45, *v8.i8, 1), v46, *v8.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v16, 0xDuLL), v17, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v29 = vrshrn_high_n_s32(vrshrn_n_s32(v24, 0xDuLL), v25, 0xDuLL);
  v30 = vqaddq_s16(v44, v27);
  v31 = vqsubq_s16(v44, v27);
  v32 = vqsubq_s16(v47, v26);
  v33 = vqaddq_s16(v47, v26);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 1), *v33.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 1), v33, *v7.i8, 0), 0xDuLL);
  a2[6] = v29;
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 2), *v33.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 2), v33, *v7.i8, 1), 0xDuLL);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v7, 4), *v32.i8, v7, 5);
  v35 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v7, 4), v32, v7, 5);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v7, 7), *v32.i8, v7, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v7, 7), v32, v7, 4);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  a2[4] = v28;
  a2[5] = result;
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v22, 0xDuLL), v23, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  return result;
}

uint64_t sub_2779E129C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = off_28866DE20[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 62 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D7A0[a4])(a1, &v96, a3, 12);
  for (i = 0; i != 512; i += 16)
  {
    *(&v96 + i) = vrshrq_n_s16(*(&v96 + i), 2uLL);
  }

  v8 = 0;
  v9 = vtrn1q_s16(v96, v97);
  v10 = vtrn2q_s16(v96, v97);
  v11 = vtrn1q_s16(v98, v99);
  v12 = vtrn2q_s16(v98, v99);
  v13 = vtrn1q_s16(v100, v101);
  v14 = vtrn2q_s16(v100, v101);
  v15 = vtrn1q_s16(v102, v103);
  v16 = vtrn2q_s16(v102, v103);
  v17 = vtrn1q_s32(v9, v11);
  v18 = vtrn1q_s32(v10, v12);
  v19 = vtrn1q_s32(v13, v15);
  v20 = vzip2q_s64(v17, v19);
  v17.i64[1] = v19.i64[0];
  v21 = vtrn1q_s32(v14, v16);
  v22 = vzip2q_s64(v18, v21);
  v18.i64[1] = v21.i64[0];
  v23 = vtrn2q_s32(v9, v11);
  v24 = vtrn2q_s32(v13, v15);
  v25 = vzip2q_s64(v23, v24);
  v23.i64[1] = v24.i64[0];
  v26 = vtrn2q_s32(v10, v12);
  v27 = vtrn2q_s32(v14, v16);
  v28 = vzip2q_s64(v26, v27);
  v26.i64[1] = v27.i64[0];
  v95[0] = v17;
  v95[1] = v18;
  v95[2] = v23;
  v95[3] = v26;
  v95[4] = v20;
  v95[5] = v22;
  v95[6] = v25;
  v95[7] = v28;
  v29 = vtrn1q_s16(v104, v105);
  v30 = vtrn2q_s16(v104, v105);
  v31 = vtrn1q_s16(v106, v107);
  v32 = vtrn2q_s16(v106, v107);
  v33 = vtrn1q_s16(v108, v109);
  v34 = vtrn2q_s16(v108, v109);
  v35 = vtrn1q_s16(v110, v111);
  v36 = vtrn2q_s16(v110, v111);
  v37 = vtrn1q_s32(v29, v31);
  v38 = vtrn2q_s32(v29, v31);
  v39 = vtrn1q_s32(v30, v32);
  v40 = vtrn2q_s32(v30, v32);
  v41 = vtrn1q_s32(v33, v35);
  v42 = vtrn2q_s32(v33, v35);
  v43 = vtrn1q_s32(v34, v36);
  v44 = vtrn2q_s32(v34, v36);
  v45 = vzip2q_s64(v37, v41);
  v37.i64[1] = v41.i64[0];
  v46 = vzip2q_s64(v39, v43);
  v39.i64[1] = v43.i64[0];
  v47 = vzip2q_s64(v38, v42);
  v38.i64[1] = v42.i64[0];
  v48 = vzip2q_s64(v40, v44);
  v40.i64[1] = v44.i64[0];
  v95[8] = v37;
  v95[9] = v39;
  v95[10] = v38;
  v95[11] = v40;
  v95[12] = v45;
  v95[13] = v46;
  v95[14] = v47;
  v95[15] = v48;
  v49 = vtrn1q_s16(v112, v113);
  v50 = vtrn2q_s16(v112, v113);
  v51 = vtrn1q_s16(v114, v115);
  v52 = vtrn2q_s16(v114, v115);
  v53 = vtrn1q_s16(v116, v117);
  v54 = vtrn2q_s16(v116, v117);
  v55 = vtrn1q_s16(v118, v119);
  v56 = vtrn2q_s16(v118, v119);
  v57 = vtrn1q_s32(v49, v51);
  v58 = vtrn2q_s32(v49, v51);
  v59 = vtrn1q_s32(v50, v52);
  v60 = vtrn2q_s32(v50, v52);
  v61 = vtrn1q_s32(v53, v55);
  v62 = vtrn2q_s32(v53, v55);
  v63 = vtrn1q_s32(v54, v56);
  v64 = vtrn2q_s32(v54, v56);
  v65 = vzip2q_s64(v57, v61);
  v57.i64[1] = v61.i64[0];
  v66 = vzip2q_s64(v59, v63);
  v59.i64[1] = v63.i64[0];
  v67 = vzip2q_s64(v58, v62);
  v58.i64[1] = v62.i64[0];
  v68 = vzip2q_s64(v60, v64);
  v60.i64[1] = v64.i64[0];
  v95[16] = v57;
  v95[17] = v59;
  v95[18] = v58;
  v95[19] = v60;
  v95[20] = v65;
  v95[21] = v66;
  v95[22] = v67;
  v95[23] = v68;
  v69 = vtrn1q_s16(v120, v121);
  v70 = vtrn2q_s16(v120, v121);
  v71 = vtrn1q_s16(v122, v123);
  v72 = vtrn2q_s16(v122, v123);
  v73 = vtrn1q_s16(v124, v125);
  v74 = vtrn2q_s16(v124, v125);
  v75 = vtrn1q_s16(v126, v127);
  v76 = vtrn2q_s16(v126, v127);
  v77 = vtrn1q_s32(v69, v71);
  v78 = vtrn2q_s32(v69, v71);
  v79 = vtrn1q_s32(v70, v72);
  v80 = vtrn2q_s32(v70, v72);
  v81 = vtrn1q_s32(v73, v75);
  v82 = vtrn2q_s32(v73, v75);
  v83 = vtrn1q_s32(v74, v76);
  v84 = vtrn2q_s32(v74, v76);
  v85 = vzip2q_s64(v77, v81);
  v77.i64[1] = v81.i64[0];
  v86 = vzip2q_s64(v79, v83);
  v79.i64[1] = v83.i64[0];
  v87 = vzip2q_s64(v78, v82);
  v78.i64[1] = v82.i64[0];
  v88 = vzip2q_s64(v80, v84);
  v80.i64[1] = v84.i64[0];
  v95[24] = v77;
  v95[25] = v79;
  v95[26] = v78;
  v95[27] = v80;
  v95[28] = v85;
  v95[29] = v86;
  v89 = v95;
  v95[30] = v87;
  v95[31] = v88;
  do
  {
    if (v6)
    {
      v90 = &v95[8 * v8];
    }

    else
    {
      v91 = v89;
      for (j = 112; j != -16; j -= 16)
      {
        v93 = *v91++;
        v90 = &v96;
        *(&v96 + j) = v93;
      }
    }

    result = (v5)(v90, a2 + 32 * v8++, 32, 12);
    v89 += 8;
  }

  while (v8 != 4);
  return result;
}

int32x4_t sub_2779E15FC(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  do
  {
    *&v9[v3] = vaddq_s16(*(a1 + v3), *(a1 + v3));
    v3 += 16;
  }

  while (v3 != 128);
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = *&v9[v4];
    v7 = vmovl_s16(*v6.i8);
    result = vmovl_high_s16(v6);
    v5[-1] = v7;
    *v5 = result;
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 128);
  return result;
}

int32x4_t sub_2779E1694(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 3), *v10.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 3), v10, *v5, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 2), *v10.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 2), v10, *v5, 3), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 1), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 1), v9, *v5, 0), 0xDuLL);
  v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 2), *v9.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 2), v9, *v5, 1), 0xDuLL);
  v16 = a1[1];
  v17 = vqaddq_s16(*a1, v12);
  v19 = a1[6];
  v18 = a1[7];
  v20 = vqsubq_s16(v13, v18);
  v21 = vqsubq_s16(*a1, v12);
  v22 = vqaddq_s16(v18, v13);
  v23 = vqsubq_s16(v15, v16);
  v24 = vqaddq_s16(v19, v14);
  v25 = vqaddq_s16(v16, v15);
  v26 = vqsubq_s16(v19, v14);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 5), *v23.i8, *v5->i8, 4);
  v28 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 5), v23, *v5->i8, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 6), *v23.i8, *v5->i8, 5);
  v30 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 6), v23, *v5->i8, 5);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xDuLL), v28, 0xDuLL);
  v32 = vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xDuLL), v30, 0xDuLL);
  v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 5), *v26.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 5), v26, *v5->i8, 4), 0xDuLL);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 6), *v26.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 6), v26, *v5->i8, 5), 0xDuLL);
  v35 = vqaddq_s16(v17, v31);
  v36 = vqaddq_s16(v20, v32);
  v37 = vqaddq_s16(v21, v33);
  v38 = vqsubq_s16(v34, v22);
  v39 = vqsubq_s16(v17, v31);
  v40 = vqsubq_s16(v20, v32);
  v41 = vqsubq_s16(v21, v33);
  v42 = vqaddq_s16(v22, v34);
  v47[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 2), *v37.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 2), v37, *v7.i8, 1), 0xDuLL);
  v47[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 4), *v39.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 4), v39, v7, 5), 0xDuLL);
  v47[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 7), *v39.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 7), v39, v7, 4), 0xDuLL);
  v47[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 1), *v37.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 1), v37, *v7.i8, 0), 0xDuLL);
  v47[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 5), *v41.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 5), v41, v6, 4), 0xDuLL);
  v47[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 1), *v35.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 1), v35, *v6.i8, 0), 0xDuLL);
  v47[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 2), *v35.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 2), v35, *v6.i8, 1), 0xDuLL);
  v47[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 6), *v41.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 6), v41, v6, 5), 0xDuLL);
  v43 = a2 + 1;
  do
  {
    v44 = v47[v4];
    v45 = vmovl_s16(*v44.i8);
    result = vmovl_high_s16(v44);
    v43[-1] = v45;
    *v43 = result;
    ++v4;
    v43 = (v43 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

int32x4_t sub_2779E1908(uint64_t a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v46 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 112; i != 48; i -= 16)
  {
    *(&v38 + v4) = vqaddq_s16(*(a1 + v4), *(a1 + i));
    v4 += 16;
  }

  v8 = 48;
  v9 = 64;
  do
  {
    *(&v38 + v9) = vqsubq_s16(*(a1 + v8), *(a1 + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v11 = vqaddq_s16(v38, v41);
  v12 = vqaddq_s16(v39, v40);
  v13 = vqsubq_s16(v39, v40);
  v14 = vqsubq_s16(v38, v41);
  v15 = vmlal_lane_s16(vmull_lane_s16(*v43.i8, *v6.i8, 2), *v44.i8, *v6.i8, 1);
  v16 = vmlal_high_lane_s16(vmull_high_lane_s16(v43, *v6.i8, 2), v44, *v6.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 1), *v11.i8, *v6.i8, 0);
  v18 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v19 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 2), *v11.i8, *v6.i8, 1);
  v20 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 5), *v14.i8, v6, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 5), v14, v6, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 6), *v14.i8, v6, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 6), v14, v6, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v43.i8, *v6.i8, 1), *v44.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v43, *v6.i8, 1), v44, *v6.i8, 0), 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xDuLL), v20, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v29 = vqaddq_s16(v42, v26);
  v30 = vqsubq_s16(v42, v26);
  v31 = vqsubq_s16(v45, v25);
  v32 = vqaddq_s16(v45, v25);
  v37[0] = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xDuLL), v18, 0xDuLL);
  v37[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 1), *v32.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 1), v32, *v5.i8, 0), 0xDuLL);
  v37[6] = v28;
  v37[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 2), *v32.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 2), v32, *v5.i8, 1), 0xDuLL);
  v37[4] = v27;
  v37[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 4), *v31.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 4), v31, v5, 5), 0xDuLL);
  v37[2] = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v37[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 7), *v31.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 7), v31, v5, 4), 0xDuLL);
  v33 = a2 + 1;
  do
  {
    v34 = v37[v10];
    v35 = vmovl_s16(*v34.i8);
    result = vmovl_high_s16(v34);
    v33[-1] = v35;
    *v33 = result;
    ++v10;
    v33 = (v33 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

int16x8_t sub_2779E1B28(_OWORD *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 512);
  for (i = 0; i != 512; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 512; j += 16)
  {
    result = vshlq_n_s16(*&v7[j], 2uLL);
    *(a2 + j) = result;
  }

  return result;
}

_OWORD *sub_2779E1BDC(_OWORD *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v264 = *MEMORY[0x277D85DE8];
  do
  {
    *&v209[v4] = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 512);
  for (i = 0; i != 512; i += 16)
  {
    *&v209[i] = vshlq_n_s16(*&v209[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v200 = xmmword_277BEB8A0[16 * a4 - 157];
  v202 = xmmword_277BEB8A0[16 * a4 - 158];
  v204 = xmmword_277BEB8A0[16 * a4 - 155];
  v206 = xmmword_277BEB8A0[16 * a4 - 154];
  v207 = xmmword_277BEB8A0[16 * a4 - 153];
  v208 = xmmword_277BEB8A0[16 * a4 - 156];
  for (j = 496; j != 240; j -= 16)
  {
    *&v255[v6] = vqaddq_s16(*&v209[v6], *&v209[j]);
    v6 += 16;
  }

  v10 = 240;
  v11 = 256;
  do
  {
    *&v255[v11] = vqsubq_s16(*&v209[v10], *&v209[v11]);
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = 0;
  for (k = 240; k != 112; k -= 16)
  {
    *&v238[v12] = vqaddq_s16(*&v255[v12], *&v255[k]);
    v12 += 16;
  }

  v14 = 112;
  v15 = 128;
  do
  {
    *&v238[v15] = vqsubq_s16(*&v255[v14], *&v255[v15]);
    v14 -= 16;
    v15 += 16;
  }

  while (v14 != -16);
  v16 = 0;
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v256.i8, *v8.i8, 1), *v263.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v256, *v8.i8, 1), v263, *v8.i8, 0), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v257.i8, *v8.i8, 1), *v262.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v257, *v8.i8, 1), v262, *v8.i8, 0), 0xDuLL);
  v247 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v256.i8, *v8.i8, 2), *v263.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v256, *v8.i8, 2), v263, *v8.i8, 1), 0xDuLL);
  v248 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v257.i8, *v8.i8, 2), *v262.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v257, *v8.i8, 2), v262, *v8.i8, 1), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v8.i8, 1), *v261.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v8.i8, 1), v261, *v8.i8, 0), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v8.i8, 1), *v260.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v8.i8, 1), v260, *v8.i8, 0), 0xDuLL);
  v249 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v8.i8, 2), *v261.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v8.i8, 2), v261, *v8.i8, 1), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v8.i8, 2), *v260.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v8.i8, 2), v260, *v8.i8, 1), 0xDuLL);
  for (m = 112; m != 48; m -= 16)
  {
    *(&v210 + v16) = vqaddq_s16(*&v238[v16], *&v238[m]);
    v16 += 16;
  }

  v18 = 48;
  v19 = 64;
  do
  {
    *(&v210 + v19) = vqsubq_s16(*&v238[v18], *&v238[v19]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != -16);
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v241.i8, *v8.i8, 1), *v244.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v241, *v8.i8, 1), v244, *v8.i8, 0), 0xDuLL);
  v220 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v242.i8, *v8.i8, 1), *v243.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v242, *v8.i8, 1), v243, *v8.i8, 0), 0xDuLL);
  v20 = 368;
  v218 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v241.i8, *v8.i8, 2), *v244.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v241, *v8.i8, 2), v244, *v8.i8, 1), 0xDuLL);
  v219 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v242.i8, *v8.i8, 2), *v243.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v242, *v8.i8, 2), v243, *v8.i8, 1), 0xDuLL);
  v21 = 256;
  do
  {
    *(&v210 + v21) = vqaddq_s16(*&v255[v21], *&v238[v20]);
    v20 -= 16;
    v21 += 16;
  }

  while (v20 != 304);
  v22 = 320;
  do
  {
    *(&v210 + v22) = vqsubq_s16(*&v255[v20], *&v238[v22]);
    v20 -= 16;
    v22 += 16;
  }

  while (v20 != 240);
  v23 = 496;
  v24 = 384;
  do
  {
    *(&v210 + v24) = vqsubq_s16(*&v255[v23], *&v238[v24]);
    v23 -= 16;
    v24 += 16;
  }

  while (v23 != 432);
  v25 = 448;
  v26 = 432;
  do
  {
    *(&v210 + v25) = vqaddq_s16(*&v255[v25], *&v238[v26]);
    v25 += 16;
    v26 -= 16;
  }

  while (v25 != 512);
  v27 = vqaddq_s16(v210, v213);
  v28 = vqaddq_s16(v211, v212);
  v29 = vqsubq_s16(v211, v212);
  v30 = vqsubq_s16(v210, v213);
  v31 = vmlal_lane_s16(vmull_lane_s16(*v215.i8, *v8.i8, 2), *v216.i8, *v8.i8, 1);
  v32 = vmlal_high_lane_s16(vmull_high_lane_s16(v215, *v8.i8, 2), v216, *v8.i8, 1);
  v33 = vqaddq_s16(v240, v218);
  v34 = vqsubq_s16(v240, v218);
  v35 = vqsubq_s16(v245, v221);
  v36 = vqaddq_s16(v245, v221);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(*v224.i8, v8, 5), *v235.i8, v8, 4);
  v38 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v224, v8, 5), v235, v8, 4);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(*v224.i8, v8, 6), *v235.i8, v8, 5);
  v40 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v224, v8, 6), v235, v8, 5);
  v173 = vmlal_laneq_s16(vmull_laneq_s16(*v225.i8, v8, 5), *v234.i8, v8, 4);
  v171 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v225, v8, 5), v234, v8, 4);
  v167 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v225, v8, 6), v234, v8, 5);
  v169 = vmlal_laneq_s16(vmull_laneq_s16(*v225.i8, v8, 6), *v234.i8, v8, 5);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v8, 6), *v233.i8, v8, 5);
  v42 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v8, 6), v233, v8, 5);
  v43 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v8, 7), *v233.i8, v8, 6);
  v44 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v8, 7), v233, v8, 6);
  v45 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v8, 6), *v232.i8, v8, 5);
  v46 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v8, 6), v232, v8, 5);
  v47 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v8, 7), *v232.i8, v8, 6);
  v48 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v8, 7), v232, v8, 6);
  v199 = vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v8.i8, 1), *v27.i8, *v8.i8, 0);
  v198 = vmlal_high_lane_s16(vmull_high_lane_s16(v28, *v8.i8, 1), v27, *v8.i8, 0);
  v196 = vmlal_high_lane_s16(vmull_high_lane_s16(v28, *v8.i8, 2), v27, *v8.i8, 1);
  v197 = vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v8.i8, 2), *v27.i8, *v8.i8, 1);
  v195 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v8, 5), *v30.i8, v8, 4);
  v194 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v8, 5), v30, v8, 4);
  v192 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v8, 6), v30, v8, 5);
  v193 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v8, 6), *v30.i8, v8, 5);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v8, 5), *v36.i8, v8, 4);
  v50 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v8, 5), v36, v8, 4);
  v51 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v8, 6), *v36.i8, v8, 5);
  v52 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v8, 6), v36, v8, 5);
  v53 = vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 6), *v35.i8, v8, 5);
  v54 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 6), v35, v8, 5);
  v55 = vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 7), *v35.i8, v8, 6);
  v56 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 7), v35, v8, 6);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v215.i8, *v8.i8, 1), *v216.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v215, *v8.i8, 1), v216, *v8.i8, 0), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v31, 0xDuLL), v32, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v37, 0xDuLL), v38, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xDuLL), v40, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v45, 0xDuLL), v46, 0xDuLL);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v47, 0xDuLL), v48, 0xDuLL);
  v63 = vqaddq_s16(v214, v58);
  v64 = vqsubq_s16(v214, v58);
  v65 = vqsubq_s16(v217, v57);
  v66 = vqaddq_s16(v217, v57);
  v67 = vqaddq_s16(v223, v60);
  v68 = vqsubq_s16(v223, v60);
  v69 = vqsubq_s16(v228, v62);
  v70 = vqaddq_s16(v228, v62);
  v71 = vqaddq_s16(v231, v61);
  v72 = vqsubq_s16(v231, v61);
  v73 = vqsubq_s16(v236, v59);
  v74 = vqaddq_s16(v236, v59);
  v189 = vmlal_lane_s16(vmull_lane_s16(*v63.i8, *v7.i8, 1), *v66.i8, *v7.i8, 0);
  v188 = vmlal_high_lane_s16(vmull_high_lane_s16(v63, *v7.i8, 1), v66, *v7.i8, 0);
  v191 = vmlal_lane_s16(vmull_lane_s16(*v63.i8, *v7.i8, 2), *v66.i8, *v7.i8, 1);
  v190 = vmlal_high_lane_s16(vmull_high_lane_s16(v63, *v7.i8, 2), v66, *v7.i8, 1);
  v187 = vmlal_laneq_s16(vmull_laneq_s16(*v64.i8, v7, 4), *v65.i8, v7, 5);
  v186 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v64, v7, 4), v65, v7, 5);
  v185 = vmlal_laneq_s16(vmull_laneq_s16(*v64.i8, v7, 7), *v65.i8, v7, 4);
  v184 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v64, v7, 7), v65, v7, 4);
  v180 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v7.i8, 1), *v74.i8, *v7.i8, 0);
  v179 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v7.i8, 1), v74, *v7.i8, 0);
  v177 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v7.i8, 2), v74, *v7.i8, 1);
  v178 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v7.i8, 2), *v74.i8, *v7.i8, 1);
  v75 = vmlal_lane_s16(vmull_lane_s16(*v68.i8, *v7.i8, 2), *v73.i8, *v7.i8, 1);
  v76 = vmlal_high_lane_s16(vmull_high_lane_s16(v68, *v7.i8, 2), v73, *v7.i8, 1);
  v77 = vmlal_lane_s16(vmull_lane_s16(*v68.i8, *v7.i8, 3), *v73.i8, *v7.i8, 2);
  v78 = vmlal_high_lane_s16(vmull_high_lane_s16(v68, *v7.i8, 3), v73, *v7.i8, 2);
  v79 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v7, 4), *v72.i8, v7, 5);
  v80 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v7, 4), v72, v7, 5);
  v81 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v7, 7), *v72.i8, v7, 4);
  v82 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v7, 7), v72, v7, 4);
  v160 = vmlal_laneq_s16(vmull_laneq_s16(*v70.i8, v7, 7), *v71.i8, v7, 4);
  v159 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v70, v7, 7), v71, v7, 4);
  v158 = vmlal_laneq_s16(vmull_laneq_s16(*v70.i8, v7, 6), *v71.i8, v7, 7);
  v157 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v70, v7, 6), v71, v7, 7);
  v83 = vqaddq_s16(v239, v219);
  v84 = vqsubq_s16(v239, v219);
  v85 = vqsubq_s16(v246, v220);
  v86 = vqaddq_s16(v246, v220);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v49, 0xDuLL), v50, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v51, 0xDuLL), v52, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xDuLL), v54, 0xDuLL);
  v90 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xDuLL), v56, 0xDuLL);
  v91 = vqsubq_s16(v83, v88);
  v92 = vqsubq_s16(v86, v87);
  v183 = vmlal_laneq_s16(vmull_laneq_s16(*v91.i8, v200, 4), *v92.i8, v200, 5);
  v182 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v91, v200, 4), v92, v200, 5);
  v165 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v91, v200, 7), v92, v200, 4);
  v166 = vmlal_laneq_s16(vmull_laneq_s16(*v91.i8, v200, 7), *v92.i8, v200, 4);
  v93 = vqsubq_s16(v84, v90);
  v94 = vqsubq_s16(v85, v89);
  v176 = vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v200.i8, 1), *v94.i8, *v200.i8, 0);
  v175 = vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v200.i8, 1), v94, *v200.i8, 0);
  v163 = vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v200.i8, 2), v94, *v200.i8, 1);
  v164 = vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v200.i8, 2), *v94.i8, *v200.i8, 1);
  v95 = vqaddq_s16(v83, v88);
  v96 = vqaddq_s16(v84, v90);
  v97 = vqaddq_s16(v85, v89);
  v98 = vqaddq_s16(v86, v87);
  v201 = vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v202.i8, 1), *v98.i8, *v202.i8, 0);
  v181 = vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v202.i8, 1), v98, *v202.i8, 0);
  v154 = vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v202.i8, 2), v98, *v202.i8, 1);
  v155 = vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v202.i8, 2), *v98.i8, *v202.i8, 1);
  v162 = vmlal_laneq_s16(vmull_laneq_s16(*v96.i8, v202, 4), *v97.i8, v202, 5);
  v161 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v96, v202, 4), v97, v202, 5);
  v156 = vmlal_laneq_s16(vmull_laneq_s16(*v96.i8, v202, 7), *v97.i8, v202, 4);
  v203 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v96, v202, 7), v97, v202, 4);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xDuLL), v171, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v167, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xDuLL), v42, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v43, 0xDuLL), v44, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xDuLL), v76, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v77, 0xDuLL), v78, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v79, 0xDuLL), v80, 0xDuLL);
  v106 = vrshrn_high_n_s32(vrshrn_n_s32(v81, 0xDuLL), v82, 0xDuLL);
  v107 = vqsubq_s16(v222, v100);
  v108 = vqsubq_s16(v237, v99);
  v109 = vqaddq_s16(v107, v104);
  v110 = vqaddq_s16(v108, v103);
  v174 = vmlal_laneq_s16(vmull_laneq_s16(*v109.i8, v204, 4), *v110.i8, v204, 5);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v109, v204, 4), v110, v204, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v109.i8, v204, 7), *v110.i8, v204, 4);
  v168 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v109, v204, 7), v110, v204, 4);
  v111 = vqsubq_s16(v229, v102);
  v112 = vqsubq_s16(v230, v101);
  v113 = vqaddq_s16(v111, v106);
  v114 = vqaddq_s16(v112, v105);
  v153 = vmlal_lane_s16(vmull_lane_s16(*v113.i8, *v204.i8, 1), *v114.i8, *v204.i8, 0);
  v151 = vmlal_high_lane_s16(vmull_high_lane_s16(v113, *v204.i8, 1), v114, *v204.i8, 0);
  v152 = vmlal_lane_s16(vmull_lane_s16(*v113.i8, *v204.i8, 2), *v114.i8, *v204.i8, 1);
  v205 = vmlal_high_lane_s16(vmull_high_lane_s16(v113, *v204.i8, 2), v114, *v204.i8, 1);
  v115 = vqsubq_s16(v107, v104);
  v116 = vqsubq_s16(v111, v106);
  v117 = vqsubq_s16(v112, v105);
  v118 = vqsubq_s16(v108, v103);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v206.i8, 1), *v118.i8, *v206.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v206.i8, 1), v118, *v206.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v206.i8, 2), *v118.i8, *v206.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v206.i8, 2), v118, *v206.i8, 1);
  v123 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v206, 4), *v117.i8, v206, 5);
  v124 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v206, 4), v117, v206, 5);
  v125 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v206, 7), *v117.i8, v206, 4);
  v126 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v206, 7), v117, v206, 4);
  v127 = vqaddq_s16(v222, v100);
  v128 = vqaddq_s16(v229, v102);
  v129 = vqaddq_s16(v230, v101);
  v130 = vqaddq_s16(v237, v99);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xDuLL), v179, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v177, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xDuLL), v159, 0xDuLL);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v157, 0xDuLL);
  v135 = vqsubq_s16(v127, v132);
  v136 = vqsubq_s16(v130, v131);
  v137 = vmlal_laneq_s16(vmull_laneq_s16(*v135.i8, v207, 4), *v136.i8, v207, 5);
  v138 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v135, v207, 4), v136, v207, 5);
  v139 = vmlal_laneq_s16(vmull_laneq_s16(*v135.i8, v207, 7), *v136.i8, v207, 4);
  v140 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v135, v207, 7), v136, v207, 4);
  v141 = vqsubq_s16(v128, v134);
  v142 = vqsubq_s16(v129, v133);
  v143 = vmlal_lane_s16(vmull_lane_s16(*v141.i8, *v207.i8, 1), *v142.i8, *v207.i8, 0);
  v144 = vmlal_high_lane_s16(vmull_high_lane_s16(v141, *v207.i8, 1), v142, *v207.i8, 0);
  v145 = vmlal_lane_s16(vmull_lane_s16(*v141.i8, *v207.i8, 2), *v142.i8, *v207.i8, 1);
  v146 = vmlal_high_lane_s16(vmull_high_lane_s16(v141, *v207.i8, 2), v142, *v207.i8, 1);
  v147 = vqaddq_s16(v127, v132);
  v148 = vqaddq_s16(v128, v134);
  v149 = vqaddq_s16(v129, v133);
  v150 = vqaddq_s16(v130, v131);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v199, 0xDuLL), v198, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v147.i8, *v208.i8, 1), *v150.i8, *v208.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v147, *v208.i8, 1), v150, *v208.i8, 0), 0xDuLL);
  a2[30] = vrshrn_high_n_s32(vrshrn_n_s32(v155, 0xDuLL), v154, 0xDuLL);
  a2[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v147.i8, *v208.i8, 2), *v150.i8, *v208.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v147, *v208.i8, 2), v150, *v208.i8, 1), 0xDuLL);
  a2[16] = vrshrn_high_n_s32(vrshrn_n_s32(v197, 0xDuLL), v196, 0xDuLL);
  a2[17] = vrshrn_high_n_s32(vrshrn_n_s32(v137, 0xDuLL), v138, 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(v166, 0xDuLL), v165, 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(v139, 0xDuLL), v140, 0xDuLL);
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(v195, 0xDuLL), v194, 0xDuLL);
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  a2[22] = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xDuLL), v163, 0xDuLL);
  a2[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  a2[24] = vrshrn_high_n_s32(vrshrn_n_s32(v193, 0xDuLL), v192, 0xDuLL);
  a2[25] = vrshrn_high_n_s32(vrshrn_n_s32(v174, 0xDuLL), v170, 0xDuLL);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xDuLL), v203, 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v168, 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xDuLL), v188, 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v151, 0xDuLL);
  a2[26] = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xDuLL), v161, 0xDuLL);
  a2[27] = vrshrn_high_n_s32(vrshrn_n_s32(v152, 0xDuLL), v205, 0xDuLL);
  a2[20] = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xDuLL), v186, 0xDuLL);
  a2[21] = vrshrn_high_n_s32(vrshrn_n_s32(v123, 0xDuLL), v124, 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xDuLL), v175, 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(v125, 0xDuLL), v126, 0xDuLL);
  a2[12] = vrshrn_high_n_s32(vrshrn_n_s32(v185, 0xDuLL), v184, 0xDuLL);
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(v143, 0xDuLL), v144, 0xDuLL);
  a2[18] = vrshrn_high_n_s32(vrshrn_n_s32(v183, 0xDuLL), v182, 0xDuLL);
  a2[19] = vrshrn_high_n_s32(vrshrn_n_s32(v145, 0xDuLL), v146, 0xDuLL);
  a2[28] = vrshrn_high_n_s32(vrshrn_n_s32(v191, 0xDuLL), v190, 0xDuLL);
  a2[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v148.i8, v208, 4), *v149.i8, v208, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v148, v208, 4), v149, v208, 5), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v201, 0xDuLL), v181, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v148.i8, v208, 7), *v149.i8, v208, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v148, v208, 7), v149, v208, 4), 0xDuLL);
  return result;
}

uint64_t sub_2779E2824(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v7 = off_28866D9A0[a4];
  v8 = off_28866DDA0[a4];
  v9 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 != 6)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    v6 = a1 + 6 * a3;
    v4 = -a3;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = v30;
  v12 = 1;
  do
  {
    v13 = v12;
    (v7)(v6 + 2 * v10, &v32, v4, 13);
    for (i = 0; i != 64; i += 16)
    {
      *(&v32 + i) = vrhaddq_s16(*(&v32 + i), 0);
    }

    v12 = 0;
    v15 = vtrn1q_s16(v32, v33);
    v16 = vtrn2q_s16(v32, v33);
    v17 = vtrn1q_s16(v34, v35);
    v18 = vtrn2q_s16(v34, v35);
    v19 = vtrn1q_s32(v15, v17);
    v20 = vtrn2q_s32(v15, v17);
    v21 = vtrn1q_s32(v16, v18);
    v22 = vtrn2q_s32(v16, v18);
    v18.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
    v19.i64[1] = v21.i64[0];
    v23.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
    v20.i64[1] = v22.i64[0];
    *v11 = v19;
    v11[1] = v20;
    v18.i64[1] = vextq_s8(v21, v21, 8uLL).u64[0];
    v23.i64[1] = vextq_s8(v22, v22, 8uLL).u64[0];
    v11[2] = v18;
    v11[3] = v23;
    v11 = &v31;
    v10 = 8;
  }

  while ((v13 & 1) != 0);
  if (v9)
  {
    v24 = v30;
  }

  else
  {
    v25 = v30;
    for (j = 120; j != -8; j -= 8)
    {
      v27 = *v25++;
      v24 = v29;
      *&v29[j] = v27;
    }
  }

  return (v8)(v24, a2, 4, 13);
}

int32x4_t sub_2779E29F4(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  v4 = vdup_n_s16(0x2D42u);
  do
  {
    *&v7[v3] = vqrshrn_n_s32(vmull_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 8;
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 8)
  {
    result = vmovl_s16(*&v7[i]);
    *a2 = result;
    a2 = (a2 + 4 * a3);
  }

  return result;
}

int16x4_t *sub_2779E2A90(int16x4_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v89[16] = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v7, *v6.i8, 3), v9, *v6.i8, 0), 0xDuLL);
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v7, *v6.i8, 2), v9, *v6.i8, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v13, *v6.i8, 1), v15, *v6.i8, 0), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v13, *v6.i8, 2), v15, *v6.i8, 1), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v10, *v6.i8, 1), v8, *v6.i8, 0), 0xDuLL);
  v20 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v10, *v6.i8, 2), v8, *v6.i8, 1), 0xDuLL);
  v21 = vmlal_lane_s16(vmull_lane_s16(v16, *v6.i8, 2), v14, *v6.i8, 3);
  v22 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v16, *v6.i8, 3), v14, *v6.i8, 0), 0xDuLL);
  v23 = vqrshrn_n_s32(v21, 0xDuLL);
  v24 = result[1];
  *v21.i8 = vqadd_s16(*result, v11);
  v26 = result[14];
  v25 = result[15];
  v27 = vqsub_s16(v12, v25);
  v28 = vqsub_s16(*result, v11);
  v29 = vqadd_s16(v25, v12);
  v31 = result[2];
  v30 = result[3];
  v32 = vqsub_s16(v18, v30);
  v33 = result[12];
  v34 = result[13];
  v35 = vqadd_s16(v33, v17);
  v36 = vqadd_s16(v30, v18);
  v37 = vqsub_s16(v33, v17);
  v38 = xmmword_277BEB8A0[16 * a4 - 156];
  v39 = xmmword_277BEB8A0[16 * a4 - 155];
  v40 = vqsub_s16(v20, v24);
  v41 = vqadd_s16(v26, v19);
  v42 = xmmword_277BEB8A0[16 * a4 - 154];
  v43 = xmmword_277BEB8A0[16 * a4 - 153];
  v44 = vqadd_s16(v24, v20);
  v45 = vqsub_s16(v26, v19);
  v46 = vqadd_s16(v31, v22);
  v47 = vqsub_s16(v23, v34);
  v48 = vqsub_s16(v31, v22);
  v49 = vqadd_s16(v34, v23);
  v50 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, v6, 5), v32, v6, 4), 0xDuLL);
  v51 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, v6, 6), v32, v6, 5), 0xDuLL);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(v36, v6, 6), v37, v6, 5);
  v53 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v36, v6, 5), v37, v6, 4), 0xDuLL);
  v54 = vqrshrn_n_s32(v52, 0xDuLL);
  v55 = vmlal_laneq_s16(vmull_laneq_s16(v47, v6, 5), v46, v6, 4);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(v47, v6, 6), v46, v6, 5);
  v57 = vqrshrn_n_s32(v55, 0xDuLL);
  *v56.i8 = vqrshrn_n_s32(v56, 0xDuLL);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(v49, v6, 7), v48, v6, 4);
  v59 = vmlal_laneq_s16(vmull_laneq_s16(v49, v6, 6), v48, v6, 7);
  *v6.i8 = vqrshrn_n_s32(v58, 0xDuLL);
  v60 = vqrshrn_n_s32(v59, 0xDuLL);
  *v59.i8 = vqadd_s16(*v21.i8, v50);
  *v58.i8 = vqadd_s16(v27, v51);
  v61 = vqadd_s16(v28, v53);
  v62 = vqsub_s16(v54, v29);
  *v21.i8 = vqsub_s16(*v21.i8, v50);
  v63 = vqsub_s16(v27, v51);
  v64 = vqsub_s16(v28, v53);
  v65 = vqadd_s16(v29, v54);
  v66 = vqadd_s16(v40, v57);
  v67 = vqadd_s16(v41, *v56.i8);
  v68 = vqsub_s16(v60, v44);
  v69 = vqadd_s16(v45, *v6.i8);
  v70 = vqsub_s16(v40, v57);
  *v56.i8 = vqsub_s16(v41, *v56.i8);
  v71 = vqadd_s16(v44, v60);
  *v6.i8 = vqsub_s16(v45, *v6.i8);
  v72 = vmlal_lane_s16(vmull_lane_s16(v67, *v5.i8, 2), v66, *v5.i8, 1);
  v73 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v5.i8, 1), v66, *v5.i8, 0), 0xDuLL);
  v74 = vqrshrn_n_s32(v72, 0xDuLL);
  *v72.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v69, v5, 4), v68, v5, 5), 0xDuLL);
  v75 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v69, v5, 7), v68, v5, 4), 0xDuLL);
  v76 = vmlal_lane_s16(vmull_lane_s16(v70, *v5.i8, 0), *v56.i8, *v5.i8, 1);
  v77 = vmlal_lane_s16(vmull_lane_s16(v70, *v5.i8, 3), *v56.i8, *v5.i8, 0);
  *v56.i8 = vqrshrn_n_s32(v76, 0xDuLL);
  *v77.i8 = vqrshrn_n_s32(v77, 0xDuLL);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(v71, v5, 4), *v6.i8, v5, 5);
  v79 = vmlal_laneq_s16(vmull_laneq_s16(v71, v5, 7), *v6.i8, v5, 4);
  *v5.i8 = vqrshrn_n_s32(v78, 0xDuLL);
  *v6.i8 = vqrshrn_n_s32(v79, 0xDuLL);
  *v79.i8 = vqadd_s16(*v59.i8, v73);
  *v78.i8 = vqadd_s16(*v58.i8, v74);
  v80 = vqadd_s16(v61, *v72.i8);
  v81 = vqadd_s16(v62, v75);
  v82 = vqadd_s16(*v21.i8, *v77.i8);
  v83 = vqadd_s16(v63, *v56.i8);
  v84 = vqadd_s16(v64, *v5.i8);
  v85 = vqsub_s16(*v6.i8, v65);
  *v59.i8 = vqsub_s16(*v59.i8, v73);
  *v58.i8 = vqsub_s16(*v58.i8, v74);
  *v72.i8 = vqsub_s16(v61, *v72.i8);
  v86 = vqsub_s16(v62, v75);
  v87 = vqsub_s16(*v21.i8, *v77.i8);
  v88 = vqsub_s16(v63, *v56.i8);
  *v5.i8 = vqsub_s16(v64, *v5.i8);
  *v6.i8 = vqadd_s16(v65, *v6.i8);
  v89[6] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v43.i8, 2), v84, *v43.i8, 1), 0xDuLL);
  v89[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v43, 4), *v59.i8, v43, 5), 0xDuLL);
  v89[8] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v43, 7), *v59.i8, v43, 4), 0xDuLL);
  v89[9] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v43.i8, 1), v84, *v43.i8, 0), 0xDuLL);
  v89[4] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v83, *v42.i8, 2), v82, *v42.i8, 1), 0xDuLL);
  v89[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, v42, 4), *v72.i8, v42, 5), 0xDuLL);
  v89[10] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, v42, 7), *v72.i8, v42, 4), 0xDuLL);
  v89[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v83, *v42.i8, 1), v82, *v42.i8, 0), 0xDuLL);
  v89[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v81, *v39.i8, 2), v80, *v39.i8, 1), 0xDuLL);
  v89[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v88, v39, 4), v87, v39, 5), 0xDuLL);
  v89[12] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v88, v39, 7), v87, v39, 4), 0xDuLL);
  v89[13] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v81, *v39.i8, 1), v80, *v39.i8, 0), 0xDuLL);
  v89[14] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v6.i8, v38, 5), *v5.i8, v38, 4), 0xDuLL);
  v89[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v38.i8, 1), *v79.i8, *v38.i8, 0), 0xDuLL);
  v89[0] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v38.i8, 2), *v79.i8, *v38.i8, 1), 0xDuLL);
  v89[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v6.i8, v38, 6), *v5.i8, v38, 5), 0xDuLL);
  do
  {
    *a2 = vmovl_s16(v89[v4++]);
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

int32x4_t sub_2779E2E10(uint64_t a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v72 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  for (i = 120; i != 56; i -= 8)
  {
    *&v63[v4] = vqadd_s16(*(a1 + v4), *(a1 + i));
    v4 += 8;
  }

  v10 = 56;
  v11 = 64;
  do
  {
    *&v63[v11] = vqsub_s16(*(a1 + v10), *(a1 + v11));
    v10 -= 8;
    v11 += 8;
  }

  while (v10 != -8);
  v12 = 0;
  for (j = 56; j != 24; j -= 8)
  {
    *(&v55 + v12) = vqadd_s16(*&v63[v12], *&v63[j]);
    v12 += 8;
  }

  v14 = 24;
  v15 = 32;
  do
  {
    *(&v55 + v15) = vqsub_s16(*&v63[v14], *&v63[v15]);
    v14 -= 8;
    v15 += 8;
  }

  while (v14 != -8);
  v16 = 0;
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v6.i8, 1), v69, *v6.i8, 0), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v6.i8, 2), v69, *v6.i8, 1), 0xDuLL);
  v19 = vmlal_lane_s16(vmull_lane_s16(v67, *v6.i8, 2), v68, *v6.i8, 1);
  v20 = vqadd_s16(v55, v58);
  v21 = vqadd_s16(v56, v57);
  v22 = vqsub_s16(v56, v57);
  v23 = vqsub_s16(v55, v58);
  v24 = vmlal_lane_s16(vmull_lane_s16(v60, *v6.i8, 1), v61, *v6.i8, 0);
  v25 = vmlal_lane_s16(vmull_lane_s16(v60, *v6.i8, 2), v61, *v6.i8, 1);
  v26 = vqadd_s16(v65, v18);
  v27 = vqsub_s16(v65, v18);
  v28 = vqsub_s16(v70, v17);
  v29 = vqadd_s16(v70, v17);
  v30 = vmlal_lane_s16(vmull_lane_s16(v21, *v6.i8, 1), v20, *v6.i8, 0);
  v31 = vmlal_lane_s16(vmull_lane_s16(v21, *v6.i8, 2), v20, *v6.i8, 1);
  v32 = vmlal_laneq_s16(vmull_laneq_s16(v22, v6, 5), v23, v6, 4);
  v33 = vmlal_laneq_s16(vmull_laneq_s16(v22, v6, 6), v23, v6, 5);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(v26, v6, 5), v29, v6, 4);
  v35 = vmlal_laneq_s16(vmull_laneq_s16(v26, v6, 6), v29, v6, 5);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(v27, v6, 6), v28, v6, 5);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(v27, v6, 7), v28, v6, 6);
  v38 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v39 = vqrshrn_n_s32(v19, 0xDuLL);
  *v19.i8 = vqrshrn_n_s32(v24, 0xDuLL);
  *v25.i8 = vqrshrn_n_s32(v25, 0xDuLL);
  *v24.i8 = vqadd_s16(v64, v39);
  v40 = vqsub_s16(v64, v39);
  v41 = vqsub_s16(v71, v38);
  v42 = vqadd_s16(v71, v38);
  v43 = vqrshrn_n_s32(v32, 0xDuLL);
  v44 = vqrshrn_n_s32(v33, 0xDuLL);
  *v33.i8 = vqadd_s16(v59, *v25.i8);
  *v32.i8 = vqsub_s16(v59, *v25.i8);
  *v25.i8 = vqsub_s16(v62, *v19.i8);
  *v19.i8 = vqadd_s16(v62, *v19.i8);
  *v34.i8 = vqrshrn_n_s32(v34, 0xDuLL);
  v45 = vqrshrn_n_s32(v35, 0xDuLL);
  *v36.i8 = vqrshrn_n_s32(v36, 0xDuLL);
  *v37.i8 = vqrshrn_n_s32(v37, 0xDuLL);
  v46 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, *v5.i8, 1), *v19.i8, *v5.i8, 0);
  v47 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, *v5.i8, 2), *v19.i8, *v5.i8, 1);
  *v19.i8 = vqrshrn_n_s32(v46, 0xDuLL);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v5, 4), *v25.i8, v5, 5);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v5, 7), *v25.i8, v5, 4);
  v50 = vqrshrn_n_s32(v48, 0xDuLL);
  *v25.i8 = vqadd_s16(*v24.i8, v45);
  v51 = vqsub_s16(*v24.i8, v45);
  *v24.i8 = vqsub_s16(v40, *v37.i8);
  *v37.i8 = vqadd_s16(v40, *v37.i8);
  v52 = vqadd_s16(v41, *v36.i8);
  *v36.i8 = vqsub_s16(v41, *v36.i8);
  *v48.i8 = vqsub_s16(v42, *v34.i8);
  *v34.i8 = vqadd_s16(v42, *v34.i8);
  v54[0] = vqrshrn_n_s32(v30, 0xDuLL);
  v54[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v7.i8, 1), *v34.i8, *v7.i8, 0), 0xDuLL);
  v54[14] = vqrshrn_n_s32(v47, 0xDuLL);
  v54[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v7.i8, 2), *v34.i8, *v7.i8, 1), 0xDuLL);
  v54[8] = vqrshrn_n_s32(v31, 0xDuLL);
  v54[9] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v51, v8, 4), *v48.i8, v8, 5), 0xDuLL);
  v54[6] = vqrshrn_n_s32(v49, 0xDuLL);
  v54[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v51, v8, 7), *v48.i8, v8, 4), 0xDuLL);
  v54[4] = v43;
  v54[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 1), *v36.i8, *v8.i8, 0), 0xDuLL);
  v54[10] = v50;
  v54[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 2), *v36.i8, *v8.i8, 1), 0xDuLL);
  v54[12] = v44;
  v54[13] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v37.i8, v7, 4), v52, v7, 5), 0xDuLL);
  v54[2] = v19.i64[0];
  v54[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v37.i8, v7, 7), v52, v7, 4), 0xDuLL);
  do
  {
    result = vmovl_s16(v54[v16]);
    *a2 = result;
    ++v16;
    a2 = (a2 + 4 * a3);
  }

  while (v16 != 16);
  return result;
}

_OWORD *sub_2779E3134(_OWORD *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 16;
    result = (result + 2 * a3);
  }

  while (v3 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    *(a2 + v5) = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*&v7[v5], *v6.i8), 0xCuLL), vmull_high_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 16;
  }

  while (v5 != 64);
  return result;
}

int16x8_t sub_2779E31F4(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v18 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *(&v18 + i) = vshlq_n_s16(*(&v18 + i), 2uLL);
  }

  v6 = qword_277BEBCA0[a4 - 10];
  v7 = vqaddq_s16(v18, v19);
  v8 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, v6, 0), *v19.i8, v6, 1), *v21.i8, v6, 3), *v20.i8, v6, 2);
  v9 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, v6, 0), v19, v6, 1), v21, v6, 3), v20, v6, 2);
  v10 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*v18.i8, v6, 3), *v20.i8, v6, 2), *v19.i8, v6, 0), *v21.i8, v6, 1);
  v11 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(v18, v6, 3), v20, v6, 2), v19, v6, 0), v21, v6, 1);
  v12 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v6, 2), *v21.i8, v6, 2);
  v13 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v6, 2), v21, v6, 2);
  v14 = vmul_s16(v6, 0x3000300030003);
  v15 = vmlal_lane_s16(vsubq_s32(v10, v8), *v20.i8, v14, 2);
  v16 = vmlal_high_lane_s16(vsubq_s32(v11, v9), v20, v14, 2);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v8, 0xDuLL), v9, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  return result;
}

int16x8_t sub_2779E332C(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v18 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *(&v18 + i) = vshlq_n_s16(*(&v18 + i), 2uLL);
  }

  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = vqaddq_s16(v18, v21);
  v8 = vqaddq_s16(v19, v20);
  v9 = vqsubq_s16(v19, v20);
  v10 = vqsubq_s16(v18, v21);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v6.i8, 1), *v7.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v6.i8, 1), v7, *v6.i8, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v6.i8, 2), *v7.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v6.i8, 2), v7, *v6.i8, 1), 0xDuLL);
  v13 = vmlal_laneq_s16(vmull_laneq_s16(*v9.i8, v6, 5), *v10.i8, v6, 4);
  v14 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v9, v6, 5), v10, v6, 4);
  v15 = vmlal_laneq_s16(vmull_laneq_s16(*v9.i8, v6, 6), *v10.i8, v6, 5);
  v16 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v9, v6, 6), v10, v6, 5);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v13, 0xDuLL), v14, 0xDuLL);
  *a2 = v11;
  a2[1] = result;
  a2[2] = v12;
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  return result;
}

void sub_2779E3450(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v5 = off_28866DD20[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 30 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866DCA0[a4])(a1, v43, a3, 13);
  v11 = 0;
  v12.i64[1] = 0;
  do
  {
    v43[v11] = vrhadd_s16(v43[v11], 0);
    ++v11;
  }

  while (v11 != 16);
  v13 = 0;
  v12.i64[0] = v43[0];
  v7.i64[0] = v43[1];
  v14 = vzip1q_s16(v12, v7);
  v7.i64[0] = v43[2];
  v8.i64[0] = v43[3];
  v15 = vzip1q_s16(v7, v8);
  v8.i64[0] = v43[4];
  v9.i64[0] = v43[5];
  v16 = vzip1q_s16(v8, v9);
  v9.i64[0] = v43[6];
  v10.i64[0] = v43[7];
  v17 = vzip1q_s16(v9, v10);
  v18 = vzip1q_s32(v14, v15);
  v19 = vzip2q_s32(v14, v15);
  v20 = vzip1q_s32(v16, v17);
  v21 = vzip2q_s32(v16, v17);
  v22 = vzip2q_s64(v18, v20);
  v18.i64[1] = v20.i64[0];
  v41[0] = v18;
  v41[1] = v22;
  v23 = vzip2q_s64(v19, v21);
  v19.i64[1] = v21.i64[0];
  v41[2] = v19;
  v41[3] = v23;
  v19.i64[0] = v43[8];
  v23.i64[0] = v43[9];
  v24 = vzip1q_s16(v19, v23);
  v23.i64[0] = v43[10];
  v21.i64[0] = v43[11];
  v25 = vzip1q_s16(v23, v21);
  v21.i64[0] = v43[12];
  v22.i64[0] = v43[13];
  v26 = vzip1q_s16(v21, v22);
  v22.i64[0] = v43[14];
  v18.i64[0] = v43[15];
  v27 = vzip1q_s16(v22, v18);
  v28 = vzip1q_s32(v24, v25);
  v29 = vzip2q_s32(v24, v25);
  v30 = vzip1q_s32(v26, v27);
  v31 = vzip2q_s64(v28, v30);
  v28.i64[1] = v30.i64[0];
  v32 = vzip2q_s32(v26, v27);
  v33 = vzip2q_s64(v29, v32);
  v29.i64[1] = v32.i64[0];
  v42[0] = v28;
  v42[1] = v31;
  v42[2] = v29;
  v42[3] = v33;
  v34 = v41;
  v35 = 1;
  do
  {
    v36 = v35;
    v37 = a2 + 4 * v13;
    if ((v6 & 1) == 0)
    {
      for (i = 48; i != -16; i -= 16)
      {
        v39 = *v34++;
        *&v40[i] = v39;
      }

      v34 = v40;
    }

    (v5)(v34, v37, 16, 12);
    v35 = 0;
    v34 = v42;
    v13 = 8;
  }

  while ((v36 & 1) != 0);
}

int32x4_t sub_2779E3644(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x16A1u);
  do
  {
    *&v10[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(a1 + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 64);
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v7 = *&v10[v5];
    v8 = vmovl_s16(*v7.i8);
    result = vmovl_high_s16(v7);
    v6[-1] = v8;
    *v6 = result;
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 64);
  return result;
}

int32x4_t sub_2779E36F0(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v5 = qword_277BEBCA0[a4 - 10];
  v6 = a1[1];
  v7 = vqaddq_s16(*a1, v6);
  v9 = a1[2];
  v8 = a1[3];
  v10 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a1->i8, v5, 0), *v6.i8, v5, 1), *v8.i8, v5, 3), *v9.i8, v5, 2);
  v11 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*a1, v5, 0), v6, v5, 1), v8, v5, 3), v9, v5, 2);
  v12 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*a1->i8, v5, 3), *v9.i8, v5, 2), *v6.i8, v5, 0), *v8.i8, v5, 1);
  v13 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(*a1, v5, 3), v9, v5, 2), v6, v5, 0), v8, v5, 1);
  v14 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v5, 2), *v8.i8, v5, 2);
  v15 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v5, 2), v8, v5, 2);
  v16 = vmul_s16(v5, 0x3000300030003);
  v21[0] = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  v21[1] = vrshrn_high_n_s32(vrshrn_n_s32(v14, 0xDuLL), v15, 0xDuLL);
  v21[2] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  v21[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vsubq_s32(v12, v10), *v9.i8, v16, 2), 0xDuLL), vmlal_high_lane_s16(vsubq_s32(v13, v11), v9, v16, 2), 0xDuLL);
  v17 = a2 + 1;
  do
  {
    v18 = v21[v4];
    v19 = vmovl_s16(*v18.i8);
    result = vmovl_high_s16(v18);
    v17[-1] = v19;
    *v17 = result;
    ++v4;
    v17 = (v17 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int32x4_t sub_2779E3814(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = vqaddq_s16(*a1, v7);
  v10 = vqaddq_s16(v6, v8);
  v11 = vqsubq_s16(v6, v8);
  v12 = vqsubq_s16(*a1, v7);
  v17[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 1), *v9.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 1), v9, *v5.i8, 0), 0xDuLL);
  v17[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 5), *v12.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 5), v12, v5, 4), 0xDuLL);
  v17[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 2), *v9.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 2), v9, *v5.i8, 1), 0xDuLL);
  v17[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 6), *v12.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 6), v12, v5, 5), 0xDuLL);
  v13 = a2 + 1;
  do
  {
    v14 = v17[v4];
    v15 = vmovl_s16(*v14.i8);
    result = vmovl_high_s16(v14);
    v13[-1] = v15;
    *v13 = result;
    ++v4;
    v13 = (v13 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

void *sub_2779E3924(void *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 8;
    result = (result + 2 * a3);
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *&v7[i] = vshl_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdup_n_s16(0x2D42u);
  do
  {
    *(a2 + v5) = vqrshrn_n_s32(vmull_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 8;
  }

  while (v5 != 128);
  return result;
}

int16x4_t *sub_2779E39DC(int16x4_t *result, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v96 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v80 + v4) = *result;
    v4 += 8;
    result = (result + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *(&v80 + i) = vshl_n_s16(*(&v80 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = xmmword_277BEB8A0[16 * a4 - 156];
  v9 = xmmword_277BEB8A0[16 * a4 - 155];
  v10 = xmmword_277BEB8A0[16 * a4 - 154];
  v11 = xmmword_277BEB8A0[16 * a4 - 153];
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v87, *v6, 3), v88, *v6, 0), 0xDuLL);
  v13 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v87, *v6, 2), v88, *v6, 3), 0xDuLL);
  v14 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v91, *v6, 1), v84, *v6, 0), 0xDuLL);
  v15 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v91, *v6, 2), v84, *v6, 1), 0xDuLL);
  v16 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v89, *v6, 1), v86, *v6, 0), 0xDuLL);
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v89, *v6, 2), v86, *v6, 1), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v6, 3), v90, *v6, 0), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v6, 2), v90, *v6, 3), 0xDuLL);
  v20 = vqadd_s16(v80, v12);
  v21 = vqsub_s16(v13, v95);
  v22 = vqsub_s16(v80, v12);
  v23 = vqadd_s16(v95, v13);
  v24 = vqsub_s16(v15, v83);
  v25 = vqadd_s16(v92, v14);
  v26 = vqadd_s16(v83, v15);
  v27 = vqsub_s16(v92, v14);
  v28 = vqsub_s16(v17, v81);
  v29 = vqadd_s16(v94, v16);
  v30 = vqadd_s16(v81, v17);
  v31 = vqsub_s16(v94, v16);
  v32 = vqadd_s16(v82, v18);
  v33 = vqsub_s16(v19, v93);
  v34 = vqsub_s16(v82, v18);
  v35 = vqadd_s16(v93, v19);
  v36 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v25, *v6->i8, 5), v24, *v6->i8, 4), 0xDuLL);
  v37 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v25, *v6->i8, 6), v24, *v6->i8, 5), 0xDuLL);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(v26, *v6->i8, 5), v27, *v6->i8, 4);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(v26, *v6->i8, 6), v27, *v6->i8, 5);
  v40 = vqrshrn_n_s32(v38, 0xDuLL);
  *v39.i8 = vqrshrn_n_s32(v39, 0xDuLL);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(v33, *v6->i8, 5), v32, *v6->i8, 4);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(v33, *v6->i8, 6), v32, *v6->i8, 5);
  v43 = vqrshrn_n_s32(v41, 0xDuLL);
  *v42.i8 = vqrshrn_n_s32(v42, 0xDuLL);
  v44 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, *v6->i8, 7), v34, *v6->i8, 4), 0xDuLL);
  v45 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, *v6->i8, 6), v34, *v6->i8, 7), 0xDuLL);
  v46 = vqadd_s16(v20, v36);
  *v41.i8 = vqadd_s16(v21, v37);
  v47 = vqadd_s16(v22, v40);
  v48 = vqsub_s16(*v39.i8, v23);
  v49 = vqsub_s16(v20, v36);
  v50 = vqsub_s16(v21, v37);
  v51 = vqsub_s16(v22, v40);
  v52 = vqadd_s16(v23, *v39.i8);
  v53 = vqadd_s16(v28, v43);
  *v39.i8 = vqadd_s16(v29, *v42.i8);
  v54 = vqsub_s16(v45, v30);
  v55 = vqadd_s16(v31, v44);
  v56 = vqsub_s16(v28, v43);
  v57 = vqsub_s16(v29, *v42.i8);
  v58 = vqadd_s16(v30, v45);
  v59 = vqsub_s16(v31, v44);
  v60 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *v7.i8, 1), v53, *v7.i8, 0), 0xDuLL);
  v61 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *v7.i8, 2), v53, *v7.i8, 1), 0xDuLL);
  *v39.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v55, v7, 4), v54, v7, 5), 0xDuLL);
  v62 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v55, v7, 7), v54, v7, 4), 0xDuLL);
  v63 = vmlal_lane_s16(vmull_lane_s16(v56, *v7.i8, 0), v57, *v7.i8, 1);
  v64 = vmlal_lane_s16(vmull_lane_s16(v56, *v7.i8, 3), v57, *v7.i8, 0);
  v65 = vqrshrn_n_s32(v63, 0xDuLL);
  *v64.i8 = vqrshrn_n_s32(v64, 0xDuLL);
  v66 = vmlal_laneq_s16(vmull_laneq_s16(v58, v7, 4), v59, v7, 5);
  v67 = vmlal_laneq_s16(vmull_laneq_s16(v58, v7, 7), v59, v7, 4);
  *v7.i8 = vqrshrn_n_s32(v66, 0xDuLL);
  v68 = vqrshrn_n_s32(v67, 0xDuLL);
  *v67.i8 = vqadd_s16(v46, v60);
  *v66.i8 = vqadd_s16(*v41.i8, v61);
  v69 = vqadd_s16(v47, *v39.i8);
  v70 = vqadd_s16(v48, v62);
  v71 = vqadd_s16(v49, *v64.i8);
  v72 = vqadd_s16(v50, v65);
  v73 = vqadd_s16(v51, *v7.i8);
  v74 = vqsub_s16(v68, v52);
  v75 = vqsub_s16(v46, v60);
  *v41.i8 = vqsub_s16(*v41.i8, v61);
  v76 = vqsub_s16(v47, *v39.i8);
  v77 = vqsub_s16(v48, v62);
  v78 = vqsub_s16(v49, *v64.i8);
  *v39.i8 = vqsub_s16(v50, v65);
  *v7.i8 = vqsub_s16(v51, *v7.i8);
  v79 = vqadd_s16(v52, v68);
  a2[6] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v74, *v11.i8, 2), v73, *v11.i8, 1), 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v11, 4), v75, v11, 5), 0xDuLL);
  a2[8] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v11, 7), v75, v11, 4), 0xDuLL);
  a2[9] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v74, *v11.i8, 1), v73, *v11.i8, 0), 0xDuLL);
  a2[4] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v72, *v10.i8, 2), v71, *v10.i8, 1), 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v77, v10, 4), v76, v10, 5), 0xDuLL);
  a2[10] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v77, v10, 7), v76, v10, 4), 0xDuLL);
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v72, *v10.i8, 1), v71, *v10.i8, 0), 0xDuLL);
  a2[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v70, *v9.i8, 2), v69, *v9.i8, 1), 0xDuLL);
  a2[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v39.i8, v9, 4), v78, v9, 5), 0xDuLL);
  a2[12] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v39.i8, v9, 7), v78, v9, 4), 0xDuLL);
  a2[13] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v70, *v9.i8, 1), v69, *v9.i8, 0), 0xDuLL);
  a2[14] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v8, 5), *v7.i8, v8, 4), 0xDuLL);
  a2[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v8.i8, 1), *v67.i8, *v8.i8, 0), 0xDuLL);
  *a2 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v8.i8, 2), *v67.i8, *v8.i8, 1), 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v8, 6), *v7.i8, v8, 5), 0xDuLL);
  return result;
}

int16x4_t sub_2779E3D78(void *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v73 = *MEMORY[0x277D85DE8];
  do
  {
    *&v55[v4] = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *&v55[i] = vshl_n_s16(*&v55[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v9 = xmmword_277BEB8A0[16 * a4 - 158];
  v10 = xmmword_277BEB8A0[16 * a4 - 157];
  for (j = 120; j != 56; j -= 8)
  {
    *&v64[v6] = vqadd_s16(*&v55[v6], *&v55[j]);
    v6 += 8;
  }

  v12 = 56;
  v13 = 64;
  do
  {
    *&v64[v13] = vqsub_s16(*&v55[v12], *&v55[v13]);
    v12 -= 8;
    v13 += 8;
  }

  while (v12 != -8);
  v14 = 0;
  for (k = 56; k != 24; k -= 8)
  {
    *(&v56 + v14) = vqadd_s16(*&v64[v14], *&v64[k]);
    v14 += 8;
  }

  v16 = 24;
  v17 = 32;
  do
  {
    *(&v56 + v17) = vqsub_s16(*&v64[v16], *&v64[v17]);
    v16 -= 8;
    v17 += 8;
  }

  while (v16 != -8);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v8.i8, 1), v70, *v8.i8, 0), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v8.i8, 2), v70, *v8.i8, 1), 0xDuLL);
  v20 = vmlal_lane_s16(vmull_lane_s16(v68, *v8.i8, 2), v69, *v8.i8, 1);
  v21 = vqadd_s16(v56, v59);
  v22 = vqadd_s16(v57, v58);
  v23 = vqsub_s16(v57, v58);
  v24 = vqsub_s16(v56, v59);
  v25 = vmlal_lane_s16(vmull_lane_s16(v61, *v8.i8, 1), v62, *v8.i8, 0);
  v26 = vmlal_lane_s16(vmull_lane_s16(v61, *v8.i8, 2), v62, *v8.i8, 1);
  v27 = vqadd_s16(v66, v19);
  v28 = vqsub_s16(v66, v19);
  v29 = vqsub_s16(v71, v18);
  v30 = vqadd_s16(v71, v18);
  v31 = vmlal_lane_s16(vmull_lane_s16(v22, *v8.i8, 1), v21, *v8.i8, 0);
  v32 = vmlal_lane_s16(vmull_lane_s16(v22, *v8.i8, 2), v21, *v8.i8, 1);
  v33 = vmlal_laneq_s16(vmull_laneq_s16(v23, v8, 5), v24, v8, 4);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(v23, v8, 6), v24, v8, 5);
  v35 = vmlal_laneq_s16(vmull_laneq_s16(v27, v8, 5), v30, v8, 4);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(v27, v8, 6), v30, v8, 5);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(v28, v8, 6), v29, v8, 5);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(v28, v8, 7), v29, v8, 6);
  v39 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v68, *v8.i8, 1), v69, *v8.i8, 0), 0xDuLL);
  v40 = vqrshrn_n_s32(v20, 0xDuLL);
  *v20.i8 = vqrshrn_n_s32(v25, 0xDuLL);
  *v26.i8 = vqrshrn_n_s32(v26, 0xDuLL);
  *v25.i8 = vqadd_s16(v65, v40);
  v41 = vqsub_s16(v65, v40);
  v42 = vqsub_s16(v72, v39);
  v43 = vqadd_s16(v72, v39);
  v44 = vqrshrn_n_s32(v33, 0xDuLL);
  v45 = vqrshrn_n_s32(v34, 0xDuLL);
  *v34.i8 = vqadd_s16(v60, *v26.i8);
  *v33.i8 = vqsub_s16(v60, *v26.i8);
  *v26.i8 = vqsub_s16(v63, *v20.i8);
  *v20.i8 = vqadd_s16(v63, *v20.i8);
  *v35.i8 = vqrshrn_n_s32(v35, 0xDuLL);
  v46 = vqrshrn_n_s32(v36, 0xDuLL);
  *v37.i8 = vqrshrn_n_s32(v37, 0xDuLL);
  *v38.i8 = vqrshrn_n_s32(v38, 0xDuLL);
  v47 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v7.i8, 1), *v20.i8, *v7.i8, 0);
  v48 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v7.i8, 2), *v20.i8, *v7.i8, 1);
  *v20.i8 = vqrshrn_n_s32(v47, 0xDuLL);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v7, 4), *v26.i8, v7, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v7, 7), *v26.i8, v7, 4);
  v51 = vqrshrn_n_s32(v49, 0xDuLL);
  *v26.i8 = vqadd_s16(*v25.i8, v46);
  v52 = vqsub_s16(*v25.i8, v46);
  *v25.i8 = vqsub_s16(v41, *v38.i8);
  *v38.i8 = vqadd_s16(v41, *v38.i8);
  v53 = vqadd_s16(v42, *v37.i8);
  *v37.i8 = vqsub_s16(v42, *v37.i8);
  *v49.i8 = vqsub_s16(v43, *v35.i8);
  *v35.i8 = vqadd_s16(v43, *v35.i8);
  *a2 = vqrshrn_n_s32(v31, 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v26.i8, *v9.i8, 1), *v35.i8, *v9.i8, 0), 0xDuLL);
  a2[14] = vqrshrn_n_s32(v48, 0xDuLL);
  a2[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v26.i8, *v9.i8, 2), *v35.i8, *v9.i8, 1), 0xDuLL);
  a2[8] = vqrshrn_n_s32(v32, 0xDuLL);
  a2[9] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v52, v10, 4), *v49.i8, v10, 5), 0xDuLL);
  a2[6] = vqrshrn_n_s32(v50, 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v52, v10, 7), *v49.i8, v10, 4), 0xDuLL);
  a2[4] = v44;
  a2[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v10.i8, 1), *v37.i8, *v10.i8, 0), 0xDuLL);
  a2[10] = v51;
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v10.i8, 2), *v37.i8, *v10.i8, 1), 0xDuLL);
  a2[12] = v45;
  a2[13] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v38.i8, v9, 4), v53, v9, 5), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v38.i8, v9, 7), v53, v9, 4), 0xDuLL);
  a2[2] = *v20.i8;
  a2[3] = result;
  return result;
}

uint64_t sub_2779E40C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = 0;
  v77 = *MEMORY[0x277D85DE8];
  v16 = off_28866D7A0[v15];
  v17 = v75;
  do
  {
    (v16)(v13 + 16 * v14, v76, v10, 12);
    for (i = 0; i != 512; i += 16)
    {
      *&v76[i] = vrshrq_n_s16(*&v76[i], 4uLL);
    }

    v24 = v17;
    for (j = 112; j != 624; j += 128)
    {
      v26 = *&v75[j + 3920];
      v27 = *&v75[j + 3936];
      v28 = vtrn1q_s16(v26, v27);
      v29 = vtrn2q_s16(v26, v27);
      v30 = *&v75[j + 3952];
      v31 = *&v75[j + 3968];
      v32 = vtrn1q_s16(v30, v31);
      v33 = vtrn2q_s16(v30, v31);
      v34 = *&v75[j + 3984];
      v35 = *&v75[j + 4000];
      v36 = vtrn1q_s16(v34, v35);
      v37 = vtrn2q_s16(v34, v35);
      v38 = *&v75[j + 4016];
      v39 = *&v76[j];
      v40 = vtrn1q_s16(v38, v39);
      v41 = vtrn2q_s16(v38, v39);
      v42 = vtrn1q_s32(v28, v32);
      v43 = vtrn2q_s32(v28, v32);
      v44 = vtrn1q_s32(v29, v33);
      v45 = vtrn2q_s32(v29, v33);
      v46 = vtrn1q_s32(v36, v40);
      v47 = vtrn2q_s32(v36, v40);
      v48 = vzip2q_s64(v42, v46);
      v42.i64[1] = v46.i64[0];
      v49 = vtrn1q_s32(v37, v41);
      v50 = vtrn2q_s32(v37, v41);
      v51 = vzip2q_s64(v44, v49);
      v44.i64[1] = v49.i64[0];
      v52 = vzip2q_s64(v43, v47);
      v43.i64[1] = v47.i64[0];
      v47.i64[0] = v45.i64[0];
      v47.i64[1] = v50.i64[0];
      v24[-4] = v42;
      v24[-3] = v44;
      v24[-2] = v43;
      v24[-1] = v47;
      *v24 = v48;
      v24[1] = v51;
      v24[2] = v52;
      v24[3] = vzip2q_s64(v45, v50);
      v24 += 64;
    }

    ++v14;
    v17 += 8;
  }

  while (v14 != 8);
  v53 = 0;
  v54 = (v12 + 16);
  v55 = &v74;
  v71 = vdupq_n_s32(0x16A1u);
  do
  {
    for (k = 0; k != 1024; k += 16)
    {
      v57 = *&v55[k];
      *&v73[k] = vmovl_s16(*v57.i8);
      *&v72[k] = vmovl_high_s16(v57);
    }

    sub_2779E436C(v73, v73, 11, v18, v19, v20, v21, v22);
    result = sub_2779E436C(v72, v72, 11, v58, v59, v60, v61, v62);
    for (m = 0; m != 512; m += 16)
    {
      *&v73[m] = vrshrq_n_s32(*&v73[m], 2uLL);
    }

    for (n = 0; n != 512; n += 16)
    {
      *&v72[n] = vrshrq_n_s32(*&v72[n], 2uLL);
    }

    for (ii = 0; ii != 512; ii += 16)
    {
      *&v73[ii] = vrshrq_n_s32(vmulq_s32(*&v73[ii], v71), 0xCuLL);
    }

    for (jj = 0; jj != 512; jj += 16)
    {
      *&v72[jj] = vrshrq_n_s32(vmulq_s32(*&v72[jj], v71), 0xCuLL);
    }

    v68 = 0;
    v69 = v54;
    do
    {
      v70 = *&v72[v68];
      *(v69 - 1) = *&v73[v68];
      *v69 = v70;
      v68 += 16;
      v69 += 8;
    }

    while (v68 != 512);
    ++v53;
    v55 += 1024;
    v54 += 2;
  }

  while (v53 != 4);
  return result;
}

uint64_t sub_2779E436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = 0;
  v447 = *MEMORY[0x277D85DE8];
  v12 = &xmmword_277BEB8A0[16 * (v11 - 10)];
  v14 = *v12;
  v13 = v12[1];
  v254 = v12[3];
  v256 = v12[2];
  v258 = v12[5];
  v260 = v12[6];
  v262 = v12[7];
  v264 = v12[4];
  v269 = v12[10];
  v270 = v12[11];
  v271 = v12[12];
  v268 = v12[13];
  v15 = 1008;
  v266 = v12[9];
  v267 = v12[14];
  v272 = v12[15];
  v273 = v12[8];
  do
  {
    *&v430[v10] = vqaddq_s32(*(result + v10), *(result + v15));
    v15 -= 16;
    v10 += 16;
  }

  while (v15 != 496);
  v16 = 496;
  v17 = 512;
  do
  {
    *&v430[v17] = vqsubq_s32(*(result + v16), *(result + v17));
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v18 = 0;
  for (i = 496; i != 240; i -= 16)
  {
    *&v405[v18] = vqaddq_s32(*&v430[v18], *&v430[i]);
    v18 += 16;
  }

  v20 = 240;
  v21 = 256;
  do
  {
    *&v405[v21] = vqsubq_s32(*&v430[v20], *&v430[v21]);
    v20 -= 16;
    v21 += 16;
  }

  while (v20 != -16);
  v22 = 0;
  v23 = vmovl_s16(*v14.i8);
  v24 = vmovl_s16(vdup_lane_s16(*v14.i8, 0));
  v25 = vmovl_s16(vdup_lane_s16(*v14.i8, 1));
  v26 = vmovl_s16(vdup_lane_s16(*v14.i8, 2));
  v429 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v446, v24), v431, v25), 0xDuLL);
  v428 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v445, v24), v432, v25), 0xDuLL);
  v414 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v446, v25), v431, v26), 0xDuLL);
  v415 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v445, v25), v432, v26), 0xDuLL);
  v427 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v444, v24), v433, v25), 0xDuLL);
  v426 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v443, v24), v434, v25), 0xDuLL);
  v416 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v444, v25), v433, v26), 0xDuLL);
  v417 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v443, v25), v434, v26), 0xDuLL);
  v425 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v442, v24), v435, v25), 0xDuLL);
  v424 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v441, v24), v436, v25), 0xDuLL);
  v418 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v442, v25), v435, v26), 0xDuLL);
  v419 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v441, v25), v436, v26), 0xDuLL);
  v27 = vdupq_lane_s32(*v23.i8, 0);
  v28 = vdupq_lane_s32(*v23.i8, 1);
  v29 = vdupq_laneq_s32(v23, 2);
  v423 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v440, v24), v437, v25), 0xDuLL);
  v422 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v439, v24), v438, v25), 0xDuLL);
  v420 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v440, v25), v437, v26), 0xDuLL);
  v421 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v439, v25), v438, v26), 0xDuLL);
  for (j = 240; j != 112; j -= 16)
  {
    *&v372[v22] = vqaddq_s32(*&v405[v22], *&v405[j]);
    v22 += 16;
  }

  v31 = 112;
  v32 = 128;
  do
  {
    *&v372[v32] = vqsubq_s32(*&v405[v31], *&v405[v32]);
    v31 -= 16;
    v32 += 16;
  }

  while (v31 != -16);
  v388 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v413, v27), v406, v28), 0xDuLL);
  v387 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v412, v27), v407, v28), 0xDuLL);
  v381 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v413, v28), v406, v29), 0xDuLL);
  v382 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v412, v28), v407, v29), 0xDuLL);
  v386 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v411, v27), v408, v28), 0xDuLL);
  v385 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v410, v27), v409, v28), 0xDuLL);
  v33 = 752;
  v383 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v411, v28), v408, v29), 0xDuLL);
  v384 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v410, v28), v409, v29), 0xDuLL);
  v34 = 512;
  do
  {
    *&v372[v34] = vqaddq_s32(*&v430[v34], *&v405[v33]);
    v33 -= 16;
    v34 += 16;
  }

  while (v33 != 624);
  v35 = 640;
  do
  {
    *&v372[v35] = vqsubq_s32(*&v430[v33], *&v405[v35]);
    v33 -= 16;
    v35 += 16;
  }

  while (v33 != 496);
  v36 = 1008;
  v37 = 768;
  do
  {
    *&v372[v37] = vqsubq_s32(*&v430[v36], *&v405[v37]);
    v36 -= 16;
    v37 += 16;
  }

  while (v36 != 880);
  v38 = 896;
  v39 = 880;
  do
  {
    *&v372[v38] = vqaddq_s32(*&v430[v38], *&v405[v39]);
    v38 += 16;
    v39 -= 16;
  }

  while (v38 != 1024);
  v40 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v328 + v40) = vqaddq_s32(*&v372[v40], *&v372[k]);
    v40 += 16;
  }

  v42 = 48;
  v43 = 64;
  do
  {
    *(&v328 + v43) = vqsubq_s32(*&v372[v42], *&v372[v43]);
    v42 -= 16;
    v43 += 16;
  }

  while (v42 != -16);
  v339 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v378, v27), v375, v28), 0xDuLL);
  v338 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v377, v27), v376, v28), 0xDuLL);
  v44 = 368;
  v336 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v378, v28), v375, v29), 0xDuLL);
  v337 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v377, v28), v376, v29), 0xDuLL);
  v45 = 256;
  do
  {
    *(&v328 + v45) = vqaddq_s32(*&v405[v45], *&v372[v44]);
    v44 -= 16;
    v45 += 16;
  }

  while (v44 != 304);
  v46 = 320;
  do
  {
    *(&v328 + v46) = vqsubq_s32(*&v405[v44], *&v372[v46]);
    v44 -= 16;
    v46 += 16;
  }

  while (v44 != 240);
  v47 = 496;
  v48 = 384;
  do
  {
    *(&v328 + v48) = vqsubq_s32(*&v405[v47], *&v372[v48]);
    v47 -= 16;
    v48 += 16;
  }

  while (v47 != 432);
  v49 = 448;
  v50 = 432;
  do
  {
    *(&v328 + v49) = vqaddq_s32(*&v405[v49], *&v372[v50]);
    v49 += 16;
    v50 -= 16;
  }

  while (v49 != 512);
  v51 = vmovl_high_s16(v14);
  v52 = vdupq_lane_s32(*v51.i8, 0);
  v53 = vdupq_lane_s32(*v51.i8, 1);
  v54 = vmovl_s16(vdup_laneq_s16(v14, 4));
  v55 = vmovl_s16(vdup_laneq_s16(v14, 5));
  v56 = vmovl_s16(vdup_laneq_s16(v14, 6));
  v371 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v404, v54), v389, v55), 0xDuLL);
  v370 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v403, v54), v390, v55), 0xDuLL);
  v356 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v404, v55), v389, v56), 0xDuLL);
  v357 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v403, v55), v390, v56), 0xDuLL);
  v369 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v402, v54), v391, v55), 0xDuLL);
  v368 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v401, v54), v392, v55), 0xDuLL);
  v358 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v402, v55), v391, v56), 0xDuLL);
  v359 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v401, v55), v392, v56), 0xDuLL);
  v57 = vmovl_s16(vdup_laneq_s16(v14, 7));
  v367 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v400, v55), v393, v56), 0xDuLL);
  v366 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v399, v55), v394, v56), 0xDuLL);
  v360 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v400, v56), v393, v57), 0xDuLL);
  v361 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v399, v56), v394, v57), 0xDuLL);
  v365 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v398, v55), v395, v56), 0xDuLL);
  v364 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v397, v55), v396, v56), 0xDuLL);
  v362 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v398, v56), v395, v57), 0xDuLL);
  v363 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v397, v56), v396, v57), 0xDuLL);
  v274 = vqaddq_s32(v328, v331);
  v275 = vqaddq_s32(v329, v330);
  v276 = vqsubq_s32(v329, v330);
  v277 = vqsubq_s32(v328, v331);
  v278 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v334, v28), v333, v29), 0xDuLL);
  v279 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v334, v27), v333, v28), 0xDuLL);
  v280 = vqaddq_s32(v373, v337);
  v281 = vqaddq_s32(v374, v336);
  v282 = vqsubq_s32(v374, v336);
  v283 = vqsubq_s32(v373, v337);
  v284 = vqsubq_s32(v380, v338);
  v285 = vqsubq_s32(v379, v339);
  v58 = vdupq_laneq_s32(v51, 2);
  v286 = vqaddq_s32(v379, v339);
  v287 = vqaddq_s32(v380, v338);
  v294 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v352, v54), v343, v55), 0xDuLL);
  v295 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v353, v54), v342, v55), 0xDuLL);
  v59 = vdupq_laneq_s32(v51, 3);
  v288 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v353, v55), v342, v56), 0xDuLL);
  v289 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v352, v55), v343, v56), 0xDuLL);
  v292 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v350, v55), v345, v56), 0xDuLL);
  v293 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v351, v55), v344, v56), 0xDuLL);
  v60 = 624;
  v61 = 512;
  v290 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v351, v56), v344, v57), 0xDuLL);
  v291 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v350, v56), v345, v57), 0xDuLL);
  do
  {
    *(&v274 + v61) = vqaddq_s32(*&v372[v61], *(&v328 + v60));
    v60 -= 16;
    v61 += 16;
  }

  while (v60 != 560);
  v62 = 576;
  do
  {
    *(&v274 + v62) = vqsubq_s32(*&v372[v60], *(&v328 + v62));
    v60 -= 16;
    v62 += 16;
  }

  while (v60 != 496);
  v63 = 752;
  v64 = 640;
  do
  {
    *(&v274 + v64) = vqsubq_s32(*&v372[v63], *(&v328 + v64));
    v63 -= 16;
    v64 += 16;
  }

  while (v63 != 688);
  v65 = 704;
  v66 = 688;
  do
  {
    *(&v274 + v65) = vqaddq_s32(*&v372[v65], *(&v328 + v66));
    v65 += 16;
    v66 -= 16;
  }

  while (v65 != 768);
  v67 = 880;
  v68 = 768;
  do
  {
    *(&v274 + v68) = vqaddq_s32(*&v372[v68], *(&v328 + v67));
    v67 -= 16;
    v68 += 16;
  }

  while (v67 != 816);
  v69 = 832;
  do
  {
    *(&v274 + v69) = vqsubq_s32(*&v372[v67], *(&v328 + v69));
    v67 -= 16;
    v69 += 16;
  }

  while (v67 != 752);
  v70 = 1008;
  v71 = 896;
  do
  {
    *(&v274 + v71) = vqsubq_s32(*&v372[v70], *(&v328 + v71));
    v70 -= 16;
    v71 += 16;
  }

  while (v70 != 944);
  v72 = 960;
  v73 = 944;
  do
  {
    *(&v274 + v72) = vqaddq_s32(*&v372[v72], *(&v328 + v73));
    v72 += 16;
    v73 -= 16;
  }

  while (v72 != 1024);
  v252 = vmlaq_s32(vmulq_s32(v274, v27), v275, v28);
  v253 = vmlaq_s32(vmulq_s32(v277, v52), v276, v53);
  v74 = vmlaq_s32(vmulq_s32(v286, v52), v281, v53);
  v75 = vmlaq_s32(vmulq_s32(v286, v53), v281, v58);
  v76 = vmlaq_s32(vmulq_s32(v285, v53), v282, v58);
  v77 = vmlaq_s32(vmulq_s32(v285, v58), v282, v59);
  v78 = vqaddq_s32(v341, v288);
  v79 = vqsubq_s32(v341, v288);
  v80 = vqsubq_s32(v354, v295);
  v81 = vqaddq_s32(v354, v295);
  v82 = vmovl_s16(vdup_lane_s16(*v13.i8, 0));
  v83 = vmovl_s16(vdup_lane_s16(*v13.i8, 1));
  v84 = vmlaq_s32(vmulq_s32(v325, v82), v298, v83);
  v85 = vmovl_s16(vdup_lane_s16(*v13.i8, 2));
  v86 = vmlaq_s32(vmulq_s32(v325, v83), v298, v85);
  v239 = vmlaq_s32(vmulq_s32(v324, v82), v299, v83);
  v241 = vmlaq_s32(vmulq_s32(v324, v83), v299, v85);
  v244 = vmlaq_s32(vmulq_s32(v323, v83), v300, v85);
  v87 = vmovl_s16(vdup_lane_s16(*v13.i8, 3));
  v246 = vmlaq_s32(vmulq_s32(v323, v85), v300, v87);
  v88 = vmlaq_s32(vmulq_s32(v322, v83), v301, v85);
  v89 = vmlaq_s32(vmulq_s32(v322, v85), v301, v87);
  v251 = vmlaq_s32(vmulq_s32(vqaddq_s32(v335, v279), v82), vqaddq_s32(v332, v278), v83);
  v90 = vmlaq_s32(vmulq_s32(v81, v82), v78, v83);
  v91 = vmlaq_s32(vmulq_s32(v81, v83), v78, v85);
  v234 = vmlaq_s32(vmulq_s32(v80, v83), v79, v85);
  v237 = vmlaq_s32(vmulq_s32(v80, v85), v79, v87);
  v92 = vqsubq_s32(v346, v291);
  v93 = vqaddq_s32(v346, v291);
  v94 = vqaddq_s32(v349, v292);
  v95 = vqsubq_s32(v349, v292);
  v96 = vmovl_s16(vdup_laneq_s16(v13, 5));
  v97 = vmovl_s16(vdup_laneq_s16(v13, 4));
  v98 = vmlaq_s32(vmulq_s32(v317, v96), v306, v97);
  v99 = vmovl_s16(vdup_laneq_s16(v13, 7));
  v100 = vmlaq_s32(vmulq_s32(v317, v97), v306, v99);
  v243 = vmlaq_s32(vmulq_s32(v316, v96), v307, v97);
  v245 = vmlaq_s32(vmulq_s32(v316, v97), v307, v99);
  v248 = vmlaq_s32(vmulq_s32(v315, v97), v308, v99);
  v101 = vmovl_s16(vdup_laneq_s16(v13, 6));
  v102 = vmlaq_s32(vmulq_s32(v314, v97), v309, v99);
  v103 = vmlaq_s32(vmulq_s32(v314, v99), v309, v101);
  v249 = vmlaq_s32(vmulq_s32(v315, v99), v308, v101);
  v250 = vmlaq_s32(vmulq_s32(vqsubq_s32(v335, v279), v97), vqsubq_s32(v332, v278), v99);
  v104 = vmlaq_s32(vmulq_s32(v95, v96), v92, v97);
  v105 = vmlaq_s32(vmulq_s32(v95, v97), v92, v99);
  v106 = vmlaq_s32(vmulq_s32(v94, v97), v93, v99);
  v107 = vmlaq_s32(vmulq_s32(v94, v99), v93, v101);
  v108 = vrshrq_n_s32(v86, 0xDuLL);
  v109 = vqaddq_s32(v297, v108);
  v110 = vqsubq_s32(v297, v108);
  v111 = vrshrq_n_s32(v84, 0xDuLL);
  v112 = vqsubq_s32(v326, v111);
  v113 = vqaddq_s32(v326, v111);
  v114 = vrshrq_n_s32(v74, 0xDuLL);
  v115 = vrshrq_n_s32(v75, 0xDuLL);
  v116 = vmovl_s16(vdup_lane_s16(*v256.i8, 0));
  v117 = vmovl_s16(vdup_lane_s16(*v256.i8, 1));
  v247 = vmlaq_s32(vmulq_s32(vqaddq_s32(v287, v114), v116), vqaddq_s32(v280, v115), v117);
  v118 = vmovl_s16(vdup_lane_s16(*v256.i8, 2));
  v119 = vmlaq_s32(vmulq_s32(v113, v116), v109, v117);
  v120 = vmlaq_s32(vmulq_s32(v113, v117), v109, v118);
  v121 = vmlaq_s32(vmulq_s32(v112, v117), v110, v118);
  v233 = vmlaq_s32(vmulq_s32(v112, v118), v110, vmovl_s16(vdup_lane_s16(*v256.i8, 3)));
  v122 = vqsubq_s32(v287, v114);
  v123 = vrshrq_n_s32(v89, 0xDuLL);
  v124 = vqsubq_s32(v302, v123);
  v125 = vqaddq_s32(v302, v123);
  v126 = vrshrq_n_s32(v88, 0xDuLL);
  v127 = vqaddq_s32(v321, v126);
  v128 = vqsubq_s32(v321, v126);
  v129 = vmovl_s16(vdup_laneq_s16(v254, 4));
  v130 = vmovl_s16(vdup_laneq_s16(v254, 7));
  v242 = vmlaq_s32(vmulq_s32(v122, v129), vqsubq_s32(v280, v115), v130);
  v131 = vmlaq_s32(vmulq_s32(v128, vmovl_s16(vdup_laneq_s16(v254, 5))), v124, v129);
  v132 = vmlaq_s32(vmulq_s32(v128, v129), v124, v130);
  v133 = vmlaq_s32(vmulq_s32(v127, v129), v125, v130);
  v134 = vmlaq_s32(vmulq_s32(v127, v130), v125, vmovl_s16(vdup_laneq_s16(v254, 6)));
  v135 = vrshrq_n_s32(v100, 0xDuLL);
  v136 = vqaddq_s32(v305, v135);
  v137 = vqsubq_s32(v305, v135);
  v138 = vrshrq_n_s32(v98, 0xDuLL);
  v139 = vqsubq_s32(v318, v138);
  v140 = vqaddq_s32(v318, v138);
  v141 = vrshrq_n_s32(v76, 0xDuLL);
  v142 = vrshrq_n_s32(v77, 0xDuLL);
  v143 = vmovl_s16(vdup_lane_s16(*v254.i8, 0));
  v144 = vmovl_s16(vdup_lane_s16(*v254.i8, 1));
  v240 = vmlaq_s32(vmulq_s32(vqsubq_s32(v284, v141), v143), vqsubq_s32(v283, v142), v144);
  v145 = vmovl_s16(vdup_lane_s16(*v254.i8, 2));
  v146 = vmlaq_s32(vmulq_s32(v140, v143), v136, v144);
  v147 = vmlaq_s32(vmulq_s32(v140, v144), v136, v145);
  v148 = vmlaq_s32(vmulq_s32(v139, v144), v137, v145);
  v149 = vmlaq_s32(vmulq_s32(v139, v145), v137, vmovl_s16(vdup_lane_s16(*v254.i8, 3)));
  v150 = vqaddq_s32(v283, v142);
  v151 = vrshrq_n_s32(v103, 0xDuLL);
  v152 = vqsubq_s32(v310, v151);
  v153 = vqaddq_s32(v310, v151);
  v154 = vrshrq_n_s32(v102, 0xDuLL);
  v155 = vqaddq_s32(v313, v154);
  v156 = vqsubq_s32(v313, v154);
  v157 = vmovl_s16(vdup_laneq_s16(v256, 4));
  v158 = vmovl_s16(vdup_laneq_s16(v256, 7));
  v255 = vmlaq_s32(vmulq_s32(vqaddq_s32(v284, v141), v157), v150, v158);
  v159 = vmlaq_s32(vmulq_s32(v156, vmovl_s16(vdup_laneq_s16(v256, 5))), v152, v157);
  v160 = vmlaq_s32(vmulq_s32(v156, v157), v152, v158);
  v161 = vmlaq_s32(vmulq_s32(v155, v157), v153, v158);
  v162 = vmlaq_s32(vmulq_s32(v155, v158), v153, vmovl_s16(vdup_laneq_s16(v256, 6)));
  v163 = vrshrq_n_s32(v90, 0xDuLL);
  v164 = vqaddq_s32(v355, v294);
  v165 = vrshrq_n_s32(v91, 0xDuLL);
  v166 = vqaddq_s32(v340, v289);
  v236 = vmlaq_s32(vmulq_s32(vqaddq_s32(v164, v163), vmovl_s16(vdup_lane_s16(*v264.i8, 0))), vqaddq_s32(v166, v165), vmovl_s16(vdup_lane_s16(*v264.i8, 1)));
  v257 = vmlaq_s32(vmulq_s32(vqsubq_s32(v164, v163), vmovl_s16(vdup_laneq_s16(v262, 4))), vqsubq_s32(v166, v165), vmovl_s16(vdup_laneq_s16(v262, 7)));
  v167 = vqsubq_s32(v340, v289);
  v168 = vqsubq_s32(v355, v294);
  v169 = vrshrq_n_s32(v234, 0xDuLL);
  v170 = vrshrq_n_s32(v237, 0xDuLL);
  v238 = vmlaq_s32(vmulq_s32(vqsubq_s32(v168, v169), vmovl_s16(vdup_lane_s16(*v260.i8, 0))), vqsubq_s32(v167, v170), vmovl_s16(vdup_lane_s16(*v260.i8, 1)));
  v235 = vmlaq_s32(vmulq_s32(vqaddq_s32(v168, v169), vmovl_s16(vdup_laneq_s16(v258, 4))), vqaddq_s32(v167, v170), vmovl_s16(vdup_laneq_s16(v258, 7)));
  v171 = vrshrq_n_s32(v104, 0xDuLL);
  v172 = vqsubq_s32(v348, v293);
  v173 = vrshrq_n_s32(v105, 0xDuLL);
  v174 = vqsubq_s32(v347, v290);
  v259 = vmlaq_s32(vmulq_s32(vqaddq_s32(v172, v171), vmovl_s16(vdup_lane_s16(*v258.i8, 0))), vqaddq_s32(v174, v173), vmovl_s16(vdup_lane_s16(*v258.i8, 1)));
  v261 = vmlaq_s32(vmulq_s32(vqsubq_s32(v172, v171), vmovl_s16(vdup_laneq_s16(v260, 4))), vqsubq_s32(v174, v173), vmovl_s16(vdup_laneq_s16(v260, 7)));
  v175 = vqaddq_s32(v347, v290);
  v176 = vqaddq_s32(v348, v293);
  v177 = vrshrq_n_s32(v106, 0xDuLL);
  v178 = vrshrq_n_s32(v107, 0xDuLL);
  v263 = vmlaq_s32(vmulq_s32(vqsubq_s32(v176, v177), vmovl_s16(vdup_lane_s16(*v262.i8, 0))), vqsubq_s32(v175, v178), vmovl_s16(vdup_lane_s16(*v262.i8, 1)));
  v265 = vmlaq_s32(vmulq_s32(vqaddq_s32(v176, v177), vmovl_s16(vdup_laneq_s16(v264, 4))), vqaddq_s32(v175, v178), vmovl_s16(vdup_laneq_s16(v264, 7)));
  v179 = vrshrq_n_s32(v239, 0xDuLL);
  v180 = vrshrq_n_s32(v119, 0xDuLL);
  v181 = vqaddq_s32(v327, v179);
  v182 = vrshrq_n_s32(v241, 0xDuLL);
  v183 = vrshrq_n_s32(v120, 0xDuLL);
  v184 = vqaddq_s32(v296, v182);
  v185 = vmlaq_s32(vmulq_s32(vqaddq_s32(v181, v180), vmovl_s16(vdup_lane_s16(*v273.i8, 0))), vqaddq_s32(v184, v183), vmovl_s16(vdup_lane_s16(*v273.i8, 1)));
  v186 = vmlaq_s32(vmulq_s32(vqsubq_s32(v181, v180), vmovl_s16(vdup_laneq_s16(v272, 4))), vqsubq_s32(v184, v183), vmovl_s16(vdup_laneq_s16(v272, 7)));
  v187 = vqsubq_s32(v296, v182);
  v188 = vqsubq_s32(v327, v179);
  v189 = vrshrq_n_s32(v121, 0xDuLL);
  v190 = vrshrq_n_s32(v233, 0xDuLL);
  v191 = vmlaq_s32(vmulq_s32(vqsubq_s32(v188, v189), vmovl_s16(vdup_lane_s16(*v271.i8, 0))), vqsubq_s32(v187, v190), vmovl_s16(vdup_lane_s16(*v271.i8, 1)));
  v192 = vmlaq_s32(vmulq_s32(vqaddq_s32(v188, v189), vmovl_s16(vdup_laneq_s16(v270, 4))), vqaddq_s32(v187, v190), vmovl_s16(vdup_laneq_s16(v270, 7)));
  v193 = vrshrq_n_s32(v244, 0xDuLL);
  v194 = vrshrq_n_s32(v131, 0xDuLL);
  v195 = vqsubq_s32(v320, v193);
  v196 = vrshrq_n_s32(v246, 0xDuLL);
  v197 = vrshrq_n_s32(v132, 0xDuLL);
  v198 = vqsubq_s32(v303, v196);
  v199 = vmlaq_s32(vmulq_s32(vqaddq_s32(v195, v194), vmovl_s16(vdup_lane_s16(*v269.i8, 0))), vqaddq_s32(v198, v197), vmovl_s16(vdup_lane_s16(*v269.i8, 1)));
  v200 = vmlaq_s32(vmulq_s32(vqsubq_s32(v195, v194), vmovl_s16(vdup_laneq_s16(v268, 4))), vqsubq_s32(v198, v197), vmovl_s16(vdup_laneq_s16(v268, 7)));
  v201 = vqaddq_s32(v303, v196);
  v202 = vqaddq_s32(v320, v193);
  v203 = vrshrq_n_s32(v133, 0xDuLL);
  v204 = vrshrq_n_s32(v134, 0xDuLL);
  v205 = vmlaq_s32(vmulq_s32(vqsubq_s32(v202, v203), vmovl_s16(vdup_lane_s16(*v267.i8, 0))), vqsubq_s32(v201, v204), vmovl_s16(vdup_lane_s16(*v267.i8, 1)));
  v206 = vmlaq_s32(vmulq_s32(vqaddq_s32(v202, v203), vmovl_s16(vdup_laneq_s16(v266, 4))), vqaddq_s32(v201, v204), vmovl_s16(vdup_laneq_s16(v266, 7)));
  v207 = vrshrq_n_s32(v243, 0xDuLL);
  v208 = vrshrq_n_s32(v146, 0xDuLL);
  v209 = vqaddq_s32(v319, v207);
  v210 = vrshrq_n_s32(v245, 0xDuLL);
  v211 = vrshrq_n_s32(v147, 0xDuLL);
  v212 = vqaddq_s32(v304, v210);
  v213 = vmlaq_s32(vmulq_s32(vqaddq_s32(v209, v208), vmovl_s16(vdup_lane_s16(*v266.i8, 0))), vqaddq_s32(v212, v211), vmovl_s16(vdup_lane_s16(*v266.i8, 1)));
  v214 = vmlaq_s32(vmulq_s32(vqsubq_s32(v209, v208), vmovl_s16(vdup_laneq_s16(v267, 4))), vqsubq_s32(v212, v211), vmovl_s16(vdup_laneq_s16(v267, 7)));
  v215 = vqsubq_s32(v304, v210);
  v216 = vqsubq_s32(v319, v207);
  v217 = vrshrq_n_s32(v148, 0xDuLL);
  v218 = vrshrq_n_s32(v149, 0xDuLL);
  v219 = vmlaq_s32(vmulq_s32(vqsubq_s32(v216, v217), vmovl_s16(vdup_lane_s16(*v268.i8, 0))), vqsubq_s32(v215, v218), vmovl_s16(vdup_lane_s16(*v268.i8, 1)));
  v220 = vmlaq_s32(vmulq_s32(vqaddq_s32(v216, v217), vmovl_s16(vdup_laneq_s16(v269, 4))), vqaddq_s32(v215, v218), vmovl_s16(vdup_laneq_s16(v269, 7)));
  v221 = vrshrq_n_s32(v248, 0xDuLL);
  v222 = vrshrq_n_s32(v159, 0xDuLL);
  v223 = vqsubq_s32(v312, v221);
  v224 = vrshrq_n_s32(v249, 0xDuLL);
  v225 = vrshrq_n_s32(v160, 0xDuLL);
  v226 = vqsubq_s32(v311, v224);
  v227 = vmlaq_s32(vmulq_s32(vqaddq_s32(v223, v222), vmovl_s16(vdup_lane_s16(*v270.i8, 0))), vqaddq_s32(v226, v225), vmovl_s16(vdup_lane_s16(*v270.i8, 1)));
  v228 = vmlaq_s32(vmulq_s32(vqsubq_s32(v223, v222), vmovl_s16(vdup_laneq_s16(v271, 4))), vqsubq_s32(v226, v225), vmovl_s16(vdup_laneq_s16(v271, 7)));
  v229 = vqaddq_s32(v311, v224);
  v230 = vqaddq_s32(v312, v221);
  v231 = vrshrq_n_s32(v161, 0xDuLL);
  v232 = vrshrq_n_s32(v162, 0xDuLL);
  *v9 = vrshrq_n_s32(v252, 0xDuLL);
  v9[1] = vrshrq_n_s32(v185, 0xDuLL);
  v9[2] = vrshrq_n_s32(v236, 0xDuLL);
  v9[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(vqaddq_s32(v230, v231), vmovl_s16(vdup_laneq_s16(v273, 4))), vqaddq_s32(v229, v232), vmovl_s16(vdup_laneq_s16(v273, 7))), 0xDuLL);
  v9[4] = vrshrq_n_s32(v247, 0xDuLL);
  v9[5] = vrshrq_n_s32(v213, 0xDuLL);
  v9[6] = vrshrq_n_s32(v265, 0xDuLL);
  v9[7] = vrshrq_n_s32(v206, 0xDuLL);
  v9[8] = vrshrq_n_s32(v251, 0xDuLL);
  v9[9] = vrshrq_n_s32(v199, 0xDuLL);
  v9[10] = vrshrq_n_s32(v259, 0xDuLL);
  v9[11] = vrshrq_n_s32(v220, 0xDuLL);
  v9[12] = vrshrq_n_s32(v255, 0xDuLL);
  v9[13] = vrshrq_n_s32(v227, 0xDuLL);
  v9[14] = vrshrq_n_s32(v235, 0xDuLL);
  v9[15] = vrshrq_n_s32(v192, 0xDuLL);
  v9[16] = vrshrq_n_s32(v253, 0xDuLL);
  v9[17] = vrshrq_n_s32(v191, 0xDuLL);
  v9[18] = vrshrq_n_s32(v238, 0xDuLL);
  v9[19] = vrshrq_n_s32(v228, 0xDuLL);
  v9[20] = vrshrq_n_s32(v240, 0xDuLL);
  v9[21] = vrshrq_n_s32(v219, 0xDuLL);
  v9[22] = vrshrq_n_s32(v261, 0xDuLL);
  v9[23] = vrshrq_n_s32(v200, 0xDuLL);
  v9[24] = vrshrq_n_s32(v250, 0xDuLL);
  v9[25] = vrshrq_n_s32(v205, 0xDuLL);
  v9[26] = vrshrq_n_s32(v263, 0xDuLL);
  v9[27] = vrshrq_n_s32(v214, 0xDuLL);
  v9[28] = vrshrq_n_s32(v242, 0xDuLL);
  v9[29] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(vqsubq_s32(v230, v231), vmovl_s16(vdup_lane_s16(*v272.i8, 0))), vqsubq_s32(v229, v232), vmovl_s16(vdup_lane_s16(*v272.i8, 1))), 0xDuLL);
  v9[30] = vrshrq_n_s32(v257, 0xDuLL);
  v9[31] = vrshrq_n_s32(v186, 0xDuLL);
  return result;
}

uint64_t sub_2779E57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v386 = v10;
  v11 = 0;
  v747 = *MEMORY[0x277D85DE8];
  v12 = v560;
  v13 = vdupq_n_s16(0x16A1u);
  v14 = vdupq_n_s16(0xE95Fu);
  v388 = vneg_f16(0x6161616161616161);
  v389 = vneg_f16(0x6565656565656565);
  v387 = vneg_f16(0x7777777777777777);
  v557 = v13;
  v556 = v14;
  do
  {
    v15 = 0;
    v16 = v8;
    do
    {
      v561[v15++] = *v16;
      v16 = (v16 + 2 * v9);
    }

    while (v15 != 64);
    v17 = 0;
    for (i = 63; i != 31; --i)
    {
      v730[v17] = vqaddq_s16(v561[v17], v561[i]);
      ++v17;
    }

    v19 = 32;
    do
    {
      v730[v19] = vqsubq_s16(v561[i--], v561[v19]);
      ++v19;
    }

    while (i != -1);
    v20 = 0;
    for (j = 31; j != 15; --j)
    {
      v701[v20] = vqaddq_s16(v730[v20], v730[j]);
      ++v20;
    }

    v22 = 16;
    do
    {
      v701[v22] = vqsubq_s16(v730[j--], v730[v22]);
      ++v22;
    }

    while (j != -1);
    v23 = 0;
    v729 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v731.i8, *v13.i8), *v746.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v731, v13), v746, v13), 0xDuLL);
    v728 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v732.i8, *v13.i8), *v745.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v732, v13), v745, v13), 0xDuLL);
    v714 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v731.i8, *v14.i8), *v746.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v731, v14), v746, v13), 0xDuLL);
    v715 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v732.i8, *v14.i8), *v745.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v732, v14), v745, v13), 0xDuLL);
    v727 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v733.i8, *v13.i8), *v744.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v733, v13), v744, v13), 0xDuLL);
    v726 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v734.i8, *v13.i8), *v743.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v734, v13), v743, v13), 0xDuLL);
    v716 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v733.i8, *v14.i8), *v744.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v733, v14), v744, v13), 0xDuLL);
    v717 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v734.i8, *v14.i8), *v743.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v734, v14), v743, v13), 0xDuLL);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v735.i8, *v13.i8), *v742.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v735, v13), v742, v13), 0xDuLL);
    v724 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v736.i8, *v13.i8), *v741.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v736, v13), v741, v13), 0xDuLL);
    v718 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v735.i8, *v14.i8), *v742.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v735, v14), v742, v13), 0xDuLL);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v736.i8, *v14.i8), *v741.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v736, v14), v741, v13), 0xDuLL);
    v723 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v737.i8, *v13.i8), *v740.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v737, v13), v740, v13), 0xDuLL);
    v722 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v738.i8, *v13.i8), *v739.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v738, v13), v739, v13), 0xDuLL);
    v720 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v737.i8, *v14.i8), *v740.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v737, v14), v740, v13), 0xDuLL);
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v738.i8, *v14.i8), *v739.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v738, v14), v739, v13), 0xDuLL);
    for (k = 15; k != 7; --k)
    {
      *&v660[v23 * 16] = vqaddq_s16(v701[v23], v701[k]);
      ++v23;
    }

    v25 = 8;
    do
    {
      *&v660[v25 * 16] = vqsubq_s16(v701[k--], v701[v25]);
      ++v25;
    }

    while (k != -1);
    v669 = v701[16];
    v670 = v701[17];
    v671 = v701[18];
    v672 = v701[19];
    v680 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v702.i8, *v13.i8), *v709.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v702, v13), v709, v13), 0xDuLL);
    v679 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v703.i8, *v13.i8), *v708.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v703, v13), v708, v13), 0xDuLL);
    v673 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v702.i8, *v14.i8), *v709.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v702, v14), v709, v13), 0xDuLL);
    v674 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v703.i8, *v14.i8), *v708.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v703, v14), v708, v13), 0xDuLL);
    v678 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v704.i8, *v13.i8), *v707.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v704, v13), v707, v13), 0xDuLL);
    v677 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v705.i8, *v13.i8), *v706.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v705, v13), v706, v13), 0xDuLL);
    v675 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v704.i8, *v14.i8), *v707.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v704, v14), v707, v13), 0xDuLL);
    v676 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v705.i8, *v14.i8), *v706.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v705, v14), v706, v13), 0xDuLL);
    v681 = v710;
    v682 = v711;
    v683 = v712;
    v684 = v713;
    v26 = 32;
    for (m = 47; m != 39; --m)
    {
      *&v660[v26 * 16] = vqaddq_s16(v730[v26], v701[m]);
      ++v26;
    }

    v28 = 40;
    do
    {
      *&v660[v28 * 16] = vqsubq_s16(v730[m--], v701[v28]);
      ++v28;
    }

    while (m != 31);
    v29 = 48;
    for (n = 63; n != 55; --n)
    {
      *&v660[v29 * 16] = vqsubq_s16(v730[n], v701[v29]);
      ++v29;
    }

    v31 = 55;
    for (ii = 56; ii != 64; ++ii)
    {
      *&v660[ii * 16] = vqaddq_s16(v730[ii], v701[v31--]);
    }

    v33 = 0;
    for (jj = 112; jj != 48; jj -= 16)
    {
      *(&v616 + v33) = vqaddq_s16(*&v660[v33], *&v660[jj]);
      v33 += 16;
    }

    v35 = 64;
    do
    {
      *(&v616 + v35) = vqsubq_s16(*&v660[jj], *&v660[v35]);
      jj -= 16;
      v35 += 16;
    }

    while (jj != -16);
    v627 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v663.i8, *v13.i8), *v666.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v663, v13), v666, v13), 0xDuLL);
    v626 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v664.i8, *v13.i8), *v665.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v664, v13), v665, v13), 0xDuLL);
    v624 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v663.i8, *v14.i8), *v666.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v663, v14), v666, v13), 0xDuLL);
    v625 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v664.i8, *v14.i8), *v665.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v664, v14), v665, v13), 0xDuLL);
    v36 = 256;
    for (kk = 368; kk != 304; kk -= 16)
    {
      *(&v616 + v36) = vqaddq_s16(*&v660[v36], *&v660[kk]);
      v36 += 16;
    }

    v38 = 320;
    do
    {
      *(&v616 + v38) = vqsubq_s16(*&v660[kk], *&v660[v38]);
      kk -= 16;
      v38 += 16;
    }

    while (kk != 240);
    v39 = 384;
    for (mm = 496; mm != 432; mm -= 16)
    {
      *(&v616 + v39) = vqsubq_s16(*&v660[mm], *&v660[v39]);
      v39 += 16;
    }

    v41 = 432;
    for (nn = 448; nn != 512; nn += 16)
    {
      *(&v616 + nn) = vqaddq_s16(*&v660[nn], *&v660[v41]);
      v41 -= 16;
    }

    v43 = vdupq_n_s16(0x1D90u);
    v44 = vdupq_n_s16(0xC3Fu);
    v45 = vdupq_n_s16(0xE270u);
    v659 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v685.i8, *v44.i8), *v700.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v685, v44), v700, v43), 0xDuLL);
    v658 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v686.i8, *v44.i8), *v699.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v686, v44), v699, v43), 0xDuLL);
    v644 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v685.i8, *v45.i8), *v700.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v685, v45), v700, v44), 0xDuLL);
    v645 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v686.i8, *v45.i8), *v699.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v686, v45), v699, v44), 0xDuLL);
    v657 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v687.i8, *v44.i8), *v698.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v687, v44), v698, v43), 0xDuLL);
    v656 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v688.i8, *v44.i8), *v697.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v688, v44), v697, v43), 0xDuLL);
    v646 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v687.i8, *v45.i8), *v698.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v687, v45), v698, v44), 0xDuLL);
    v647 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v688.i8, *v45.i8), *v697.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v688, v45), v697, v44), 0xDuLL);
    v46 = vdupq_n_s16(0xF3C1u);
    v655 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v689.i8, *v45.i8), *v696.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v689, v45), v696, v44), 0xDuLL);
    v654 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v690.i8, *v45.i8), *v695.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v690, v45), v695, v44), 0xDuLL);
    v648 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v689.i8, *v46.i8), *v696.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v689, v46), v696, v45), 0xDuLL);
    v649 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v690.i8, *v46.i8), *v695.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v690, v46), v695, v45), 0xDuLL);
    v653 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v691.i8, *v45.i8), *v694.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v691, v45), v694, v44), 0xDuLL);
    v652 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v692.i8, *v45.i8), *v693.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v692, v45), v693, v44), 0xDuLL);
    v650 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v691.i8, *v46.i8), *v694.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v691, v46), v694, v45), 0xDuLL);
    v651 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v692.i8, *v46.i8), *v693.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v692, v46), v693, v45), 0xDuLL);
    v562 = vqaddq_s16(v616, v619);
    v563 = vqaddq_s16(v617, v618);
    v564 = vqsubq_s16(v617, v618);
    v565 = vqsubq_s16(v616, v619);
    v567 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v621.i8, *v13.i8), *v622.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v621, v13), v622, v13), 0xDuLL);
    v566 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v621.i8, *v14.i8), *v622.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v621, v14), v622, v13), 0xDuLL);
    v568 = vqaddq_s16(v661, v625);
    v569 = vqaddq_s16(v662, v624);
    v570 = vqsubq_s16(v662, v624);
    v571 = vqsubq_s16(v661, v625);
    v572 = vqsubq_s16(v668, v626);
    v573 = vqsubq_s16(v667, v627);
    v574 = vqaddq_s16(v667, v627);
    v575 = vqaddq_s16(v668, v626);
    v583 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v630.i8, *v44.i8), *v641.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v630, v44), v641, v43), 0xDuLL);
    v582 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v631.i8, *v44.i8), *v640.i8, *v43.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v631, v44), v640, v43), 0xDuLL);
    v576 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v630.i8, *v45.i8), *v641.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v630, v45), v641, v44), 0xDuLL);
    v577 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v631.i8, *v45.i8), *v640.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v631, v45), v640, v44), 0xDuLL);
    v581 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v632.i8, *v45.i8), *v639.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v632, v45), v639, v44), 0xDuLL);
    v580 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v633.i8, *v45.i8), *v638.i8, *v44.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v633, v45), v638, v44), 0xDuLL);
    v578 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v632.i8, *v46.i8), *v639.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v632, v46), v639, v45), 0xDuLL);
    v579 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v633.i8, *v46.i8), *v638.i8, *v45.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v633, v46), v638, v45), 0xDuLL);
    v47 = 512;
    for (i1 = 624; i1 != 560; i1 -= 16)
    {
      *(&v562 + v47) = vqaddq_s16(*&v660[v47], *(&v616 + i1));
      v47 += 16;
    }

    v49 = 576;
    do
    {
      *(&v562 + v49) = vqsubq_s16(*&v660[i1], *(&v616 + v49));
      i1 -= 16;
      v49 += 16;
    }

    while (i1 != 496);
    v50 = 640;
    for (i2 = 752; i2 != 688; i2 -= 16)
    {
      *(&v562 + v50) = vqsubq_s16(*&v660[i2], *(&v616 + v50));
      v50 += 16;
    }

    v52 = 688;
    for (i3 = 704; i3 != 768; i3 += 16)
    {
      *(&v562 + i3) = vqaddq_s16(*&v660[i3], *(&v616 + v52));
      v52 -= 16;
    }

    v54 = 768;
    for (i4 = 880; i4 != 816; i4 -= 16)
    {
      *(&v562 + v54) = vqaddq_s16(*&v660[v54], *(&v616 + i4));
      v54 += 16;
    }

    v56 = 832;
    do
    {
      *(&v562 + v56) = vqsubq_s16(*&v660[i4], *(&v616 + v56));
      i4 -= 16;
      v56 += 16;
    }

    while (i4 != 752);
    v57 = 896;
    for (i5 = 1008; i5 != 944; i5 -= 16)
    {
      *(&v562 + v57) = vqsubq_s16(*&v660[i5], *(&v616 + v57));
      v57 += 16;
    }

    v59 = 944;
    for (i6 = 960; i6 != 1024; i6 += 16)
    {
      *(&v562 + i6) = vqaddq_s16(*&v660[i6], *(&v616 + v59));
      v59 -= 16;
    }

    v61 = 0;
    v555 = vmlal_s16(vmull_s16(*v564.i8, *v44.i8), *v565.i8, *v43.i8);
    v554 = vmlal_high_s16(vmull_high_s16(v564, v44), v565, v43);
    v553 = vmlal_s16(vmull_s16(*v564.i8, *v45.i8), *v565.i8, *v44.i8);
    v552 = vmlal_high_s16(vmull_high_s16(v564, v45), v565, v44);
    v62 = vmlal_s16(vmull_s16(*v569.i8, *v44.i8), *v574.i8, *v43.i8);
    v63 = vmlal_high_s16(vmull_high_s16(v569, v44), v574, v43);
    v64 = vmlal_s16(vmull_s16(*v569.i8, *v45.i8), *v574.i8, *v44.i8);
    v65 = vmlal_high_s16(vmull_high_s16(v569, v45), v574, v44);
    v66 = vqaddq_s16(v629, v576);
    v67 = vqsubq_s16(v629, v576);
    v68 = vqsubq_s16(v642, v583);
    v69 = vqaddq_s16(v642, v583);
    v70 = vdupq_n_s16(0x1F63u);
    v508 = vmlal_s16(vmull_s16(*v570.i8, *v45.i8), *v573.i8, *v44.i8);
    v71 = vdupq_n_s16(0x63Eu);
    v72 = vdupq_n_s16(0xE09Du);
    v506 = vmlal_high_s16(vmull_high_s16(v570, v45), v573, v44);
    v504 = vmlal_s16(vmull_s16(*v570.i8, *v46.i8), *v573.i8, *v45.i8);
    v500 = vmlal_high_s16(vmull_high_s16(v570, v46), v573, v45);
    v73 = vmlal_s16(vmull_s16(*v586.i8, *v71.i8), *v613.i8, *v70.i8);
    v74 = vmlal_high_s16(vmull_high_s16(v586, v71), v613, v70);
    v75 = vmlal_s16(vmull_s16(*v586.i8, *v72.i8), *v613.i8, *v71.i8);
    v76 = vmlal_high_s16(vmull_high_s16(v586, v72), v613, v71);
    v490 = vmlal_s16(vmull_s16(*v587.i8, *v71.i8), *v612.i8, *v70.i8);
    v488 = vmlal_high_s16(vmull_high_s16(v587, v71), v612, v70);
    v486 = vmlal_s16(vmull_s16(*v587.i8, *v72.i8), *v612.i8, *v71.i8);
    v484 = vmlal_high_s16(vmull_high_s16(v587, v72), v612, v71);
    v516 = vmlal_s16(vmull_s16(*v588.i8, *v72.i8), *v611.i8, *v71.i8);
    v514 = vmlal_high_s16(vmull_high_s16(v588, v72), v611, v71);
    v77 = vdupq_n_s16(0xF9C2u);
    v512 = vmlal_s16(vmull_s16(*v588.i8, *v77.i8), *v611.i8, *v72.i8);
    v510 = vmlal_high_s16(vmull_high_s16(v588, v77), v611, v72);
    v78 = vmlal_s16(vmull_s16(*v589.i8, *v72.i8), *v610.i8, *v71.i8);
    v79 = vmlal_high_s16(vmull_high_s16(v589, v72), v610, v71);
    v80 = vmlal_s16(vmull_s16(*v589.i8, *v77.i8), *v610.i8, *v72.i8);
    v81 = vmlal_high_s16(vmull_high_s16(v589, v77), v610, v72);
    v82 = vqaddq_s16(v620, v566);
    v83 = vqaddq_s16(v623, v567);
    v551 = vmlal_s16(vmull_s16(*v82.i8, *v71.i8), *v83.i8, *v70.i8);
    v550 = vmlal_high_s16(vmull_high_s16(v82, v71), v83, v70);
    v549 = vmlal_s16(vmull_s16(*v82.i8, *v72.i8), *v83.i8, *v71.i8);
    v548 = vmlal_high_s16(vmull_high_s16(v82, v72), v83, v71);
    v520 = vmlal_s16(vmull_s16(*v66.i8, *v71.i8), *v69.i8, *v70.i8);
    v518 = vmlal_high_s16(vmull_high_s16(v66, v71), v69, v70);
    v482 = vmlal_s16(vmull_s16(*v66.i8, *v72.i8), *v69.i8, *v71.i8);
    v480 = vmlal_high_s16(vmull_high_s16(v66, v72), v69, v71);
    v498 = vmlal_s16(vmull_s16(*v67.i8, *v72.i8), *v68.i8, *v71.i8);
    v496 = vmlal_high_s16(vmull_high_s16(v67, v72), v68, v71);
    v494 = vmlal_s16(vmull_s16(*v67.i8, *v77.i8), *v68.i8, *v72.i8);
    v492 = vmlal_high_s16(vmull_high_s16(v67, v77), v68, v72);
    v84 = vqsubq_s16(v620, v566);
    v85 = vqsubq_s16(v623, v567);
    v86 = vqsubq_s16(v634, v579);
    v87 = vqaddq_s16(v634, v579);
    v88 = vqaddq_s16(v637, v580);
    v89 = vqsubq_s16(v637, v580);
    v90 = vdupq_n_s16(0x11C7u);
    v91 = vdupq_n_s16(0x1A9Bu);
    v92 = vmlal_s16(vmull_s16(*v594.i8, *v91.i8), *v605.i8, *v90.i8);
    v93 = vmlal_high_s16(vmull_high_s16(v594, v91), v605, v90);
    v94 = vdupq_n_s16(0xEE39u);
    v95 = vmlal_s16(vmull_s16(*v594.i8, *v94.i8), *v605.i8, *v91.i8);
    v96 = vmlal_high_s16(vmull_high_s16(v594, v94), v605, v91);
    v530 = vmlal_s16(vmull_s16(*v595.i8, *v91.i8), *v604.i8, *v90.i8);
    v528 = vmlal_high_s16(vmull_high_s16(v595, v91), v604, v90);
    v526 = vmlal_s16(vmull_s16(*v595.i8, *v94.i8), *v604.i8, *v91.i8);
    v524 = vmlal_high_s16(vmull_high_s16(v595, v94), v604, v91);
    v538 = vmlal_s16(vmull_s16(*v596.i8, *v94.i8), *v603.i8, *v91.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v596, v94), v603, v91);
    v534 = vmlal_s16(vmull_s16(*v596.i8, v389), *v603.i8, *v94.i8);
    v532 = vmlal_high_s16(vmull_s16(*&vextq_s8(v596, v596, 8uLL), v389), v603, v94);
    v97 = vmlal_s16(vmull_s16(*v597.i8, *v94.i8), *v602.i8, *v91.i8);
    v98 = vmlal_high_s16(vmull_high_s16(v597, v94), v602, v91);
    v99 = vmlal_s16(vmull_s16(*v597.i8, v389), *v602.i8, *v94.i8);
    v100 = vmlal_high_s16(vmull_s16(*&vextq_s8(v597, v597, 8uLL), v389), v602, v94);
    v545 = vmlal_s16(vmull_s16(*v84.i8, *v91.i8), *v85.i8, *v90.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v84, v91), v85, v90);
    v543 = vmlal_s16(vmull_s16(*v84.i8, *v94.i8), *v85.i8, *v91.i8);
    v542 = vmlal_high_s16(vmull_high_s16(v84, v94), v85, v91);
    v478 = vmlal_s16(vmull_s16(*v86.i8, *v91.i8), *v89.i8, *v90.i8);
    v476 = vmlal_high_s16(vmull_high_s16(v86, v91), v89, v90);
    v474 = vmlal_s16(vmull_s16(*v86.i8, *v94.i8), *v89.i8, *v91.i8);
    v472 = vmlal_high_s16(vmull_high_s16(v86, v94), v89, v91);
    v466 = vmlal_s16(vmull_s16(*v87.i8, *v94.i8), *v88.i8, *v91.i8);
    v464 = vmlal_high_s16(vmull_high_s16(v87, v94), v88, v91);
    v460 = vmlal_high_s16(vmull_s16(*&vextq_s8(v87, v87, 8uLL), v389), v88, v94);
    v462 = vmlal_s16(vmull_s16(*v87.i8, v389), *v88.i8, *v94.i8);
    v101 = vrshrn_high_n_s32(vrshrn_n_s32(v62, 0xDuLL), v63, 0xDuLL);
    v102 = vrshrn_high_n_s32(vrshrn_n_s32(v64, 0xDuLL), v65, 0xDuLL);
    v103 = vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xDuLL), v74, 0xDuLL);
    v104 = vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xDuLL), v76, 0xDuLL);
    v105 = vqaddq_s16(v585, v104);
    v106 = vqsubq_s16(v585, v104);
    v107 = vqsubq_s16(v614, v103);
    v108 = vqaddq_s16(v614, v103);
    v109 = vqaddq_s16(v568, v102);
    v110 = vqaddq_s16(v575, v101);
    v111 = vdupq_n_s16(0x1FD9u);
    v112 = vdupq_n_s16(0x323u);
    v541 = vmlal_s16(vmull_s16(*v109.i8, *v112.i8), *v110.i8, *v111.i8);
    v540 = vmlal_high_s16(vmull_high_s16(v109, v112), v110, v111);
    v113 = vdupq_n_s16(0xE027u);
    v547 = vmlal_s16(vmull_s16(*v109.i8, *v113.i8), *v110.i8, *v112.i8);
    v546 = vmlal_high_s16(vmull_high_s16(v109, v113), v110, v112);
    v114 = vmlal_s16(vmull_s16(*v105.i8, *v112.i8), *v108.i8, *v111.i8);
    v115 = vmlal_high_s16(vmull_high_s16(v105, v112), v108, v111);
    v116 = vmlal_s16(vmull_s16(*v105.i8, *v113.i8), *v108.i8, *v112.i8);
    v117 = vmlal_high_s16(vmull_high_s16(v105, v113), v108, v112);
    v118 = vmlal_s16(vmull_s16(*v106.i8, *v113.i8), *v107.i8, *v112.i8);
    v119 = vmlal_high_s16(vmull_high_s16(v106, v113), v107, v112);
    v120 = vdupq_n_s16(0xFCDDu);
    v121 = vmlal_s16(vmull_s16(*v106.i8, *v120.i8), *v107.i8, *v113.i8);
    v122 = vmlal_high_s16(vmull_high_s16(v106, v120), v107, v113);
    v123 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
    v124 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
    v125 = vqsubq_s16(v568, v102);
    v126 = vqsubq_s16(v575, v101);
    v127 = vqsubq_s16(v590, v124);
    v128 = vqaddq_s16(v590, v124);
    v129 = vqaddq_s16(v609, v123);
    v130 = vdupq_n_s16(0x144Du);
    v131 = vdupq_n_s16(0x18BDu);
    v132 = vqsubq_s16(v609, v123);
    v133 = vmlal_s16(vmull_s16(*v125.i8, *v131.i8), *v126.i8, *v130.i8);
    v134 = vdupq_n_s16(0xEBB3u);
    v135 = vmlal_high_s16(vmull_high_s16(v125, v131), v126, v130);
    v523 = vmlal_s16(vmull_s16(*v125.i8, *v134.i8), *v126.i8, *v131.i8);
    v522 = vmlal_high_s16(vmull_high_s16(v125, v134), v126, v131);
    v410 = vmlal_s16(vmull_s16(*v127.i8, *v131.i8), *v132.i8, *v130.i8);
    v136 = vmlal_high_s16(vmull_high_s16(v127, v131), v132, v130);
    v137 = vmlal_s16(vmull_s16(*v127.i8, *v134.i8), *v132.i8, *v131.i8);
    v138 = vmlal_high_s16(vmull_high_s16(v127, v134), v132, v131);
    v424 = vmlal_s16(vmull_s16(*v128.i8, *v134.i8), *v129.i8, *v131.i8);
    v139 = vdupq_n_s16(0xE743u);
    v422 = vmlal_high_s16(vmull_high_s16(v128, v134), v129, v131);
    v420 = vmlal_s16(vmull_s16(*v128.i8, *v139.i8), *v129.i8, *v134.i8);
    v417 = vmlal_high_s16(vmull_high_s16(v128, v139), v129, v134);
    v140 = vrshrn_high_n_s32(vrshrn_n_s32(v508, 0xDuLL), v506, 0xDuLL);
    v141 = vrshrn_high_n_s32(vrshrn_n_s32(v504, 0xDuLL), v500, 0xDuLL);
    v142 = vrshrn_high_n_s32(vrshrn_n_s32(v92, 0xDuLL), v93, 0xDuLL);
    v143 = vrshrn_high_n_s32(vrshrn_n_s32(v95, 0xDuLL), v96, 0xDuLL);
    v144 = vqaddq_s16(v593, v143);
    v145 = vqsubq_s16(v593, v143);
    v146 = vqsubq_s16(v606, v142);
    v147 = vqaddq_s16(v606, v142);
    v148 = vqsubq_s16(v571, v141);
    v149 = vdupq_n_s16(0x1C39u);
    v150 = vdupq_n_s16(0xF16u);
    v151 = vqsubq_s16(v572, v140);
    v152 = vmlal_s16(vmull_s16(*v148.i8, *v150.i8), *v151.i8, *v149.i8);
    v153 = vdupq_n_s16(0xE3C7u);
    v509 = vmlal_high_s16(vmull_high_s16(v148, v150), v151, v149);
    v507 = vmlal_s16(vmull_s16(*v148.i8, *v153.i8), *v151.i8, *v150.i8);
    v505 = vmlal_high_s16(vmull_high_s16(v148, v153), v151, v150);
    v434 = vmlal_s16(vmull_s16(*v144.i8, *v150.i8), *v147.i8, *v149.i8);
    v432 = vmlal_high_s16(vmull_high_s16(v144, v150), v147, v149);
    v430 = vmlal_s16(vmull_s16(*v144.i8, *v153.i8), *v147.i8, *v150.i8);
    v428 = vmlal_high_s16(vmull_high_s16(v144, v153), v147, v150);
    v442 = vmlal_s16(vmull_s16(*v145.i8, *v153.i8), *v146.i8, *v150.i8);
    v154 = vdupq_n_s16(0xF0EAu);
    v440 = vmlal_high_s16(vmull_high_s16(v145, v153), v146, v150);
    v436 = vmlal_high_s16(vmull_high_s16(v145, v154), v146, v153);
    v438 = vmlal_s16(vmull_s16(*v145.i8, *v154.i8), *v146.i8, *v153.i8);
    v155 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xDuLL), v98, 0xDuLL);
    v156 = vrshrn_high_n_s32(vrshrn_n_s32(v99, 0xDuLL), v100, 0xDuLL);
    v157 = vqaddq_s16(v571, v141);
    v158 = vqaddq_s16(v572, v140);
    v159 = vqsubq_s16(v598, v156);
    v160 = vqaddq_s16(v598, v156);
    v161 = vqaddq_s16(v601, v155);
    v162 = vdupq_n_s16(0x94Au);
    v163 = vqsubq_s16(v601, v155);
    v164 = vdupq_n_s16(0x1E9Fu);
    v165 = vmlal_s16(vmull_s16(*v157.i8, *v164.i8), *v158.i8, *v162.i8);
    v503 = vmlal_high_s16(vmull_high_s16(v157, v164), v158, v162);
    v166 = vdupq_n_s16(0xF6B6u);
    v502 = vmlal_s16(vmull_s16(*v157.i8, *v166.i8), *v158.i8, *v164.i8);
    v501 = vmlal_high_s16(vmull_high_s16(v157, v166), v158, v164);
    v450 = vmlal_s16(vmull_s16(*v159.i8, *v164.i8), *v163.i8, *v162.i8);
    v448 = vmlal_high_s16(vmull_high_s16(v159, v164), v163, v162);
    v446 = vmlal_s16(vmull_s16(*v159.i8, *v166.i8), *v163.i8, *v164.i8);
    v444 = vmlal_high_s16(vmull_high_s16(v159, v166), v163, v164);
    v167 = vmlal_s16(vmull_s16(*v160.i8, *v166.i8), *v161.i8, *v164.i8);
    v168 = vmlal_high_s16(vmull_high_s16(v160, v166), v161, v164);
    v169 = vmlal_s16(vmull_s16(*v160.i8, v388), *v161.i8, *v166.i8);
    v170 = vmlal_high_s16(vmull_s16(*&vextq_s8(v160, v160, 8uLL), v388), v161, v166);
    v171 = vrshrn_high_n_s32(vrshrn_n_s32(v520, 0xDuLL), v518, 0xDuLL);
    v172 = vrshrn_high_n_s32(vrshrn_n_s32(v482, 0xDuLL), v480, 0xDuLL);
    v173 = vqaddq_s16(v628, v577);
    v174 = vqaddq_s16(v643, v582);
    v175 = vqaddq_s16(v173, v172);
    v176 = vqaddq_s16(v174, v171);
    v177 = vdupq_n_s16(0x1FF6u);
    v178 = vdupq_n_s16(0x192u);
    v483 = vmlal_s16(vmull_s16(*v175.i8, *v178.i8), *v176.i8, *v177.i8);
    v481 = vmlal_high_s16(vmull_high_s16(v175, v178), v176, v177);
    v179 = vdupq_n_s16(0xE00Au);
    v521 = vmlal_s16(vmull_s16(*v175.i8, *v179.i8), *v176.i8, *v178.i8);
    v519 = vmlal_high_s16(vmull_high_s16(v175, v179), v176, v178);
    v180 = vqsubq_s16(v173, v172);
    v181 = vqsubq_s16(v174, v171);
    v182 = vdupq_n_s16(0x157Du);
    v183 = vdupq_n_s16(0x17B6u);
    v471 = vmlal_s16(vmull_s16(*v180.i8, *v183.i8), *v181.i8, *v182.i8);
    v470 = vmlal_high_s16(vmull_high_s16(v180, v183), v181, v182);
    v184 = vdupq_n_s16(0xEA83u);
    v468 = vmlal_high_s16(vmull_high_s16(v180, v184), v181, v183);
    v469 = vmlal_s16(vmull_s16(*v180.i8, *v184.i8), *v181.i8, *v183.i8);
    v185 = vqsubq_s16(v628, v577);
    v186 = vqsubq_s16(v643, v582);
    v187 = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v496, 0xDuLL);
    v188 = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v492, 0xDuLL);
    v189 = vqsubq_s16(v185, v188);
    v190 = vqsubq_s16(v186, v187);
    v191 = vdupq_n_s16(0x1CEDu);
    v192 = vdupq_n_s16(0xDAFu);
    v495 = vmlal_s16(vmull_s16(*v189.i8, *v192.i8), *v190.i8, *v191.i8);
    v493 = vmlal_high_s16(vmull_high_s16(v189, v192), v190, v191);
    v193 = vdupq_n_s16(0xE313u);
    v499 = vmlal_s16(vmull_s16(*v189.i8, *v193.i8), *v190.i8, *v192.i8);
    v497 = vmlal_high_s16(vmull_high_s16(v189, v193), v190, v192);
    v194 = vqaddq_s16(v185, v188);
    v195 = vqaddq_s16(v186, v187);
    v196 = vdupq_n_s16(0xF538u);
    v197 = vmull_s16(*v194.i8, *v196.i8);
    v198 = vmull_high_s16(v194, v196);
    v199 = vdupq_n_s16(0x1E21u);
    v456 = vmlal_high_s16(v198, v195, v199);
    v457 = vmlal_s16(v197, *v195.i8, *v199.i8);
    v200 = vrshrn_high_n_s32(vrshrn_n_s32(v478, 0xDuLL), v476, 0xDuLL);
    v201 = vrshrn_high_n_s32(vrshrn_n_s32(v474, 0xDuLL), v472, 0xDuLL);
    v202 = vqsubq_s16(v635, v578);
    v203 = vqsubq_s16(v636, v581);
    v204 = vqaddq_s16(v202, v201);
    v205 = vqaddq_s16(v203, v200);
    v206 = vdupq_n_s16(0x1F0Au);
    v207 = vdupq_n_s16(0x7C6u);
    v453 = vmlal_s16(vmull_s16(*v204.i8, *v207.i8), *v205.i8, *v206.i8);
    v452 = vmlal_high_s16(vmull_high_s16(v204, v207), v205, v206);
    v208 = vdupq_n_s16(0xE0F6u);
    v479 = vmlal_s16(vmull_s16(*v204.i8, *v208.i8), *v205.i8, *v207.i8);
    v477 = vmlal_high_s16(vmull_high_s16(v204, v208), v205, v207);
    v209 = vqsubq_s16(v202, v201);
    v210 = vqsubq_s16(v203, v200);
    v211 = vdupq_n_s16(0x1074u);
    v212 = vdupq_n_s16(0x1B73u);
    v475 = vmlal_s16(vmull_s16(*v209.i8, *v212.i8), *v210.i8, *v211.i8);
    v473 = vmlal_high_s16(vmull_high_s16(v209, v212), v210, v211);
    v213 = vdupq_n_s16(0xEF8Cu);
    v458 = vmlal_high_s16(vmull_high_s16(v209, v213), v210, v212);
    v459 = vmlal_s16(vmull_s16(*v209.i8, *v213.i8), *v210.i8, *v212.i8);
    v214 = vqaddq_s16(v635, v578);
    v215 = vqaddq_s16(v636, v581);
    v216 = vrshrn_high_n_s32(vrshrn_n_s32(v466, 0xDuLL), v464, 0xDuLL);
    v217 = vrshrn_high_n_s32(vrshrn_n_s32(v462, 0xDuLL), v460, 0xDuLL);
    v218 = vqsubq_s16(v214, v217);
    v219 = vqsubq_s16(v215, v216);
    v220 = vdupq_n_s16(0x19B4u);
    v221 = vdupq_n_s16(0x1310u);
    v455 = vmlal_s16(vmull_s16(*v218.i8, *v221.i8), *v219.i8, *v220.i8);
    v454 = vmlal_high_s16(vmull_high_s16(v218, v221), v219, v220);
    v222 = vdupq_n_s16(0xE64Cu);
    v461 = vmlal_high_s16(vmull_high_s16(v218, v222), v219, v221);
    v463 = vmlal_s16(vmull_s16(*v218.i8, *v222.i8), *v219.i8, *v221.i8);
    v223 = vqaddq_s16(v214, v217);
    v224 = vqaddq_s16(v215, v216);
    v225 = vdupq_n_s16(0x4B2u);
    v226 = vdupq_n_s16(0x1FA7u);
    v467 = vmlal_s16(vmull_s16(*v223.i8, *v226.i8), *v224.i8, *v225.i8);
    v465 = vmlal_high_s16(vmull_high_s16(v223, v226), v224, v225);
    v227 = vdupq_n_s16(0xFB4Eu);
    v426 = vmlal_high_s16(vmull_high_s16(v223, v227), v224, v226);
    v427 = vmlal_s16(vmull_s16(*v223.i8, *v227.i8), *v224.i8, *v226.i8);
    v228 = vrshrn_high_n_s32(vrshrn_n_s32(v490, 0xDuLL), v488, 0xDuLL);
    v229 = vrshrn_high_n_s32(vrshrn_n_s32(v486, 0xDuLL), v484, 0xDuLL);
    v409 = vrshrn_high_n_s32(vrshrn_n_s32(v114, 0xDuLL), v115, 0xDuLL);
    v412 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xDuLL), v117, 0xDuLL);
    v413 = vqaddq_s16(v584, v229);
    v408 = vqaddq_s16(v615, v228);
    v230 = vqsubq_s16(v413, v412);
    v231 = vqsubq_s16(v408, v409);
    v232 = vdupq_n_s16(0x1611u);
    v233 = vdupq_n_s16(0x172Du);
    v491 = vmlal_s16(vmull_s16(*v230.i8, *v233.i8), *v231.i8, *v232.i8);
    v489 = vmlal_high_s16(vmull_high_s16(v230, v233), v231, v232);
    v234 = vdupq_n_s16(0xE9EFu);
    v487 = vmlal_s16(vmull_s16(*v230.i8, *v234.i8), *v231.i8, *v233.i8);
    v485 = vmlal_high_s16(vmull_high_s16(v230, v234), v231, v233);
    v235 = vqsubq_s16(v584, v229);
    v236 = vqsubq_s16(v615, v228);
    v237 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xDuLL), v119, 0xDuLL);
    v238 = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
    v239 = vqsubq_s16(v235, v238);
    v240 = vqsubq_s16(v236, v237);
    v241 = vdupq_n_s16(0x1D41u);
    v242 = vdupq_n_s16(0xCF8u);
    v407 = vmlal_s16(vmull_s16(*v239.i8, *v242.i8), *v240.i8, *v241.i8);
    v406 = vmlal_high_s16(vmull_high_s16(v239, v242), v240, v241);
    v243 = vdupq_n_s16(0xE2BFu);
    v419 = vmlal_s16(vmull_s16(*v239.i8, *v243.i8), *v240.i8, *v242.i8);
    v416 = vmlal_high_s16(vmull_high_s16(v239, v243), v240, v242);
    v244 = vqaddq_s16(v235, v238);
    v245 = vqaddq_s16(v236, v237);
    v246 = vdupq_n_s16(0xB84u);
    v247 = vdupq_n_s16(0x1DDBu);
    v415 = vmlal_s16(vmull_s16(*v244.i8, *v247.i8), *v245.i8, *v246.i8);
    v414 = vmlal_high_s16(vmull_high_s16(v244, v247), v245, v246);
    v248 = vdupq_n_s16(0xF47Cu);
    v404 = vmlal_high_s16(vmull_high_s16(v244, v248), v245, v247);
    v405 = vmlal_s16(vmull_s16(*v244.i8, *v248.i8), *v245.i8, *v247.i8);
    v249 = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v514, 0xDuLL);
    v250 = vrshrn_high_n_s32(vrshrn_n_s32(v512, 0xDuLL), v510, 0xDuLL);
    v251 = vrshrn_high_n_s32(vrshrn_n_s32(v410, 0xDuLL), v136, 0xDuLL);
    v252 = vrshrn_high_n_s32(vrshrn_n_s32(v137, 0xDuLL), v138, 0xDuLL);
    v253 = vqsubq_s16(v591, v250);
    v254 = vqsubq_s16(v608, v249);
    v255 = vqaddq_s16(v253, v252);
    v256 = vqaddq_s16(v254, v251);
    v257 = vdupq_n_s16(0x1F39u);
    v258 = vdupq_n_s16(0x703u);
    v411 = vmlal_s16(vmull_s16(*v255.i8, *v258.i8), *v256.i8, *v257.i8);
    v403 = vmlal_high_s16(vmull_high_s16(v255, v258), v256, v257);
    v259 = vdupq_n_s16(0xE0C7u);
    v517 = vmlal_s16(vmull_s16(*v255.i8, *v259.i8), *v256.i8, *v258.i8);
    v515 = vmlal_high_s16(vmull_high_s16(v255, v259), v256, v258);
    v260 = vqsubq_s16(v253, v252);
    v261 = vqsubq_s16(v254, v251);
    v262 = vdupq_n_s16(0x111Fu);
    v263 = vdupq_n_s16(0x1B09u);
    v513 = vmlal_s16(vmull_s16(*v260.i8, *v263.i8), *v261.i8, *v262.i8);
    v511 = vmlal_high_s16(vmull_high_s16(v260, v263), v261, v262);
    v264 = vdupq_n_s16(0xEEE1u);
    v401 = vmlal_high_s16(vmull_high_s16(v260, v264), v261, v263);
    v402 = vmlal_s16(vmull_s16(*v260.i8, *v264.i8), *v261.i8, *v263.i8);
    v265 = vqaddq_s16(v591, v250);
    v266 = vqaddq_s16(v608, v249);
    v267 = vrshrn_high_n_s32(vrshrn_n_s32(v424, 0xDuLL), v422, 0xDuLL);
    v268 = vrshrn_high_n_s32(vrshrn_n_s32(v420, 0xDuLL), v417, 0xDuLL);
    v269 = vqsubq_s16(v265, v268);
    v270 = vqsubq_s16(v266, v267);
    v271 = vdupq_n_s16(0x1A2Au);
    v272 = vdupq_n_s16(0x126Du);
    v400 = vmlal_s16(vmull_s16(*v269.i8, *v272.i8), *v270.i8, *v271.i8);
    v399 = vmlal_high_s16(vmull_high_s16(v269, v272), v270, v271);
    v273 = vdupq_n_s16(0xE5D6u);
    v418 = vmlal_high_s16(vmull_high_s16(v269, v273), v270, v272);
    v274 = vqaddq_s16(v265, v268);
    v275 = vqaddq_s16(v266, v267);
    v276 = vdupq_n_s16(0x579u);
    v277 = vdupq_n_s16(0x1F87u);
    v425 = vmlal_s16(vmull_s16(*v274.i8, *v277.i8), *v275.i8, *v276.i8);
    v421 = vmlal_s16(vmull_s16(*v269.i8, *v273.i8), *v270.i8, *v272.i8);
    v423 = vmlal_high_s16(vmull_high_s16(v274, v277), v275, v276);
    v278 = vdupq_n_s16(0xFA87u);
    v397 = vmlal_high_s16(vmull_high_s16(v274, v278), v275, v277);
    v398 = vmlal_s16(vmull_s16(*v274.i8, *v278.i8), *v275.i8, *v277.i8);
    v279 = vrshrn_high_n_s32(vrshrn_n_s32(v530, 0xDuLL), v528, 0xDuLL);
    v280 = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v524, 0xDuLL);
    v281 = vrshrn_high_n_s32(vrshrn_n_s32(v434, 0xDuLL), v432, 0xDuLL);
    v282 = vrshrn_high_n_s32(vrshrn_n_s32(v430, 0xDuLL), v428, 0xDuLL);
    v283 = vqaddq_s16(v592, v280);
    v284 = vqaddq_s16(v607, v279);
    v285 = vqaddq_s16(v283, v282);
    v286 = vqaddq_s16(v284, v281);
    v287 = vdupq_n_s16(0x1FC2u);
    v288 = vdupq_n_s16(0x3EBu);
    v431 = vmlal_s16(vmull_s16(*v285.i8, *v288.i8), *v286.i8, *v287.i8);
    v429 = vmlal_high_s16(vmull_high_s16(v285, v288), v286, v287);
    v289 = vdupq_n_s16(0xE03Eu);
    v531 = vmlal_s16(vmull_s16(*v285.i8, *v289.i8), *v286.i8, *v288.i8);
    v529 = vmlal_high_s16(vmull_high_s16(v285, v289), v286, v288);
    v290 = vqsubq_s16(v283, v282);
    v291 = vqsubq_s16(v284, v281);
    v292 = vdupq_n_s16(0x13B0u);
    v293 = vdupq_n_s16(0x193Au);
    v527 = vmlal_s16(vmull_s16(*v290.i8, *v293.i8), *v291.i8, *v292.i8);
    v525 = vmlal_high_s16(vmull_high_s16(v290, v293), v291, v292);
    v294 = vdupq_n_s16(0xEC50u);
    v433 = vmlal_high_s16(vmull_high_s16(v290, v294), v291, v293);
    v435 = vmlal_s16(vmull_s16(*v290.i8, *v294.i8), *v291.i8, *v293.i8);
    v295 = vqsubq_s16(v592, v280);
    v296 = vqsubq_s16(v607, v279);
    v297 = vrshrn_high_n_s32(vrshrn_n_s32(v442, 0xDuLL), v440, 0xDuLL);
    v298 = vrshrn_high_n_s32(vrshrn_n_s32(v438, 0xDuLL), v436, 0xDuLL);
    v299 = vqsubq_s16(v295, v298);
    v300 = vqsubq_s16(v296, v297);
    v301 = vdupq_n_s16(0x1BD8u);
    v302 = vdupq_n_s16(0xFC6u);
    v396 = vmlal_s16(vmull_s16(*v299.i8, *v302.i8), *v300.i8, *v301.i8);
    v395 = vmlal_high_s16(vmull_high_s16(v299, v302), v300, v301);
    v303 = vdupq_n_s16(0xE428u);
    v439 = vmlal_high_s16(vmull_high_s16(v299, v303), v300, v302);
    v441 = vmlal_s16(vmull_s16(*v299.i8, *v303.i8), *v300.i8, *v302.i8);
    v304 = vqaddq_s16(v295, v298);
    v305 = vqaddq_s16(v296, v297);
    v306 = vdupq_n_s16(0x889u);
    v307 = vdupq_n_s16(0x1ED7u);
    v443 = vmlal_s16(vmull_s16(*v304.i8, *v307.i8), *v305.i8, *v306.i8);
    v437 = vmlal_high_s16(vmull_high_s16(v304, v307), v305, v306);
    v394 = vmlal_s16(vmull_s16(*v304.i8, v387), *v305.i8, *v307.i8);
    v393 = vmlal_high_s16(vmull_s16(*&vextq_s8(v304, v304, 8uLL), v387), v305, v307);
    v308 = vrshrn_high_n_s32(vrshrn_n_s32(v538, 0xDuLL), v536, 0xDuLL);
    v309 = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xDuLL), v532, 0xDuLL);
    v310 = vrshrn_high_n_s32(vrshrn_n_s32(v450, 0xDuLL), v448, 0xDuLL);
    v311 = vrshrn_high_n_s32(vrshrn_n_s32(v446, 0xDuLL), v444, 0xDuLL);
    v449 = vqsubq_s16(v599, v309);
    v451 = vqsubq_s16(v600, v308);
    v312 = vqsubq_s16(v449, v311);
    v313 = vqsubq_s16(v451, v310);
    v314 = vdupq_n_s16(0xE63u);
    v315 = vdupq_n_s16(0x1C95u);
    v539 = vmlal_s16(vmull_s16(*v312.i8, *v315.i8), *v313.i8, *v314.i8);
    v537 = vmlal_high_s16(vmull_high_s16(v312, v315), v313, v314);
    v316 = vdupq_n_s16(0xF19Du);
    v445 = vmlal_s16(vmull_s16(*v312.i8, *v316.i8), *v313.i8, *v315.i8);
    v391 = vmlal_high_s16(vmull_high_s16(v312, v316), v313, v315);
    v317 = vqaddq_s16(v599, v309);
    v318 = vqaddq_s16(v600, v308);
    v319 = vrshrn_high_n_s32(vrshrn_n_s32(v167, 0xDuLL), v168, 0xDuLL);
    v320 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v170, 0xDuLL);
    v321 = vqsubq_s16(v317, v320);
    v322 = vdupq_n_s16(0x183Bu);
    v323 = vqsubq_s16(v318, v319);
    v324 = vdupq_n_s16(0x14E7u);
    v390 = vmlal_s16(vmull_s16(*v321.i8, *v324.i8), *v323.i8, *v322.i8);
    v325 = vmlal_high_s16(vmull_high_s16(v321, v324), v323, v322);
    v326 = vdupq_n_s16(0xE7C5u);
    v447 = vmlal_s16(vmull_s16(*v321.i8, *v326.i8), *v323.i8, *v324.i8);
    v392 = vmlal_high_s16(vmull_high_s16(v321, v326), v323, v324);
    v327 = vqaddq_s16(v317, v320);
    v328 = vdupq_n_s16(0x25Bu);
    v329 = vdupq_n_s16(0x1FEAu);
    v330 = vqaddq_s16(v318, v319);
    v535 = vmlal_s16(vmull_s16(*v327.i8, *v329.i8), *v330.i8, *v328.i8);
    v331 = vdupq_n_s16(0xFDA5u);
    v533 = vmlal_high_s16(vmull_high_s16(v327, v329), v330, v328);
    v332 = vmlal_s16(vmull_s16(*v327.i8, *v331.i8), *v330.i8, *v329.i8);
    v333 = vmlal_high_s16(vmull_high_s16(v327, v331), v330, v329);
    v334 = vqaddq_s16(v413, v412);
    v335 = vqaddq_s16(v408, v409);
    v336 = vdupq_n_s16(0x1FFEu);
    v337 = vmlal_s16(vmull_s16(*v334.i8, 0xC900C900C900C9), *v335.i8, *v336.i8);
    v316.i64[0] = 0xC900C900C900C9;
    v316.i64[1] = 0xC900C900C900C9;
    v338 = vmlal_high_s16(vmull_high_s16(v334, v316), v335, v336);
    v339 = vdupq_n_s16(0xE002u);
    v561[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v334.i8, *v339.i8), *v335.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v334, v339), v335, v316), 0xDuLL);
    v561[1] = vrshrn_high_n_s32(vrshrn_n_s32(v337, 0xDuLL), v338, 0xDuLL);
    v561[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v562.i8, *v557.i8), *v563.i8, *v557.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v562, v557), v563, v557), 0xDuLL);
    v340 = vqaddq_s16(v449, v311);
    v561[3] = vrshrn_high_n_s32(vrshrn_n_s32(v332, 0xDuLL), v333, 0xDuLL);
    v561[2] = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v481, 0xDuLL);
    v341 = vqaddq_s16(v451, v310);
    v561[5] = vrshrn_high_n_s32(vrshrn_n_s32(v431, 0xDuLL), v429, 0xDuLL);
    v561[4] = vrshrn_high_n_s32(vrshrn_n_s32(v541, 0xDuLL), v540, 0xDuLL);
    v561[7] = vrshrn_high_n_s32(vrshrn_n_s32(v398, 0xDuLL), v397, 0xDuLL);
    v561[6] = vrshrn_high_n_s32(vrshrn_n_s32(v427, 0xDuLL), v426, 0xDuLL);
    v561[9] = vrshrn_high_n_s32(vrshrn_n_s32(v411, 0xDuLL), v403, 0xDuLL);
    v561[8] = vrshrn_high_n_s32(vrshrn_n_s32(v551, 0xDuLL), v550, 0xDuLL);
    v561[11] = vrshrn_high_n_s32(vrshrn_n_s32(v394, 0xDuLL), v393, 0xDuLL);
    v561[10] = vrshrn_high_n_s32(vrshrn_n_s32(v453, 0xDuLL), v452, 0xDuLL);
    v342 = vdupq_n_s16(0x1E63u);
    v561[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v340.i8, 0xA0A0A0A0A0A0A0ALL), *v341.i8, *v342.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v340, v340, 8uLL), 0xA0A0A0A0A0A0A0ALL), v341, v342), 0xDuLL);
    v561[12] = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v501, 0xDuLL);
    v561[15] = vrshrn_high_n_s32(vrshrn_n_s32(v405, 0xDuLL), v404, 0xDuLL);
    v561[14] = vrshrn_high_n_s32(vrshrn_n_s32(v457, 0xDuLL), v456, 0xDuLL);
    v561[17] = vrshrn_high_n_s32(vrshrn_n_s32(v407, 0xDuLL), v406, 0xDuLL);
    v561[16] = vrshrn_high_n_s32(vrshrn_n_s32(v555, 0xDuLL), v554, 0xDuLL);
    v561[19] = vrshrn_high_n_s32(vrshrn_n_s32(v445, 0xDuLL), v391, 0xDuLL);
    v561[18] = vrshrn_high_n_s32(vrshrn_n_s32(v495, 0xDuLL), v493, 0xDuLL);
    v561[21] = vrshrn_high_n_s32(vrshrn_n_s32(v396, 0xDuLL), v395, 0xDuLL);
    v561[20] = vrshrn_high_n_s32(vrshrn_n_s32(v152, 0xDuLL), v509, 0xDuLL);
    v561[23] = vrshrn_high_n_s32(vrshrn_n_s32(v402, 0xDuLL), v401, 0xDuLL);
    v561[22] = vrshrn_high_n_s32(vrshrn_n_s32(v459, 0xDuLL), v458, 0xDuLL);
    v561[25] = vrshrn_high_n_s32(vrshrn_n_s32(v400, 0xDuLL), v399, 0xDuLL);
    v561[24] = vrshrn_high_n_s32(vrshrn_n_s32(v543, 0xDuLL), v542, 0xDuLL);
    v561[27] = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v433, 0xDuLL);
    v561[26] = vrshrn_high_n_s32(vrshrn_n_s32(v455, 0xDuLL), v454, 0xDuLL);
    v561[29] = vrshrn_high_n_s32(vrshrn_n_s32(v390, 0xDuLL), v325, 0xDuLL);
    v561[28] = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xDuLL), v522, 0xDuLL);
    v561[31] = vrshrn_high_n_s32(vrshrn_n_s32(v487, 0xDuLL), v485, 0xDuLL);
    v561[30] = vrshrn_high_n_s32(vrshrn_n_s32(v469, 0xDuLL), v468, 0xDuLL);
    v561[33] = vrshrn_high_n_s32(vrshrn_n_s32(v491, 0xDuLL), v489, 0xDuLL);
    v561[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v562.i8, *v556.i8), *v563.i8, *v557.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v562, v556), v563, v557), 0xDuLL);
    v561[35] = vrshrn_high_n_s32(vrshrn_n_s32(v447, 0xDuLL), v392, 0xDuLL);
    v561[34] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v470, 0xDuLL);
    v561[37] = vrshrn_high_n_s32(vrshrn_n_s32(v527, 0xDuLL), v525, 0xDuLL);
    v561[36] = vrshrn_high_n_s32(vrshrn_n_s32(v133, 0xDuLL), v135, 0xDuLL);
    v561[39] = vrshrn_high_n_s32(vrshrn_n_s32(v421, 0xDuLL), v418, 0xDuLL);
    v561[38] = vrshrn_high_n_s32(vrshrn_n_s32(v463, 0xDuLL), v461, 0xDuLL);
    v561[41] = vrshrn_high_n_s32(vrshrn_n_s32(v513, 0xDuLL), v511, 0xDuLL);
    v561[40] = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xDuLL), v544, 0xDuLL);
    v561[43] = vrshrn_high_n_s32(vrshrn_n_s32(v441, 0xDuLL), v439, 0xDuLL);
    v561[42] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v473, 0xDuLL);
    v561[45] = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xDuLL), v537, 0xDuLL);
    v561[44] = vrshrn_high_n_s32(vrshrn_n_s32(v507, 0xDuLL), v505, 0xDuLL);
    v561[47] = vrshrn_high_n_s32(vrshrn_n_s32(v419, 0xDuLL), v416, 0xDuLL);
    v561[46] = vrshrn_high_n_s32(vrshrn_n_s32(v499, 0xDuLL), v497, 0xDuLL);
    v343 = vdupq_n_s16(0xE19Du);
    v561[49] = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xDuLL), v414, 0xDuLL);
    v561[48] = vrshrn_high_n_s32(vrshrn_n_s32(v553, 0xDuLL), v552, 0xDuLL);
    v561[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v340.i8, *v343.i8), *v341.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v341, v341, 8uLL), 0xA0A0A0A0A0A0A0ALL), v340, v343), 0xDuLL);
    v561[52] = vrshrn_high_n_s32(vrshrn_n_s32(v165, 0xDuLL), v503, 0xDuLL);
    v561[53] = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xDuLL), v437, 0xDuLL);
    v561[54] = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v477, 0xDuLL);
    v561[55] = vrshrn_high_n_s32(vrshrn_n_s32(v517, 0xDuLL), v515, 0xDuLL);
    v561[56] = vrshrn_high_n_s32(vrshrn_n_s32(v549, 0xDuLL), v548, 0xDuLL);
    v561[57] = vrshrn_high_n_s32(vrshrn_n_s32(v425, 0xDuLL), v423, 0xDuLL);
    v561[58] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v465, 0xDuLL);
    v561[59] = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v529, 0xDuLL);
    v561[60] = vrshrn_high_n_s32(vrshrn_n_s32(v547, 0xDuLL), v546, 0xDuLL);
    v561[61] = vrshrn_high_n_s32(vrshrn_n_s32(v535, 0xDuLL), v533, 0xDuLL);
    v561[62] = vrshrn_high_n_s32(vrshrn_n_s32(v521, 0xDuLL), v519, 0xDuLL);
    do
    {
      v561[v61] = vrshrq_n_s16(v561[v61], 2uLL);
      ++v61;
    }

    while (v61 != 64);
    v344 = v12;
    for (i7 = 112; i7 != 624; i7 += 128)
    {
      v346 = *&v560[i7 + 3920];
      v347 = *&v560[i7 + 3936];
      v348 = vtrn1q_s16(v346, v347);
      v349 = vtrn2q_s16(v346, v347);
      v350 = *&v560[i7 + 3952];
      v351 = *&v560[i7 + 3968];
      v352 = vtrn1q_s16(v350, v351);
      v353 = vtrn2q_s16(v350, v351);
      v354 = *&v560[i7 + 3984];
      v355 = *&v560[i7 + 4000];
      v356 = vtrn1q_s16(v354, v355);
      v357 = vtrn2q_s16(v354, v355);
      v358 = *&v560[i7 + 4016];
      v359 = v561[i7 / 0x10];
      v360 = vtrn1q_s16(v358, v359);
      v361 = vtrn2q_s16(v358, v359);
      v362 = vtrn1q_s32(v348, v352);
      v363 = vtrn2q_s32(v348, v352);
      v364 = vtrn1q_s32(v349, v353);
      v365 = vtrn2q_s32(v349, v353);
      v366 = vtrn1q_s32(v356, v360);
      v367 = vtrn2q_s32(v356, v360);
      v368 = vzip2q_s64(v362, v366);
      v362.i64[1] = v366.i64[0];
      v369 = vtrn1q_s32(v357, v361);
      v370 = vtrn2q_s32(v357, v361);
      v371 = vzip2q_s64(v364, v369);
      v364.i64[1] = v369.i64[0];
      v372 = vzip2q_s64(v363, v367);
      v363.i64[1] = v367.i64[0];
      v367.i64[0] = v365.i64[0];
      v367.i64[1] = v370.i64[0];
      v344[-4] = v362;
      v344[-3] = v364;
      v344[-2] = v363;
      v344[-1] = v367;
      *v344 = v368;
      v344[1] = v371;
      v344[2] = v372;
      v344[3] = vzip2q_s64(v365, v370);
      v344 += 32;
    }

    ++v11;
    v8 += 16;
    v12 += 8;
    v13 = v557;
    v14 = v556;
  }

  while (v11 != 4);
  v373 = 0;
  v374 = v386 + 1;
  v375 = &v559;
  v558 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i8 = 0; i8 != 32; ++i8)
    {
      v377 = *&v375[i8 * 16];
      v730[i8] = vmovl_s16(*v377.i8);
      v701[i8] = vmovl_high_s16(v377);
    }

    sub_2779E7BA4(v730, v730);
    result = sub_2779E7BA4(v701, v701);
    for (i9 = 0; i9 != 32; ++i9)
    {
      v730[i9] = vrshrq_n_s32(v730[i9], 2uLL);
    }

    for (i10 = 0; i10 != 32; ++i10)
    {
      v701[i10] = vrshrq_n_s32(v701[i10], 2uLL);
    }

    for (i11 = 0; i11 != 32; ++i11)
    {
      v730[i11] = vrshrq_n_s32(vmulq_s32(v730[i11], v558), 0xCuLL);
    }

    for (i12 = 0; i12 != 32; ++i12)
    {
      v701[i12] = vrshrq_n_s32(vmulq_s32(v701[i12], v558), 0xCuLL);
    }

    v383 = 0;
    v384 = v374;
    do
    {
      v385 = v701[v383];
      v384[-1] = v730[v383];
      *v384 = v385;
      ++v383;
      v384 += 8;
    }

    while (v383 != 32);
    ++v373;
    v375 += 512;
    v374 += 2;
  }

  while (v373 != 4);
  return result;
}