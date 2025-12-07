uint64_t sub_23A8ED98C(float32x2_t *a1, float a2, float32x2_t a3)
{
  if (a1[4].i8[0])
  {
    return 0;
  }

  v4 = a1[2];
  v5 = vsub_f32(a3, v4);
  v6 = fabsf(v5.f32[1]);
  v7 = fabsf(v5.f32[0]) < a2 && v6 < a2;
  if (v7 || ((v8 = a1[3], v9 = vsub_f32(a3, v8), v10 = fabsf(v9.f32[0]), v11 = fabsf(v9.f32[1]), v10 < a2) ? (v12 = v11 < a2) : (v12 = 0), v12))
  {
    v17 = 1;
  }

  else
  {
    v18 = v5;
    v13 = vsub_f32(v8, v4);
    if (fabsf(_simd_orient_vf2(v5, v13)) > a2 || (v14 = vmul_f32(v18, v13), vaddv_f32(v14) <= 0.0))
    {
      v17 = 0;
    }

    else
    {
      v15 = vsub_f32(v4, v8);
      v16 = vmul_f32(v15, v15);
      v17 = vcgt_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), vadd_f32(v14, vdup_lane_s32(v14, 1))).u8[0];
    }
  }

  return v17 & 1;
}

uint64_t sub_23A8EDA7C(uint64_t a1, float a2, float32x2_t a3)
{
  v4 = *(a1 + 24);
  v32 = a3;
  if (v4 >> 62)
  {
LABEL_37:
    v27 = sub_23AA0D7F4();
    a3.i32[1] = v32.i32[1];
    v5 = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = 0;
      v8 = a3.f32[1];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EE90360](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:

LABEL_35:
            v7 = 1;
            return v7 & 1;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v9 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_33;
          }
        }

        if ((*(v9 + 32) & 1) == 0)
        {
          v11 = *(v9 + 16);
          v12 = vsub_f32(v32, v11);
          v13 = fabsf(v12.f32[1]);
          if (fabsf(v12.f32[0]) < a2 && v13 < a2)
          {
            goto LABEL_34;
          }

          v15 = *(v9 + 24);
          v16 = vsub_f32(v32, v15);
          v17 = fabsf(v16.f32[0]);
          v18 = fabsf(v16.f32[1]);
          if (v17 < a2 && v18 < a2)
          {
            goto LABEL_34;
          }

          v30 = v12;
          v20 = vsub_f32(v15, v11);
          if (fabsf(_simd_orient_vf2(v12, v20)) <= a2)
          {
            v21 = vmul_f32(v30, v20);
            if (vaddv_f32(v21) > 0.0)
            {
              v22 = vsub_f32(v11, v15);
              v23 = vmul_f32(v22, v22);
              if (vcgt_f32(vadd_f32(v23, vdup_lane_s32(v23, 1)), vadd_f32(v21, vdup_lane_s32(v21, 1))).u8[0])
              {
                goto LABEL_34;
              }
            }
          }
        }

        v29 = *(v9 + 16);
        v31 = *(v9 + 24);

        v24 = vabds_f32(v31.f32[1], v8);
        v25 = vabds_f32(v29.f32[1], v31.f32[1]) > 0.00000011921 || v24 > 0.00000011921;
        if (!v25 && (vmvn_s8(veor_s8(vcge_f32(v31, v32), vcge_f32(v29, v32))).u32[0] & 1) == 0)
        {
          goto LABEL_35;
        }

        if (v8 < v29.f32[1] != v8 >= v31.f32[1])
        {
          goto LABEL_27;
        }

        v26 = v29.f32[0] + (((v8 - v29.f32[1]) * vsub_f32(v31, v29).f32[0]) / (v31.f32[1] - v29.f32[1]));
        if (vabds_f32(v32.f32[0], v26) <= 0.00000011921)
        {
          goto LABEL_35;
        }

        if (v32.f32[0] > v26)
        {
LABEL_27:
          ++v6;
        }

        else
        {
          v7 ^= 1u;
          v6 = v10;
        }

        if (v10 == v5)
        {
          return v7 & 1;
        }
      }
    }
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_23A8EDCD8(uint64_t a1, float a2, simd_float2 a3)
{
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_23AA0D7F4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 2;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EE90360](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }
    }

    v11 = _simd_orient_pf2(v9[2], v9[3], a3);

    if (fabsf(v11) < a2)
    {
      return 0;
    }

    if (v8 == 2)
    {
      v8 = v11 > 0.0;
      v7 = v10;
    }

    else
    {
      ++v7;
      if ((((v11 <= 0.0) ^ v8) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_23A8EDE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_23A8EDE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

char *sub_23A8EDEBC()
{
  v1 = v0[1];
  v35 = 0.5 * v1.f32[0];
  v37 = v0[2];
  v2 = vmuls_lane_f32(0.5, v1, 2);
  v43 = v0[5];
  v44 = vmuls_lane_f32(0.5, *v1.f32, 1);
  v39 = vmuls_lane_f32(0.5 * v1.f32[0], v37, 2);
  v41 = v0[3];
  v3 = v0[4];
  v46 = vmuls_lane_f32(v44, v41, 2);
  v4 = vmul_n_f32(vneg_f32(*v3.f32), v2);
  v5 = -(v3.f32[2] * v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v6 = swift_allocObject();
  v7 = 0;
  v8 = 0;
  *&v9 = vmul_n_f32(*v37.f32, v35);
  *&v10 = vsub_f32(0, *&v9);
  *(&v10 + 2) = 0.0 - v39;
  HIDWORD(v10) = 0;
  *(v6 + 32) = v10;
  v11 = v6 + 32;
  *(&v9 + 1) = LODWORD(v39);
  *(v6 + 48) = v9;
  *&v9 = vmul_n_f32(*v41.f32, v44);
  *&v10 = vsub_f32(0, *&v9);
  *(&v9 + 1) = LODWORD(v46);
  v40 = v9;
  v42 = v10;
  *(&v10 + 2) = 0.0 - v46;
  HIDWORD(v10) = 0;
  v36 = v10;
  v38 = 0.0 - v46;
  v12 = vsub_f32(0, v4);
  v13 = 0.0 - v5;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v7;
    v47 = *(v11 + 16 * v8);
    v16 = swift_allocObject();
    *(v16 + 32) = v36;
    *(v16 + 48) = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A9388A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      v14 = sub_23A9388A8((v17 > 1), v18 + 1, 1, v14);
      v17 = *(v14 + 3);
      v19 = v17 >> 1;
    }

    v48 = vaddq_f32(v43, v47);
    v21 = vadd_f32(*v48.f32, v42);
    *&v22 = vadd_f32(v12, v21);
    *(&v22 + 2) = v13 + (v48.f32[2] + v38);
    HIDWORD(v22) = 0;
    *(v14 + 2) = v20;
    *&v14[16 * v18 + 32] = v22;
    v23 = v18 + 2;
    if (v19 < v23)
    {
      v14 = sub_23A9388A8((v17 > 1), v23, 1, v14);
    }

    *&v24 = vadd_f32(v4, v21);
    *(&v24 + 2) = v5 + (v48.f32[2] + v38);
    HIDWORD(v24) = 0;
    *(v14 + 2) = v23;
    *&v14[16 * v20 + 32] = v24;
    v45 = *(v16 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A9388A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    v27 = v25 >> 1;
    v28 = v26 + 1;
    if (v25 >> 1 <= v26)
    {
      v14 = sub_23A9388A8((v25 > 1), v26 + 1, 1, v14);
      v25 = *(v14 + 3);
      v27 = v25 >> 1;
    }

    v29 = vadd_f32(*v48.f32, *v45.f32);
    v30 = COERCE_FLOAT(vaddq_f32(v48, v45).i32[2]);
    *&v31 = vadd_f32(v12, v29);
    *(&v31 + 2) = v13 + v30;
    HIDWORD(v31) = 0;
    *(v14 + 2) = v28;
    *&v14[16 * v26 + 32] = v31;
    v32 = v26 + 2;
    if (v27 < v32)
    {
      v14 = sub_23A9388A8((v25 > 1), v32, 1, v14);
    }

    *&v33 = vadd_f32(v4, v29);
    *(&v33 + 2) = v5 + v30;
    HIDWORD(v33) = 0;
    *(v14 + 2) = v32;
    *&v14[16 * v28 + 32] = v33;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v7 = 1;
    v8 = 1;
  }

  while ((v15 & 1) == 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v14;
}

BOOL sub_23A8EE240(uint64_t a1, float a2)
{
  v72 = __invert_f4(*(a1 + 32));
  v63 = v72.columns[1];
  v66 = v72.columns[0];
  v60 = v72.columns[3];
  v61 = v72.columns[2];
  v4 = sub_23A8EDEBC();
  v5 = *(v4 + 2);
  if (v5)
  {
    v69 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_23A975DC0(0, v5, 0);
    v8 = v6;
    v9 = v69;
    v10 = *(v69 + 16);
    v11 = 32;
    v13 = v63;
    v12 = v66;
    v15 = v60;
    v14 = v61;
    do
    {
      v16 = *&v8[v11];
      v17 = *(v69 + 24);
      if (v10 >= v17 >> 1)
      {
        v58 = *&v8[v11];
        v59 = v7;
        sub_23A975DC0((v17 > 1), v10 + 1, 1);
        v16 = v58;
        v7 = v59;
        v15 = v60;
        v14 = v61;
        v13 = v63;
        v12 = v66;
        v8 = v6;
      }

      v18 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v16.f32[0]), v13, *v16.f32, 1), v14, v16, 2));
      v18.i32[3] = v7;
      *(v69 + 16) = v10 + 1;
      *(v69 + 16 * v10 + 32) = v18;
      v11 += 16;
      ++v10;
      --v5;
    }

    while (v5);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v9 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v70 = MEMORY[0x277D84F90];
    sub_23A975DF0(0, v19, 0);
    v20 = v70;
    v21 = (v9 + 32);
    v22 = *(v70 + 16);
    v23 = v19;
    do
    {
      v24 = *v21;
      v25 = *(v70 + 24);
      if (v22 >= v25 >> 1)
      {
        v67 = *v21;
        sub_23A975DF0((v25 > 1), v22 + 1, 1);
        LODWORD(v24) = v67;
      }

      *(v70 + 16) = v22 + 1;
      *(v70 + 4 * v22 + 32) = v24;
      ++v21;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v26 = sub_23A8EDE0C(v20);
  if ((v26 & 0x100000000) != 0)
  {
    goto LABEL_30;
  }

  v68 = *&v26;
  v27 = sub_23A8EDE64(v20);

  if ((v27 & 0x100000000) != 0)
  {
LABEL_31:

    return 0;
  }

  v28 = MEMORY[0x277D84F90];
  if (v19)
  {
    v71 = MEMORY[0x277D84F90];
    sub_23A975DF0(0, v19, 0);
    v29 = v71;
    v30 = (v9 + 32);
    v31 = *(v71 + 16);
    v32 = v19;
    do
    {
      v33 = *v30;
      v34 = *(v71 + 24);
      if (v31 >= v34 >> 1)
      {
        v65 = HIDWORD(*v30);
        sub_23A975DF0((v34 > 1), v31 + 1, 1);
        DWORD1(v33) = v65;
      }

      *(v71 + 16) = v31 + 1;
      *(v71 + 4 * v31 + 32) = DWORD1(v33);
      ++v30;
      ++v31;
      --v32;
    }

    while (v32);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v35 = sub_23A8EDE0C(v29);
  if ((v35 & 0x100000000) != 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v64 = *&v35;
  v36 = sub_23A8EDE64(v29);

  if ((v36 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  if (v19)
  {
    sub_23A975DF0(0, v19, 0);
    v37 = v28;
    v38 = *(v28 + 16);
    v39 = 32;
    do
    {
      v40 = *(v9 + v39);
      v41 = *(v37 + 24);
      if (v38 >= v41 >> 1)
      {
        v62 = *(v9 + v39 + 8);
        sub_23A975DF0((v41 > 1), v38 + 1, 1);
        DWORD2(v40) = v62;
      }

      *(v37 + 16) = v38 + 1;
      *(v37 + 4 * v38 + 32) = DWORD2(v40);
      v39 += 16;
      ++v38;
      --v19;
    }

    while (v19);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v43 = sub_23A8EDE0C(v37);
  if ((v43 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  v44 = *&v43;
  v45 = sub_23A8EDE64(v37);

  if ((v45 & 0x100000000) != 0)
  {
    return 0;
  }

  v46 = *(a1 + 16);
  v47 = 0.5 * v46.f32[0];
  v48 = vmuls_lane_f32(0.5, *v46.f32, 1);
  v49 = vmuls_lane_f32(0.5, v46, 2);
  v50 = (*&v27 - v68) * a2;
  v51 = v50 > (v47 - v68) || v50 > (*&v27 - (0.0 - v47));
  v52 = (*&v36 - v64) * a2;
  v53 = v51 || v52 > (v48 - v64);
  v54 = v53 || v52 > (*&v36 - (0.0 - v48));
  v55 = (*&v45 - v44) * a2;
  v56 = v54 || v55 > (v49 - v44);
  return !v56 && v55 <= (*&v45 - (0.0 - v49));
}

uint64_t sub_23A8EE690(char a1)
{
  if ((a1 & 8) != 0)
  {
    if ((a1 & 4) == 0)
    {
      result = 240;
      if ((a1 & 2) == 0)
      {
        if (a1)
        {
          goto LABEL_22;
        }

        return result;
      }

      goto LABEL_16;
    }

    result = 255;
    if ((a1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((a1 & 4) == 0)
  {
    result = 0;
    if ((a1 & 2) == 0)
    {
      if ((a1 & 1) == 0)
      {
        return result;
      }

LABEL_20:
      LODWORD(result) = result | 0x40;
LABEL_21:
      if ((result & 4) != 0)
      {
        return result | 0x88;
      }

LABEL_22:
      LODWORD(result) = result | 4;
      return result | 0x88;
    }

LABEL_14:
    LODWORD(result) = result | 0x20;
LABEL_15:
    if ((result & 2) != 0)
    {
LABEL_17:
      result = result | 0x11;
      goto LABEL_18;
    }

LABEL_16:
    LODWORD(result) = result | 2;
    goto LABEL_17;
  }

  result = 15;
  if ((a1 & 2) != 0)
  {
LABEL_13:
    if ((result & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_18:
  if (a1)
  {
    if ((result & 0x40) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return result;
}

void sub_23A8EE70C(uint64_t *a1)
{
  v3 = v2;
  v184 = *MEMORY[0x277D85DE8];
  v161 = sub_23AA0BFB4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v6 = v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_23AA0C064();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for CapturedRoom.Object(0);
  v168 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v176 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169.i64[0] = type metadata accessor for CapturedRoom.Surface(0);
  *&v170 = *(v169.i64[0] - 8);
  MEMORY[0x28223BE20](v169.i64[0]);
  v177 = v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath);
  v11 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath + 8);
  v159 = v6;
  v162 = a1;
  if (v11)
  {
LABEL_2:
    v154[1] = v3;
    v154[0] = *v10;
    v12 = *a1;
    v166 = *(*a1 + 16);
    v155 = v11;
    if (v166)
    {
      v164 = v12 + ((*(v170 + 80) + 32) & ~*(v170 + 80));

      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v163 = xmmword_23AA11C10;
      v15 = MEMORY[0x277D84F90];
      v165 = v12;
      while (v13 < *(v12 + 16))
      {
        v178 = v14;
        v16 = *(v170 + 72);
        v175 = v13;
        v17 = v177;
        sub_23A8D52B8(v164 + v16 * v13, v177, type metadata accessor for CapturedRoom.Surface);
        v18 = *(v17 + 16);
        v174 = *(v17 + 32);
        v173 = *(v17 + 48);
        v179 = *(v17 + 80);
        v19.i64[1] = v179.i64[1];
        *v19.i8 = vmul_f32(*&v18, COERCE_FLOAT32X2_T(-0.0000305175853));
        v172 = v19;
        v20 = vextq_s8(v173, v173, 8uLL);
        *v20.i8 = vmul_f32(*v19.i8, vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *v20.i8));
        v171 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v21 = swift_allocObject();
        v21[1] = v163;
        v22 = *&v179.i32[2];
        v23 = *v171.i32;
        v24 = vmul_lane_f32(*v173.i8, *v172.i8, 1);
        v25 = vmul_n_f32(*v174.i8, *v172.i32);
        v26 = *v179.i8;
        *&v27 = vadd_f32(v24, vsub_f32(*v179.i8, v25));
        v28 = *&v171.i32[1];
        *(&v27 + 2) = *&v171.i32[1] + (*&v179.i32[2] - *v171.i32);
        HIDWORD(v27) = 0;
        v21[2] = v27;
        v29 = v21 + 2;
        *&v30 = vadd_f32(v24, vadd_f32(v25, v26));
        *(&v30 + 1) = COERCE_UNSIGNED_INT(v28 + (v23 + v22));
        v174.i64[0] = v21;
        v21[3] = v30;
        v31 = sub_23AA0C074();
        v183 = MEMORY[0x277D837D0];
        *&v182 = v31;
        *(&v182 + 1) = v32;
        sub_23A8EF9F0(&v182, &v181);
        v33 = MEMORY[0x277D84F98];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v180 = v33;
        sub_23A9DA840(&v181, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
        v35 = 0;
        v36 = 0;
        v173.i64[0] = v180;
        v37 = v15;
        do
        {
          v38 = v35;
          v179 = v29[v36];
          v39 = sub_23A93964C(0, 1, 1, v15);
          v41 = *(v39 + 2);
          v40 = *(v39 + 3);
          v42 = v40 >> 1;
          v43 = v41 + 1;
          if (v40 >> 1 <= v41)
          {
            v39 = sub_23A93964C((v40 > 1), v41 + 1, 1, v39);
            v40 = *(v39 + 3);
            v42 = v40 >> 1;
          }

          *(v39 + 2) = v43;
          v44 = v179;
          *&v39[4 * v41 + 32] = v179.i32[0];
          v45 = v41 + 2;
          if (v42 < (v41 + 2))
          {
            v49 = sub_23A93964C((v40 > 1), v41 + 2, 1, v39);
            v44 = v179;
            v39 = v49;
          }

          *(v39 + 2) = v45;
          *&v39[4 * v43 + 32] = v44.i32[2];
          v46 = *(v39 + 3);
          if ((v41 + 3) > (v46 >> 1))
          {
            v50 = sub_23A93964C((v46 > 1), v41 + 3, 1, v39);
            v44.i32[1] = v179.i32[1];
            v39 = v50;
          }

          *(v39 + 2) = v41 + 3;
          *&v39[4 * v45 + 32] = v44.i32[1];
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
          *&v182 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_23A939750(0, *(v37 + 2) + 1, 1, v37);
          }

          v48 = *(v37 + 2);
          v47 = *(v37 + 3);
          if (v48 >= v47 >> 1)
          {
            v37 = sub_23A939750((v47 > 1), v48 + 1, 1, v37);
          }

          *(v37 + 2) = v48 + 1;
          sub_23A8EF9F0(&v182, &v37[32 * v48 + 32]);
          v35 = 1;
          v36 = 1;
        }

        while ((v38 & 1) == 0);

        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
        *&v182 = v37;
        sub_23A8EF9F0(&v182, &v181);
        v51 = v173.i64[0];
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v51;
        sub_23A9DA840(&v181, 0x73746E696F70, 0xE600000000000000, v52);
        v53 = v180;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED30, &unk_23AA121F0);
        *&v182 = v53;
        v14 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_23A939750(0, *(v14 + 2) + 1, 1, v14);
        }

        v54 = v175;
        v56 = *(v14 + 2);
        v55 = *(v14 + 3);
        if (v56 >= v55 >> 1)
        {
          v14 = sub_23A939750((v55 > 1), v56 + 1, 1, v14);
        }

        v13 = v54 + 1;
        sub_23A8D5320(v177, type metadata accessor for CapturedRoom.Surface);
        *(v14 + 2) = v56 + 1;
        sub_23A8EF9F0(&v182, &v14[32 * v56 + 32]);
        v12 = v165;
        if (v13 == v166)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
    }

    v14 = MEMORY[0x277D84F90];
LABEL_32:
    v178 = v14;
    v79 = v162[5];
    v166 = *(v79 + 16);
    if (v166)
    {
      v80 = 0;
      v164 = v79 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
      v81 = MEMORY[0x277D84F90];
      v163 = xmmword_23AA11C20;
      v82 = MEMORY[0x277D84F90];
      v165 = v79;
      while (v80 < *(v79 + 16))
      {
        v177 = v81;
        v83 = *(v168 + 72);
        v175 = v80;
        v84 = v176;
        sub_23A8D52B8(v164 + v83 * v80, v176, type metadata accessor for CapturedRoom.Object);
        v85 = *(v84 + 16);
        v179 = *(v84 + 32);
        v86 = *(v84 + 64);
        v174 = *(v84 + 48);
        v171 = v86;
        v173 = *(v84 + 80);
        *&v87 = vmul_f32(*v85.f32, COERCE_FLOAT32X2_T(-0.0000305175853));
        v170 = v87;
        v88 = vextq_s8(v174, v174, 8uLL);
        *v88.i8 = vmul_f32(*&v87, vzip1_s32(*&vextq_s8(v179, v179, 8uLL), *v88.i8));
        v169 = v88;
        *v88.i32 = vmuls_lane_f32(0.5, v85, 2);
        v172 = v88;
        v89 = -(*&v86.i32[2] * *v88.i32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v90 = swift_allocObject();
        v91 = *&v173.i32[2];
        v92 = *&v169.i32[1];
        v93 = *v169.i32;
        v94 = *&v169.i32[1] + (*&v173.i32[2] - *v169.i32);
        v95 = vmul_lane_f32(*v174.i8, *&v170, 1);
        v96 = vmul_n_f32(*v179.i8, *&v170);
        v97 = vmul_n_f32(vneg_f32(*v171.i8), *v172.i32);
        v98 = *v173.i8;
        v99 = vadd_f32(v95, vsub_f32(*v173.i8, v96));
        *&v100 = vsub_f32(v99, v97);
        *(&v100 + 2) = v94 - v89;
        HIDWORD(v100) = 0;
        v90[1] = v163;
        v90[2] = v100;
        *&v101 = vadd_f32(v97, v99);
        *(&v101 + 2) = v89 + v94;
        HIDWORD(v101) = 0;
        v102 = v92 + (v93 + v91);
        v103 = vadd_f32(v95, vadd_f32(v96, v98));
        *&v104 = vadd_f32(v97, v103);
        *(&v104 + 2) = v89 + v102;
        HIDWORD(v104) = 0;
        v90[3] = v101;
        v90[4] = v104;
        *&v105 = vsub_f32(v103, v97);
        *(&v105 + 1) = COERCE_UNSIGNED_INT(v102 - v89);
        v90[5] = v105;
        v106 = sub_23AA0C074();
        v183 = MEMORY[0x277D837D0];
        *&v182 = v106;
        *(&v182 + 1) = v107;
        sub_23A8EF9F0(&v182, &v181);
        v108 = MEMORY[0x277D84F98];
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v108;
        sub_23A9DA840(&v181, 0x696669746E656469, 0xEA00000000007265, v109);
        v174.i64[0] = v180;
        v110 = 2;
        v111 = v82;
        do
        {
          v179 = v90[v110];
          v112 = sub_23A93964C(0, 1, 1, v82);
          v114 = *(v112 + 2);
          v113 = *(v112 + 3);
          v115 = v113 >> 1;
          v116 = v114 + 1;
          if (v113 >> 1 <= v114)
          {
            v112 = sub_23A93964C((v113 > 1), v114 + 1, 1, v112);
            v113 = *(v112 + 3);
            v115 = v113 >> 1;
          }

          *(v112 + 2) = v116;
          v117 = v179;
          *&v112[4 * v114 + 32] = v179.i32[0];
          v118 = v114 + 2;
          if (v115 < (v114 + 2))
          {
            v122 = sub_23A93964C((v113 > 1), v114 + 2, 1, v112);
            v117 = v179;
            v112 = v122;
          }

          *(v112 + 2) = v118;
          *&v112[4 * v116 + 32] = v117.i32[2];
          v119 = *(v112 + 3);
          if ((v114 + 3) > (v119 >> 1))
          {
            v123 = sub_23A93964C((v119 > 1), v114 + 3, 1, v112);
            v117.i32[1] = v179.i32[1];
            v112 = v123;
          }

          *(v112 + 2) = v114 + 3;
          *&v112[4 * v118 + 32] = v117.i32[1];
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
          *&v182 = v112;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_23A939750(0, *(v111 + 2) + 1, 1, v111);
          }

          v121 = *(v111 + 2);
          v120 = *(v111 + 3);
          if (v121 >= v120 >> 1)
          {
            v111 = sub_23A939750((v120 > 1), v121 + 1, 1, v111);
          }

          *(v111 + 2) = v121 + 1;
          sub_23A8EF9F0(&v182, &v111[32 * v121 + 32]);
          ++v110;
        }

        while (v110 != 6);

        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
        *&v182 = v111;
        sub_23A8EF9F0(&v182, &v181);
        v124 = v174.i64[0];
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v180 = v124;
        sub_23A9DA840(&v181, 0x73746E696F70, 0xE600000000000000, v125);
        v126 = v180;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED30, &unk_23AA121F0);
        *&v182 = v126;
        v81 = v177;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_23A939750(0, *(v81 + 2) + 1, 1, v81);
        }

        v79 = v165;
        v128 = *(v81 + 2);
        v127 = *(v81 + 3);
        v129 = v175;
        if (v128 >= v127 >> 1)
        {
          v81 = sub_23A939750((v127 > 1), v128 + 1, 1, v81);
        }

        v80 = v129 + 1;
        sub_23A8D5320(v176, type metadata accessor for CapturedRoom.Object);
        *(v81 + 2) = v128 + 1;
        sub_23A8EF9F0(&v182, &v81[32 * v128 + 32]);
        if (v80 == v166)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_61;
    }

    v81 = MEMORY[0x277D84F90];
LABEL_54:
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
    v183 = v130;
    *&v182 = v178;
    sub_23A8EF9F0(&v182, &v181);
    v131 = MEMORY[0x277D84F98];
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v131;
    sub_23A9DA840(&v181, 0x736C6C6177, 0xE500000000000000, v132);
    v133 = v180;
    v183 = v130;
    *&v182 = v81;
    sub_23A8EF9F0(&v182, &v181);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v133;
    sub_23A9DA840(&v181, 0x737463656A626FLL, 0xE700000000000000, v134);
    v135 = objc_opt_self();
    v136 = sub_23AA0D024();

    *&v182 = 0;
    v137 = [v135 dataWithPropertyList:v136 format:100 options:0 error:&v182];

    v138 = v182;
    if (v137)
    {
      v139 = sub_23AA0BFE4();
      v141 = v140;

      v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v143 = sub_23AA0D104();
      [v142 setDateFormat_];

      v144 = v156;
      sub_23AA0C054();
      v145 = sub_23AA0C034();
      (*(v157 + 8))(v144, v158);
      v146 = [v142 stringFromDate_];

      v147 = sub_23AA0D134();
      v149 = v148;

      *&v182 = v147;
      *(&v182 + 1) = v149;

      MEMORY[0x23EE8FCA0](0x2E73746E696F705FLL, 0xED00007473696C70);

      v150 = v182;
      *&v182 = v154[0];
      *(&v182 + 1) = v155;

      MEMORY[0x23EE8FCA0](v150, *(&v150 + 1));

      v151 = v159;
      sub_23AA0BEE4();

      sub_23AA0BFF4();
      (*(v160 + 8))(v151, v161);

      sub_23A8EFA00(v139, v141);
      return;
    }

    v152 = v138;

    sub_23AA0BE74();

    goto LABEL_58;
  }

  v57 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v58 = *(v1 + v57);
  if (!v58)
  {
    __break(1u);
    return;
  }

  v59 = v58 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v60 = *(v59 + 8);
    ObjectType = swift_getObjectType();
    v62 = (*(v60 + 8))(ObjectType, v60);
    v64 = v63;
    swift_unknownObjectRelease();
    *&v182 = v62;
    *(&v182 + 1) = v64;

    MEMORY[0x23EE8FCA0](0x6574656D69726550, 0xEE002F6174614472);

    v65 = v182;
    v66 = objc_opt_self();
    v67 = [v66 defaultManager];
    v68 = sub_23AA0D104();
    v69 = [v67 fileExistsAtPath_];

    if (v69)
    {
      v70 = [v66 defaultManager];
      v71 = sub_23AA0D104();
      *&v182 = 0;
      v72 = [v70 removeItemAtPath:v71 error:&v182];

      v73 = v182;
      if (!v72)
      {
        goto LABEL_57;
      }

      v74 = v182;
    }

    v75 = [v66 defaultManager];
    v76 = sub_23AA0D104();
    *&v182 = 0;
    v77 = [v75 createDirectoryAtPath:v76 withIntermediateDirectories:1 attributes:0 error:&v182];

    v73 = v182;
    if (v77)
    {
      *v10 = v65;
      v78 = v73;

      v11 = v10[1];
      v3 = v2;
      a1 = v162;
      if (!v11)
      {
        return;
      }

      goto LABEL_2;
    }

LABEL_57:
    v153 = v73;

    sub_23AA0BE74();

LABEL_58:
    swift_willThrow();
  }
}

_OWORD *sub_23A8EF9F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_23A8EFA00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t static RoomCaptureGeometryManager.shared.getter()
{
  type metadata accessor for RoomCaptureGeometryManager();

  return swift_initStaticObject();
}

void *sub_23A8EFAA8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  type metadata accessor for CDTTriangulator();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = a4;
    v74 = MEMORY[0x277D84F90];
    sub_23A975EA4(0, v10, 0);
    v13 = v74;
    v14 = (a1 + 32);
    v15 = *(v74 + 2);
    do
    {
      v16 = *v14;
      v74 = v13;
      v17 = *(v13 + 3);
      if (v15 >= v17 >> 1)
      {
        v68 = v16;
        sub_23A975EA4((v17 > 1), v15 + 1, 1);
        *&v16 = v68;
        v13 = v74;
      }

      *(v13 + 2) = v15 + 1;
      *&v13[8 * v15 + 32] = v16;
      ++v14;
      ++v15;
      --v10;
    }

    while (v10);
    a4 = v12;
  }

  *a5 = v11;
  if (a2 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_19:
    if (*(v63 + 16) == 1)
    {

      v25 = sub_23A8ED31C(v24);
      type metadata accessor for CDTPolygon();
      swift_initStackObject();
      v26 = sub_23A99A810(v25);
      if (a3)
      {
        v27 = a3;
      }

      else
      {
        swift_allocObject();
        v27 = sub_23A99A810(MEMORY[0x277D84F90]);
      }

      sub_23A992E6C(v26, v27, MEMORY[0x277D84F90]);
    }

    v29 = sub_23A8ED31C(v28);
    type metadata accessor for CDTPolygon();
    swift_allocObject();
    a2 = sub_23A99A810(v29);
    *a4 = a2;
    sub_23A99AC40();
    if (v30)
    {

      swift_allocObject();

      a2 = sub_23A99A810(v31);
      *a4 = a2;
    }

    v32 = a3;
    if (a3)
    {

      sub_23A99AC40();
      if (v34)
      {

        v36 = sub_23A8ED31C(v35);
        swift_allocObject();
        v37 = sub_23A99A810(v36);

        v32 = v37;
      }

      v38 = sub_23A98EAC0(a2, v32, v33);

      *a4 = v38;
      a2 = v38;
    }

    v39 = sub_23A98EBE4(v20);

    *a5 = v39;
    if (v39 >> 62)
    {
      v40 = sub_23AA0D7F4();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v41 = 0;
      v70 = v39 & 0xC000000000000001;
      v67 = v39 & 0xFFFFFFFFFFFFFF8;
      a3 = a5;
      v65 = v39 + 32;
      v62 = v39;
      v42 = v39;
      v63 = v40;
      while (1)
      {
        if (v70)
        {
          v43 = MEMORY[0x23EE90360](v41, v62);
        }

        else
        {
          if (v41 >= *(v67 + 16))
          {
            goto LABEL_70;
          }

          v43 = *(v65 + 8 * v41);
        }

        if (sub_23A99AA3C())
        {
          v44 = 0;
          v45 = *(v43 + 16);
          a4 = *(v45 + 16);
          while (1)
          {
            if (a4 == v44)
            {

              v49 = v43;
              goto LABEL_50;
            }

            if (v44 >= *(v45 + 16))
            {
              break;
            }

            a5 = (v44 + 1);
            v46 = sub_23A8EDCD8(a2, 0.001, *(v45 + 32 + 8 * v44));
            v44 = a5;
            if (v46)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          result = sub_23AA0D7F4();
          v19 = result;
          goto LABEL_9;
        }

LABEL_43:
        if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
        {
          v48 = sub_23A993944(v43, a2, 0, v47);
          if (v48)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v48 = sub_23A9908E8(v43, a2, 0, 1, 0.0001);
          if (v48)
          {
LABEL_48:
            v49 = v48;
            goto LABEL_50;
          }
        }

        swift_allocObject();
        v49 = sub_23A99A810(MEMORY[0x277D84F90]);
LABEL_50:
        a5 = a3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v42 & 0x8000000000000000) != 0 || (v42 & 0x4000000000000000) != 0)
        {
          v42 = sub_23A97E578();
        }

        if (v41 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        *((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v41 + 0x20) = v49;

        *a3 = v42;
        if (++v41 == v63)
        {
          goto LABEL_59;
        }
      }
    }

    v42 = v39;
LABEL_59:

    sub_23A98EE34(a2, v42, 0, 0, 1);
    v50 = MEMORY[0x277D84F90];
    v74 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
    sub_23A995AEC(v51, &v74, &v73);

    v52 = v74;
    v53 = *(v74 + 2);
    if (v53)
    {
      sub_23A975DC0(0, v53, 0);
      v55 = v50;
      v56 = *(v50 + 16);
      v57 = 32;
      do
      {
        *&v54 = *&v52[v57];
        v58 = *(v50 + 24);
        if (v56 >= v58 >> 1)
        {
          v71 = v54;
          sub_23A975DC0((v58 > 1), v56 + 1, 1);
          v54 = v71;
        }

        *(v50 + 16) = v56 + 1;
        *(v50 + 16 * v56 + 32) = v54;
        v57 += 8;
        ++v56;
        --v53;
      }

      while (v53);

      v59 = *(v50 + 16);
      if (v59)
      {
        goto LABEL_65;
      }
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
      v59 = *(MEMORY[0x277D84F90] + 16);
      if (v59)
      {
LABEL_65:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v60 = sub_23AA0D324();
        *(v60 + 16) = v59;
        memset_pattern16((v60 + 32), &xmmword_23AA12250, 16 * v59);
LABEL_68:
        sub_23A9119A0(v60);
        swift_setDeallocating();

        v61 = v73;
        type metadata accessor for RoomCaptureMesh();
        result = swift_allocObject();
        result[2] = v55;
        result[3] = v72;
        result[4] = v61;
        return result;
      }
    }

    v60 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23EE90360](i, a2);
      }

      else
      {
        v22 = *(a2 + 8 * i + 32);
      }

      v69 = *(v22 + 16);
      v66 = *(v22 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_23AA11C20;
      *(v23 + 32) = v69;
      *(v23 + 40) = __PAIR64__(HIDWORD(v69), v66);
      *(v23 + 48) = v66;
      *(v23 + 56) = __PAIR64__(HIDWORD(v66), v69);
      type metadata accessor for CDTPolygon();
      swift_allocObject();
      sub_23A99A810(v23);
      MEMORY[0x23EE8FD70]();
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
    }

    v20 = *a5;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_23A8F0290(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, __n128 a7, float32_t a8, float32_t a9, float a10)
{
  v11.f32[0] = a9;
  v276 = a6;
  v277 = a5;
  v302.i32[0] = a4;
  v286 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v16 - 8);
  v294 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v290 = &v276 - v19;
  v279 = type metadata accessor for ScanItemStrut(0);
  v281 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v293 = (&v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v278 = (&v276 - v22);
  v308 = MEMORY[0x277D84F90];
  v309 = MEMORY[0x277D84F90];
  v306 = 0;
  v307 = MEMORY[0x277D84F90];
  v305 = MEMORY[0x277D84F90];
  v284 = sub_23A8F5768(a1, a10);
  if (a3)
  {
    type metadata accessor for CDTPolygon();
    swift_allocObject();

    a3 = sub_23A99A810(v23);
  }

  v24 = sub_23A8EFAA8(v284, a2, a3, &v306, &v305);

  v287 = v24;
  v25 = v24[2];
  v26 = v25[1].i64[0];
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v304 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v26, 0);
    *v28.i32 = a8 * 0.0;
    v27 = v304;
    v29 = v25 + 2;
    *v30.i32 = a8 + 0.0;
    v31 = *(v304 + 16);
    v32 = vdupq_lane_s32(v28, 0);
    do
    {
      v33 = *v29;
      v304 = v27;
      v34 = *(v27 + 24);
      if (v31 >= v34 >> 1)
      {
        v303 = v30;
        v300 = v33;
        v301 = v32;
        sub_23A975DC0((v34 > 1), v31 + 1, 1);
        v33 = v300;
        v32 = v301;
        v30 = v303;
        v27 = v304;
      }

      *&v35 = vaddq_f32(v32, v33).u64[0];
      *(&v35 + 1) = v30.u32[0];
      *(v27 + 16) = v31 + 1;
      *(v27 + 16 * v31 + 32) = v35;
      ++v29;
      ++v31;
      --v26;
    }

    while (v26);
  }

  sub_23A9119A0(v27);
  v36 = v287;

  sub_23A9119A0(v37);

  sub_23A911A8C(v38);
  v40 = v36[4];
  v41 = *(v40 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v304 = MEMORY[0x277D84F90];

    v43 = &v304;
    sub_23A975E54(0, v41, 0);
    v42 = v304;
    v44 = 32;
    v45 = v309;
    do
    {
      v46 = *(v45 + 16);
      if (HIDWORD(v46))
      {
        goto LABEL_231;
      }

      v47 = *(v40 + v44);
      v48 = v47 + v46;
      if (__CFADD__(v47, v46))
      {
        goto LABEL_232;
      }

      v304 = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        v43 = &v304;
        sub_23A975E54((v49 > 1), v50 + 1, 1);
        v42 = v304;
      }

      *(v42 + 16) = v50 + 1;
      *(v42 + 4 * v50 + 32) = v48;
      v44 += 4;
      --v41;
    }

    while (v41);
  }

  sub_23A912078(v42, v39);
  v51 = v287[2];
  v52 = v51[1].i64[0];
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    v304 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v52, 0);
    *v54.i32 = v11.f32[0] * 0.0;
    v53 = v304;
    v55 = v51 + 2;
    *v56.i32 = 0.0 - v11.f32[0];
    v57 = *(v304 + 16);
    v58 = vdupq_lane_s32(v54, 0);
    do
    {
      v59 = *v55;
      v304 = v53;
      v60 = *(v53 + 24);
      if (v57 >= v60 >> 1)
      {
        v303 = v56;
        v300 = v59;
        v301 = v58;
        sub_23A975DC0((v60 > 1), v57 + 1, 1);
        v59 = v300;
        v58 = v301;
        v56 = v303;
        v53 = v304;
      }

      *&v61 = vaddq_f32(v58, v59).u64[0];
      *(&v61 + 1) = v56.u32[0];
      *(v53 + 16) = v57 + 1;
      *(v53 + 16 * v57 + 32) = v61;
      ++v55;
      ++v57;
      --v52;
    }

    while (v52);
  }

  sub_23A9119A0(v53);
  v62 = *(v287[2] + 16);
  v42 = MEMORY[0x277D84F90];
  v44 = v293;
  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v63 = sub_23AA0D324();
    *(v63 + 16) = v62;
    memset_pattern16((v63 + 32), &xmmword_23AA12240, 16 * v62);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  sub_23A9119A0(v63);
  if (v306)
  {
    v280 = v306;
    v41 = *(v306 + 24);
    v43 = v294;
    if (v41 >> 62)
    {
      goto LABEL_242;
    }

    v68 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_27;
    }

LABEL_65:
    while (2)
    {
      if (v302.i8[0])
      {
        sub_23A8F5E40(a2, v286.n128_f64[0], a8, v11.f32[0]);
        v44 = sub_23A982850(v114);

        v115 = *(v44 + 32);
        v41 = *(v115 + 16);
        v42 = MEMORY[0x277D84F90];
        if (v41)
        {
          v304 = MEMORY[0x277D84F90];

          v43 = &v304;
          sub_23A975E54(0, v41, 0);
          v42 = v304;
          v116 = 32;
          v117 = v309;
          while (1)
          {
            v118 = *(v117 + 16);
            if (HIDWORD(v118))
            {
              goto LABEL_233;
            }

            v119 = *(v115 + v116);
            v120 = v119 + v118;
            if (__CFADD__(v119, v118))
            {
              goto LABEL_234;
            }

            v304 = v42;
            a2 = *(v42 + 16);
            v121 = *(v42 + 24);
            if (a2 >= v121 >> 1)
            {
              v43 = &v304;
              sub_23A975E54((v121 > 1), a2 + 1, 1);
              v42 = v304;
            }

            *(v42 + 16) = a2 + 1;
            *(v42 + 4 * a2 + 32) = v120;
            v116 += 4;
            if (!--v41)
            {

              break;
            }
          }
        }

        sub_23A911A8C(v42);

        sub_23A9119A0(v122);

        sub_23A9119A0(v123);

        v44 = v293;
        v43 = v294;
        v42 = MEMORY[0x277D84F90];
      }

      v288 = v305;
      if (v305 >> 62)
      {
        v41 = sub_23AA0D7F4();
      }

      else
      {
        v41 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v124 = v290;
      if (v41)
      {
        v125 = 0;
        v289 = v288 & 0xC000000000000001;
        v283 = v288 & 0xFFFFFFFFFFFFFF8;
        v282 = v288 + 32;
        v126.i32[1] = v286.n128_i32[1];
        v127 = vmuls_lane_f32(-0.5, v286.n128_u64[0], 1);
        DWORD1(v64) = 0;
        *v126.i32 = a8 * 0.0;
        *&v66 = a8 + 0.0;
        *&v65 = v11.f32[0] * 0.0;
        *&v64 = 0.0 - v11.f32[0];
        *&v67 = *&v66 - *&v66;
        v297 = v67;
        v11 = vdup_lane_s32(*&v65, 0);
        v128 = vdup_lane_s32(v126, 0);
        v299 = v66;
        v298 = v64;
        *&v64 = *&v64 - (a8 + 0.0);
        v296 = v64;
        v295 = xmmword_23AA11C20;
        v285 = v41;
        do
        {
          if (v289)
          {
            v129 = MEMORY[0x23EE90360](v125, v288);
            v130 = __OFADD__(v125++, 1);
            if (v130)
            {
              goto LABEL_235;
            }
          }

          else
          {
            if (v125 >= *(v283 + 16))
            {
              goto LABEL_241;
            }

            v130 = __OFADD__(v125++, 1);
            if (v130)
            {
              goto LABEL_235;
            }
          }

          *&v292 = v129;
          v131 = *(v129 + 24);
          if (v131 >> 62)
          {
            v43 = sub_23AA0D7F4();
            if (v43)
            {
LABEL_89:
              if (v43 >= 1)
              {
                *&v291 = v125;
                v301.i64[0] = v131 & 0xC000000000000001;

                v132 = 0;
                v300.i64[0] = v131;
                while (1)
                {
                  if (v301.i64[0])
                  {
                    v133 = MEMORY[0x23EE90360](v132, v131);
                  }

                  else
                  {
                    v133 = *(v131 + 8 * v132 + 32);
                  }

                  if (vabds_f32(COERCE_FLOAT(HIDWORD(*(v133 + 16))), v127) >= 0.0001 || vabds_f32(*(v133 + 28), v127) >= 0.0001)
                  {
                    v134.i64[0] = *(v133 + 16);
                    v303 = v134;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
                    v135 = swift_allocObject();
                    v136 = v303;
                    v137 = vadd_f32(v128, *v303.i8);
                    *&v138 = v137;
                    *(&v138 + 1) = v299;
                    v135[1] = v295;
                    v135[2] = v138;
                    *&v138 = *(v133 + 24);
                    *&v139 = vadd_f32(v11, *&v138);
                    *(&v139 + 1) = v298;
                    *&v140 = vadd_f32(v11, *v136.i8);
                    *(&v140 + 1) = v298;
                    *v136.i8 = vsub_f32(*&v140, v137);
                    *&v138 = vadd_f32(v128, *&v138);
                    *v141.f32 = vsub_f32(*&v138, v137);
                    v135[4] = v139;
                    v135[5] = v140;
                    v141.i32[2] = v297;
                    v135[3] = v138;
                    v136.i32[2] = v296;
                    v142 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL), vnegq_f32(v141)), v136, vextq_s8(vuzp1q_s32(v141, v141), v141, 0xCuLL));
                    v143 = vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL);
                    v144 = vmulq_f32(v142, v142);
                    *&v139 = v144.f32[1] + (v144.f32[2] + v144.f32[0]);
                    *v144.f32 = vrsqrte_f32(v139);
                    *v144.f32 = vmul_f32(*v144.f32, vrsqrts_f32(v139, vmul_f32(*v144.f32, *v144.f32)));
                    v145 = vmulq_n_f32(v143, vmul_f32(*v144.f32, vrsqrts_f32(v139, vmul_f32(*v144.f32, *v144.f32))).f32[0]);
                    v145.i32[3] = v302.i32[3];
                    v303 = v145;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
                    v146 = sub_23AA0D324();
                    *(v146 + 16) = 4;
                    v147 = v303;
                    *(v146 + 32) = v303;
                    *(v146 + 48) = v147;
                    *(v146 + 64) = v147;
                    *(v146 + 80) = v147;
                    v304 = v42;
                    sub_23A975E54(0, 6, 0);
                    v148 = v309;
                    v149 = *(v309 + 16);
                    if (HIDWORD(v149))
                    {
                      goto LABEL_143;
                    }

                    a2 = (dword_284D7FD00 + v149);
                    if (__CFADD__(dword_284D7FD00, v149))
                    {
                      goto LABEL_144;
                    }

                    v150 = v304;
                    v152 = *(v304 + 16);
                    v151 = *(v304 + 24);
                    v153 = v152 + 1;
                    if (v152 >= v151 >> 1)
                    {
                      sub_23A975E54((v151 > 1), v152 + 1, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v153;
                    *(v150 + 4 * v152 + 32) = a2;
                    v154 = *(v148 + 16);
                    if (HIDWORD(v154))
                    {
                      goto LABEL_143;
                    }

                    a2 = (dword_284D7FD04 + v154);
                    if (__CFADD__(dword_284D7FD04, v154))
                    {
                      goto LABEL_144;
                    }

                    v304 = v150;
                    v155 = *(v150 + 24);
                    v156 = v152 + 2;
                    if (v153 >= v155 >> 1)
                    {
                      sub_23A975E54((v155 > 1), v156, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v156;
                    *(v150 + 4 * v153 + 32) = a2;
                    v157 = *(v148 + 16);
                    if (HIDWORD(v157))
                    {
                      goto LABEL_143;
                    }

                    a2 = (dword_284D7FD08 + v157);
                    if (__CFADD__(dword_284D7FD08, v157))
                    {
                      goto LABEL_144;
                    }

                    v304 = v150;
                    v159 = *(v150 + 16);
                    v158 = *(v150 + 24);
                    v160 = v159 + 1;
                    if (v159 >= v158 >> 1)
                    {
                      sub_23A975E54((v158 > 1), v159 + 1, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v160;
                    *(v150 + 4 * v159 + 32) = a2;
                    v161 = *(v148 + 16);
                    if (HIDWORD(v161))
                    {
                      goto LABEL_143;
                    }

                    a2 = (dword_284D7FD0C + v161);
                    if (__CFADD__(dword_284D7FD0C, v161))
                    {
                      goto LABEL_144;
                    }

                    v304 = v150;
                    v162 = *(v150 + 24);
                    v163 = v159 + 2;
                    if (v160 >= v162 >> 1)
                    {
                      sub_23A975E54((v162 > 1), v163, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v163;
                    *(v150 + 4 * v160 + 32) = a2;
                    v164 = *(v148 + 16);
                    if (HIDWORD(v164))
                    {
                      goto LABEL_143;
                    }

                    a2 = (dword_284D7FD10 + v164);
                    if (__CFADD__(dword_284D7FD10, v164))
                    {
                      goto LABEL_144;
                    }

                    v304 = v150;
                    v166 = *(v150 + 16);
                    v165 = *(v150 + 24);
                    v167 = v166 + 1;
                    if (v166 >= v165 >> 1)
                    {
                      sub_23A975E54((v165 > 1), v166 + 1, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v167;
                    *(v150 + 4 * v166 + 32) = a2;
                    v168 = *(v148 + 16);
                    if (HIDWORD(v168))
                    {
LABEL_143:
                      __break(1u);
LABEL_144:
                      __break(1u);
LABEL_145:

                      goto LABEL_147;
                    }

                    v169 = dword_284D7FD14 + v168;
                    if (__CFADD__(dword_284D7FD14, v168))
                    {
                      goto LABEL_144;
                    }

                    v304 = v150;
                    v170 = *(v150 + 24);
                    v171 = v166 + 2;
                    if (v167 >= v170 >> 1)
                    {
                      sub_23A975E54((v170 > 1), v171, 1);
                      v150 = v304;
                    }

                    *(v150 + 16) = v171;
                    *(v150 + 4 * v167 + 32) = v169;
                    sub_23A911A8C(v150);
                    sub_23A9119A0(v135);
                    sub_23A9119A0(v146);
                    v302 = v303;
                    v42 = MEMORY[0x277D84F90];
                    v131 = v300.i64[0];
                  }

                  ++v132;

                  if (v43 == v132)
                  {

                    v44 = v293;
                    v41 = v285;
                    v125 = v291;
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_236;
            }
          }

          else
          {
            v43 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v43)
            {
              goto LABEL_89;
            }
          }

LABEL_80:
          v43 = v294;
          v124 = v290;
        }

        while (v125 != v41);
      }

      sub_23A8D6CA0(v277, v124);
      v172 = *(v281 + 48);
      v281 += 48;
      if (v172(v124, 1, v279) == 1)
      {
        sub_23A8D6D10(v124);
      }

      else
      {
        v302.i64[0] = v172;
        sub_23A8D6D78(v124, v278);
        v173 = *(v280 + 16);
        v174 = *(v173 + 16);
        v175 = MEMORY[0x277D84F90];
        if (v174)
        {
          v304 = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v174, 0);
          v175 = v304;
          v177 = (v173 + 32);
          v178 = *(v304 + 16);
          do
          {
            v176.i64[0] = *v177;
            v304 = v175;
            v179 = *(v175 + 24);
            if (v178 >= v179 >> 1)
            {
              v303 = v176;
              sub_23A975DF0((v179 > 1), v178 + 1, 1);
              v176 = v303;
              v175 = v304;
            }

            *(v175 + 16) = v178 + 1;
            *(v175 + 4 * v178 + 32) = v176.i32[0];
            ++v177;
            ++v178;
            --v174;
          }

          while (v174);
        }

        v180 = sub_23A8EDE0C(v175);

        if ((v180 & 0x100000000) != 0)
        {
          v127 = -0.5 * v286.n128_f32[0];
        }

        else
        {
          v127 = *&v180;
        }

        v181 = *(v280 + 16);
        v182 = *(v181 + 16);
        if (v182)
        {

          v132 = MEMORY[0x277D84F90];
          v184 = 32;
          do
          {
            v183.i64[0] = *(v181 + v184);
            if (vabds_f32(*v183.i32, v127) < 0.0001)
            {
              v303 = v183;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v304 = v132;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_23A975EA4(0, *(v132 + 16) + 1, 1);
                v132 = v304;
              }

              v186 = *(v132 + 16);
              v185 = *(v132 + 24);
              v187 = v303.i64[0];
              if (v186 >= v185 >> 1)
              {
                sub_23A975EA4((v185 > 1), v186 + 1, 1);
                v187 = v303.i64[0];
                v132 = v304;
              }

              *(v132 + 16) = v186 + 1;
              *(v132 + 8 * v186 + 32) = v187;
            }

            v184 += 8;
            --v182;
          }

          while (v182);
          goto LABEL_145;
        }

        v132 = MEMORY[0x277D84F90];
LABEL_147:
        v189 = *(v132 + 16);
        v190 = MEMORY[0x277D84F90];
        if (v189)
        {
          v304 = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v189, 0);
          v192 = v304;
          v193 = (v132 + 32);
          v194 = *(v304 + 16);
          v195 = v189;
          do
          {
            v191.i64[0] = *v193;
            v304 = v192;
            v196 = *(v192 + 24);
            if (v194 >= v196 >> 1)
            {
              v303 = v191;
              sub_23A975DF0((v196 > 1), v194 + 1, 1);
              v191 = v303;
              v192 = v304;
            }

            *(v192 + 16) = v194 + 1;
            *(v192 + 4 * v194 + 32) = v191.i32[1];
            ++v193;
            ++v194;
            --v195;
          }

          while (v195);
        }

        else
        {
          v192 = MEMORY[0x277D84F90];
        }

        v197 = sub_23A8EDE0C(v192);

        v198 = v286.n128_f32[1];
        v199 = vmuls_lane_f32(-0.5, v286.n128_u64[0], 1);
        if ((v197 & 0x100000000) != 0)
        {
          v11.f32[0] = v199;
        }

        else
        {
          v11.f32[0] = *&v197;
        }

        if (v189)
        {
          v304 = v190;
          sub_23A975DF0(0, v189, 0);
          v201 = v304;
          v202 = *(v304 + 16);
          v203 = 32;
          do
          {
            v200.i64[0] = *(v132 + v203);
            v304 = v201;
            v204 = *(v201 + 24);
            if (v202 >= v204 >> 1)
            {
              v303 = v200;
              sub_23A975DF0((v204 > 1), v202 + 1, 1);
              v200 = v303;
              v201 = v304;
            }

            *(v201 + 16) = v202 + 1;
            *(v201 + 4 * v202 + 32) = v200.i32[1];
            v203 += 8;
            ++v202;
            --v189;
          }

          while (v189);
        }

        else
        {

          v201 = MEMORY[0x277D84F90];
        }

        v205 = sub_23A8EDE64(v201);

        v210 = *&v205;
        if ((v205 & 0x100000000) != 0)
        {
          v210 = v198 * 0.5;
        }

        v211 = sub_23A8F76CC(v278, a8 > 0.0, v11.f32[0], v210, COERCE_UNSIGNED_INT(v127 - COERCE_FLOAT(*v278)), v206, v207, v208, v209);
        v43 = v294;
        if (v211)
        {
          v44 = v211;
          v212 = v211[4];
          v41 = *(v212 + 16);
          v42 = MEMORY[0x277D84F90];
          if (v41)
          {
            v304 = MEMORY[0x277D84F90];

            v43 = &v304;
            sub_23A975E54(0, v41, 0);
            v42 = v304;
            v213 = 32;
            v214 = v309;
            while (1)
            {
              v215 = *(v214 + 16);
              if (HIDWORD(v215))
              {
                goto LABEL_237;
              }

              v216 = *(v212 + v213);
              a2 = (v216 + v215);
              if (__CFADD__(v216, v215))
              {
                goto LABEL_238;
              }

              v304 = v42;
              v218 = *(v42 + 16);
              v217 = *(v42 + 24);
              if (v218 >= v217 >> 1)
              {
                v43 = &v304;
                sub_23A975E54((v217 > 1), v218 + 1, 1);
                v42 = v304;
              }

              *(v42 + 16) = v218 + 1;
              *(v42 + 4 * v218 + 32) = a2;
              v213 += 4;
              if (!--v41)
              {

                break;
              }
            }
          }

          sub_23A911A8C(v42);

          sub_23A9119A0(v219);

          sub_23A9119A0(v220);

          v43 = v294;
        }

        sub_23A8D6DDC(v278);
        v44 = v293;
        v172 = v302.i64[0];
      }

      sub_23A8D6CA0(v276, v43);
      if (v172(v43, 1, v279) == 1)
      {

        sub_23A8D6D10(v43);
LABEL_227:

        v273 = v308;
        v272 = v309;
        v274 = v307;
        type metadata accessor for RoomCaptureMesh();
        v275 = swift_allocObject();
        v275[2] = v272;
        v275[3] = v274;
        v275[4] = v273;
        return;
      }

      sub_23A8D6D78(v43, v44);

      v221 = *(v280 + 16);
      v222 = *(v221 + 16);
      v223 = MEMORY[0x277D84F90];
      if (v222)
      {
        v304 = MEMORY[0x277D84F90];
        sub_23A975DF0(0, v222, 0);
        v223 = v304;
        v225 = (v221 + 32);
        v226 = *(v304 + 16);
        do
        {
          v224.i64[0] = *v225;
          v304 = v223;
          v227 = *(v223 + 24);
          if (v226 >= v227 >> 1)
          {
            v303 = v224;
            sub_23A975DF0((v227 > 1), v226 + 1, 1);
            v224 = v303;
            v223 = v304;
          }

          *(v223 + 16) = v226 + 1;
          *(v223 + 4 * v226 + 32) = v224.i32[0];
          ++v225;
          ++v226;
          --v222;
        }

        while (v222);
      }

      v228 = sub_23A8EDE64(v223);

      if ((v228 & 0x100000000) != 0)
      {
        v229 = 0.5 * v286.n128_f32[0];
      }

      else
      {
        v229 = *&v228;
      }

      v230 = *(v280 + 16);
      v231 = *(v230 + 16);
      if (v231)
      {

        v233 = MEMORY[0x277D84F90];
        v234 = 32;
        do
        {
          v232.i64[0] = *(v230 + v234);
          if (vabds_f32(*v232.i32, v229) < 0.0001)
          {
            v303 = v232;
            v238 = swift_isUniquelyReferenced_nonNull_native();
            v304 = v233;
            if ((v238 & 1) == 0)
            {
              sub_23A975EA4(0, v233[2] + 1, 1);
              v233 = v304;
            }

            v236 = v233[2];
            v235 = v233[3];
            v237 = v303.i64[0];
            if (v236 >= v235 >> 1)
            {
              sub_23A975EA4((v235 > 1), v236 + 1, 1);
              v237 = v303.i64[0];
              v233 = v304;
            }

            v233[2] = v236 + 1;
            v233[v236 + 4] = v237;
          }

          v234 += 8;
          --v231;
        }

        while (v231);
      }

      else
      {
        v233 = MEMORY[0x277D84F90];
      }

      v239 = v233[2];
      v240 = MEMORY[0x277D84F90];
      if (v239)
      {
        v304 = MEMORY[0x277D84F90];
        sub_23A975DF0(0, v239, 0);
        v242 = v304;
        v243 = v233 + 4;
        v244 = *(v304 + 16);
        v245 = v239;
        do
        {
          v241.i64[0] = *v243;
          v304 = v242;
          v246 = *(v242 + 24);
          if (v244 >= v246 >> 1)
          {
            v303 = v241;
            sub_23A975DF0((v246 > 1), v244 + 1, 1);
            v241 = v303;
            v242 = v304;
          }

          *(v242 + 16) = v244 + 1;
          *(v242 + 4 * v244 + 32) = v241.i32[1];
          ++v243;
          ++v244;
          --v245;
        }

        while (v245);
      }

      else
      {
        v242 = MEMORY[0x277D84F90];
      }

      v247 = sub_23A8EDE0C(v242);

      v248 = v286.n128_f32[1];
      v249 = vmuls_lane_f32(-0.5, v286.n128_u64[0], 1);
      if ((v247 & 0x100000000) != 0)
      {
        v11.f32[0] = v249;
      }

      else
      {
        v11.f32[0] = *&v247;
      }

      if (v239)
      {
        v304 = v240;
        sub_23A975DF0(0, v239, 0);
        v251 = v304;
        v252 = *(v304 + 16);
        v253 = 4;
        do
        {
          v250.i64[0] = v233[v253];
          v304 = v251;
          v254 = *(v251 + 24);
          if (v252 >= v254 >> 1)
          {
            v303 = v250;
            sub_23A975DF0((v254 > 1), v252 + 1, 1);
            v250 = v303;
            v251 = v304;
          }

          *(v251 + 16) = v252 + 1;
          *(v251 + 4 * v252 + 32) = v250.i32[1];
          ++v253;
          ++v252;
          --v239;
        }

        while (v239);
      }

      else
      {

        v251 = MEMORY[0x277D84F90];
      }

      v255 = sub_23A8EDE64(v251);

      v260 = *&v255;
      if ((v255 & 0x100000000) != 0)
      {
        v260 = v248 * 0.5;
      }

      v261 = v293;
      v262 = sub_23A8F76CC(v293, a8 > 0.0, v11.f32[0], v260, COERCE_UNSIGNED_INT(v229 - COERCE_FLOAT(*v293)), v256, v257, v258, v259);
      if (!v262)
      {
        sub_23A8D6DDC(v261);

        goto LABEL_227;
      }

      v44 = v262;
      v263 = v262[4];
      v41 = *(v263 + 16);
      v42 = MEMORY[0x277D84F90];
      if (!v41)
      {
LABEL_226:
        sub_23A911A8C(v42);

        sub_23A9119A0(v270);

        sub_23A9119A0(v271);

        sub_23A8D6DDC(v293);
        goto LABEL_227;
      }

      v304 = MEMORY[0x277D84F90];

      v43 = &v304;
      sub_23A975E54(0, v41, 0);
      v42 = v304;
      v264 = 32;
      v265 = v309;
      while (1)
      {
        v266 = *(v265 + 16);
        if (HIDWORD(v266))
        {
          break;
        }

        v267 = *(v263 + v264);
        v268 = v267 + v266;
        if (__CFADD__(v267, v266))
        {
          goto LABEL_240;
        }

        v304 = v42;
        a2 = *(v42 + 16);
        v269 = *(v42 + 24);
        if (a2 >= v269 >> 1)
        {
          v43 = &v304;
          sub_23A975E54((v269 > 1), a2 + 1, 1);
          v42 = v304;
        }

        *(v42 + 16) = a2 + 1;
        *(v42 + 4 * a2 + 32) = v268;
        v264 += 4;
        if (!--v41)
        {

          goto LABEL_226;
        }
      }

LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      v68 = sub_23AA0D7F4();
      if (!v68)
      {
        continue;
      }

      break;
    }

LABEL_27:
    if (v68 < 1)
    {
      __break(1u);
      goto LABEL_246;
    }

    v289 = a2;
    v301.i64[0] = v41 & 0xC000000000000001;
    v69 = v286;
    v70 = vmuls_lane_f32(-0.5, v286.n128_u64[0], 1);
    DWORD1(v64) = 0;
    v69.n128_f32[0] = a8 * 0.0;
    v303 = v69;
    v69.n128_f32[0] = a8 + 0.0;
    *&v65 = v11.f32[0] * 0.0;
    v297 = v65;
    *&v64 = 0.0 - v11.f32[0];
    v299 = v64;
    *&v64 = (0.0 - v11.f32[0]) - (a8 + 0.0);
    v298 = v64;
    v300 = v69;
    *&v64 = v69.n128_f32[0] - v69.n128_f32[0];
    v292 = v64;

    v71 = 0;
    v72 = vdup_lane_s32(*v303.i8, 0);
    v73 = vdup_lane_s32(*&v297, 0);
    v297 = xmmword_23AA11C20;
    v291 = xmmword_23AA12200;
    *&v296 = v68;
    while (1)
    {
      if (v301.i64[0])
      {
        a2 = MEMORY[0x23EE90360](v71, v41);
        if (v302.i8[0])
        {
          goto LABEL_35;
        }
      }

      else
      {
        a2 = *(v41 + 8 * v71 + 32);

        if (v302.i8[0])
        {
LABEL_35:
          if (vabds_f32(*(a2 + 20), v70) < 0.0001 && vabds_f32(*(a2 + 28), v70) < 0.0001)
          {
            goto LABEL_30;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v74 = swift_allocObject();
      v75.i32[3] = HIDWORD(v297);
      v74[1] = v297;
      v82.i64[0] = *(a2 + 24);
      *v75.i8 = vadd_f32(v72, *v82.i8);
      *&v76 = v75.i64[0];
      *(&v76 + 1) = v300.u32[0];
      v74[2] = v76;
      v77 = *(a2 + 16);
      v78 = vadd_f32(v72, v77);
      *&v79 = v78;
      *(&v79 + 1) = DWORD2(v76);
      *&v80 = vadd_f32(v73, v77);
      *(&v80 + 1) = v299;
      *&v81 = vadd_f32(v73, *v82.i8);
      *v82.i8 = vsub_f32(*&v81, *v75.i8);
      DWORD2(v81) = v299;
      v74[3] = v79;
      v74[4] = v80;
      *(&v81 + 1) = DWORD2(v81);
      v74[5] = v81;
      v82.i32[2] = v298;
      v83 = vmulq_f32(v82, v82);
      if ((v83.f32[2] + vaddv_f32(*v83.f32)) >= 1.4211e-14)
      {
        v82.i32[3] = 0;
        *v75.i8 = vsub_f32(v78, *v75.i8);
        v75.i32[2] = v292;
        v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), vnegq_f32(v75)), v82, vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL));
        v85 = vmulq_f32(v84, v84);
        *&v86 = v85.f32[1] + (v85.f32[2] + v85.f32[0]);
        v87 = vrsqrte_f32(v86);
        v88 = vmul_f32(v87, vrsqrts_f32(v86, vmul_f32(v87, v87)));
        v89 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vmul_f32(v88, vrsqrts_f32(v86, vmul_f32(v88, v88))).f32[0]);
        v89.i32[3] = HIDWORD(v295);
        v303 = v89;
        v295 = v89;
      }

      else
      {
        v303 = v291;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v90 = sub_23AA0D324();
      *(v90 + 16) = 4;
      v91 = v303;
      *(v90 + 32) = v303;
      *(v90 + 48) = v91;
      *(v90 + 64) = v91;
      *(v90 + 80) = v91;
      v304 = v42;
      v43 = &v304;
      sub_23A975E54(0, 6, 0);
      v44 = v309;
      v92 = *(v309 + 16);
      if (HIDWORD(v92))
      {
        goto LABEL_229;
      }

      v42 = (dword_284D7FCC8 + v92);
      if (__CFADD__(dword_284D7FCC8, v92))
      {
        goto LABEL_230;
      }

      v93 = v304;
      v95 = *(v304 + 16);
      v94 = *(v304 + 24);
      v96 = v95 + 1;
      if (v95 >= v94 >> 1)
      {
        sub_23A975E54((v94 > 1), v95 + 1, 1);
        v93 = v304;
      }

      *(v93 + 16) = v96;
      *(v93 + 4 * v95 + 32) = v42;
      v97 = *(v44 + 16);
      if (HIDWORD(v97))
      {
        goto LABEL_229;
      }

      v42 = (dword_284D7FCCC + v97);
      if (__CFADD__(dword_284D7FCCC, v97))
      {
        goto LABEL_230;
      }

      v304 = v93;
      v98 = *(v93 + 24);
      v99 = v95 + 2;
      if (v96 >= v98 >> 1)
      {
        sub_23A975E54((v98 > 1), v99, 1);
        v93 = v304;
      }

      *(v93 + 16) = v99;
      *(v93 + 4 * v96 + 32) = v42;
      v100 = *(v44 + 16);
      if (HIDWORD(v100))
      {
        goto LABEL_229;
      }

      v42 = (dword_284D7FCD0 + v100);
      if (__CFADD__(dword_284D7FCD0, v100))
      {
        goto LABEL_230;
      }

      v304 = v93;
      v102 = *(v93 + 16);
      v101 = *(v93 + 24);
      v103 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        sub_23A975E54((v101 > 1), v102 + 1, 1);
        v93 = v304;
      }

      *(v93 + 16) = v103;
      *(v93 + 4 * v102 + 32) = v42;
      v104 = *(v44 + 16);
      if (HIDWORD(v104))
      {
        goto LABEL_229;
      }

      v42 = (dword_284D7FCD4 + v104);
      if (__CFADD__(dword_284D7FCD4, v104))
      {
        goto LABEL_230;
      }

      v304 = v93;
      v105 = *(v93 + 24);
      v106 = v102 + 2;
      if (v103 >= v105 >> 1)
      {
        sub_23A975E54((v105 > 1), v106, 1);
        v93 = v304;
      }

      *(v93 + 16) = v106;
      *(v93 + 4 * v103 + 32) = v42;
      v107 = *(v44 + 16);
      if (HIDWORD(v107))
      {
        goto LABEL_229;
      }

      v42 = (dword_284D7FCD8 + v107);
      if (__CFADD__(dword_284D7FCD8, v107))
      {
        goto LABEL_230;
      }

      v304 = v93;
      v109 = *(v93 + 16);
      v108 = *(v93 + 24);
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        sub_23A975E54((v108 > 1), v109 + 1, 1);
        v93 = v304;
      }

      *(v93 + 16) = v110;
      *(v93 + 4 * v109 + 32) = v42;
      v111 = *(v44 + 16);
      if (HIDWORD(v111))
      {
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      v44 = (dword_284D7FCDC + v111);
      if (__CFADD__(dword_284D7FCDC, v111))
      {
        goto LABEL_230;
      }

      v304 = v93;
      v112 = *(v93 + 24);
      v113 = v109 + 2;
      if (v110 >= v112 >> 1)
      {
        sub_23A975E54((v112 > 1), v113, 1);
        v93 = v304;
      }

      *(v93 + 16) = v113;
      *(v93 + 4 * v110 + 32) = v44;
      sub_23A911A8C(v93);
      sub_23A9119A0(v74);
      sub_23A9119A0(v90);
      v44 = v293;
      v43 = v294;
      v42 = MEMORY[0x277D84F90];
      v68 = v296;
LABEL_30:
      ++v71;

      if (v68 == v71)
      {

        a2 = v289;
        goto LABEL_65;
      }
    }
  }

LABEL_246:
  __break(1u);
}

uint64_t sub_23A8F1F50(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_23A97E578();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_23A8F1FF8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23A8F1FF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23AA0DBA4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for OpeningElement();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v16[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v5;
      sub_23A8F2140(v16, v17, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = -1;
    v9 = 1;
    v10 = *a1;
    do
    {
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v13;
        if (COERCE_FLOAT(*(v11 + 16)) >= COERCE_FLOAT(*(*v13 + 16)))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        *v13 = v11;
        v13[1] = v14;
        --v13;
      }

      while (!__CFADD__(v12++, 1));
      ++v9;
      v10 += 8;
      --v8;
    }

    while (v9 != v2);
  }

  return result;
}

uint64_t sub_23A8F2140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_23A977E20(v10);
      v10 = result;
    }

    v76 = *(v10 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v10[16 * v76];
        v78 = *&v10[16 * v76 + 24];
        sub_23A8F26A8((*a3 + 8 * v77), (*a3 + 8 * *&v10[16 * v76 + 16]), (*a3 + 8 * v78), v5);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v76 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v10[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_23A977D94(v76 - 1);
        v76 = *(v10 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = vcgt_f32(*(*(*a3 + 8 * v11) + 16), v12);
      v14 = v11 + 2;
      while (v7 != v14)
      {
        v15 = *(*(*a3 + 8 * v14) + 16);
        v16 = vmvn_s8(veor_s8(vcgt_f32(v12, v15), v13)).u8[0];
        ++v14;
        v12 = v15;
        if ((v16 & 1) == 0)
        {
          v9 = v14 - 1;
          if ((v13.i8[0] & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v17 = 8 * v9 - 8;
        v18 = 8 * v11;
        v19 = v9;
        v20 = v11;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v21 = *(v22 + v18);
            *(v22 + v18) = *(v22 + v17);
            *(v22 + v17) = v21;
          }

          ++v20;
          v17 -= 8;
          v18 += 8;
        }

        while (v20 < v19);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v31 = *(v10 + 3);
    v32 = v5 + 1;
    if (v5 >= v31 >> 1)
    {
      result = sub_23A938B2C((v31 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v32;
    v33 = &v10[16 * v5];
    *(v33 + 4) = v11;
    *(v33 + 5) = v9;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v10 + 4);
          v37 = *(v10 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v10[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v10[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v10[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v10[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v10[16 * v73 + 32];
        v5 = *&v10[16 * v35 + 40];
        sub_23A8F26A8((*a3 + 8 * v74), (*a3 + 8 * *&v10[16 * v35 + 32]), (*a3 + 8 * v5), v34);
        if (v4)
        {
        }

        if (v5 < v74)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v73 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v10[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v5;
        result = sub_23A977D94(v35);
        v32 = *(v10 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v10[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v10[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 8 * v9 - 8;
  v25 = v11 - v9;
LABEL_30:
  v26 = *(v23 + 8 * v9);
  v27 = v25;
  v28 = v24;
  while (1)
  {
    v29 = *v28;
    if (COERCE_FLOAT(*(v26 + 16)) >= COERCE_FLOAT(*(*v28 + 16)))
    {
LABEL_29:
      ++v9;
      v24 += 8;
      --v25;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    *v28 = v26;
    v28[1] = v29;
    --v28;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_23A8F26A8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (COERCE_FLOAT(*(*v6 + 16)) < COERCE_FLOAT(*(*v4 + 16)))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (COERCE_FLOAT(*(v21 + 16)) < COERCE_FLOAT(*(*v17 + 16)))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t sub_23A8F2904(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23AA0D7F4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A8F29A8(float32x4_t a1, __n128 a2)
{
  v2 = 0.5 * a1.f32[0];
  v3 = vmuls_lane_f32(0.5, *a1.f32, 1);
  v4 = vmuls_lane_f32(0.5, a1, 2);
  v33 = COERCE_UNSIGNED_INT(a2.n128_f32[0] - v2);
  v5 = v33;
  v27 = a2.n128_f32[1] - v3;
  v5.n128_f32[1] = a2.n128_f32[1] - v3;
  v31 = v5;
  v25 = a2.n128_f32[2] - v4;
  v5.n128_f32[2] = a2.n128_f32[2] - v4;
  *&v6 = v2 + a2.n128_f32[0];
  v37 = COERCE_UNSIGNED_INT(v2 + a2.n128_f32[0]);
  v23 = v3 + a2.n128_f32[1];
  *(&v6 + 1) = v3 + a2.n128_f32[1];
  v7 = v4 + a2.n128_f32[2];
  v35 = *&v6;
  v8 = *&v6;
  v24 = v7;
  v8.n128_f32[2] = v7;
  v39 = MEMORY[0x277D84F90];
  v29 = v5;
  v30 = v8;
  v9 = sub_23A931450(v5, v6);
  MEMORY[0x23EE8FD70](v9);
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v10 = sub_23A9314E0(v29.n128_f64[0], v30);
  MEMORY[0x23EE8FD70](v10);
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v11 = v31;
  v11.n128_f32[2] = v24;
  v32 = v11;
  v12 = v37;
  *(&v12 + 1) = v27;
  v13 = v12;
  *(&v13 + 2) = v25;
  v28 = v13;
  *(&v12 + 2) = v24;
  v38 = v12;
  type metadata accessor for RoomCaptureQuad();
  v14 = swift_allocObject();
  v14[1] = v32;
  v14[2] = v29;
  v14[3] = v28;
  v14[4] = v38;
  v14[5] = xmmword_23AA12210;
  MEMORY[0x23EE8FD70]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v16 = v33;
  v15 = v35;
  *(&v15 + 2) = v25;
  v36 = v15;
  v16.n128_f32[1] = v23;
  v17 = v16;
  v17.n128_f32[2] = v25;
  v26 = v17;
  v16.n128_f32[2] = v24;
  v34 = v16;
  v18 = swift_allocObject();
  v18[1] = v30;
  v18[2] = v36;
  v18[3] = v26;
  v18[4] = v34;
  v18[5] = xmmword_23AA12220;
  MEMORY[0x23EE8FD70]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v19 = swift_allocObject();
  v19[1] = v34;
  v19[2] = v26;
  v19[3] = v29;
  v19[4] = v32;
  v19[5] = xmmword_23AA12230;
  MEMORY[0x23EE8FD70]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v20 = swift_allocObject();
  v20[1] = v38;
  v20[2] = v28;
  v20[3] = v36;
  v20[4] = v30;
  v20[5] = xmmword_23AA12200;
  MEMORY[0x23EE8FD70]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v21 = sub_23A982850(v39);

  return v21;
}

uint64_t sub_23A8F2D70(float32x4_t *a1, __n128 a2, __n128 a3, float a4)
{
  v4 = a1[1].i64[0];
  if (v4)
  {
    v7 = sub_23A901794(a1, a2, a3);
    v150 = MEMORY[0x277D84F90];
    v10 = *(v7 + 2);
    v11 = vmul_f32(a3.n128_u64[0], 0x3F0000003F000000);
    v12 = "tion";
    v129 = v11;
    if (v10)
    {
      v103 = vmuls_lane_f32(0.5, a3, 2);
      v13 = v11.f32[1];
      v14 = (v7 + 48);
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = *v14[-2].i8;
        v17 = 0.5 * COERCE_FLOAT(*v14->i8);
        v108 = *v16.i32 - v17;
        *&v22 = *v16.i32 - v17;
        v115 = *v16.i32 + v17;
        *&v23 = *v16.i32 + v17;
        v18 = vmul_f32(vext_s8(*v14, *&vextq_s8(*v14->i8, *v14->i8, 8uLL), 4uLL), 0x3F0000003F000000);
        *v16.i8 = vext_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL), 4uLL);
        v8.n128_u64[0] = vsub_f32(*v16.i8, v18);
        v19 = v22;
        v19.n128_u32[1] = v8.n128_u32[0];
        v144 = v19;
        v19.n128_u32[2] = v8.n128_u32[1];
        v121 = v19;
        *&v9 = vadd_f32(*v16.i8, v18);
        v20 = v23;
        DWORD1(v20) = v9;
        v21 = v103;
        HIDWORD(v22) = v9;
        v135 = v22;
        v146 = v20;
        DWORD2(v20) = v8.n128_u32[1];
        v127 = v20;
        v145 = v8;
        HIDWORD(v23) = v8.n128_u32[0];
        v139 = v23;
        v131 = v9;
        if (fabsf(v8.n128_f32[1] + v103) < a4)
        {
          v24 = v22;
          DWORD2(v24) = v8.n128_u32[1];
          v97 = v24;
          v25 = v23;
          DWORD2(v25) = v8.n128_u32[1];
          v92 = v25;
          type metadata accessor for RoomCaptureQuad();
          v26 = swift_allocObject();
          v26[1] = v121;
          v26[2] = v97;
          v26[3] = v127;
          v26[4] = v92;
          v26[5] = xmmword_23AA12240;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
          v21 = v103;
          v9 = v131;
        }

        v27 = v146;
        DWORD2(v27) = DWORD1(v9);
        v147 = v27;
        v28 = v144;
        v28.n128_u32[2] = DWORD1(v9);
        v143 = v28;
        if (vabds_f32(*(&v9 + 1), v21) < a4)
        {
          v29 = v139;
          v29.n128_u32[2] = DWORD1(v9);
          v98 = v29;
          v30 = v135;
          DWORD2(v30) = DWORD1(v9);
          v93 = v30;
          type metadata accessor for RoomCaptureQuad();
          v31 = swift_allocObject();
          v31[1] = v143;
          v31[2] = v98;
          v31[3] = v147;
          v31[4] = v93;
          v31[5] = xmmword_23AA12250;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
          v9 = v131;
        }

        if (fabsf(v145.n128_f32[0] + v13) < a4)
        {
          v32 = v139;
          v33 = v139;
          v33.n128_u32[2] = v145.n128_u32[1];
          v32.n128_u32[2] = DWORD1(v9);
          v94 = v32;
          v99 = v33;
          type metadata accessor for RoomCaptureQuad();
          v34 = swift_allocObject();
          v34[1] = v143;
          v34[2] = v121;
          v34[3] = v99;
          v34[4] = v94;
          v34[5] = xmmword_23AA12210;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
          v9 = v131;
        }

        if (vabds_f32(*&v9, v13) < a4)
        {
          v35 = v135;
          v36 = v135;
          DWORD2(v36) = v145.n128_u32[1];
          DWORD2(v35) = DWORD1(v9);
          v95 = v35;
          v100 = v36;
          type metadata accessor for RoomCaptureQuad();
          v37 = swift_allocObject();
          v37[1] = v147;
          v37[2] = v127;
          v37[3] = v100;
          v37[4] = v95;
          v37[5] = xmmword_23AA12220;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
          v9 = v131;
        }

        v38 = v129.f32[0];
        if (fabsf(v108 + v129.f32[0]) < a4)
        {
          v39 = v135;
          v40 = v135;
          DWORD2(v40) = DWORD1(v9);
          v109 = v40;
          DWORD2(v39) = v145.n128_u32[1];
          v136 = v39;
          type metadata accessor for RoomCaptureQuad();
          v41 = swift_allocObject();
          v41[1] = v109;
          v41[2] = v136;
          v41[3] = v121;
          v41[4] = v143;
          v41[5] = xmmword_23AA12230;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
          v38 = v129.f32[0];
          v9 = v131;
        }

        if (vabds_f32(v115, v38) < a4)
        {
          v42 = v139;
          v43 = v139;
          v43.n128_u32[2] = DWORD1(v9);
          v143 = v43;
          v42.n128_u32[2] = v145.n128_u32[1];
          v140 = v42;
          type metadata accessor for RoomCaptureQuad();
          v44 = swift_allocObject();
          v44[1] = v143;
          v44[2] = v140;
          v44[3] = v127;
          v44[4] = v147;
          v44[5] = xmmword_23AA12200;
          MEMORY[0x23EE8FD70]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v150;
        }

        v14 += 4;
        --v10;
      }

      while (v10);

      v12 = "RoomCaptureMeshDimensionsRestriction" + 32;
      v45 = a3.n128_u64[0];
      v46 = v103;
    }

    else
    {

      v45 = a3.n128_u64[0];
      v46 = vmuls_lane_f32(0.5, a3, 2);
      v15 = MEMORY[0x277D84F90];
    }

    *v54.f32 = vmul_f32(v45, 0xBF000000BF000000);
    v48 = (a3.n128_f32[2] * -0.5) + a4;
    v49 = v46 - a4;
    v50 = v54.f32[1] + a4;
    *v51.f32 = v129;
    v52 = v54.f32[0] + a4;
    v53 = v129.f32[0] - a4;
    v54.i64[1] = COERCE_UNSIGNED_INT(a3.n128_f32[2] * -0.5);
    v51.i64[1] = LODWORD(v46);
    v55 = v129.f32[1] - a4;
    v128 = v54;
    v130 = v51;
    v56 = a1 + 3;
    v91 = *(v12 + 34);
    do
    {
      v57 = v56[-1];
      v58 = vmuls_lane_f32(0.5, *v56, 2);
      v59 = COERCE_FLOAT(v56[-1].i64[1]);
      v60 = v59 - v58;
      v61 = vmul_f32(*v56->f32, 0x3F0000003F000000);
      v62 = vadd_f32(*v57.f32, v61);
      v132 = vsub_f32(*v57.f32, v61);
      *v57.f32 = v132;
      v57.f32[2] = v59 - v58;
      v57.i32[3] = 0;
      v63 = vmaxnmq_f32(v57, v128);
      v141 = v63;
      v63.n128_u32[3] = v143.n128_u32[3];
      v143 = v63;
      v54.f32[0] = v59 + v58;
      v137 = v62;
      *v64.f32 = v62;
      v64.i64[1] = v54.u32[0];
      v65 = vminnmq_f32(v64, v130);
      v148 = v65;
      v65.i32[3] = v145.n128_i32[3];
      v145 = v65;
      if (v48 < v60)
      {
        v122 = v54;
        sub_23A931450(v63, *v65.i64);
        v110 = *(v66 + 48);
        v116 = *(v66 + 64);
        v101 = *(v66 + 16);
        v104 = *(v66 + 32);
        HIDWORD(v67) = 0;
        *&v67 = vsubq_f32(0, *(v66 + 80)).u64[0];
        *(&v67 + 2) = 0.0 - COERCE_FLOAT(*(v66 + 88));
        v96 = v67;
        type metadata accessor for RoomCaptureQuad();
        v68 = swift_allocObject();
        v68[1] = v101;
        v68[2] = v116;
        v68[3] = v110;
        v68[4] = v104;
        v68[5] = v96;

        MEMORY[0x23EE8FD70](v69);
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
        v54 = v122;
      }

      if (v54.f32[0] < v49)
      {
        sub_23A9314E0(v143.n128_f64[0], v145);
        v117 = *(v70 + 48);
        v123 = *(v70 + 64);
        v105 = *(v70 + 16);
        v111 = *(v70 + 32);
        HIDWORD(v71) = 0;
        *&v71 = vsubq_f32(0, *(v70 + 80)).u64[0];
        *(&v71 + 2) = 0.0 - COERCE_FLOAT(*(v70 + 88));
        v102 = v71;
        type metadata accessor for RoomCaptureQuad();
        v72 = swift_allocObject();
        v72[1] = v105;
        v72[2] = v123;
        v72[3] = v117;
        v72[4] = v111;
        v72[5] = v102;

        MEMORY[0x23EE8FD70](v73);
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
      }

      if (v50 < v132.f32[1])
      {
        v74 = v141;
        v75 = v141;
        v75.n128_u32[3] = 0;
        v124 = v75;
        v76 = v75;
        v76.n128_u32[2] = v148.u32[2];
        v118 = v76;
        v76.n128_u64[0] = __PAIR64__(v141.n128_u32[1], v148.u32[0]);
        v74.n128_u32[0] = v148.i32[0];
        v74.n128_u32[3] = 0;
        v76.n128_u64[1] = v148.u32[2];
        v106 = v76;
        v112 = v74;
        type metadata accessor for RoomCaptureQuad();
        v77 = swift_allocObject();
        v77[1] = v118;
        v77[2] = v106;
        v77[3] = v112;
        v77[4] = v124;
        v77[5] = v91;
        MEMORY[0x23EE8FD70]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
      }

      if (v137.f32[1] < v55)
      {
        v78 = v148;
        v79 = v148;
        v79.i32[3] = 0;
        v119 = v79;
        v79.i32[2] = v141.n128_i32[2];
        v125 = v79;
        v79.i64[0] = __PAIR64__(v148.u32[1], v141.n128_u32[0]);
        v79.i64[1] = v141.n128_u32[2];
        v78.i32[0] = v141.n128_u32[0];
        v78.i32[3] = 0;
        v107 = v78;
        v113 = v79;
        type metadata accessor for RoomCaptureQuad();
        v80 = swift_allocObject();
        v80[1] = v119;
        v80[2] = v107;
        v80[3] = v113;
        v80[4] = v125;
        v80[5] = xmmword_23AA12210;
        MEMORY[0x23EE8FD70]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
      }

      if (v52 < v132.f32[0])
      {
        v81 = v141;
        *&v82 = __PAIR64__(v148.u32[1], v141.n128_u32[0]);
        v83 = v148;
        v83.i32[0] = v141.n128_u32[0];
        v83.i32[3] = 0;
        *(&v82 + 1) = v141.n128_u32[2];
        v133 = v82;
        v81.n128_u32[3] = 0;
        v120 = v81;
        v126 = v83;
        v81.n128_u32[2] = v148.u32[2];
        v114 = v81;
        type metadata accessor for RoomCaptureQuad();
        v84 = swift_allocObject();
        v84[1] = v126;
        v84[2] = v114;
        v84[3] = v120;
        v84[4] = v133;
        v84[5] = xmmword_23AA12200;
        MEMORY[0x23EE8FD70]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
      }

      if (v137.f32[0] < v53)
      {
        v85 = v148;
        *&v86 = __PAIR64__(v141.n128_u32[1], v148.u32[0]);
        *(&v86 + 1) = v148.u32[2];
        v138 = v86;
        v87 = v141;
        v87.n128_u32[0] = v148.i32[0];
        v87.n128_u32[3] = 0;
        v134 = v87;
        v85.i32[3] = 0;
        v149 = v85;
        v85.i32[2] = v141.n128_i32[2];
        v142 = v85;
        type metadata accessor for RoomCaptureQuad();
        v88 = swift_allocObject();
        v88[1] = v138;
        v88[2] = v149;
        v88[3] = v142;
        v88[4] = v134;
        v88[5] = xmmword_23AA12230;
        MEMORY[0x23EE8FD70]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v150;
      }

      v56 += 2;
      --v4;
    }

    while (v4);
    v89 = sub_23A982850(v15);

    return v89;
  }

  else
  {

    return sub_23A8F29A8(a3, a2);
  }
}

void sub_23A8F399C(unint64_t a1, float32x2_t a2)
{
  v3 = vmul_f32(a2, 0x3F0000003F000000);
  v4 = vmul_f32(vsub_f32(v3, v3), 0x3F0000003F000000);
  v5 = vadd_f32(v3, v3);
  v6 = sub_23A938E7C(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
LABEL_66:
    v6 = sub_23A938E7C((v7 > 1), v9, 1, v6);
  }

  *(v6 + 16) = v9;
  v10 = (v6 + 16 * v8);
  v10[4] = v4;
  v10[5] = v5;
  v74 = v6;
  if (a1 >> 62)
  {
    v9 = sub_23AA0D7F4();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  v11 = 0;
  v8 = a1 & 0xC000000000000001;
  v60 = a1 + 32;
  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v4.i32[0] = 0.5;
  v12 = MEMORY[0x277D84F90];
  v5 = 0x3F0000003F000000;
  v58 = v9;
  v59 = a1;
  v57 = a1 & 0xC000000000000001;
  while (1)
  {
LABEL_5:
    if (v8)
    {
      v13 = MEMORY[0x23EE90360](v11, a1);
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 >= *(v61 + 16))
      {
        goto LABEL_70;
      }

      v13 = *(v60 + 8 * v11);

      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }
    }

    v15 = v74;
    v16 = sub_23A97E780(v13[2], v13[4]);
    v18 = *(v15 + 16);
    if (v18)
    {
      break;
    }

    if (v11 == v9)
    {
      return;
    }
  }

  v72 = v16.f32[0] - (0.5 * v17.f32[0]);
  v73 = v16.f32[0] + (0.5 * v17.f32[0]);
  v19 = vmuls_lane_f32(0.5, v17, 1);
  v70 = v16.f32[1] - v19;
  v71 = v16.f32[1] + v19;

  a1 = 0;
  v20 = 0;
  v7 = v15 + 16 * v18;
  v21 = (v7 + 24);
  do
  {
    if (!a1)
    {
      v20 = *(v15 + 16);
    }

    v14 = __OFSUB__(v20--, 1);
    if (v14)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v7 = *(v15 + 16);
    if (v18 > v7)
    {
      goto LABEL_65;
    }

    v24 = v21[-1];
    v25 = 0.5 * COERCE_FLOAT(*v21);
    v26 = v24.f32[0] - v25;
    v27 = v24.f32[0] + v25;
    v28 = (v24.f32[0] - v25) < v73 && v72 < v27;
    v29 = vmuls_lane_f32(0.5, *v21, 1);
    v30 = v24.f32[1] - v29;
    v31 = v28 && v30 < v71;
    v32 = v24.f32[1] + v29;
    if (v31 && v70 < v32)
    {
      v34 = v12;
      v68 = v24.f32[1] + v29;
      v69 = v24.f32[0] + v25;
      v65 = v24.f32[0] - v25;
      v67 = v24.f32[1] - v29;
      if (v26 < v72)
      {
        v34 = sub_23A938E7C(0, 1, 1, v12);
        v8 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v8 >= v35 >> 1)
        {
          v34 = sub_23A938E7C((v35 > 1), v8 + 1, 1, v34);
        }

        v30 = v67;
        v32 = v68;
        v26 = v65;
        v36.f32[0] = v72 - v65;
        v36.f32[1] = v68 - v67;
        *(v34 + 2) = v8 + 1;
        v37 = &v34[16 * v8];
        v37[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v68), LODWORD(v72)), __PAIR64__(LODWORD(v67), LODWORD(v65))), 0x3F0000003F000000);
        v37[5] = v36;
        v27 = v69;
      }

      if (v30 < v70)
      {
        v38 = v72;
        if (v72 <= v26)
        {
          v38 = v26;
        }

        v63 = v38;
        v39 = v73;
        if (v27 < v73)
        {
          v39 = v27;
        }

        v62 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
        }

        v8 = *(v34 + 2);
        v40 = *(v34 + 3);
        v32 = v68;
        v27 = v69;
        v26 = v65;
        v41 = v67;
        if (v8 >= v40 >> 1)
        {
          v55 = sub_23A938E7C((v40 > 1), v8 + 1, 1, v34);
          v26 = v65;
          v41 = v67;
          v32 = v68;
          v27 = v69;
          v34 = v55;
        }

        v42.f32[0] = v62 - v63;
        v42.f32[1] = v70 - v41;
        *(v34 + 2) = v8 + 1;
        v43 = &v34[16 * v8];
        v43[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v70), LODWORD(v63)), __PAIR64__(LODWORD(v41), LODWORD(v62))), 0x3F0000003F000000);
        v43[5] = v42;
      }

      if (v71 < v32)
      {
        v44 = v72;
        if (v72 <= v26)
        {
          v44 = v26;
        }

        v66 = v44;
        v45 = v73;
        if (v27 < v73)
        {
          v45 = v27;
        }

        v64 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
        }

        v8 = *(v34 + 2);
        v46 = *(v34 + 3);
        v47 = v68;
        v27 = v69;
        if (v8 >= v46 >> 1)
        {
          v56 = sub_23A938E7C((v46 > 1), v8 + 1, 1, v34);
          v47 = v68;
          v27 = v69;
          v34 = v56;
        }

        v48.f32[0] = v64 - v66;
        v48.f32[1] = v47 - v71;
        *(v34 + 2) = v8 + 1;
        v49 = &v34[16 * v8];
        v49[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v71), LODWORD(v66)), __PAIR64__(LODWORD(v47), LODWORD(v64))), 0x3F0000003F000000);
        v49[5] = v48;
      }

      if (v73 < v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
        }

        v8 = *(v34 + 2);
        v50 = *(v34 + 3);
        v52 = v68;
        v51 = v69;
        v53 = v67;
        if (v8 >= v50 >> 1)
        {
          v54 = sub_23A938E7C((v50 > 1), v8 + 1, 1, v34);
          v53 = v67;
          v52 = v68;
          v51 = v69;
          v34 = v54;
        }

        v22.f32[0] = v51 - v73;
        v22.f32[1] = v52 - v53;
        *(v34 + 2) = v8 + 1;
        v23 = &v34[16 * v8];
        v23[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v52), LODWORD(v73)), __PAIR64__(LODWORD(v53), LODWORD(v51))), 0x3F0000003F000000);
        v23[5] = v22;
      }

      v9 = &v74;
      sub_23A985244(v20);
      sub_23A9460BC(v20, v20, v34);
    }

    v21 -= 2;
    ++a1;
    --v18;
  }

  while (v18);

  v9 = v58;
  a1 = v59;
  v8 = v57;
  if (v11 != v58)
  {
    goto LABEL_5;
  }
}

uint64_t sub_23A8F3F24(unint64_t a1, float32x2_t a2, float a3)
{
  sub_23A8F399C(a1, a2);
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v6 = v3[2];
  if (v6)
  {
    type metadata accessor for RoomCaptureQuad();
    v7 = v4 + 5;
    do
    {
      v8 = v7[-1];
      v9 = 0.5 * COERCE_FLOAT(*v7);
      v10 = vmuls_lane_f32(0.5, *v7, 1);
      v11 = v8.f32[1] - v10;
      v12 = v8.f32[1] + v10;
      v13 = COERCE_UNSIGNED_INT(v8.f32[0] - v9);
      v14 = v13;
      *(&v13 + 1) = v11;
      *(&v13 + 2) = a3;
      v22 = v13;
      *&v13 = v8.f32[0] + v9;
      v15 = COERCE_UNSIGNED_INT(v8.f32[0] + v9);
      *(&v15 + 1) = v11;
      *(&v15 + 2) = a3;
      *(&v13 + 1) = v12;
      *(&v13 + 1) = LODWORD(a3);
      v20 = v13;
      v21 = v15;
      *(&v14 + 1) = v12;
      *(&v14 + 2) = a3;
      v19 = v14;
      v16 = swift_allocObject();
      v16[1] = v22;
      v16[2] = v21;
      v16[3] = v20;
      v16[4] = v19;
      v16[5] = xmmword_23AA12250;
      MEMORY[0x23EE8FD70]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v7 += 2;
      --*&v6;
    }

    while (v6);
    v5 = v23;
  }

  return v5;
}

void sub_23A8F40A8(uint64_t a1, unint64_t a2, __n128 a3, float a4)
{
  v78 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  if (a2)
  {
    v5 = a3.n128_u64[0];
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = *(a1 + 20);
    v65 = *(a1 + 24);
    a3.n128_u32[0] = *(a1 + 28);
    v64 = a3;
    v9 = a2;
    v10 = v8 - v7;
    v11 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      v71 = cosf(v7 + (v10 * (v6 / v9)));
      v13 = sinf(v7 + (v10 * (v6 / v9)));
      v14 = *(v12 + 2);
      if (HIDWORD(v14))
      {
        break;
      }

      v67 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_23A9388A8(0, v14 + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      v18 = v16 >> 1;
      v19 = v17 + 1;
      if (v16 >> 1 <= v17)
      {
        v12 = sub_23A9388A8((v16 > 1), v17 + 1, 1, v12);
        v16 = *(v12 + 3);
        v18 = v16 >> 1;
      }

      *v15.i8 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v67), LODWORD(v71)), a4), v5);
      v20 = v15.u32[0];
      v21 = v15.u32[0];
      DWORD1(v21) = v65;
      DWORD2(v21) = v15.i32[1];
      *(v12 + 2) = v19;
      *&v12[16 * v17 + 32] = v21;
      v22 = v17 + 2;
      v72 = v15;
      if (v18 < v22)
      {
        v68 = v15.u32[0];
        v56 = sub_23A9388A8((v16 > 1), v22, 1, v12);
        v20 = v68;
        v15.i32[1] = v72.i32[1];
        v12 = v56;
      }

      DWORD1(v20) = v64.n128_u32[0];
      DWORD2(v20) = v15.i32[1];
      *(v12 + 2) = v22;
      *&v12[16 * v19 + 32] = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23A9388A8(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      v25 = v23 >> 1;
      v26 = v24 + 1;
      v27 = v72;
      if (v23 >> 1 <= v24)
      {
        v57 = sub_23A9388A8((v23 > 1), v24 + 1, 1, v11);
        v27 = v72;
        v11 = v57;
        v23 = *(v57 + 3);
        v25 = v23 >> 1;
      }

      *v27.i8 = vsub_f32(*v27.i8, v5);
      v28 = vmul_f32(*v27.i8, *v27.i8);
      v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
      v29 = vrsqrte_f32(v28.u32[0]);
      v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
      *v27.i8 = vsub_f32(0, vmul_n_f32(*v27.i8, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0]));
      v31 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v27, v27)), 0);
      *(v11 + 2) = v26;
      *&v11[16 * v24 + 32] = v31;
      v32 = v24 + 2;
      if (v25 < v32)
      {
        v75 = v31;
        v58 = sub_23A9388A8((v23 > 1), v32, 1, v11);
        v31 = v75;
        v11 = v58;
      }

      *(v11 + 2) = v32;
      *&v11[16 * v26 + 32] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23AA12260;
      *(inited + 32) = v14;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_34;
      }

      *(inited + 36) = v14 + 2;
      v34 = v14 + 3;
      if (v14 >= 0xFFFFFFFD)
      {
        goto LABEL_35;
      }

      v35 = v7 + (v10 * (++v6 / v9));
      *(inited + 40) = v34;
      *(inited + 44) = v14;
      *(inited + 48) = v34;
      *(inited + 52) = v14 + 1;
      sub_23A911A8C(inited);
      if (v35 == v8)
      {
        v73 = cosf(v35);
        v36 = sinf(v35);
        v38 = *(v12 + 2);
        v37 = *(v12 + 3);
        v39 = v37 >> 1;
        v40 = v38 + 1;
        if (v37 >> 1 <= v38)
        {
          v69 = v36;
          v59 = sub_23A9388A8((v37 > 1), v38 + 1, 1, v12);
          v36 = v69;
          v12 = v59;
          v37 = *(v59 + 3);
          v39 = v37 >> 1;
        }

        v41 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v36), LODWORD(v73)), a4), v5);
        v42 = v41.u32[0];
        v43 = v41.u32[0];
        DWORD1(v43) = v65;
        DWORD2(v43) = v41.i32[1];
        *(v12 + 2) = v40;
        *&v12[16 * v38 + 32] = v43;
        v44 = v38 + 2;
        if (v39 < v44)
        {
          v70 = v41.u32[0];
          v76 = v41;
          v60 = sub_23A9388A8((v37 > 1), v44, 1, v12);
          v42 = v70;
          v41 = v76;
          v12 = v60;
        }

        v45.i64[1] = v64.n128_i64[1];
        DWORD1(v42) = v64.n128_u32[0];
        DWORD2(v42) = v41.i32[1];
        *(v12 + 2) = v44;
        *&v12[16 * v40 + 32] = v42;
        v47 = *(v11 + 2);
        v46 = *(v11 + 3);
        v48 = v46 >> 1;
        v49 = v47 + 1;
        if (v46 >> 1 <= v47)
        {
          v77 = v41;
          v61 = sub_23A9388A8((v46 > 1), v47 + 1, 1, v11);
          v41 = v77;
          v11 = v61;
          v46 = *(v61 + 3);
          v48 = v46 >> 1;
        }

        *v45.i8 = vsub_f32(v41, v5);
        v50 = vmul_f32(*v45.i8, *v45.i8);
        v50.i32[0] = vadd_f32(v50, vdup_lane_s32(v50, 1)).u32[0];
        v51 = vrsqrte_f32(v50.u32[0]);
        v52 = vmul_f32(v51, vrsqrts_f32(v50.u32[0], vmul_f32(v51, v51)));
        *v45.i8 = vsub_f32(0, vmul_n_f32(*v45.i8, vmul_f32(v52, vrsqrts_f32(v50.u32[0], vmul_f32(v52, v52))).f32[0]));
        v53 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v45, v45)), 0);
        *(v11 + 2) = v49;
        *&v11[16 * v47 + 32] = v53;
        v54 = v47 + 2;
        if (v48 < v54)
        {
          v74 = v53;
          v55 = sub_23A9388A8((v46 > 1), v54, 1, v11);
          v53 = v74;
          v11 = v55;
        }

        *(v11 + 2) = v54;
        *&v11[16 * v49 + 32] = v53;
      }

      if (a2 == v6)
      {
        v62 = v78;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
LABEL_32:
  type metadata accessor for RoomCaptureMesh();
  v63 = swift_allocObject();
  v63[2] = v12;
  v63[3] = v11;
  v63[4] = v62;
}

