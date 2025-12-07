void compute_ideal_endpoint_formats()
{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1255, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1221, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1188, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1339, "quant_level_mod[i] >= QUANT_6 && quant_level_mod[i] <= QUANT_256");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1338, "quant_level[i] >= QUANT_6 && quant_level[i] <= QUANT_256");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1248, "partition_count == 4");
}

{
  __assert_rtn("compute_error_squared_rgb_single_partition", "astcenc_pick_best_endpoint_format.cpp", 90, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1109, "partition_count > 0");
}

void prepare_angular_tables(void)
{
  v0 = 0;
  v1 = sin_table;
  v2 = cos_table;
  do
  {
    v3 = 0;
    ++v0;
    v4 = v2;
    v5 = v1;
    do
    {
      v6 = __sincosf_stret((v0 * 0.099733) * v3);
      *v5 = v6.__sinval;
      v5 += 32;
      *v4 = v6.__cosval;
      v4 += 32;
      ++v3;
    }

    while (v3 != 64);
    ++v1;
    ++v2;
  }

  while (v0 != 32);
}

void compute_angular_endpoints_1plane(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = 8;
  if (result)
  {
    v5 = 4;
  }

  v6 = *(a2 + v5);
  if (!v6)
  {
    compute_angular_endpoints_1plane();
  }

  v28 = result;
  v9 = 0;
  v10 = (a5 + 187840);
  v11 = (a5 + 204224);
  v26 = a5 + 207008;
  v27 = a5 + 204224;
  v12 = ~(-1 << (a4 + 1));
  v13 = (a2 + 66);
  v14 = (a2 + 594);
  v15 = v6 << 6;
  v16 = (a2 + 66);
  do
  {
    v17 = *v16;
    v16 += 3;
    if ((v17 & v12) != 0)
    {
      v18 = *(v13 - 2);
      if (v18 >= a4)
      {
        v18 = a4;
      }

      if (v18 >= 7)
      {
        v19 = 7;
      }

      else
      {
        v19 = v18;
      }

      compute_angular_endpoints_for_quant_levels(*v14, (a3 + 4 * (v9 & 0xFFFFFFC0)), v19, v11, v11 + 696);
    }

    v9 += 64;
    v11 += 8;
    v14 += 129888;
    v13 = v16;
  }

  while (v15 != v9);
  v20 = 20;
  if (v28)
  {
    v20 = 16;
  }

  v21 = *(a2 + v20);
  if (!v21)
  {
    compute_angular_endpoints_1plane();
  }

  v22 = (a2 + 11304946);
  do
  {
    if (v22[3])
    {
      compute_angular_endpoints_1plane();
    }

    v23 = v22[1];
    if (v23 > 7)
    {
      *v10 = 0.0;
      v25 = 1.0;
    }

    else
    {
      v24 = *v22;
      *v10 = *(v27 + 32 * v24 + 4 * v23);
      v25 = *(v26 + 32 * v24 + 4 * v23);
    }

    v10[2048] = v25;
    ++v10;
    v22 += 6;
    --v21;
  }

  while (v21);
}

void compute_angular_endpoints_for_quant_levels(uint64_t a1, const float *a2, int a3, float *a4, float *a5)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = steps_for_quant_level[a3];
  memset(v94, 0, sizeof(v94));
  if (!a1)
  {
    compute_angular_endpoints_for_quant_levels();
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  v12 = vdupq_n_s32(0x427C0000u);
  memset(__b, 0, 256);
  v13.i64[0] = 0x3F0000003FLL;
  v13.i64[1] = 0x3F0000003FLL;
  v14 = vdupq_n_s32(0x4B400000u);
  do
  {
    __b[v9 / 4] = vandq_s8(vaddq_f32(vmulq_f32(*&a2[v9], v12), v14), v13);
    v10 += 4;
    v9 += 4;
  }

  while (v10 < a1);
  v15 = 0;
  v16 = 4 * a1;
  v83 = vdupq_n_s32(0x3E8F5C29u);
  v84 = vdupq_n_s32(0x3FC90FDBu);
  __asm { FMOV            V0.4S, #1.0 }

  v87 = _Q0;
  v81 = vdupq_n_s32(0x3E22F983u);
  v82 = vdupq_n_s32(0x40490FDBu);
  do
  {
    v22 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v25 = *(__b + v22) << 7;
      v24 = vaddq_f32(v24, *(&cos_table[v15] + v25));
      v23 = vaddq_f32(v23, *(&sin_table[v15] + v25));
      v22 += 4;
    }

    while (v16 != v22);
    v85 = v24;
    v86 = v23;
    {
      compute_angular_endpoints_for_quant_levels();
    }

    v26 = vdivq_f32(v86, v85);
    v27 = vmaxq_f32(v26, vsubq_f32(0, v26));
    v28 = vcgtq_f32(vmaxq_f32(v27, vsubq_f32(0, v27)), v87);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v30 = vorrq_s8(vandq_s8(v27, v29), v84);
    v31 = vbslq_s8(v28, vdivq_f32(v87, v27), v27);
    v32 = vdivq_f32(v31, vaddq_f32(vmulq_f32(vmulq_f32(v31, v31), v83), v87));
    v33 = vbslq_s8(v28, vsubq_f32(v30, v32), v32);
    v94[v15 / 4] = vmulq_f32(veorq_s8(vandq_s8(v86, v29), vbslq_s8(vcgtq_u32(select_msb(vfloat4,vfloat4,vmask4)::msb, v85), v33, vsubq_f32(v82, v33))), v81);
    v15 += 4;
  }

  while (v15 < v5);
  v34 = 0;
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  v35 = xmmword_186232C80;
  v36.i64[0] = 0x200000002;
  v36.i64[1] = 0x200000002;
  v37 = vdupq_n_s32(v5 + 3);
  memset(v89, 0, sizeof(v89));
  __asm { FMOV            V3.4S, #4.0 }

  v39 = v87;
  do
  {
    v40.i64[0] = 0xC3000000C3000000;
    v40.i64[1] = 0xC3000000C3000000;
    v41.i64[0] = 0x4300000043000000;
    v41.i64[1] = 0x4300000043000000;
    v42 = a2;
    v43 = v11;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    do
    {
      v47 = *v42++;
      v48 = vsubq_f32(vmulq_n_f32(v35, v47), v94[v34 / 4]);
      v49 = vrndnq_f32(v48);
      v50 = vsubq_f32(v48, v49);
      v46 = vaddq_f32(v46, vmulq_f32(v50, v50));
      v51 = vcgtq_f32(v41, v49);
      v41 = vbslq_s8(v51, v49, v41);
      v52 = vbicq_s8(v44, v51);
      v53 = vaddq_f32(v50, v50);
      v44 = vbslq_s8(vceqq_f32(v49, v41), vsubq_f32(vaddq_f32(v52, v39), v53), v52);
      v54 = vcgtq_f32(v49, v40);
      v40 = vbslq_s8(v54, v49, v40);
      v55 = vbicq_s8(v45, v54);
      v45 = vbslq_s8(vceqq_f32(v49, v40), vaddq_f32(v53, vaddq_f32(v55, v39)), v55);
      --v43;
    }

    while (v43);
    v93[v34 / 4] = v41;
    v92[v34 / 4] = vmaxq_s32(vminq_s32(vcvtq_s32_f32(vaddq_f32(vsubq_f32(v40, v41), v39)), v37), v36);
    v56 = vdivq_f32(v39, v35);
    v57 = vmulq_f32(v56, v56);
    v91[v34 / 4] = vmulq_f32(v57, v46);
    v90[v34 / 4] = vmulq_f32(v57, v44);
    v89[v34 / 4] = vmulq_f32(v57, v45);
    v35 = vaddq_f32(v35, _Q3);
    v34 += 4;
  }

  while (v34 < v5);
  bzero(__b, 0x240uLL);
  memset_pattern16(__b, &unk_186232CA0, 16 * v5 + 64);
  v61 = 0;
  if (v5 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v5;
  }

  do
  {
    v58.i32[0] = *(v91 + v61);
    v59.f32[0] = v58.f32[0] + *(v90 + v61);
    v63 = *(v89 + v61);
    v64 = &__b[*(v92 + v61)];
    LODWORD(v65) = v58.i32[0];
    *(&v65 + 1) = v61;
    v66.i64[1] = 1065353216;
    *v66.i32 = v59.f32[0];
    v67 = v64[-2];
    *&v66.i32[1] = v61;
    v68 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v64[-1], v59)), 0)), v66, v64[-1]);
    v59.f32[0] = v59.f32[0] + v63;
    *&v69 = v58.f32[0] + v63;
    v60.i32[0] = v69;
    *v64 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(*v64, v58)), 0)), v65, *v64);
    *(&v69 + 1) = v61;
    v70 = vcgtq_f32(v68, v60);
    v60.i64[1] = 1065353216;
    v60.i32[0] = v59.i32[0];
    *&v60.i32[1] = v61;
    v71 = vmovl_s16(vdup_lane_s16(vmovn_s32(v70), 0));
    v58 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v67, v59)), 0)), v60, v67);
    v64[-2] = v58;
    v64[-1] = vbslq_s8(v71, v69, v68);
    ++v61;
  }

  while (v62 != v61);
  v72 = steps_for_quant_level;
  if ((a3 + 1) > 1)
  {
    v73 = (a3 + 1);
  }

  else
  {
    v73 = 1;
  }

  do
  {
    v74 = *v72++;
    v75 = &__b[v74];
    v76 = v75[2];
    LODWORD(v75) = v75[1] & ~(v75[1] >> 31);
    v77 = *(v93 + v75) + v76;
    v78 = 1.0 / (v75 + 1.0);
    v79 = *(v94 + v75);
    *a4++ = (v79 + v77) * v78;
    *a5++ = (v79 + ((v77 + v74) + -1.0)) * v78;
    --v73;
  }

  while (v73);
}

uint64_t compute_angular_endpoints_2planes(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1[2];
  if (!v4)
  {
    compute_angular_endpoints_2planes();
  }

  v6 = 0;
  v7 = 0;
  v8 = (a4 + 204224);
  v32 = a4 + 226176;
  v33 = a4 + 207008;
  v9 = (a4 + 228960);
  v37 = ~(-1 << (a3 + 1));
  v10 = a1 + 17;
  v11 = a1 + 594;
  v31 = a4 + 228960;
  v34 = a4 + 204224;
  v12 = a1 + 17;
  v35 = a3;
  do
  {
    v13 = *v12;
    v12 = (v12 + 6);
    if ((v13 & v37) != 0)
    {
      v14 = *v11;
      v15 = *(v10 - 3);
      if (v15 >= a3)
      {
        v15 = a3;
      }

      if (v15 >= 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = v15;
      }

      compute_angular_endpoints_for_quant_levels(*v11, (a2 + 4 * (v6 & 0xFFFFFFC0)), v16, v8, v8 + 696);
      compute_angular_endpoints_for_quant_levels(v14, (a2 + 4 * (v6 & 0xFFFFFFC0) + 128), v16, v9 - 696, v9);
      a3 = v35;
      v4 = a1[2];
    }

    ++v7;
    v6 += 64;
    v8 += 8;
    v9 += 8;
    v11 += 129888;
    v10 = v12;
  }

  while (v7 < v4);
  v18 = a1[5];
  v17 = a1[6];
  result = v33;
  if (v18 < v17)
  {
    v20 = a4 + 4 * v18;
    v21 = (v20 + 217984);
    v22 = v17 - v18;
    v23 = a1 + 6 * v18 + 11304947;
    v24 = (v20 + 187840);
    v25 = v23;
    do
    {
      v27 = *v25;
      v25 += 6;
      v26 = v27;
      if (v27 > 7uLL)
      {
        *v24 = 0;
        v24[2048] = 1065353216;
        v29 = 1.0;
        *(v21 - 2048) = 0.0;
      }

      else
      {
        v28 = *(v23 - 1);
        *v24 = *(v34 + 32 * v28 + 4 * v26);
        v24[2048] = *(v33 + 32 * v28 + 4 * v26);
        *(v21 - 2048) = *(v32 + 32 * v28 + 4 * v26);
        v29 = *(v31 + 32 * v28 + 4 * v26);
      }

      *v21++ = v29;
      ++v24;
      v23 = v25;
      --v22;
    }

    while (v22);
  }

  return result;
}

void compute_angular_endpoints_1plane()
{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 386, "!bm.is_dual_plane");
}

{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 382, "max_block_modes > 0");
}

{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 352, "max_decimation_modes > 0");
}

void compute_angular_endpoints_for_quant_levels()
{
  {
    *&v0 = 0x8000000080000000;
    *(&v0 + 1) = 0x8000000080000000;
    select_msb(vfloat4,vfloat4,vmask4)::msb = v0;
  }
}

{
  __assert_rtn("compute_angular_offsets", "astcenc_weight_align.cpp", 99, "weight_count > 0");
}

void init_partition_tables(block_size_descriptor *a1, uint64_t a2, uint64_t a3, double a4, uint32x2_t a5)
{
  generate_one_partition_info_entry(a1, 1u, 0, 0, a1 + 14659568, a4, a5);
  *(a1 + 8) = 1;
  *(a1 + 12) = 1;
  operator new[]();
}

BOOL generate_one_partition_info_entry(unsigned __int8 *a1, unsigned int a2, int a3, int a4, uint64_t a5, double a6, uint32x2_t a7)
{
  v99 = a3;
  v103 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v100 = (a5 + 8);
  v102 = 0uLL;
  v10 = a1[2];
  if (a1[2])
  {
    v11 = 0;
    v12 = 0;
    v13 = v9 < 0x20;
    v14 = 65537 * ((-287438703 * (a3 + (a2 << 10) - 1024)) ^ ((-287438703 * (a3 + (a2 << 10) - 1024)) >> 5));
    v15 = v14 ^ (v14 >> 7) ^ ((v14 ^ (v14 >> 7)) >> 3);
    v16 = v15 ^ (v15 << 6);
    v17 = v16 ^ (v16 >> 17);
    v18 = (v16 ^ (v16 >> 17)) >> 12;
    HIDWORD(v19) = v17;
    LODWORD(v19) = v17;
    v20 = (v17 & 0xF) * (v17 & 0xF);
    v21 = (v16 ^ (v16 >> 17)) >> 4;
    v22 = v21 * v21;
    v23 = ((v17 >> 8) & 0xF) * ((v17 >> 8) & 0xF);
    v24 = vdup_n_s32(v16);
    v25 = v18 * v18;
    a7.i32[0] = v16;
    v26 = vshl_u32(v24, 0xFFFFFFF0FFFFFFE8);
    v27 = vshl_u32(v24, 0xFFFFFFEEFFFFFFEALL);
    v24.i32[1] = v16 >> 20;
    v28 = vand_s8(v26, 0xF0000000FLL);
    v29.i32[0] = vshr_n_u32(a7, 0x1CuLL).u32[0];
    v29.i32[1] = vand_s8(v24, 0xF0000000FLL).i32[1];
    v30 = vand_s8(v27, 0xF0000000FLL);
    v31 = vmul_s32(v28, v28);
    v32 = vmul_s32(v29, v29);
    v33 = vmul_s32(v30, v30);
    v34 = ((v16 >> 26) & 0xF) * ((v16 >> 26) & 0xF);
    v35 = ((v19 >> 30) & 0xF) * ((v19 >> 30) & 0xF);
    if ((a3 & 2) != 0)
    {
      v36 = 4;
    }

    else
    {
      v36 = 5;
    }

    if (a2 == 3)
    {
      v37 = 6;
    }

    else
    {
      v37 = 5;
    }

    v38 = v17 >> 14;
    v39 = v17 >> 10;
    v40 = vshl_u32(vdup_n_s32(v17), 0xFFFFFFFAFFFFFFFELL);
    v41 = vdup_n_s32(a2);
    v42 = a5 + 224;
    v43 = a1[1];
    if (v99)
    {
      v44 = v36;
    }

    else
    {
      v44 = v37;
    }

    if (v99)
    {
      v36 = v37;
    }

    if ((v99 & 0x10) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = v36;
    }

    v46 = v20 >> v44;
    v47 = v22 >> v36;
    v48 = v23 >> v44;
    v49 = vshl_u32(v31, vneg_s32(vdup_n_s32(v44)));
    v50 = v25 >> v36;
    v51 = vshl_u32(v32, vneg_s32(vdup_n_s32(v36)));
    v52 = vshl_u32(v33, vneg_s32(vdup_n_s32(v45)));
    v53 = v34 >> v45;
    v54 = v35 >> v45;
    v55 = vcgt_s32(0x300000004, v41);
    v56 = a1[1];
    v57 = v100;
    do
    {
      if (v56)
      {
        v58 = 0;
        v59 = *a1;
        v60 = vmul_s32(v52, vdup_n_s32(v12 << v13));
        do
        {
          if (v59)
          {
            v61 = 0;
            v62 = vadd_s32(vmul_s32(v51, vdup_n_s32(v58 << v13)), v60);
            do
            {
              v63 = (v38 + v46 * (v61 << v13) + v47 * (v58 << v13) + v53 * (v12 << v13)) & 0x3F;
              v64 = vand_s8(vbic_s8(vadd_s32(vmla_s32(v40, v49, vdup_n_s32(v61 << v13)), v62), v55), 0x3F0000003FLL);
              if (a2 >= 2)
              {
                v65 = (v39 + v48 * (v61 << v13) + v50 * (v58 << v13) + v54 * (v12 << v13)) & 0x3F;
              }

              else
              {
                v65 = 0;
              }

              v66 = v64.u32[1];
              v67 = v64.i32[0];
              if (v63 < v65 || ((v68 = 0, v63 >= v64.i32[1]) ? (v69 = v63 >= v64.i32[0]) : (v69 = 0), !v69))
              {
                v70 = vcgt_u32(v64, vdup_n_s32(v65));
                if ((v70.i32[1] | v70.i32[0]))
                {
                  if (v66 >= v67)
                  {
                    v68 = 2;
                  }

                  else
                  {
                    v68 = 3;
                  }
                }

                else
                {
                  v68 = 1;
                }
              }

              v71 = v102.i32[v68];
              v102.i32[v68] = v71 + 1;
              *(v42 + 216 * v68 + v71) = v11++;
              *v57++ = v68;
              ++v61;
              v59 = *a1;
            }

            while (v61 < v59);
            v43 = a1[1];
          }

          ++v58;
        }

        while (v58 < v43);
        v10 = a1[2];
        v56 = v43;
      }

      ++v12;
    }

    while (v12 < v10);
  }

  if (a2)
  {
    v72 = 0;
    v73 = a5 + 239;
    do
    {
      v74 = v102.i32[v72];
      v75 = (v74 + 3) & 0xFFFFFFFC;
      if (v74 < v75)
      {
        v76 = 0;
        v77 = *(v74 + a5 + 224 + 216 * v72 - 1);
        v78 = v75 - v74;
        v79 = vdupq_n_s64(v78 - 1);
        v80 = v73 + v74;
        do
        {
          v81 = vdupq_n_s64(v76);
          v82 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EC0)));
          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).u8[0])
          {
            *(v80 + v76 - 15) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).i8[1])
          {
            *(v80 + v76 - 14) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EB0)))), 14).i8[2])
          {
            *(v80 + v76 - 13) = v77;
            *(v80 + v76 - 12) = v77;
          }

          v83 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EA0)));
          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i32[1])
          {
            *(v80 + v76 - 11) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i8[5])
          {
            *(v80 + v76 - 10) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E90))))).i8[6])
          {
            *(v80 + v76 - 9) = v77;
            *(v80 + v76 - 8) = v77;
          }

          v84 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E80)));
          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).u8[0])
          {
            *(v80 + v76 - 7) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).i8[1])
          {
            *(v80 + v76 - 6) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E70)))), 14).i8[2])
          {
            *(v80 + v76 - 5) = v77;
            *(v80 + v76 - 4) = v77;
          }

          v85 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E60)));
          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i32[1])
          {
            *(v80 + v76 - 3) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i8[5])
          {
            *(v80 + v76 - 2) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E50))))).i8[6])
          {
            *(v80 + v76 - 1) = v77;
            *(v80 + v76) = v77;
          }

          v76 += 16;
        }

        while (((v78 + 15) & 0xFFFFFFFFFFFFFFF0) != v76);
      }

      ++v72;
      v73 += 216;
    }

    while (v72 != a2);
  }

  LOWORD(v86) = v102.i16[0];
  if (v102.i32[0])
  {
    v87 = a4;
    if (v102.i32[1])
    {
      if (v102.i32[2])
      {
        if (v102.i32[3])
        {
          v86 = 4;
        }

        else
        {
          v86 = 3;
        }

        v88 = v86;
      }

      else
      {
        LOWORD(v86) = 2;
        v88 = 2;
      }
    }

    else
    {
      LOWORD(v86) = 1;
      v88 = 1;
    }
  }

  else
  {
    v88 = 0;
    v87 = a4;
  }

  *a5 = v86;
  *(a5 + 2) = v99;
  v89 = &a1[32 * v87 + 14707824];
  v90 = &a1[24 * v87 + 14683248];
  v91 = &a1[16 * v87 + 14666864];
  if (a2 != 2)
  {
    v91 = 0;
  }

  if (a2 != 3)
  {
    v90 = v91;
  }

  if (a2 == 4)
  {
    v92 = v89;
  }

  else
  {
    v92 = v90;
  }

  v93 = vmovn_s32(v102);
  *(a5 + 4) = vuzp1_s8(v93, v93).u32[0];
  if (v92)
  {
    if (a2)
    {
      bzero(v92, 8 * a2);
    }

    if (a1[3])
    {
      v94 = 0;
      if (a1[3] >= 0x40u)
      {
        v95 = 64;
      }

      else
      {
        v95 = a1[3];
      }

      do
      {
        v96 = v100[a1[v94 + 14666800]];
        *&v92[8 * v96] |= 1 << v94++;
      }

      while (v95 != v94);
    }
  }

  return v88 == a2;
}

void build_partition_table_for_one_partition_count(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v10 = a4 - 1;
  v29 = a1 + 32;
  *&a1[4 * v10 + 32] = 0;
  v31 = a1 + 48;
  *&a1[4 * v10 + 48] = 0;
  if (a2)
  {
    if (a4 > a3)
    {
      return;
    }

    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v28 = v11;
  bzero(v32, 0x400uLL);
  v14 = 0;
  v15 = 0;
  v30 = &a1[2048 * (a4 - 2) + 14660656];
  do
  {
    for (i = 0; i != 1024; ++i)
    {
      if (v15 == 1)
      {
        if (v32[i])
        {
          continue;
        }

        v17 = v14;
        one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
LABEL_12:
        v19 = a1[3];
        v20 = a6 + 56 * v14;
        *(v20 + 48) = 0;
        v12 = 0.0;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *v20 = 0u;
        v33[0] = -1;
        v33[1] = -1;
        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = *(a5 + 1088 * v17 + 8 + v22);
            v25 = *(v33 + v24);
            if (v25 < 0)
            {
              *(v33 + v24) = v23;
              v25 = v23++;
            }

            *(v20 + 8 * (v22++ >> 5)) |= v25 << (v21 & 0x3E);
            v21 += 2;
          }

          while (v19 != v22);
        }

        if (v14)
        {
          v26 = 0;
          while (1)
          {
            v27 = (a6 + 8 * v26);
            if (*v20 == *v27 && *(v20 + 8) == v27[1] && *(v20 + 16) == v27[2] && *(v20 + 24) == v27[3] && *(v20 + 32) == v27[4] && *(v20 + 40) == v27[5] && *(v20 + 48) == v27[6])
            {
              break;
            }

            v26 += 7;
            if (!--v17)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          if (one_partition_info_entry)
          {
            if (v15)
            {
              continue;
            }

            *&v30[2 * i] = v14;
            ++*&v29[4 * v10];
            ++*&v31[4 * v10];
            v32[i] = 1;
LABEL_32:
            ++v14;
            continue;
          }
        }

        if (v15 != 1)
        {
          continue;
        }

        *&v30[2 * i] = v14;
        ++*&v31[4 * v10];
        goto LABEL_32;
      }

      v17 = v14;
      one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
      if (v15 || one_partition_info_entry)
      {
        goto LABEL_12;
      }
    }

    ++v15;
  }

  while (v15 != v28);
}

uint64_t unpack_weights(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, int32x4_t a14)
{
  v14 = *(a2 + 52);
  v15 = *(a2 + 68);
  v16 = *(a2 + 84);
  v17 = *(a2 + 100);
  if (a4)
  {
    if (*(result + 3))
    {
      v18 = 0;
      v19 = a3 + 6;
      do
      {
        v20 = (v19 + v18);
        v21 = vld1_dup_f32(v20);
        v21.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v21)));
        v22 = v21.u32[0];
        if (v21.i32[0] < 1)
        {
          unpack_weights();
        }

        v23.i64[0] = 0x800000008;
        v23.i64[1] = 0x800000008;
        v24 = a3;
        v25.i64[0] = 0x800000008;
        v25.i64[1] = 0x800000008;
        do
        {
          a13.i32[0] = *(v24 + 222);
          a14.i32[0] = *(v24 + 1086);
          a14 = vmovl_u16(*&vmovl_u8(*a14.i8));
          v26 = vmovl_s16((vmovl_u8(*a13.i8).u64[0] | 0xFF00FF00FF00FF00));
          v25 = vmlaq_s32(v25, a14, vqtbl2q_s8(*&v14, v26));
          a13 = vqtbl2q_s8(*&v16, v26);
          v23 = vmlaq_s32(v23, a14, a13);
          v24 += 216;
          --v22;
        }

        while (v22);
        v27 = 4 * v18;
        *(a5 + v27) = vshrq_n_u32(v25, 4uLL);
        *(a6 + v27) = vshrq_n_u32(v23, 4uLL);
        v18 += 4;
        a3 += 4;
      }

      while (v18 < *(result + 3));
    }
  }

  else if (*(result + 3))
  {
    v28 = 0;
    v29 = a3 + 6;
    do
    {
      v30 = (v29 + v28);
      v31 = vld1_dup_f32(v30);
      v31.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v31)));
      v32 = v31.u32[0];
      if (v31.i32[0] < 1)
      {
        unpack_weights();
      }

      v33.i64[0] = 0x800000008;
      v33.i64[1] = 0x800000008;
      v34 = a3;
      do
      {
        a12.i32[0] = *(v34 + 222);
        a13.i32[0] = *(v34 + 1086);
        a13 = vmovl_u16(*&vmovl_u8(*a13.i8));
        a12 = vqtbl4q_s8(*&v14, vmovl_s16((vmovl_u8(*a12.i8).u64[0] | 0xFF00FF00FF00FF00)));
        v33 = vmlaq_s32(v33, a13, a12);
        v34 += 216;
        --v32;
      }

      while (v32);
      *(a5 + 4 * v28) = vshrq_n_u32(v33, 4uLL);
      v28 += 4;
      a3 += 4;
    }

    while (v28 < *(result + 3));
  }

  return result;
}