void sub_23A8F4604(uint64_t a1, __n128 a2, float a3, float a4)
{
  v4 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (v5 >= v6)
  {
LABEL_34:
    type metadata accessor for RoomCaptureMesh();
    v64 = swift_allocObject();
    v64[2] = v8;
    v64[3] = v7;
    v64[4] = v4;
  }

  else
  {
    v10 = a2.n128_u64[0];
    v11 = 0;
    v66 = *(a1 + 24);
    a2.n128_u32[0] = *(a1 + 28);
    v65 = a2;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v11 * a4;
      v13 = v5 + v12;
      v14 = (v5 + v12) + a4;
      v15 = v14 >= v6 ? v6 : (v5 + v12) + a4;
      v72 = cosf(v5 + v12);
      v16 = sinf(v13);
      v17 = *(v8 + 2);
      if (HIDWORD(v17))
      {
        break;
      }

      v68 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_23A9388A8(0, v17 + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v21 = v19 >> 1;
      v22 = v20 + 1;
      if (v19 >> 1 <= v20)
      {
        v8 = sub_23A9388A8((v19 > 1), v20 + 1, 1, v8);
        v19 = *(v8 + 3);
        v21 = v19 >> 1;
      }

      *v18.i8 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v68), LODWORD(v72)), a3), v10);
      v23 = v18.u32[0];
      v24 = v18.u32[0];
      DWORD1(v24) = v66;
      DWORD2(v24) = v18.i32[1];
      *(v8 + 2) = v22;
      *&v8[16 * v20 + 32] = v24;
      v25 = v20 + 2;
      v73 = v18;
      if (v21 < v25)
      {
        v69 = v18.u32[0];
        v57 = sub_23A9388A8((v19 > 1), v25, 1, v8);
        v23 = v69;
        v18.i32[1] = v73.i32[1];
        v8 = v57;
      }

      DWORD1(v23) = v65.n128_u32[0];
      DWORD2(v23) = v18.i32[1];
      *(v8 + 2) = v25;
      *&v8[16 * v22 + 32] = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23A9388A8(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      v28 = v26 >> 1;
      v29 = v27 + 1;
      v30 = v73;
      if (v26 >> 1 <= v27)
      {
        v58 = sub_23A9388A8((v26 > 1), v27 + 1, 1, v7);
        v30 = v73;
        v7 = v58;
        v26 = *(v58 + 3);
        v28 = v26 >> 1;
      }

      *v30.i8 = vsub_f32(*v30.i8, v10);
      v31 = vmul_f32(*v30.i8, *v30.i8);
      v31.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
      v32 = vrsqrte_f32(v31.u32[0]);
      v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
      *v30.i8 = vsub_f32(0, vmul_n_f32(*v30.i8, vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33))).f32[0]));
      v34 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v30, v30)), 0);
      *(v7 + 2) = v29;
      *&v7[16 * v27 + 32] = v34;
      v35 = v27 + 2;
      if (v28 < v35)
      {
        v75 = v34;
        v59 = sub_23A9388A8((v26 > 1), v35, 1, v7);
        v34 = v75;
        v7 = v59;
      }

      *(v7 + 2) = v35;
      *&v7[16 * v29 + 32] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23AA12260;
      *(inited + 32) = v17;
      if (v17 >= 0xFFFFFFFE)
      {
        goto LABEL_36;
      }

      *(inited + 36) = v17 + 2;
      v37 = v17 + 3;
      if (v17 >= 0xFFFFFFFD)
      {
        goto LABEL_37;
      }

      *(inited + 40) = v37;
      *(inited + 44) = v17;
      *(inited + 48) = v37;
      *(inited + 52) = v17 + 1;
      sub_23A911A8C(inited);
      if (v15 == v6)
      {
        v74 = cosf(v15);
        v38 = sinf(v15);
        v40 = *(v8 + 2);
        v39 = *(v8 + 3);
        v41 = v39 >> 1;
        v42 = v40 + 1;
        if (v39 >> 1 <= v40)
        {
          v70 = v38;
          v60 = sub_23A9388A8((v39 > 1), v40 + 1, 1, v8);
          v38 = v70;
          v8 = v60;
          v39 = *(v60 + 3);
          v41 = v39 >> 1;
        }

        v43 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v38), LODWORD(v74)), a3), v10);
        v44 = v43.u32[0];
        v45 = v43.u32[0];
        DWORD1(v45) = v66;
        DWORD2(v45) = v43.i32[1];
        *(v8 + 2) = v42;
        *&v8[16 * v40 + 32] = v45;
        v46 = v40 + 2;
        if (v41 < v46)
        {
          v71 = v43.u32[0];
          v76 = v43;
          v61 = sub_23A9388A8((v39 > 1), v46, 1, v8);
          v44 = v71;
          v43 = v76;
          v8 = v61;
        }

        v47.i64[1] = v65.n128_i64[1];
        DWORD1(v44) = v65.n128_u32[0];
        DWORD2(v44) = v43.i32[1];
        *(v8 + 2) = v46;
        *&v8[16 * v42 + 32] = v44;
        v49 = *(v7 + 2);
        v48 = *(v7 + 3);
        v50 = v48 >> 1;
        v51 = v49 + 1;
        if (v48 >> 1 <= v49)
        {
          v77 = v43;
          v62 = sub_23A9388A8((v48 > 1), v49 + 1, 1, v7);
          v43 = v77;
          v7 = v62;
          v48 = *(v62 + 3);
          v50 = v48 >> 1;
        }

        *v47.i8 = vsub_f32(v43, v10);
        v52 = vmul_f32(*v47.i8, *v47.i8);
        v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
        v53 = vrsqrte_f32(v52.u32[0]);
        v54 = vmul_f32(v53, vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)));
        *v47.i8 = vsub_f32(0, vmul_n_f32(*v47.i8, vmul_f32(v54, vrsqrts_f32(v52.u32[0], vmul_f32(v54, v54))).f32[0]));
        v55 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v47, v47)), 0);
        *(v7 + 2) = v51;
        *&v7[16 * v49 + 32] = v55;
        v56 = v49 + 2;
        if (v50 < v56)
        {
          v78 = v55;
          v63 = sub_23A9388A8((v48 > 1), v56, 1, v7);
          v55 = v78;
          v7 = v63;
        }

        *(v7 + 2) = v56;
        *&v7[16 * v51 + 32] = v55;
      }

      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }

      ++v11;
      if (v14 >= v6)
      {
        v4 = v79;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }
}