float32_t compute_symbolic_block_difference_2plane(unsigned int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    return 1.0e30;
  }

  if (*(a3 + 1) != 1)
  {
    compute_symbolic_block_difference_2plane();
  }

  v6 = *(a2 + 2 * *(a3 + 4) + 11300848);
  if (v6 == 0xFFFF || *(a2 + 28) <= v6)
  {
    symbolic_to_physical();
  }

  if ((*(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304949) & 1) == 0)
  {
    compute_symbolic_block_difference_2plane();
  }

  v10 = a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304946);
  bzero(v59, 0x360uLL);
  bzero(v58, 0x360uLL);
  unpack_weights(a2, a3, v10 + 592, 1, v59, v58, v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = *(a3 + 3);
  v57 = 0uLL;
  v56 = 0uLL;
  v55 = 0;
  v24 = unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v55 + 1, &v55, &v57, &v56, v20, v21, v22, v23);
  v27 = *(a2 + 3);
  if (*(a2 + 3))
  {
    v24.n128_u32[0] = 0;
    v25.i32[0] = a1[10];
    v28 = a4[221];
    v29 = vdupq_lane_s32(v25, 0).u64[0];
    v30 = v59;
    v31 = v58;
    v32 = vceqq_s32(vdupq_n_s32(v19), xmmword_186205980);
    v33 = vshrq_n_s32(v57, 8uLL);
    v34 = vshrq_n_s32(v56, 8uLL);
    v26.i32[0] = *a1;
    v35 = vdupq_lane_s32(*&vceqq_s32(v26, v24), 0);
    v36.i64[0] = 0x4000000040;
    v36.i64[1] = 0x4000000040;
    v37.i64[0] = 0x2000000020;
    v37.i64[1] = 0x2000000020;
    v38 = vdupq_n_s32(0x101u);
    v39 = vdupq_n_s32(0x58635FA9u);
    v40 = vdupq_n_s32(0x7149F2CAu);
    result = -1.0e30;
    v42 = 0uLL;
    do
    {
      v43 = vld1q_dup_f32(v30++);
      v44 = vld1q_dup_f32(v31++);
      v45 = v56;
      v46 = v57;
      if (!*a1)
      {
        v45 = v34;
        v46 = v33;
      }

      v47 = vbslq_s8(v32, v44, v43);
      v48 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v46, vsubq_s32(v36, v47)), v45, v47), v37), 6uLL);
      v49 = vcvtq_f32_s32(vbslq_s8(v35, vmulq_s32(v48, v38), v48));
      v45.i32[0] = a4->i32[0];
      v50 = a4[162].f32[0];
      if ((a1[1] & 0x40) != 0)
      {
        if (v49.f32[3] == 0.0)
        {
          return result;
        }

        *&v51 = vmuls_lane_f32(v49.f32[3], v49, 2) * *v25.i32;
        v49.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v49, v49, 3), *v25.i32).u64[0];
        v49.i64[1] = __PAIR64__(1.0, v51);
        v45.i32[1] = a4[54].i32[0];
        *v45.f32 = vmul_f32(vmul_n_f32(*v45.f32, v50), v29);
        v45.f32[2] = (a4[108].f32[0] * v50) * *v25.i32;
        v45.i32[3] = 1.0;
      }

      else
      {
        v45.i32[1] = a4[54].i32[0];
        v45.i32[2] = a4[108].i32[0];
        v45.i32[3] = a4[162].i32[0];
      }

      v52 = vsubq_f32(v45, v49);
      v53 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v39);
      v54 = vmulq_f32(vmulq_f32(v53, v53), v28);
      *v54.i8 = vadd_f32(*&vextq_s8(v54, v54, 8uLL), *v54.i8);
      v42 = vaddq_f32(v42, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v54.i8, *v54.i8), 0), v40));
      a4 = (a4 + 4);
      --v27;
    }

    while (v27);
  }

  else
  {
    v42.i32[0] = 0;
  }

  return v42.f32[0];
}

double compute_symbolic_block_difference_1plane(unsigned int *a1, block_size_descriptor *this, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = this + 11300848;
  v6 = *(this + *(a3 + 4) + 5650424);
  if (v6 == 0xFFFF || *(this + 7) <= v6)
  {
    symbolic_to_physical();
  }

  if (*(this + 6 * *(this + *(a3 + 4) + 5650424) + 11304949))
  {
    compute_symbolic_block_difference_1plane();
  }

  if (*a3)
  {
    v11 = *(a3 + 1);
    partition_info = block_size_descriptor::get_partition_info(this, *(a3 + 1), *(a3 + 6));
    v13 = *&v5[2 * *(a3 + 4)];
    if (v13 == 0xFFFF || *(this + 7) <= v13)
    {
      symbolic_to_physical();
    }

    v15 = partition_info;
    v16 = this + 129888 * *(this + 6 * *&v5[2 * *(a3 + 4)] + 11304946);
    bzero(v64, 0x360uLL);
    unpack_weights(this, a3, (v16 + 592), 0, v64, 0, v17, v18, v19, v20, v21, v22, v23, v24);
    if (!v11)
    {
      a5.i64[0] = 0;
      return *a5.i64;
    }

    v25.i32[0] = 0;
    v59 = v25;
    v29 = 0;
    v30 = v15 + 4;
    v31 = (v15 + 224);
    a5 = 0uLL;
    v57 = vdupq_n_s32(0x58635FA9u);
    v58 = vdupq_n_s32(0x101u);
    v56 = vdupq_n_s32(0x7149F2CAu);
    do
    {
      v60 = a5;
      v63 = 0uLL;
      v62 = 0uLL;
      v61 = 0;
      unpack_color_endpoints(*a1, *(a3 + 8 + v29), (a3 + 20 + 8 * v29), &v61 + 1, &v61, &v63, &v62, a5, v26, v27, v28);
      v33 = v30[v29];
      if (v30[v29])
      {
        v26 = v62;
        v27.i32[0] = a1[10];
        v28 = a4[221];
        v34 = vdupq_lane_s32(*v27.i8, 0).u64[0];
        v35 = vshrq_n_s32(v63, 8uLL);
        v36 = vshrq_n_s32(v62, 8uLL);
        v32.i32[0] = *a1;
        v37 = vdupq_lane_s32(*&vceqq_s32(v32, v59), 0);
        v38 = v31;
        a5 = v60;
        v39.i64[0] = 0x4000000040;
        v39.i64[1] = 0x4000000040;
        v40.i64[0] = 0x2000000020;
        v40.i64[1] = 0x2000000020;
        while (1)
        {
          v41 = v62;
          v42 = v63;
          if (!*a1)
          {
            v41 = v36;
            v42 = v35;
          }

          v43 = *v38++;
          v44 = &v64[v43];
          v45 = vld1q_dup_f32(v44);
          v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v42, vsubq_s32(v39, v45)), v41, v45), v40), 6uLL);
          v47 = vcvtq_f32_s32(vbslq_s8(v37, vmulq_s32(v46, v58), v46));
          v42.i32[0] = a4->i32[v43];
          v48 = a4[54].i32[v43];
          v49 = a4[108].f32[v43];
          v50 = a4[162].f32[v43];
          if ((a1[1] & 0x40) != 0)
          {
            if (v47.f32[3] == 0.0)
            {
              a5.i32[0] = -246811958;
              return *a5.i64;
            }

            v51 = vmuls_lane_f32(v47.f32[3], v47, 2);
            v47.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v47, v47, 3), *v27.i32).u64[0];
            v47.f32[2] = v51 * *v27.i32;
            v47.i32[3] = 1.0;
            v42.i32[1] = v48;
            *v42.f32 = vmul_f32(vmul_n_f32(*v42.f32, v50), v34);
            v42.f32[2] = (v49 * v50) * *v27.i32;
            v42.i32[3] = 1.0;
          }

          else
          {
            v42.i32[1] = v48;
            v42.i64[1] = __PAIR64__(LODWORD(v50), LODWORD(v49));
          }

          v52 = vsubq_f32(v42, v47);
          v53 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v57);
          v54 = vmulq_f32(vmulq_f32(v53, v53), v28);
          *v54.i8 = vadd_f32(*&vextq_s8(v54, v54, 8uLL), *v54.i8);
          a5 = vaddq_f32(a5, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v54.i8, *v54.i8), 0), v56));
          if (!--v33)
          {
            goto LABEL_23;
          }
        }
      }

      a5 = v60;
LABEL_23:
      ++v29;
      v31 += 216;
    }

    while (v29 != v11);
  }

  else
  {
    a5.i32[0] = 1900671690;
  }

  return *a5.i64;
}

void compute_symbolic_block_difference_1plane_1partition(unsigned int *a1, block_size_descriptor *this, uint64_t a3, float32x4_t *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (*block_size_descriptor::get_partition_info(this, *(a3 + 1), *(a3 + 6)) != 1)
    {
      compute_symbolic_block_difference_1plane_1partition();
    }

    v8 = *(this + *(a3 + 4) + 5650424);
    if (v8 == 0xFFFF || *(this + 7) <= v8)
    {
      symbolic_to_physical();
    }

    v10 = this + 129888 * *(this + 6 * *(this + *(a3 + 4) + 5650424) + 11304946);
    bzero(v62, 0x360uLL);
    unpack_weights(this, a3, (v10 + 592), 0, v62, 0, v11, v12, v13, v14, v15, v16, v17, v18);
    v61 = 0uLL;
    v60 = 0uLL;
    v59 = 0;
    unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v59 + 1, &v59, &v61, &v60, v19, v20, v21, v22);
    if (*a1)
    {
      v23 = 1;
    }

    else
    {
      v60 = vshrq_n_s32(v60, 8uLL);
      v61 = vshrq_n_s32(v61, 8uLL);
      v23 = 257;
    }

    v24 = *(this + 3);
    if (*(this + 3))
    {
      v25 = 0;
      v26 = vdupq_n_s32(v23);
      v27 = vdupq_lane_s32(*v60.i8, 0);
      v28 = vdupq_lane_s32(*v60.i8, 1);
      v29 = vdupq_laneq_s32(v60, 2);
      v30 = vdupq_laneq_s32(v60, 3);
      v31 = vdupq_lane_s32(*v61.i8, 0);
      v32 = vdupq_lane_s32(*v61.i8, 1);
      v33 = xmmword_186205980;
      v34 = vdupq_n_s32(0x58635FA9u);
      v35 = v62;
      v36.i64[0] = 0x4000000040;
      v36.i64[1] = 0x4000000040;
      v37 = vdupq_laneq_s32(v61, 2);
      v38 = vdupq_laneq_s32(v61, 3);
      v39.i64[0] = 0x2000000020;
      v39.i64[1] = 0x2000000020;
      v40.i64[0] = 0x400000004;
      v40.i64[1] = 0x400000004;
      v41 = a4[221];
      v42 = 0uLL;
      v43 = vdupq_n_s32(v24);
      do
      {
        v44 = *v35++;
        v45 = vsubq_s32(v36, v44);
        v46 = vmulq_s32(v37, v45);
        v47 = vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v38, v45), v30, v44), v39), 6uLL), v26);
        v48 = vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v32, v45), v28, v44), v39), 6uLL), v26));
        v49 = vsubq_f32(*a4, vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v31, v45), v27, v44), v39), 6uLL), v26)));
        v50 = vminnmq_f32(vmaxq_f32(v49, vsubq_f32(0, v49)), v34);
        v51 = vsubq_f32(a4[54], v48);
        v52 = vsubq_f32(a4[108], vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(v46, v29, v44), v39), 6uLL), v26)));
        v53 = vminnmq_f32(vmaxq_f32(v51, vsubq_f32(0, v51)), v34);
        v54 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v34);
        v55 = vsubq_f32(a4[162], vcvtq_f32_s32(v47));
        v56 = vminnmq_f32(vmaxq_f32(v55, vsubq_f32(0, v55)), v34);
        v57 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v56, v56), v41, 3), vaddq_f32(vmulq_laneq_f32(vmulq_f32(v54, v54), v41, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v50, v50), v41.f32[0]), vmulq_lane_f32(vmulq_f32(v53, v53), *v41.f32, 1))));
        v58 = vcgtq_s32(v43, v33);
        v33 = vaddq_s32(v33, v40);
        v42 = vaddq_f32(v42, vandq_s8(v57, v58));
        v25 += 4;
        ++a4;
      }

      while (v25 < v24);
    }
  }
}

void unpack_weights()
{
  __assert_rtn("unpack_weights", "astcenc_decompress_symbolic.cpp", 121, "max_weight_count > 0");
}

{
  __assert_rtn("unpack_weights", "astcenc_decompress_symbolic.cpp", 156, "max_weight_count > 0");
}

void compute_symbolic_block_difference_2plane()
{
  __assert_rtn("compute_symbolic_block_difference_2plane", "astcenc_decompress_symbolic.cpp", 340, "scb.partition_count == 1");
}

{
  __assert_rtn("compute_symbolic_block_difference_2plane", "astcenc_decompress_symbolic.cpp", 341, "bsd.get_block_mode(scb.block_mode).is_dual_plane == 1");
}

void load_image_block(__int32 a1, int *a2, int8x16_t *a3, unsigned __int8 *a4, __int32 a5, int a6, int a7, _DWORD *a8, float a9)
{
  v11 = a3;
  v12 = a2[1];
  v78 = *a2;
  v13 = a2[2];
  a3[249].i32[1] = a5;
  a3[249].i32[2] = a6;
  a3[249].i32[3] = a7;
  if (a8[3] == 3 && a8[2] == 2 && a8[1] == 1 && *a8 == 0)
  {
    v17 = swz_texel_skip;
  }

  else
  {
    v17 = swz_texel;
  }

  LOBYTE(a9) = a4[3];
  v18 = 1.0 / LODWORD(a9);
  v19.i32[0] = a1 & 0xFFFFFFFE;
  v19.i32[1] = a1;
  v20 = vceq_s32(v19, 0x300000002);
  v21 = vuzp1_s16(v20, v19);
  v22 = vzip1_s16(v21, v21);
  v22.i16[2] = v21.i16[0];
  v23 = v20.i8[0] & 1;
  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  v70 = vmovl_u16(v22);
  v25 = vandq_s8(v70, v24);
  v26 = a2[3];
  v27 = load_texel_u8;
  if (v26 == 2)
  {
    v27 = load_texel_f32;
  }

  if (v26 == 1)
  {
    v28 = load_texel_f16;
  }

  else
  {
    v28 = v27;
  }

  {
    v69 = v20.i8[0] & 1;
    v85 = v18;
    v93 = v22;
    v96 = v20.i8[4];
    v91 = v25;
    compute_ideal_colors_and_weights_1plane();
    v25 = v91;
    v22 = v93;
    v20.i8[4] = v96;
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    v18 = v85;
    v23 = v69;
  }

  v29 = &unk_1EA8DB000;
  v30 = encode_texel_lns;
  if (!vaddvq_s32(vshlq_u32(v25, mask(vmask4)::shift)))
  {
    v30 = encode_texel_unorm;
  }

  v31 = a4[2];
  if (a4[2])
  {
    v83 = v30;
    v86 = v17;
    v87 = a8;
    v32 = 0;
    v33 = 0;
    v34 = v20.i8[4] & 1;
    v74 = v12 - 1;
    v35 = a4[1];
    v36 = vdupq_n_s32(0xFE967699);
    v37 = vdupq_n_s32(0x7E967699u);
    v73 = &v11[235].i8[9];
    v38 = 0uLL;
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v40 = v35;
    v75 = v11;
    v84 = v18;
    v82 = vmovl_s16(v22);
    do
    {
      v41 = v33 + a7;
      if (v33 + a7 >= v13 - 1)
      {
        v41 = v13 - 1;
      }

      if (v40)
      {
        v42 = 0;
        v43 = *(*(a2 + 2) + 8 * v41);
        v44 = *a4;
        v79 = v33;
        do
        {
          if (v44)
          {
            v45 = 0;
            v46 = a5;
            v80 = v42;
            v81 = v32;
            v47 = v42 + a6;
            if (v42 + a6 >= v74)
            {
              v47 = v74;
            }

            v88 = v47 * v78;
            v48 = &v11->i32[v32];
            v49 = &v73[v32];
            do
            {
              v94 = v39;
              v89 = v38;
              v90 = v37;
              v92 = v36;
              if (v46 >= v78 - 1)
              {
                v50 = v78 - 1;
              }

              else
              {
                v50 = v46;
              }

              v51 = v23;
              v28(v43, 4 * (v50 + v88));
              v52 = v86(v87);
              *v53.i64 = v83(v52, v82);
              v23 = v51;
              v37 = vminnmq_f32(v90, v53);
              v38 = vaddq_f32(v89, vmulq_n_f32(v53, v84));
              v36 = vmaxnmq_f32(v92, v53);
              v54 = vextq_s8(v53, v53, 4uLL);
              v39 = vandq_s8(v94, vceqq_f32(vdupq_lane_s32(*v53.f32, 0), vzip1q_s32(v54, v54)));
              v48[216] = v53.i32[1];
              v48[432] = v53.i32[2];
              *v48 = v53.i32[0];
              v48[648] = v53.i32[3];
              *(v49 - 216) = v51;
              *v49++ = v34;
              ++v45;
              v44 = *a4;
              ++v48;
              ++v46;
            }

            while (v45 < v44);
            v42 = v80;
            v32 = v81 + v45;
            v35 = a4[1];
            v11 = v75;
            v33 = v79;
          }

          ++v42;
        }

        while (v42 < v35);
        v31 = a4[2];
        v40 = v35;
      }

      ++v33;
    }

    while (v33 < v31);
    v24 = vshrq_n_u32(v39, 0x1FuLL);
    v29 = &unk_1EA8DB000;
  }

  else
  {
    v37 = vdupq_n_s32(0x7E967699u);
    v36 = vdupq_n_s32(0xFE967699);
    v38 = 0uLL;
  }

  v55 = *v11;
  v55.i32[1] = v11[54].i32[0];
  v55.i32[2] = v11[108].i32[0];
  v55.i32[3] = v11[162].i32[0];
  v56 = vdivq_f32(v55, vdupq_n_s32(0x477FFF00u));
  v57 = 0uLL;
  if (v23)
  {
    v58 = vcvtq_s32_f32(v55);
    v59.i64[0] = 0x700000007;
    v59.i64[1] = 0x700000007;
    v60 = vandq_s8(v58, v59);
    v61 = vmovn_s32(v60);
    v62.i64[0] = 0x100000001;
    v62.i64[1] = 0x100000001;
    v63 = vcgtq_u32(v60, v62);
    v64.i64[0] = 0x100000001;
    v64.i64[1] = 0x100000001;
    v65 = vaddq_s32(vshlq_n_s32(v60, 2uLL), v64);
    v64.i64[0] = 0x500000005;
    v64.i64[1] = 0x500000005;
    v66 = vcgtq_u32(v60, v64);
    v64.i16[1] = 5;
    v64.i16[3] = 5;
    v67.i64[0] = 0x700000007;
    v67.i64[1] = 0x700000007;
    v68 = vorrq_s8(vshrq_n_u32(vbslq_s8(v63, vbslq_s8(v66, vmlal_u16(v67, v61, *v64.i8), v65), vmull_u16(v61, 0x3000300030003)), 3uLL), vshlq_n_s32(vshrq_n_u32(v58, 0xBuLL), 0xAuLL));
    v66.i64[0] = 0x7B0000007BLL;
    v66.i64[1] = 0x7B0000007BLL;
    v57 = vcvtq_f32_f16(vmovn_s32(vminq_s32(v68, v66)));
  }

  v11[217] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v70, 0x1FuLL)), v57, v56);
  v11[218] = v37;
  v11[219] = v38;
  v11[220] = v36;
  {
    v95 = v24;
    compute_ideal_colors_and_weights_1plane();
    v24 = v95;
  }

  v11[222].i8[0] = vaddvq_s32(vshlq_u32(v24, v29[116])) == 15;
}

double load_texel_u8(char *a1, int a2)
{
  v2 = &a1[a2];
  v3 = vld1_dup_f32(v2);
  *&result = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

__n64 swz_texel(unsigned int *a1, __n128 a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x3F80000000000000;
  result.n64_u32[0] = v3.n128_u32[*a1];
  result.n64_u32[1] = v3.n128_u32[a1[1]];
  return result;
}

double encode_texel_lns(float32x4_t a1, int8x16_t a2)
{
  v2 = vdupq_n_s32(0x477FFF00u);
  v3 = vmulq_f32(a1, v2);
  v4 = *&vshrq_n_u32(a1, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL);
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = *&vandq_s8(a1, vnegq_f32(v5)) | __PAIR128__(0x3F0000003F000000, 0x3F0000003F000000);
  v7 = vcgtq_f32(a1, vdupq_n_s32(0x32800000u));
  v8 = vcgeq_f32(a1, vdupq_n_s32(0x47800000u));
  v9.i64[0] = 0x7000000070;
  v9.i64[1] = 0x7000000070;
  v10.i64[0] = 0x4C0000004C000000;
  v10.i64[1] = 0x4C0000004C000000;
  v11 = vmulq_f32(a1, v10);
  v10.i64[0] = 0xBF000000BF000000;
  v10.i64[1] = 0xBF000000BF000000;
  v12 = vbslq_s8(vcgtq_u32(v4, v9), vmulq_f32(vaddq_f32(v6, v10), vdupq_n_s32(0x45800000u)), v11);
  v10.i64[0] = 0x4300000043000000;
  v10.i64[1] = 0x4300000043000000;
  v13.i64[0] = 0x4400000044000000;
  v13.i64[1] = 0x4400000044000000;
  v14 = vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_n_s32(0x43C00000u), v12), vmulq_f32(v12, vdupq_n_s32(0x3FAAAAABu)), vbslq_s8(vcgeq_f32(vdupq_n_s32(0x44B00000u), v12), vaddq_f32(v12, v10), vmulq_f32(vaddq_f32(v12, v13), vdupq_n_s32(0x3F4CCCCDu)))), vcvtq_f32_u32(vshlq_n_s32(vqsubq_u32(v4, v9), 0xBuLL)));
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vbslq_s8(a2, vandq_s8(vbslq_s8(v8, v2, vaddq_f32(v14, _Q4)), v7), v3).u64[0];
  return result;
}

void load_image_block_fast_ldr(double a1, double a2, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, int *a8, float32x4_t *a9, unsigned __int8 *a10, unsigned int a11, unsigned __int32 a12, __int32 a13)
{
  v14 = *a8;
  v13 = a8[1];
  a9[249].i32[1] = a11;
  a9[249].i32[2] = a12;
  a9[249].i32[3] = a13;
  v15 = a10[1] + a12;
  if (v15 <= a12)
  {
    v22 = vdupq_n_s32(0xFE967699);
    v21 = vdupq_n_s32(0x7E967699u);
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v24 = 0uLL;
  }

  else
  {
    v16 = 0;
    v17 = **(a8 + 2);
    v18 = 4 * v14;
    v19 = v13 - 1;
    v20 = *a10;
    v21 = vdupq_n_s32(0x7E967699u);
    v22 = vdupq_n_s32(0xFE967699);
    v23 = v14 - 1;
    v24 = 0uLL;
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    do
    {
      if (v20 + a11 > a11)
      {
        if (a12 >= v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = a12;
        }

        v27 = v17 + v18 * v26;
        v28 = &a9->i32[v16];
        v29 = v20;
        v30 = a11;
        do
        {
          if (v30 >= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = v30;
          }

          a6.i32[0] = *(v27 + 4 * v31);
          a6 = vcvtq_f32_u32(vmovl_u16(vmul_s16(*&vmovl_u8(*a6.f32), 0x101010101010101)));
          v21 = vminnmq_f32(v21, a6);
          v24 = vaddq_f32(v24, a6);
          v22 = vmaxnmq_f32(v22, a6);
          v32 = vextq_s8(a6, a6, 4uLL);
          v25 = vandq_s8(v25, vceqq_f32(vdupq_lane_s32(*a6.f32, 0), vzip1q_s32(v32, v32)));
          *v28 = a6.i32[0];
          v28[216] = a6.i32[1];
          v28[432] = a6.i32[2];
          v28[648] = a6.i32[3];
          ++v30;
          ++v28;
          ++v16;
          --v29;
        }

        while (v29);
      }

      ++a12;
    }

    while (a12 != v15);
    v33 = vshrq_n_u32(v25, 0x1FuLL);
  }

  v34 = *a9;
  v34.i32[1] = a9[54].i32[0];
  v34.i32[2] = a9[108].i32[0];
  v34.i32[3] = a9[162].i32[0];
  a9[217] = vdivq_f32(v34, vdupq_n_s32(0x477FFF00u));
  a9[222].i8[1] = 0;
  a9[235].i8[9] = 0;
  a9[218] = v21;
  v21.i8[0] = a10[3];
  v21.f32[0] = v21.u32[0];
  a9[219] = vdivq_f32(v24, vdupq_lane_s32(*v21.f32, 0));
  a9[220] = v22;
  {
    v36 = a9;
    v35 = v33;
    compute_ideal_colors_and_weights_1plane();
    v33 = v35;
    a9 = v36;
  }

  a9[222].i8[0] = vaddvq_s32(vshlq_u32(v33, mask(vmask4)::shift)) == 15;
}

void init_block_size_descriptor(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, float a6, block_size_descriptor *a7)
{
  if (a3 >= 2)
  {
    operator new();
  }

  operator new();
}