void *sub_23A8F4B4C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, __n128 a5)
{
  v103 = a4;
  v100 = a3;
  v115 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v96 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  type metadata accessor for CapturedRoom.Surface.Curve(0);
  v13 = objc_opt_self();
  v14 = [v13 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v10, v7);
  v18 = v16;
  v19 = [v13 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v21 = v20;
  v17(v10, v7);
  v22 = vmul_n_f32(COERCE_FLOAT32X2_T(--0.0000305175998), v115.n128_f32[0]);
  v107 = type metadata accessor for CurvedElement();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *&v21 = v21;
  *(v23 + 20) = LODWORD(v21);
  *(v23 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11BB0;
  v96[1] = v23;
  *(inited + 32) = v23;
  if (a2 >> 62)
  {
    goto LABEL_97;
  }

  v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
LABEL_3:
    v102 = a2 & 0xC000000000000001;
    v98 = a2 & 0xFFFFFFFFFFFFFF8;
    v99 = a2;
    v97 = a2 + 32;

    v26 = 0;
    v101 = v25;
    while (1)
    {
      if (v102)
      {
        v28 = MEMORY[0x23EE90360](v26, v99);
        v29 = __OFADD__(v26, 1);
        v30 = v26 + 1;
        if (v29)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v26 >= *(v98 + 16))
        {
          goto LABEL_96;
        }

        v28 = *(v97 + 8 * v26);

        v29 = __OFADD__(v26, 1);
        v30 = v26 + 1;
        if (v29)
        {
          goto LABEL_95;
        }
      }

      v104 = v30;
      if (!(inited >> 62))
      {
        v31 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          break;
        }

        goto LABEL_4;
      }

      v31 = sub_23AA0D7F4();
      if (v31)
      {
        break;
      }

LABEL_4:
      v27 = MEMORY[0x277D84F90];
LABEL_5:

      inited = v27;
      v26 = v104;
      if (v104 == v101)
      {
        goto LABEL_99;
      }
    }

    v109 = inited;
    v108 = v28;
    v111 = v31;
    v32 = 0;
    if ((inited & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        v33 = MEMORY[0x23EE90360](v32, inited);
        v29 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v29)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          v25 = sub_23AA0D7F4();
          if (!v25)
          {
            goto LABEL_98;
          }

          goto LABEL_3;
        }

        v115.n128_u64[0] = v33;
        v35 = sub_23A8DF60C(v28);
        a2 = v35;
        v36 = v35 >> 62;
        v37 = v35 >> 62 ? sub_23AA0D7F4() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v38 = v27 >> 62;
        if (v27 >> 62)
        {
          v54 = sub_23AA0D7F4();
          v40 = v54 + v37;
          if (__OFADD__(v54, v37))
          {
            goto LABEL_84;
          }
        }

        else
        {
          v39 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v40 = v39 + v37;
          if (__OFADD__(v39, v37))
          {
            goto LABEL_84;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v38)
        {
          goto LABEL_28;
        }

LABEL_29:
        v27 = sub_23AA0D8D4();
        v41 = v27 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
        v114 = v34;
        v42 = *(v41 + 16);
        v43 = *(v41 + 24);
        if (v36)
        {
          v45 = v41;
          v46 = sub_23AA0D7F4();
          v41 = v45;
          v44 = v46;
          if (v46)
          {
LABEL_34:
            if (((v43 >> 1) - v42) < v37)
            {
              goto LABEL_86;
            }

            v47 = v41 + 8 * v42 + 32;
            v113 = v41;
            if (v36)
            {
              if (v44 < 1)
              {
                goto LABEL_92;
              }

              v110 = v37;
              v112 = v27;
              sub_23A8F5704();
              for (i = 0; i != v44; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED38, &unk_23AA122E0);
                v49 = sub_23A9DC308(v116, i, a2);
                v51 = *v50;

                (v49)(v116, 0);
                *(v47 + 8 * i) = v51;
              }

              swift_unknownObjectRelease();

              v27 = v112;
              inited = v109;
              v28 = v108;
              v31 = v111;
              v37 = v110;
            }

            else
            {
              swift_arrayInitWithCopy();

              swift_unknownObjectRelease();
            }

            v32 = v114;
            if (v37 > 0)
            {
              v52 = *(v113 + 16);
              v29 = __OFADD__(v52, v37);
              v53 = v52 + v37;
              if (v29)
              {
                goto LABEL_90;
              }

              *(v113 + 16) = v53;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v44 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44)
          {
            goto LABEL_34;
          }
        }

        swift_unknownObjectRelease();
        v32 = v114;
        if (v37 > 0)
        {
          goto LABEL_85;
        }

LABEL_17:
        if (v32 == v31)
        {
          goto LABEL_5;
        }
      }

      if (!v38)
      {
        v41 = v27 & 0xFFFFFFFFFFFFFF8;
        if (v40 <= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_28:
      sub_23AA0D7F4();
      goto LABEL_29;
    }

    v113 = inited & 0xFFFFFFFFFFFFFF8;
    v110 = inited + 32;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32 >= *(v113 + 16))
      {
        goto LABEL_87;
      }

      v56 = *(v110 + 8 * v32);

      v57 = sub_23A8DF60C(v28);
      v58 = v57;
      v59 = v57 >> 62;
      a2 = v57 >> 62 ? sub_23AA0D7F4() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v27 >> 62;
      if (v27 >> 62)
      {
        v75 = sub_23AA0D7F4();
        v62 = v75 + a2;
        if (__OFADD__(v75, a2))
        {
          goto LABEL_88;
        }
      }

      else
      {
        v61 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = v61 + a2;
        if (__OFADD__(v61, a2))
        {
          goto LABEL_88;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v114 = v56;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v60)
      {
        goto LABEL_61;
      }

LABEL_62:
      v27 = sub_23AA0D8D4();
      v64 = v27 & 0xFFFFFFFFFFFFFF8;
LABEL_63:
      v115.n128_u64[0] = a2;
      v65 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v59)
      {
        a2 = sub_23AA0D7F4();
        if (a2)
        {
LABEL_67:
          if (((v66 >> 1) - v65) < v115.n128_i64[0])
          {
            goto LABEL_91;
          }

          v67 = v64 + 8 * v65 + 32;
          if (v59)
          {
            if (a2 < 1)
            {
              goto LABEL_94;
            }

            v105 = v64;
            v106 = v32;
            v112 = v27;
            sub_23A8F5704();
            v69 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED38, &unk_23AA122E0);
              v70 = sub_23A9DC308(v116, v69, v58);
              v72 = *v71;

              (v70)(v116, 0);
              *(v67 + 8 * v69++) = v72;
            }

            while (a2 != v69);

            v27 = v112;
            inited = v109;
            v28 = v108;
            v32 = v106;
            v68 = v115.n128_u64[0];
            v64 = v105;
          }

          else
          {
            v68 = v115.n128_u64[0];
            swift_arrayInitWithCopy();
          }

          v55 = v111;
          if (v68 >= 1)
          {
            v73 = *(v64 + 16);
            v29 = __OFADD__(v73, v68);
            v74 = v73 + v68;
            if (v29)
            {
              goto LABEL_93;
            }

            *(v64 + 16) = v74;
          }

          goto LABEL_50;
        }
      }

      else
      {
        a2 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_67;
        }
      }

      v55 = v111;
      if (v115.n128_i64[0] > 0)
      {
        goto LABEL_89;
      }