uint64_t assign_kmeans_texels(uint64_t result, unint64_t *a2)
{
  v2 = result;
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = *(result + 3);
  if (v3 > 0x40)
  {
    v26[0] = 0;
    v26[1] = 0;
    astc::rand_init(v26, a2);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v21 = *(v2 + 3);
    if (*(v2 + 3))
    {
      bzero(v24, v21);
    }

    v22 = 0;
    do
    {
      result = astc::rand(v26, v21);
      v23 = result % *(v2 + 3);
      if ((*(v24 + v23) & 1) == 0)
      {
        *(v2 + 14666800 + v22++) = v23;
        *(v24 + v23) = 1;
      }
    }

    while (v22 < 0x40);
  }

  else if (*(result + 3))
  {
    v4 = 0;
    v5 = (v3 + 15) & 0xF0;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = result + 14666807;
    v8 = xmmword_186205E50;
    v9 = xmmword_186205E60;
    v10 = xmmword_186205E70;
    v11 = xmmword_186205E80;
    v12 = xmmword_186205E90;
    v13 = xmmword_186205EA0;
    v14 = xmmword_186205EB0;
    v15 = xmmword_186205EC0;
    v16 = vdupq_n_s64(0x10uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v6, v15));
      if (vuzp1_s8(vuzp1_s16(v17, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 - 7) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 - 6) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v14))), *&v6).i8[2])
      {
        *(v7 + v4 - 5) = v4 | 2;
        *(v7 + v4 - 4) = v4 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v6, v13));
      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i32[1])
      {
        *(v7 + v4 - 3) = v4 | 4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i8[5])
      {
        *(v7 + v4 - 2) = v4 | 5;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v12)))).i8[6])
      {
        *(v7 + v4 - 1) = v4 | 6;
        *(v7 + v4) = v4 | 7;
      }

      v19 = vmovn_s64(vcgeq_u64(v6, v11));
      if (vuzp1_s8(vuzp1_s16(v19, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 + 1) = v4 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 + 2) = v4 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v10))), *&v6).i8[2])
      {
        *(v7 + v4 + 3) = v4 | 0xA;
        *(v7 + v4 + 4) = v4 | 0xB;
      }

      v20 = vmovn_s64(vcgeq_u64(v6, v9));
      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i32[1])
      {
        *(v7 + v4 + 5) = v4 | 0xC;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i8[5])
      {
        *(v7 + v4 + 6) = v4 | 0xD;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v8)))).i8[6])
      {
        *(v7 + v4 + 7) = v4 | 0xE;
        *(v7 + v4 + 8) = v4 | 0xF;
      }

      v13 = vaddq_s64(v13, v16);
      v4 += 16;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v12 = vaddq_s64(v12, v16);
      v11 = vaddq_s64(v11, v16);
      v10 = vaddq_s64(v10, v16);
      v9 = vaddq_s64(v9, v16);
      v8 = vaddq_s64(v8, v16);
    }

    while (v5 != v4);
  }

  return result;
}

void init_block_size_descriptor()
{
  __assert_rtn("construct_dt_entry_2d", "astcenc_block_sizes.cpp", 776, "maxprec_1plane >= 0 || maxprec_2planes >= 0");
}

{
  __assert_rtn("init_decimation_info_2d", "astcenc_block_sizes.cpp", 266, "texels_per_block > 0");
}

{
  __assert_rtn("construct_dt_entry_2d", "astcenc_block_sizes.cpp", 748, "weight_count <= BLOCK_MAX_WEIGHTS");
}

{
  __assert_rtn("construct_block_size_descriptor_2d", "astcenc_block_sizes.cpp", 962, "bsd.decimation_mode_count_always > 0");
}

{
  __assert_rtn("construct_block_size_descriptor_2d", "astcenc_block_sizes.cpp", 961, "bsd.block_mode_count_1plane_always > 0");
}

{
  __assert_rtn("init_decimation_info_3d", "astcenc_block_sizes.cpp", 452, "texels_per_block > 0");
}

{
  __assert_rtn("init_decimation_info_3d", "astcenc_block_sizes.cpp", 451, "weights_per_block > 0");
}

uint64_t compute_pixel_region_variance(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v186 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v159 = *(a2 + 12);
  v160 = *(a2 + 11);
  v157 = *(a2 + 13);
  v12 = *(a2 + 7);
  v13 = *(a2 + 8);
  v14 = *(a1 + 120);
  v181 = *(a2 + 9);
  v182 = a2[7];
  v15 = 2 * v12;
  result = (2 * v12) | 1u;
  v164 = *(a2 + 24);
  v165 = v12;
  if (!*(a2 + 24))
  {
    v12 = 0;
  }

  v180 = *(a2 + 8);
  v17 = result + v13;
  v174 = result + *(a2 + 9);
  v161 = v15;
  if (*(a2 + 24))
  {
    v18 = v15 + 1;
  }

  else
  {
    v18 = 0;
  }

  v166 = *(a2 + 10);
  v176 = (v18 + *(a2 + 10));
  v179 = *v7;
  v19 = v7[3];
  v156 = v7[1];
  v158 = result;
  if (v19)
  {
    if (v19 == 1)
    {
      DWORD2(v184) = 1006632960;
      if (v176 > v164)
      {
        v20 = v164;
        v169 = v157 - v164 - v12;
        v21 = v159 + ~v165;
        v22 = (v13 + v15 + 1);
        v23 = (v181 + v15 + 1);
        v24 = v182 + 16;
        result = (v22 * v23);
        v25 = result * v164;
        v26 = 16 * (v180 + v161 + 1);
        do
        {
          v27 = v7[2] - 1;
          if (v169 + v20 <= v27)
          {
            v27 = (v169 + v20) & ~((v169 + v20) >> 31);
          }

          if (v174 >= 2)
          {
            v28 = (v24 + 16 * (v22 + result * v176 + v25));
            v29 = *(*(v7 + 2) + 8 * v27);
            v30 = 1;
            v31 = (v24 + 16 * ((v180 + v161 + 1) + v25));
            do
            {
              v32 = v7[1] - 1;
              if (v21 + v30 <= v32)
              {
                v32 = (v21 + v30) & ~((v21 + v30) >> 31);
              }

              v33 = v22 - 1;
              v34 = v160 - v165;
              v35 = v31;
              v36 = v28;
              if (v17 >= 2)
              {
                do
                {
                  v37 = v34 & ~(v34 >> 31);
                  if (v34 > *v7 - 1)
                  {
                    v37 = *v7 - 1;
                  }

                  *&v184 = *(v29 + 2 * (4 * v37 + 4 * *v7 * v32));
                  v38.i16[0] = *(&v184 + v8);
                  v38.i16[1] = *(&v184 + v9);
                  v38.i16[2] = *(&v184 + v10);
                  v38.i16[3] = *(&v184 + v11);
                  v39 = vcvtq_f32_f16(v38);
                  *v35++ = v39;
                  *v36++ = vmulq_f32(v39, v39);
                  ++v34;
                  --v33;
                }

                while (v33);
              }

              ++v30;
              v28 = (v28 + v26);
              v31 = (v31 + v26);
            }

            while (v30 != v23);
          }

          ++v20;
          v25 += result;
        }

        while (v20 != v176);
      }
    }

    else
    {
      if (v19 != 2)
      {
        compute_pixel_region_variance();
      }

      v185 = 0x3F80000000000000;
      if (v176 > v164)
      {
        v62 = v164;
        v171 = v157 - v164 - v12;
        v63 = v159 + ~v165;
        v64 = (v13 + v15 + 1);
        v65 = (v181 + v15 + 1);
        v66 = v182 + 16;
        result = (v64 * v65);
        v67 = 16 * (v180 + v161 + 1);
        v68 = &v184 + v9;
        v69 = result * v164;
        v70 = &v184 + v10;
        v71 = &v184 + v11;
        do
        {
          v72 = v7[2] - 1;
          if (v171 + v62 <= v72)
          {
            v72 = (v171 + v62) & ~((v171 + v62) >> 31);
          }

          if (v174 >= 2)
          {
            v73 = (v66 + 16 * (v64 + result * v176 + v69));
            v74 = *(*(v7 + 2) + 8 * v72);
            v75 = 1;
            v76 = (v66 + 16 * ((v180 + v161 + 1) + v69));
            do
            {
              if (v63 + v75 <= v7[1] - 1)
              {
                v77 = (v63 + v75) & ~((v63 + v75) >> 31);
              }

              else
              {
                v77 = v7[1] - 1;
              }

              v78 = v64 - 1;
              v79 = v160 - v165;
              v80 = v76;
              v81 = v73;
              if (v17 >= 2)
              {
                do
                {
                  v82 = v79 & ~(v79 >> 31);
                  if (v79 > *v7 - 1)
                  {
                    v82 = *v7 - 1;
                  }

                  v184 = *(v74 + 4 * (4 * v82 + 4 * *v7 * v77));
                  v83.i32[0] = *(&v184 + v8);
                  v83.i32[1] = *v68;
                  v83.i32[2] = *v70;
                  v83.i32[3] = *v71;
                  *v80++ = v83;
                  *v81++ = vmulq_f32(v83, v83);
                  ++v79;
                  --v78;
                }

                while (v78);
              }

              ++v75;
              v73 = (v73 + v67);
              v76 = (v76 + v67);
            }

            while (v75 != v65);
          }

          ++v62;
          v69 += result;
        }

        while (v62 != v176);
      }
    }
  }

  else
  {
    WORD2(v184) = -256;
    if (v176 > v164)
    {
      v40 = v164;
      v170 = v157 - v164 - v12;
      v41 = v159 + ~v165;
      v42 = (v13 + v15 + 1);
      v43 = (v181 + v15 + 1);
      v44 = v182 + 16;
      result = (v42 * v43);
      v162 = v42 + result * v176;
      v45 = result * v164;
      v46 = 16 * (v13 + v161 + 1);
      v47 = v42 - 1;
      v48 = vdupq_n_s32(0x3B808081u);
      do
      {
        v49 = v7[2] - 1;
        if (v170 + v40 <= v49)
        {
          v49 = (v170 + v40) & ~((v170 + v40) >> 31);
        }

        if (v174 >= 2)
        {
          v50 = (v44 + 16 * (v162 + v45));
          v51 = *(*(v7 + 2) + 8 * v49);
          v52 = 1;
          v53 = (v44 + 16 * ((v180 + v161 + 1) + v45));
          do
          {
            if (v41 + v52 <= v7[1] - 1)
            {
              v54 = (v41 + v52) & ~((v41 + v52) >> 31);
            }

            else
            {
              v54 = v7[1] - 1;
            }

            v55 = v47;
            v56 = v160 - v165;
            v57 = v53;
            v58 = v50;
            if (v17 >= 2)
            {
              do
              {
                v59 = v56 & ~(v56 >> 31);
                if (v56 > *v7 - 1)
                {
                  v59 = *v7 - 1;
                }

                LODWORD(v184) = *(v51 + (4 * v59 + 4 * *v7 * v54));
                v60.i16[0] = *(&v184 + v8);
                v60.i16[1] = *(&v184 + v9);
                v60.i16[2] = *(&v184 + v10);
                v60.i16[3] = *(&v184 + v11);
                v61 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v60)), v48);
                *v57++ = v61;
                *v58++ = vmulq_f32(v61, v61);
                ++v56;
                --v55;
              }

              while (v55);
            }

            ++v52;
            v50 = (v50 + v46);
            v53 = (v53 + v46);
          }

          while (v52 != v43);
        }

        ++v40;
        v45 += result;
      }

      while (v40 != v176);
    }
  }

  v163 = v176 - 1;
  if (v176 >= 1)
  {
    v84 = 0;
    v85 = v181 + v161 + 1;
    v86 = v180 + v161 + 1;
    v87 = v86 * v85 * v176;
    v88 = v182;
    result = v174;
    do
    {
      v89 = (v181 + v161 + 1);
      v90 = v88;
      if (v174 >= 1)
      {
        do
        {
          *v90 = 0uLL;
          v90[v87] = 0uLL;
          v90 += v86;
          --v89;
        }

        while (v89);
      }

      v91 = (v180 + v161 + 1);
      v92 = v88;
      if (v17 >= 1)
      {
        do
        {
          *v92 = 0uLL;
          v92[v87] = 0uLL;
          ++v92;
          --v91;
        }

        while (v91);
      }

      ++v84;
      v88 += v86 * v85;
    }

    while (v84 != v176);
  }

  if (v164 && v174 >= 1)
  {
    v93 = 0;
    v94 = (v181 + v161 + 1);
    v95 = v182;
    do
    {
      v96 = (v180 + v161 + 1);
      v97 = v95;
      if (v17 >= 1)
      {
        do
        {
          *v97 = 0uLL;
          v97[(v180 + v161 + 1) * v94 * v176] = 0uLL;
          ++v97;
          --v96;
        }

        while (v96);
      }

      ++v93;
      v95 += (v180 + v161 + 1);
    }

    while (v93 != v94);
  }

  v98 = v17 * v174;
  if (v176 > v164)
  {
    v99 = v182;
    v100 = (v181 + v161 + 1);
    v101 = v180 + v161 + 1;
    v172 = v101 * v100;
    v102 = v180 + v101 * v100 * v164 + v161 + 2;
    v167 = v100 - 1;
    v103 = v164;
    do
    {
      v104 = v167;
      v105 = v102;
      if (v174 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v182 + 16 * v105, v17 - 1, 1);
          result = brent_kung_prefix_sum(v182 + 16 * v98 * v176 + 16 * v105, v17 - 1, 1);
          v99 = v182;
          v105 += v101;
          --v104;
        }

        while (v104);
      }

      ++v103;
      v102 += v172;
    }

    while (v103 != v176);
    v106 = v174 - 1;
    v107 = (v180 + v161 + 1);
    v108 = v107 + v107 * (v181 + v161);
    v109 = v164;
    v110 = v107 + v164 * v108;
    v111 = v99 + 16 * v110 + 16;
    v173 = 16 * v108;
    v112 = v99 + 16 * (v110 + v108 * v176) + 16;
    v168 = v107 - 1;
    do
    {
      v113 = v168;
      v114 = v112;
      v115 = v111;
      if (v17 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v115, v106, v17);
          result = brent_kung_prefix_sum(v114, v106, v17);
          v115 += 16;
          v114 += 16;
          --v113;
        }

        while (v113);
      }

      ++v109;
      v111 += v173;
      v112 += v173;
    }

    while (v109 != v176);
  }

  if (v164 && v174 >= 2)
  {
    v116 = (v180 + v161 + 1);
    v175 = (v181 + v161 + 1);
    v117 = (v181 + v161 + 2) * v116;
    v118 = 16 * v116 * v175 * v176;
    v177 = v116 - 1;
    v119 = 1;
    do
    {
      if (v17 >= 2)
      {
        v120 = v182 + 16 + 16 * v117;
        v121 = v177;
        do
        {
          brent_kung_prefix_sum(v120, v163, v98);
          result = brent_kung_prefix_sum(v120 + v118, v163, v98);
          v120 += 16;
          --v121;
        }

        while (v121);
      }

      ++v119;
      v117 += v180 + v161 + 1;
    }

    while (v119 != v175);
  }

  if (v164)
  {
    v122 = v158;
  }

  else
  {
    v122 = 1.0;
  }

  v123 = 1.0 / ((v122 * v158) * v158);
  if (v164)
  {
    if (v166 >= 1)
    {
      v124 = 0;
      v125 = v17;
      v126 = v182 + 12;
      v127 = v161 + 1;
      v128 = v161 + 1 + v180;
      v183 = (v127 + v180) * v127;
      v129 = (v127 + v180) * (v127 + v181);
      result = 16 * v128;
      v178 = (v127 + v180 + v129) * v127;
      v130 = v129 * (v161 + 1);
      v131 = v160 + v179 * (v159 + v157 * v156);
      v132 = v126;
      do
      {
        if (v181 >= 1)
        {
          v133 = 0;
          v134 = v126 + 16 * v130;
          v135 = v131;
          v136 = v178;
          v137 = v132;
          v138 = v183;
          do
          {
            if (v180 >= 1)
            {
              v139 = 0;
              v140 = v161 + 1;
              v141 = v135;
              do
              {
                *(v14 + 4 * v141) = v123 * ((((*(v134 + v139) - *(v126 + 16 * (v165 + 1 + v165 + v124) * v98 + 16 * v133 * v125 + 16 * v140)) - *(v126 + 16 * v136 + v139)) + *(v126 + 16 * (v136 + v140))) - (((*(v137 + v139) - *(v126 + 16 * v124 * v98 + 16 * v133 * v125 + 16 * v140)) - *(v126 + 16 * v138 + v139)) + *(v126 + 16 * (v138 + v140))));
                v139 += 16;
                ++v141;
                ++v140;
              }

              while (16 * v180 != v139);
            }

            ++v133;
            v138 += v128;
            v137 += result;
            v136 += v128;
            v134 += result;
            v135 += v179;
          }

          while (v133 != v181);
        }

        ++v124;
        v183 += v129;
        v132 += 16 * v129;
        v178 += v129;
        v130 += v129;
        v131 += v156 * v179;
      }

      while (v124 != v166);
    }
  }

  else if (v181 >= 1)
  {
    v142 = 0;
    v143 = v182 + 12;
    v144 = v161 + 1 + v180;
    v145 = v144 * (v161 + 1);
    v146 = v160 + v159 * v179;
    v147 = (v182 + 12);
    do
    {
      if (v180 >= 1)
      {
        v148 = (v143 + 16 * v145);
        result = v143 + 16 * v142 * v17;
        v149 = v180;
        v150 = v161 + 1;
        v151 = v146;
        v152 = v147;
        do
        {
          v153 = *v152;
          v152 += 4;
          v154 = v153 - *(result + 16 * v150);
          v155 = *v148;
          v148 += 4;
          *(v14 + 4 * v151++) = v123 * ((v154 - v155) + *(v143 + 16 * (v145 + v150++)));
          --v149;
        }

        while (v149);
      }

      ++v142;
      v145 += v144;
      v147 += 4 * v144;
      v146 += v179;
    }

    while (v142 != v181);
  }

  return result;
}

uint64_t brent_kung_prefix_sum(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 2;
    v4 = 1;
    do
    {
      v5 = a2 >> v4;
      if (a2 >> v4)
      {
        v6 = result;
        do
        {
          *(v6 + 16 * a3 * (v3 - 1)) = vaddq_f32(*(v6 + 16 * a3 * (v3 - 1)), *(v6 + a3 * (16 * v3 - 16 * (v3 >> 1) - 16)));
          v6 += 16 * (a3 << v4);
          --v5;
        }

        while (v5);
      }

      ++v4;
      v3 *= 2;
    }

    while (v3 <= a2);
    do
    {
      --v4;
      v7 = v3 >> 1;
      v8 = (a2 - (v3 >> 2)) >> v4;
      if (v8)
      {
        v10 = result;
        do
        {
          v9 = 16 * a3 * (v7 + (v3 >> 2) - 1);
          *(v10 + v9) = vaddq_f32(*(v10 + v9), *(v10 + a3 * (16 * v7 - 16)));
          v10 += 16 * (a3 << v4);
          --v8;
        }

        while (v8);
      }

      v11 = v3 > 5;
      v3 >>= 1;
    }

    while (v11);
  }

  return result;
}

uint64_t init_compute_averages(int *a1, int a2, _OWORD *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (v6 <= 1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v6 > 1)
  {
    v9 = 2 * a2 + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 > 1)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v6 < v8)
  {
    v8 = a1[2];
  }

  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = a1;
  *(a4 + 8) = *a3;
  *(a4 + 24) = v6 > 1;
  *(a4 + 28) = a2;
  *(a4 + 64) = v4;
  *(a4 + 68) = v5;
  *(a4 + 72) = v6;
  *(a4 + 76) = v7;
  *(a4 + 80) = v8;
  *(a4 + 84) = 2 * (v7 + ((2 * a2) | 1)) * (v7 + ((2 * a2) | 1)) * (v8 + v9);
  return (v6 + v8 - 1) / v8 * ((v5 + v7 - 1) >> v10);
}

uint64_t get_ise_sequence_bitcount(int a1, unsigned int a2)
{
  if (a2 > 0x14)
  {
    return 1024;
  }

  else
  {
    return (((ise_sizes[a2] >> 5) | 1) + (ise_sizes[a2] & 0x3Fu) * a1 - 1) / ((ise_sizes[a2] >> 5) | 1u);
  }
}