LABEL_50:
      if (++v32 == v55)
      {
        goto LABEL_5;
      }
    }

    if (!v60)
    {
      v64 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v62 <= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

LABEL_61:
    sub_23AA0D7F4();
    goto LABEL_62;
  }

LABEL_98:

  v27 = inited;
LABEL_99:
  v116[0] = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v119 = MEMORY[0x277D84F90];
  if (v27 >> 62)
  {
    goto LABEL_125;
  }

  for (j = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23AA0D7F4())
  {
    v77 = 0;
    v115.n128_u64[0] = v27 & 0xC000000000000001;
    v113 = v27 & 0xFFFFFFFFFFFFFF8;
    v111 = v27 + 32;
    v78 = *&v100;
    v112 = v27;
    v114 = j;
    while (1)
    {
      if (v115.n128_u64[0])
      {
        v81 = MEMORY[0x23EE90360](v77, v27);
        v29 = __OFADD__(v77++, 1);
        if (v29)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v77 >= *(v113 + 16))
        {
          goto LABEL_124;
        }

        v81 = *(v111 + 8 * v77);

        v29 = __OFADD__(v77++, 1);
        if (v29)
        {
          goto LABEL_122;
        }
      }

      v82.n128_u64[0] = v11;
      if (v103)
      {
        sub_23A8F4604(v81, v82, v12, v78);
      }

      else
      {
        sub_23A8F40A8(v81, v100, v82, v12);
      }

      v84 = *(v83 + 32);
      v85 = *(v84 + 16);
      if (v85)
      {
        break;
      }

      v87 = MEMORY[0x277D84F90];
LABEL_102:
      sub_23A911A8C(v87);

      sub_23A9119A0(v79);

      sub_23A9119A0(v80);

      if (v77 == j)
      {
        goto LABEL_126;
      }
    }

    v117 = MEMORY[0x277D84F90];
    sub_23A975E54(0, v85, 0);
    v86 = *(v116[0] + 16);
    if (HIDWORD(v86))
    {
      goto LABEL_123;
    }

    v87 = v117;
    v27 = v84 + 32;
    while (1)
    {
      v88 = *v27;
      v27 += 4;
      v89 = v88 + v86;
      if (__CFADD__(v88, v86))
      {
        break;
      }

      v117 = v87;
      v91 = *(v87 + 16);
      v90 = *(v87 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_23A975E54((v90 > 1), v91 + 1, 1);
        v87 = v117;
      }

      *(v87 + 16) = v91 + 1;
      *(v87 + 4 * v91 + 32) = v89;
      if (!--v85)
      {
        v27 = v112;
        j = v114;
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    ;
  }

LABEL_126:

  v92 = v116[0];
  v94 = v118;
  v93 = v119;
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v92;
  result[3] = v93;
  result[4] = v94;
  return result;
}