unsigned __int8 *encode_ise(unsigned __int8 *result, unsigned int a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  if (!a2)
  {
    encode_ise();
  }

  if (result >= 0x15)
  {
    __break(1u);
  }

  else
  {
    v5 = btq_counts[result];
    v6 = v5 & 0x3F;
    v7 = ~(-1 << v5);
    if ((v5 & 0x40) != 0)
    {
      if (a2 >= 5)
      {
        v11 = a2 / 5;
        v12 = v6 + 2;
        v13 = ~(-4 << v6);
        v14 = ~(-2 << v6);
        v15 = a3 + 2;
        result = (3 * v6 + 5);
        v10 = 5 * (a2 / 5);
        do
        {
          v17 = *(v15 - 1) >> v6;
          v18 = *(v15 - 2);
          v19 = integer_of_trits[81 * (v15[2] >> v6) + 27 * (v15[1] >> v6) + 9 * (*v15 >> v6) + 2 * v17 + v17 + (v18 >> v6)];
          *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v13 << (a5 & 7)) | (((((v19 & 3) << v6) | v18 & v7) & v13) << (a5 & 7));
          v20 = a5 + v12;
          *(a4 + (v20 >> 3)) = *(a4 + (v20 >> 3)) & ~(v13 << ((a5 + v12) & 7)) | (((*(v15 - 1) & v7 | (((v19 >> 2) & 3) << v6)) & v13) << ((a5 + v12) & 7));
          v16 = 2 * v6 + 4;
          *(a4 + ((v16 + a5) >> 3)) = *(a4 + ((v16 + a5) >> 3)) & ~(v14 << ((v16 + a5) & 7)) | (((*v15 & v7 | (((v19 >> 4) & 1) << v6)) & v14) << ((v16 + a5) & 7));
          *(a4 + ((result + a5) >> 3)) = *(a4 + ((result + a5) >> 3)) & ~(v13 << ((result + a5) & 7)) | (((v15[1] & v7 | (((v19 >> 5) & 3) << v6)) & v13) << ((result + a5) & 7));
          v21 = 4 * v6 + 7 + a5;
          *(a4 + (v21 >> 3)) = *(a4 + (v21 >> 3)) & ~(v14 << (v21 & 7)) | (((v15[2] & v7 | (v19 >> 7 << v6)) & v14) << (v21 & 7));
          a5 = v20 + v12 + v6 + 1 + v12 + v6 + 1;
          v15 += 5;
          --v11;
        }

        while (v11);
      }

      else
      {
        v10 = 0;
      }

      if (a2 != v10)
      {
        v22 = v10 + 3 >= a2 ? 0 : a3[v10 + 3] >> v6;
        v24 = v10 + 2 >= a2 ? 0 : a3[v10 + 2] >> v6;
        v25 = v10 + 1 >= a2 ? 0 : a3[v10 + 1] >> v6;
        v26 = a2 - v10;
        if (a2 > v10)
        {
          v27 = &a3[v10];
          v28 = integer_of_trits[27 * v22 + 9 * v24 + 3 * v25 + (*v27 >> v6)];
          v29 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
          v30 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
          do
          {
            v31 = *v27++;
            v32 = v31 & v7;
            LOBYTE(v31) = *v29++;
            v33 = v28 >> v31;
            v34 = *v30++;
            result = (a4 + (a5 >> 3));
            *result = *result & ~(~(-1 << (v34 + v6)) << (a5 & 7)) | (((((v33 & ~(-1 << v34)) << v6) | v32) & ~(-1 << (v34 + v6))) << (a5 & 7));
            a5 += v34 + v6;
            --v26;
          }

          while (v26);
        }
      }
    }

    else if ((btq_counts[result] & 0x80) != 0)
    {
      if (a2 >= 3)
      {
        v35 = a2 / 3;
        v37 = ~(-4 << v6);
        v38 = a3 + 2;
        v23 = 3 * (a2 / 3);
        result = integer_of_quints;
        do
        {
          v40 = *(v38 - 1) >> v6;
          v41 = *(v38 - 2);
          v42 = integer_of_quints[25 * (*v38 >> v6) + 4 * v40 + v40 + (v41 >> v6)];
          *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(~(-8 << v6) << (a5 & 7)) | (((((v42 & 7) << v6) | v41 & v7) & ~(-8 << v6)) << (a5 & 7));
          v36 = v6 + 3;
          *(a4 + ((v36 + a5) >> 3)) = *(a4 + ((v36 + a5) >> 3)) & ~(v37 << ((v36 + a5) & 7)) | (((*(v38 - 1) & v7 | (((v42 >> 3) & 3) << v6)) & v37) << ((v36 + a5) & 7));
          v43 = *v38;
          v38 += 3;
          v39 = 2 * v6 + 5;
          *(a4 + ((v39 + a5) >> 3)) = *(a4 + ((v39 + a5) >> 3)) & ~(v37 << ((v39 + a5) & 7)) | (((v43 & v7 | (((v42 >> 5) & 3) << v6)) & v37) << ((v39 + a5) & 7));
          a5 += 3 * v6 + 7;
          --v35;
        }

        while (v35);
      }

      else
      {
        v23 = 0;
      }

      if (a2 != v23)
      {
        if (v23 + 1 >= a2)
        {
          v44 = 0;
        }

        else
        {
          v44 = a3[v23 + 1] >> v6;
        }

        v45 = a2 - v23;
        if (a2 > v23)
        {
          v46 = &a3[v23];
          v47 = integer_of_quints[5 * v44 + (*v46 >> v6)];
          v48 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
          v49 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
          do
          {
            v50 = *v46++;
            v51 = v50 & v7;
            LOBYTE(v50) = *v48++;
            v52 = v47 >> v50;
            v53 = *v49++;
            result = (a4 + (a5 >> 3));
            *result = *result & ~(~(-1 << (v53 + v6)) << (a5 & 7)) | (((((v52 & ~(-1 << v53)) << v6) | v51) & ~(-1 << (v53 + v6))) << (a5 & 7));
            a5 += v53 + v6;
            --v45;
          }

          while (v45);
        }
      }
    }

    else
    {
      v8 = a2;
      do
      {
        v9 = *a3++;
        *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v7 << (a5 & 7)) | ((v9 & v7) << (a5 & 7));
        a5 += v6;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t ktxCheckHeader1_(int8x16_t *a1, uint64_t a2)
{
  if (a1->i64[0] != 0xBB31312058544BABLL || a1->i32[2] != 169478669)
  {
    return 15;
  }

  v5 = a1->i32[3];
  if (v5 != 67305985)
  {
    if (v5 != 16909060)
    {
      return 1;
    }

    v6 = a2;
    v7 = a1;
    _ktxSwapEndian32(a1 + 1, 0xCuLL);
    v8 = v7[1].u32[1];
    v3 = 1;
    if (v8 > 4)
    {
      return v3;
    }

    a1 = v7;
    a2 = v6;
    if (((1 << v8) & 0x16) == 0)
    {
      return v3;
    }
  }

  *a2 = 0;
  v9 = a1[1].i32[0];
  v10 = a1[1].i32[2];
  if (v9 && v10)
  {
    if (v10 == a1[1].i32[3])
    {
      return 1;
    }
  }

  else
  {
    v3 = 1;
    if (v9 + v10)
    {
      return v3;
    }

    *a2 = 1;
    if (v10 == a1[1].i32[3])
    {
      return 1;
    }
  }

  v11 = a1[2].u32[1];
  if (!v11)
  {
    return 1;
  }

  v13 = a1[2].u32[2];
  v12 = a1[2].u32[3];
  if (v12)
  {
    if (v13)
    {
      v14 = a1[3].i32[0];
      if (v14)
      {
        return 16;
      }

      v15 = 3;
      goto LABEL_26;
    }

    return 1;
  }

  if (!v13)
  {
    v14 = 0;
    v15 = 1;
LABEL_26:
    *(a2 + 2) = v15;
    goto LABEL_27;
  }

  *(a2 + 2) = 2;
  v14 = 1;
LABEL_27:
  v16 = a1[3].i32[1];
  if (v16 != 1 && (v16 != 6 || !v14))
  {
    return 1;
  }

  v17 = a1[3].i32[2];
  if (v17)
  {
    v18 = 0;
    LOBYTE(v17) = v17 - 1;
  }

  else
  {
    v18 = 1;
    a1[3].i32[2] = 1;
  }

  *(a2 + 1) = v18;
  if (v11 <= v13)
  {
    v11 = v13;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  return v11 >> v17 == 0;
}

uint64_t ktxCheckHeader2_(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0xBB30322058544BABLL || *(a1 + 8) != 169478669)
  {
    return 15;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return 1;
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  if (!v5)
  {
    if (v6)
    {
      *(a2 + 2) = 2;
      v7 = 1;
      v8 = *(a1 + 36);
      if (v8 == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      *(a2 + 2) = 1;
      v8 = *(a1 + 36);
      if (v8 == 1)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    return 16;
  }

  *(a2 + 2) = 3;
  v8 = *(a1 + 36);
  if (v8 != 1)
  {
LABEL_17:
    if (v8 != 6 || !v7)
    {
      return 1;
    }
  }

LABEL_19:
  v9 = *(a1 + 40);
  if (v9)
  {
    *(a2 + 1) = 0;
    if (v9 > 0x20)
    {
      return 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
    *(a2 + 1) = 1;
    *(a1 + 40) = 1;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v4 >> (v9 - 1) == 0;
}

_DWORD *createDFDUnpacked(int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v9 = a3 * a2;
  if (a5 == 8)
  {
    v10 = 131329;
  }

  else
  {
    v10 = 65793;
  }

  if (a1)
  {
    v11 = malloc_type_malloc(16 * v9 + 28, 0x100004052888210uLL);
    v12 = v11;
    *v11 = 16 * v9 + 28;
    v11[1] = 0;
    v11[2] = (v9 << 20) + 1572866;
    v11[3] = v10;
    v11[4] = 0;
    v11[5] = v9;
    v11[6] = 0;
    if (a2 < 1)
    {
      return v12;
    }

    v13 = a3 - 1;
    if (a3 < 1)
    {
      return v12;
    }

    v14 = v11 + 7;
    if (v5 == 2 || v5 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 8 * a3;
      v18 = 8 * a3 - 8;
      v19 = 4 * a3;
      v20 = a3;
      v21 = a2;
      do
      {
        v22 = 0;
        v23 = (v16 & 0x7FFFFFFD) != 0 || v6 == 0;
        v24 = v16 ^ 2;
        if (v23)
        {
          v24 = v16;
        }

        if (v24 == 3)
        {
          v25 = 15;
        }

        else
        {
          v25 = v24;
        }

        v26 = v15;
        v27 = v18;
        do
        {
          v28 = &v14[v26 & 0xFFFFFFFC];
          *v28 = (v25 << 24) | v27 | 0x70000u;
          v28[2] = 0;
          v28[3] = v22++ == 0;
          v27 -= 8;
          v26 += 4;
        }

        while (v20 != v22);
        ++v16;
        v18 += v17;
        v15 += v19;
      }

      while (v16 != v21);
      return v12;
    }

    v35 = 0;
    v36 = 0;
    v37 = 8 * a3;
    v38 = 8 * a3 - 8;
    v39 = 4 * a3;
    v40 = a3;
    v41 = a2;
LABEL_36:
    v42 = 0;
    v43 = (v36 & 0x7FFFFFFD) != 0 || v6 == 0;
    v44 = v36 ^ 2;
    if (v43)
    {
      v44 = v36;
    }

    if (v44 == 3)
    {
      v45 = 15;
    }

    else
    {
      v45 = v44;
    }

    v46 = v45 << 24;
    if (v45 == 15)
    {
      v47 = 520552448;
    }

    else
    {
      v47 = (v45 << 24) | 0x70000;
    }

    v48 = v35;
    v49 = v38;
    while (1)
    {
      v52 = &v14[v48 & 0xFFFFFFFC];
      if (v5 > 5)
      {
        if (v5 == 8)
        {
          v51 = 0;
          v53 = v49 | v47;
LABEL_68:
          *v52 = v53;
          v52[1] = 0;
          v50 = 255;
          goto LABEL_50;
        }

        if (v5 == 7)
        {
          v51 = 0;
          *v52 = v46 | v49 | 0x80070000;
          v52[1] = 0;
          v50 = 1065353216;
          goto LABEL_50;
        }

        if (v5 != 6)
        {
LABEL_67:
          v51 = 0;
          v53 = v46 | v49 | 0x70000;
          goto LABEL_68;
        }

        *v52 = v46 | v49 | 0xC0070000;
        v52[1] = 0;
        v50 = 1065353216;
        v51 = -1082130432;
      }

      else
      {
        if (v5 == 1)
        {
          if (v13 == v42)
          {
            v51 = -128;
          }

          else
          {
            v51 = -256;
          }

          *v52 = v46 | v49 | 0x40070000;
          v52[1] = 0;
          v50 = ~v51;
          if (!v42)
          {
            ++v51;
          }

          goto LABEL_50;
        }

        if (v5 != 3 && v5 != 5)
        {
          goto LABEL_67;
        }

        v50 = v42 == 0;
        *v52 = v46 | v49 | 0x40070000;
        v52[1] = 0;
        v51 = -1;
      }

LABEL_50:
      v52[2] = v51;
      v52[3] = v50;
      ++v42;
      v49 -= 8;
      v48 += 4;
      if (v40 == v42)
      {
        ++v36;
        v38 += v37;
        v35 += v39;
        if (v36 == v41)
        {
          return v12;
        }

        goto LABEL_36;
      }
    }
  }

  v12 = malloc_type_malloc(4 * (4 * a2) + 28, 0x100004052888210uLL);
  *v12 = 16 * a2 + 28;
  v12[1] = 0;
  v12[2] = (a2 << 20) + 1572866;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v9;
  v12[6] = 0;
  if (a2 >= 1)
  {
    v29 = 8 * a3;
    if (v6)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if ((v31 & 0x7FFFFFFD) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 ^ 2;
        }

        writeSample(v12, v31++, v32, v29, v30, 1, 1, v5);
        v30 += v29;
      }

      while (a2 != v31);
    }

    else
    {
      v33 = 0;
      do
      {
        writeSample(v12, v33, v33, v29, v6, 1, 1, v5);
        ++v33;
        v6 += v29;
      }

      while (a2 != v33);
    }
  }

  return v12;
}

uint64_t writeSample(uint64_t result, int a2, int a3, int a4, unsigned int a5, int a6, int a7, int a8)
{
  v8 = (result + 16 * a2);
  if (a3 == 3)
  {
    v9 = 15;
  }

  else
  {
    v9 = a3;
  }

  if (a8 > 5)
  {
    switch(a8)
    {
      case 6:
        v8[7] = ((a4 << 16) + 1073676288) | (v9 << 24) | a5 | 0xC0000000;
        v8[8] = 0;
        v8[9] = -1082130432;
        v8[10] = 1065353216;
        return result;
      case 7:
        v8[7] = ((a4 << 16) + 2147418112) | (v9 << 24) | a5 | 0x80000000;
        v8[8] = 0;
        v8[9] = 0;
        v8[10] = 1065353216;
        return result;
      case 8:
        v10 = v9 << 24;
        if (v9 == 15)
        {
          v10 = 520093696;
        }

        *(v8 + 7) = ((a4 << 16) - 0x10000) | a5 | v10;
LABEL_27:
        if (a4 <= 32)
        {
          v15 = ~(-1 << a4);
        }

        else
        {
          v15 = -1;
        }

        v8[9] = 0;
        v8[10] = v15;
        return result;
    }

LABEL_24:
    *(v8 + 7) = ((a4 << 16) - 0x10000) | (v9 << 24) | a5;
    if (a8 == 2 || a8 == 4)
    {
      v8[9] = 0;
      v8[10] = a7 != 0;
      return result;
    }

    goto LABEL_27;
  }

  if (a8 != 1)
  {
    if (a8 == 3 || a8 == 5)
    {
      *(v8 + 7) = ((a4 << 16) - 0x10000) | (v9 << 24) | a5 | 0x40000000;
      v8[9] = -1;
      v8[10] = a7 != 0;
      return result;
    }

    goto LABEL_24;
  }

  v11 = a4 - 1;
  *(v8 + 7) = (v9 << 24) | ((a4 - 1) << 16) | a5 | 0x40000000;
  if (!a6)
  {
    v11 = a4;
  }

  v12 = -1 << v11;
  if (a4 <= 32)
  {
    v13 = ~v12;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = -v13;
  if (!a7)
  {
    v14 = ~v13;
  }

  v8[9] = v14;
  v8[10] = v13;
  return result;
}

_OWORD *createDFDPacked(int a1, unsigned int a2, int32x4_t *a3, uint64_t a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2 == 6)
  {
    v5 = malloc_type_malloc(0x7CuLL, 0x100004052888210uLL);
    *v5 = xmmword_186233930;
    v5[1] = xmmword_186233940;
    v5[2] = xmmword_186233950;
    v5[3] = xmmword_186233960;
    v5[4] = xmmword_186233970;
    v5[5] = xmmword_186233980;
    v5[6] = xmmword_186233990;
    *(v5 + 14) = 0xF00000000;
    *(v5 + 30) = 31;
    return v5;
  }

  if (!a1)
  {
    if (a2 < 1)
    {
      v33 = 0;
LABEL_34:
      v41 = 16 * a2 + 28;
      v42 = a2;
      v43 = malloc_type_malloc(4 * (4 * a2) + 28, 0x100004052888210uLL);
      v5 = v43;
      *v43 = v41;
      v43[1] = 0;
      v44 = 131329;
      if (a5 != 8)
      {
        v44 = 65793;
      }

      v43[2] = (v42 << 20) + 1572866;
      v43[3] = v44;
      v43[4] = 0;
      v43[5] = v33;
      v43[6] = 0;
      if (v42 >= 1)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          writeSample(v5, v45, *(a4 + 4 * v45), a3->i32[v45], v46, 1, 1, a5);
          v46 += a3->u32[v45++];
        }

        while (v42 != v45);
      }

      return v5;
    }

    if (a2 > 7)
    {
      v20 = a2 & 0x7FFFFFF8;
      v34 = a3 + 1;
      v35 = 0uLL;
      v36 = v20;
      v37 = 0uLL;
      do
      {
        v35 = vaddq_s32(v34[-1], v35);
        v37 = vaddq_s32(*v34, v37);
        v34 += 2;
        v36 -= 8;
      }

      while (v36);
      v21 = vaddvq_s32(vaddq_s32(v37, v35));
      if (v20 == a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v38 = &a3->i32[v20];
    v39 = a2 - v20;
    do
    {
      v40 = *v38++;
      v21 += v40;
      --v39;
    }

    while (v39);
LABEL_33:
    v33 = v21 >> 3;
    goto LABEL_34;
  }

  if (a2 < 1)
  {
    v9 = 0;
    v17 = 24;
  }

  else
  {
    v9 = 0;
    v10 = a2;
    v11 = v49;
    v12 = a2;
    v13 = a3;
    do
    {
      *v11++ = v9;
      v14 = v13->i32[0];
      v13 = (v13 + 4);
      v9 += v14;
      --v12;
    }

    while (v12);
    v15 = 0;
    v16 = 0;
    v17 = (v9 - 1) & 0x18;
    do
    {
      v49[(v16 ^ v17) + 4] = v15;
      v18 = a3->i32[v15] + v16;
      v19 = (v18 - 1) & 0xFFFFFFF8;
      if (v19 != (v16 & 0xFFFFFFF8))
      {
        v49[(v19 ^ v17) + 4] = v15;
        ++a2;
      }

      ++v15;
      v16 = v18;
    }

    while (v10 != v15);
  }

  v22 = 16 * a2 + 28;
  v23 = a2;
  v24 = malloc_type_malloc(4 * (4 * a2) + 28, 0x100004052888210uLL);
  v5 = v24;
  *v24 = v22;
  v24[1] = 0;
  v25 = 131329;
  if (a5 != 8)
  {
    v25 = 65793;
  }

  v24[2] = (v23 << 20) + 1572866;
  v24[3] = v25;
  v24[4] = 0;
  v24[5] = v9 >> 3;
  v24[6] = 0;
  v26 = a4;
  if (v9 >= 1)
  {
    v27 = 0;
    for (i = 0; i < v9; i += v32)
    {
      while (1)
      {
        while (1)
        {
          v29 = v49[i + 4];
          if (v29 != -1)
          {
            break;
          }

          i = (i & 0xFFFFFFF8) + 8;
          if (i >= v9)
          {
            return v5;
          }
        }

        v30 = v49[v29] ^ v17;
        if (v30 != i)
        {
          break;
        }

        writeSample(v5, v27++, *(v26 + 4 * v29), a3->i32[v29], i, 1, 1, a5);
        i += a3->i32[v29];
        if (i >= v9)
        {
          return v5;
        }
      }

      v31 = 8 - (v49[v29] & 7);
      v32 = a3->i32[v29] - v31;
      writeSample(v5, v27, *(v26 + 4 * v29), v31, v30, 0, 1, a5);
      v49[v30 + 4] = -1;
      v26 = a4;
      writeSample(v5, v27 + 1, *(a4 + 4 * v29), v32, i, 1, 0, a5);
      v27 += 2;
    }
  }

  return v5;
}

char *createDFDCompressed(unsigned int a1, int a2, int a3, int a4, int a5)
{
  v10 = a1;
  v11 = compSampleCount[a1];
  result = malloc_type_malloc(4 * (4 * v11 + 7), 0x100004052888210uLL);
  *result = 4 * (4 * v11 + 7);
  *(result + 1) = 0;
  *(result + 2) = (v11 << 20) + 1572866;
  if (a5 == 8)
  {
    v13 = 131328;
  }

  else
  {
    v13 = 65792;
  }

  *(result + 3) = compModelMapping[a1] | v13;
  *(result + 4) = ((a3 << 8) - 256) | (a2 - 1) | ((a4 << 16) - 0x10000);
  *(result + 5) = compBytes[a1];
  *(result + 6) = 0;
  v14 = compFirstChannel[a1];
  if (a5 <= 5)
  {
    if (a5 == 1)
    {
      v15 = (compChannelBits[v10] << 16) - 0x10000;
      *(result + 7) = v15 | (v14 << 24) | 0x40000000;
      *(result + 8) = 0;
      v16 = 0x7FFFFFFF;
      v17 = 0x80000000;
      *(result + 9) = 0x80000000;
      *(result + 10) = 0x7FFFFFFF;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    if (a5 == 3 || a5 == 5)
    {
      v15 = (compChannelBits[v10] << 16) - 0x10000;
      *(result + 7) = v15 | (v14 << 24) | 0x40000000;
      *(result + 8) = 0;
      v16 = 1;
      v17 = -1;
      *(result + 9) = -1;
      *(result + 10) = 1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_31:
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 28) = v15 | (v14 << 24);
    if (a5 == 4 || a5 == 2)
    {
      v17 = 0;
      v16 = 1;
      *(result + 9) = 0;
      *(result + 10) = 1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v17 = 0;
      v16 = -1;
      *(result + 9) = 0;
      *(result + 10) = -1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  if (a5 == 6)
  {
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 7) = v15 | (v14 << 24) | 0xC0000000;
    *(result + 8) = 0;
    v16 = 1065353216;
    v17 = -1082130432;
    *(result + 9) = -1082130432;
    *(result + 10) = 1065353216;
    if (((0x162CuLL >> v10) & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a5 == 7)
  {
    v17 = 0;
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 7) = v15 | (v14 << 24) | 0x80000000;
    *(result + 8) = 0;
    v16 = 1065353216;
    *(result + 9) = 0;
    *(result + 10) = 1065353216;
    if (((0x162CuLL >> v10) & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a5 != 8)
  {
    goto LABEL_31;
  }

  v17 = 0;
  v18 = v14 << 24;
  if ((0x40CuLL >> v10))
  {
    v18 = 520093696;
  }

  v15 = (compChannelBits[v10] << 16) - 0x10000;
  *(result + 7) = v15 | v18;
  *(result + 8) = 0;
  v16 = -1;
  *(result + 9) = 0;
  *(result + 10) = -1;
  if ((0x162CuLL >> v10))
  {
LABEL_20:
    v19 = compSecondChannel[v10];
    if (a5 > 5)
    {
      if (a5 == 6)
      {
        v19 |= 0xC0u;
      }

      else if (a5 == 7)
      {
        v19 |= 0x80u;
      }

      else if (a5 == 8 && a1 == 9)
      {
        v19 = 31;
      }
    }

    else if (a5 == 1 || a5 == 3 || a5 == 5)
    {
      v19 |= 0x40u;
    }

    *(result + 44) = compSecondChannelOffset[v10] | v15 | (v19 << 24);
    *(result + 13) = v17;
    *(result + 14) = v16;
  }

  return result;
}

char *createDFDDepthStencil(int a1, int a2, int a3)
{
  if (a2 <= 0)
  {
    v6 = a1 > 0;
  }

  else
  {
    v6 = (a1 > 0) + 1;
  }

  result = malloc_type_malloc((16 * v6 + 28), 0x100004052888210uLL);
  *result = 16 * v6 + 28;
  *(result + 1) = 0;
  *(result + 2) = (v6 << 20) + 1572866;
  *(result + 12) = 65793;
  *(result + 5) = a3;
  *(result + 6) = 0;
  if (a1 == 32)
  {
    *(result + 28) = xmmword_1862339A0;
    if (a2 <= 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 <= 0)
  {
    if (a2 > 0)
    {
      v9 = result + 28;
      v10 = (a2 << 16) - 0x10000;
      v11 = 40;
      v12 = 36;
      v13 = 32;
      goto LABEL_13;
    }
  }

  else
  {
    *(result + 7) = ((a1 << 16) - 0x10000) | 0xE000000;
    *(result + 4) = 0;
    if (a1 <= 0x20)
    {
      v8 = ~(-1 << a1);
    }

    else
    {
      v8 = -1;
    }

    *(result + 10) = v8;
    if (a2 > 0)
    {
LABEL_12:
      v9 = result + 44;
      v10 = ((a2 << 16) - 0x10000) | a1;
      v11 = 56;
      v12 = 52;
      v13 = 48;
LABEL_13:
      *v9 = v10 | 0xD000000;
      *&result[v13] = 0;
      *&result[v12] = 0;
      *&result[v11] = 1;
    }
  }

  return result;
}

uint64_t interpretDFD(_DWORD *a1, void *a2, void *a3, void *a4, void *a5, unsigned int *a6)
{
  if (*a1 < 0x2Cu)
  {
    return 64;
  }

  v6 = (a1[2] >> 18) - 6;
  if (v6 > 0x103 || *a1 != ((4 * v6) & 0x7F0) + 28)
  {
    return 64;
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v7 = a1[5];
  if (v7 > 0xFF || a1[6])
  {
    return 66;
  }

  v9 = a1[3];
  if (v9 != 1)
  {
    return 67;
  }

  v10 = v6 >> 2;
  v11 = 4 * ((v9 & 0xFF0000) == 0x20000);
  if (v6 < 4)
  {
    goto LABEL_10;
  }

  v12 = a1 + 8;
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  do
  {
    v15 = *v12;
    v12 += 4;
    if (v15)
    {
      return 65;
    }

    --v14;
  }

  while (v14);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = (a1 + 7);
  v20 = v13;
  v21 = (a1 + 7);
  do
  {
    v22 = *v21;
    if (v18)
    {
      if ((LODWORD(v22) & 0x80000000) != 0)
      {
        if ((v11 & 0x20) == 0)
        {
          return 68;
        }
      }

      else if ((v11 & 0x20) != 0)
      {
        return 68;
      }

      v18 = 1;
    }

    else
    {
      v18 = LODWORD(v22) >> 31;
      v11 = v11 | (32 * (LODWORD(v22) >> 31));
    }

    v23 = *v21 & 0x40000000;
    if (v17)
    {
      if (v23)
      {
        if ((v11 & 0x10) == 0)
        {
          return 68;
        }
      }

      else if ((v11 & 0x10) != 0)
      {
        return 68;
      }

      v17 = 1;
    }

    else
    {
      v17 = v23 >> 30;
      v11 = v11 | (v23 >> 26);
    }

    if (v16)
    {
      goto LABEL_24;
    }

    v16 = *(v21 + 2);
    if (*(v21 + 2))
    {
      if ((v11 & 0x20) == 0)
      {
        if (*(v21 + 3) == 1)
        {
          v11 = v11;
        }

        else
        {
          v11 = v11 | 8;
        }

LABEL_24:
        v16 = 1;
        goto LABEL_25;
      }

      if (v21[3] == 1.0)
      {
        v11 = v11;
      }

      else
      {
        v11 = v11 | 8;
      }

      v16 = 1;
    }

LABEL_25:
    v21 += 4;
    --v20;
  }

  while (v20);
  while (1)
  {
    v24 = *v19;
    v19 += 16;
    if ((v24 & 7) != 0)
    {
      break;
    }

    if (!--v13)
    {
      goto LABEL_10;
    }
  }

  v11 = v11 | 2;
LABEL_10:
  if ((v11 & 2) != 0)
  {
    *a6 = v7;
    if (v6 >= 4)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (v10 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v10;
      }

      v42 = a1 + 7;
      v43 = -1;
      while (1)
      {
        while (1)
        {
          v45 = *v42;
          v42 += 4;
          v44 = v45;
          v46 = HIBYTE(v45) & 0xF;
          result = 67;
          if (v46 > 1)
          {
            v47 = a4;
            if (v46 != 2)
            {
              if (v46 != 15)
              {
                return result;
              }

              v47 = a5;
            }
          }

          else
          {
            v47 = a2;
            if (v46)
            {
              v47 = a3;
            }
          }

          v48 = BYTE2(v44) + 1;
          if (v46 == v43)
          {
            break;
          }

          if (*(v47 + 1))
          {
            return 64;
          }

          *v47 = v44;
          *(v47 + 1) = v48;
          v43 = v46;
          v38 = BYTE2(v44) + 1;
          v39 = v44 >> 3;
          v40 = v44;
          if (!--v41)
          {
            goto LABEL_51;
          }
        }

        if (v44 >> 3 != v39 - 1 || ((v44 | (v38 + v40)) & 7) != 0)
        {
          return 64;
        }

        v11 = v11 | 1;
        *(v47 + 1) += v48;
        v38 = BYTE2(v44) + 1;
        v39 = v44 >> 3;
        v40 = v44;
        if (!--v41)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
LABEL_51:
      if (v11)
      {
        v49 = 8 * *a6 - 8;
        *a2 ^= v49;
        *a3 ^= v49;
        *a4 ^= v49;
        *a5 ^= v49;
      }

      return v11;
    }
  }

  else if (v6 >= 4)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (v10 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v10;
    }

    v29 = a1 + 7;
    v30 = -1;
    do
    {
      while (1)
      {
        v33 = *v29;
        v29 += 4;
        v32 = v33;
        v34 = HIBYTE(v33) & 0xF;
        result = 67;
        if (v34 > 1)
        {
          v35 = a4;
          if (v34 != 2)
          {
            if (v34 != 15)
            {
              return result;
            }

            v35 = a5;
          }
        }

        else
        {
          v35 = a2;
          if (v34)
          {
            v35 = a3;
          }
        }

        v36 = v32 >> 3;
        v37 = (BYTE2(v32) + 1) >> 3;
        if (v34 != v30)
        {
          break;
        }

        if (v36 == v26 - 1)
        {
          if (v27 && (v11 & 1) == 0)
          {
            return 64;
          }

          v11 = v11 | 1;
          *v35 = v36;
        }

        else if (v36 != v25 + v26 || v27 && (v11 & 1) != 0)
        {
          return 64;
        }

        v31 = *(v35 + 1) + v37;
        *(v35 + 1) = v31;
        v27 = 1;
        *a6 = v31;
        v25 = v37;
        v26 = v36;
        result = v11;
        if (!--v28)
        {
          return result;
        }
      }

      if (*(v35 + 1))
      {
        return 64;
      }

      *v35 = v36;
      *(v35 + 1) = v37;
      v25 = v37;
      v30 = v34;
      *a6 = v37;
      v26 = v36;
      result = v11;
      --v28;
    }

    while (v28);
  }

  else
  {
    return v11;
  }

  return result;
}

uint64_t getDFDComponentInfoUnpacked(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  v3 = (*(result + 8) >> 18) - 6;
  *a2 = 0;
  if (v3 >= 4)
  {
    LODWORD(v4) = v3 >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    v5 = (result + 28);
    v6 = -1;
    do
    {
      while (1)
      {
        v7 = *v5;
        v5 += 4;
        v8 = (BYTE2(v7) + 1) >> 3;
        v9 = HIBYTE(v7) & 0xF;
        if (v9 == v6)
        {
          break;
        }

        ++*a2;
        v6 = v9;
        *a3 = v8;
        if (!--v4)
        {
          return result;
        }
      }

      *a3 += v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t getDFDNumComponents(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 18) - 6;
  if (v1 < 4)
  {
    return 0;
  }

  LODWORD(v3) = v1 >> 2;
  if (v1 >> 2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  if (v1 >= 0x24)
  {
    if ((v3 & 7) != 0)
    {
      v7 = v3 & 7;
    }

    else
    {
      v7 = 8;
    }

    v4 = v3 - v7;
    v8 = (a1 + 92);
    v9 = v7 - v3;
    v10 = 0uLL;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    v12 = 0uLL;
    do
    {
      v13 = v8 - 16;
      v14 = vld4q_f32(v13);
      v15 = vld4q_f32(v8);
      v16 = *&vshrq_n_u32(v14, 0x18uLL) & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL);
      v17 = vextq_s8(v11, v16, 0xCuLL);
      v11 = *&vshrq_n_u32(v15, 0x18uLL) & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL);
      v10 = vsubq_s32(v10, vmvnq_s8(vceqq_s32(v16, v17)));
      v12 = vsubq_s32(v12, vmvnq_s8(vceqq_s32(v11, vextq_s8(v16, v11, 0xCuLL))));
      v8 += 32;
      v9 += 8;
    }

    while (v9);
    LODWORD(v5) = vaddvq_s32(vaddq_s32(v12, v10));
    v6 = HIDWORD(v11);
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = -1;
  }

  v18 = a1 + 16 * v4 + 28;
  v19 = v4 - v3;
  do
  {
    v20 = *(v18 + 3) & 0xF;
    if (v20 == v6)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v5 + 1);
    }

    v18 += 16;
    v6 = v20;
  }

  while (!__CFADD__(v19++, 1));
  return v5;
}

uint64_t recreateBytesPlane0FromSampleInfo(_DWORD *a1, unsigned int *a2)
{
  if (*a1 < 0x2Cu)
  {
    return 64;
  }

  v3 = (a1[2] >> 18) - 6;
  if (v3 > 0x103 || *a1 != ((4 * v3) & 0x7F0) + 28)
  {
    return 64;
  }

  v6 = malloc_type_malloc(v3 & 0x1FC, 0x100004052888210uLL);
  memset(v6, 255, v3 & 0x1FC);
  if (v3 >= 4)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 >> 2;
    v11 = a1 + 7;
    if (v3 >> 2 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    do
    {
      v13 = 0;
      v14 = v11[4 * v8];
      while (v14 != *(v6 + v13))
      {
        if (v12 == ++v13)
        {
          LODWORD(v13) = v12;
          break;
        }
      }

      if (v13 == v10)
      {
        v9 += BYTE2(v11[4 * v8]) + 1;
        *(v6 + v8) = v14;
      }

      ++v8;
    }

    while (v8 != v12);
    v7 = v9 >> 3;
  }

  else
  {
    v7 = 0;
  }

  free(v6);
  *a2 = v7;
  return 1;
}

char *vk2dfd(int a1)
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  if (a1 <= 1000054001)
  {
    switch(a1)
    {
      case 1:
        *&v35 = 1;
        *&v34 = 0x400000004;
        v3 = &v34;
        v4 = &v35;
        v5 = 2;
        goto LABEL_425;
      case 2:
        v8 = &xmmword_186233B9C;
        goto LABEL_421;
      case 3:
        v8 = &xmmword_186207DF0;
        goto LABEL_421;
      case 4:
        DWORD2(v35) = 0;
        v12 = 0x100000002;
        goto LABEL_116;
      case 5:
        DWORD2(v35) = 2;
        v12 = 0x100000000;
LABEL_116:
        *&v35 = v12;
        DWORD2(v34) = 5;
        *&v34 = 0x600000005;
        v3 = &v34;
        v4 = &v35;
        v5 = 3;
        goto LABEL_425;
      case 6:
        v22 = &xmmword_186233B9C;
        goto LABEL_423;
      case 7:
        v22 = &xmmword_186207DF0;
LABEL_423:
        v35 = *v22;
        v27 = &xmmword_186233BB0;
        goto LABEL_424;
      case 8:
        v35 = xmmword_186224A90;
        v27 = &xmmword_186233BC0;
        goto LABEL_424;
      case 9:
        v13 = 1;
        goto LABEL_152;
      case 10:
        v13 = 1;
        goto LABEL_403;
      case 11:
        v13 = 1;
        goto LABEL_331;
      case 12:
        v13 = 1;
        goto LABEL_442;
      case 13:
        v13 = 1;
        goto LABEL_433;
      case 14:
        v13 = 1;
        goto LABEL_438;
      case 15:
        v13 = 1;
        goto LABEL_412;
      case 16:
        v13 = 2;
        goto LABEL_152;
      case 17:
        v13 = 2;
        goto LABEL_403;
      case 18:
        v13 = 2;
        goto LABEL_331;
      case 19:
        v13 = 2;
        goto LABEL_442;
      case 20:
        v13 = 2;
        goto LABEL_433;
      case 21:
        v13 = 2;
        goto LABEL_438;
      case 22:
        v13 = 2;
        goto LABEL_412;
      case 23:
        v13 = 3;
        goto LABEL_152;
      case 24:
        v13 = 3;
        goto LABEL_403;
      case 25:
        v13 = 3;
        goto LABEL_331;
      case 26:
        v13 = 3;
        goto LABEL_442;
      case 27:
        v13 = 3;
        goto LABEL_433;
      case 28:
        v13 = 3;
        goto LABEL_438;
      case 29:
        v13 = 3;
        goto LABEL_412;
      case 30:
        v13 = 3;
        goto LABEL_429;
      case 31:
        v13 = 3;
        goto LABEL_222;
      case 32:
        v13 = 3;
        goto LABEL_142;
      case 33:
        v13 = 3;
        goto LABEL_157;
      case 34:
        v13 = 3;
        goto LABEL_336;
      case 35:
        v13 = 3;
        goto LABEL_183;
      case 36:
        v13 = 3;
        goto LABEL_393;
      case 37:
        v13 = 4;
LABEL_152:
        v19 = 1;
        v20 = 0;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 38:
        v13 = 4;
LABEL_403:
        v19 = 1;
        v20 = 0;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 39:
        v13 = 4;
LABEL_331:
        v19 = 1;
        v20 = 0;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 40:
        v13 = 4;
LABEL_442:
        v19 = 1;
        v20 = 0;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 41:
        v13 = 4;
LABEL_433:
        v19 = 1;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 42:
        v13 = 4;
LABEL_438:
        v19 = 1;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 43:
        v13 = 4;
LABEL_412:
        v19 = 1;
        v20 = 0;
        v21 = 8;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 44:
        v13 = 4;
LABEL_429:
        v19 = 1;
        v20 = 1;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 45:
        v13 = 4;
LABEL_222:
        v19 = 1;
        v20 = 1;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 46:
        v13 = 4;
LABEL_142:
        v19 = 1;
        v20 = 1;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 47:
        v13 = 4;
LABEL_157:
        v19 = 1;
        v20 = 1;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 48:
        v13 = 4;
LABEL_336:
        v19 = 1;
        v20 = 1;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 49:
        v13 = 4;
LABEL_183:
        v19 = 1;
        v20 = 1;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 50:
        v13 = 4;
LABEL_393:
        v19 = 1;
        v20 = 1;
        v21 = 8;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 51:
        v35 = xmmword_186205980;
        v27 = &xmmword_186233BD0;
        goto LABEL_424;
      case 52:
        v35 = xmmword_186205980;
        v16 = &xmmword_186233BD0;
        goto LABEL_295;
      case 53:
        v35 = xmmword_186205980;
        v14 = &xmmword_186233BD0;
        goto LABEL_349;
      case 54:
        v35 = xmmword_186205980;
        v26 = &xmmword_186233BD0;
        goto LABEL_196;
      case 55:
        v35 = xmmword_186205980;
        v29 = &xmmword_186233BD0;
        goto LABEL_324;
      case 56:
        v35 = xmmword_186205980;
        v32 = &xmmword_186233BD0;
        goto LABEL_292;
      case 57:
        v34 = xmmword_186233BD0;
        v35 = xmmword_186205980;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 8;
        goto LABEL_426;
      case 58:
        v18 = &xmmword_186224A90;
        goto LABEL_276;
      case 59:
        v31 = &xmmword_186224A90;
        goto LABEL_294;
      case 60:
        v33 = &xmmword_186224A90;
        goto LABEL_348;
      case 61:
        v15 = &xmmword_186224A90;
        goto LABEL_195;
      case 62:
        v17 = &xmmword_186224A90;
        goto LABEL_323;
      case 63:
        v30 = &xmmword_186224A90;
        goto LABEL_291;
      case 64:
        v18 = &xmmword_186205980;
LABEL_276:
        v35 = *v18;
        v27 = &xmmword_186233BE0;
        goto LABEL_424;
      case 65:
        v31 = &xmmword_186205980;
LABEL_294:
        v35 = *v31;
        v16 = &xmmword_186233BE0;
LABEL_295:
        v34 = *v16;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 1;
        goto LABEL_426;
      case 66:
        v33 = &xmmword_186205980;
LABEL_348:
        v35 = *v33;
        v14 = &xmmword_186233BE0;
LABEL_349:
        v34 = *v14;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 2;
        goto LABEL_426;
      case 67:
        v15 = &xmmword_186205980;
LABEL_195:
        v35 = *v15;
        v26 = &xmmword_186233BE0;
LABEL_196:
        v34 = *v26;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 3;
        goto LABEL_426;
      case 68:
        v17 = &xmmword_186205980;
LABEL_323:
        v35 = *v17;
        v29 = &xmmword_186233BE0;
LABEL_324:
        v34 = *v29;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 4;
        goto LABEL_426;
      case 69:
        v30 = &xmmword_186205980;
LABEL_291:
        v35 = *v30;
        v32 = &xmmword_186233BE0;
LABEL_292:
        v34 = *v32;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 5;
        goto LABEL_426;
      case 70:
        v13 = 1;
        goto LABEL_389;
      case 71:
        v13 = 1;
        goto LABEL_417;
      case 72:
        v13 = 1;
        goto LABEL_297;
      case 73:
        v13 = 1;
        goto LABEL_407;
      case 74:
        v13 = 1;
        goto LABEL_398;
      case 75:
        v13 = 1;
        goto LABEL_385;
      case 76:
        v13 = 1;
        goto LABEL_375;
      case 77:
        v13 = 2;
        goto LABEL_389;
      case 78:
        v13 = 2;
        goto LABEL_417;
      case 79:
        v13 = 2;
        goto LABEL_297;
      case 80:
        v13 = 2;
        goto LABEL_407;
      case 81:
        v13 = 2;
        goto LABEL_398;
      case 82:
        v13 = 2;
        goto LABEL_385;
      case 83:
        v13 = 2;
        goto LABEL_375;
      case 84:
        v13 = 3;
        goto LABEL_389;
      case 85:
        v13 = 3;
        goto LABEL_417;
      case 86:
        v13 = 3;
        goto LABEL_297;
      case 87:
        v13 = 3;
        goto LABEL_407;
      case 88:
        v13 = 3;
        goto LABEL_398;
      case 89:
        v13 = 3;
        goto LABEL_385;
      case 90:
        v13 = 3;
        goto LABEL_375;
      case 91:
        v13 = 4;
LABEL_389:
        v19 = 2;
        v20 = 0;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 92:
        v13 = 4;
LABEL_417:
        v19 = 2;
        v20 = 0;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 93:
        v13 = 4;
LABEL_297:
        v19 = 2;
        v20 = 0;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 94:
        v13 = 4;
LABEL_407:
        v19 = 2;
        v20 = 0;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 95:
        v13 = 4;
LABEL_398:
        v19 = 2;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 96:
        v13 = 4;
LABEL_385:
        v19 = 2;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 97:
        v13 = 4;
LABEL_375:
        v19 = 2;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 98:
        v13 = 1;
        goto LABEL_287;
      case 99:
        v13 = 1;
        goto LABEL_279;
      case 100:
        v13 = 1;
        goto LABEL_371;
      case 101:
        v13 = 2;
        goto LABEL_287;
      case 102:
        v13 = 2;
        goto LABEL_279;
      case 103:
        v13 = 2;
        goto LABEL_371;
      case 104:
        v13 = 3;
        goto LABEL_287;
      case 105:
        v13 = 3;
        goto LABEL_279;
      case 106:
        v13 = 3;
        goto LABEL_371;
      case 107:
        v13 = 4;
LABEL_287:
        v19 = 4;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 108:
        v13 = 4;
LABEL_279:
        v19 = 4;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 109:
        v13 = 4;
LABEL_371:
        v19 = 4;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 110:
        v13 = 1;
        goto LABEL_379;
      case 111:
        v13 = 1;
        goto LABEL_357;
      case 112:
        v13 = 1;
        goto LABEL_340;
      case 113:
        v13 = 2;
        goto LABEL_379;
      case 114:
        v13 = 2;
        goto LABEL_357;
      case 115:
        v13 = 2;
        goto LABEL_340;
      case 116:
        v13 = 3;
        goto LABEL_379;
      case 117:
        v13 = 3;
        goto LABEL_357;
      case 118:
        v13 = 3;
        goto LABEL_340;
      case 119:
        v13 = 4;
LABEL_379:
        v19 = 8;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 120:
        v13 = 4;
LABEL_357:
        v19 = 8;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 121:
        v13 = 4;
LABEL_340:
        v19 = 8;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 122:
        DWORD2(v35) = 2;
        *&v35 = 0x100000000;
        DWORD2(v34) = 10;
        *&v34 = 0xB0000000BLL;
        v3 = &v34;
        v4 = &v35;
        v5 = 3;
        v28 = 7;
        goto LABEL_426;
      case 123:
        LODWORD(v35) = 0;
        LODWORD(v34) = 0;
        v3 = &v35;
        v4 = &v34;
        v5 = 6;
        v28 = 7;
        goto LABEL_426;
      case 124:
        v23 = 16;
        v24 = 0;
        v25 = 2;

        return createDFDDepthStencil(v23, v24, v25);
      case 125:
        v23 = 24;
        v24 = 0;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 126:
        v23 = 32;
        v24 = 0;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 127:
        v23 = 0;
        v24 = 8;
        v25 = 1;

        return createDFDDepthStencil(v23, v24, v25);
      case 128:
        v23 = 16;
        v24 = 8;
        v25 = 3;

        return createDFDDepthStencil(v23, v24, v25);
      case 129:
        v23 = 24;
        v24 = 8;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 130:
        v23 = 32;
        v24 = 8;
        v25 = 5;

        return createDFDDepthStencil(v23, v24, v25);
      case 131:
        v6 = 0;
        goto LABEL_365;
      case 132:
        v6 = 0;
        goto LABEL_352;
      case 133:
        v6 = 1;
        goto LABEL_365;
      case 134:
        v6 = 1;
        goto LABEL_352;
      case 135:
        v6 = 2;
        goto LABEL_365;
      case 136:
        v6 = 2;
        goto LABEL_352;
      case 137:
        v6 = 3;
        goto LABEL_365;
      case 138:
        v6 = 3;
        goto LABEL_352;
      case 139:
        v6 = 4;
        goto LABEL_365;
      case 140:
        v6 = 4;
        goto LABEL_318;
      case 141:
        v6 = 5;
        goto LABEL_365;
      case 142:
        v6 = 5;
        goto LABEL_318;
      case 143:
        v6 = 6;
        v7 = 4;
        v9 = 4;
        v10 = 1;
        v11 = 7;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 144:
        v6 = 6;
        v7 = 4;
        goto LABEL_458;
      case 145:
        v6 = 7;
        goto LABEL_365;
      case 146:
        v6 = 7;
        goto LABEL_352;
      case 147:
        v6 = 8;
        goto LABEL_365;
      case 148:
        v6 = 8;
        goto LABEL_352;
      case 149:
        v6 = 9;
        goto LABEL_365;
      case 150:
        v6 = 9;
        goto LABEL_352;
      case 151:
        v6 = 10;
        goto LABEL_365;
      case 152:
        v6 = 10;
        goto LABEL_352;
      case 153:
        v6 = 11;
        goto LABEL_365;
      case 154:
        v6 = 11;
        goto LABEL_318;
      case 155:
        v6 = 12;
        goto LABEL_365;
      case 156:
        v6 = 12;
LABEL_318:
        v7 = 4;
        v9 = 4;
        v10 = 1;
        v11 = 1;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 157:
        v6 = 13;
        goto LABEL_365;
      case 158:
        v6 = 13;
        goto LABEL_352;
      case 159:
        v6 = 13;
        v7 = 5;
        goto LABEL_366;
      case 160:
        v6 = 13;
        v7 = 5;
        goto LABEL_353;
      case 161:
        v6 = 13;
        v7 = 5;
        goto LABEL_314;
      case 162:
        v6 = 13;
        v7 = 5;
        goto LABEL_283;
      case 163:
        v6 = 13;
        v7 = 6;
        goto LABEL_314;
      case 164:
        v6 = 13;
        v7 = 6;
        goto LABEL_283;
      case 165:
        v6 = 13;
        v7 = 6;
        goto LABEL_303;
      case 166:
        v6 = 13;
        v7 = 6;
        goto LABEL_266;
      case 167:
        v6 = 13;
        v7 = 8;
        goto LABEL_314;
      case 168:
        v6 = 13;
        v7 = 8;
        goto LABEL_283;
      case 169:
        v6 = 13;
        v7 = 8;
        goto LABEL_303;
      case 170:
        v6 = 13;
        v7 = 8;
        goto LABEL_266;
      case 171:
        v6 = 13;
        v7 = 8;
        goto LABEL_256;
      case 172:
        v6 = 13;
        v7 = 8;
        goto LABEL_260;
      case 173:
        v6 = 13;
        v7 = 10;
LABEL_314:
        v9 = 5;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 174:
        v6 = 13;
        v7 = 10;
LABEL_283:
        v9 = 5;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 175:
        v6 = 13;
        v7 = 10;
LABEL_303:
        v9 = 6;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 176:
        v6 = 13;
        v7 = 10;
LABEL_266:
        v9 = 6;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 177:
        v6 = 13;
        v7 = 10;
LABEL_256:
        v9 = 8;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 178:
        v6 = 13;
        v7 = 10;
LABEL_260:
        v9 = 8;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 179:
        v6 = 13;
        v7 = 10;
        goto LABEL_249;
      case 180:
        v6 = 13;
        v7 = 10;
        goto LABEL_218;
      case 181:
        v6 = 13;
        v7 = 12;
LABEL_249:
        v9 = 10;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 182:
        v6 = 13;
        v7 = 12;
LABEL_218:
        v9 = 10;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 183:
        v6 = 13;
        v7 = 12;
        v9 = 12;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 184:
        v6 = 13;
        v7 = 12;
        v9 = 12;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      default:
        if (a1 == 1000054000)
        {
          v6 = 15;
          v7 = 8;
          goto LABEL_366;
        }

        if (a1 != 1000054001)
        {
          return result;
        }

        v6 = 15;
        break;
    }

    goto LABEL_365;
  }

  if (a1 <= 1000287999)
  {
    if (a1 <= 1000054005)
    {
      if (a1 <= 1000054003)
      {
        if (a1 == 1000054002)
        {
          v6 = 16;
          v7 = 8;
          goto LABEL_366;
        }

        v6 = 16;
LABEL_365:
        v7 = 4;
LABEL_366:
        v9 = 4;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      }

      if (a1 == 1000054004)
      {
        v6 = 15;
LABEL_447:
        v7 = 8;
        goto LABEL_353;
      }

      v6 = 15;
    }

    else
    {
      switch(a1)
      {
        case 1000066000:
          v6 = 13;
          v7 = 4;
          goto LABEL_458;
        case 1000066001:
          v6 = 13;
          v7 = 5;
LABEL_458:
          v9 = 4;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066002:
          v6 = 13;
          v7 = 5;
          goto LABEL_474;
        case 1000066003:
          v6 = 13;
          v7 = 6;
          goto LABEL_474;
        case 1000066004:
          v6 = 13;
          v7 = 6;
          goto LABEL_466;
        case 1000066005:
          v6 = 13;
          v7 = 8;
          goto LABEL_474;
        case 1000066006:
          v6 = 13;
          v7 = 8;
          goto LABEL_466;
        case 1000066007:
          v6 = 13;
          v7 = 8;
          goto LABEL_470;
        case 1000066008:
          v6 = 13;
          v7 = 10;
LABEL_474:
          v9 = 5;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066009:
          v6 = 13;
          v7 = 10;
LABEL_466:
          v9 = 6;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066010:
          v6 = 13;
          v7 = 10;
LABEL_470:
          v9 = 8;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066011:
          v6 = 13;
          v7 = 10;
          goto LABEL_450;
        case 1000066012:
          v6 = 13;
          v7 = 12;
LABEL_450:
          v9 = 10;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066013:
          v6 = 13;
          v7 = 12;
          v9 = 12;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        default:
          if (a1 == 1000054006)
          {
            v6 = 16;
            goto LABEL_447;
          }

          if (a1 != 1000054007)
          {
            return result;
          }

          v6 = 16;
          break;
      }
    }

LABEL_352:
    v7 = 4;
LABEL_353:
    v9 = 4;
    v10 = 1;
    v11 = 8;

    return createDFDCompressed(v6, v7, v9, v10, v11);
  }

  switch(a1)
  {
    case 1000288000:
      v6 = 13;
      v7 = 3;
      goto LABEL_54;
    case 1000288001:
      v6 = 13;
      v7 = 3;
      goto LABEL_61;
    case 1000288002:
      v6 = 13;
      v7 = 3;
      goto LABEL_69;
    case 1000288003:
      v6 = 13;
      v7 = 4;
LABEL_54:
      v9 = 3;
      v10 = 3;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288004:
      v6 = 13;
      v7 = 4;
LABEL_61:
      v9 = 3;
      v10 = 3;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288005:
      v6 = 13;
      v7 = 4;
LABEL_69:
      v9 = 3;
      v10 = 3;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288006:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288007:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288008:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288009:
      v6 = 13;
      v7 = 4;
      goto LABEL_40;
    case 1000288010:
      v6 = 13;
      v7 = 4;
      goto LABEL_82;
    case 1000288011:
      v6 = 13;
      v7 = 4;
      goto LABEL_34;
    case 1000288012:
      v6 = 13;
      v7 = 5;
LABEL_40:
      v9 = 4;
      v10 = 4;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288013:
      v6 = 13;
      v7 = 5;
LABEL_82:
      v9 = 4;
      v10 = 4;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288014:
      v6 = 13;
      v7 = 5;
LABEL_34:
      v9 = 4;
      v10 = 4;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288015:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288016:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288017:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288018:
      v6 = 13;
      v7 = 5;
      goto LABEL_78;
    case 1000288019:
      v6 = 13;
      v7 = 5;
      goto LABEL_91;
    case 1000288020:
      v6 = 13;
      v7 = 5;
      goto LABEL_95;
    case 1000288021:
      v6 = 13;
      v7 = 6;
LABEL_78:
      v9 = 5;
      v10 = 5;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288022:
      v6 = 13;
      v7 = 6;
LABEL_91:
      v9 = 5;
      v10 = 5;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288023:
      v6 = 13;
      v7 = 6;
LABEL_95:
      v9 = 5;
      v10 = 5;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288024:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288025:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288026:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288027:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288028:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288029:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    default:
      if (a1 == 1000340000)
      {
        v8 = &xmmword_186224A90;
      }

      else
      {
        if (a1 != 1000340001)
        {
          return result;
        }

        v8 = &xmmword_186205980;
      }

LABEL_421:
      v35 = *v8;
      v27 = &xmmword_186233BF0;
LABEL_424:
      v34 = *v27;
      v3 = &v34;
      v4 = &v35;
      v5 = 4;
LABEL_425:
      v28 = 0;
LABEL_426:
      result = createDFDPacked(0, v5, v3, v4, v28);
      break;
  }

  return result;
}

uint64_t ktxFileStream_construct(uint64_t a1, uint64_t a2, char a3)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 64) = a2;
      *(a1 + 88) = 0;
      *(a1 + 56) = 1;
      *a1 = ktxFileStream_read;
      *(a1 + 8) = ktxFileStream_skip;
      *(a1 + 16) = ktxFileStream_write;
      *(a1 + 24) = ktxFileStream_getpos;
      *(a1 + 32) = ktxFileStream_setpos;
      *(a1 + 40) = ktxFileStream_getsize;
      *(a1 + 48) = ktxFileStream_destruct;
      *(a1 + 96) = a3;
    }
  }

  return result;
}

uint64_t ktxFileStream_read(uint64_t a1, void *__ptr, size_t a3)
{
  result = 11;
  if (a1 && __ptr)
  {
    if (fread(__ptr, 1uLL, a3, *(a1 + 64)) == a3)
    {
      result = 0;
      *(a1 + 88) += a3;
    }

    else if (feof(*(a1 + 64)))
    {
      return 7;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t ktxFileStream_skip(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  if (a2)
  {
    v4 = 1;
    while (getc(*(a1 + 64)) != -1)
    {
      v5 = v4++;
      if (v5 >= a2)
      {
        goto LABEL_6;
      }
    }

    if (feof(*(a1 + 64)))
    {
      return 7;
    }

    else
    {
      return 5;
    }
  }

  else
  {
LABEL_6:
    result = 0;
    *(a1 + 88) += a2;
  }

  return result;
}

uint64_t ktxFileStream_write(uint64_t a1, void *__ptr, size_t __size, size_t __nitems)
{
  result = 11;
  if (a1 && __ptr)
  {
    if (fwrite(__ptr, __size, __nitems, *(a1 + 64)) == __nitems)
    {
      return 0;
    }

    else
    {
      v6 = *__error();
      result = 4;
      if (v6 != 27)
      {
        if (*__error() == 84)
        {
          return 4;
        }

        else
        {
          return 8;
        }
      }
    }
  }

  return result;
}

uint64_t ktxFileStream_getpos(uint64_t a1, off_t *a2)
{
  result = 11;
  if (a1 && a2)
  {
    v4 = *(a1 + 64);
    if (v4 == *MEMORY[0x1E69E9850])
    {
      v7 = *(a1 + 88);
    }

    else
    {
      v5 = a2;
      v6 = ftello(v4);
      v7 = v6;
      if (v6 < 0)
      {
        v8 = v6;
        v9 = *__error();
        if (v9 == 29)
        {
          return 2;
        }

        v10 = v9 == 84;
        a2 = v5;
        v7 = v8;
        if (v10)
        {
          return 4;
        }
      }

      else
      {
        a2 = v5;
      }
    }

    result = 0;
    *a2 = v7;
  }

  return result;
}

uint64_t ktxFileStream_setpos(uint64_t a1, off_t a2)
{
  if (!a1)
  {
    return 11;
  }

  if (*(a1 + 64) == *MEMORY[0x1E69E9850])
  {
    if (a2 <= *(a1 + 88))
    {
      return 2;
    }

    else
    {
      v5 = *(a1 + 8);

      return v5();
    }
  }

  else
  {
    v6 = 0;
    result = (*(a1 + 40))(a1, &v6);
    if (!result)
    {
      if (v6 >= a2)
      {
        return (fseeko(*(a1 + 64), a2, 0) >> 31) & 6;
      }

      else
      {
        return 10;
      }
    }
  }

  return result;
}

uint64_t ktxFileStream_getsize(uint64_t a1, off_t *a2)
{
  result = 11;
  if (a1 && a2)
  {
    memset(&v7, 0, sizeof(v7));
    fflush(*(a1 + 64));
    v5 = fileno(*(a1 + 64));
    if (fstat(v5, &v7) < 0)
    {
      if (*__error() == 84)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      v6 = v7.st_mode & 0xF000;
      result = 2;
      if (v6 != 4096 && v6 != 49152)
      {
        if ((v7.st_mode & 0x2000) != 0)
        {
          return 10;
        }

        else
        {
          result = 0;
          *a2 = v7.st_size;
        }
      }
    }
  }

  return result;
}

uint64_t ktxFileStream_destruct(uint64_t result)
{
  v1 = result;
  if (*(result + 96) == 1)
  {
    result = fclose(*(result + 64));
  }

  *(v1 + 64) = 0;
  return result;
}

uint64_t *ktxHashList_ConstructCopy(uint64_t *result, uint64_t a2)
{
  *result = 0;
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = ktxHashList_AddKVPair(v3, *(v2 + 8), *(v2 + 16), *(v2 + 24));
      v2 = *(v2 + 48);
    }

    while (v2);
  }

  return result;
}

uint64_t ktxHashList_AddKVPair(uint64_t *a1, char *__s, unsigned int a3, const void *a4)
{
  result = 11;
  if (a1 && __s && (!a3 || a4))
  {
    v8 = a1;
    v10 = strlen(__s);
    v11 = v10;
    if (!v10)
    {
      return 11;
    }

    v12 = (v10 + 1);
    v13 = a3;
    v14 = a3;
    v15 = malloc_type_malloc(a3 + v12 + 88, 0x10B004009A0D710uLL);
    v16 = v15 + 88;
    *(v15 + 1) = v15 + 88;
    *v15 = v12;
    memcpy(v15 + 88, __s, (v11 + 1));
    *(v15 + 4) = v13;
    if (v13)
    {
      *(v15 + 3) = &v16[v12];
      memcpy(&v16[v12], a4, v14);
      v16 = *(v15 + 1);
      v11 = *v15 - 1;
      v17 = v15 + 32;
      *(v15 + 6) = 0;
      *(v15 + 9) = v16;
      *(v15 + 20) = v11;
      v18 = *v8;
      if (*v8)
      {
LABEL_8:
        v19 = *(v18 + 32);
        v20 = *(v19 + 24);
        v21 = *(v19 + 32);
        *(v20 + 16) = v15;
        *(v15 + 5) = v20 - v21;
        *(v19 + 24) = v17;
        goto LABEL_14;
      }
    }

    else
    {
      *(v15 + 3) = 0;
      v17 = v15 + 32;
      *(v15 + 6) = 0;
      *(v15 + 9) = v16;
      *(v15 + 20) = v11;
      v18 = *v8;
      if (*v8)
      {
        goto LABEL_8;
      }
    }

    *v8 = v15;
    *(v15 + 5) = 0;
    v22 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
    *(*v8 + 32) = v22;
    if (!v22)
    {
      goto LABEL_69;
    }

    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    v23 = (*v8 + 32);
    v24 = *v23;
    v24[1] = 0x500000020;
    v24[3] = v23;
    v24[4] = 32;
    v25 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
    **(*v8 + 32) = v25;
    if (!v25)
    {
      goto LABEL_69;
    }

    v25[30] = 0u;
    v25[31] = 0u;
    v25[28] = 0u;
    v25[29] = 0u;
    v25[26] = 0u;
    v25[27] = 0u;
    v25[24] = 0u;
    v25[25] = 0u;
    v25[22] = 0u;
    v25[23] = 0u;
    v25[20] = 0u;
    v25[21] = 0u;
    v25[18] = 0u;
    v25[19] = 0u;
    v25[16] = 0u;
    v25[17] = 0u;
    v25[14] = 0u;
    v25[15] = 0u;
    v25[12] = 0u;
    v25[13] = 0u;
    v25[10] = 0u;
    v25[11] = 0u;
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
    v18 = *v8;
    v19 = *(*v8 + 32);
    *(v19 + 56) = -1609490463;
    v11 = *v15 - 1;
    v16 = *(v15 + 1);
LABEL_14:
    v26 = -17973521;
    v27 = -1640531527;
    ++*(v19 + 16);
    *(v15 + 4) = v19;
    *(v15 + 21) = -17973521;
    if (v11 < 0xC)
    {
      v29 = -1640531527;
      v28 = v11;
      v38 = v11 - 17973521;
      *(v15 + 21) = v11 - 17973521;
      if (v11 > 5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v28 = v11;
      v29 = -1640531527;
      do
      {
        v30 = v27 + v16[4] + (v16[5] << 8) + (v16[6] << 16) + (v16[7] << 24);
        v31 = v16[8] + (v16[9] << 8) + (v16[10] << 16) + v26 + (v16[11] << 24);
        v32 = (v29 + *v16 + (v16[1] << 8) + (v16[2] << 16) + (v16[3] << 24) - (v30 + v31)) ^ (v31 >> 13);
        v33 = (v30 - v31 - v32) ^ (v32 << 8);
        v34 = (v31 - v32 - v33) ^ (v33 >> 13);
        v35 = (v32 - v33 - v34) ^ (v34 >> 12);
        v36 = (v33 - v34 - v35) ^ (v35 << 16);
        v37 = (v34 - v35 - v36) ^ (v36 >> 5);
        v29 = (v35 - v36 - v37) ^ (v37 >> 3);
        v27 = (v36 - v37 - v29) ^ (v29 << 10);
        v26 = (v37 - v29 - v27) ^ (v27 >> 15);
        *(v15 + 21) = v26;
        v16 += 12;
        v28 -= 12;
      }

      while (v28 > 0xB);
      v38 = v26 + v11;
      *(v15 + 21) = v38;
      if (v28 > 5)
      {
LABEL_18:
        if (v28 > 8)
        {
          if (v28 != 9)
          {
            if (v28 != 10)
            {
              v38 += v16[10] << 24;
              *(v15 + 21) = v38;
            }

            v38 += v16[9] << 16;
            *(v15 + 21) = v38;
          }

          v38 += v16[8] << 8;
          *(v15 + 21) = v38;
        }

        else
        {
          if (v28 == 6)
          {
LABEL_36:
            v27 += v16[5] << 8;
            goto LABEL_37;
          }

          if (v28 == 7)
          {
LABEL_35:
            v27 += v16[6] << 16;
            goto LABEL_36;
          }

          if (v28 != 8)
          {
            goto LABEL_42;
          }
        }

        v27 += v16[7] << 24;
        goto LABEL_35;
      }
    }

    if (v28 <= 2)
    {
      if (v28 == 1)
      {
        goto LABEL_41;
      }

      if (v28 != 2)
      {
        goto LABEL_42;
      }

LABEL_40:
      v29 += v16[1] << 8;
LABEL_41:
      v29 += *v16;
LABEL_42:
      v39 = (v29 - v27 - v38) ^ (v38 >> 13);
      v40 = (v27 - v38 - v39) ^ (v39 << 8);
      v41 = (v38 - v39 - v40) ^ (v40 >> 13);
      v42 = (v39 - v40 - v41) ^ (v41 >> 12);
      v43 = (v40 - v41 - v42) ^ (v42 << 16);
      v44 = (v41 - v42 - v43) ^ (v43 >> 5);
      v45 = (v42 - v43 - v44) ^ (v44 >> 3);
      v46 = (v44 - v45 - ((v43 - v44 - v45) ^ (v45 << 10))) ^ (((v43 - v44 - v45) ^ (v45 << 10)) >> 15);
      *(v15 + 21) = v46;
      v47 = **(v18 + 32) + 16 * (v46 & (*(*(v18 + 32) + 8) - 1));
      v48 = *(v47 + 8) + 1;
      *(v47 + 8) = v48;
      v49 = *v47;
      *(v15 + 7) = 0;
      *(v15 + 8) = v49;
      if (v49)
      {
        *(v49 + 24) = v17;
      }

      *v47 = v17;
      if (v48 < 10 * *(v47 + 12) + 10 || *(v19 + 52) == 1)
      {
        return 0;
      }

      v50 = malloc_type_malloc(16 * (2 * *(v19 + 8)), 0x1020040EDED9539uLL);
      if (v50)
      {
        v51 = v50;
        bzero(v50, 16 * (2 * *(*v17 + 8)));
        v52 = *v17;
        v53 = *(*v17 + 16);
        v54 = *(*v17 + 8);
        v55 = *(*v17 + 12) + 1;
        v56 = 2 * v54 - 1;
        if ((v56 & v53) != 0)
        {
          v57 = (v53 >> (*(*v17 + 12) + 1)) + 1;
        }

        else
        {
          v57 = v53 >> (*(*v17 + 12) + 1);
        }

        *(v52 + 40) = v57;
        *(v52 + 44) = 0;
        v58 = *v52;
        if (v54)
        {
          v59 = 0;
          for (i = 0; i != v54; ++i)
          {
            v61 = v58[2 * i];
            if (v61)
            {
              do
              {
                v62 = *(v61 + 32);
                v63 = &v51[16 * (*(v61 + 52) & v56)];
                v64 = *(v63 + 2) + 1;
                *(v63 + 2) = v64;
                if (v64 > v57)
                {
                  *(v52 + 44) = ++v59;
                  *(v63 + 3) = v64 / v57;
                }

                v65 = *v63;
                *(v61 + 24) = 0;
                *(v61 + 32) = v65;
                if (v65)
                {
                  *(v65 + 24) = v61;
                }

                *v63 = v61;
                v61 = v62;
              }

              while (v62);
            }
          }
        }

        *(v52 + 8) = 2 * v54;
        *(v52 + 12) = v55;
        free(v58);
        v66 = *v17;
        *v66 = v51;
        if (*(v66 + 44) <= *(v66 + 16) >> 1)
        {
          result = 0;
          *(v66 + 48) = 0;
          return result;
        }

        v67 = *(v66 + 48) + 1;
        *(v66 + 48) = v67;
        if (v67 >= 2)
        {
          result = 0;
          *(v66 + 52) = 1;
          return result;
        }

        return 0;
      }

LABEL_69:
      exit(-1);
    }

    if (v28 == 3)
    {
LABEL_39:
      v29 += v16[2] << 16;
      goto LABEL_40;
    }

    if (v28 == 4)
    {
LABEL_38:
      v29 += v16[3] << 24;
      goto LABEL_39;
    }

    if (v28 != 5)
    {
      goto LABEL_42;
    }

LABEL_37:
    v27 += v16[4];
    goto LABEL_38;
  }

  return result;
}

uint64_t ktxHashList_Next(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void ktxHashList_Destruct(uint64_t *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return;
  }

  v2 = v1;
  while (1)
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    v5 = *(v2 + 32);
    if (*(v1 + 40) == 0)
    {
      break;
    }

    v6 = *(v5 + 32);
    if (v1 != *(v5 + 24) - v6)
    {
      v7 = *(v1 + 48);
      if (!v3)
      {
        goto LABEL_8;
      }

LABEL_7:
      *(v3 + v6 + 16) = v4;
      v7 = v2;
      goto LABEL_8;
    }

    *(v5 + 24) = v3 + v6;
    v7 = v4;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = *(v1 + 48);
    v9 = *(v7 + 32);
    if (v8)
    {
      *(v8 + *(v9 + 32) + 8) = v3;
    }

    v10 = *v9 + 16 * ((*(v9 + 8) - 1) & *(v1 + 84));
    --*(v10 + 8);
    if (*v10 == v1 + 32)
    {
      *v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      v12 = *(v1 + 64);
      if (!v11)
      {
        goto LABEL_13;
      }

LABEL_12:
      *(v11 + 32) = v12;
      goto LABEL_13;
    }

    v11 = *(v1 + 56);
    v12 = *(v1 + 64);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (v12)
    {
      *(v12 + 24) = v11;
    }

    --*(v9 + 16);
    free(v1);
    v1 = v4;
    v2 = v7;
    if (!v4)
    {
      return;
    }
  }

  v13 = v1;
  free(*v5);
  free(*(v2 + 32));

  free(v13);
}

uint64_t ktxHashList_Create(void *a1)
{
  v2 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v2)
  {
    return 13;
  }

  v3 = v2;
  result = 0;
  *v3 = 0;
  *a1 = v3;
  return result;
}

uint64_t ktxHashList_CreateCopy(uint64_t **a1, uint64_t a2)
{
  v4 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    return 13;
  }

  v5 = v4;
  for (*v4 = 0; a2; a2 = *(a2 + 48))
  {
    ktxHashList_AddKVPair(v5, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  }

  result = 0;
  *a1 = v5;
  return result;
}

void ktxHashList_Destroy(uint64_t *a1)
{
  ktxHashList_Destruct(a1);

  free(a1);
}

uint64_t ktxHashList_DeleteKVPair(void *a1, char *__s)
{
  result = 11;
  if (!a1 || !__s)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = a1;
  v7 = -17973521;
  v8 = -1640531527;
  v9 = strlen(__s);
  v10 = v9;
  if (v9 < 0xC)
  {
    v13 = -1640531527;
    v12 = v9;
    v11 = __s;
    v22 = v9 - 17973521;
    if (v9 > 5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = __s;
    v12 = v9;
    v13 = -1640531527;
    do
    {
      v14 = v8 + v11[4] + (v11[5] << 8) + (v11[6] << 16) + (v11[7] << 24);
      v15 = v7 + v11[8] + (v11[9] << 8) + (v11[10] << 16) + (v11[11] << 24);
      v16 = (v13 + *v11 + (v11[1] << 8) + (v11[2] << 16) + (v11[3] << 24) - (v14 + v15)) ^ (v15 >> 13);
      v17 = (v14 - v15 - v16) ^ (v16 << 8);
      v18 = (v15 - v16 - v17) ^ (v17 >> 13);
      v19 = (v16 - v17 - v18) ^ (v18 >> 12);
      v20 = (v17 - v18 - v19) ^ (v19 << 16);
      v21 = (v18 - v19 - v20) ^ (v20 >> 5);
      v13 = (v19 - v20 - v21) ^ (v21 >> 3);
      v8 = (v20 - v21 - v13) ^ (v13 << 10);
      v7 = (v21 - v13 - v8) ^ (v8 >> 15);
      v11 += 12;
      v12 -= 12;
    }

    while (v12 > 0xB);
    v22 = v7 + v9;
    if (v12 > 5)
    {
LABEL_8:
      if (v12 > 8)
      {
        if (v12 != 9)
        {
          if (v12 != 10)
          {
            v22 += v11[10] << 24;
          }

          v22 += v11[9] << 16;
        }

        v22 += v11[8] << 8;
      }

      else
      {
        if (v12 == 6)
        {
LABEL_26:
          v8 += v11[5] << 8;
          goto LABEL_27;
        }

        if (v12 == 7)
        {
LABEL_25:
          v8 += v11[6] << 16;
          goto LABEL_26;
        }

        if (v12 != 8)
        {
          goto LABEL_32;
        }
      }

      v8 += v11[7] << 24;
      goto LABEL_25;
    }
  }

  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      goto LABEL_31;
    }

    if (v12 == 2)
    {
LABEL_30:
      v13 += v11[1] << 8;
LABEL_31:
      v13 += *v11;
    }
  }

  else
  {
    switch(v12)
    {
      case 3:
LABEL_29:
        v13 += v11[2] << 16;
        goto LABEL_30;
      case 4:
LABEL_28:
        v13 += v11[3] << 24;
        goto LABEL_29;
      case 5:
LABEL_27:
        v8 += v11[4];
        goto LABEL_28;
    }
  }

LABEL_32:
  v23 = (v13 - v8 - v22) ^ (v22 >> 13);
  v24 = (v8 - v22 - v23) ^ (v23 << 8);
  v25 = (v22 - v23 - v24) ^ (v24 >> 13);
  v26 = (v23 - v24 - v25) ^ (v25 >> 12);
  v27 = (v24 - v25 - v26) ^ (v26 << 16);
  v28 = (v25 - v26 - v27) ^ (v27 >> 5);
  v29 = (v26 - v27 - v28) ^ (v28 >> 3);
  v30 = *(v5 + 32);
  v31 = *v30;
  v32 = *(*v30 + 16 * (((v28 - v29 - ((v27 - v28 - v29) ^ (v29 << 10))) ^ (((v27 - v28 - v29) ^ (v29 << 10)) >> 15)) & (*(v30 + 8) - 1)));
  if (!v32)
  {
    return 0;
  }

  v33 = v32 - *(v30 + 32);
  if (*(v33 + 80) != v9)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (memcmp(*(v33 + 72), __s, v10))
  {
LABEL_37:
    while (1)
    {
      v34 = *(v33 + 64);
      if (!v34)
      {
        return 0;
      }

      v33 = v34 - *(v30 + 32);
      if (*(v33 + 80) == v10)
      {
        goto LABEL_36;
      }
    }
  }

  v35 = *(v33 + 40);
  if (!v35 && !*(v33 + 48))
  {
    free(v31);
    free(*(*v6 + 32));
    result = 0;
    *v6 = 0;
    return result;
  }

  v36 = *(v30 + 32);
  if (v33 == *(v30 + 24) - v36)
  {
    *(v30 + 24) = v35 + v36;
  }

  v37 = *(v33 + 48);
  if (!v35)
  {
    *v6 = v37;
    v38 = v33 + 32;
    v39 = *(v37 + 32);
    if (!v37)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  *(v35 + v36 + 16) = v37;
  v38 = v33 + 32;
  v39 = *(*v6 + 32);
  if (v37)
  {
LABEL_46:
    *(v37 + *(v39 + 32) + 8) = v35;
  }

LABEL_47:
  v40 = *v39 + 16 * ((*(v39 + 8) - 1) & *(v33 + 84));
  --*(v40 + 8);
  if (*v40 == v38)
  {
    *v40 = *(v33 + 64);
  }

  v41 = *(v33 + 56);
  v42 = *(v33 + 64);
  if (v41)
  {
    *(v41 + 32) = v42;
  }

  if (v42)
  {
    *(v42 + 24) = v41;
  }

  result = 0;
  --*(v39 + 16);
  return result;
}

uint64_t ktxHashList_DeleteEntry(void *a1, uint64_t a2)
{
  v2 = 11;
  if (a1 && a2)
  {
    v3 = *(a2 + 40);
    if (*(a2 + 40) == 0)
    {
      free(**(*a1 + 32));
      free(*(*a1 + 32));
      *a1 = 0;
      return 0;
    }

    v4 = *a1;
    v5 = *(*a1 + 32);
    v6 = *(v5 + 32);
    if (*(v5 + 24) - v6 == a2)
    {
      *(v5 + 24) = v3 + v6;
    }

    v7 = *(a2 + 48);
    v8 = (v3 + v6 + 16);
    if (!v3)
    {
      v8 = a1;
      v4 = *(a2 + 48);
    }

    *v8 = v7;
    v9 = *(v4 + 32);
    if (v7)
    {
      *(v7 + *(v9 + 32) + 8) = v3;
    }

    v10 = *v9 + 16 * ((*(v9 + 8) - 1) & *(a2 + 84));
    --*(v10 + 8);
    if (*v10 == a2 + 32)
    {
      *v10 = *(a2 + 64);
    }

    v11 = *(a2 + 56);
    v12 = *(a2 + 64);
    if (v11)
    {
      *(v11 + 32) = v12;
    }

    if (v12)
    {
      *(v12 + 24) = v11;
    }

    v2 = 0;
    --*(v9 + 16);
  }

  return v2;
}

uint64_t ktxHashList_FindEntry(uint64_t *a1, char *__s, void *a3)
{
  result = 11;
  if (a1 && __s)
  {
    v6 = *a1;
    if (!*a1)
    {
      return 12;
    }

    v8 = -17973521;
    v9 = -1640531527;
    v10 = strlen(__s);
    v11 = v10;
    if (v10 < 0xC)
    {
      v14 = -1640531527;
      v13 = v10;
      v12 = __s;
      v23 = v10 - 17973521;
      if (v10 > 5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = __s;
      v13 = v10;
      v14 = -1640531527;
      do
      {
        v15 = v9 + v12[4] + (v12[5] << 8) + (v12[6] << 16) + (v12[7] << 24);
        v16 = v8 + v12[8] + (v12[9] << 8) + (v12[10] << 16) + (v12[11] << 24);
        v17 = (v14 + *v12 + (v12[1] << 8) + (v12[2] << 16) + (v12[3] << 24) - (v15 + v16)) ^ (v16 >> 13);
        v18 = (v15 - v16 - v17) ^ (v17 << 8);
        v19 = (v16 - v17 - v18) ^ (v18 >> 13);
        v20 = (v17 - v18 - v19) ^ (v19 >> 12);
        v21 = (v18 - v19 - v20) ^ (v20 << 16);
        v22 = (v19 - v20 - v21) ^ (v21 >> 5);
        v14 = (v20 - v21 - v22) ^ (v22 >> 3);
        v9 = (v21 - v22 - v14) ^ (v14 << 10);
        v8 = (v22 - v14 - v9) ^ (v9 >> 15);
        v12 += 12;
        v13 -= 12;
      }

      while (v13 > 0xB);
      v23 = v8 + v10;
      if (v13 > 5)
      {
LABEL_8:
        if (v13 > 8)
        {
          if (v13 != 9)
          {
            if (v13 != 10)
            {
              v23 += v12[10] << 24;
            }

            v23 += v12[9] << 16;
          }

          v23 += v12[8] << 8;
        }

        else
        {
          if (v13 == 6)
          {
LABEL_26:
            v9 += v12[5] << 8;
            goto LABEL_27;
          }

          if (v13 == 7)
          {
LABEL_25:
            v9 += v12[6] << 16;
            goto LABEL_26;
          }

          if (v13 != 8)
          {
            goto LABEL_32;
          }
        }

        v9 += v12[7] << 24;
        goto LABEL_25;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        goto LABEL_31;
      }

      if (v13 == 2)
      {
LABEL_30:
        v14 += v12[1] << 8;
LABEL_31:
        v14 += *v12;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
LABEL_29:
          v14 += v12[2] << 16;
          goto LABEL_30;
        case 4:
LABEL_28:
          v14 += v12[3] << 24;
          goto LABEL_29;
        case 5:
LABEL_27:
          v9 += v12[4];
          goto LABEL_28;
      }
    }

LABEL_32:
    v24 = (v14 - v9 - v23) ^ (v23 >> 13);
    v25 = (v9 - v23 - v24) ^ (v24 << 8);
    v26 = (v23 - v24 - v25) ^ (v25 >> 13);
    v27 = (v24 - v25 - v26) ^ (v26 >> 12);
    v28 = (v25 - v26 - v27) ^ (v27 << 16);
    v29 = (v26 - v27 - v28) ^ (v28 >> 5);
    v30 = (v27 - v28 - v29) ^ (v29 >> 3);
    v31 = *(v6 + 32);
    v32 = *(*v31 + 16 * (((v29 - v30 - ((v28 - v29 - v30) ^ (v30 << 10))) ^ (((v28 - v29 - v30) ^ (v30 << 10)) >> 15)) & (*(v31 + 8) - 1)));
    if (v32)
    {
      v33 = v32 - *(v31 + 32);
      if (*(v33 + 80) != v10)
      {
        goto LABEL_37;
      }

LABEL_36:
      result = memcmp(*(v33 + 72), __s, v11);
      if (!result)
      {
        *a3 = v33;
        return result;
      }

LABEL_37:
      while (1)
      {
        v34 = *(v33 + 64);
        if (!v34)
        {
          break;
        }

        v33 = v34 - *(v31 + 32);
        if (*(v33 + 80) == v11)
        {
          goto LABEL_36;
        }
      }
    }

    return 12;
  }

  return result;
}

uint64_t ktxHashList_FindValue(uint64_t *a1, char *a2, _DWORD *a3, void *a4)
{
  result = 11;
  if (a3)
  {
    if (a4)
    {
      v11 = 0;
      result = ktxHashList_FindEntry(a1, a2, &v11);
      if (!result)
      {
        v8 = v11;
        v9 = *(v11 + 16);
        *a3 = v9;
        if (v9)
        {
          v10 = *(v8 + 24);
        }

        else
        {
          v10 = 0;
        }

        *a4 = v10;
      }
    }
  }

  return result;
}

uint64_t ktxHashListEntry_GetValue(uint64_t a1, _DWORD *a2, void *a3)
{
  result = 11;
  if (a2 && a3)
  {
    v5 = *(a1 + 16);
    *a2 = v5;
    if (v5)
    {
      v6 = *(a1 + 24);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t ktxHashList_Serialize(unsigned int **a1, _DWORD *a2, unsigned int **a3)
{
  v3 = 11;
  if (a1 && a2 && a3)
  {
    __src = 0;
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_15;
    }

    LODWORD(v5) = 0;
    do
    {
      v5 = v5 + vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(*v4 + v4[4] + 4, 2uLL)), 2uLL);
      v4 = *(v4 + 6);
    }

    while (v4);
    if (v5)
    {
      v9 = malloc_type_malloc(v5, 0x1B7A4C39uLL);
      if (v9)
      {
        v10 = v9;
        *a2 = v5;
        *a3 = v9;
        for (i = *a1; i; i = *(i + 6))
        {
          v15 = i[4] + *i;
          *v10 = v15;
          v16 = (v10 + 1);
          memcpy(v16, *(i + 1), *i);
          v17 = &v16[*i];
          v18 = i[4];
          if (v18)
          {
            memcpy(v17, *(i + 3), v18);
            v12 = i[4];
          }

          else
          {
            v12 = 0;
          }

          v13 = &v17[v12];
          v14 = -(v15 - (ceilf(vcvts_n_f32_u32(v15, 2uLL)) * 4.0));
          memcpy(v13, &__src, v14);
          v10 = &v13[v14];
        }

        return 0;
      }

      else
      {
        return 13;
      }
    }

    else
    {
LABEL_15:
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  return v3;
}

uint64_t ktxHashList_Sort(uint64_t *a1)
{
  if (!a1)
  {
    return 11;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = (v1 + 32);
  v3 = 1;
  v4 = v1 + 32;
  do
  {
    v5 = 0;
    v6 = 0;
    v7 = v4;
    v4 = 0;
    do
    {
      v8 = 0;
      v9 = v7;
      if (v3)
      {
        while (1)
        {
          ++v8;
          v10 = *(v9 + 16);
          if (!v10)
          {
            break;
          }

          v9 = v10 + *(*v2 + 32);
          if (v3 == v8)
          {
            v8 = v3;
            goto LABEL_11;
          }
        }

        v9 = 0;
      }

LABEL_11:
      ++v6;
      v11 = v3;
      while (1)
      {
        v14 = !v11 || v9 == 0;
        v15 = !v14;
        if (!v8)
        {
          break;
        }

        if (!v15)
        {
          v21 = *(v7 + 16);
          if (v21)
          {
            v18 = v21 + *(*v2 + 32);
          }

          else
          {
            v18 = 0;
          }

LABEL_39:
          --v8;
          v19 = v9;
          v20 = v7;
          if (v5)
          {
            goto LABEL_12;
          }

          goto LABEL_40;
        }

        v16 = *(*v2 + 32);
        if (strcmp(*(v7 - v16 + 8), *(v9 - v16 + 8)) <= 0)
        {
          v17 = *(v7 + 16);
          v18 = v17 + v16;
          if (!v17)
          {
            v18 = 0;
          }

          goto LABEL_39;
        }

        v22 = *(v9 + 16);
        if (v22)
        {
          v19 = v22 + v16;
        }

        else
        {
          v19 = 0;
        }

        --v11;
        v18 = v7;
        v20 = v9;
        if (v5)
        {
          goto LABEL_12;
        }

LABEL_40:
        v13 = 0;
        v4 = v20;
LABEL_13:
        *(v20 + 8) = v13;
        v7 = v18;
        v9 = v19;
        v5 = v20;
      }

      if (v15)
      {
        v19 = *(v9 + 16);
        if (v19)
        {
          v19 += *(*v2 + 32);
        }

        v8 = 0;
        --v11;
        v18 = v7;
        v20 = v9;
        if (v5)
        {
LABEL_12:
          v12 = *(*v2 + 32);
          *(v5 + 16) = v20 - v12;
          v13 = v5 - v12;
          goto LABEL_13;
        }

        goto LABEL_40;
      }

      v7 = v9;
    }

    while (v9);
    *(v5 + 16) = 0;
    if (v6 <= 1)
    {
      goto LABEL_44;
    }

    v3 *= 2;
  }

  while (v4);
  v5 = 0;
  MEMORY[0x10] = 0;
LABEL_44:
  result = 0;
  v24 = *v2;
  *(v24 + 24) = v5;
  *a1 = v4 - *(v24 + 32);
  return result;
}

uint64_t ktxHashList_Deserialize(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        if (*a1)
        {
          return 10;
        }

        else
        {
          v7 = (a3 + a2);
          v8 = a3;
          while (v6 - v8 + a2 >= 4)
          {
            v9 = *v8;
            if (*v8 < 2)
            {
              break;
            }

            v10 = (v8 + 1);
            v11 = v6 - (v8 + 4) + a2;
            if (v9 > v11)
            {
              break;
            }

            v12 = strnlen(v10, v11) + 1;
            if (v9 <= v12)
            {
              break;
            }

            result = ktxHashList_AddKVPair(a1, v10, v9 - v12, &v10[v12]);
            if (result)
            {
              return result;
            }

            LODWORD(v13) = vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(v9, 2uLL)), 2uLL);
            v8 = &v10[v13];
            if (v8 >= v7)
            {
              return 0;
            }
          }

          return 11;
        }
      }
    }
  }

  return result;
}

uint64_t ktxHashListEntry_GetKey(uint64_t a1, _DWORD *a2, void *a3)
{
  result = 11;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = *a1;
      *a3 = *(a1 + 8);
    }
  }

  return result;
}

uint64_t ktxMemStream_getdata(uint64_t a1, void *a2)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(*(a1 + 64) + 8);
    }
  }

  return result;
}