unint64_t sub_23A8F5704()
{
  result = qword_27DFAED40;
  if (!qword_27DFAED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAED38, &unk_23AA122E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAED40);
  }

  return result;
}

char *sub_23A8F5768(uint64_t a1, float a2)
{
  v4 = a1;
  if (a2 == 0.0)
  {

    return v4;
  }

  v6 = a1 + 16;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v8 ? v8 : v7;
      if (v12 > v7)
      {
        break;
      }

      v13 = *(v9 + 16 * v8);
      v14 = v8 + 1;
      v15 = vsubq_f32(v13, *(v6 + 16 * v12)).u64[0];
      v16.f32[0] = -*(&v15 + 1);
      v16.i32[1] = v15;
      v17 = vmul_f32(v16, v16);
      v18 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
      if (v7 - 1 == v8)
      {
        v19 = 0;
      }

      else
      {
        v19 = v8 + 1;
      }

      v20 = vrsqrte_f32(v18);
      v21 = vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20)));
      LODWORD(v22) = vmul_f32(v21, vrsqrts_f32(v18, vmul_f32(v21, v21))).u32[0];
      v90 = v13;
      v23 = vsubq_f32(*(v9 + 16 * v19), v13).u64[0];
      v24.f32[0] = -*(&v23 + 1);
      v24.i32[1] = v23;
      v25 = vmul_f32(v24, v24);
      v26 = vmul_n_f32(v16, v22);
      v27 = vadd_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
      v28 = vrsqrte_f32(v27);
      v29 = vmul_f32(v28, vrsqrts_f32(v27, vmul_f32(v28, v28)));
      v30 = vmul_n_f32(v24, vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29))).f32[0]);
      v31 = _simd_orient_vf2(v26, v30);
      v3.i32[0] = atan2f(v31, vaddv_f32(vmul_f32(v26, v30)));
      if (fabsf(v3.f32[0]) >= 2.0944)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9388A8(0, *(v4 + 2) + 1, 1, v4);
        }

        v36 = v4;
        v37 = *(v4 + 2);
        v38 = v36;
        v39 = *(v36 + 3);
        v40 = v39 >> 1;
        v41 = v37 + 1;
        if (v39 >> 1 <= v37)
        {
          v38 = sub_23A9388A8((v39 > 1), v37 + 1, 1, v38);
          v39 = *(v38 + 3);
          v40 = v39 >> 1;
        }

        v42 = a2;
        v10 = v90;
        *&v43 = vadd_f32(*v90.f32, vmul_n_f32(v26, a2));
        *(&v43 + 1) = v90.u32[2];
        *(v38 + 2) = v41;
        *&v38[16 * v37 + 32] = v43;
        v34 = v37 + 2;
        if (v40 < (v37 + 2))
        {
          v45 = sub_23A9388A8((v39 > 1), v37 + 2, 1, v38);
          v42 = a2;
          v10 = v90;
          v38 = v45;
        }

        *(v38 + 2) = v34;
        *&v38[16 * v41 + 32] = v10;
        v44 = *(v38 + 3);
        v2 = (v37 + 3);
        if ((v37 + 3) > (v44 >> 1))
        {
          v46 = sub_23A9388A8((v44 > 1), v37 + 3, 1, v38);
          v10 = v90;
          v4 = v46;
          v32 = a2;
        }

        else
        {
          v32 = v42;
          v4 = v38;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9388A8(0, *(v4 + 2) + 1, 1, v4);
        }

        v30 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, 0), 0), vsub_f32(vsub_f32(0, v26), v30), vadd_f32(v26, v30));
        v32 = a2 / vaddv_f32(vmul_f32(v26, v30));
        v34 = *(v4 + 2);
        v33 = *(v4 + 3);
        v2 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          v86 = v32;
          v35 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v4);
          v32 = v86;
          v4 = v35;
        }

        v10 = v90;
      }

      *&v11 = vadd_f32(*v10.f32, vmul_n_f32(v30, v32));
      *(&v11 + 1) = v10.u32[2];
      *(v4 + 2) = v2;
      *&v4[16 * v34 + 32] = v11;
      v8 = v14;
      if (v7 == v14)
      {
        goto LABEL_30;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);

    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_30:
  v47 = *(v4 + 2);
  if (!v47)
  {
    return v4;
  }

  type metadata accessor for CDTEdge();
  v48 = 0;
  v2 = 0;
  while (2)
  {
    if (v48 >= v47)
    {
      goto LABEL_76;
    }

    v49 = v4 + 32;
    if (v48 + 1 == v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48 + 1;
    }

    v88 = *&v49[16 * v50];
    v91 = *&v4[16 * v48 + 32];
    swift_allocObject();
    v51 = sub_23A947224(v91, *&v88);
    v52 = v4;
    v53 = *(v4 + 2);
    if (!v53)
    {
      goto LABEL_77;
    }

    v54 = v51;
    v84 = v48 + 1;
    v85 = v52;
    v55 = (v52 + 16);
    while (1)
    {
      v56 = v47 - 1;
      if (v47 - 1 >= *v55)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v47 % v53 >= *v55)
      {
        goto LABEL_74;
      }

      v89 = *&v55[2 * v47];
      v92 = *&v49[16 * (v47 % v53)];
      v57 = swift_allocObject();
      *(v57 + 16) = v89;
      *(v57 + 24) = v92.i64[0];
      v58 = vceq_f32(*&v89, *v92.f32);
      *(v57 + 32) = v58.i8[0] & v58.i8[4] & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v59 = swift_allocObject();
      *&v60 = v89;
      *(&v60 + 1) = v92.i64[0];
      *(v59 + 16) = xmmword_23AA11C10;
      *(v59 + 32) = v60;
      v93 = v59;

      sub_23A946A58(&v93);

      *(v57 + 40) = v93;
      v61 = *(v57 + 16);
      if (sub_23A8ED98C(v54, 0.0001, v61))
      {
        goto LABEL_39;
      }

      v62 = *(v57 + 24);
      if (sub_23A8ED98C(v54, 0.0001, v62))
      {
        goto LABEL_39;
      }

      v63 = v54[2];
      v64 = v54[3];
      v65 = vsub_f32(v61, v63);
      v66 = vrev64_s32(vsub_f32(v62, v63));
      v67 = vmul_f32(v65, v66);
      LODWORD(v68) = vsub_f32(v67, vdup_lane_s32(v67, 1)).u32[0];
      v69 = fabsf(v68);
      v70 = vmul_f32(vsub_f32(v61, v64), vrev64_s32(vsub_f32(v62, v64)));
      LODWORD(v71) = vsub_f32(v70, vdup_lane_s32(v70, 1)).u32[0];
      if (fabsf(v71) >= 1.4211e-14)
      {
        if (v71 <= 0.0)
        {
          if (v69 >= 1.4211e-14 && v68 <= 0.0)
          {
            goto LABEL_39;
          }
        }

        else if (v69 >= 1.4211e-14 && v68 > 0.0)
        {
          goto LABEL_39;
        }
      }

      else if (v69 < 1.4211e-14)
      {
        goto LABEL_39;
      }

      v72 = vsub_f32(v64, v63);
      LODWORD(v73) = vsub_f32(vmul_lane_f32(v72, v65, 1), vmul_lane_f32(v65, v72, 1)).u32[0];
      v74 = fabsf(v73);
      v75 = vmul_f32(v66, v72);
      LODWORD(v76) = vsub_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
      if (fabsf(v76) < 1.4211e-14)
      {
        if (v74 >= 1.4211e-14)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }

      if (v76 <= 0.0)
      {
        break;
      }

      if (v74 < 1.4211e-14 || v73 <= 0.0)
      {
        goto LABEL_60;
      }

LABEL_39:

      --v47;
      if (v48 == v56)
      {

        v77 = v48 + 1;
        goto LABEL_70;
      }
    }

    if (v74 >= 1.4211e-14 && v73 <= 0.0)
    {
      goto LABEL_39;
    }

LABEL_60:
    v77 = v48 + 1;
    if (v47 <= v84)
    {
      goto LABEL_78;
    }

    v78 = *v55;
    if (*v55 < v47)
    {
      goto LABEL_79;
    }

    v79 = v48 - v47 + 1;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_80;
    }

    v81 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v85;
    if (!isUniquelyReferenced_nonNull_native || v80 > *(v85 + 3) >> 1)
    {
      if (v78 <= v80)
      {
        v83 = v80;
      }

      else
      {
        v83 = v78;
      }

      v81 = sub_23A9388A8(isUniquelyReferenced_nonNull_native, v83, 1, v85);
      v94 = v81;
    }

    v85 = v81;
    sub_23A946190(v84, v47, 0);

LABEL_70:
    v4 = v85;
    v47 = *(v85 + 2);
    v48 = v77;
    if (v77 < v47)
    {
      continue;
    }

    return v4;
  }
}