uint64_t ktxMemStream_setup(uint64_t result)
{
  *(result + 56) = 2;
  *result = ktxMemStream_read;
  *(result + 8) = ktxMemStream_skip;
  *(result + 16) = ktxMemStream_write;
  *(result + 24) = ktxMemStream_getpos;
  *(result + 32) = ktxMemStream_setpos;
  *(result + 40) = ktxMemStream_getsize;
  *(result + 48) = ktxMemStream_destruct;
  return result;
}

uint64_t ktxMemStream_read(uint64_t a1, void *__dst, size_t a3)
{
  if (!a1)
  {
    return 11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 11;
  }

  v4 = v3[4];
  v5 = v4 + a3;
  if ((v4 + a3) < v4)
  {
    return 7;
  }

  if (v3[3] < v5)
  {
    return 7;
  }

  v7 = *v3;
  if (!*v3)
  {
    v7 = v3[1];
  }

  memcpy(__dst, (v7 + v4), a3);
  result = 0;
  v3[4] = v5;
  return result;
}

uint64_t ktxMemStream_skip(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 11;
  }

  v3 = *(v2 + 32);
  v4 = v3 + a2;
  if (v3 + a2 < v3)
  {
    return 7;
  }

  if (*(v2 + 24) < v4)
  {
    return 7;
  }

  result = 0;
  *(v2 + 32) = v4;
  return result;
}