void sub_23A8F5E40(unint64_t a1, double a2, float32_t a3, float32_t a4)
{
  v43.f32[0] = a3;
  v45.f32[0] = a4;
  v9 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v10 = sub_23AA0D7F4();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_53;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((*(MEMORY[0x23EE90360](i, a1) + 48) & 4) != 0)
      {
        v12 = swift_unknownObjectRetain();
        MEMORY[0x23EE8FD70](v12);
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = a1 + 32;
    do
    {
      if ((*(*v13 + 48) & 4) != 0)
      {
        v14 = swift_retain_n();
        MEMORY[0x23EE8FD70](v14);
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
      }

      v13 += 8;
      --v10;
    }

    while (v10);
  }

LABEL_18:
  v7 = -0.5;
  v53 = v9;
  sub_23A8F1F50(&v54);
  v10 = v54;
  v4 = v54 >> 62;
  if (v54 >> 62)
  {
LABEL_51:
    v16 = sub_23AA0D7F4();
  }

  else
  {
    v16 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v7 * *&a2;
  if (v16)
  {
    v5 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) == 0)
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v17 = *(v10 + 32);

      if ((*(v17 + 48) & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }

LABEL_54:
      LODWORD(v50) = *(v17 + 32);
      if (!v4)
      {
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        __break(1u);
      }

      if (sub_23AA0D7F4())
      {
        if (sub_23AA0D7F4())
        {
LABEL_59:
          if (v5)
          {
            MEMORY[0x23EE90360](0, v10);
            swift_unknownObjectRelease();
            v36 = v10 & 0xFFFFFFFFFFFFFF8;
            if (!v4)
            {
LABEL_61:
              v37 = *(v36 + 16);
              goto LABEL_65;
            }
          }

          else
          {
            v36 = v10 & 0xFFFFFFFFFFFFFF8;
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_72:
              __break(1u);
              return;
            }

            if (!v4)
            {
              goto LABEL_61;
            }
          }

          v37 = sub_23AA0D7F4();
LABEL_65:
          if (v37)
          {
            sub_23A945F68(0, 1);

            v10 = v54;
            if (!(v54 >> 62))
            {
              goto LABEL_26;
            }

            goto LABEL_67;
          }

          goto LABEL_71;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_53:
    v17 = MEMORY[0x23EE90360](0, v10);
    if ((*(v17 + 48) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_25:
  v50 = v6;
  if (!(v10 >> 62))
  {
LABEL_26:
    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_27;
  }

LABEL_67:
  v18 = sub_23AA0D7F4();
LABEL_27:
  v19 = vmuls_lane_f32(v7, *&a2, 1);
  v20 = "tion";
  if (!v18)
  {
    v48 = v19;

    v30.f32[0] = v45.f32[0] * 0.0;
    v40 = v43.f32[0] * 0.0;
    v41 = v45.f32[0] * 0.0;
    v30.f32[1] = v43.f32[0] * 0.0;
    v30.i32[2] = v43.i32[0];
    v31 = vaddq_f32(vtrn1q_s32(LODWORD(v48), LODWORD(v48)), v30);
    v30.i32[3] = v45.i32[0];
    v31.i32[3] = vsubq_f32(0, v30).i32[3];
    v39 = v31;
LABEL_45:
    v32 = v39;
    v32.i32[3] = 0;
    v33 = v32;
    v33.f32[0] = (0.0 - v6) + v40;
    v49 = v33;
    v32.f32[0] = v40 + v50;
    v33.f32[0] = v41 + v50;
    v33.i32[1] = v39.i32[0];
    v33.i64[1] = v39.u32[3];
    v52 = v33;
    *&v34 = (0.0 - v6) + v41;
    DWORD1(v34) = v39.i32[0];
    *(&v34 + 1) = v39.u32[3];
    v44 = v34;
    v46 = v32;
    type metadata accessor for RoomCaptureQuad();
    v35 = swift_allocObject();
    v35[1] = v49;
    v35[2] = v46;
    v35[3] = v52;
    v35[4] = v44;
    v35[5] = *(v20 + 33);
    MEMORY[0x23EE8FD70]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    return;
  }

  v15.f32[0] = v45.f32[0] * 0.0;
  v40 = v43.f32[0] * 0.0;
  v41 = v45.f32[0] * 0.0;
  v15.f32[1] = v43.f32[0] * 0.0;
  v15.i32[2] = v43.i32[0];
  v21 = vaddq_f32(vtrn1q_s32(LODWORD(v19), LODWORD(v19)), v15);
  v15.i32[3] = v45.i32[0];
  v21.i32[3] = vsubq_f32(0, v15).i32[3];
  v22 = 1;
  v39 = v21;
  v21.i32[3] = 0;
  v38 = v21;
  v4 = 0;
  do
  {
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EE90360](v4, v10);
        v24 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v23 = *(v10 + 8 * v4 + 32);

        v24 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      v25 = *(v23 + 16);
      a2 = *(v23 + 32);
      v26 = v38;
      v27 = v38;
      v27.f32[0] = v40 + *&v25;
      v45 = v27;
      v26.f32[0] = v40 + v50;
      v27.f32[0] = v41 + v50;
      v27.i32[1] = v39.i32[0];
      v27.i64[1] = v39.u32[3];
      v51 = v27;
      v27.i32[3] = 0;
      v27.f32[0] = v41 + *&v25;
      v27.i32[1] = v39.i32[0];
      v42 = v27;
      v43 = v26;
      type metadata accessor for RoomCaptureQuad();
      v28 = swift_allocObject();
      v28[1] = v45;
      v28[2] = v43;
      v28[3] = v51;
      v28[4] = v42;
      v28[5] = xmmword_23AA12210;
      MEMORY[0x23EE8FD70]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v29 = *(v23 + 48);

      v50 = *&a2;
      if ((v29 & 2) == 0)
      {
        break;
      }

      v22 = 0;
      if (v24 == v18)
      {

        return;
      }

      v4 = v24;
    }

    ++v4;
  }

  while (v24 != v18);

  v20 = "RoomCaptureMeshDimensionsRestriction" + 32;
  if (v22)
  {
    goto LABEL_45;
  }
}

unint64_t sub_23A8F648C(unint64_t result, __n128 a2, __n128 a3, float32_t a4, double a5, __n128 a6, double a7, double a8, __n128 a9)
{
  v10 = a3.n128_f32[0];
  v11 = result;
  v12 = a2.n128_u64[0];
  v239 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_23AA0D7F4();
    v13 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_50:
    a6.n128_f32[0] = v10 * 0.0;
    v61 = v10 + 0.0;
    v15 = a4 * 0.0;
    v62 = 0.0 - a4;
    goto LABEL_51;
  }

  v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_50;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    a2.n128_f32[0] = v10 * 0.0;
    v220 = a2.n128_u64[0];
    v15 = a4 * 0.0;
    v233 = 0.0 - a4;
    v235 = v10 + 0.0;
    a2.n128_f32[0] = (v10 + 0.0) + -1.0;
    v145 = a2;
    do
    {
      v16 = MEMORY[0x23EE90360](v14, v11);
      v19.i64[0] = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *&v220;
      v22 = *&v220 + v19.f32[1];
      v163 = *&v220 + v19.f32[1];
      v188 = v19.f32[0];
      if ((*(v16 + 48) & 4) != 0)
      {
        v31.f32[0] = *&v220 + *&v20;
        v19.i32[3] = 0;
        v19.f32[0] = *&v220 + *&v20;
        v28 = COERCE_UNSIGNED_INT(*&v220 + *&v20);
        v28.f32[1] = *&v220 + v19.f32[1];
        v26 = v10 + 0.0;
        v28.f32[2] = v10 + 0.0;
        HIDWORD(v29) = 0;
        *&v29 = v15 + *&v20;
        v30 = COERCE_UNSIGNED_INT(v15 + *&v20);
        v158 = v15 + v19.f32[1];
        v30.f32[1] = v15 + v19.f32[1];
        v27 = 0.0 - a4;
        v30.f32[2] = 0.0 - a4;
      }

      else
      {
        v23.f32[0] = *&v220 + v19.f32[0];
        v23.f32[1] = *&v220 + v19.f32[1];
        v23.i64[1] = LODWORD(v235);
        v152 = v23;
        v210 = *&v220 + *&v20;
        v24.f32[0] = *&v220 + *&v20;
        v172 = COERCE_UNSIGNED_INT(*&v220 + *&v20);
        v24.f32[1] = *&v220 + v19.f32[1];
        v24.i64[1] = LODWORD(v235);
        v224 = v24;
        v171 = HIDWORD(*(v16 + 32));
        v23.f32[0] = v15 + *&v20;
        v203 = COERCE_UNSIGNED_INT(v15 + *&v20);
        v23.f32[1] = v15 + v19.f32[1];
        v23.i64[1] = LODWORD(v233);
        v195 = v23;
        v19.f32[0] = v15 + v19.f32[0];
        v158 = v15 + v19.f32[1];
        v19.f32[1] = v15 + v19.f32[1];
        v19.i64[1] = LODWORD(v233);
        v147 = v19;
        type metadata accessor for RoomCaptureQuad();
        v25 = swift_allocObject();
        v25[1] = v152;
        v25[2] = v224;
        v25[3] = v195;
        v25[4] = v147;
        v25[5] = xmmword_23AA12220;
        MEMORY[0x23EE8FD70]();
        if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v27 = 0.0 - a4;
        v26 = v10 + 0.0;
        v21 = *&v220;
        v28 = v224;
        v22 = v163;
        HIDWORD(v20) = v171;
        v19 = v172;
        v30 = v195;
        v29 = v203;
        v31.f32[0] = v210;
      }

      *&v18 = v21 + *(&v20 + 1);
      v211 = v18;
      v19.f32[1] = v21 + *(&v20 + 1);
      v19.f32[2] = v26;
      v32 = vsubq_f32(v19, v28);
      v33 = vmulq_f32(v32, v32);
      v173 = v19;
      v34 = v19;
      if ((*&v33.i32[2] + vaddv_f32(*v33.i8)) < 1.4211e-14)
      {
        v34.f32[0] = v31.f32[0] + 0.0;
        v34.f32[1] = v22 + 1.0;
        v34.i64[1] = LODWORD(v26);
      }

      v225 = v28;
      v35 = vsubq_f32(v30, v28);
      v36 = vmulq_f32(v35, v35);
      if ((v36.f32[2] + vaddv_f32(*v36.f32)) < 1.4211e-14)
      {
        v30.f32[0] = v31.f32[0] + 0.0;
        v30.f32[1] = v22 + 0.0;
        v33.i32[3] = v145.n128_i32[3];
        v30.i64[1] = v145.n128_u32[0];
      }

      v153 = v15 + *(&v20 + 1);
      *(&v29 + 1) = v15 + *(&v20 + 1);
      *(&v29 + 2) = v27;
      v196 = v30;
      v204 = v29;
      v31.f32[1] = v22;
      *v17.i8 = vsub_f32(*v34.f32, v31);
      *&v17.i32[2] = v34.f32[2] - v26;
      *v33.i8 = vsub_f32(*v30.f32, v31);
      *&v33.i32[2] = v30.f32[2] - v26;
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v17)), v33, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      *v39.f32 = vrsqrte_f32(v40);
      *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
      v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v41.i32[3] = v187;
      v168 = v41;
      v180 = v34;
      type metadata accessor for RoomCaptureQuad();
      v42 = swift_allocObject();
      v42[1] = v225;
      v42[2] = v180;
      v42[3] = v204;
      v42[4] = v196;
      v42[5] = v168;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v148 = *&v220 + v188;
      v43.f32[0] = *&v220 + v188;
      v181 = COERCE_UNSIGNED_INT(*&v220 + v188);
      v43.i32[1] = v211;
      v43.i64[1] = LODWORD(v235);
      v44.f32[0] = v15 + v188;
      v189 = COERCE_UNSIGNED_INT(v15 + v188);
      v197 = v43;
      v44.f32[1] = v153;
      v44.i64[1] = LODWORD(v233);
      v226 = v44;
      v45 = swift_allocObject();
      v45[1] = v173;
      v45[2] = v197;
      v45[3] = v226;
      v45[4] = v204;
      v45[5] = xmmword_23AA12210;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v46 = v181;
      v46.f32[1] = v163;
      v46.f32[2] = v10 + 0.0;
      v47 = vsubq_f32(v46, v197);
      v48 = vmulq_f32(v47, v47);
      v49.f32[0] = v148;
      if ((v48.f32[2] + vaddv_f32(*v48.f32)) < 1.4211e-14)
      {
        v46.i32[3] = 0;
        v46.f32[0] = v148 + 0.0;
        v46.f32[1] = *&v211 + 1.0;
        v46.f32[2] = v10 + 0.0;
      }

      v50 = v226;
      v51 = vsubq_f32(v226, v197);
      v52 = vmulq_f32(v51, v51);
      if ((v52.f32[2] + vaddv_f32(*v52.f32)) < 1.4211e-14)
      {
        v50.f32[0] = v148 + 0.0;
        v50.f32[1] = *&v211 + 0.0;
        v50.i64[1] = v145.n128_u32[0];
      }

      v227 = v50;
      v53 = v189;
      *&v53.i32[1] = v158;
      *&v53.i32[2] = 0.0 - a4;
      v190 = v53;
      v54.i32[3] = HIDWORD(v211);
      v49.i32[1] = v211;
      *v54.f32 = vsub_f32(*v46.f32, v49);
      v54.f32[2] = v46.f32[2] - v235;
      *v53.i8 = vsub_f32(*v50.f32, v49);
      *&v53.i32[2] = v50.f32[2] - v235;
      v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
      v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
      v57 = vmulq_f32(v55, v55);
      *&v58 = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
      *v57.f32 = vrsqrte_f32(v58);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
      v59 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      v59.i32[3] = v162;
      v212 = v59;
      v182 = v46;
      v60 = swift_allocObject();
      v60[1] = v197;
      v60[2] = v182;
      v60[3] = v190;
      v60[4] = v227;
      v60[5] = v212;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      ++v14;
      sub_23AA0D334();
      swift_unknownObjectRelease();
      v187 = v168.i32[3];
      v162 = v212.i32[3];
    }

    while (v13 != v14);
    v62 = 0.0 - a4;
    v61 = v10 + 0.0;
    a6.n128_u64[0] = v220;
  }

  else
  {
    v63 = v11 + 32;
    a6.n128_f32[0] = v10 * 0.0;
    v61 = v10 + 0.0;
    v15 = a4 * 0.0;
    v62 = 0.0 - a4;
    a2.n128_f32[0] = (v10 + 0.0) + -1.0;
    v146 = a2;
    v236 = v10 + 0.0;
    v221 = a6;
    do
    {
      v64.i64[0] = *(*v63 + 16);
      a9.n128_u64[0] = *(*v63 + 32);
      v65 = v64.f32[1];
      v164 = a9;
      v169 = a6.n128_f32[0] + v64.f32[1];
      v183 = v64.f32[0];
      if ((*(*v63 + 48) & 4) != 0)
      {
        v64.f32[0] = a6.n128_f32[0] + a9.n128_f32[0];
        v192 = COERCE_UNSIGNED_INT(a6.n128_f32[0] + a9.n128_f32[0]);
        v199 = a6.n128_f32[0] + a9.n128_f32[0];
        v64.f32[1] = a6.n128_f32[0] + v64.f32[1];
        v64.i64[1] = LODWORD(v61);
        v214 = v64;
        v77.f32[0] = v15 + a9.n128_f32[0];
        v228 = COERCE_UNSIGNED_INT(v15 + a9.n128_f32[0]);
        v159 = v15 + v65;
        v77.f32[1] = v15 + v65;
        v77.i64[1] = LODWORD(v62);
        v205 = v77;

        v76 = v164;
        v72 = v221;
        v71 = v10 + 0.0;
        v75 = v214;
        v73 = v192;
        v74.f32[0] = v199;
      }

      else
      {
        *&v66 = a6.n128_f32[0] + v64.f32[0];
        *(&v66 + 1) = a6.n128_f32[0] + v64.f32[1];
        *(&v66 + 1) = LODWORD(v61);
        v154 = v66;
        v67.f32[0] = a6.n128_f32[0] + a9.n128_f32[0];
        v191 = COERCE_UNSIGNED_INT(a6.n128_f32[0] + a9.n128_f32[0]);
        v198 = a6.n128_f32[0] + a9.n128_f32[0];
        v67.f32[1] = a6.n128_f32[0] + v64.f32[1];
        v67.i64[1] = LODWORD(v61);
        v213 = v67;
        v68.f32[0] = v15 + a9.n128_f32[0];
        v228 = COERCE_UNSIGNED_INT(v15 + a9.n128_f32[0]);
        v68.f32[1] = v15 + v64.f32[1];
        v68.i64[1] = LODWORD(v62);
        v205 = v68;
        v68.f32[0] = v15 + v64.f32[0];
        v159 = v15 + v64.f32[1];
        v68.f32[1] = v15 + v64.f32[1];
        v149 = v68;
        type metadata accessor for RoomCaptureQuad();
        v69 = swift_allocObject();
        v69[1] = v154;
        v69[2] = v213;
        v69[3] = v205;
        v69[4] = v149;
        v69[5] = xmmword_23AA12220;

        MEMORY[0x23EE8FD70](v70);
        if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v71 = v10 + 0.0;
        v72 = v221;
        v73 = v191;
        v74.f32[0] = v198;
        v75 = v213;
        v76 = v164;
      }

      v72.n128_f32[0] = v72.n128_f32[0] + *&v76.i32[1];
      v200 = v72;
      v73.i32[1] = v72.n128_u32[0];
      v73.f32[2] = v71;
      v78 = vsubq_f32(v73, v75);
      v79 = vmulq_f32(v78, v78);
      v80 = v73;
      if ((*&v79.i32[2] + vaddv_f32(*v79.i8)) < 1.4211e-14)
      {
        v80.f32[0] = v74.f32[0] + 0.0;
        v80.f32[1] = v169 + 1.0;
        v80.i64[1] = LODWORD(v71);
      }

      v193 = v73;
      v215 = v75;
      v81 = v205;
      v82 = vsubq_f32(v205, v75);
      v83 = vmulq_f32(v82, v82);
      v84 = v228;
      if ((v83.f32[2] + vaddv_f32(*v83.f32)) < 1.4211e-14)
      {
        v81.f32[0] = v74.f32[0] + 0.0;
        v81.f32[1] = v169 + 0.0;
        v79.i32[3] = v146.n128_i32[3];
        v81.i64[1] = v146.n128_u32[0];
      }

      v206 = v81;
      v155 = v15 + *&v76.i32[1];
      *(&v84 + 1) = v15 + *&v76.i32[1];
      *(&v84 + 2) = 0.0 - a4;
      v229 = v84;
      v74.f32[1] = v169;
      *v76.i8 = vsub_f32(*v80.f32, v74);
      *&v76.i32[2] = v80.f32[2] - v71;
      *v79.i8 = vsub_f32(*v81.f32, v74);
      *&v79.i32[2] = v81.f32[2] - v71;
      v85 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vnegq_f32(v76)), v79, vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL));
      v86 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
      v87 = vmulq_f32(v85, v85);
      *&v88 = v87.f32[1] + (v87.f32[2] + v87.f32[0]);
      *v87.f32 = vrsqrte_f32(v88);
      *v87.f32 = vmul_f32(*v87.f32, vrsqrts_f32(v88, vmul_f32(*v87.f32, *v87.f32)));
      v89 = vmulq_n_f32(v86, vmul_f32(*v87.f32, vrsqrts_f32(v88, vmul_f32(*v87.f32, *v87.f32))).f32[0]);
      v89.i32[3] = v179;
      v165 = v89;
      v174 = v80;
      type metadata accessor for RoomCaptureQuad();
      v90 = swift_allocObject();
      v90[1] = v215;
      v90[2] = v174;
      v90[3] = v229;
      v90[4] = v206;
      v90[5] = v165;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v150 = v221.n128_f32[0] + v183;
      v91.f32[0] = v221.n128_f32[0] + v183;
      v175 = COERCE_UNSIGNED_INT(v221.n128_f32[0] + v183);
      v91.i32[1] = v200.n128_u32[0];
      v91.i64[1] = LODWORD(v236);
      v207 = v91;
      v92.f32[0] = v15 + v183;
      v184 = COERCE_UNSIGNED_INT(v15 + v183);
      v92.f32[1] = v155;
      v92.i64[1] = COERCE_UNSIGNED_INT(0.0 - a4);
      v216 = v92;
      v93 = swift_allocObject();
      v93[1] = v193;
      v93[2] = v207;
      v93[3] = v216;
      v93[4] = v229;
      v93[5] = xmmword_23AA12210;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v94 = v175;
      v94.f32[1] = v169;
      v94.f32[2] = v10 + 0.0;
      v95 = vsubq_f32(v94, v207);
      v96 = vmulq_f32(v95, v95);
      v97.f32[0] = v150;
      if ((v96.f32[2] + vaddv_f32(*v96.f32)) < 1.4211e-14)
      {
        v94.i32[3] = 0;
        v94.f32[0] = v150 + 0.0;
        v94.f32[1] = v200.n128_f32[0] + 1.0;
        v94.f32[2] = v10 + 0.0;
      }

      v98 = v216;
      v99 = vsubq_f32(v216, v207);
      v100 = vmulq_f32(v99, v99);
      if ((v100.f32[2] + vaddv_f32(*v100.f32)) < 1.4211e-14)
      {
        v98.f32[0] = v150 + 0.0;
        v98.f32[1] = v200.n128_f32[0] + 0.0;
        v98.i64[1] = v146.n128_u32[0];
      }

      v217 = v98;
      v101 = v184;
      *&v101.i32[1] = v159;
      *&v101.i32[2] = 0.0 - a4;
      v185 = v101;
      v102.i32[3] = v200.n128_i32[3];
      v97.i32[1] = v200.n128_u32[0];
      *v102.f32 = vsub_f32(*v94.f32, v97);
      v102.f32[2] = v94.f32[2] - v236;
      *v101.i8 = vsub_f32(*v98.f32, v97);
      *&v101.i32[2] = v98.f32[2] - v236;
      v103 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL), vnegq_f32(v102)), v101, vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL));
      v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
      v105 = vmulq_f32(v103, v103);
      *&v106 = v105.f32[1] + (v105.f32[2] + v105.f32[0]);
      *v105.f32 = vrsqrte_f32(v106);
      *v105.f32 = vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32)));
      v107 = vmulq_n_f32(v104, vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32))).f32[0]);
      v107.i32[3] = v162;
      v230 = v107;
      v176 = v94;
      v108 = swift_allocObject();
      v108[1] = v207;
      v108[2] = v176;
      v108[3] = v185;
      v108[4] = v217;
      v108[5] = v230;
      MEMORY[0x23EE8FD70]();
      if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();

      v63 += 8;
      v179 = v165.i32[3];
      v162 = v230.i32[3];
      --v13;
      v62 = 0.0 - a4;
      v61 = v10 + 0.0;
      a6.n128_u64[0] = v221.n128_u64[0];
    }

    while (v13);
  }

LABEL_51:
  v222 = a6.n128_f32[0];
  v234 = LODWORD(v62);
  v237 = v61;
  v109 = vmul_f32(v12, 0xBF000000BF000000);
  v110 = vsub_f32(0, v109);
  v170 = v109.f32[0] + a6.n128_f32[0];
  v111.f32[0] = v109.f32[0] + a6.n128_f32[0];
  a3.n128_u64[0] = vadd_f32(v110, vdup_lane_s32(a6.n128_u64[0], 0));
  v218 = COERCE_UNSIGNED_INT(v109.f32[0] + a6.n128_f32[0]);
  v111.i32[1] = a3.n128_i32[1];
  v111.i64[1] = LODWORD(v61);
  v231 = v111;
  v112 = a3;
  v112.n128_u32[3] = 0;
  v156 = v112;
  v160 = v109.f32[1];
  v112.n128_u32[1] = a3.n128_u32[1];
  v161 = v112;
  v166 = a3.n128_u64[0];
  v112.n128_f32[2] = v61;
  v194 = v112;
  v201 = COERCE_UNSIGNED_INT(v110.f32[0] + v15);
  v113 = v201;
  *&v113.i32[1] = v110.f32[1] + v15;
  *&v113.i32[2] = v62;
  v177 = v113;
  v112.n128_f32[0] = v109.f32[0] + v15;
  v208 = COERCE_UNSIGNED_INT(v109.f32[0] + v15);
  v112.n128_f32[1] = v110.f32[1] + v15;
  v112.n128_u64[1] = LODWORD(v62);
  v186 = v112;
  type metadata accessor for RoomCaptureQuad();
  v114 = swift_allocObject();
  v114[1] = v231;
  v114[2] = v194;
  v114[3] = v177;
  v114[4] = v186;
  v114[5] = xmmword_23AA12220;
  MEMORY[0x23EE8FD70]();
  if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  sub_23A8F5E40(v11, *&v12, v10, a4);
  sub_23A912060(v115);
  v116 = v156;
  v117 = v156;
  v223 = v160 + v222;
  v117.f32[1] = v223;
  v117.f32[2] = v237;
  v118 = v201;
  *&v118.i32[1] = v160 + v15;
  v118.i32[2] = v234;
  v202 = v118;
  v119 = vsubq_f32(v117, v194);
  v120 = vmulq_f32(v119, v119);
  if ((v120.f32[2] + vaddv_f32(*v120.f32)) < 1.4211e-14)
  {
    v116.f32[1] = v166.f32[1] + 1.0;
    v116.f32[2] = v237;
    v117 = v116;
  }

  v121 = vsubq_f32(v177, v194);
  v122 = vmulq_f32(v121, v121);
  v122.f32[0] = v122.f32[2] + vaddv_f32(*v122.f32);
  v118.i32[0] = 679477248;
  v123 = vdupq_lane_s32(*&vcgtq_f32(v118, v122), 0);
  *v118.i32 = v237 + -1.0;
  v151 = v118;
  v157 = v117;
  v124 = v161;
  *&v124.i32[2] = v237 + -1.0;
  v178 = vbslq_s8(v123, v124, v177);
  *v123.i8 = vsub_f32(*v117.f32, v166);
  *&v123.i32[2] = v117.f32[2] - v237;
  *v118.i8 = vsub_f32(*v178.i8, v166);
  *&v118.i32[2] = *&v178.i32[2] - v237;
  v125 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL), vnegq_f32(v123)), v118, vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL));
  v126 = vextq_s8(vuzp1q_s32(v125, v125), v125, 0xCuLL);
  v127 = vmulq_f32(v125, v125);
  *&v128 = v127.f32[1] + (v127.f32[2] + v127.f32[0]);
  *v127.f32 = vrsqrte_f32(v128);
  *v127.f32 = vmul_f32(*v127.f32, vrsqrts_f32(v128, vmul_f32(*v127.f32, *v127.f32)));
  v167 = vmulq_n_f32(v126, vmul_f32(*v127.f32, vrsqrts_f32(v128, vmul_f32(*v127.f32, *v127.f32))).f32[0]);
  v129 = swift_allocObject();
  v129[1] = v194;
  v129[2] = v157;
  v129[3] = v202;
  v129[4] = v178;
  v129[5] = v167;
  MEMORY[0x23EE8FD70]();
  if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v133 = v208;
  v132 = v218;
  v131 = v231;
  v132.f32[1] = v223;
  v132.f32[2] = v237;
  v133.f32[1] = v160 + v15;
  v133.i32[2] = v234;
  v134 = vsubq_f32(v231, v132);
  v135 = vmulq_f32(v134, v134);
  v136.f32[0] = v170;
  if ((v135.f32[2] + vaddv_f32(*v135.f32)) < 1.4211e-14)
  {
    v131.f32[0] = v170 + 0.0;
    v131.f32[1] = v223 + 1.0;
    v131.i64[1] = LODWORD(v237);
  }

  v219 = v132;
  v137 = vsubq_f32(v133, v132);
  v138 = vmulq_f32(v137, v137);
  if ((*&v138.i32[2] + vaddv_f32(*v138.i8)) < 1.4211e-14)
  {
    v133.f32[0] = v170 + 0.0;
    v133.f32[1] = v223 + 0.0;
    v138.i32[3] = v151.i32[3];
    v133.i64[1] = v151.u32[0];
  }

  v209 = v133;
  v136.f32[1] = v223;
  *v138.i8 = vsub_f32(*v131.f32, v136);
  *&v138.i32[2] = v131.f32[2] - v237;
  *v130.i8 = vsub_f32(*v133.f32, v136);
  *&v130.i32[2] = v133.f32[2] - v237;
  v139 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL), vnegq_f32(v138)), v130, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
  v140 = vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL);
  v141 = vmulq_f32(v139, v139);
  *&v142 = v141.f32[1] + (v141.f32[2] + v141.f32[0]);
  *v141.f32 = vrsqrte_f32(v142);
  *v141.f32 = vmul_f32(*v141.f32, vrsqrts_f32(v142, vmul_f32(*v141.f32, *v141.f32)));
  v238 = vmulq_n_f32(v140, vmul_f32(*v141.f32, vrsqrts_f32(v142, vmul_f32(*v141.f32, *v141.f32))).f32[0]);
  v232 = v131;
  v143 = swift_allocObject();
  v143[1] = v219;
  v143[2] = v232;
  v143[3] = v186;
  v143[4] = v209;
  v143[5] = v238;
  MEMORY[0x23EE8FD70]();
  if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v144 = sub_23A982850(v239);

  return v144;
}

void *sub_23A8F76CC(float32x2_t *a1, char a2, float a3, float a4, float32x2_t a5, double a6, double a7, double a8, int32x4_t a9)
{
  *&v10 = a4;
  v12 = 1.0;
  if (a2)
  {
    v12 = 2.0;
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[1];
  *a9.i8 = a1[4];
  v15 = vmul_f32(v14, vrev64_s32(*a9.i8));
  if (fabsf(vsub_f32(v15, vdup_lane_s32(v15, 1)).f32[0] + -0.00000011921) < 0.00000011921)
  {
    return 0;
  }

  v16 = a1[3].f32[0];
  v17 = a1[2];
  v18 = a1[5];
  v19 = vadd_f32(*a1, a5);
  v20 = vadd_f32(v19, vand_s8(vmul_n_f32(v17, v16), vdup_n_s32(v13)));
  v21 = vsub_f32(v20, vmul_n_f32(v17, v12 * v16));
  v22 = vsub_f32(v20, vmul_n_f32(v18, a1[6].f32[0]));
  v19.f32[0] = -*&a9.i32[1];
  v23 = vzip1_s32(v19, *a9.i8);
  v24 = vmul_f32(v23, vsub_f32(v21, v22));
  v23.f32[0] = -v14.f32[1];
  v25 = vmul_f32(*a9.i8, vzip1_s32(v23, v14));
  v26 = vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25));
  v144 = v21;
  *v145.i8 = vadd_f32(v21, vmul_n_f32(v14, vdiv_f32(v26, vdup_lane_s32(v26, 1)).f32[0]));
  v27 = vsub_f32(*v145.i8, v20);
  v28 = vmul_f32(v27, v27);
  *v146.i8 = v22;
  v143 = v20;
  v29 = vsub_f32(vadd_f32(vsub_f32(v21, v20), v22), v20);
  v30 = vmul_f32(v29, v29);
  v31 = vadd_f32(vzip1_s32(v30, v28), vzip2_s32(v30, v28));
  if ((4.0 * v31.f32[0]) < v31.f32[1])
  {
    return 0;
  }

  *&v141 = a3;
  v142 = v10;
  v139 = a1[2];
  v140 = a1[1];
  v138 = a9;
  v33 = MEMORY[0x277D84F90];
  v155 = MEMORY[0x277D84F90];
  sub_23A975DC0(0, 4, 0);
  v34 = v155;
  v36 = *(v155 + 16);
  v35 = *(v155 + 24);
  v37 = v35 >> 1;
  v38 = v36 + 1;
  if (v35 >> 1 <= v36)
  {
    goto LABEL_159;
  }

  while (1)
  {
    LODWORD(v39) = v143;
    v40 = v141;
    DWORD1(v39) = v141;
    *(&v39 + 1) = HIDWORD(v143);
    *(v34 + 16) = v38;
    *(v34 + 16 * v36 + 32) = v39;
    v41 = v36 + 2;
    if (v37 < (v36 + 2))
    {
      sub_23A975DC0((v35 > 1), v36 + 2, 1);
      v40 = v141;
      v34 = v155;
    }

    v42 = v144;
    DWORD1(v42) = v40;
    DWORD2(v42) = HIDWORD(v144);
    *(v34 + 16) = v41;
    *(v34 + 16 * v38 + 32) = v42;
    v43 = *(v34 + 24);
    v44 = v36 + 3;
    if ((v36 + 3) > (v43 >> 1))
    {
      sub_23A975DC0((v43 > 1), v36 + 3, 1);
      v40 = v141;
      v34 = v155;
    }

    LODWORD(v45) = v145.i32[0];
    DWORD1(v45) = v40;
    *(&v45 + 1) = v145.u32[1];
    *(v34 + 16) = v44;
    *(v34 + 16 * v41 + 32) = v45;
    v46 = *(v34 + 24);
    if ((v36 + 4) > (v46 >> 1))
    {
      sub_23A975DC0((v46 > 1), v36 + 4, 1);
      v40 = v141;
      v34 = v155;
    }

    v141 = v146.u32[0];
    v47 = v146.u32[0];
    DWORD1(v47) = v40;
    DWORD2(v47) = v146.i32[1];
    *(v34 + 16) = v36 + 4;
    v48 = v34 + 32;
    *(v34 + 32 + 16 * v44) = v47;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v49 = sub_23AA0D324();
    *(v49 + 16) = 4;
    *(v49 + 32) = xmmword_23AA12210;
    *(v49 + 48) = xmmword_23AA12210;
    *(v49 + 64) = xmmword_23AA12210;
    *(v49 + 80) = xmmword_23AA12210;
    v155 = v33;
    sub_23A975DC0(0, 4, 0);
    v50 = v33;
    v52 = *(v33 + 16);
    v51 = *(v33 + 24);
    v53 = v51 >> 1;
    v54 = v52 + 1;
    if (v51 >> 1 <= v52)
    {
      sub_23A975DC0((v51 > 1), v52 + 1, 1);
      v50 = v33;
      v51 = *(v33 + 24);
      v53 = v51 >> 1;
    }

    v56 = v143;
    v55 = v144;
    v57 = v142;
    DWORD1(v56) = v142;
    DWORD2(v56) = HIDWORD(v143);
    *(v50 + 16) = v54;
    *(v50 + 16 * v52 + 32) = v56;
    v58 = v52 + 2;
    v59 = v146.u32[0];
    if (v53 < (v52 + 2))
    {
      sub_23A975DC0((v51 > 1), v52 + 2, 1);
      v55 = v144;
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    DWORD1(v55) = v57;
    DWORD2(v55) = HIDWORD(v144);
    *(v50 + 16) = v58;
    *(v50 + 16 * v54 + 32) = v55;
    v60 = *(v50 + 24);
    v61 = v52 + 3;
    if ((v52 + 3) > (v60 >> 1))
    {
      sub_23A975DC0((v60 > 1), v52 + 3, 1);
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    v62 = v145.u32[0];
    DWORD1(v62) = v57;
    DWORD2(v62) = v145.i32[1];
    *(v50 + 16) = v61;
    *(v50 + 16 * v58 + 32) = v62;
    v63 = *(v50 + 24);
    v33 = v52 + 4;
    if ((v52 + 4) > (v63 >> 1))
    {
      sub_23A975DC0((v63 > 1), v52 + 4, 1);
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    DWORD1(v59) = v57;
    DWORD2(v59) = v146.i32[1];
    *(v50 + 16) = v33;
    *(v50 + 16 * v61 + 32) = v59;
    v38 = sub_23AA0D324();
    *(v38 + 16) = 4;
    *(v38 + 32) = xmmword_23AA12220;
    *(v38 + 48) = xmmword_23AA12220;
    *(v38 + 64) = xmmword_23AA12220;
    *(v38 + 80) = xmmword_23AA12220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v64 = swift_allocObject();
    v146.i64[0] = 4;
    v64[1] = xmmword_23AA11C20;
    v65 = *(v34 + 16);
    if (!v65)
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      sub_23A975E54((v65 > 1), v49, 1);
      v74 = v147;
      goto LABEL_32;
    }

    v52 = v64;
    v64[2] = *v48;
    if (v65 == 1)
    {
      goto LABEL_161;
    }

    v64[3] = *(v34 + 48);
    v65 = *(v50 + 16);
    if (v65 < 2)
    {
      goto LABEL_162;
    }

    v64[4] = *(v50 + 48);
    v66 = *(v50 + 32);
    v64[5] = v66;
    *v66.i8 = vsub_f32(0, v140);
    v145 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v66, v66)), 0);
    v33 = 4;
    v9 = sub_23AA0D324();
    *(v9 + 16) = 4;
    *(v9 + 32) = v145;
    *(v9 + 48) = v145;
    *(v9 + 64) = v145;
    *(v9 + 80) = v145;
    v67 = swift_allocObject();
    v67[1] = xmmword_23AA11C20;
    v67[2] = *(v34 + 48);
    v65 = *(v34 + 16);
    if (v65 < 3)
    {
      goto LABEL_163;
    }

    v67[3] = *(v34 + 64);
    v65 = *(v50 + 16);
    if (v65 < 3)
    {
      goto LABEL_164;
    }

    v67[4] = *(v50 + 64);
    v144 = v67;
    v67[5] = *(v50 + 48);
    v68.i64[0] = COERCE_UNSIGNED_INT(0.0 - v139.f32[0]);
    v68.i64[1] = COERCE_UNSIGNED_INT(0.0 - v139.f32[1]);
    v145 = v68;
    v33 = 4;
    v48 = sub_23AA0D324();
    *(v48 + 16) = 4;
    *(v48 + 32) = v145;
    *(v48 + 48) = v145;
    *(v48 + 64) = v145;
    *(v48 + 80) = v145;
    v69 = swift_allocObject();
    v69[1] = xmmword_23AA11C20;
    v69[2] = *(v34 + 64);
    v65 = *(v34 + 16);
    if (v65 < 4)
    {
      goto LABEL_165;
    }

    v69[3] = *(v34 + 80);
    v65 = *(v50 + 16);
    if (v65 < 4)
    {
      goto LABEL_166;
    }

    v69[4] = *(v50 + 80);
    v70 = *(v50 + 64);
    v143 = v69;
    v69[5] = v70;
    *v70.i8 = vsub_f32(0, v18);
    v145 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v70, v70)), 0);
    v33 = 4;
    v71 = sub_23AA0D324();
    *(v71 + 16) = 4;
    *(v71 + 32) = v145;
    *(v71 + 48) = v145;
    *(v71 + 64) = v145;
    *(v71 + 80) = v145;
    v142 = v71;
    v72 = swift_allocObject();
    v72[1] = xmmword_23AA11C20;
    v72[2] = *(v34 + 80);
    v72[3] = *(v34 + 32);
    v72[4] = *(v50 + 32);
    v145.i64[0] = v72;
    v72[5] = *(v50 + 80);
    v146 = vtrn2q_s32(vzip1q_s32(0, v138), 0);
    v73 = sub_23AA0D324();
    *(v73 + 16) = 4;
    *(v73 + 32) = v146;
    *(v73 + 48) = v146;
    *(v73 + 64) = v146;
    *(v73 + 80) = v146;
    v141 = v73;
    v154 = v49;
    v155 = v34;
    v153 = &unk_284D7FB58;
    v147 = MEMORY[0x277D84F90];
    sub_23A975E54(0, 6, 0);
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB0 + v35);
    if (__CFADD__(dword_284D7FBB0, v35))
    {
      goto LABEL_150;
    }

    v74 = v147;
    v36 = *(v147 + 16);
    v65 = *(v147 + 24);
    v49 = v36 + 1;
    if (v36 >= v65 >> 1)
    {
      goto LABEL_167;
    }