uint64_t ktxMemStream_write(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 11;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 11;
  }

  if (*v4)
  {
    return 10;
  }

  v6 = v4[4];
  v7 = a4 * a3;
  v8 = v6 + a4 * a3;
  if (v8 < v6)
  {
    return 4;
  }

  v9 = v4[2];
  if (v9 < v8)
  {
    if (v9)
    {
      v10 = v4[2];
    }

    else
    {
      v10 = 256;
    }

    if (v10 < v8)
    {
      do
      {
        v11 = v10 < 0;
        v10 *= 2;
        if (v11)
        {
          v12 = -1;
        }

        else
        {
          v12 = v10;
        }
      }

      while (v12 < v8);
      v10 = v12;
    }

    if (v10 != v9)
    {
      v13 = a2;
      v14 = v4[1];
      if (v14)
      {
        v15 = malloc_type_realloc(v14, v10, 0x100004077774924uLL);
      }

      else
      {
        v15 = malloc_type_malloc(v10, 0x100004077774924uLL);
      }

      v4[1] = v15;
      if (!v15)
      {
        v4[2] = 0;
        v4[3] = 0;
        return 13;
      }

      a2 = v13;
      v4[2] = v10;
      v6 = v4[4];
    }
  }

  memcpy((v4[1] + v6), a2, v7);
  v16 = v4[3];
  v17 = v4[4] + v7;
  v4[4] = v17;
  result = 0;
  if (v17 > v16)
  {
    v4[3] = v17;
  }

  return result;
}

uint64_t ktxMemStream_getpos(uint64_t a1, void *a2)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(*(a1 + 64) + 32);
    }
  }

  return result;
}

uint64_t ktxMemStream_setpos(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (*(v2 + 16) < a2)
  {
    return 10;
  }

  result = 0;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ktxMemStream_getsize(uint64_t a1, void *a2)
{
  result = 11;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(*(a1 + 64) + 24);
    }
  }

  return result;
}

void ktxMemStream_destruct(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 96) == 1)
  {
    free(v2[1]);
  }

  free(v2);
  *(a1 + 64) = 0;
}

uint64_t ktxMemStream_construct(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 11;
  }

  v4 = malloc_type_malloc(0x28uLL, 0x105004059AC37B4uLL);
  if (!v4)
  {
    return 13;
  }

  v5 = v4;
  *(v4 + 1) = 0u;
  v6 = v4 + 16;
  *(v4 + 4) = 0;
  *v4 = 0u;
  v7 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  *(v5 + 1) = v7;
  if (v7)
  {
    result = 0;
    *(v5 + 2) = 256;
    *(a1 + 64) = v5;
    *(a1 + 56) = 2;
    *a1 = ktxMemStream_read;
    *(a1 + 8) = ktxMemStream_skip;
    *(a1 + 16) = ktxMemStream_write;
    *(a1 + 24) = ktxMemStream_getpos;
    *(a1 + 32) = ktxMemStream_setpos;
    *(a1 + 40) = ktxMemStream_getsize;
    *(a1 + 48) = ktxMemStream_destruct;
    *(a1 + 96) = a2;
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    return 13;
  }

  return result;
}

uint64_t ktxMemStream_construct_ro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 11;
  if (a1 && a2 && a3)
  {
    v7 = malloc_type_malloc(0x28uLL, 0x105004059AC37B4uLL);
    if (v7)
    {
      v8 = v7;
      result = 0;
      v8[3] = a3;
      v8[4] = 0;
      *v8 = a2;
      v8[1] = 0;
      v8[2] = a3;
      *(a1 + 64) = v8;
      *(a1 + 56) = 2;
      *a1 = ktxMemStream_read;
      *(a1 + 8) = ktxMemStream_skip;
      *(a1 + 16) = ktxMemStream_write;
      *(a1 + 24) = ktxMemStream_getpos;
      *(a1 + 32) = ktxMemStream_setpos;
      *(a1 + 40) = ktxMemStream_getsize;
      *(a1 + 48) = ktxMemStream_destruct;
      *(a1 + 96) = 0;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

int8x16_t *_ktxSwapEndian16(int8x16_t *result, unint64_t a2)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v2 = 0;
      v3 = result;
      goto LABEL_15;
    }

    if (a2 >= 0x10)
    {
      v2 = a2 & 0xFFFFFFFFFFFFFFF0;
      v4 = result + 1;
      v5 = a2 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = vrev16q_s8(*v4);
        v4[-1] = vrev16q_s8(v4[-1]);
        *v4 = v6;
        v4 += 2;
        v5 -= 16;
      }

      while (v5);
      if (v2 == a2)
      {
        return result;
      }

      if ((a2 & 0xC) == 0)
      {
        v3 = (result + 2 * v2);
LABEL_15:
        v10 = a2 - v2;
        do
        {
          v3->i16[0] = bswap32(v3->u16[0]) >> 16;
          v3 = (v3 + 2);
          --v10;
        }

        while (v10);
        return result;
      }
    }

    else
    {
      v2 = 0;
    }

    v7 = v2;
    v2 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v3 = (result + 2 * (a2 & 0xFFFFFFFFFFFFFFFCLL));
    v8 = (result + 2 * v7);
    v9 = v7 - (a2 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v8 = vrev16_s8(*v8);
      ++v8;
      v9 += 4;
    }

    while (v9);
    if (v2 != a2)
    {
      goto LABEL_15;
    }
  }

  return result;
}

int8x16_t *_ktxSwapEndian32(int8x16_t *result, unint64_t a2)
{
  if (a2)
  {
    if (a2 <= 7)
    {
      v2 = 0;
      v3 = result;
LABEL_7:
      v7 = a2 - v2;
      do
      {
        v3->i32[0] = bswap32(v3->i32[0]);
        v3 = (v3 + 4);
        --v7;
      }

      while (v7);
      return result;
    }

    v2 = a2 & 0xFFFFFFFFFFFFFFF8;
    v3 = (result + 4 * (a2 & 0xFFFFFFFFFFFFFFF8));
    v4 = result + 1;
    v5 = a2 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v6 = vrev32q_s8(*v4);
      v4[-1] = vrev32q_s8(v4[-1]);
      *v4 = v6;
      v4 += 2;
      v5 -= 8;
    }

    while (v5);
    if (v2 != a2)
    {
      goto LABEL_7;
    }
  }

  return result;
}

int8x16_t *_ktxSwapEndian64(int8x16_t *result, unint64_t a2)
{
  if (a2)
  {
    if (a2 <= 3)
    {
      v2 = 0;
      v3 = result;
LABEL_7:
      v8 = a2 - v2;
      do
      {
        v3->i64[0] = bswap64(v3->i64[0] & 0xFF00FFFFFFFFFFFFLL);
        v3 = (v3 + 8);
        --v8;
      }

      while (v8);
      return result;
    }

    v2 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v3 = (result + 8 * (a2 & 0xFFFFFFFFFFFFFFFCLL));
    v4 = result + 1;
    v5.i64[0] = 0xFF00FFFFFFFFFFFFLL;
    v5.i64[1] = 0xFF00FFFFFFFFFFFFLL;
    v6 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v7 = vrev64q_s8(vandq_s8(*v4, v5));
      v4[-1] = vrev64q_s8(vandq_s8(v4[-1], v5));
      *v4 = v7;
      v4 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v2 != a2)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t ktxTexture_construct(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v6 = malloc_type_malloc(0xA8uLL, 0x10A2040785DE303uLL);
  *(a1 + 24) = v6;
  if (!v6)
  {
    return 13;
  }

  *(v6 + 20) = 0;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = *a3;
  *(v6 + 40) = a3[1];
  *(v6 + 24) = v7;
  *(a1 + 34) = (*a3 & 2) != 0;
  *(a1 + 64) = 0x6400000072;
  *(a1 + 72) = 111;
  v8 = *(a2 + 28);
  if ((v8 - 4) < 0xFFFFFFFD)
  {
    return 11;
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    return 11;
  }

  v11 = *(a2 + 20);
  if (!v11)
  {
    return 11;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    return 11;
  }

  if (v8 == 3)
  {
    if ((*(a2 + 44) & 1) != 0 || *(a2 + 40) != 1 || *(a2 + 36) != 1)
    {
      return 10;
    }
  }

  else if (v8 == 2)
  {
    if (v12 != 1)
    {
      return 10;
    }
  }

  else
  {
    result = 10;
    if (v11 != 1 || v12 != 1)
    {
      return result;
    }
  }

  *(a1 + 44) = v12;
  *(a1 + 48) = v8;
  *(a1 + 36) = v10;
  *(a1 + 40) = v11;
  v13 = *(a2 + 36);
  if (!v13)
  {
    return 11;
  }

  *(a1 + 56) = v13;
  v14 = *(a2 + 40);
  if (v14 == 1)
  {
    goto LABEL_25;
  }

  if (v14 != 6)
  {
    return 11;
  }

  result = 10;
  if (v8 == 2 && v10 == v11)
  {
    *(a1 + 33) = 1;
LABEL_25:
    *(a1 + 60) = v14;
    v15 = *(a2 + 32);
    if (v15)
    {
      *(a1 + 52) = v15;
      *(a1 + 35) = *(a2 + 45);
      v16 = v15 - 1;
      if (!v16)
      {
        goto LABEL_32;
      }

      if (v10 <= v11)
      {
        v10 = v11;
      }

      if (v10 <= v12)
      {
        v10 = v12;
      }

      if (v10 >> v16)
      {
LABEL_32:
        *(a1 + 56) = v13;
        *(a1 + 32) = *(a2 + 44);
        ktxHashList_Construct((a1 + 80));
        return 0;
      }

      return 10;
    }

    return 11;
  }

  return result;
}

uint64_t ktxTexture_constructFromStream(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0xA8uLL, 0x10A2040785DE303uLL);
  *(a1 + 24) = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 32);
  v4[4] = *a2;
  v4[5] = v6;
  v4[6] = v5;
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  v9 = *(a2 + 48);
  *(v4 + 20) = *(a2 + 96);
  v4[8] = v8;
  v4[9] = v7;
  v4[7] = v9;
  *(a1 + 64) = 0x6400000072;
  *(a1 + 72) = 111;
  return 0;
}

void ktxTexture_destruct(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 144);
  v10 = *(v2 + 128);
  v11 = v3;
  v12 = *(v2 + 160);
  v4 = *(v2 + 80);
  v8[0] = *(v2 + 64);
  v8[1] = v4;
  v5 = *(v2 + 112);
  v8[2] = *(v2 + 96);
  v9 = v5;
  if (v10)
  {
    (v9)(v8);
  }

  if (*(a1 + 80))
  {
    ktxHashList_Destruct((a1 + 80));
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    free(v7);
  }

  free(*(a1 + 24));
}

uint64_t ktxTexture_CreateFromStream(uint64_t (**a1)(void, int8x16_t *, uint64_t), uint64_t a2, void *a3)
{
  v4 = a2;
  v14 = *MEMORY[0x1E69E9840];
  memset(&v13, 0, 80);
  result = (*a1)(a1, &v13, 12);
  if (result)
  {
    return result;
  }

  if (v13.i64[0] == 0xBB31312058544BABLL && v13.i32[2] == 169478669)
  {
    result = (*a1)(a1, (&v13 | 0xC), 52);
    if (result)
    {
      return result;
    }

    v9 = malloc_type_malloc(0x90uLL, 0x10300406A34F8ACuLL);
    if (v9)
    {
      v10 = v9;
      v9[7] = 0u;
      v9[8] = 0u;
      v9[5] = 0u;
      v9[6] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      *v9 = 0u;
      result = ktxTexture1_constructFromStreamAndHeader(v9, a1, &v13, v4);
      if (!result)
      {
LABEL_16:
        *a3 = v10;
        return result;
      }

LABEL_15:
      v11 = result;
      free(v10);
      result = v11;
      v10 = 0;
      goto LABEL_16;
    }

    return 13;
  }

  if (v13.i64[0] != 0xBB30322058544BABLL || v13.u32[2] != 169478669)
  {
    return 15;
  }

  result = (*a1)(a1, (&v13 | 0xC), 68);
  if (!result)
  {
    v12 = malloc_type_malloc(0xA8uLL, 0x1030040B443E594uLL);
    if (v12)
    {
      v10 = v12;
      *(v12 + 20) = 0;
      v12[8] = 0u;
      v12[9] = 0u;
      v12[6] = 0u;
      v12[7] = 0u;
      v12[4] = 0u;
      v12[5] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      *v12 = 0u;
      v12[1] = 0u;
      result = ktxTexture2_constructFromStreamAndHeader(v12, a1, &v13, v4);
      if (!result)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    return 13;
  }

  return result;
}

uint64_t ktxTexture_CreateFromStdioStream(uint64_t a1, uint64_t a2, void *a3)
{
  result = 11;
  if (a1 && a3)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    result = ktxFileStream_construct(v7, a1, 0);
    if (!result)
    {
      return ktxTexture_CreateFromStream(v7, a2, a3);
    }
  }

  return result;
}