LABEL_32:
    *(v74 + 16) = v49;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB4 + v35);
    if (__CFADD__(dword_284D7FBB4, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v75 = *(v74 + 24);
    v36 += 2;
    if (v49 >= v75 >> 1)
    {
      sub_23A975E54((v75 > 1), v36, 1);
      v74 = v147;
    }

    *(v74 + 16) = v36;
    *(v74 + 4 * v49 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB8 + v35);
    if (__CFADD__(dword_284D7FBB8, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v36 = *(v74 + 16);
    v76 = *(v74 + 24);
    v77 = v36 + 1;
    if (v36 >= v76 >> 1)
    {
      sub_23A975E54((v76 > 1), v36 + 1, 1);
      v74 = v147;
    }

    *(v74 + 16) = v77;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBBC + v35);
    if (__CFADD__(dword_284D7FBBC, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v78 = *(v74 + 24);
    v36 += 2;
    if (v77 >= v78 >> 1)
    {
      sub_23A975E54((v78 > 1), v36, 1);
      v74 = v147;
    }

    *(v74 + 16) = v36;
    *(v74 + 4 * v77 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBC0 + v35);
    if (__CFADD__(dword_284D7FBC0, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v36 = *(v74 + 16);
    v79 = *(v74 + 24);
    v80 = v36 + 1;
    if (v36 >= v79 >> 1)
    {
      sub_23A975E54((v79 > 1), v36 + 1, 1);
      v74 = v147;
    }

    *(v74 + 16) = v80;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v33 = (dword_284D7FBC4 + v35);
    if (__CFADD__(dword_284D7FBC4, v35))
    {
      goto LABEL_150;
    }

    v148 = v74;
    v81 = *(v74 + 24);
    v82 = v36 + 2;
    if (v80 >= v81 >> 1)
    {
      sub_23A975E54((v81 > 1), v82, 1);
      v74 = v148;
    }

    *(v74 + 16) = v82;
    *(v74 + 4 * v80 + 32) = v33;
    sub_23A911A8C(v74);
    sub_23A9119A0(v50);
    sub_23A9119A0(v38);
    v83 = MEMORY[0x277D84F90];
    v147 = MEMORY[0x277D84F90];
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v84 = dword_284D7FBE8 + v35;
    if (__CFADD__(dword_284D7FBE8, v35))
    {
      goto LABEL_152;
    }

    v85 = v147;
    v87 = *(v147 + 16);
    v86 = *(v147 + 24);
    v38 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      sub_23A975E54((v86 > 1), v87 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v87 + 32) = v84;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBEC + v35);
    if (__CFADD__(dword_284D7FBEC, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v88 = *(v85 + 24);
    v89 = v87 + 2;
    if (v38 >= v88 >> 1)
    {
      sub_23A975E54((v88 > 1), v89, 1);
      v85 = v147;
    }

    *(v85 + 16) = v89;
    *(v85 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF0 + v35);
    if (__CFADD__(dword_284D7FBF0, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v91 = *(v85 + 16);
    v90 = *(v85 + 24);
    v38 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      sub_23A975E54((v90 > 1), v91 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v91 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF4 + v35);
    if (__CFADD__(dword_284D7FBF4, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v92 = *(v85 + 24);
    v93 = v91 + 2;
    if (v38 >= v92 >> 1)
    {
      sub_23A975E54((v92 > 1), v93, 1);
      v85 = v147;
    }

    *(v85 + 16) = v93;
    *(v85 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF8 + v35);
    if (__CFADD__(dword_284D7FBF8, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v95 = *(v85 + 16);
    v94 = *(v85 + 24);
    v38 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      sub_23A975E54((v94 > 1), v95 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v95 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v36 = (dword_284D7FBFC + v35);
    if (__CFADD__(dword_284D7FBFC, v35))
    {
      goto LABEL_152;
    }

    v149 = v85;
    v96 = *(v85 + 24);
    v97 = v95 + 2;
    if (v38 >= v96 >> 1)
    {
      sub_23A975E54((v96 > 1), v97, 1);
      v85 = v149;
    }

    *(v85 + 16) = v97;
    *(v85 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v85);
    sub_23A9119A0(v52);
    sub_23A9119A0(v9);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v98 = dword_284D7FC20 + v35;
    if (__CFADD__(dword_284D7FC20, v35))
    {
      goto LABEL_154;
    }

    v99 = v83;
    v101 = *(v83 + 16);
    v100 = *(v83 + 24);
    v38 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      sub_23A975E54((v100 > 1), v101 + 1, 1);
      v99 = v83;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v101 + 32) = v98;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC24 + v35);
    if (__CFADD__(dword_284D7FC24, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v102 = *(v99 + 24);
    v103 = v101 + 2;
    if (v38 >= v102 >> 1)
    {
      sub_23A975E54((v102 > 1), v103, 1);
      v99 = v147;
    }

    *(v99 + 16) = v103;
    *(v99 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC28 + v35);
    if (__CFADD__(dword_284D7FC28, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v105 = *(v99 + 16);
    v104 = *(v99 + 24);
    v38 = v105 + 1;
    if (v105 >= v104 >> 1)
    {
      sub_23A975E54((v104 > 1), v105 + 1, 1);
      v99 = v147;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v105 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC2C + v35);
    if (__CFADD__(dword_284D7FC2C, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v106 = *(v99 + 24);
    v107 = v105 + 2;
    if (v38 >= v106 >> 1)
    {
      sub_23A975E54((v106 > 1), v107, 1);
      v99 = v147;
    }

    *(v99 + 16) = v107;
    *(v99 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC30 + v35);
    if (__CFADD__(dword_284D7FC30, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v109 = *(v99 + 16);
    v108 = *(v99 + 24);
    v38 = v109 + 1;
    if (v109 >= v108 >> 1)
    {
      sub_23A975E54((v108 > 1), v109 + 1, 1);
      v99 = v147;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v109 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v36 = (dword_284D7FC34 + v35);
    if (__CFADD__(dword_284D7FC34, v35))
    {
      goto LABEL_154;
    }

    v150 = v99;
    v110 = *(v99 + 24);
    v111 = v109 + 2;
    if (v38 >= v110 >> 1)
    {
      sub_23A975E54((v110 > 1), v111, 1);
      v99 = v150;
    }

    *(v99 + 16) = v111;
    *(v99 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v99);
    sub_23A9119A0(v144);
    sub_23A9119A0(v48);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC58 + v35);
    if (__CFADD__(dword_284D7FC58, v35))
    {
      goto LABEL_156;
    }

    v112 = v83;
    v114 = *(v83 + 16);
    v113 = *(v83 + 24);
    v38 = v114 + 1;
    if (v114 >= v113 >> 1)
    {
      sub_23A975E54((v113 > 1), v114 + 1, 1);
      v112 = v83;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v114 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC5C + v35);
    if (__CFADD__(dword_284D7FC5C, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v115 = *(v112 + 24);
    v116 = v114 + 2;
    if (v38 >= v115 >> 1)
    {
      sub_23A975E54((v115 > 1), v116, 1);
      v112 = v147;
    }

    *(v112 + 16) = v116;
    *(v112 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC60 + v35);
    if (__CFADD__(dword_284D7FC60, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v118 = *(v112 + 16);
    v117 = *(v112 + 24);
    v38 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      sub_23A975E54((v117 > 1), v118 + 1, 1);
      v112 = v147;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v118 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC64 + v35);
    if (__CFADD__(dword_284D7FC64, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v119 = *(v112 + 24);
    v120 = v118 + 2;
    if (v38 >= v119 >> 1)
    {
      sub_23A975E54((v119 > 1), v120, 1);
      v112 = v147;
    }

    *(v112 + 16) = v120;
    *(v112 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC68 + v35);
    if (__CFADD__(dword_284D7FC68, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v122 = *(v112 + 16);
    v121 = *(v112 + 24);
    v38 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      sub_23A975E54((v121 > 1), v122 + 1, 1);
      v112 = v147;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v122 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v36 = (dword_284D7FC6C + v35);
    if (__CFADD__(dword_284D7FC6C, v35))
    {
      goto LABEL_156;
    }

    v151 = v112;
    v123 = *(v112 + 24);
    v124 = v122 + 2;
    if (v38 >= v123 >> 1)
    {
      sub_23A975E54((v123 > 1), v124, 1);
      v112 = v151;
    }

    *(v112 + 16) = v124;
    *(v112 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v112);
    sub_23A9119A0(v143);
    sub_23A9119A0(v142);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_157;
    }

    v33 = (dword_284D7FC90 + v35);
    if (!__CFADD__(dword_284D7FC90, v35))
    {
      v125 = v83;
      v127 = *(v83 + 16);
      v126 = *(v83 + 24);
      v38 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        sub_23A975E54((v126 > 1), v127 + 1, 1);
        v125 = v83;
      }

      *(v125 + 16) = v38;
      *(v125 + 4 * v127 + 32) = v33;
      v35 = *(v155 + 16);
      if (HIDWORD(v35))
      {
        goto LABEL_157;
      }

      v33 = (dword_284D7FC94 + v35);
      if (!__CFADD__(dword_284D7FC94, v35))
      {
        v147 = v125;
        v128 = *(v125 + 24);
        v129 = v127 + 2;
        if (v38 >= v128 >> 1)
        {
          sub_23A975E54((v128 > 1), v129, 1);
          v125 = v147;
        }

        *(v125 + 16) = v129;
        *(v125 + 4 * v38 + 32) = v33;
        v35 = *(v155 + 16);
        if (HIDWORD(v35))
        {
          goto LABEL_157;
        }

        v33 = (dword_284D7FC98 + v35);
        if (!__CFADD__(dword_284D7FC98, v35))
        {
          v147 = v125;
          v131 = *(v125 + 16);
          v130 = *(v125 + 24);
          v38 = v131 + 1;
          if (v131 >= v130 >> 1)
          {
            sub_23A975E54((v130 > 1), v131 + 1, 1);
            v125 = v147;
          }

          *(v125 + 16) = v38;
          *(v125 + 4 * v131 + 32) = v33;
          v35 = *(v155 + 16);
          if (HIDWORD(v35))
          {
            goto LABEL_157;
          }

          v33 = (dword_284D7FC9C + v35);
          if (!__CFADD__(dword_284D7FC9C, v35))
          {
            v147 = v125;
            v132 = *(v125 + 24);
            v133 = v131 + 2;
            if (v38 >= v132 >> 1)
            {
              sub_23A975E54((v132 > 1), v133, 1);
              v125 = v147;
            }

            *(v125 + 16) = v133;
            *(v125 + 4 * v38 + 32) = v33;
            v35 = *(v155 + 16);
            if (HIDWORD(v35))
            {
              goto LABEL_157;
            }

            v33 = (dword_284D7FCA0 + v35);
            if (!__CFADD__(dword_284D7FCA0, v35))
            {
              v147 = v125;
              v135 = *(v125 + 16);
              v134 = *(v125 + 24);
              v38 = v135 + 1;
              if (v135 >= v134 >> 1)
              {
                sub_23A975E54((v134 > 1), v135 + 1, 1);
                v125 = v147;
              }

              *(v125 + 16) = v38;
              *(v125 + 4 * v135 + 32) = v33;
              v35 = *(v155 + 16);
              if (HIDWORD(v35))
              {
                goto LABEL_157;
              }

              v36 = (dword_284D7FCA4 + v35);
              if (!__CFADD__(dword_284D7FCA4, v35))
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    sub_23A975DC0((v35 > 1), v38, 1);
    v34 = v155;
    v35 = *(v155 + 24);
    v37 = v35 >> 1;
  }

  v152 = v125;
  v136 = *(v125 + 24);
  v137 = v135 + 2;
  if (v38 >= v136 >> 1)
  {
    sub_23A975E54((v136 > 1), v137, 1);
    v125 = v152;
  }

  *(v125 + 16) = v137;
  *(v125 + 4 * v38 + 32) = v36;
  sub_23A911A8C(v125);
  sub_23A9119A0(v145.i64[0]);
  sub_23A9119A0(v141);
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v155;
  result[3] = v154;
  result[4] = v153;
  return result;
}

void *sub_23A8F89D0(unint64_t a1, unsigned int (*a2)(void, void, void), uint64_t a3, __n128 a4, float a5, float32_t a6)
{
  v118 = a3;
  v120 = a2;
  v125 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v116 - v12;
  v14 = type metadata accessor for ScanItemStrut(0);
  v15 = *(v14 - 8);
  v122 = v14;
  v123 = v15;
  MEMORY[0x28223BE20](v14);
  v121 = (&v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v117 = (&v116 - v18);
  v19 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  v128 = MEMORY[0x277D84F90];
  v20 = sub_23A8F3F24(a1, v125.n128_u64[0], 0.0);
  v21 = sub_23A982850(v20);

  v126 = v21;
  v22 = *(v21 + 16);
  v23 = v22[1].i64[0];
  if (v23)
  {
    v127 = v19;
    sub_23A975DC0(0, v23, 0);
    *v24.i32 = a5 * 0.0;
    v19 = v127;
    v25 = v22 + 2;
    v26 = *(v127 + 16);
    v27 = vdupq_lane_s32(v24, 0);
    do
    {
      v28 = *v25;
      v127 = v19;
      v29 = *(v19 + 24);
      if (v26 >= v29 >> 1)
      {
        v124 = v27;
        v116 = v28;
        sub_23A975DC0((v29 > 1), v26 + 1, 1);
        v28 = v116;
        v27 = v124;
        v19 = v127;
      }

      *&v30 = vaddq_f32(v27, v28).u64[0];
      *(&v30 + 2) = v28.f32[2] + a5;
      HIDWORD(v30) = 0;
      *(v19 + 16) = v26 + 1;
      *(v19 + 16 * v26 + 32) = v30;
      ++v25;
      ++v26;
      --v23;
    }

    while (v23);
  }

  sub_23A9119A0(v19);
  v31 = v126;

  sub_23A9119A0(v32);

  sub_23A911A8C(v33);
  v35 = *(v31 + 32);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v124.i64[0] = v13;
    v127 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v36, 0);
    v37 = v127;
    v39 = 32;
    v40 = v130;
    while (1)
    {
      v41 = *(v40 + 16);
      if (HIDWORD(v41))
      {
        break;
      }

      v42 = *(v35 + v39);
      v43 = v42 + v41;
      if (__CFADD__(v42, v41))
      {
        goto LABEL_58;
      }

      v127 = v37;
      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_23A975E54((v44 > 1), v45 + 1, 1);
        v37 = v127;
      }

      *(v37 + 16) = v45 + 1;
      *(v37 + 4 * v45 + 32) = v43;
      v39 += 4;
      if (!--v36)
      {

        v13 = v124.i64[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_14:
  sub_23A912078(v37, v34);
  v46 = *(v126 + 16);
  v47 = v46[1].i64[0];
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    v127 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v47, 0);
    v48 = v127;
    v49 = v46 + 2;
    v50 = *(v127 + 16);
    v51 = vdupq_lane_s32(COERCE_UNSIGNED_INT(a6 * 0.0), 0);
    do
    {
      v52 = *v49;
      v127 = v48;
      v53 = *(v48 + 24);
      if (v50 >= v53 >> 1)
      {
        v124 = v51;
        v116 = v52;
        sub_23A975DC0((v53 > 1), v50 + 1, 1);
        v52 = v116;
        v51 = v124;
        v48 = v127;
      }

      *&v54 = vaddq_f32(v51, v52).u64[0];
      *(&v54 + 2) = v52.f32[2] - a6;
      HIDWORD(v54) = 0;
      *(v48 + 16) = v50 + 1;
      *(v48 + 16 * v50 + 32) = v54;
      ++v49;
      ++v50;
      --v47;
    }

    while (v47);
  }

  sub_23A9119A0(v48);
  v55 = *(*(v126 + 16) + 16);
  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v56 = sub_23AA0D324();
    *(v56 + 16) = v55;
    memset_pattern16((v56 + 32), &xmmword_23AA12240, 16 * v55);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
  }

  sub_23A9119A0(v56);
  v57.n128_f32[0] = a5;
  v124.i64[0] = sub_23A8F648C(a1, v125, v57, a6, v58, v59, v60, v61, v62);
  v63 = *(v124.i64[0] + 32);
  v64 = *(v63 + 16);
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v127 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v64, 0);
    v65 = v127;
    v66 = 32;
    v67 = v130;
    while (1)
    {
      v68 = *(v67 + 16);
      if (HIDWORD(v68))
      {
        break;
      }

      v69 = *(v63 + v66);
      v70 = v69 + v68;
      if (__CFADD__(v69, v68))
      {
        goto LABEL_60;
      }

      v127 = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_23A975E54((v71 > 1), v72 + 1, 1);
        v65 = v127;
      }

      *(v65 + 16) = v72 + 1;
      *(v65 + 4 * v72 + 32) = v70;
      v66 += 4;
      if (!--v64)
      {

        goto LABEL_30;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_30:
  sub_23A911A8C(v65);

  sub_23A9119A0(v73);

  sub_23A9119A0(v74);
  sub_23A8D6CA0(v120, v13);
  v75 = v122;
  v76 = v123 + 48;
  v77 = *(v123 + 48);
  if (v77(v13, 1, v122) == 1)
  {
    sub_23A8D6D10(v13);
  }

  else
  {
    v78 = v117;
    sub_23A8D6D78(v13, v117);
    v82 = sub_23A8F76CC(v78, a5 > 0.0, vmuls_lane_f32(-0.5, v125.n128_u64[0], 1), vmuls_lane_f32(0.5, v125.n128_u64[0], 1), COERCE_UNSIGNED_INT((-0.5 * v125.n128_f32[0]) - COERCE_FLOAT(*v78)), v125.n128_f64[0], v79, v80, v81);
    if (v82)
    {
      v123 = v76;
      v83 = v82[4];
      v84 = *(v83 + 16);
      v85 = MEMORY[0x277D84F90];
      if (v84)
      {
        v120 = v77;
        v127 = MEMORY[0x277D84F90];

        result = sub_23A975E54(0, v84, 0);
        v85 = v127;
        v86 = 32;
        v87 = v130;
        while (1)
        {
          v88 = *(v87 + 16);
          if (HIDWORD(v88))
          {
            break;
          }

          v89 = *(v83 + v86);
          v90 = v89 + v88;
          if (__CFADD__(v89, v88))
          {
            goto LABEL_62;
          }

          v127 = v85;
          v92 = *(v85 + 16);
          v91 = *(v85 + 24);
          if (v92 >= v91 >> 1)
          {
            result = sub_23A975E54((v91 > 1), v92 + 1, 1);
            v85 = v127;
          }

          *(v85 + 16) = v92 + 1;
          *(v85 + 4 * v92 + 32) = v90;
          v86 += 4;
          if (!--v84)
          {

            v77 = v120;
            goto LABEL_41;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_41:
      sub_23A911A8C(v85);

      sub_23A9119A0(v93);

      sub_23A9119A0(v94);

      v75 = v122;
    }

    sub_23A8D6DDC(v117);
  }

  v95 = v121;
  v96 = v119;
  sub_23A8D6CA0(v118, v119);
  if (v77(v96, 1, v75) == 1)
  {

    sub_23A8D6D10(v96);
LABEL_56:
    v114 = v129;
    v113 = v130;
    v115 = v128;
    type metadata accessor for RoomCaptureMesh();
    result = swift_allocObject();
    result[2] = v113;
    result[3] = v115;
    result[4] = v114;
    return result;
  }

  sub_23A8D6D78(v96, v95);
  v100 = sub_23A8F76CC(v95, a5 > 0.0, vmuls_lane_f32(-0.5, v125.n128_u64[0], 1), vmuls_lane_f32(0.5, v125.n128_u64[0], 1), COERCE_UNSIGNED_INT((0.5 * v125.n128_f32[0]) - COERCE_FLOAT(*v95)), v125.n128_f64[0], v97, v98, v99);
  if (!v100)
  {
    sub_23A8D6DDC(v95);

    goto LABEL_56;
  }

  v101 = v100[4];
  v102 = *(v101 + 16);
  v103 = MEMORY[0x277D84F90];
  if (!v102)
  {
LABEL_54:
    sub_23A911A8C(v103);

    sub_23A9119A0(v111);

    sub_23A9119A0(v112);

    sub_23A8D6DDC(v95);
    goto LABEL_56;
  }

  v127 = MEMORY[0x277D84F90];

  result = sub_23A975E54(0, v102, 0);
  v103 = v127;
  v104 = 32;
  v105 = v130;
  while (1)
  {
    v106 = *(v105 + 16);
    if (HIDWORD(v106))
    {
      break;
    }

    v107 = *(v101 + v104);
    v108 = v107 + v106;
    if (__CFADD__(v107, v106))
    {
      goto LABEL_64;
    }

    v127 = v103;
    v110 = *(v103 + 16);
    v109 = *(v103 + 24);
    if (v110 >= v109 >> 1)
    {
      result = sub_23A975E54((v109 > 1), v110 + 1, 1);
      v103 = v127;
    }

    *(v103 + 16) = v110 + 1;
    *(v103 + 4 * v110 + 32) = v108;
    v104 += 4;
    if (!--v102)
    {

      v95 = v121;
      goto LABEL_54;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

void sub_23A8F92F4(char a1, unint64_t a2, char a3, __n128 a4, __n128 a5, float32x2_t a6, float a7, float a8, float a9, float a10)
{
  v15 = a5.n128_f32[0];
  v73 = a4.n128_u32[0];
  if (a3)
  {
    v16 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    if (a4.n128_f32[0] < a5.n128_f32[0])
    {
      v17 = 0;
      v18 = *&a2;
      v71 = (a9 * 0.0) + a8;
      v69 = (a10 * 0.0) + a8;
      do
      {
        v19 = (v18 * v17) + a4.n128_f32[0];
        if (v19 <= v15)
        {
          v20 = v19;
        }

        else
        {
          v20 = v15;
        }

        v79 = cosf(v20);
        v75 = sinf(v20);
        if (v20 < v15)
        {
          v21 = *(v16 + 2);
          if (HIDWORD(v21))
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_23AA12260;
          *(inited + 32) = v21;
          if (v21 == -1)
          {
            goto LABEL_58;
          }

          *(inited + 36) = v21 + 1;
          v23 = v21 + 3;
          if (v21 >= 0xFFFFFFFD)
          {
            goto LABEL_59;
          }

          *(inited + 40) = v23;
          *(inited + 44) = v21;
          *(inited + 48) = v23;
          *(inited + 52) = v21 + 2;
          sub_23A911A8C(inited);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_23A9388A8(0, *(v16 + 2) + 1, 1, v16);
        }

        v25 = *(v16 + 2);
        v24 = *(v16 + 3);
        v26 = v24 >> 1;
        v27 = v25 + 1;
        if (v24 >> 1 <= v25)
        {
          v16 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v16);
          v24 = *(v16 + 3);
          v26 = v24 >> 1;
        }

        v28 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v75), LODWORD(v79)), a7), a6);
        v29 = vsub_f32(a6, v28);
        v30 = vmul_f32(v29, v29);
        v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
        v31 = vrsqrte_f32(v30.u32[0]);
        *&v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
        v33 = vmul_n_f32(v29, vmul_f32(*&v32, vrsqrts_f32(v30.u32[0], vmul_f32(*&v32, *&v32))).f32[0]);
        v34 = v28.f32[1];
        *&v32 = v28.f32[0] + (a9 * v33.f32[0]);
        *(&v32 + 1) = v71;
        *(&v32 + 1) = COERCE_UNSIGNED_INT(v28.f32[1] + vmuls_lane_f32(a9, v33, 1));
        *(v16 + 2) = v27;
        *&v16[16 * v25 + 32] = v32;
        v35 = v25 + 2;
        if (v26 < v35)
        {
          v76 = v33;
          v80 = v28.i32[0];
          v37 = sub_23A9388A8((v24 > 1), v35, 1, v16);
          v33 = v76;
          v28.i32[0] = v80;
          v16 = v37;
        }

        HIDWORD(v36) = 0;
        *&v36 = v28.f32[0] + ((0.0 - v33.f32[0]) * a10);
        *(&v36 + 1) = v69;
        *(&v36 + 2) = v34 + ((0.0 - v33.f32[1]) * a10);
        *(v16 + 2) = v35;
        *&v16[16 * v27 + 32] = v36;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_54;
        }

        ++v17;
        a4.n128_u32[0] = v73;
      }

      while (v20 < v15);
    }

    if (a1)
    {
      v83 = sub_23A8ED3D4(v83);
      v61 = *(v16 + 2);
      if (v61)
      {
        v62 = &xmmword_23AA12220;
LABEL_46:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v66 = sub_23AA0D324();
        *(v66 + 16) = v61;
        memset_pattern16((v66 + 32), v62, 16 * v61);
LABEL_50:
        type metadata accessor for RoomCaptureMesh();
        v67 = swift_allocObject();
        v67[2] = v16;
        v67[3] = v66;
        v67[4] = v83;
        return;
      }
    }

    else
    {
      v61 = *(v16 + 2);
      if (v61)
      {
        v62 = &xmmword_23AA12210;
        goto LABEL_46;
      }
    }

    v66 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v84 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v38 = 0;
    v39 = a2;
    v40 = a5.n128_f32[0] - a4.n128_f32[0];
    v72 = (a9 * 0.0) + a8;
    v70 = (a10 * 0.0) + a8;
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = (v40 * (v38 / v39)) + a4.n128_f32[0];
      v81 = cosf(v42);
      v77 = sinf(v42);
      if (v42 < v15)
      {
        v43 = *(v41 + 2);
        if (HIDWORD(v43))
        {
          goto LABEL_53;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_23AA12260;
        *(v44 + 32) = v43;
        if (v43 == -1)
        {
          goto LABEL_55;
        }

        *(v44 + 36) = v43 + 1;
        v45 = v43 + 3;
        if (v43 >= 0xFFFFFFFD)
        {
          goto LABEL_56;
        }

        *(v44 + 40) = v45;
        *(v44 + 44) = v43;
        *(v44 + 48) = v45;
        *(v44 + 52) = v43 + 2;
        sub_23A911A8C(v44);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_23A9388A8(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      v48 = v46 >> 1;
      v49 = v47 + 1;
      if (v46 >> 1 <= v47)
      {
        v41 = sub_23A9388A8((v46 > 1), v47 + 1, 1, v41);
        v46 = *(v41 + 3);
        v48 = v46 >> 1;
      }

      v50 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v77), LODWORD(v81)), a7), a6);
      v51 = vsub_f32(a6, v50);
      v52 = vmul_f32(v51, v51);
      v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
      v53 = vrsqrte_f32(v52.u32[0]);
      *&v54 = vmul_f32(v53, vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)));
      v55 = vmul_n_f32(v51, vmul_f32(*&v54, vrsqrts_f32(v52.u32[0], vmul_f32(*&v54, *&v54))).f32[0]);
      v56 = v50.f32[1];
      *&v54 = v50.f32[0] + (a9 * v55.f32[0]);
      *(&v54 + 1) = v72;
      *(&v54 + 1) = COERCE_UNSIGNED_INT(v50.f32[1] + vmuls_lane_f32(a9, v55, 1));
      *(v41 + 2) = v49;
      *&v41[16 * v47 + 32] = v54;
      v57 = v47 + 2;
      if (v48 < (v47 + 2))
      {
        v78 = v55;
        v82 = v50.i32[0];
        v60 = sub_23A9388A8((v46 > 1), v47 + 2, 1, v41);
        v55 = v78;
        v50.i32[0] = v82;
        v41 = v60;
      }

      HIDWORD(v58) = 0;
      *&v58 = v50.f32[0] + ((0.0 - v55.f32[0]) * a10);
      *(&v58 + 1) = v70;
      *(&v58 + 2) = v56 + ((0.0 - v55.f32[1]) * a10);
      *(v41 + 2) = v57;
      *&v41[16 * v49 + 32] = v58;
      if (a2 == v38)
      {
        break;
      }

      v59 = __OFADD__(v38++, 1);
      a4.n128_u32[0] = v73;
      if (v59)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    if (a1)
    {
      v63 = sub_23A8ED3D4(v84);
      v64 = *(v41 + 2);
      if (v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v65 = sub_23AA0D324();
        *(v65 + 16) = v64;
        memset_pattern16((v65 + 32), &xmmword_23AA12220, 16 * v64);
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      if (v57 < 1)
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v65 = sub_23AA0D324();
      *(v65 + 16) = v57;
      memset_pattern16((v65 + 32), &xmmword_23AA12210, 16 * v47 + 32);
      v63 = v84;
    }

    type metadata accessor for RoomCaptureMesh();
    v68 = swift_allocObject();
    v68[2] = v41;
    v68[3] = v65;
    v68[4] = v63;
  }
}

void *sub_23A8F99A8(float *a1, unint64_t a2, char a3, char a4, float32x2_t a5, float a6, float a7, float a8)
{
  v185 = MEMORY[0x277D84F90];
  v186 = MEMORY[0x277D84F90];
  v184 = MEMORY[0x277D84F90];
  v13 = a1[4];
  v14 = a1[5];
  v155 = a1[6];
  v150 = a1[7];
  v167 = cosf(v13);
  *&v15 = sinf(v13);
  v161 = v15;
  *v16.i32 = cosf(v14);
  v171 = v16;
  v17 = sinf(v14);
  *(&v38 + 1) = *(&v161 + 1);
  *&v38 = vadd_f32(vmul_n_f32(__PAIR64__(v161, LODWORD(v167)), a6), a5);
  v18 = vsub_f32(a5, *&v38);
  v19 = vmul_f32(v18, v18);
  v19.i32[0] = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
  v20 = vrsqrte_f32(v19.u32[0]);
  v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20)));
  v22 = vmul_n_f32(v18, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]);
  v25 = v171;
  *&v25.i32[1] = v17;
  v23 = vadd_f32(vmul_n_f32(*v25.i8, a6), a5);
  v24 = vsub_f32(a5, v23);
  *v25.i8 = vmul_f32(v24, v24);
  v25.i32[0] = vadd_f32(*v25.i8, vdup_lane_s32(*v25.i8, 1)).u32[0];
  v26 = vrsqrte_f32(v25.u32[0]);
  v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
  v28 = vmul_n_f32(v24, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
  DWORD1(v29) = 0;
  HIDWORD(v30) = 0;
  *&v30 = *&v38 + (a7 * v22.f32[0]);
  v32 = v30;
  v32.f32[1] = (a7 * 0.0) + v155;
  v31 = *(&v38 + 1) + vmuls_lane_f32(a7, v22, 1);
  v32.f32[2] = v31;
  v33.i32[1] = 0;
  v33.i64[1] = 0;
  v34 = vmuls_lane_f32(a7, v28, 1);
  v35 = v23.f32[0] + (a7 * v28.f32[0]);
  v36 = v23.f32[1];
  v22.f32[0] = (0.0 - v22.f32[0]) * a8;
  v37 = *(&v38 + 1) + ((0.0 - v22.f32[1]) * a8);
  *v41.f32 = vmul_n_f32(COERCE_UNSIGNED_INT(0.0 - v28.f32[0]), a8);
  DWORD1(v38) = v41.i32[1];
  v22.f32[1] = v155;
  *v39.f32 = vadd_f32(*&v38, v22);
  v42 = v39;
  v42.i32[3] = 0;
  v40 = v42;
  v40.i32[1] = v39.i32[1];
  v40.f32[2] = v37;
  v23.f32[1] = v150;
  *v41.f32 = vadd_f32(*v41.f32, v23);
  v42.i32[1] = v41.i32[1];
  v42.f32[2] = v37;
  v43 = vsubq_f32(v32, v40);
  v44 = vmulq_f32(v43, v43);
  if ((v44.f32[2] + vaddv_f32(*v44.f32)) < 1.4211e-14)
  {
    *v32.f32 = vadd_f32(*v39.f32, 0x3F80000000000000);
    v32.f32[2] = v37 + 0.0;
    v32.i32[3] = 0;
  }

  v33.f32[0] = v35;
  v45 = v41;
  v45.i32[3] = 0;
  *&v29 = v36 + v34;
  v154 = v29;
  *&v38 = v36 + ((0.0 - v28.f32[1]) * a8);
  v156 = v38;
  *(&v30 + 2) = v31;
  *(&v30 + 1) = (a7 * 0.0) + v150;
  v151 = v30;
  v147 = v40;
  v46 = vsubq_f32(v42, v40);
  v47 = vmulq_f32(v46, v46);
  if ((*&v47.i32[2] + vaddv_f32(*v47.i8)) < 1.4211e-14)
  {
    *v42.f32 = vadd_f32(*v39.f32, 0);
    v42.f32[2] = v37 + -1.0;
    v42.i32[3] = 0;
  }

  v145 = v42;
  v168 = v33;
  v33.f32[1] = (a7 * 0.0) + v150;
  v162 = v33;
  v172 = v45;
  v149 = *v41.f32;
  v45.i32[1] = v41.i32[1];
  v158 = v45;
  *v25.i8 = vsub_f32(*v32.f32, *v39.f32);
  *&v25.i32[2] = v32.f32[2] - v37;
  v148 = v39.i32[1];
  *v47.i8 = vsub_f32(*v42.f32, *v39.f32);
  *&v47.i32[2] = v42.f32[2] - v37;
  v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v25)), v47, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
  v50 = vmulq_f32(v48, v48);
  *&v51 = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
  *v50.f32 = vrsqrte_f32(v51);
  *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
  v146 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
  v144 = v32;
  type metadata accessor for RoomCaptureQuad();
  v52 = swift_allocObject();
  v53 = v52;
  v52[1] = v147;
  v52[2] = v144;
  v52[3] = v151;
  v52[4] = v145;
  v52[5] = v146;
  v143 = a2;
  v142 = a3;
  if (a4)
  {
    sub_23A9313A0(v52);
    v55 = v54;

    v53 = v55;
  }

  v56 = v172;
  v56.i32[1] = v148;
  v173 = v56;
  v57 = v162;
  v57.i32[2] = v154;
  v163 = v57;
  v58 = v158;
  v58.i32[2] = v156;
  v159 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11BB0;
  *(inited + 32) = v53;

  v60 = sub_23A982850(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = *(v60 + 32);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v176 = MEMORY[0x277D84F90];

    sub_23A975E54(0, v62, 0);
    v64 = 32;
    v63 = v176;
    do
    {
      v65 = *(v61 + v64);
      v67 = *(v176 + 16);
      v66 = *(v176 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_23A975E54((v66 > 1), v67 + 1, 1);
      }

      *(v176 + 16) = v67 + 1;
      *(v176 + 4 * v67 + 32) = v65;
      v64 += 4;
      --v62;
    }

    while (v62);
  }

  v68 = v168;
  v68.f32[1] = (a7 * 0.0) + v155;
  v169 = v68;
  v69 = v173;
  v69.i32[2] = v156;
  v174 = v69;
  sub_23A911A8C(v63);

  sub_23A9119A0(v70);

  sub_23A9119A0(v71);
  v72 = v163;
  v73 = vsubq_f32(v163, v159);
  v74 = vmulq_f32(v73, v73);
  if ((v74.f32[2] + vaddv_f32(*v74.f32)) < 1.4211e-14)
  {
    *v72.f32 = vadd_f32(v149, 0x3F80000000000000);
    v72.f32[2] = *&v156 + 0.0;
    v72.i32[3] = 0;
  }

  v75 = v169;
  v76.i32[3] = HIDWORD(v154);
  v75.i32[2] = v154;
  v170 = v75;
  v77 = v174;
  v78 = vsubq_f32(v174, v159);
  v79 = vmulq_f32(v78, v78);
  if ((*&v79.i32[2] + vaddv_f32(*v79.i8)) < 1.4211e-14)
  {
    *v77.f32 = vadd_f32(v149, 0);
    v76.i32[3] = HIDWORD(v156);
    v77.f32[2] = *&v156 + -1.0;
    v77.i32[3] = 0;
  }

  v175 = v77;
  *v79.i8 = vsub_f32(*v72.f32, v149);
  *&v79.i32[2] = v72.f32[2] - *&v156;
  *v76.i8 = vsub_f32(*v77.f32, v149);
  *&v76.i32[2] = v77.f32[2] - *&v156;
  v164 = v72;
  v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), vnegq_f32(v79)), v76, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
  v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
  v82 = vmulq_f32(v80, v80);
  *&v83 = v82.f32[1] + (v82.f32[2] + v82.f32[0]);
  *v82.f32 = vrsqrte_f32(v83);
  *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32)));
  v157 = vmulq_n_f32(v81, vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32))).f32[0]);
  v84 = swift_allocObject();
  v85 = v84;
  v84[1] = v159;
  v84[2] = v164;
  v84[3] = v170;
  v84[4] = v175;
  v84[5] = v157;
  if (a4)
  {
    sub_23A9313A0(v84);
    v87 = v86;

    v85 = v87;
  }

  v88 = swift_initStackObject();
  *(v88 + 16) = xmmword_23AA11BB0;
  *(v88 + 32) = v85;

  v89 = sub_23A982850(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  v90 = *(v89 + 32);
  v91 = *(v90 + 16);
  v92 = MEMORY[0x277D84F90];
  if (v91)
  {
    v177 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v91, 0);
    v92 = v177;
    v94 = 32;
    while (1)
    {
      v95 = *(v186 + 16);
      if (HIDWORD(v95))
      {
        break;
      }

      v96 = *(v90 + v94);
      v97 = v96 + v95;
      if (__CFADD__(v96, v95))
      {
        goto LABEL_58;
      }

      v99 = *(v177 + 16);
      v98 = *(v177 + 24);
      if (v99 >= v98 >> 1)
      {
        result = sub_23A975E54((v98 > 1), v99 + 1, 1);
      }

      *(v177 + 16) = v99 + 1;
      *(v177 + 4 * v99 + 32) = v97;
      v94 += 4;
      if (!--v91)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_27:
  sub_23A911A8C(v92);

  sub_23A9119A0(v100);

  sub_23A9119A0(v101);
  v102.n128_f32[0] = v13;
  v103.n128_f32[0] = v14;
  sub_23A8F92F4(a4 & 1, v143, v142 & 1, v102, v103, a5, a6, v155, a7, a8);
  v105 = v104;
  v106 = v104[4];
  v107 = *(v106 + 16);
  v108 = MEMORY[0x277D84F90];
  if (v107)
  {
    v178 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v107, 0);
    v108 = v178;
    v109 = 32;
    while (1)
    {
      v110 = *(v186 + 16);
      if (HIDWORD(v110))
      {
        break;
      }

      v111 = *(v106 + v109);
      v112 = v111 + v110;
      if (__CFADD__(v111, v110))
      {
        goto LABEL_60;
      }

      v114 = *(v178 + 16);
      v113 = *(v178 + 24);
      if (v114 >= v113 >> 1)
      {
        result = sub_23A975E54((v113 > 1), v114 + 1, 1);
      }

      *(v178 + 16) = v114 + 1;
      *(v178 + 4 * v114 + 32) = v112;
      v109 += 4;
      if (!--v107)
      {

        goto LABEL_35;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_35:
  sub_23A911A8C(v108);

  sub_23A9119A0(v115);

  sub_23A9119A0(v116);
  v117 = v105[4];
  v118 = *(v117 + 16);
  v119 = MEMORY[0x277D84F90];
  if (v118)
  {
    v179 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v118, 0);
    v119 = v179;
    v120 = v118 + 7;
    while (v120 != 7)
    {
      v121 = *(v186 + 16);
      if (HIDWORD(v121))
      {
        goto LABEL_63;
      }

      v122 = *(v117 + 4 * v120);
      v123 = v122 + v121;
      if (__CFADD__(v122, v121))
      {
        goto LABEL_64;
      }

      v125 = *(v179 + 16);
      v124 = *(v179 + 24);
      if (v125 >= v124 >> 1)
      {
        result = sub_23A975E54((v124 > 1), v125 + 1, 1);
      }

      *(v179 + 16) = v125 + 1;
      *(v179 + 4 * v125 + 32) = v123;
      if (--v120 == 7)
      {

        goto LABEL_44;
      }
    }

    goto LABEL_62;
  }

LABEL_44:
  sub_23A911A8C(v119);
  v126 = v105[2];
  v127 = *(v126 + 16);
  result = MEMORY[0x277D84F90];
  if (v127)
  {
    v180 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v127, 0);
    v128 = 0;
    result = v180;
    LODWORD(v129) = 0;
    *(&v129 + 1) = v150 - v155;
    while (v128 < *(v126 + 16))
    {
      v130 = *(v126 + 32 + 16 * v128);
      v181 = result;
      v132 = result[2];
      v131 = result[3];
      if (v132 >= v131 >> 1)
      {
        v160 = *(v126 + 32 + 16 * v128);
        v165 = v129;
        sub_23A975DC0((v131 > 1), v132 + 1, 1);
        v130 = v160;
        v129 = v165;
        result = v181;
      }

      ++v128;
      *&v133 = vadd_f32(*&v129, *&v130);
      *(&v133 + 2) = *(&v130 + 2) + 0.0;
      HIDWORD(v133) = 0;
      result[2] = v132 + 1;
      *&result[2 * v132 + 4] = v133;
      if (v127 == v128)
      {
        goto LABEL_50;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_50:
  sub_23A9119A0(result);
  v134 = v105[3];
  v135 = *(v134 + 16);
  result = MEMORY[0x277D84F90];
  if (!v135)
  {
LABEL_56:
    sub_23A9119A0(result);

    type metadata accessor for RoomCaptureMesh();
    result = swift_allocObject();
    result[2] = v186;
    result[3] = v185;
    result[4] = v184;
    return result;
  }

  v182 = MEMORY[0x277D84F90];
  sub_23A975DC0(0, v135, 0);
  v136 = 0;
  result = v182;
  v137 = 0uLL;
  while (v136 < *(v134 + 16))
  {
    v138 = *(v134 + 32 + 16 * v136);
    v183 = result;
    v140 = result[2];
    v139 = result[3];
    if (v140 >= v139 >> 1)
    {
      v166 = *(v134 + 32 + 16 * v136);
      sub_23A975DC0((v139 > 1), v140 + 1, 1);
      v138 = v166;
      v137 = 0uLL;
      result = v183;
    }

    ++v136;
    *&v141 = vsubq_f32(v137, v138).u64[0];
    *(&v141 + 2) = 0.0 - v138.f32[2];
    HIDWORD(v141) = 0;
    result[2] = v140 + 1;
    *&result[2 * v140 + 4] = v141;
    if (v135 == v136)
    {
      goto LABEL_56;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_23A8FA5A0(float32x2_t *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, unint64_t a8, int a9)
{
  v125 = a5;
  v126 = a4;
  v127 = a3;
  v129.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v128.n128_u64[0] = *(v129.n128_u64[0] - 8);
  MEMORY[0x28223BE20](v129.n128_u64[0]);
  v16 = &v114 - v15;
  v17 = MEMORY[0x277D84F90];
  v133 = MEMORY[0x277D84F90];
  v134 = MEMORY[0x277D84F90];
  v132 = MEMORY[0x277D84F90];
  v124 = a9;
  v121 = a1;
  v122 = a2;
  v123 = a8;
  v130 = sub_23A8F4B4C(a1, a2, a8, a9 & 1, v127);
  v18 = v130[2];
  inited = *(v18 + 16);
  if (inited)
  {
    v131 = v17;

    sub_23A975DC0(0, inited, 0);
    v20 = *(v18 + 16);
    v17 = v131;
    v21 = 2;
    v22 = v126.n128_f32[0];
    while (v20)
    {
      if ((v21 - 2) >= *(v18 + 16))
      {
        goto LABEL_70;
      }

      v23 = v130[3];
      if ((v21 - 2) >= *(v23 + 16))
      {
        goto LABEL_71;
      }

      v24 = *(v18 + 16 * v21);
      v25 = *(v23 + 16 * v21);
      v131 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      a8 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v120 = v24;
        v119 = v25;
        sub_23A975DC0((v26 > 1), v27 + 1, 1);
        v25 = v119;
        v24 = v120;
        v22 = v126.n128_f32[0];
        v17 = v131;
      }

      v28 = vmuls_lane_f32(v22, v25, 2);
      *&v29 = vaddq_f32(v24, vmulq_n_f32(v25, v22)).u64[0];
      *(&v29 + 1) = COERCE_UNSIGNED_INT(v24.f32[2] + v28);
      *(v17 + 16) = a8;
      *(v17 + 16 * v27 + 32) = v29;
      --v20;
      ++v21;
      if (!--inited)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_10:
  sub_23A9119A0(v17);
  v30 = v130;

  sub_23A9119A0(v31);

  sub_23A911A8C(v32);
  v34 = v30[4];
  a8 = *(v34 + 16);
  v35 = MEMORY[0x277D84F90];
  if (a8)
  {
    v131 = MEMORY[0x277D84F90];

    sub_23A975E54(0, a8, 0);
    v35 = v131;
    v36 = 32;
    v37 = v134;
    do
    {
      v38 = *(v37 + 16);
      if (HIDWORD(v38))
      {
        goto LABEL_72;
      }

      v39 = *(v34 + v36);
      v40 = v39 + v38;
      if (__CFADD__(v39, v38))
      {
        goto LABEL_73;
      }

      v131 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      inited = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_23A975E54((v41 > 1), v42 + 1, 1);
        v35 = v131;
      }

      *(v35 + 16) = inited;
      *(v35 + 4 * v42 + 32) = v40;
      v36 += 4;
      --a8;
    }

    while (a8);
  }

  sub_23A912078(v35, v33);
  v43 = v130[2];
  v44 = *(v43 + 16);
  inited = MEMORY[0x277D84F90];
  if (v44)
  {
    v131 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v44, 0);
    v45 = *(v43 + 16);
    inited = v131;
    v46 = 2;
    v9 = 0;
    v47 = 0uLL;
    v48 = v125.n128_f32[0];
    do
    {
      if (!v45)
      {
        goto LABEL_75;
      }

      if ((v46 - 2) >= *(v43 + 16))
      {
        goto LABEL_76;
      }

      v49 = v130[3];
      if ((v46 - 2) >= *(v49 + 16))
      {
        goto LABEL_77;
      }

      v50 = *(v43 + 16 * v46);
      v51 = *(v49 + 16 * v46);
      v131 = inited;
      v53 = *(inited + 16);
      v52 = *(inited + 24);
      a8 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v120 = v50;
        v119 = v51;
        sub_23A975DC0((v52 > 1), v53 + 1, 1);
        v51 = v119;
        v50 = v120;
        v47 = 0uLL;
        v48 = v125.n128_f32[0];
        inited = v131;
      }

      v51.i64[0] = vaddq_f32(v50, vmulq_n_f32(vsubq_f32(v47, v51), v48)).u64[0];
      v51.i64[1] = COERCE_UNSIGNED_INT(v50.f32[2] + ((0.0 - v51.f32[2]) * v48));
      *(inited + 16) = a8;
      *(inited + 16 * v53 + 32) = v51;
      --v45;
      ++v46;
      --v44;
    }

    while (v44);
  }

  sub_23A9119A0(inited);
  v54 = v130[3];
  v55 = *(v54 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v131 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v55, 0);
    v57 = 0;
    v56 = v131;
    v58 = 0uLL;
    v9 = 0;
    while (v57 < *(v54 + 16))
    {
      v59 = *(v54 + 32 + 16 * v57);
      v131 = v56;
      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      a8 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v120 = v59;
        sub_23A975DC0((v60 > 1), v61 + 1, 1);
        v59 = v120;
        v58 = 0uLL;
        v56 = v131;
      }

      ++v57;
      *&v62 = vsubq_f32(v58, v59).u64[0];
      *(&v62 + 2) = 0.0 - v59.f32[2];
      HIDWORD(v62) = 0;
      *(v56 + 16) = a8;
      *(v56 + 16 * v61 + 32) = v62;
      if (v55 == v57)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_74;
  }

LABEL_33:
  sub_23A9119A0(v56);
  type metadata accessor for CapturedRoom.Surface.Curve(0);
  v63 = objc_opt_self();
  v64 = [v63 radians];
  v65 = v121;
  v66 = v129.n128_u64[0];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v68 = v67;
  v69 = *(v128.n128_u64[0] + 8);
  v70 = v69(v16, v66);
  v70.n128_f32[0] = v68;
  v128 = v70;
  v71 = [v63 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v73 = v72;
  v74 = v69(v16, v66);
  v74.n128_f32[0] = v73;
  v129 = v74;
  v74.n128_u64[0] = vmul_n_f32(COERCE_FLOAT32X2_T(--0.0000305175998), v127.n128_f32[0]);
  v127 = v74;
  v118 = type metadata accessor for CurvedElement();
  inited = swift_initStackObject();
  v75 = v129.n128_u32[0];
  *(inited + 16) = v128.n128_u32[0];
  *(inited + 20) = v75;
  *(inited + 24) = v127.n128_u64[0];
  v9 = *v65;
  v10 = v65[1].f32[0];
  v121 = sub_23A8F99A8(inited, v123, v124 & 1, 0, *v65, v10, v126.n128_f32[0], v125.n128_f32[0]);
  v76 = v121[4];
  a8 = *(*&v76 + 16);
  v77 = MEMORY[0x277D84F90];
  if (a8)
  {
    v131 = MEMORY[0x277D84F90];

    sub_23A975E54(0, a8, 0);
    v77 = v131;
    v78 = 32;
    v79 = v134;
    do
    {
      v80 = *(v79 + 16);
      if (HIDWORD(v80))
      {
        goto LABEL_78;
      }

      v81 = *(*&v76 + v78);
      v82 = v81 + v80;
      if (__CFADD__(v81, v80))
      {
        goto LABEL_79;
      }

      v131 = v77;
      v84 = *(v77 + 16);
      v83 = *(v77 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_23A975E54((v83 > 1), v84 + 1, 1);
        v77 = v131;
      }

      *(v77 + 16) = v84 + 1;
      *(v77 + 4 * v84 + 32) = v82;
      v78 += 4;
      --a8;
    }

    while (a8);
  }

  sub_23A911A8C(v77);

  sub_23A9119A0(v85);

  sub_23A9119A0(v86);
  a8 = v122;
  if (v122 >> 62)
  {
    goto LABEL_82;
  }

  v87 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v87)
  {
LABEL_83:

    v111 = v133;
    v110 = v134;
    v112 = v132;
    type metadata accessor for RoomCaptureMesh();
    v113 = swift_allocObject();
    v113[2] = v110;
    v113[3] = v111;
    v113[4] = v112;
    return;
  }

LABEL_43:
  if (v87 >= 1)
  {
    v119.i64[0] = inited;
    inited = 0;
    v88 = a8 & 0xC000000000000001;
    v89 = a8 + 32;
    v90.i64[0] = __PAIR64__(v129.n128_u32[0], v128.n128_u32[0]);
    v91 = vabds_f32(v128.n128_f32[0], v129.n128_f32[0]);
    v92 = v127.n128_f32[1];
    v93 = vabds_f32(v127.n128_f32[0], v127.n128_f32[1]);
    v90.i64[1] = v127.n128_u64[0];
    v117 = v90;
    while (1)
    {
      if (v88)
      {
        v94 = MEMORY[0x23EE90360](inited, a8);
      }

      else
      {
        v94 = *(v89 + 8 * inited);
      }

      v95.i64[0] = *(v94 + 16);
      if (vabds_f32(v95.f32[0], v95.f32[1]) < 0.00000011921 || (v96 = *(v94 + 24), vabds_f32(*&v96, *(&v96 + 1)) < 0.00000011921) || v91 < 0.00000011921 || v93 < 0.00000011921 || v95.f32[0] >= v129.n128_f32[0] || v95.f32[1] <= v128.n128_f32[0] || v92 <= *&v96 || *(&v96 + 1) <= v127.n128_f32[0])
      {
      }

      else
      {
        v114 = v89;
        v115 = v88;
        v95.i64[1] = v96;
        v116 = v95;
        v120 = vmovl_s16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgeq_f32(v117, v95))), vmovn_s32(vcgtq_f32(v95, v117))));
        v97 = swift_initStackObject();
        *(v97 + 16) = vbslq_s8(v120, v117, v116);
        v116.i64[0] = sub_23A8F99A8(v97, v123, v124 & 1, 1, v9, v10, v126.n128_f32[0], v125.n128_f32[0]);
        v98 = *(v116.i64[0] + 32);
        v99 = *(v98 + 16);
        if (v99)
        {
          v131 = MEMORY[0x277D84F90];

          sub_23A975E54(0, v99, 0);
          v100 = v131;
          v101 = v134;
          a8 = 32;
          v120.i64[0] = v98;
          while (1)
          {
            v102 = *(v101 + 16);
            if (HIDWORD(v102))
            {
              break;
            }

            v103 = *(v98 + a8);
            v104 = v103 + v102;
            if (__CFADD__(v103, v102))
            {
              goto LABEL_81;
            }

            v131 = v100;
            v106 = *(v100 + 16);
            v105 = *(v100 + 24);
            if (v106 >= v105 >> 1)
            {
              v107 = v101;
              sub_23A975E54((v105 > 1), v106 + 1, 1);
              v101 = v107;
              v100 = v131;
            }

            *(v100 + 16) = v106 + 1;
            *(v100 + 4 * v106 + 32) = v104;
            a8 += 4;
            --v99;
            v98 = v120.i64[0];
            if (!v99)
            {

              a8 = v122;
              goto LABEL_68;
            }
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          v87 = sub_23AA0D7F4();
          if (!v87)
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }

        v100 = MEMORY[0x277D84F90];
LABEL_68:
        sub_23A911A8C(v100);

        sub_23A9119A0(v108);

        sub_23A9119A0(v109);

        v88 = v115;
        v89 = v114;
      }

      if (++inited == v87)
      {
        goto LABEL_83;
      }
    }
  }

  __break(1u);
}