uint64_t ktxTexture_CreateFromNamedFile(char *__filename, uint64_t a2, void *a3)
{
  result = 11;
  if (__filename && a3)
  {
    v7 = fopen(__filename, "rb");
    if (v7)
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      result = ktxFileStream_construct(v8, v7, 1);
      if (!result)
      {
        return ktxTexture_CreateFromStream(v8, a2, a3);
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t ktxTexture_CreateFromMemory(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 11;
  if (a2 && a1 && a4)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = ktxMemStream_construct_ro(v9, a1, a2);
    if (!result)
    {
      return ktxTexture_CreateFromStream(v9, a3, a4);
    }
  }

  return result;
}

uint64_t ktxTexture_calcImageSize(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 24);
  v4 = vcvtps_u32_f32((*(a1 + 36) >> a2) / *(v3 + 36));
  v5 = *(v3 + 48);
  if (v5 > v4)
  {
    v4 = *(v3 + 48);
  }

  v6 = v4 * (*(v3 + 32) >> 3);
  if ((*(v3 + 24) & 2) == 0 && a3 == 1)
  {
    v6 += -(v6 - (ceilf(vcvts_n_f32_u32(v6, 2uLL)) * 4.0));
  }

  v7 = vcvtps_u32_f32((*(a1 + 40) >> a2) / *(v3 + 40));
  if (v5 > v7)
  {
    v7 = *(v3 + 48);
  }

  return v6 * v7;
}

uint64_t ktxTexture_IterateLevelFaces(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  result = 11;
  if (a1 && a2)
  {
    if (*(a1 + 52))
    {
      result = 0;
      v7 = 0;
      while (1)
      {
        v8 = result;
        v9 = *(a1 + 40);
        v10 = *(a1 + 36) >> v7;
        v11 = v10 <= 1 ? 1 : v10;
        v12 = v9 >> v7 <= 1 ? 1 : v9 >> v7;
        v13 = *(a1 + 44) >> v7;
        v14 = v13 <= 1 ? 1 : v13;
        v15 = (*(*(a1 + 24) + 8))(a1, v7);
        if (*(a1 + 33) != 1 || (*(a1 + 32) & 1) != 0)
        {
          break;
        }

        v16 = *(a1 + 60);
        result = v8;
        if (v16)
        {
          goto LABEL_18;
        }

LABEL_5:
        v7 = (v7 + 1);
        if (v7 >= *(a1 + 52))
        {
          return result;
        }
      }

      v16 = 1;
LABEL_18:
      v17 = 0;
      v18 = v15;
      while (1)
      {
        v19 = 0;
        (*(*(a1 + 8) + 8))(a1, v7, 0, v17, &v19);
        result = a2(v7, v17, v11, v12, v14, v18, *(a1 + 112) + v19, a3);
        if (result)
        {
          goto LABEL_5;
        }

        v17 = (v17 + 1);
        if (v16 == v17)
        {
          result = 0;
          goto LABEL_5;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t ktxTexture_layerSize(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 24);
  v4 = vcvtps_u32_f32((*(a1 + 36) >> a2) / v3[9]);
  v5 = v3[12];
  if (v5 > v4)
  {
    v4 = v3[12];
  }

  v6 = v4 * (v3[8] >> 3);
  if (a3 == 1 && (v3[6] & 2) == 0)
  {
    v6 += -(v6 - (ceilf(vcvts_n_f32_u32(v6, 2uLL)) * 4.0));
  }

  LODWORD(v7) = (*(a1 + 44) / v3[11]) >> a2;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v8 = vcvtps_u32_f32((*(a1 + 40) >> a2) / v3[10]);
  if (v5 > v8)
  {
    v8 = v3[12];
  }

  return *(a1 + 60) * (v6 * v8) * v7;
}

unint64_t ktxTexture_calcLevelSize(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 24);
  v4 = vcvtps_u32_f32((*(a1 + 36) >> a2) / v3[9]);
  v5 = v3[12];
  if (v5 > v4)
  {
    v4 = v3[12];
  }

  v6 = v4 * (v3[8] >> 3);
  if (a3 == 1 && (v3[6] & 2) == 0)
  {
    v6 += -(v6 - (ceilf(vcvts_n_f32_u32(v6, 2uLL)) * 4.0));
  }

  LODWORD(v7) = (*(a1 + 44) / v3[11]) >> a2;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  v8 = vcvtps_u32_f32((*(a1 + 40) >> a2) / v3[10]);
  if (v5 > v8)
  {
    v8 = v3[12];
  }

  return *(a1 + 60) * (v6 * v8) * v7 * *(a1 + 56);
}

unint64_t ktxTexture_doCalcFaceLodSize(uint64_t a1, char a2, int a3)
{
  if (*(a1 + 33) == 1 && (*(a1 + 32) & 1) == 0)
  {
    v10 = *(a1 + 24);
    v11 = vcvtps_u32_f32((*(a1 + 36) >> a2) / v10[9]);
    v12 = v10[12];
    if (v12 > v11)
    {
      v11 = v10[12];
    }

    v13 = v11 * (v10[8] >> 3);
    if (a3 == 1 && (v10[6] & 2) == 0)
    {
      v13 += -(v13 - (ceilf(vcvts_n_f32_u32(v13, 2uLL)) * 4.0));
    }

    v14 = vcvtps_u32_f32((*(a1 + 40) >> a2) / v10[10]);
    if (v12 > v14)
    {
      v14 = v10[12];
    }

    return v13 * v14;
  }

  else
  {
    v3 = *(a1 + 24);
    v4 = vcvtps_u32_f32((*(a1 + 36) >> a2) / v3[9]);
    v5 = v3[12];
    if (v5 > v4)
    {
      v4 = v3[12];
    }

    v6 = v4 * (v3[8] >> 3);
    if (a3 == 1 && (v3[6] & 2) == 0)
    {
      v6 += -(v6 - (ceilf(vcvts_n_f32_u32(v6, 2uLL)) * 4.0));
    }

    LODWORD(v7) = (*(a1 + 44) / v3[11]) >> a2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = vcvtps_u32_f32((*(a1 + 40) >> a2) / v3[10]);
    if (v5 > v8)
    {
      v8 = v3[12];
    }

    return *(a1 + 60) * (v6 * v8) * v7 * *(a1 + 56);
  }
}

float ktxTexture_rowInfo(uint64_t a1, char a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(a1 + 24);
  v6 = (*(a1 + 36) / v5[9]) >> a2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (*(a1 + 40) / v5[10]) >> a2;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *a3 = v7;
  v8 = (v5[8] * v6) >> 3;
  result = -(v8 - (ceilf(vcvts_n_f32_u32(v8, 2uLL)) * 4.0));
  *a4 = v8 + result;
  *a5 = result;
  return result;
}

uint64_t ktxTexture_GetRowPitch(uint64_t a1, char a2)
{
  v2 = (*(a1 + 36) / *(*(a1 + 24) + 36)) >> a2;
  if (v2 <= 1)
  {
    v2 = 1;
  }

  return ((v2 * *(*(a1 + 24) + 32)) >> 3) + -(((v2 * *(*(a1 + 24) + 32)) >> 3) - (ceilf(vcvts_n_f32_u32((v2 * *(*(a1 + 24) + 32)) >> 3, 2uLL)) * 4.0));
}

uint64_t ktxTexture1_constructFromStreamAndHeader(uint64_t a1, uint64_t a2, int8x16_t *a3, char a4)
{
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = ktxTexture_constructFromStream(a1, a2);
  if (result)
  {
    return result;
  }

  *a1 = 1;
  *(a1 + 8) = ktxTexture1_vtbl;
  v8 = *(a1 + 24);
  v9 = ktxTexture1_vtblInt;
  *(v8 + 16) = off_1EE39B0A8[0];
  *v8 = v9;
  v10 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
  *(a1 + 136) = v10;
  if (!v10)
  {
    ktxTexture_destruct(a1);
    return 13;
  }

  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0u;
  v34 = 0u;
  *v10 = 0;
  v11 = *(a1 + 136);
  v12 = *(a1 + 24);
  result = ktxCheckHeader1_(a3, &v37);
  if (result)
  {
    goto LABEL_4;
  }

  v15 = a3[1].i32[3];
  *(a1 + 120) = a3[1].i32[2];
  *(a1 + 124) = v15;
  *(a1 + 132) = a3[1].i32[0];
  glGetFormatSize(v15, &v33);
  if (!DWORD2(v33))
  {
    result = 16;
    goto LABEL_4;
  }

  v16 = *(a1 + 24);
  v17 = v34;
  *(v16 + 24) = v33;
  *(v16 + 40) = v17;
  v18 = a3[2].i32[1];
  *(a1 + 128) = a3[2].i32[0];
  v19 = HIWORD(v37);
  *(a1 + 48) = HIWORD(v37);
  *(a1 + 36) = v18;
  switch(v19)
  {
    case 3:
      v20 = a3[2].i64[1];
      break;
    case 2:
      *(a1 + 40) = a3[2].i32[2];
      *(a1 + 44) = 1;
      goto LABEL_18;
    case 1:
      v20 = 0x100000001;
      break;
    default:
      goto LABEL_18;
  }

  *(a1 + 40) = v20;
LABEL_18:
  v21 = a3[3].u32[0];
  v22 = a3[3].i32[1];
  *(a1 + 32) = v21 != 0;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  *(a1 + 60) = v22;
  *(a1 + 33) = v22 == 6;
  *(a1 + 52) = a3[3].i32[2];
  *(a1 + 56) = v21;
  *(a1 + 34) = v37 != 0;
  *(a1 + 35) = BYTE1(v37) != 0;
  if (a3->i32[3] == 16909060)
  {
    *v11 = 1;
  }

  *(*(a1 + 24) + 56) = a3[1].i32[1];
  ktxHashList_Construct((a1 + 80));
  v23 = a3[3].u32[3];
  if (!v23)
  {
    goto LABEL_33;
  }

  if ((a4 & 4) != 0)
  {
    (*(v12 + 72))(v12 + 64, v23);
    goto LABEL_33;
  }

  v24 = malloc_type_malloc(v23, 0x551B176EuLL);
  if (!v24)
  {
    result = 13;
    goto LABEL_4;
  }

  v25 = v24;
  result = (*(v12 + 64))(v12 + 64, v24, v23);
  if (result)
  {
LABEL_4:
    v13 = result;
    v14 = *(a1 + 136);
    if (v14)
    {
      free(v14);
    }

    ktxTexture_destruct(a1);
    return v13;
  }

  if (*v11 == 1)
  {
    v26 = v25;
    do
    {
      _ktxSwapEndian32(v26, 1uLL);
      LODWORD(v27) = vcvts_n_u32_f32(ceilf(v26->u32[0] * 0.25), 2uLL);
      v26 = (v26 + v27);
    }

    while (v26 < (v25 + v23));
  }

  if ((a4 & 2) != 0)
  {
    *(a1 + 88) = v23;
    *(a1 + 96) = v25;
    goto LABEL_33;
  }

  v32 = 0;
  v31 = 0;
  v28 = ktxHashList_Deserialize((a1 + 80), v23, v25);
  free(v25);
  if (v28)
  {
    result = v28;
    goto LABEL_4;
  }

  if (!ktxHashList_FindValue((a1 + 80), "KTXorientation", &v31, &v32))
  {
    v30 = 0;
    sscanf(v32, "S=%c,T=%c,R=%c", &v30, &v30 + 1, &v30 + 2);
    v29 = *(a1 + 48);
    if (v29 != 1)
    {
      if (v29 != 2)
      {
        if (v29 != 3)
        {
          goto LABEL_33;
        }

        *(a1 + 72) = SBYTE2(v30);
      }

      *(a1 + 68) = SBYTE1(v30);
    }

    *(a1 + 64) = v30;
  }

LABEL_33:
  result = (*(v12 + 104))(v12 + 64, &v35);
  if (result)
  {
    goto LABEL_4;
  }

  result = (*(v12 + 88))(v12 + 64, &v36);
  if (result)
  {
    goto LABEL_4;
  }

  *(a1 + 104) = v35 - (v36 + 4 * *(a1 + 52));
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  result = ktxTexture1_LoadImageData(a1, 0, 0);
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

double glGetFormatSize(int a1, uint64_t a2)
{
  *(a2 + 24) = 0x100000001;
  if (a1 <= 36165)
  {
    if (a1 <= 34797)
    {
      if (a1 > 33188)
      {
        switch(a1)
        {
          case 33189:
            *a2 = xmmword_186233C80;
            *&result = 0x100000001;
            *(a2 + 16) = 0x100000001;
            return result;
          case 33190:
          case 33191:
            goto LABEL_41;
          case 33192:
          case 33193:
          case 33194:
          case 33195:
          case 33196:
          case 33197:
          case 33198:
          case 33199:
          case 33200:
          case 33201:
          case 33202:
          case 33203:
          case 33204:
          case 33205:
          case 33206:
          case 33207:
          case 33208:
          case 33209:
          case 33210:
          case 33211:
          case 33212:
          case 33213:
          case 33214:
          case 33215:
          case 33216:
          case 33217:
          case 33218:
          case 33219:
          case 33220:
          case 33221:
          case 33222:
          case 33223:
          case 33224:
          case 33225:
          case 33226:
          case 33227:
          case 33228:
          case 33229:
          case 33230:
          case 33231:
          case 33232:
          case 33233:
          case 33234:
          case 33235:
          case 33236:
          case 33237:
          case 33238:
          case 33239:
          case 33240:
          case 33241:
          case 33242:
          case 33243:
          case 33244:
          case 33245:
          case 33246:
          case 33247:
          case 33248:
          case 33249:
          case 33250:
          case 33251:
          case 33252:
          case 33253:
          case 33254:
          case 33255:
          case 33256:
          case 33257:
          case 33258:
          case 33259:
          case 33260:
          case 33261:
          case 33262:
          case 33263:
          case 33264:
          case 33265:
          case 33266:
          case 33267:
          case 33268:
          case 33269:
          case 33270:
          case 33271:
          case 33272:
          case 33273:
          case 33274:
          case 33275:
          case 33276:
          case 33277:
          case 33278:
          case 33279:
          case 33280:
          case 33281:
          case 33282:
          case 33283:
          case 33284:
          case 33285:
          case 33286:
          case 33287:
          case 33288:
          case 33289:
          case 33290:
          case 33291:
          case 33292:
          case 33293:
          case 33294:
          case 33295:
          case 33296:
          case 33297:
          case 33298:
          case 33299:
          case 33300:
          case 33301:
          case 33302:
          case 33303:
          case 33304:
          case 33305:
          case 33306:
          case 33307:
          case 33308:
          case 33309:
          case 33310:
          case 33311:
          case 33312:
          case 33313:
          case 33314:
          case 33315:
          case 33316:
          case 33317:
          case 33318:
          case 33319:
          case 33320:
            goto LABEL_95;
          case 33321:
          case 33329:
          case 33330:
            goto LABEL_37;
          case 33322:
          case 33323:
          case 33325:
          case 33331:
          case 33332:
          case 33335:
          case 33336:
            goto LABEL_8;
          case 33324:
          case 33326:
          case 33327:
          case 33333:
          case 33334:
          case 33337:
          case 33338:
            goto LABEL_56;
          case 33328:
          case 33339:
          case 33340:
            goto LABEL_48;
          default:
            if ((a1 - 33776) < 2)
            {
              goto LABEL_60;
            }

            if ((a1 - 33778) < 2)
            {
              goto LABEL_40;
            }

            goto LABEL_95;
        }
      }

      switch(a1)
      {
        case 32847:
          *a2 = xmmword_186233DE0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 32848:
        case 32854:
LABEL_20:
          *a2 = xmmword_186233DB0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 32849:
          goto LABEL_57;
        case 32850:
        case 32855:
        case 32857:
          goto LABEL_54;
        case 32851:
          *a2 = xmmword_186233DD0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 32852:
          goto LABEL_44;
        case 32853:
          goto LABEL_91;
        case 32856:
          goto LABEL_56;
        case 32858:
          *a2 = xmmword_186233DA0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 32859:
          goto LABEL_48;
        default:
          if (a1 != 10768)
          {
            goto LABEL_95;
          }

LABEL_91:
          *a2 = xmmword_186233DC0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          break;
      }

      return result;
    }

    if (a1 > 35413)
    {
      switch(a1)
      {
        case 35728:
          *a2 = xmmword_186233CE0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35729:
          *a2 = xmmword_186233CD0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35730:
        case 35731:
        case 35732:
          *a2 = xmmword_186233CC0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35733:
          *a2 = xmmword_186233CB0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35734:
          *a2 = xmmword_186233CA0;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35735:
        case 35736:
        case 35737:
          *a2 = xmmword_186233C90;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 35738:
        case 35739:
        case 35740:
        case 35741:
        case 35742:
        case 35743:
        case 35744:
        case 35745:
        case 35746:
        case 35747:
        case 35748:
        case 35749:
        case 35750:
        case 35751:
        case 35752:
        case 35753:
        case 35754:
        case 35755:
        case 35756:
        case 35757:
        case 35758:
        case 35759:
        case 35760:
        case 35761:
        case 35762:
        case 35763:
        case 35764:
        case 35765:
        case 35766:
        case 35767:
        case 35768:
        case 35769:
        case 35770:
        case 35771:
        case 35772:
        case 35773:
        case 35774:
        case 35775:
        case 35776:
        case 35777:
        case 35778:
        case 35779:
        case 35780:
        case 35781:
        case 35782:
        case 35783:
        case 35784:
        case 35785:
        case 35786:
        case 35787:
        case 35788:
        case 35789:
        case 35790:
        case 35791:
        case 35792:
        case 35793:
        case 35794:
        case 35795:
        case 35796:
        case 35797:
        case 35798:
        case 35799:
        case 35800:
        case 35801:
        case 35802:
        case 35803:
        case 35804:
        case 35805:
        case 35806:
        case 35807:
        case 35808:
        case 35809:
        case 35810:
        case 35811:
        case 35812:
        case 35813:
        case 35814:
        case 35815:
        case 35816:
        case 35817:
        case 35818:
        case 35819:
        case 35820:
        case 35821:
        case 35822:
        case 35823:
        case 35824:
        case 35825:
        case 35826:
        case 35827:
        case 35828:
        case 35829:
        case 35830:
        case 35831:
        case 35832:
        case 35833:
        case 35834:
        case 35835:
        case 35836:
        case 35837:
        case 35838:
        case 35839:
        case 35844:
        case 35845:
        case 35846:
        case 35847:
        case 35848:
        case 35849:
        case 35850:
        case 35851:
        case 35852:
        case 35853:
        case 35854:
        case 35855:
        case 35856:
        case 35857:
        case 35858:
        case 35859:
        case 35860:
        case 35861:
        case 35862:
        case 35863:
        case 35864:
        case 35865:
        case 35866:
        case 35867:
        case 35868:
        case 35869:
        case 35870:
        case 35871:
        case 35872:
        case 35873:
        case 35874:
        case 35875:
        case 35876:
        case 35877:
        case 35878:
        case 35879:
        case 35880:
        case 35881:
        case 35882:
        case 35883:
        case 35884:
        case 35885:
        case 35886:
        case 35887:
        case 35888:
        case 35889:
        case 35890:
        case 35891:
        case 35892:
        case 35893:
        case 35894:
        case 35895:
        case 35896:
        case 35897:
        case 35899:
        case 35900:
        case 35902:
        case 35903:
        case 35904:
        case 35906:
        case 35908:
        case 35909:
        case 35910:
        case 35911:
        case 35912:
        case 35913:
        case 35914:
        case 35915:
        case 35920:
        case 35921:
        case 35922:
        case 35923:
        case 35924:
        case 35925:
        case 35926:
        case 35927:
        case 35928:
        case 35929:
        case 35930:
        case 35931:
        case 35932:
        case 35933:
        case 35934:
        case 35935:
        case 35936:
        case 35937:
        case 35938:
        case 35939:
        case 35940:
        case 35941:
        case 35942:
        case 35943:
        case 35944:
        case 35945:
        case 35946:
        case 35947:
        case 35948:
        case 35949:
        case 35950:
        case 35951:
        case 35956:
        case 35957:
        case 35958:
        case 35959:
        case 35960:
        case 35961:
        case 35962:
        case 35963:
        case 35964:
        case 35965:
        case 35966:
        case 35967:
        case 35968:
        case 35969:
        case 35970:
        case 35971:
        case 35972:
        case 35973:
        case 35974:
        case 35975:
        case 35976:
        case 35977:
        case 35978:
        case 35979:
        case 35980:
        case 35981:
        case 35982:
        case 35983:
        case 35984:
        case 35985:
        case 35988:
        case 35989:
        case 35990:
        case 35991:
        case 35992:
        case 35993:
        case 35994:
        case 35995:
        case 35996:
        case 35997:
        case 35998:
        case 35999:
        case 36000:
        case 36001:
        case 36002:
        case 36003:
        case 36004:
        case 36005:
        case 36006:
        case 36007:
        case 36008:
        case 36009:
        case 36010:
        case 36011:
          goto LABEL_95;
        case 35840:
        case 35842:
          goto LABEL_87;
        case 35841:
        case 35843:
          goto LABEL_88;
        case 35898:
        case 35901:
          goto LABEL_54;
        case 35905:
          goto LABEL_57;
        case 35907:
          goto LABEL_56;
        case 35916:
        case 35917:
        case 35952:
        case 35953:
        case 35986:
          goto LABEL_60;
        case 35918:
        case 35919:
        case 35954:
        case 35955:
        case 35987:
          goto LABEL_40;
        case 36012:
LABEL_41:
          *a2 = xmmword_186233C70;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        case 36013:
LABEL_61:
          *a2 = xmmword_186233C10;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        default:
          if (a1 == 35414)
          {
            goto LABEL_88;
          }

          v3 = 35415;
          goto LABEL_86;
      }
    }

    if (a1 <= 34842)
    {
      if (a1 <= 34836)
      {
        if (a1 != 34798)
        {
          if (a1 == 34836)
          {
LABEL_25:
            *a2 = xmmword_186233DF0;
            *&result = 0x100000001;
            *(a2 + 16) = 0x100000001;
            return result;
          }

          goto LABEL_95;
        }

        goto LABEL_40;
      }

      if (a1 == 34837)
      {
LABEL_49:
        *a2 = xmmword_186233E00;
        *&result = 0x100000001;
        *(a2 + 16) = 0x100000001;
        return result;
      }

      if (a1 != 34842)
      {
        goto LABEL_95;
      }

      goto LABEL_48;
    }

    if (a1 > 35411)
    {
      if (a1 == 35412)
      {
LABEL_88:
        *&result = 2;
        *a2 = xmmword_186233D70;
        *(a2 + 16) = xmmword_186233D80;
        return result;
      }

      v3 = 35413;
LABEL_86:
      if (a1 == v3)
      {
LABEL_87:
        *&result = 2;
        *a2 = xmmword_186233D00;
        *(a2 + 16) = xmmword_186233D80;
        return result;
      }

      goto LABEL_95;
    }

    if (a1 != 34843)
    {
      if (a1 == 35056)
      {
        *a2 = xmmword_186233C20;
        *&result = 0x100000001;
        *(a2 + 16) = 0x100000001;
        return result;
      }

      goto LABEL_95;
    }

LABEL_44:
    *a2 = xmmword_186233E30;
    *&result = 0x100000001;
    *(a2 + 16) = 0x100000001;
    return result;
  }

  if (a1 <= 37174)
  {
    if (a1 <= 36491)
    {
      switch(a1)
      {
        case 36166:
          *a2 = xmmword_186233C60;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          break;
        case 36167:
          *a2 = xmmword_186233C50;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          break;
        case 36168:
          *a2 = xmmword_186233C40;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          break;
        case 36169:
          *a2 = xmmword_186233C30;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          break;
        case 36194:
          goto LABEL_20;
        case 36196:
        case 36283:
        case 36284:
          goto LABEL_60;
        case 36208:
        case 36226:
          goto LABEL_25;
        case 36209:
        case 36227:
          goto LABEL_49;
        case 36214:
        case 36232:
          goto LABEL_48;
        case 36215:
        case 36233:
          goto LABEL_44;
        case 36220:
        case 36238:
          goto LABEL_56;
        case 36221:
        case 36239:
          goto LABEL_57;
        case 36267:
          goto LABEL_41;
        case 36268:
          goto LABEL_61;
        case 36285:
        case 36286:
          goto LABEL_40;
        default:
          goto LABEL_95;
      }

      return result;
    }

    if (a1 <= 36759)
    {
      if (a1 <= 36755)
      {
        if ((a1 - 36492) >= 4)
        {
LABEL_95:
          *a2 = xmmword_186207E00;
          *&result = 0x100000001;
          *(a2 + 16) = 0x100000001;
          return result;
        }

LABEL_40:
        *a2 = xmmword_186233CF0;
        *&result = 0x100000004;
        *(a2 + 16) = 0x100000004;
        return result;
      }

      if (a1 <= 36757)
      {
        if (a1 == 36756)
        {
          goto LABEL_37;
        }

LABEL_8:
        *a2 = xmmword_186233E40;
        *&result = 0x100000001;
        *(a2 + 16) = 0x100000001;
        return result;
      }

      if (a1 == 36758)
      {
LABEL_57:
        *a2 = xmmword_186233E50;
        *&result = 0x100000001;
        *(a2 + 16) = 0x100000001;
        return result;
      }

LABEL_56:
      *a2 = xmmword_186233E20;
      *&result = 0x100000001;
      *(a2 + 16) = 0x100000001;
      return result;
    }

    if (a1 > 36762)
    {
      if (a1 > 36797)
      {
        if (a1 != 36798)
        {
          if (a1 == 36975)
          {
LABEL_54:
            *a2 = xmmword_186233D90;
            *&result = 0x100000001;
            *(a2 + 16) = 0x100000001;
            return result;
          }

          goto LABEL_95;
        }

        goto LABEL_8;
      }

      if (a1 != 36763)
      {
        if (a1 != 36797)
        {
          goto LABEL_95;
        }

LABEL_37:
        *a2 = xmmword_186233E60;
        *&result = 0x100000001;
        *(a2 + 16) = 0x100000001;
        return result;
      }

LABEL_48:
      *a2 = xmmword_186233E10;
      *&result = 0x100000001;
      *(a2 + 16) = 0x100000001;
      return result;
    }

    if (a1 == 36760)
    {
      goto LABEL_8;
    }

    if (a1 == 36761)
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  switch(a1)
  {
    case 37488:
    case 37489:
    case 37492:
    case 37493:
    case 37494:
    case 37495:
    case 37873:
      break;
    case 37490:
    case 37491:
    case 37496:
    case 37497:
    case 37808:
    case 37840:
      goto LABEL_40;
    case 37498:
    case 37499:
    case 37500:
    case 37501:
    case 37502:
    case 37503:
    case 37504:
    case 37505:
    case 37506:
    case 37507:
    case 37508:
    case 37509:
    case 37510:
    case 37511:
    case 37512:
    case 37513:
    case 37514:
    case 37515:
    case 37516:
    case 37517:
    case 37518:
    case 37519:
    case 37520:
    case 37521:
    case 37522:
    case 37523:
    case 37524:
    case 37525:
    case 37526:
    case 37527:
    case 37528:
    case 37529:
    case 37530:
    case 37531:
    case 37532:
    case 37533:
    case 37534:
    case 37535:
    case 37536:
    case 37537:
    case 37538:
    case 37539:
    case 37540:
    case 37541:
    case 37542:
    case 37543:
    case 37544:
    case 37545:
    case 37546:
    case 37547:
    case 37548:
    case 37549:
    case 37550:
    case 37551:
    case 37552:
    case 37553:
    case 37554:
    case 37555:
    case 37556:
    case 37557:
    case 37558:
    case 37559:
    case 37560:
    case 37561:
    case 37562:
    case 37563:
    case 37564:
    case 37565:
    case 37566:
    case 37567:
    case 37568:
    case 37569:
    case 37570:
    case 37571:
    case 37572:
    case 37573:
    case 37574:
    case 37575:
    case 37576:
    case 37577:
    case 37578:
    case 37579:
    case 37580:
    case 37581:
    case 37582:
    case 37583:
    case 37584:
    case 37585:
    case 37586:
    case 37587:
    case 37588:
    case 37589:
    case 37590:
    case 37591:
    case 37592:
    case 37593:
    case 37594:
    case 37595:
    case 37596:
    case 37597:
    case 37598:
    case 37599:
    case 37600:
    case 37601:
    case 37602:
    case 37603:
    case 37604:
    case 37605:
    case 37606:
    case 37607:
    case 37608:
    case 37609:
    case 37610:
    case 37611:
    case 37612:
    case 37613:
    case 37614:
    case 37615:
    case 37616:
    case 37617:
    case 37618:
    case 37619:
    case 37620:
    case 37621:
    case 37622:
    case 37623:
    case 37624:
    case 37625:
    case 37626:
    case 37627:
    case 37628:
    case 37629:
    case 37630:
    case 37631:
    case 37632:
    case 37633:
    case 37634:
    case 37635:
    case 37636:
    case 37637:
    case 37638:
    case 37639:
    case 37640:
    case 37641:
    case 37642:
    case 37643:
    case 37644:
    case 37645:
    case 37646:
    case 37647:
    case 37648:
    case 37649:
    case 37650:
    case 37651:
    case 37652:
    case 37653:
    case 37654:
    case 37655:
    case 37656:
    case 37657:
    case 37658:
    case 37659:
    case 37660:
    case 37661:
    case 37662:
    case 37663:
    case 37664:
    case 37665:
    case 37666:
    case 37667:
    case 37668:
    case 37669:
    case 37670:
    case 37671:
    case 37672:
    case 37673:
    case 37674:
    case 37675:
    case 37676:
    case 37677:
    case 37678:
    case 37679:
    case 37680:
    case 37681:
    case 37682:
    case 37683:
    case 37684:
    case 37685:
    case 37686:
    case 37687:
    case 37688:
    case 37689:
    case 37690:
    case 37691:
    case 37692:
    case 37693:
    case 37694:
    case 37695:
    case 37696:
    case 37697:
    case 37698:
    case 37699:
    case 37700:
    case 37701:
    case 37702:
    case 37703:
    case 37704:
    case 37705:
    case 37706:
    case 37707:
    case 37708:
    case 37709:
    case 37710:
    case 37711:
    case 37712:
    case 37713:
    case 37714:
    case 37715:
    case 37716:
    case 37717:
    case 37718:
    case 37719:
    case 37720:
    case 37721:
    case 37722:
    case 37723:
    case 37724:
    case 37725:
    case 37726:
    case 37727:
    case 37728:
    case 37729:
    case 37730:
    case 37731:
    case 37732:
    case 37733:
    case 37734:
    case 37735:
    case 37736:
    case 37737:
    case 37738:
    case 37739:
    case 37740:
    case 37741:
    case 37742:
    case 37743:
    case 37744:
    case 37745:
    case 37746:
    case 37747:
    case 37748:
    case 37749:
    case 37750:
    case 37751:
    case 37752:
    case 37753:
    case 37754:
    case 37755:
    case 37756:
    case 37757:
    case 37758:
    case 37759:
    case 37760:
    case 37761:
    case 37762:
    case 37763:
    case 37764:
    case 37765:
    case 37766:
    case 37767:
    case 37768:
    case 37769:
    case 37770:
    case 37771:
    case 37772:
    case 37773:
    case 37774:
    case 37775:
    case 37776:
    case 37777:
    case 37778:
    case 37779:
    case 37780:
    case 37781:
    case 37782:
    case 37783:
    case 37784:
    case 37785:
    case 37786:
    case 37787:
    case 37788:
    case 37789:
    case 37790:
    case 37791:
    case 37792:
    case 37793:
    case 37794:
    case 37795:
    case 37796:
    case 37797:
    case 37798:
    case 37799:
    case 37800:
    case 37801:
    case 37802:
    case 37803:
    case 37804:
    case 37805:
    case 37806:
    case 37807:
    case 37822:
    case 37823:
    case 37834:
    case 37835:
    case 37836:
    case 37837:
    case 37838:
    case 37839:
    case 37854:
    case 37855:
    case 37866:
    case 37867:
    case 37868:
    case 37869:
    case 37870:
    case 37871:
      goto LABEL_95;
    case 37809:
    case 37841:
      *a2 = xmmword_186233D20;
      *&result = 0x100000004;
      *(a2 + 16) = 0x100000004;
      return result;
    case 37810:
    case 37842:
      *a2 = xmmword_186233D20;
      *&result = 0x100000005;
      *(a2 + 16) = 0x100000005;
      return result;
    case 37811:
    case 37843:
      *a2 = xmmword_186233D10;
      *&result = 0x100000005;
      *(a2 + 16) = 0x100000005;
      return result;
    case 37812:
    case 37844:
      *a2 = xmmword_186233D10;
      *&result = 0x100000006;
      *(a2 + 16) = 0x100000006;
      return result;
    case 37813:
    case 37845:
      *a2 = xmmword_186233D60;
      *&result = 0x100000005;
      *(a2 + 16) = 0x100000005;
      return result;
    case 37814:
    case 37846:
      *a2 = xmmword_186233D60;
      *&result = 0x100000006;
      *(a2 + 16) = 0x100000006;
      return result;
    case 37815:
    case 37847:
      *a2 = xmmword_186233D60;
      *&result = 0x100000008;
      *(a2 + 16) = 0x100000008;
      return result;
    case 37816:
    case 37848:
      *a2 = xmmword_186233D50;
      *&result = 0x100000005;
      *(a2 + 16) = 0x100000005;
      return result;
    case 37817:
    case 37849:
      *a2 = xmmword_186233D50;
      *&result = 0x100000006;
      *(a2 + 16) = 0x100000006;
      return result;
    case 37818:
    case 37850:
      *a2 = xmmword_186233D50;
      *&result = 0x100000008;
      *(a2 + 16) = 0x100000008;
      return result;
    case 37819:
    case 37851:
      *a2 = xmmword_186233D50;
      *&result = 0x10000000ALL;
      *(a2 + 16) = 0x10000000ALL;
      return result;
    case 37820:
    case 37852:
      *a2 = xmmword_186233D40;
      *&result = 0x10000000ALL;
      *(a2 + 16) = 0x10000000ALL;
      return result;
    case 37821:
    case 37853:
      *a2 = xmmword_186233D40;
      *&result = 0x10000000CLL;
      *(a2 + 16) = 0x10000000CLL;
      return result;
    case 37824:
    case 37856:
      *a2 = xmmword_186233D30;
      *&result = 0x300000003;
      *(a2 + 16) = 0x300000003;
      return result;
    case 37825:
    case 37857:
      *a2 = xmmword_186233CF0;
      *&result = 0x300000003;
      *(a2 + 16) = 0x300000003;
      return result;
    case 37826:
    case 37858:
      *a2 = xmmword_186233CF0;
      *&result = 0x300000004;
      *(a2 + 16) = 0x300000004;
      return result;
    case 37827:
    case 37859:
      *a2 = xmmword_186233CF0;
      *&result = 0x400000004;
      *(a2 + 16) = 0x400000004;
      return result;
    case 37828:
    case 37860:
      *a2 = xmmword_186233D20;
      *&result = 0x400000004;
      *(a2 + 16) = 0x400000004;
      return result;
    case 37829:
    case 37861:
      *a2 = xmmword_186233D20;
      *&result = 0x400000005;
      *(a2 + 16) = 0x400000005;
      return result;
    case 37830:
    case 37862:
      *a2 = xmmword_186233D20;
      *&result = 0x500000005;
      *(a2 + 16) = 0x500000005;
      return result;
    case 37831:
    case 37863:
      *a2 = xmmword_186233D10;
      *&result = 0x500000005;
      *(a2 + 16) = 0x500000005;
      return result;
    case 37832:
    case 37864:
      *a2 = xmmword_186233D10;
      *&result = 0x500000006;
      *(a2 + 16) = 0x500000006;
      return result;
    case 37833:
    case 37865:
      *a2 = xmmword_186233D10;
      *&result = 0x600000006;
      *(a2 + 16) = 0x600000006;
      return result;
    case 37872:
      goto LABEL_89;
    default:
      if (a1 == 37175)
      {
LABEL_89:
        *a2 = xmmword_186233D70;
        *&result = 0x100000004;
        *(a2 + 16) = 0x100000004;
        return result;
      }

      if (a1 != 37176)
      {
        goto LABEL_95;
      }

      break;
  }

LABEL_60:
  *a2 = xmmword_186233D00;
  *&result = 0x100000004;
  *(a2 + 16) = 0x100000004;
  return result;
}