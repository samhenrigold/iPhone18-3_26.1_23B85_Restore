uint32x4_t sub_1002E423C(uint64_t a1, uint16x8_t *a2, uint16x8_t *a3, uint16x8_t *a4, uint16x8_t a5, uint16x8_t a6, uint16x8_t a7)
{
  v7 = vshrq_n_u16(a5, 9uLL);
  v8 = vshrq_n_u16(a6, 9uLL);
  v9 = vshrq_n_u16(a7, 9uLL);
  v10.i64[0] = 0xF000F000F000FLL;
  v10.i64[1] = 0xF000F000F000FLL;
  v11 = vandq_s8(vshrq_n_u16(a5, 5uLL), v10);
  v12 = vandq_s8(vshrq_n_u16(a6, 5uLL), v10);
  v13 = vdupq_n_s16(0x318u);
  v14 = vdupq_n_s16(0x6618u);
  v15 = vmlal_u16(vmlal_u16(vmull_u16(*v13.i8, *v8.i8), 0x18001800180018, *v7.i8), *v14.i8, *v9.i8);
  v16 = v15.u32[2];
  v17 = vandq_s8(vshrq_n_u16(a7, 5uLL), v10);
  v10.i64[0] = 0x8000800080008;
  v10.i64[1] = 0x8000800080008;
  v18 = v15.u32[3];
  v19.i64[0] = 0x80008000800080;
  v19.i64[1] = 0x80008000800080;
  v20 = vmlal_u16(vmull_u16(0x80008000800080, *v12.i8), 0x8000800080008, *v11.i8);
  v21 = vmlal_high_u16(vmull_high_u16(v19, v12), v10, v11);
  v12.i64[0] = 0x800080008000800;
  v12.i64[1] = 0x800080008000800;
  v22 = vmlal_u16(v20, 0x800080008000800, *v17.i8);
  v23 = vmlal_high_u16(v21, v12, v17);
  v24 = *(&unk_1004C3E00 + 2 * v22.u32[0]);
  v25 = a1 + 2 * v15.u32[0];
  v26 = *(&unk_1004C3E00 + 2 * v22.u32[1]);
  v27 = *(&unk_1004C3E00 + 2 * v22.u32[2]);
  v28 = *(&unk_1004C3E00 + 2 * v22.u32[3]);
  v29 = v23.u32[1];
  v30 = *(v25 + 32);
  v31 = v23.u32[2];
  v32 = v23.u32[3];
  v33 = *(&unk_1004C3E00 + 2 * v23.u32[0]);
  v34 = a1 + 2 * v15.u32[1];
  v35 = *(v34 + 16);
  v36 = *(v34 + 32);
  v37 = *(&unk_1004C3E00 + 2 * v29);
  v38.i64[0] = 0x18001800180018;
  v38.i64[1] = 0x18001800180018;
  v39 = vmlal_high_u16(vmull_high_u16(v13, v8), v38, v7);
  v40 = vpaddq_s32(vmull_s16(*v25, *v24.i8), vmull_high_s16(*v25, v24));
  v41 = vpaddq_s32(vmull_s16(*v34, *v26.i8), vmull_high_s16(*v34, v26));
  v42 = a1 + 2 * v16;
  v43 = *(v42 + 16);
  v44 = vpaddq_s32(vmull_s16(*v42, *v27.i8), vmull_high_s16(*v42, v27));
  v45 = vpadd_s32(*&vpaddq_s32(v44, v44), *&vextq_s8(v44, v44, 8uLL)).u32[0];
  v46 = a1 + 2 * v18;
  v47 = *(v46 + 16);
  v48 = vpaddq_s32(vmull_s16(*v46, *v28.i8), vmull_high_s16(*v46, v28));
  v49 = vpadd_s32(*&vpaddq_s32(v48, v48), *&vextq_s8(v48, v48, 8uLL)).u32[0];
  *v48.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v40, v40), *&vextq_s8(v40, v40, 8uLL)), vpadd_s32(*&vpaddq_s32(v41, v41), *&vextq_s8(v41, v41, 8uLL)));
  v48.i64[1] = __PAIR64__(v49, v45);
  v50 = vmlal_high_u16(v39, v14, v9);
  v51 = *(&unk_1004C3E00 + 2 * v31);
  v52 = *(v42 + 32);
  v53 = *(&unk_1004C3E00 + 2 * v32);
  v54 = a1 + 2 * v50.u32[0];
  v55 = a1 + 2 * v50.u32[1];
  v56 = a1 + 2 * v50.u32[2];
  v57 = a1 + 2 * v50.u32[3];
  v58 = *(v54 + 16);
  v59 = vpaddq_s32(vmull_s16(*v54, *v33.i8), vmull_high_s16(*v54, v33));
  v60 = *(v55 + 16);
  v61 = vpaddq_s32(vmull_s16(*v55, *v37.i8), vmull_high_s16(*v55, v37));
  v62 = *(v56 + 16);
  v63 = vpaddq_s32(vmull_s16(*v56, *v51.i8), vmull_high_s16(*v56, v51));
  v64 = vpadd_s32(*&vpaddq_s32(v63, v63), *&vextq_s8(v63, v63, 8uLL)).u32[0];
  v65 = *(v57 + 16);
  v66 = vpaddq_s32(vmull_s16(*v57, *v53.i8), vmull_high_s16(*v57, v53));
  v67 = vpadd_s32(*&vpaddq_s32(v66, v66), *&vextq_s8(v66, v66, 8uLL)).u32[0];
  v68 = *(v46 + 32);
  *v69.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v59, v59), *&vextq_s8(v59, v59, 8uLL)), vpadd_s32(*&vpaddq_s32(v61, v61), *&vextq_s8(v61, v61, 8uLL)));
  v70 = *(v54 + 32);
  v69.i64[1] = __PAIR64__(v67, v64);
  v71 = *(v55 + 32);
  v72 = vqrshrn_high_n_u32(vqrshrn_n_u32(v48, 0xCuLL), v69, 0xCuLL);
  v73 = vpaddq_s32(vmull_s16(*(v25 + 16), *v24.i8), vmull_high_s16(*(v25 + 16), v24));
  v74 = vpadd_s32(*&vpaddq_s32(v73, v73), *&vextq_s8(v73, v73, 8uLL));
  v75 = *(v56 + 32);
  v76 = *(v57 + 32);
  *a2 = v72;
  v77 = vpaddq_s32(vmull_s16(*v35.i8, *v26.i8), vmull_high_s16(v35, v26));
  v78 = vpaddq_s32(vmull_s16(*v43.i8, *v27.i8), vmull_high_s16(v43, v27));
  v79 = vpaddq_s32(vmull_s16(*v47.i8, *v28.i8), vmull_high_s16(v47, v28));
  *v77.i8 = vzip1_s32(v74, vpadd_s32(*&vpaddq_s32(v77, v77), *&vextq_s8(v77, v77, 8uLL)));
  v77.i32[2] = vpadd_s32(*&vpaddq_s32(v78, v78), *&vextq_s8(v78, v78, 8uLL)).u32[0];
  v77.i32[3] = vpadd_s32(*&vpaddq_s32(v79, v79), *&vextq_s8(v79, v79, 8uLL)).u32[0];
  v80 = vpaddq_s32(vmull_s16(*v58.i8, *v33.i8), vmull_high_s16(v58, v33));
  v81 = vpaddq_s32(vmull_s16(*v60.i8, *v37.i8), vmull_high_s16(v60, v37));
  v82 = vpaddq_s32(vmull_s16(*v62.i8, *v51.i8), vmull_high_s16(v62, v51));
  v83 = vpaddq_s32(vmull_s16(*v65.i8, *v53.i8), vmull_high_s16(v65, v53));
  *v80.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v80, v80), *&vextq_s8(v80, v80, 8uLL)), vpadd_s32(*&vpaddq_s32(v81, v81), *&vextq_s8(v81, v81, 8uLL)));
  v80.i64[1] = __PAIR64__(vpadd_s32(*&vpaddq_s32(v83, v83), *&vextq_s8(v83, v83, 8uLL)).u32[0], vpadd_s32(*&vpaddq_s32(v82, v82), *&vextq_s8(v82, v82, 8uLL)).u32[0]);
  *a3 = vqrshrn_high_n_u32(vqrshrn_n_u32(v77, 0xCuLL), v80, 0xCuLL);
  v84 = vpaddq_s32(vmull_s16(*v30.i8, *v24.i8), vmull_high_s16(v30, v24));
  v85 = vpaddq_s32(vmull_s16(*v36.i8, *v26.i8), vmull_high_s16(v36, v26));
  v86 = vpaddq_s32(vmull_s16(*v52.i8, *v27.i8), vmull_high_s16(v52, v27));
  v87 = vpaddq_s32(vmull_s16(*v68.i8, *v28.i8), vmull_high_s16(v68, v28));
  *v85.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v84, v84), *&vextq_s8(v84, v84, 8uLL)), vpadd_s32(*&vpaddq_s32(v85, v85), *&vextq_s8(v85, v85, 8uLL)));
  v85.i32[2] = vpadd_s32(*&vpaddq_s32(v86, v86), *&vextq_s8(v86, v86, 8uLL)).u32[0];
  v85.i32[3] = vpadd_s32(*&vpaddq_s32(v87, v87), *&vextq_s8(v87, v87, 8uLL)).u32[0];
  v88 = vpaddq_s32(vmull_s16(*v70.i8, *v33.i8), vmull_high_s16(v70, v33));
  v89 = vpaddq_s32(vmull_s16(*v71.i8, *v37.i8), vmull_high_s16(v71, v37));
  v90 = vpaddq_s32(vmull_s16(*v75.i8, *v51.i8), vmull_high_s16(v75, v51));
  v91 = vpaddq_s32(vmull_s16(*v76.i8, *v53.i8), vmull_high_s16(v76, v53));
  *result.i8 = vzip1_s32(vpadd_s32(*&vpaddq_s32(v88, v88), *&vextq_s8(v88, v88, 8uLL)), vpadd_s32(*&vpaddq_s32(v89, v89), *&vextq_s8(v89, v89, 8uLL)));
  result.i32[2] = vpadd_s32(*&vpaddq_s32(v90, v90), *&vextq_s8(v90, v90, 8uLL)).u32[0];
  result.i32[3] = vpadd_s32(*&vpaddq_s32(v91, v91), *&vextq_s8(v91, v91, 8uLL)).u32[0];
  *a4 = vqrshrn_high_n_u32(vqrshrn_n_u32(v85, 0xCuLL), result, 0xCuLL);
  return result;
}

uint64_t sub_1002E4664(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, int *a5, int *a6, int *a7)
{
  v7 = (a4 + 2 * (24 * (result >> 9) + 792 * (a2 >> 9) + 26136 * (a3 >> 9)));
  v8 = (&unk_1004C3E00 + 2 * ((result >> 2) & 0x78 | (((a2 >> 5) & 0xF) << 7) & 0xFFFF87FF | (((a3 >> 5) & 0xF) << 11)));
  v9 = *v8;
  v10 = v8[1];
  v11 = v9 * *v7 + v10 * v7[1];
  v12 = v7[8] * v9 + v7[9] * v10;
  v13 = v7[16] * v9 + v7[17] * v10;
  v14 = v8[2];
  v15 = v11 + v14 * v7[2];
  v16 = v12 + v7[10] * v14;
  v17 = v13 + v7[18] * v14;
  v18 = v8[3];
  v19 = v15 + v18 * v7[3];
  v20 = v16 + v7[11] * v18;
  v21 = v17 + v7[19] * v18;
  v22 = v8[4];
  v23 = v19 + v22 * v7[4];
  v24 = v20 + v7[12] * v22;
  v25 = v21 + v7[20] * v22;
  v26 = v8[5];
  v27 = v23 + v26 * v7[5];
  v28 = v24 + v7[13] * v26;
  v29 = v25 + v7[21] * v26;
  v30 = v8[6];
  LODWORD(v8) = v8[7];
  v31 = v27 + v30 * v7[6] + v8 * v7[7];
  v32 = v28 + v7[14] * v30 + v7[15] * v8;
  LODWORD(v7) = v29 + v7[22] * v30 + v7[23] * v8;
  *a5 = v31;
  *a6 = v32;
  *a7 = v7;
  *a5 = (*a5 + 2048) >> 12;
  *a6 = (*a6 + 2048) >> 12;
  *a7 = (*a7 + 2048) >> 12;
  return result;
}

void sub_1002E47D4()
{
  nullsub_1();

  operator delete();
}

void sub_1002E480C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v9, &off_100477F20);
  v6 = *a2;
  if (*a2 < a2[1])
  {
    v7 = *(a1 + 24) + *(a1 + 32) * v6;
    v8 = *(a1 + 8) + *(a1 + 16) * v6;
    do
    {
      sub_1002E48D4(*(a1 + 48), v8, v7, *(a1 + 40), v4, v5);
      ++v6;
      v8 += *(a1 + 16);
      v7 += *(a1 + 32);
    }

    while (v6 < a2[1]);
  }

  if (v9[2])
  {
    sub_1002ACC1C(v9);
  }
}

void sub_1002E48D4(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4, int32x4_t a5, float32x4_t a6)
{
  v6 = a3;
  v7 = a2;
  if (a1[10].i8[8] != 1)
  {
    if (a4 < 1)
    {
      return;
    }

    v10 = 0;
    v11 = a1->i32[0];
    v12 = 8 * v11;
    v51 = a4;
    while (1)
    {
      if (a4 - v10 >= 256)
      {
        v13 = 256;
      }

      else
      {
        v13 = a4 - v10;
      }

      v53 = 3 * v13;
      v14 = (3 * v13 - 24);
      v52 = v10;
      if (3 * v13 - 24 < 0)
      {
        v22 = 0;
        if (atomic_load_explicit(&qword_1004B0FF8, memory_order_acquire))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
        v16 = a1[5];
        v17 = v70;
        do
        {
          if (v11 == 3)
          {
            v72 = vld3_s8(v7);
          }

          else
          {
            *v72.val[0].i8 = vld4_s8(v7);
          }

          v18 = vmovl_u8(v72.val[0]);
          v19 = vmovl_u8(v72.val[1]);
          v20 = vmovl_u8(v72.val[2]);
          v75.val[0] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v18.i8)));
          v75.val[1] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v19.i8)));
          v75.val[2] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(*v20.i8)));
          v21 = v17;
          vst3q_f32(v21, v75);
          v21 += 12;
          v75.val[0] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_high_u16(v18)));
          v75.val[1] = vmulq_f32(v16, vcvtq_f32_u32(vmovl_high_u16(v19)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(v20));
          v75.val[2] = vmulq_f32(v16, a6);
          vst3q_f32(v21, v75);
          v15 += 24;
          v7 += v12;
          v17 += 24;
        }

        while (v15 <= v14);
        v22 = v15;
        if (atomic_load_explicit(&qword_1004B0FF8, memory_order_acquire))
        {
          goto LABEL_20;
        }
      }

      v46 = v13;
      v47 = __cxa_guard_acquire(&qword_1004B0FF8);
      v13 = v46;
      if (v47)
      {
        v69 = 1065353216;
        sub_10029D700(&v69, &dword_1004D3E2C, &dword_1004B0FF0);
        __cxa_guard_release(&qword_1004B0FF8);
        v13 = v46;
      }

LABEL_20:
      if (v22 < v53)
      {
        v23 = *&dword_1004B0FF0;
        v24 = &v70[v22 + 1];
        do
        {
          a6.i8[0] = *v7;
          *&v25 = v23 * a6.u32[0];
          *(v24 - 1) = *&v25;
          LOBYTE(v25) = *(v7 + 1);
          *&v26 = v23 * v25;
          *v24 = *&v26;
          LOBYTE(v26) = *(v7 + 2);
          a6.f32[0] = v23 * v26;
          v24[1] = a6.f32[0];
          v22 += 3;
          v7 += v11;
          v24 += 3;
        }

        while (v22 < v53);
      }

      sub_1002E52B0(&a1->i32[1], v70, v70, v13);
      if ((v14 & 0x80000000) == 0)
      {
        v27 = 0;
        v28 = v70;
        do
        {
          v29 = v28;
          v73 = vld3q_f32(v29);
          v29 += 12;
          v66 = v73;
          v74 = vld3q_f32(v29);
          v67 = v74;
          v65 = a1[4];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v63 = xmmword_1004B0050;
          v64 = a1[4];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v62 = a1[6];
          v60 = xmmword_1004B0050;
          v61 = a1[7];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v59 = a1[6];
          v57 = xmmword_1004B0050;
          v58 = a1[7];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v56 = a1[8];
          v54 = xmmword_1004B0050;
          v55 = a1[9];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8E70();
          }

          v30 = xmmword_1004B0050;
          v31 = a1[8];
          v32 = a1[9];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
            v48 = v30;
            v49 = v32;
            v50 = v31;
            sub_1003C8E70();
            v32 = v49;
            v31 = v50;
            v30 = v48;
          }

          v33 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v66.val[0], v65), v63))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v67.val[0], v64), v60))));
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v66.val[1], v62), v61), v57))), vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v67.val[1], v59), v58), v54))));
          v34 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v66.val[2], v56), v55), v30))), vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmulq_f32(v67.val[2], v31), v32), xmmword_1004B0050))));
          v35 = (v6 + v27);
          vst3_s8(v35, *(&a6 - 8));
          v27 += 24;
          v28 += 24;
        }

        while (v14 >= v27);
        v36 = v27;
        if (atomic_load_explicit(&qword_1004B1008, memory_order_acquire))
        {
          goto LABEL_41;
        }

LABEL_57:
        if (__cxa_guard_acquire(&qword_1004B1008))
        {
          sub_10029D334(&v69, 0x64u);
          sub_10029D700(&dword_1004D3E2C, &v69, &dword_1004B1000);
          __cxa_guard_release(&qword_1004B1008);
        }

        goto LABEL_41;
      }

      v36 = 0;
      if ((atomic_load_explicit(&qword_1004B1008, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_41:
      if ((atomic_load_explicit(&qword_1004B1018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1018))
      {
        sub_10029D700(&dword_1004D3E2C, &dword_1004D3E10, &dword_1004B1010);
        __cxa_guard_release(&qword_1004B1018);
      }

      if ((atomic_load_explicit(&qword_1004B1028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1028))
      {
        sub_10029D700(&dword_1004D3E2C, &dword_1004D3E1C, &dword_1004B1020);
        __cxa_guard_release(&qword_1004B1028);
      }

      if ((atomic_load_explicit(&qword_1004B1038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1038))
      {
        v68 = dword_1004D3E08 ^ 0x80000000;
        sub_10029D4B4(&v68, &dword_1004D3E2C, &v69);
        sub_10029D700(&v69, &dword_1004D3E10, &dword_1004B1030);
        __cxa_guard_release(&qword_1004B1038);
      }

      if ((atomic_load_explicit(&qword_1004B1048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B1048))
      {
        v68 = dword_1004D3E14 ^ 0x80000000;
        sub_10029D4B4(&v68, &dword_1004D3E2C, &v69);
        sub_10029D700(&v69, &dword_1004D3E1C, &dword_1004B1040);
        __cxa_guard_release(&qword_1004B1048);
      }

      if (v36 < v53)
      {
        v37 = &v70[v36 + 1];
        do
        {
          v38 = *v37;
          v39 = rintf(*(v37 - 1) * *&dword_1004B1000);
          v40 = v39 & ~(v39 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          v41 = v6 + v36;
          *(v6 + v36) = v40;
          v42 = rintf(*&dword_1004B1030 + (v38 * *&dword_1004B1010));
          v43 = v42 & ~(v42 >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          *(v41 + 1) = v43;
          a6.i32[0] = dword_1004B1020;
          v44 = rintf(*&dword_1004B1040 + (v37[1] * *&dword_1004B1020));
          v45 = v44 & ~(v44 >> 31);
          if (v45 >= 255)
          {
            LOBYTE(v45) = -1;
          }

          *(v41 + 2) = v45;
          v36 += 3;
          v37 += 3;
        }

        while (v53 > v36);
      }

      v10 = v52 + 256;
      v6 += 768;
      a4 = v51;
      v12 = 8 * v11;
      if (v52 + 256 >= v51)
      {
        return;
      }
    }
  }

  v9 = &a1[3].i32[2];

  sub_1002E5078(v9, a2, a3, a4, a5, a6);
}

void sub_1002E5078(int *a1, uint64_t a2, uint64_t a3, int a4, int32x4_t a5, int32x4_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = 3 * a4;
  if (a4 < 17)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    a5.i32[0] = 0;
    v11 = 0;
    v12 = qword_1004D3F68;
    a6.i32[0] = a1[1];
    v25 = vdupq_lane_s32(*&vceqq_s32(a6, a5), 0);
    do
    {
      if (v8 == 3)
      {
        *v36.val[0].i8 = vld3q_s8(a2);
      }

      else
      {
        v36 = vld4q_s8(a2);
      }

      v13 = vbslq_s8(v25, v36.val[2], v36.val[0]);
      v14 = vbslq_s8(v25, v36.val[0], v36.val[2]);
      v27 = vshll_high_n_u8(v36.val[1], 6uLL);
      v28 = vshll_high_n_u8(v14, 6uLL);
      v26 = vshll_high_n_u8(v13, 6uLL);
      sub_1002E423C(v12, v34, &v33, &v32, vshll_n_u8(*v14.i8, 6uLL), vshll_n_u8(*v36.val[1].i8, 6uLL), vshll_n_u8(*v13.i8, 6uLL));
      sub_1002E423C(v12, &v31, &v30, &v29, v28, v27, v26);
      v35.val[0] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v34[0], 6uLL)), vshrq_n_u16(v31, 6uLL));
      v35.val[1] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v33, 6uLL)), vshrq_n_u16(v30, 6uLL));
      v35.val[2] = vqmovn_high_u16(vqmovn_u16(vshrq_n_u16(v32, 6uLL)), vshrq_n_u16(v29, 6uLL));
      v15 = (a3 + v11);
      vst3q_s8(v15, v35);
      v11 += 48;
      a2 += 16 * v8;
    }

    while (v11 < v10 - 48);
  }

  if (v11 < v10)
  {
    v16 = qword_1004D3F68;
    v17 = v11;
    v18 = (v11 + a3 + 2);
    do
    {
      v19 = *(a2 + 1);
      v20 = *(a2 + (v9 ^ 2));
      v21 = *(a2 + v9) << 6;
      v34[0].i32[0] = 0;
      v33.i32[0] = 0;
      v32.i32[0] = 0;
      sub_1002E4664(v21, v19 << 6, v20 << 6, v16, v34[0].i32, v33.i32, v32.i32);
      v22 = (v34[0].i32[0] / 64) & ~((v34[0].i32[0] + (v34[0].i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v22 >= 255)
      {
        LOBYTE(v22) = -1;
      }

      *(v18 - 2) = v22;
      v23 = (v33.i32[0] / 64) & ~((v33.i32[0] + (v33.i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v23 >= 255)
      {
        LOBYTE(v23) = -1;
      }

      *(v18 - 1) = v23;
      v24 = (v32.i32[0] / 64) & ~((v32.i32[0] + (v32.i32[0] < 0 ? 0x3F : 0)) >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *v18 = v24;
      v18 += 3;
      v17 += 3;
      a2 += v8;
    }

    while (v17 < v10);
  }
}

float32x2_t *sub_1002E52B0(float32x2_t *result, const float *a2, float *a3, int a4)
{
  v4 = result->i32[0];
  if (result[6].i8[0])
  {
    v5 = qword_1004D3EA8;
  }

  else
  {
    v5 = 0;
  }

  _S15 = result[1].i32[1];
  _S5 = result[3].i32[0];
  _S16 = result[4].i32[1];
  v9 = 3 * a4;
  if (v4 == 3)
  {
    if (a4 >= 4)
    {
      v221 = result[1].i32[1];
      v10 = 0;
      v11 = &dword_1004D3E04;
      v12 = vld1q_dup_f32(v11);
      v13 = qword_1004D3EA0;
      __asm { FMOV            V19.4S, #1.0 }

      v19 = vdupq_n_s32(0x447FC000u);
      v20 = vdupq_n_s32(0x42E80000u);
      __asm
      {
        FMOV            V22.4S, #-16.0
        FMOV            V23.4S, #15.0
        FMOV            V24.4S, #3.0
      }

      v24.i64[0] = 0x3400000034000000;
      v24.i64[1] = 0x3400000034000000;
      v25 = vdupq_n_s32(0x42500000u);
      __asm { FMOV            V27.4S, #2.25 }

      v27 = a3;
      do
      {
        v224 = vld3q_f32(a2);
        v53 = vminq_f32(vmaxq_f32(v224.val[0], 0), _Q19);
        v54 = vminq_f32(vmaxq_f32(v224.val[1], 0), _Q19);
        v55 = vminq_f32(vmaxq_f32(v224.val[2], 0), _Q19);
        if (v5)
        {
          v56 = vdupq_n_s32(0x44800000u);
          v57 = vmulq_f32(v53, v56);
          v58 = vmulq_f32(v54, v56);
          v59 = vmulq_f32(v55, v56);
          v60 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v57, 0), v19));
          v61 = vshlq_n_s32(v60, 2uLL);
          v62 = vcvtq_f32_s32(v60);
          v63 = v61.i32[2];
          v64 = v61.i32[3];
          v65 = *(v5 + 4 * v61.i32[0]);
          v66 = *(v5 + 4 * v61.i32[1]);
          v67 = *(v5 + 4 * v63);
          v68 = *(v5 + 4 * v64);
          v69 = vtrn1q_s32(v65, v66);
          v70 = vtrn2q_s32(v65, v66);
          v71 = vtrn1q_s32(v67, v68);
          v72 = vtrn2q_s32(v67, v68);
          v65.i64[0] = v69.i64[0];
          v65.i64[1] = v71.i64[0];
          v67.i64[0] = v70.i64[0];
          v67.i64[1] = v72.i64[0];
          v73 = vsubq_f32(v57, v62);
          v74 = vmlaq_f32(vzip2q_s64(v69, v71), v73, vzip2q_s64(v70, v72));
          v75 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v58, 0), v19));
          v76 = vshlq_n_s32(v75, 2uLL);
          v77 = v76.i32[1];
          v78 = v76.i32[2];
          v79 = v76.i32[3];
          v80 = vmlaq_f32(v67, v73, v74);
          v81 = *(v5 + 4 * v76.i32[0]);
          v82 = *(v5 + 4 * v77);
          v83 = *(v5 + 4 * v78);
          v84 = *(v5 + 4 * v79);
          v85 = vtrn1q_s32(v81, v82);
          v86 = vtrn2q_s32(v81, v82);
          v87 = vtrn1q_s32(v83, v84);
          v88 = vtrn2q_s32(v83, v84);
          v89 = vzip2q_s64(v85, v87);
          v81.i64[0] = v85.i64[0];
          v81.i64[1] = v87.i64[0];
          v90 = vzip2q_s64(v86, v88);
          v86.i64[1] = v88.i64[0];
          v91 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v59, 0), v19));
          v92 = vshlq_n_s32(v91, 2uLL);
          v53 = vmlaq_f32(v65, v73, v80);
          v93 = *(v5 + 4 * v92.i32[0]);
          v94 = vsubq_f32(v58, vcvtq_f32_s32(v75));
          v95 = *(v5 + 4 * v92.i32[1]);
          v96 = *(v5 + 4 * v92.i32[2]);
          v54 = vmlaq_f32(v81, v94, vmlaq_f32(v86, v94, vmlaq_f32(v89, v94, v90)));
          v97 = vsubq_f32(v59, vcvtq_f32_s32(v91));
          v98 = *(v5 + 4 * v92.i32[3]);
          v99 = vtrn1q_s32(v93, v95);
          v100 = vtrn2q_s32(v93, v95);
          v101 = vtrn1q_s32(v96, v98);
          v102 = vtrn2q_s32(v96, v98);
          v103 = vzip2q_s64(v99, v101);
          v93.i64[0] = v99.i64[0];
          v93.i64[1] = v101.i64[0];
          v104 = vzip2q_s64(v100, v102);
          v100.i64[1] = v102.i64[0];
          v55 = vmlaq_f32(v93, v97, vmlaq_f32(v100, v97, vmlaq_f32(v103, v97, v104)));
        }

        v28 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result[2].f32[0]), v54, result[2].f32[1]), v55, result[3].f32[0]);
        v29 = vmulq_f32(v28, v12);
        v30 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v29, 0), v19));
        v31 = vshlq_n_s32(v30, 2uLL);
        v32 = v31.i32[1];
        v33 = v31.i32[2];
        v34 = v31.i32[3];
        v35 = *(v13 + 4 * v31.i32[0]);
        v36 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result->f32[1]), v54, result[1].f32[0]), v55, result[1].f32[1]);
        v37 = *(v13 + 4 * v32);
        v38 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, result[3].f32[1]), v54, result[4].f32[0]), v55, result[4].f32[1]);
        v39 = *(v13 + 4 * v33);
        v40 = vsubq_f32(v29, vcvtq_f32_s32(v30));
        v41 = *(v13 + 4 * v34);
        v42 = vtrn1q_s32(v35, v37);
        v43 = vtrn2q_s32(v35, v37);
        v44 = vtrn1q_s32(v39, v41);
        v45 = vtrn2q_s32(v39, v41);
        v46 = vzip2q_s64(v42, v44);
        v42.i64[1] = v44.i64[0];
        v47 = vzip2q_s64(v43, v45);
        v43.i64[1] = v45.i64[0];
        v222.val[0] = vmlaq_f32(_Q22, v20, vmlaq_f32(v42, v40, vmlaq_f32(v43, v40, vmlaq_f32(v46, v40, v47))));
        v48 = vmaxq_f32(vmlaq_f32(vmlaq_f32(v36, _Q23, v28), _Q24, v38), v24);
        v49 = vrecpeq_f32(v48);
        v50 = vmulq_f32(v49, vrecpsq_f32(v48, v49));
        v51 = vmulq_f32(vmulq_f32(vrecpsq_f32(v48, v50), v50), v25);
        v50.f32[0] = -result[5].f32[0];
        v52 = vmlaq_f32(vdupq_lane_s32(*v50.f32, 0), v51, v36);
        v222.val[1] = vmulq_f32(v222.val[0], v52);
        v52.f32[0] = -result[5].f32[1];
        v222.val[2] = vmulq_f32(v222.val[0], vmlaq_f32(vdupq_lane_s32(*v52.f32, 0), v51, vmulq_f32(v28, _Q27)));
        vst3q_f32(v27, v222);
        v27 += 12;
        v10 += 12;
        a2 += 12;
      }

      while (v10 <= v9 - 12);
      _S15 = v221;
      if (v10 >= v9)
      {
        return result;
      }

LABEL_20:
      v196 = *&dword_1004D3E04;
      v197 = qword_1004D3EA0;
      v198 = &a3[v10 + 1];
      v199 = (a2 + 1);
      v200 = 4 * v4;
      __asm { FMOV            V20.2S, #1.0 }

      v10 = v10;
      v202 = vdup_n_s32(0x44800000u);
      do
      {
        v210 = vbic_s8(*v199, vcltz_f32(*v199));
        _D8 = vbsl_s8(vcgt_f32(v210, _D20), _D20, v210);
        if (v5)
        {
          v212 = vmul_f32(_D8, v202);
          v213 = vmin_s32(vmax_s32(vcvt_n_s32_f32(_D8, 0xAuLL), 0), 0x300000003);
          v214 = vcvt_f32_u32(v213);
          v215 = (v5 + 4 * (4 * v213.i32[0]));
          v216.i32[0] = v215[2];
          v213.i32[0] = v215[3];
          v217.i32[0] = *v215;
          v218.i32[0] = v215[1];
          v219 = vsub_f32(v212, v214);
          v220 = (v5 + 4 * (4 * v213.i32[1]));
          v213.i32[1] = v220[3];
          v216.i32[1] = v220[2];
          v218.i32[1] = v220[1];
          v217.i32[1] = *v220;
          _D8 = vmla_f32(v217, v219, vmla_f32(v218, v219, vmla_f32(v216, v219, v213)));
        }

        __asm
        {
          FMLA            S0, S15, V8.S[1]
          FMLA            S1, S5, V8.S[1]
        }

        v205 = (v196 * _S1) & ~((v196 * _S1) >> 31);
        if (v205 >= 1023)
        {
          v205 = 1023;
        }

        __asm { FMLA            S2, S16, V8.S[1] }

        v207 = ((*(v197 + 16 * v205) + ((*(v197 + 16 * v205 + 4) + ((*(v197 + 16 * v205 + 8) + (*(v197 + 16 * v205 + 12) * ((v196 * _S1) - v205))) * ((v196 * _S1) - v205))) * ((v196 * _S1) - v205))) * 116.0) + -16.0;
        v208 = (_D0.f32[0] + (_S1 * 15.0)) + (_S2 * 3.0);
        if (v208 < 0.00000011921)
        {
          v208 = 0.00000011921;
        }

        _D0.f32[1] = _S1 * 2.25;
        v209 = vmul_n_f32(vmla_n_f32(vneg_f32(result[5]), _D0, 52.0 / v208), v207);
        *(v198 - 1) = v207;
        *v198 = v209;
        v198 += 3;
        v10 += 3;
        v199 = (v199 + v200);
      }

      while (v10 < v9);
      return result;
    }

LABEL_11:
    LODWORD(v10) = 0;
    if (v9 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a4 < 4)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v105 = &dword_1004D3E04;
  v106 = vld1q_dup_f32(v105);
  v107 = qword_1004D3EA0;
  __asm { FMOV            V19.4S, #1.0 }

  v109 = vdupq_n_s32(0x447FC000u);
  v110 = vdupq_n_s32(0x42E80000u);
  __asm
  {
    FMOV            V22.4S, #-16.0
    FMOV            V23.4S, #15.0
    FMOV            V24.4S, #3.0
  }

  v114.i64[0] = 0x3400000034000000;
  v114.i64[1] = 0x3400000034000000;
  v115 = vdupq_n_s32(0x42500000u);
  __asm { FMOV            V27.4S, #2.25 }

  v117 = a3;
  do
  {
    v225 = vld4q_f32(a2);
    v143 = vminq_f32(vmaxq_f32(v225.val[0], 0), _Q19);
    v144 = vminq_f32(vmaxq_f32(v225.val[1], 0), _Q19);
    v145 = vminq_f32(vmaxq_f32(v225.val[2], 0), _Q19);
    if (v5)
    {
      v146 = vdupq_n_s32(0x44800000u);
      v147 = vmulq_f32(v143, v146);
      v148 = vmulq_f32(v144, v146);
      v149 = vmulq_f32(v145, v146);
      v150 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v147, 0), v109));
      v151 = vshlq_n_s32(v150, 2uLL);
      v152 = v151.i32[1];
      v153 = v151.i32[2];
      v154 = v151.i32[3];
      v155 = *(v5 + 4 * v151.i32[0]);
      v156 = *(v5 + 4 * v152);
      v157 = *(v5 + 4 * v153);
      v158 = *(v5 + 4 * v154);
      v159 = vtrn1q_s32(v155, v156);
      v160 = vtrn2q_s32(v155, v156);
      v161 = vtrn1q_s32(v157, v158);
      v162 = vtrn2q_s32(v157, v158);
      v163 = vzip2q_s64(v159, v161);
      v156.i64[0] = v159.i64[0];
      v156.i64[1] = v161.i64[0];
      v158.i64[0] = v160.i64[0];
      v158.i64[1] = v162.i64[0];
      v164 = vsubq_f32(v147, vcvtq_f32_s32(v150));
      v165 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v148, 0), v109));
      v166 = vshlq_n_s32(v165, 2uLL);
      v167 = v166.i32[1];
      v168 = v166.i32[2];
      v169 = v166.i32[3];
      v170 = vmlaq_f32(v158, v164, vmlaq_f32(v163, v164, vzip2q_s64(v160, v162)));
      v171 = *(v5 + 4 * v166.i32[0]);
      v172 = *(v5 + 4 * v167);
      v173 = *(v5 + 4 * v168);
      v174 = *(v5 + 4 * v169);
      v175 = vtrn1q_s32(v171, v172);
      v176 = vtrn2q_s32(v171, v172);
      v177 = vtrn1q_s32(v173, v174);
      v178 = vtrn2q_s32(v173, v174);
      v179 = vzip2q_s64(v175, v177);
      v174.i64[0] = v175.i64[0];
      v174.i64[1] = v177.i64[0];
      v180 = vzip2q_s64(v176, v178);
      v176.i64[1] = v178.i64[0];
      v181 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v149, 0), v109));
      v182 = vshlq_n_s32(v181, 2uLL);
      v143 = vmlaq_f32(v156, v164, v170);
      v183 = *(v5 + 4 * v182.i32[0]);
      v184 = vsubq_f32(v148, vcvtq_f32_s32(v165));
      v185 = vmlaq_f32(v179, v184, v180);
      v186 = *(v5 + 4 * v182.i32[1]);
      v187 = *(v5 + 4 * v182.i32[2]);
      v144 = vmlaq_f32(v174, v184, vmlaq_f32(v176, v184, v185));
      v188 = vsubq_f32(v149, vcvtq_f32_s32(v181));
      v189 = *(v5 + 4 * v182.i32[3]);
      v190 = vtrn1q_s32(v183, v186);
      v191 = vtrn2q_s32(v183, v186);
      v192 = vtrn1q_s32(v187, v189);
      v193 = vtrn2q_s32(v187, v189);
      v194 = vzip2q_s64(v190, v192);
      v183.i64[0] = v190.i64[0];
      v183.i64[1] = v192.i64[0];
      v195 = vzip2q_s64(v191, v193);
      v191.i64[1] = v193.i64[0];
      v145 = vmlaq_f32(v183, v188, vmlaq_f32(v191, v188, vmlaq_f32(v194, v188, v195)));
    }

    v118 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result[2].f32[0]), v144, result[2].f32[1]), v145, result[3].f32[0]);
    v119 = vmulq_f32(v118, v106);
    v120 = vcvtq_s32_f32(vminq_f32(vmaxq_f32(v119, 0), v109));
    v121 = vshlq_n_s32(v120, 2uLL);
    v122 = v121.i32[1];
    v123 = v121.i32[2];
    v124 = v121.i32[3];
    v125 = *(v107 + 4 * v121.i32[0]);
    v126 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result->f32[1]), v144, result[1].f32[0]), v145, result[1].f32[1]);
    v127 = *(v107 + 4 * v122);
    v128 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v143, result[3].f32[1]), v144, result[4].f32[0]), v145, result[4].f32[1]);
    v129 = *(v107 + 4 * v123);
    v130 = vsubq_f32(v119, vcvtq_f32_s32(v120));
    v131 = *(v107 + 4 * v124);
    v132 = vtrn1q_s32(v125, v127);
    v133 = vtrn2q_s32(v125, v127);
    v134 = vtrn1q_s32(v129, v131);
    v135 = vtrn2q_s32(v129, v131);
    v136 = vzip2q_s64(v132, v134);
    v132.i64[1] = v134.i64[0];
    v137 = vzip2q_s64(v133, v135);
    v133.i64[1] = v135.i64[0];
    v223.val[0] = vmlaq_f32(_Q22, v110, vmlaq_f32(v132, v130, vmlaq_f32(v133, v130, vmlaq_f32(v136, v130, v137))));
    v138 = vmaxq_f32(vmlaq_f32(vmlaq_f32(v126, _Q23, v118), _Q24, v128), v114);
    v139 = vrecpeq_f32(v138);
    v140 = vmulq_f32(v139, vrecpsq_f32(v138, v139));
    v141 = vmulq_f32(vmulq_f32(vrecpsq_f32(v138, v140), v140), v115);
    v144.f32[0] = -result[5].f32[0];
    v142 = vmlaq_f32(vdupq_lane_s32(*v144.f32, 0), v141, v126);
    v223.val[1] = vmulq_f32(v223.val[0], v142);
    v142.f32[0] = -result[5].f32[1];
    v223.val[2] = vmulq_f32(v223.val[0], vmlaq_f32(vdupq_lane_s32(*v142.f32, 0), v141, vmulq_f32(v118, _Q27)));
    vst3q_f32(v117, v223);
    v117 += 12;
    v10 += 12;
    a2 += 4 * v4;
  }

  while (v10 <= v9 - 12);
  if (v10 < v9)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002E5B88()
{
  nullsub_1();

  operator delete();
}

void sub_1002E5BC0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477F80);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002E52B0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E5C8C()
{
  nullsub_1();

  operator delete();
}

void sub_1002E5CC4(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477FE0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E5D90((*(a1 + 48) + 56), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E5D90(int *result, uint64_t a2, char *a3, int a4)
{
  v6 = *result;
  v7 = 3 * a4;
  if (a4 >= 16)
  {
    v8 = 0;
    v70 = 16 * v6;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    v71 = *result;
    do
    {
      v73 = v30;
      v31 = (a2 + v8);
      v92 = vld3q_s8(v31);
      v75 = v92.val[1];
      v76 = v92.val[0];
      v74 = v92.val[2];
      sub_1002E6248(result, &v76, &v75, &v74, &v88, &v84, &v80, &v89, &v85, &v81, &v90, &v86, &v82, &v91, &v87, &v83);
      v32.i64[0] = 0xF0000000FLL;
      v32.i64[1] = 0xF0000000FLL;
      v33.i64[0] = 0x200000002000;
      v33.i64[1] = 0x200000002000;
      v34 = 0;
      v35 = (result + 1);
      v36 = (result + 2);
      v37 = (result + 3);
      v38 = (result + 4);
      v39 = (result + 5);
      v40 = (result + 6);
      v41 = vld1q_dup_f32(v36);
      v42 = vld1q_dup_f32(v38);
      v43 = (result + 7);
      v44 = (result + 8);
      v45 = vld1q_dup_f32(v40);
      v46 = vld1q_dup_f32(v44);
      v47 = vld1q_dup_f32(v37);
      v48 = vld1q_dup_f32(v43);
      v49 = vld1q_dup_f32(v35);
      v50 = (result + 9);
      v51 = vld1q_dup_f32(v39);
      v52 = vld1q_dup_f32(v50);
      v53 = *(result + 5);
      do
      {
        v54 = *(&v88 + v34 * 16);
        v55 = *(&v84 + v34 * 16);
        v56 = *(&v80 + v34 * 16);
        v57 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v41), v54, v49), v56, v47), v33), 0xEuLL);
        v58 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v51), v54, v42), v56, v45), v33), 0xEuLL);
        v59 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v55, v46), v54, v48), v56, v52), v33), 0xEuLL);
        v60 = vmaxq_s32(vminq_s32(v57, v32), 0);
        v61 = v60.u32[3];
        v62 = *(v53 + 2 * v60.u32[0]);
        v63 = *(v53 + 2 * v60.u32[1]);
        v64 = *(v53 + 2 * v60.u32[2]);
        v65 = vmaxq_s32(vminq_s32(v58, v32), 0);
        v57.i64[0] = __PAIR64__(v63, v62);
        v57.i32[2] = v64;
        v57.i32[3] = *(v53 + 2 * v61);
        v79[v34] = v57;
        v66 = vmaxq_s32(vminq_s32(v59, v32), 0);
        v65.i32[0] = *(v53 + 2 * v65.u32[0]);
        v65.i32[1] = *(v53 + 2 * v65.u32[1]);
        v65.i32[2] = *(v53 + 2 * v65.u32[2]);
        v65.i32[3] = *(v53 + 2 * v65.u32[3]);
        v78[v34] = v65;
        v66.i32[0] = *(v53 + 2 * v66.u32[0]);
        v66.i32[1] = *(v53 + 2 * v66.u32[1]);
        v66.i32[2] = *(v53 + 2 * v66.u32[2]);
        v66.i32[3] = *(v53 + 2 * v66.u32[3]);
        v77[v34++] = v66;
      }

      while (v34 != 4);
      v30 = v73;
      v67 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v77[0]), v77[1])), vqmovn_high_u32(vqmovn_u32(v77[2]), v77[3]));
      v68 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v78[0]), v78[1])), vqmovn_high_u32(vqmovn_u32(v78[2]), v78[3]));
      v69 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v79[0]), v79[1])), vqmovn_high_u32(vqmovn_u32(v79[2]), v79[3]));
      v6 = v71;
      if (v71 == 4)
      {
        vst4q_s8(a3, *(&v30 - 3));
      }

      else
      {
        vst3q_s8(a3, *v67.i8);
      }

      v8 += 48;
      a3 += v70;
    }

    while (v7 - 48 >= v8);
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v9 = qword_1004D3ED8 + 32580;
    v10 = qword_1004D3ED8 + 74516;
    v11 = a3 + 1;
    v12 = (a2 + v8 + 2);
    do
    {
      v13 = word_1004D4438[2 * *(v12 - 2)];
      v14 = word_1004D4438[(2 * *(v12 - 2)) | 1];
      v15 = *(v9 + 4 * (v14 + ((268435 * *(v12 - 1) + 128) >> 13) - 4194));
      v16 = *(v10 + 4 * (v14 - ((41943 * *v12 + 16) >> 9)));
      v17 = (result[2] * v13 + result[1] * v15 + result[3] * v16 + 0x2000) >> 14;
      v18 = (result[5] * v13 + result[4] * v15 + result[6] * v16 + 0x2000) >> 14;
      v19 = (result[8] * v13 + result[7] * v15 + result[9] * v16 + 0x2000) >> 14;
      if (v17 >= 4095)
      {
        v20 = 4095;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 & ~(v20 >> 31);
      if (v18 >= 4095)
      {
        v22 = 4095;
      }

      else
      {
        v22 = v18;
      }

      v23 = v22 & ~(v22 >> 31);
      if (v19 >= 4095)
      {
        v19 = 4095;
      }

      v24 = *(result + 5);
      v25 = *(v24 + 2 * v21);
      v26 = *(v24 + 2 * v23);
      v27 = *(v24 + 2 * (v19 & ~(v19 >> 31)));
      if (v27 >= 0xFF)
      {
        LOBYTE(v27) = -1;
      }

      *(v11 - 1) = v27;
      if (v26 >= 0xFF)
      {
        v28 = -1;
      }

      else
      {
        v28 = v26;
      }

      *v11 = v28;
      if (v25 >= 0xFF)
      {
        v29 = -1;
      }

      else
      {
        v29 = v25;
      }

      v11[1] = v29;
      if (v6 == 4)
      {
        v11[2] = -1;
      }

      v12 += 3;
      v11 += v6;
      LODWORD(v8) = v8 + 3;
    }

    while (v7 > v8);
  }
}

int16x8_t sub_1002E6248(uint64_t a1, uint8x8_t *a2, uint8x8_t *a3, uint8x16_t *a4, uint32x4_t *a5, _OWORD *a6, int16x8_t *a7, uint32x4_t *a8, int16x8_t *a9, int16x8_t *a10, uint32x4_t *a11, int16x8_t *a12, int16x8_t *a13, uint32x4_t *a14, int16x8_t *a15, int16x8_t *a16)
{
  v16 = vshll_n_u8(*a2, 1uLL);
  v17 = vshll_high_n_u8(*a2->i8, 1uLL);
  v18 = &word_1004D4438[v16.u16[0]];
  v19 = &word_1004D4438[v16.u16[1]];
  v20 = &word_1004D4438[v16.u16[2]];
  v21 = &word_1004D4438[v16.u16[3]];
  LODWORD(v22) = *v18;
  DWORD1(v22) = *v19;
  DWORD2(v22) = *v20;
  HIDWORD(v22) = *v21;
  *a6 = v22;
  v23 = &word_1004D4438[v16.u16[4]];
  v24 = &word_1004D4438[v16.u16[5]];
  v25 = &word_1004D4438[v16.u16[6]];
  v26 = &word_1004D4438[v16.u16[7]];
  v16.i32[0] = *v23;
  v16.i32[1] = *v24;
  v16.i32[2] = *v25;
  v16.i32[3] = *v26;
  *a9 = v16;
  v27 = &word_1004D4438[v17.u16[0]];
  v28 = &word_1004D4438[v17.u16[1]];
  v29 = &word_1004D4438[v17.u16[2]];
  v30 = &word_1004D4438[v17.u16[3]];
  v16.i32[0] = *v27;
  v16.i32[1] = *v28;
  v16.i32[2] = *v29;
  v16.i32[3] = *v30;
  *a12 = v16;
  v31 = &word_1004D4438[v17.u16[4]];
  v32 = &word_1004D4438[v17.u16[5]];
  v33 = &word_1004D4438[v17.u16[6]];
  v34 = &word_1004D4438[v17.u16[7]];
  v17.i32[0] = *v31;
  v17.i32[1] = *v32;
  v17.i32[2] = *v33;
  v17.i32[3] = *v34;
  *a15 = v17;
  v16.i16[0] = v18[1];
  v16.i16[1] = v19[1];
  v16.i16[2] = v20[1];
  v16.i16[3] = v21[1];
  v16.i16[4] = v23[1];
  v16.i16[5] = v24[1];
  v16.i16[6] = v25[1];
  v16.i16[7] = v26[1];
  v17.i16[0] = v27[1];
  v17.i16[1] = v28[1];
  v17.i16[2] = v29[1];
  v17.i16[3] = v30[1];
  v17.i16[4] = v31[1];
  v17.i16[5] = v32[1];
  v17.i16[6] = v33[1];
  v17.i16[7] = v34[1];
  v35 = *a4;
  v36 = vqaddq_u16(vmovl_u8(*a3), vshll_n_u8(*a3, 2uLL));
  v37 = vdupq_n_s16(0xD1B7u);
  v38 = vqaddq_u16(vmovl_high_u8(*a3->i8), vshll_high_n_u8(*a3->i8, 2uLL));
  v39.i64[0] = 0x8000000080;
  v39.i64[1] = 0x8000000080;
  v40.i64[0] = 0x8000000080;
  v40.i64[1] = 0x8000000080;
  v41.i64[0] = 0x8000000080;
  v41.i64[1] = 0x8000000080;
  v42 = vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v40, *v36.i8, *v37.i8), 0xDuLL)), vshrq_n_u32(vmlal_high_u16(v41, v36, v37), 0xDuLL));
  v36.i64[0] = 0x8000000080;
  v36.i64[1] = 0x8000000080;
  v43 = vshrq_n_u32(vmlal_u16(v36, *v38.i8, *v37.i8), 0xDuLL);
  v44 = vshrq_n_u32(vmlal_high_u16(v39, v38, v37), 0xDuLL);
  *v39.i8 = vqmovn_u32(v43);
  v45 = vdupq_n_s16(0xA3D7u);
  v46 = vdupq_n_s16(0xF6Fu);
  v47 = vdupq_n_s16(0x48C5u);
  v48 = vaddq_s16(v16, vaddq_s16(v42, v46));
  v49 = qword_1004D3ED8;
  v50.i32[0] = *(qword_1004D3ED8 + 4 * v48.u16[0]);
  v50.i32[1] = *(qword_1004D3ED8 + 4 * v48.u16[1]);
  v50.i32[2] = *(qword_1004D3ED8 + 4 * v48.u16[2]);
  v51 = vaddq_s16(v17, vaddq_s16(vqmovn_high_u32(*v39.i8, v44), v46));
  v50.i32[3] = *(qword_1004D3ED8 + 4 * v48.u16[3]);
  *a5 = v50;
  v44.i32[0] = *(v49 + 4 * v48.u16[4]);
  v44.i32[1] = *(v49 + 4 * v48.u16[5]);
  v44.i32[2] = *(v49 + 4 * v48.u16[6]);
  v44.i32[3] = *(v49 + 4 * v48.u16[7]);
  *a8 = v44;
  v44.i32[0] = *(v49 + 4 * v51.u16[0]);
  v44.i32[1] = *(v49 + 4 * v51.u16[1]);
  v44.i32[2] = *(v49 + 4 * v51.u16[2]);
  v44.i32[3] = *(v49 + 4 * v51.u16[3]);
  v52 = vmovl_u8(*v35.i8);
  v46.i64[0] = 0x1000000010;
  v46.i64[1] = 0x1000000010;
  v50.i64[0] = 0x1000000010;
  v50.i64[1] = 0x1000000010;
  *a11 = v44;
  v44.i32[0] = *(v49 + 4 * v51.u16[4]);
  v44.i32[1] = *(v49 + 4 * v51.u16[5]);
  v44.i32[2] = *(v49 + 4 * v51.u16[6]);
  v44.i32[3] = *(v49 + 4 * v51.u16[7]);
  v53 = vaddq_s16(vsubq_s16(v16, vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v46, *v52.i8, *v45.i8), 9uLL)), vshrq_n_u32(vmlal_high_u16(v50, v52, v45), 9uLL))), v47);
  *a14 = v44;
  v51.i32[0] = *(v49 + 4 * v53.u16[0]);
  v51.i32[1] = *(v49 + 4 * v53.u16[1]);
  v51.i32[2] = *(v49 + 4 * v53.u16[2]);
  v51.i32[3] = *(v49 + 4 * v53.u16[3]);
  v54 = vmovl_high_u8(v35);
  v44.i64[0] = 0x1000000010;
  v44.i64[1] = 0x1000000010;
  v52.i64[0] = 0x1000000010;
  v52.i64[1] = 0x1000000010;
  *a7 = v51;
  v51.i32[0] = *(v49 + 4 * v53.u16[4]);
  v51.i32[1] = *(v49 + 4 * v53.u16[5]);
  v51.i32[2] = *(v49 + 4 * v53.u16[6]);
  result = vaddq_s16(vsubq_s16(v17, vqmovn_high_u32(vqmovn_u32(vshrq_n_u32(vmlal_u16(v52, *v54.i8, *v45.i8), 9uLL)), vshrq_n_u32(vmlal_high_u16(v44, v54, v45), 9uLL))), v47);
  v51.i32[3] = *(v49 + 4 * v53.u16[7]);
  *a10 = v51;
  v53.i32[0] = *(v49 + 4 * result.u16[0]);
  v53.i32[1] = *(v49 + 4 * result.u16[1]);
  v53.i32[2] = *(v49 + 4 * result.u16[2]);
  v53.i32[3] = *(v49 + 4 * result.u16[3]);
  *a13 = v53;
  v53.i32[0] = *(v49 + 4 * result.u16[4]);
  v53.i32[1] = *(v49 + 4 * result.u16[5]);
  v53.i32[2] = *(v49 + 4 * result.u16[6]);
  v53.i32[3] = *(v49 + 4 * result.u16[7]);
  *a16 = v53;
  return result;
}

void sub_1002E6694()
{
  nullsub_1();

  operator delete();
}

void sub_1002E66CC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100478040);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E6794(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002E6794(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 40))
  {
    v4 = qword_1004D3EB0;
  }

  else
  {
    v4 = 0;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 7);
    v7 = *(result + 8);
    v8 = *(result + 9);
    v12.i32[0] = result[2];
    v10.i32[0] = result[3];
    v11.i32[0] = result[1];
    v9 = *result;
    v10.i32[1] = result[6];
    v11.i32[1] = result[4];
    v12.i32[1] = result[5];
    v13 = a3 + 8;
    v14 = (a2 + 4);
    __asm { FMOV            V22.2S, #1.0 }

    v20 = vdup_n_s32(0x44800000u);
    do
    {
      v21 = *(v14 - 1);
      v22 = *(result + 12);
      v23 = v21 > *(result + 11);
      v24 = (v21 + 16.0) / 116.0;
      v25 = v24 * (v24 * v24);
      v26 = v21 / 903.3;
      if (!v23)
      {
        v25 = v26;
      }

      v27 = (v26 * 7.787) + 0.13793;
      if (v23)
      {
        v27 = v24;
      }

      v28 = (*v14 / 500.0) + v27;
      v29 = v27 + (v14[1] / -200.0);
      v23 = v28 > v22;
      v30 = v28 * (v28 * v28);
      v31 = (v28 + -0.13793) / 7.787;
      if (v23)
      {
        v31 = v30;
      }

      v23 = v29 > v22;
      v32 = v29 * (v29 * v29);
      v33 = (v29 + -0.13793) / 7.787;
      if (v23)
      {
        v33 = v32;
      }

      v34 = ((v7 * v25) + (v6 * v31)) + (v8 * v33);
      v35 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v12, v25), v11, v31), v10, v33);
      v36 = vbic_s8(vbsl_s8(vcgt_f32(v35, _D22), _D22, v35), vcltz_f32(v35));
      if (v34 <= 1.0)
      {
        v37 = v34;
      }

      else
      {
        v37 = 1.0;
      }

      if (v34 < 0.0)
      {
        v37 = 0.0;
      }

      if (v4)
      {
        v38 = vmul_f32(v36, v20);
        v39 = vmin_s32(vmax_s32(vcvt_n_s32_f32(v36, 0xAuLL), 0), 0x300000003);
        v40 = vsub_f32(v38, vcvt_f32_u32(v39));
        v41 = vshl_n_s32(v39, 2uLL);
        v42 = (v4 + 4 * v41.u32[0]);
        v43.i32[0] = v42[2];
        v44.i32[0] = v42[3];
        v41.i32[0] = *v42;
        v45.i32[0] = v42[1];
        v46 = (v4 + 4 * v41.u32[1]);
        v44.i32[1] = v46[3];
        v43.i32[1] = v46[2];
        v45.i32[1] = v46[1];
        v41.i32[1] = *v46;
        v36 = vmla_f32(v41, v40, vmla_f32(v45, v40, vmla_f32(v43, v40, v44)));
        LODWORD(v46) = vcvts_n_s32_f32(v37, 0xAuLL);
        v47 = v46 & ~(v46 >> 31);
        if (v47 >= 1023)
        {
          v47 = 1023;
        }

        v37 = *(v4 + 16 * v47) + ((*(v4 + 16 * v47 + 4) + ((*(v4 + 16 * v47 + 8) + (*(v4 + 16 * v47 + 12) * ((v37 * 1024.0) - v47))) * ((v37 * 1024.0) - v47))) * ((v37 * 1024.0) - v47));
      }

      *(v13 - 8) = v36;
      *v13 = v37;
      if (v9 == 4)
      {
        *(v13 + 4) = 1065353216;
      }

      v5 += 3;
      v13 += 4 * v9;
      v14 += 3;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E69E4()
{
  nullsub_1();

  operator delete();
}

void sub_1002E6A1C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v14, &off_1004780A0);
  v11 = *a2;
  if (*a2 < a2[1])
  {
    v12 = (*(a1 + 24) + *(a1 + 32) * v11);
    v13 = *(a1 + 8) + *(a1 + 16) * v11;
    do
    {
      sub_1002E6AE4(*(a1 + 48), v13, v12, *(a1 + 40), v4, v5, v6, v7, v8, v9, v10);
      ++v11;
      v13 += *(a1 + 16);
      v12 = (v12 + *(a1 + 32));
    }

    while (v11 < a2[1]);
  }

  if (v14[2])
  {
    sub_1002ACC1C(v14);
  }
}

void sub_1002E6AE4(int *a1, uint64_t a2, uint8x16_t *a3, int a4, __n128 a5, uint16x8_t a6, uint16x8_t a7, int32x4_t a8, float32x4_t a9, int8x16_t a10, float32x4_t a11)
{
  v14 = a3;
  v15 = a2;
  if (*(a1 + 104) == 1)
  {
    v16 = a1 + 14;

    sub_1002E7514(v16, a2, a3->i8, a4);
    return;
  }

  v99 = *a1;
  if ((atomic_load_explicit(&qword_1004B1078, memory_order_acquire) & 1) == 0)
  {
    v88 = a4;
    v89 = __cxa_guard_acquire(&qword_1004B1078);
    a4 = v88;
    if (v89)
    {
      sub_10029D334(&v111, 0x64u);
      sub_10029D700(&v111, &dword_1004D3E2C, &dword_1004B1070);
      __cxa_guard_release(&qword_1004B1078);
      a4 = v88;
    }
  }

  if ((atomic_load_explicit(&qword_1004B1088, memory_order_acquire) & 1) == 0)
  {
    v90 = a4;
    v91 = __cxa_guard_acquire(&qword_1004B1088);
    a4 = v90;
    if (v91)
    {
      sub_10029D700(&dword_1004D3E10, &dword_1004D3E2C, &dword_1004B1080);
      __cxa_guard_release(&qword_1004B1088);
      a4 = v90;
    }
  }

  if ((atomic_load_explicit(&qword_1004B1098, memory_order_acquire) & 1) == 0)
  {
    v92 = a4;
    v93 = __cxa_guard_acquire(&qword_1004B1098);
    a4 = v92;
    if (v93)
    {
      sub_10029D700(&dword_1004D3E1C, &dword_1004D3E2C, &dword_1004B1090);
      __cxa_guard_release(&qword_1004B1098);
      a4 = v92;
    }
  }

  if (a4 >= 1)
  {
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v20 = a4;
    v94 = a4;
    while (1)
    {
      v96 = v20 - 256;
      v97 = v19;
      v21 = v18;
      if (v20 >= 256)
      {
        v22 = 256;
      }

      else
      {
        v22 = v20;
      }

      v98 = v21;
      v23 = v17 - (v21 << 8);
      if (v23 >= 256)
      {
        v23 = 256;
      }

      v24 = v17 - v19;
      v25 = v24 >= 256 ? 256 : v24;
      v26 = *&dword_1004B1070;
      a6.i32[0] = dword_1004B1080;
      a7.i32[0] = dword_1004B1090;
      a8.i32[0] = dword_1004D3E08;
      a9.i32[0] = dword_1004D3E14;
      v100 = 3 * v25;
      v27 = (3 * v25 - 48);
      if (v27 >= 1)
      {
        break;
      }

      v42 = 0;
      if (v100 > 0)
      {
        goto LABEL_25;
      }

LABEL_52:
      sub_1002E7ACC(a1 + 1, v112, v112, v25);
      if (v100 < 17)
      {
        v73 = 0;
      }

      else
      {
        v73 = 0;
        v74 = &v113;
        do
        {
          v107 = v74[-2];
          v108 = v74[-1];
          v109 = *v74;
          v110 = v74[1];
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v105 = xmmword_1004B0010;
          v106 = xmmword_1004B0030;
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v103 = xmmword_1004B0010;
          v104 = xmmword_1004B0030;
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v101 = xmmword_1004B0010;
          v102 = xmmword_1004B0030;
          if ((atomic_load_explicit(byte_1004B0020, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8EA4();
          }

          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            sub_1003C8ED8();
          }

          v75 = vdupq_n_s32(0x437F0000u);
          v76 = vmulq_f32(v107, v75);
          v77 = vmulq_f32(v108, v75);
          v78 = vmulq_f32(v109, v75);
          a8 = vcvtq_s32_f32(vaddq_f32(v78, vorrq_s8(vandq_s8(v101, v78), v102)));
          v79 = vmulq_f32(v110, v75);
          a10 = vandq_s8(xmmword_1004B0010, v79);
          a9 = vorrq_s8(a10, xmmword_1004B0030);
          a6 = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v76, vorrq_s8(vandq_s8(v105, v76), v106)))), vcvtq_s32_f32(vaddq_f32(v77, vorrq_s8(vandq_s8(v103, v77), v104))));
          a7 = vqmovn_high_s32(vqmovn_s32(a8), vcvtq_s32_f32(vaddq_f32(v79, a9)));
          *v14++ = vqmovn_high_u16(vqmovn_u16(a6), a7);
          v74 += 4;
          v73 += 16;
        }

        while (v100 - 16 > v73);
      }

      if (v73 < v100)
      {
        v80 = &v112[4 * v73 + 4];
        v81 = v99;
        do
        {
          v82 = rintf(*(v80 - 1) * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          v14->i8[0] = v83;
          v84 = rintf(*v80 * 255.0);
          v85 = v84 & ~(v84 >> 31);
          if (v85 >= 255)
          {
            LOBYTE(v85) = -1;
          }

          v14->i8[1] = v85;
          v86 = rintf(v80[1] * 255.0);
          v87 = v86 & ~(v86 >> 31);
          if (v87 >= 255)
          {
            LOBYTE(v87) = -1;
          }

          v14->i8[2] = v87;
          if (v81 == 4)
          {
            v14->i8[3] = -1;
          }

          v81 = v99;
          v14 = (v14 + v99);
          v80 += 3;
          v73 += 3;
        }

        while (v100 > v73);
      }

      v19 = v97 + 256;
      v15 += 768;
      v18 = v98 + 1;
      v20 = v96;
      v17 = v94;
      if (v97 + 256 >= v94)
      {
        return;
      }
    }

    v28 = 0;
    a10.i64[0] = __PAIR64__(dword_1004B1080, dword_1004B1070);
    a10.i64[1] = __PAIR64__(dword_1004B1070, dword_1004B1090);
    a11.i64[0] = __PAIR64__(dword_1004B1090, dword_1004B1080);
    a11.i64[1] = __PAIR64__(dword_1004B1080, dword_1004B1070);
    v29.i64[0] = __PAIR64__(dword_1004B1070, dword_1004B1090);
    v29.i64[1] = __PAIR64__(dword_1004B1090, dword_1004B1080);
    v30.i32[0] = 0;
    v30.i32[1] = dword_1004D3E08;
    v30.i64[1] = dword_1004D3E14;
    v11.i32[2] = 0;
    v11.i64[0] = __PAIR64__(dword_1004D3E14, dword_1004D3E08);
    v11.i32[3] = dword_1004D3E08;
    v12.i64[0] = dword_1004D3E14;
    v12.i64[1] = __PAIR64__(dword_1004D3E14, dword_1004D3E08);
    v31 = &v114;
    do
    {
      v32 = *(v15 + v28);
      v33 = *(v15 + v28 + 16);
      v34 = vmovl_u8(*v32.i8);
      v35 = vmovl_high_u8(v32);
      v31[-6] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
      v31[-5] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_high_u16(v34)));
      v31[-4] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_u16(*v35.i8)));
      v31[-3] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_high_u16(v35)));
      v36 = vmovl_u8(*v33.i8);
      v37 = vmovl_high_u8(v33);
      v31[-2] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_u16(*v36.i8)));
      v31[-1] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_high_u16(v36)));
      *v31 = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_u16(*v37.i8)));
      v31[1] = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_high_u16(v37)));
      v38 = *(v15 + v28 + 32);
      v39 = vmovl_u8(*v38.i8);
      v40 = vmovl_high_u8(v38);
      v31[2] = vmlaq_f32(v12, v29, vcvtq_f32_u32(vmovl_u16(*v39.i8)));
      v31[3] = vmlaq_f32(v30, a10, vcvtq_f32_u32(vmovl_high_u16(v39)));
      v41 = vmlaq_f32(v11, a11, vcvtq_f32_u32(vmovl_u16(*v40.i8)));
      v13 = vcvtq_f32_u32(vmovl_high_u16(v40));
      v31[4] = v41;
      v31[5] = vmlaq_f32(v12, v29, v13);
      v28 += 48;
      v31 += 12;
    }

    while (v28 < v27);
    v42 = v28;
    if (v28 >= v100)
    {
      goto LABEL_52;
    }

LABEL_25:
    v43 = 3 * v23;
    v44 = v42 + 3;
    if (v42 + 3 > v43)
    {
      v43 = v42 + 3;
    }

    v45 = v43 - 3;
    if (v45 == v42)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    v47 = 1;
    if (v45 != v42)
    {
      v47 = 2;
    }

    v48 = v47 + (v45 - (v45 != v42) - v42) / 3;
    if (v48 < 8)
    {
      v49 = v42;
      goto LABEL_50;
    }

    v50 = 3 * v22;
    if (v48 >= 0x10)
    {
      v51 = v48 & 0x7FFFFFFFFFFFFFF0;
      a10 = vdupq_lane_s32(*a6.i8, 0);
      a11 = vdupq_lane_s32(*a8.i8, 0);
      v60 = vdupq_lane_s32(*a7.i8, 0);
      v61 = vdupq_lane_s32(*a9.f32, 0);
      if (v44 <= v50)
      {
        v62 = v50;
      }

      else
      {
        v62 = v42 + 3;
      }

      v63 = (v47 + (v62 + v46 - v42 - 3) / 3uLL) & 0xFFFFFFFFFFFFFFF0;
      v64 = &v112[4 * v42];
      v65 = v42;
      do
      {
        v66 = (v15 + v65);
        *(&v12 - 1) = vld3q_s8(v66);
        v118.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3710)), v26);
        v116.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3720)), v26);
        v116.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3720)));
        v116.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3720)));
        v117.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3700)), v26);
        v68 = v64;
        vst3q_f32(v68, v116);
        v68 += 12;
        v121.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v67, xmmword_1003E3730)), v26);
        v121.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3730)));
        v121.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3730)));
        vst3q_f32(v68, v121);
        v117.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3700)));
        v117.val[2] = vmlaq_f32(v61, v60, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3700)));
        v69 = v64 + 24;
        vst3q_f32(v69, v117);
        v118.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3710)));
        v11 = vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3710));
        v118.val[2] = vmlaq_f32(v61, v60, v11);
        v70 = v64 + 36;
        vst3q_f32(v70, v118);
        v65 += 48;
        v64 += 48;
        v63 -= 16;
      }

      while (v63);
      if (v48 == v51)
      {
        goto LABEL_52;
      }

      if ((v48 & 8) == 0)
      {
        v49 = 3 * v51 + v42;
LABEL_50:
        v71 = &v112[4 * v49 + 4];
        do
        {
          a10.i8[0] = *(v15 + v49);
          *&v72 = v26 * a10.u32[0];
          a11.i8[0] = *(v15 + v49 + 1);
          a11.f32[0] = *a8.i32 + (a11.u32[0] * *a6.i32);
          *(v71 - 1) = *&v72;
          *v71 = a11.f32[0];
          LOBYTE(v72) = *(v15 + v49 + 2);
          *a10.i32 = a9.f32[0] + (v72 * *a7.i32);
          v71[1] = *a10.i32;
          v49 += 3;
          v71 += 3;
        }

        while (v49 < v100);
        goto LABEL_52;
      }
    }

    else
    {
      v51 = 0;
    }

    v49 = 3 * (v48 & 0x7FFFFFFFFFFFFFF8) + v42;
    a10 = vdupq_lane_s32(*a6.i8, 0);
    a11 = vdupq_lane_s32(*a8.i8, 0);
    v52 = vdupq_lane_s32(*a7.i8, 0);
    v53 = vdupq_lane_s32(*a9.f32, 0);
    if (v44 <= v50)
    {
      v44 = v50;
    }

    v54 = v51 - ((v47 + (v44 + v46 - v42 - 3) / 3uLL) & 0xFFFFFFFFFFFFFFF8);
    v55 = 3 * v51 + v42;
    v56 = &v112[12 * v51 + 4 * v42];
    do
    {
      v57 = (v15 + v55);
      *v11.f32 = vld3_s8(v57);
      v119.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v11, xmmword_1003E3730)), v26);
      v119.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3730)));
      v119.val[2] = vmlaq_f32(v53, v52, vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3730)));
      v120.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v11, xmmword_1003E3720)), v26);
      v120.val[1] = vmlaq_f32(a11, a10, vcvtq_f32_u32(vqtbl1q_s8(v12, xmmword_1003E3720)));
      v11 = vcvtq_f32_u32(vqtbl1q_s8(v13, xmmword_1003E3720));
      v120.val[2] = vmlaq_f32(v53, v52, v11);
      v58 = v56 + 24;
      vst3q_f32(v56, v120);
      v59 = v56 + 12;
      vst3q_f32(v59, v119);
      v55 += 24;
      v56 = v58;
      v54 += 8;
    }

    while (v54);
    if (v48 == (v48 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }
}

int *sub_1002E7514(int *result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = 3 * a4;
  if (a4 < 17)
  {
    LODWORD(v6) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v7 = qword_1004D3EE0;
  v8 = *algn_1004D3EE8;
  v9 = qword_1004D3EF0;
  v90 = v5 - 48;
  v91 = 16 * v4;
  v10.i64[0] = 0x200000002000;
  v10.i64[1] = 0x200000002000;
  v11.i64[0] = 0xF0000000FLL;
  v11.i64[1] = 0xF0000000FLL;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  do
  {
    while (1)
    {
      v13 = 0;
      v14 = (a2 + v6);
      v100 = vld3q_s8(v14);
      v98[0] = v100.val[0];
      v97[0] = v100.val[1];
      v96[0] = v100.val[2];
      v15 = v99;
      do
      {
        v16 = *(v96 + v13) | (*(v98 + v13) << 8);
        v17 = *&byte_1004D3E00[4 * *(v98 + v13) + 1592];
        v18 = *(v8 + 4 * v16) * *(v7 + 4 * (*(v97 + v13) | (*(v98 + v13) << 8)));
        v19 = ((((*(v9 + 8 * v16) - 85 * v18) >> 14) + 0x3FFFFEC14000) * v17) >> 14;
        v20 = ((v18 >> 14) * v17) >> 14;
        v21 = v19 / 256 + v19 / 0x10000;
        if (v20 >= 0x8000)
        {
          v20 = 0x8000;
        }

        v22 = v20 & ~(v20 >> 31);
        if (v21 >= 0x8000)
        {
          v21 = 0x8000;
        }

        *(v15 - 32) = v22;
        *(v15 - 16) = v17;
        *v15++ = v21 & ~(v21 >> 31);
        ++v13;
      }

      while (v13 != 16);
      v23 = 0;
      v98[0] = v98[4];
      v98[1] = v98[5];
      v98[2] = v98[6];
      v98[3] = v98[7];
      v97[0] = v98[8];
      v97[1] = v98[9];
      v97[2] = v98[10];
      v97[3] = v98[11];
      v96[2] = v99[2];
      v96[3] = v99[3];
      v96[0] = v99[0];
      v96[1] = v99[1];
      v24 = (result + 1);
      v25 = (result + 2);
      v26 = (result + 3);
      v27 = (result + 4);
      v28 = (result + 5);
      v29 = (result + 6);
      v30 = (result + 7);
      v31 = (result + 8);
      v32 = vld1q_dup_f32(v25);
      v33 = vld1q_dup_f32(v27);
      v34 = vld1q_dup_f32(v29);
      v35 = vld1q_dup_f32(v31);
      v36 = vld1q_dup_f32(v26);
      v37 = vld1q_dup_f32(v30);
      v38 = vld1q_dup_f32(v24);
      v39 = (result + 9);
      v40 = vld1q_dup_f32(v28);
      v41 = vld1q_dup_f32(v39);
      v42 = *(result + 5);
      do
      {
        v43 = v98[v23];
        v44 = v97[v23];
        v45 = v96[v23];
        v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v32), v43, v38), v45, v36), v10), 0xEuLL);
        v47 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v40), v43, v33), v45, v34), v10), 0xEuLL);
        v48 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v44, v35), v43, v37), v45, v41), v10), 0xEuLL);
        v49 = vmaxq_s32(vminq_s32(v46, v11), 0);
        v50 = v49.u32[3];
        v51 = *(v42 + 2 * v49.u32[0]);
        v52 = *(v42 + 2 * v49.u32[1]);
        v53 = *(v42 + 2 * v49.u32[2]);
        v54 = vmaxq_s32(vminq_s32(v47, v11), 0);
        v46.i64[0] = __PAIR64__(v52, v51);
        v46.i32[2] = v53;
        v46.i32[3] = *(v42 + 2 * v50);
        v95[v23] = v46;
        v55 = vmaxq_s32(vminq_s32(v48, v11), 0);
        v54.i32[0] = *(v42 + 2 * v54.u32[0]);
        v54.i32[1] = *(v42 + 2 * v54.u32[1]);
        v54.i32[2] = *(v42 + 2 * v54.u32[2]);
        v54.i32[3] = *(v42 + 2 * v54.u32[3]);
        v94[v23] = v54;
        v55.i32[0] = *(v42 + 2 * v55.u32[0]);
        v55.i32[1] = *(v42 + 2 * v55.u32[1]);
        v55.i32[2] = *(v42 + 2 * v55.u32[2]);
        v55.i32[3] = *(v42 + 2 * v55.u32[3]);
        v93[v23++] = v55;
      }

      while (v23 != 4);
      v56 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v93[0]), v93[1])), vqmovn_high_u32(vqmovn_u32(v93[2]), v93[3]));
      v57 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v94[0]), v94[1])), vqmovn_high_u32(vqmovn_u32(v94[2]), v94[3]));
      v58 = vqmovn_high_u16(vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v95[0]), v95[1])), vqmovn_high_u32(vqmovn_u32(v95[2]), v95[3]));
      if (v4 == 4)
      {
        break;
      }

      vst3q_s8(a3, *v56.i8);
      v6 += 48;
      a3 += v91;
      if (v6 >= v90)
      {
        goto LABEL_14;
      }
    }

    vst4q_s8(a3, *(&v12 - 3));
    v6 += 48;
    a3 += v91;
  }

  while (v6 < v90);
LABEL_14:
  v5 = 3 * a4;
  if (v6 < 3 * a4)
  {
LABEL_17:
    v59 = qword_1004D3EE0;
    v60 = *algn_1004D3EE8;
    v61 = v6;
    v62 = a3 + 1;
    v63 = v61 + 2;
    v64 = qword_1004D3EF0;
    v65 = (a2 + v61 + 2);
    do
    {
      v67 = *&byte_1004D3E00[4 * *(v65 - 2) + 1592];
      v68 = *v65 | (*(v65 - 2) << 8);
      v69 = *(v60 + 4 * v68) * *(v59 + 4 * (*(v65 - 1) | (*(v65 - 2) << 8)));
      v70 = v69 + 0x3FFF;
      if (v69 >= 0)
      {
        v70 = *(v60 + 4 * v68) * *(v59 + 4 * (*(v65 - 1) | (*(v65 - 2) << 8)));
      }

      v71 = ((v70 >> 14) * v67) / 0x4000;
      v72 = *(v64 + 8 * v68) - 85 * v69;
      v73 = ((v72 / 0x4000 - 20889600) * v67 + ((v72 / 0x4000 - 20889600) * v67 < 0 ? 0x3FFFuLL : 0)) >> 14;
      v74 = v73 / 256 + v73 / 0x10000;
      if (v71 >= 0x8000)
      {
        v71 = 0x8000;
      }

      v75 = v71 & ~(v71 >> 31);
      if (v74 >= 0x8000)
      {
        v74 = 0x8000;
      }

      v76 = v74 & ~(v74 >> 31);
      v77 = (v75 * result[1] + result[2] * v67 + v76 * result[3] + 0x2000) >> 14;
      v78 = (v75 * result[4] + result[5] * v67 + v76 * result[6] + 0x2000) >> 14;
      v79 = (result[8] * v67 + result[7] * v75 + v76 * result[9] + 0x2000) >> 14;
      if (v77 >= 4095)
      {
        v80 = 4095;
      }

      else
      {
        v80 = v77;
      }

      v81 = v80 & ~(v80 >> 31);
      if (v78 >= 4095)
      {
        v82 = 4095;
      }

      else
      {
        v82 = v78;
      }

      v83 = v82 & ~(v82 >> 31);
      if (v79 >= 4095)
      {
        v79 = 4095;
      }

      v84 = *(result + 5);
      v85 = *(v84 + 2 * v81);
      v86 = *(v84 + 2 * v83);
      v87 = *(v84 + 2 * (v79 & ~(v79 >> 31)));
      if (v87 >= 0xFF)
      {
        LOBYTE(v87) = -1;
      }

      *(v62 - 1) = v87;
      if (v86 >= 0xFF)
      {
        v88 = -1;
      }

      else
      {
        v88 = v86;
      }

      *v62 = v88;
      if (v85 >= 0xFF)
      {
        v89 = -1;
      }

      else
      {
        v89 = v85;
      }

      v62[1] = v89;
      if (v4 == 4)
      {
        v62[2] = -1;
      }

      v65 += 3;
      v62 += v4;
      v66 = v63 + 1;
      v63 += 3;
    }

    while (v66 < v5);
  }

  return result;
}

int *sub_1002E7ACC(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 48))
  {
    v4 = qword_1004D3EB0;
  }

  else
  {
    v4 = 0;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 7);
    v7 = *(result + 8);
    v8 = *(result + 9);
    v9 = *(result + 10);
    v10 = *(result + 11);
    v16.i32[0] = result[2];
    v11.i32[0] = result[3];
    v15.i32[0] = result[1];
    v11.i32[1] = result[6];
    v12 = *result;
    v13 = a3 + 8;
    v14 = (a2 + 4);
    v15.i32[1] = result[4];
    v16.i32[1] = result[5];
    __asm { FMOV            V25.2S, #1.0 }

    v22 = vdup_n_s32(0x44800000u);
    do
    {
      v23 = *(v14 - 1);
      v24 = v23 * 0.0011071;
      if (v23 >= 8.0)
      {
        v24 = ((v23 + 16.0) * 0.0086207) * (((v23 + 16.0) * 0.0086207) * ((v23 + 16.0) * 0.0086207));
      }

      v25 = (*v14 + (v23 * v9)) * 3.0;
      v26 = 0.25 / (v14[1] + (v23 * v10));
      if (v26 > 0.25)
      {
        v26 = 0.25;
      }

      if (v26 < -0.25)
      {
        v26 = -0.25;
      }

      v27 = v26 * (v25 * (v24 * 3.0));
      v28 = ((-(v25 - (v23 * 156.0)) * v26) + -5.0) * v24;
      v29 = ((v7 * v24) + (v27 * v6)) + (v28 * v8);
      v30 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v16, v24), v15, v27), v11, v28);
      v31 = vbic_s8(v30, vcltz_f32(v30));
      v32 = vbsl_s8(vcgt_f32(v31, _D25), _D25, v31);
      if (v29 >= 0.0)
      {
        v33 = v29;
      }

      else
      {
        v33 = 0.0;
      }

      if (v33 > 1.0)
      {
        v33 = 1.0;
      }

      if (v4)
      {
        v34 = vmul_f32(v32, v22);
        v35 = vmin_s32(vmax_s32(vcvt_n_s32_f32(v32, 0xAuLL), 0), 0x300000003);
        v36 = vsub_f32(v34, vcvt_f32_u32(v35));
        v37 = vshl_n_s32(v35, 2uLL);
        v38 = (v4 + 4 * v37.u32[0]);
        v40.i32[0] = v38[2];
        v39.i32[0] = v38[3];
        v37.i32[0] = *v38;
        v41.i32[0] = v38[1];
        v42 = (v4 + 4 * v37.u32[1]);
        v39.i32[1] = v42[3];
        v40.i32[1] = v42[2];
        v41.i32[1] = v42[1];
        v37.i32[1] = *v42;
        v32 = vmla_f32(v37, v36, vmla_f32(v41, v36, vmla_f32(v40, v36, v39)));
        LODWORD(v42) = vcvts_n_s32_f32(v33, 0xAuLL);
        v43 = v42 & ~(v42 >> 31);
        if (v43 >= 1023)
        {
          v43 = 1023;
        }

        v44 = (v33 * 1024.0) - v43;
        result = (v4 + 4 * (4 * v43));
        v33 = *result + ((*(result + 1) + ((*(result + 2) + (*(result + 3) * v44)) * v44)) * v44);
      }

      *(v13 - 8) = v32;
      *v13 = v33;
      if (v12 == 4)
      {
        *(v13 + 4) = 1065353216;
      }

      v5 += 3;
      v13 += 4 * v12;
      v14 += 3;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E7D08()
{
  nullsub_1();

  operator delete();
}

void sub_1002E7D40(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100478100);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E7ACC(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E7E08(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 2;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 - 409993 * v15;
            v21 = *(v6 + v9);
            if (v21 <= 0x10)
            {
              v21 = 16;
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = v20 + 0x80000;
            v24 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            *v13 = v24;
            v25 = ((v22 + v23) >> 20) & ~((v22 + v23) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            v26 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *(v13 - 2) = v26;
            v27 = *(v6 + 1 + v9);
            if (v27 <= 0x10)
            {
              v27 = 16;
            }

            v28 = 1220542 * v27 - 19528672;
            v29 = ((v28 + v17) >> 20) & ~((v28 + v17) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v13[3] = v29;
            v30 = ((v28 + v23) >> 20) & ~((v28 + v23) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v30;
            v31 = ((v28 + v19) >> 20) & ~((v28 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v13[1] = v31;
            v32 = *(v14 + v9 - 1);
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = 1220542 * v32 - 19528672;
            v34 = ((v33 + v17) >> 20) & ~((v33 + v17) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *v12 = v34;
            if ((((v33 + v23) >> 20) & ~((v33 + v23) >> 31)) >= 255)
            {
              v35 = -1;
            }

            else
            {
              v35 = ((v33 + v23) >> 20) & ~((v33 + v23) >> 31);
            }

            v36 = ((v33 + v19) >> 20) & ~((v33 + v19) >> 31);
            *(v12 - 1) = v35;
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v12 - 2) = v36;
            v37 = *(v14 + v9);
            if (v37 <= 0x10)
            {
              v37 = 16;
            }

            v38 = 1220542 * v37 - 19528672;
            v39 = ((v38 + v17) >> 20) & ~((v38 + v17) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[3] = v39;
            v40 = ((v38 + v23) >> 20) & ~((v38 + v23) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v41 = ((v38 + v19) >> 20) & ~((v38 + v19) >> 31);
            if (v41 >= 255)
            {
              LOBYTE(v41) = -1;
            }

            v12[2] = v40;
            v12[1] = v41;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 6;
            v13 += 6;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E80B0()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E80E8(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 2;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = *(v13 - 1);
            v23 = v20 + 0x80000;
            if (v22 <= 0x10)
            {
              v22 = 16;
            }

            v24 = 1220542 * v22 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *v12 = v25;
            v26 = ((v24 + v23) >> 20) & ~((v24 + v23) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            *(v12 - 1) = v26;
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *(v12 - 2) = v27;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[3] = v31;
            v32 = ((v30 + v23) >> 20) & ~((v30 + v23) >> 31);
            if (v32 >= 255)
            {
              LOBYTE(v32) = -1;
            }

            v12[2] = v32;
            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[1] = v33;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *v11 = v36;
            v37 = ((v35 + v23) >> 20) & ~((v35 + v23) >> 31);
            if (v37 >= 255)
            {
              LOBYTE(v37) = -1;
            }

            *(v11 - 1) = v37;
            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *(v11 - 2) = v38;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v43 = ((v41 + v23) >> 20) & ~((v41 + v23) >> 31);
            v11[3] = v42;
            if (v43 >= 255)
            {
              v44 = -1;
            }

            else
            {
              v44 = v43;
            }

            v45 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            v11[2] = v44;
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            v11[1] = v45;
            v4 = *(result + 24);
            v12 += 6;
            v46 = v16 + 1;
            v11 += 6;
            v16 += 2;
            v15 += 2;
          }

          while (v46 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E837C()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E83B4(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 2;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 - 409993 * v15;
            v21 = *(v6 + v9);
            if (v21 <= 0x10)
            {
              v21 = 16;
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = v20 + 0x80000;
            v24 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            *(v13 - 2) = v24;
            v25 = ((v22 + v23) >> 20) & ~((v22 + v23) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            v26 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *v13 = v26;
            v27 = *(v6 + 1 + v9);
            if (v27 <= 0x10)
            {
              v27 = 16;
            }

            v28 = 1220542 * v27 - 19528672;
            v29 = ((v28 + v17) >> 20) & ~((v28 + v17) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v13[1] = v29;
            v30 = ((v28 + v23) >> 20) & ~((v28 + v23) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v30;
            v31 = ((v28 + v19) >> 20) & ~((v28 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v13[3] = v31;
            v32 = *(v14 + v9 - 1);
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = 1220542 * v32 - 19528672;
            v34 = ((v33 + v17) >> 20) & ~((v33 + v17) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v12 - 2) = v34;
            if ((((v33 + v23) >> 20) & ~((v33 + v23) >> 31)) >= 255)
            {
              v35 = -1;
            }

            else
            {
              v35 = ((v33 + v23) >> 20) & ~((v33 + v23) >> 31);
            }

            v36 = ((v33 + v19) >> 20) & ~((v33 + v19) >> 31);
            *(v12 - 1) = v35;
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *v12 = v36;
            v37 = *(v14 + v9);
            if (v37 <= 0x10)
            {
              v37 = 16;
            }

            v38 = 1220542 * v37 - 19528672;
            v39 = ((v38 + v17) >> 20) & ~((v38 + v17) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[1] = v39;
            v40 = ((v38 + v23) >> 20) & ~((v38 + v23) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v41 = ((v38 + v19) >> 20) & ~((v38 + v19) >> 31);
            if (v41 >= 255)
            {
              LOBYTE(v41) = -1;
            }

            v12[2] = v40;
            v12[3] = v41;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 6;
            v13 += 6;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E865C()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E8694(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 2;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = *(v13 - 1);
            v23 = v20 + 0x80000;
            if (v22 <= 0x10)
            {
              v22 = 16;
            }

            v24 = 1220542 * v22 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v12 - 2) = v25;
            v26 = ((v24 + v23) >> 20) & ~((v24 + v23) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            *(v12 - 1) = v26;
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *v12 = v27;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[1] = v31;
            v32 = ((v30 + v23) >> 20) & ~((v30 + v23) >> 31);
            if (v32 >= 255)
            {
              LOBYTE(v32) = -1;
            }

            v12[2] = v32;
            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[3] = v33;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v11 - 2) = v36;
            v37 = ((v35 + v23) >> 20) & ~((v35 + v23) >> 31);
            if (v37 >= 255)
            {
              LOBYTE(v37) = -1;
            }

            *(v11 - 1) = v37;
            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *v11 = v38;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v43 = ((v41 + v23) >> 20) & ~((v41 + v23) >> 31);
            v11[1] = v42;
            if (v43 >= 255)
            {
              v44 = -1;
            }

            else
            {
              v44 = v43;
            }

            v45 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            v11[2] = v44;
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            v11[3] = v45;
            v4 = *(result + 24);
            v12 += 6;
            v46 = v16 + 1;
            v11 += 6;
            v16 += 2;
            v15 += 2;
          }

          while (v46 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8928()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E8960(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 3;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16 - 409993 * v15;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 + 0x80000;
            if (*(v6 + v9) <= 0x10u)
            {
              v21 = 16;
            }

            else
            {
              v21 = *(v6 + v9);
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v23 >= 255)
            {
              LOBYTE(v23) = -1;
            }

            *(v13 - 1) = v23;
            v24 = ((v22 + v20) >> 20) & ~((v22 + v20) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            v25 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            *(v13 - 2) = v24;
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 3) = v25;
            *v13 = -1;
            v26 = *(v6 + 1 + v9);
            if (v26 <= 0x10)
            {
              v26 = 16;
            }

            v27 = 1220542 * v26 - 19528672;
            v28 = ((v27 + v17) >> 20) & ~((v27 + v17) >> 31);
            if (v28 >= 255)
            {
              LOBYTE(v28) = -1;
            }

            v13[3] = v28;
            v29 = ((v27 + v20) >> 20) & ~((v27 + v20) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v30 = ((v27 + v19) >> 20) & ~((v27 + v19) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v29;
            v13[1] = v30;
            v13[4] = -1;
            v31 = *(v14 + v9 - 1);
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = 1220542 * v31 - 19528672;
            v33 = ((v32 + v17) >> 20) & ~((v32 + v17) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            *(v12 - 1) = v33;
            v34 = ((v32 + v20) >> 20) & ~((v32 + v20) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            v35 = ((v32 + v19) >> 20) & ~((v32 + v19) >> 31);
            if (v35 >= 255)
            {
              LOBYTE(v35) = -1;
            }

            *(v12 - 2) = v34;
            *(v12 - 3) = v35;
            *v12 = -1;
            v36 = *(v14 + v9);
            if (v36 <= 0x10)
            {
              v36 = 16;
            }

            v37 = 1220542 * v36 - 19528672;
            v38 = ((v37 + v17) >> 20) & ~((v37 + v17) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            v12[3] = v38;
            v39 = ((v37 + v20) >> 20) & ~((v37 + v20) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[2] = v39;
            v40 = ((v37 + v19) >> 20) & ~((v37 + v19) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v12[1] = v40;
            v12[4] = -1;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 8;
            v13 += 8;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8C08()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E8C40(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 3;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = v20 + 0x80000;
            v23 = *(v13 - 1);
            if (v23 <= 0x10)
            {
              v23 = 16;
            }

            v24 = 1220542 * v23 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v12 - 1) = v25;
            v26 = ((v24 + v22) >> 20) & ~((v24 + v22) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *(v12 - 2) = v26;
            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *(v12 - 3) = v27;
            *v12 = -1;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[3] = v31;
            if ((((v30 + v22) >> 20) & ~((v30 + v22) >> 31)) >= 255)
            {
              v32 = -1;
            }

            else
            {
              v32 = ((v30 + v22) >> 20) & ~((v30 + v22) >> 31);
            }

            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            v12[2] = v32;
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[1] = v33;
            v12[4] = -1;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v11 - 1) = v36;
            if ((((v35 + v22) >> 20) & ~((v35 + v22) >> 31)) >= 255)
            {
              v37 = -1;
            }

            else
            {
              v37 = ((v35 + v22) >> 20) & ~((v35 + v22) >> 31);
            }

            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            *(v11 - 2) = v37;
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *(v11 - 3) = v38;
            *v11 = -1;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v11[3] = v42;
            v43 = ((v41 + v22) >> 20) & ~((v41 + v22) >> 31);
            if (v43 >= 255)
            {
              LOBYTE(v43) = -1;
            }

            v44 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            if (v44 >= 255)
            {
              LOBYTE(v44) = -1;
            }

            v11[2] = v43;
            v11[1] = v44;
            v11[4] = -1;
            v4 = *(result + 24);
            v12 += 8;
            v45 = v16 + 1;
            v11 += 8;
            v16 += 2;
            v15 += 2;
          }

          while (v45 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E8EE4()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E8F1C(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = 0;
          v10 = *(result + 16);
          v11 = *(result + 8) + 3;
          v12 = (v11 + v10 * v8);
          v13 = (v11 + v10 * v2);
          v14 = v6 + 1 + v5;
          do
          {
            v15 = *(v7 + v9) - 128;
            v16 = *(v7 + 1 + v9) - 128;
            v17 = 1673527 * v16 + 0x80000;
            v18 = -852492 * v16 - 409993 * v15;
            v19 = 2116026 * v15 + 0x80000;
            v20 = v18 + 0x80000;
            if (*(v6 + v9) <= 0x10u)
            {
              v21 = 16;
            }

            else
            {
              v21 = *(v6 + v9);
            }

            v22 = 1220542 * v21 - 19528672;
            v23 = ((v22 + v17) >> 20) & ~((v22 + v17) >> 31);
            if (v23 >= 255)
            {
              LOBYTE(v23) = -1;
            }

            *(v13 - 3) = v23;
            v24 = ((v22 + v20) >> 20) & ~((v22 + v20) >> 31);
            if (v24 >= 255)
            {
              LOBYTE(v24) = -1;
            }

            v25 = ((v22 + v19) >> 20) & ~((v22 + v19) >> 31);
            *(v13 - 2) = v24;
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v13 - 1) = v25;
            *v13 = -1;
            v26 = *(v6 + 1 + v9);
            if (v26 <= 0x10)
            {
              v26 = 16;
            }

            v27 = 1220542 * v26 - 19528672;
            v28 = ((v27 + v17) >> 20) & ~((v27 + v17) >> 31);
            if (v28 >= 255)
            {
              LOBYTE(v28) = -1;
            }

            v13[1] = v28;
            v29 = ((v27 + v20) >> 20) & ~((v27 + v20) >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            v30 = ((v27 + v19) >> 20) & ~((v27 + v19) >> 31);
            if (v30 >= 255)
            {
              LOBYTE(v30) = -1;
            }

            v13[2] = v29;
            v13[3] = v30;
            v13[4] = -1;
            v31 = *(v14 + v9 - 1);
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = 1220542 * v31 - 19528672;
            v33 = ((v32 + v17) >> 20) & ~((v32 + v17) >> 31);
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            *(v12 - 3) = v33;
            v34 = ((v32 + v20) >> 20) & ~((v32 + v20) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            v35 = ((v32 + v19) >> 20) & ~((v32 + v19) >> 31);
            if (v35 >= 255)
            {
              LOBYTE(v35) = -1;
            }

            *(v12 - 2) = v34;
            *(v12 - 1) = v35;
            *v12 = -1;
            v36 = *(v14 + v9);
            if (v36 <= 0x10)
            {
              v36 = 16;
            }

            v37 = 1220542 * v36 - 19528672;
            v38 = ((v37 + v17) >> 20) & ~((v37 + v17) >> 31);
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            v12[1] = v38;
            v39 = ((v37 + v20) >> 20) & ~((v37 + v20) >> 31);
            if (v39 >= 255)
            {
              LOBYTE(v39) = -1;
            }

            v12[2] = v39;
            v40 = ((v37 + v19) >> 20) & ~((v37 + v19) >> 31);
            if (v40 >= 255)
            {
              LOBYTE(v40) = -1;
            }

            v12[3] = v40;
            v12[4] = -1;
            v9 += 2;
            v4 = *(result + 24);
            v12 += 8;
            v13 += 8;
          }

          while (v9 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E91C4()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E91FC(uint64_t result, int *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  if (v2 < v3)
  {
    LODWORD(v4) = *(result + 24);
    if (v4 >= 1)
    {
      v5 = *(result + 48);
      v6 = *(result + 32) + v5 * v2;
      v7 = *(result + 40) + ((v5 * v2) >> 1);
      v8 = v2 + 1;
      do
      {
        if (v4 >= 1)
        {
          v9 = *(result + 16);
          v10 = *(result + 8) + 3;
          v11 = (v10 + v9 * v8);
          v12 = (v10 + v9 * v2);
          v13 = (v6 + 1);
          v14 = (v6 + 1 + v5);
          v15 = (v7 + 1);
          v16 = 1;
          do
          {
            v17 = *v15 - 128;
            v18 = *(v15 - 1) - 128;
            v19 = 1673527 * v18 + 0x80000;
            v20 = -852492 * v18 - 409993 * v17;
            v21 = 2116026 * v17 + 0x80000;
            v22 = v20 + 0x80000;
            v23 = *(v13 - 1);
            if (v23 <= 0x10)
            {
              v23 = 16;
            }

            v24 = 1220542 * v23 - 19528672;
            v25 = ((v24 + v19) >> 20) & ~((v24 + v19) >> 31);
            if (v25 >= 255)
            {
              LOBYTE(v25) = -1;
            }

            *(v12 - 3) = v25;
            v26 = ((v24 + v22) >> 20) & ~((v24 + v22) >> 31);
            if (v26 >= 255)
            {
              LOBYTE(v26) = -1;
            }

            *(v12 - 2) = v26;
            v27 = ((v24 + v21) >> 20) & ~((v24 + v21) >> 31);
            if (v27 >= 255)
            {
              LOBYTE(v27) = -1;
            }

            *(v12 - 1) = v27;
            *v12 = -1;
            v29 = *v13;
            v13 += 2;
            v28 = v29;
            if (v29 <= 0x10)
            {
              v28 = 16;
            }

            v30 = 1220542 * v28 - 19528672;
            v31 = ((v30 + v19) >> 20) & ~((v30 + v19) >> 31);
            if (v31 >= 255)
            {
              LOBYTE(v31) = -1;
            }

            v12[1] = v31;
            if ((((v30 + v22) >> 20) & ~((v30 + v22) >> 31)) >= 255)
            {
              v32 = -1;
            }

            else
            {
              v32 = ((v30 + v22) >> 20) & ~((v30 + v22) >> 31);
            }

            v33 = ((v30 + v21) >> 20) & ~((v30 + v21) >> 31);
            v12[2] = v32;
            if (v33 >= 255)
            {
              LOBYTE(v33) = -1;
            }

            v12[3] = v33;
            v12[4] = -1;
            v34 = *(v14 - 1);
            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            v35 = 1220542 * v34 - 19528672;
            v36 = ((v35 + v19) >> 20) & ~((v35 + v19) >> 31);
            if (v36 >= 255)
            {
              LOBYTE(v36) = -1;
            }

            *(v11 - 3) = v36;
            if ((((v35 + v22) >> 20) & ~((v35 + v22) >> 31)) >= 255)
            {
              v37 = -1;
            }

            else
            {
              v37 = ((v35 + v22) >> 20) & ~((v35 + v22) >> 31);
            }

            v38 = ((v35 + v21) >> 20) & ~((v35 + v21) >> 31);
            *(v11 - 2) = v37;
            if (v38 >= 255)
            {
              LOBYTE(v38) = -1;
            }

            *(v11 - 1) = v38;
            *v11 = -1;
            v40 = *v14;
            v14 += 2;
            v39 = v40;
            if (v40 <= 0x10)
            {
              v39 = 16;
            }

            v41 = 1220542 * v39 - 19528672;
            v42 = ((v41 + v19) >> 20) & ~((v41 + v19) >> 31);
            if (v42 >= 255)
            {
              LOBYTE(v42) = -1;
            }

            v11[1] = v42;
            v43 = ((v41 + v22) >> 20) & ~((v41 + v22) >> 31);
            if (v43 >= 255)
            {
              LOBYTE(v43) = -1;
            }

            v44 = ((v41 + v21) >> 20) & ~((v41 + v21) >> 31);
            if (v44 >= 255)
            {
              LOBYTE(v44) = -1;
            }

            v11[2] = v43;
            v11[3] = v44;
            v11[4] = -1;
            v4 = *(result + 24);
            v12 += 8;
            v45 = v16 + 1;
            v11 += 8;
            v16 += 2;
            v15 += 2;
          }

          while (v45 < v4);
          v5 = *(result + 48);
        }

        v2 += 2;
        v6 += 2 * v5;
        v7 += v5;
        v8 += 2;
      }

      while (v2 < v3);
    }
  }

  return result;
}

void sub_1002E94A0()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E94D8(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  LODWORD(v9) = 2 * *a2;
  v3 = 2 * a2[1];
  v4 = *(result + 24);
  v5 = *(result + 48);
  v6 = *(result + 56);
  v56[0] = v4 / 2;
  v56[1] = v6 - v4 / 2;
  v8 = *(result + 64);
  v7 = *(result + 68);
  v9 = v9;
  v10 = v6 * ((v2 + (v2 >> 31)) >> 1);
  v11 = *(result + 40) + v10;
  v12 = v5 + v10;
  if ((v2 & 0x80000001) == 1)
  {
    v13 = v8++ & 1;
    v11 += v56[v13];
    v14 = v7++ & 1;
    v12 += v56[v14];
  }

  if (v9 < v3)
  {
    v15 = *(result + 32) + v6 * v9;
    v16 = v9 + 1;
    do
    {
      if (v4 >= 2)
      {
        v19 = 0;
        v20 = *(result + 16);
        v21 = *(result + 8) + 2;
        v22 = (v21 + v20 * v16);
        v23 = (v21 + v20 * v9);
        v24 = (v15 + 1);
        v25 = (v15 + 1 + v6);
        do
        {
          v26 = *(v11 + v19) - 128;
          v27 = *(v12 + v19) - 128;
          v28 = 1673527 * v27 + 0x80000;
          v29 = -852492 * v27 - 409993 * v26;
          v30 = 2116026 * v26 + 0x80000;
          v31 = *(v24 - 1);
          v32 = v29 + 0x80000;
          if (v31 <= 0x10)
          {
            v31 = 16;
          }

          v33 = 1220542 * v31 - 19528672;
          v34 = ((v33 + v28) >> 20) & ~((v33 + v28) >> 31);
          if (v34 >= 255)
          {
            LOBYTE(v34) = -1;
          }

          *v23 = v34;
          v35 = ((v33 + v32) >> 20) & ~((v33 + v32) >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          v36 = ((v33 + v30) >> 20) & ~((v33 + v30) >> 31);
          *(v23 - 1) = v35;
          if (v36 >= 255)
          {
            v37 = -1;
          }

          else
          {
            v37 = v36;
          }

          *(v23 - 2) = v37;
          v39 = *v24;
          v24 += 2;
          v38 = v39;
          if (v39 <= 0x10)
          {
            v38 = 16;
          }

          v40 = 1220542 * v38 - 19528672;
          v41 = ((v40 + v28) >> 20) & ~((v40 + v28) >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v23[3] = v41;
          v42 = ((v40 + v32) >> 20) & ~((v40 + v32) >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          v43 = ((v40 + v30) >> 20) & ~((v40 + v30) >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          v23[2] = v42;
          v23[1] = v43;
          v44 = *(v25 - 1);
          if (v44 <= 0x10)
          {
            v44 = 16;
          }

          v45 = 1220542 * v44 - 19528672;
          v46 = ((v45 + v28) >> 20) & ~((v45 + v28) >> 31);
          if (v46 >= 255)
          {
            LOBYTE(v46) = -1;
          }

          *v22 = v46;
          v47 = ((v45 + v32) >> 20) & ~((v45 + v32) >> 31);
          if (v47 >= 255)
          {
            LOBYTE(v47) = -1;
          }

          *(v22 - 1) = v47;
          v48 = ((v45 + v30) >> 20) & ~((v45 + v30) >> 31);
          if (v48 >= 255)
          {
            LOBYTE(v48) = -1;
          }

          *(v22 - 2) = v48;
          v50 = *v25;
          v25 += 2;
          v49 = v50;
          if (v50 <= 0x10)
          {
            v49 = 16;
          }

          v51 = 1220542 * v49 - 19528672;
          v52 = ((v51 + v28) >> 20) & ~((v51 + v28) >> 31);
          if (v52 >= 255)
          {
            LOBYTE(v52) = -1;
          }

          v53 = ((v51 + v32) >> 20) & ~((v51 + v32) >> 31);
          v22[3] = v52;
          if (v53 >= 255)
          {
            v54 = -1;
          }

          else
          {
            v54 = v53;
          }

          v55 = ((v51 + v30) >> 20) & ~((v51 + v30) >> 31);
          v22[2] = v54;
          if (v55 >= 255)
          {
            LOBYTE(v55) = -1;
          }

          v22[1] = v55;
          v4 = *(result + 24);
          ++v19;
          v23 += 6;
          v22 += 6;
        }

        while (v19 < v4 / 2);
        v6 = *(result + 56);
      }

      v9 += 2;
      v15 += 2 * v6;
      v17 = v8++ & 1;
      v11 += v56[v17];
      v18 = v56[v7++ & 1];
      v12 += v18;
      v16 += 2;
    }

    while (v9 < v3);
  }

  return result;
}

void sub_1002E9824()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E985C(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  LODWORD(v9) = 2 * *a2;
  v3 = 2 * a2[1];
  v4 = *(result + 24);
  v5 = *(result + 48);
  v6 = *(result + 56);
  v56[0] = v4 / 2;
  v56[1] = v6 - v4 / 2;
  v8 = *(result + 64);
  v7 = *(result + 68);
  v9 = v9;
  v10 = v6 * ((v2 + (v2 >> 31)) >> 1);
  v11 = *(result + 40) + v10;
  v12 = v5 + v10;
  if ((v2 & 0x80000001) == 1)
  {
    v13 = v8++ & 1;
    v11 += v56[v13];
    v14 = v7++ & 1;
    v12 += v56[v14];
  }

  if (v9 < v3)
  {
    v15 = *(result + 32) + v6 * v9;
    v16 = v9 + 1;
    do
    {
      if (v4 >= 2)
      {
        v19 = 0;
        v20 = *(result + 16);
        v21 = *(result + 8) + 2;
        v22 = (v21 + v20 * v16);
        v23 = (v21 + v20 * v9);
        v24 = (v15 + 1);
        v25 = (v15 + 1 + v6);
        do
        {
          v26 = *(v11 + v19) - 128;
          v27 = *(v12 + v19) - 128;
          v28 = 1673527 * v27 + 0x80000;
          v29 = -852492 * v27 - 409993 * v26;
          v30 = 2116026 * v26 + 0x80000;
          v31 = *(v24 - 1);
          v32 = v29 + 0x80000;
          if (v31 <= 0x10)
          {
            v31 = 16;
          }

          v33 = 1220542 * v31 - 19528672;
          v34 = ((v33 + v28) >> 20) & ~((v33 + v28) >> 31);
          if (v34 >= 255)
          {
            LOBYTE(v34) = -1;
          }

          *(v23 - 2) = v34;
          v35 = ((v33 + v32) >> 20) & ~((v33 + v32) >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          v36 = ((v33 + v30) >> 20) & ~((v33 + v30) >> 31);
          *(v23 - 1) = v35;
          if (v36 >= 255)
          {
            v37 = -1;
          }

          else
          {
            v37 = v36;
          }

          *v23 = v37;
          v39 = *v24;
          v24 += 2;
          v38 = v39;
          if (v39 <= 0x10)
          {
            v38 = 16;
          }

          v40 = 1220542 * v38 - 19528672;
          v41 = ((v40 + v28) >> 20) & ~((v40 + v28) >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v23[1] = v41;
          v42 = ((v40 + v32) >> 20) & ~((v40 + v32) >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          v43 = ((v40 + v30) >> 20) & ~((v40 + v30) >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          v23[2] = v42;
          v23[3] = v43;
          v44 = *(v25 - 1);
          if (v44 <= 0x10)
          {
            v44 = 16;
          }

          v45 = 1220542 * v44 - 19528672;
          v46 = ((v45 + v28) >> 20) & ~((v45 + v28) >> 31);
          if (v46 >= 255)
          {
            LOBYTE(v46) = -1;
          }

          *(v22 - 2) = v46;
          v47 = ((v45 + v32) >> 20) & ~((v45 + v32) >> 31);
          if (v47 >= 255)
          {
            LOBYTE(v47) = -1;
          }

          *(v22 - 1) = v47;
          v48 = ((v45 + v30) >> 20) & ~((v45 + v30) >> 31);
          if (v48 >= 255)
          {
            LOBYTE(v48) = -1;
          }

          *v22 = v48;
          v50 = *v25;
          v25 += 2;
          v49 = v50;
          if (v50 <= 0x10)
          {
            v49 = 16;
          }

          v51 = 1220542 * v49 - 19528672;
          v52 = ((v51 + v28) >> 20) & ~((v51 + v28) >> 31);
          if (v52 >= 255)
          {
            LOBYTE(v52) = -1;
          }

          v53 = ((v51 + v32) >> 20) & ~((v51 + v32) >> 31);
          v22[1] = v52;
          if (v53 >= 255)
          {
            v54 = -1;
          }

          else
          {
            v54 = v53;
          }

          v55 = ((v51 + v30) >> 20) & ~((v51 + v30) >> 31);
          v22[2] = v54;
          if (v55 >= 255)
          {
            LOBYTE(v55) = -1;
          }

          v22[3] = v55;
          v4 = *(result + 24);
          ++v19;
          v23 += 6;
          v22 += 6;
        }

        while (v19 < v4 / 2);
        v6 = *(result + 56);
      }

      v9 += 2;
      v15 += 2 * v6;
      v17 = v8++ & 1;
      v11 += v56[v17];
      v18 = v56[v7++ & 1];
      v12 += v18;
      v16 += 2;
    }

    while (v9 < v3);
  }

  return result;
}

void sub_1002E9BA8()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E9BE0(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  LODWORD(v9) = 2 * *a2;
  v3 = 2 * a2[1];
  v4 = *(result + 24);
  v5 = *(result + 48);
  v6 = *(result + 56);
  v56[0] = v4 / 2;
  v56[1] = v6 - v4 / 2;
  v8 = *(result + 64);
  v7 = *(result + 68);
  v9 = v9;
  v10 = v6 * ((v2 + (v2 >> 31)) >> 1);
  v11 = *(result + 40) + v10;
  v12 = v5 + v10;
  if ((v2 & 0x80000001) == 1)
  {
    v13 = v8++ & 1;
    v11 += v56[v13];
    v14 = v7++ & 1;
    v12 += v56[v14];
  }

  if (v9 < v3)
  {
    v15 = *(result + 32) + v6 * v9;
    v16 = v9 + 1;
    v55 = v3;
    do
    {
      if (v4 >= 2)
      {
        v19 = 0;
        v20 = *(result + 16);
        v21 = *(result + 8) + 3;
        v22 = (v21 + v20 * v16);
        v23 = (v21 + v20 * v9);
        v24 = (v15 + 1);
        v25 = (v15 + 1 + v6);
        do
        {
          v26 = *(v11 + v19) - 128;
          v27 = *(v12 + v19) - 128;
          v28 = 1673527 * v27 + 0x80000;
          v29 = -852492 * v27;
          v30 = 2116026 * v26 + 0x80000;
          v31 = v29 - 409993 * v26;
          v32 = *(v24 - 1);
          if (v32 <= 0x10)
          {
            v32 = 16;
          }

          v33 = 1220542 * v32 - 19528672;
          v34 = v31 + 0x80000;
          v35 = ((v33 + v28) >> 20) & ~((v33 + v28) >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          *(v23 - 1) = v35;
          v36 = ((v33 + v34) >> 20) & ~((v33 + v34) >> 31);
          if (v36 >= 255)
          {
            LOBYTE(v36) = -1;
          }

          *(v23 - 2) = v36;
          v37 = ((v33 + v30) >> 20) & ~((v33 + v30) >> 31);
          if (v37 >= 255)
          {
            LOBYTE(v37) = -1;
          }

          *v23 = -1;
          *(v23 - 3) = v37;
          v39 = *v24;
          v24 += 2;
          v38 = v39;
          if (v39 <= 0x10)
          {
            v38 = 16;
          }

          v40 = 1220542 * v38 - 19528672;
          v41 = ((v40 + v28) >> 20) & ~((v40 + v28) >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v23[3] = v41;
          v42 = ((v40 + v34) >> 20) & ~((v40 + v34) >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          v23[2] = v42;
          v43 = ((v40 + v30) >> 20) & ~((v40 + v30) >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          v23[1] = v43;
          v23[4] = -1;
          v44 = *(v25 - 1);
          if (v44 <= 0x10)
          {
            v44 = 16;
          }

          v45 = 1220542 * v44 - 19528672;
          v46 = ((v45 + v28) >> 20) & ~((v45 + v28) >> 31);
          if (v46 >= 255)
          {
            LOBYTE(v46) = -1;
          }

          *(v22 - 1) = v46;
          if ((((v45 + v34) >> 20) & ~((v45 + v34) >> 31)) >= 255)
          {
            v47 = -1;
          }

          else
          {
            v47 = ((v45 + v34) >> 20) & ~((v45 + v34) >> 31);
          }

          v48 = ((v45 + v30) >> 20) & ~((v45 + v30) >> 31);
          *(v22 - 2) = v47;
          if (v48 >= 255)
          {
            LOBYTE(v48) = -1;
          }

          *(v22 - 3) = v48;
          *v22 = -1;
          v50 = *v25;
          v25 += 2;
          v49 = v50;
          if (v50 <= 0x10)
          {
            v49 = 16;
          }

          v51 = 1220542 * v49 - 19528672;
          v52 = ((v51 + v28) >> 20) & ~((v51 + v28) >> 31);
          if (v52 >= 255)
          {
            LOBYTE(v52) = -1;
          }

          v22[3] = v52;
          if ((((v51 + v34) >> 20) & ~((v51 + v34) >> 31)) >= 255)
          {
            v53 = -1;
          }

          else
          {
            v53 = ((v51 + v34) >> 20) & ~((v51 + v34) >> 31);
          }

          v54 = ((v51 + v30) >> 20) & ~((v51 + v30) >> 31);
          v22[2] = v53;
          if (v54 >= 255)
          {
            LOBYTE(v54) = -1;
          }

          v22[1] = v54;
          v22[4] = -1;
          v4 = *(result + 24);
          ++v19;
          v23 += 8;
          v22 += 8;
        }

        while (v19 < v4 / 2);
        v6 = *(result + 56);
        v3 = v55;
      }

      v9 += 2;
      v15 += 2 * v6;
      v17 = v8++ & 1;
      v11 += v56[v17];
      v18 = v56[v7++ & 1];
      v12 += v18;
      v16 += 2;
    }

    while (v9 < v3);
  }

  return result;
}

void sub_1002E9F44()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002E9F7C(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  LODWORD(v9) = 2 * *a2;
  v3 = 2 * a2[1];
  v4 = *(result + 24);
  v5 = *(result + 48);
  v6 = *(result + 56);
  v56[0] = v4 / 2;
  v56[1] = v6 - v4 / 2;
  v8 = *(result + 64);
  v7 = *(result + 68);
  v9 = v9;
  v10 = v6 * ((v2 + (v2 >> 31)) >> 1);
  v11 = *(result + 40) + v10;
  v12 = v5 + v10;
  if ((v2 & 0x80000001) == 1)
  {
    v13 = v8++ & 1;
    v11 += v56[v13];
    v14 = v7++ & 1;
    v12 += v56[v14];
  }

  if (v9 < v3)
  {
    v15 = *(result + 32) + v6 * v9;
    v16 = v9 + 1;
    v55 = v3;
    do
    {
      if (v4 >= 2)
      {
        v19 = 0;
        v20 = *(result + 16);
        v21 = *(result + 8) + 3;
        v22 = (v21 + v20 * v16);
        v23 = (v21 + v20 * v9);
        v24 = (v15 + 1);
        v25 = (v15 + 1 + v6);
        do
        {
          v26 = *(v11 + v19) - 128;
          v27 = *(v12 + v19) - 128;
          v28 = 1673527 * v27 + 0x80000;
          v29 = -852492 * v27;
          v30 = 2116026 * v26 + 0x80000;
          v31 = v29 - 409993 * v26;
          v32 = *(v24 - 1);
          if (v32 <= 0x10)
          {
            v32 = 16;
          }

          v33 = 1220542 * v32 - 19528672;
          v34 = v31 + 0x80000;
          v35 = ((v33 + v28) >> 20) & ~((v33 + v28) >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          *(v23 - 3) = v35;
          v36 = ((v33 + v34) >> 20) & ~((v33 + v34) >> 31);
          if (v36 >= 255)
          {
            LOBYTE(v36) = -1;
          }

          *(v23 - 2) = v36;
          v37 = ((v33 + v30) >> 20) & ~((v33 + v30) >> 31);
          if (v37 >= 255)
          {
            LOBYTE(v37) = -1;
          }

          *v23 = -1;
          *(v23 - 1) = v37;
          v39 = *v24;
          v24 += 2;
          v38 = v39;
          if (v39 <= 0x10)
          {
            v38 = 16;
          }

          v40 = 1220542 * v38 - 19528672;
          v41 = ((v40 + v28) >> 20) & ~((v40 + v28) >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v23[1] = v41;
          v42 = ((v40 + v34) >> 20) & ~((v40 + v34) >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          v23[2] = v42;
          v43 = ((v40 + v30) >> 20) & ~((v40 + v30) >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          v23[3] = v43;
          v23[4] = -1;
          v44 = *(v25 - 1);
          if (v44 <= 0x10)
          {
            v44 = 16;
          }

          v45 = 1220542 * v44 - 19528672;
          v46 = ((v45 + v28) >> 20) & ~((v45 + v28) >> 31);
          if (v46 >= 255)
          {
            LOBYTE(v46) = -1;
          }

          *(v22 - 3) = v46;
          if ((((v45 + v34) >> 20) & ~((v45 + v34) >> 31)) >= 255)
          {
            v47 = -1;
          }

          else
          {
            v47 = ((v45 + v34) >> 20) & ~((v45 + v34) >> 31);
          }

          v48 = ((v45 + v30) >> 20) & ~((v45 + v30) >> 31);
          *(v22 - 2) = v47;
          if (v48 >= 255)
          {
            LOBYTE(v48) = -1;
          }

          *(v22 - 1) = v48;
          *v22 = -1;
          v50 = *v25;
          v25 += 2;
          v49 = v50;
          if (v50 <= 0x10)
          {
            v49 = 16;
          }

          v51 = 1220542 * v49 - 19528672;
          v52 = ((v51 + v28) >> 20) & ~((v51 + v28) >> 31);
          if (v52 >= 255)
          {
            LOBYTE(v52) = -1;
          }

          v22[1] = v52;
          if ((((v51 + v34) >> 20) & ~((v51 + v34) >> 31)) >= 255)
          {
            v53 = -1;
          }

          else
          {
            v53 = ((v51 + v34) >> 20) & ~((v51 + v34) >> 31);
          }

          v54 = ((v51 + v30) >> 20) & ~((v51 + v30) >> 31);
          v22[2] = v53;
          if (v54 >= 255)
          {
            LOBYTE(v54) = -1;
          }

          v22[3] = v54;
          v22[4] = -1;
          v4 = *(result + 24);
          ++v19;
          v23 += 8;
          v22 += 8;
        }

        while (v19 < v4 / 2);
        v6 = *(result + 56);
        v3 = v55;
      }

      v9 += 2;
      v15 += 2 * v6;
      v17 = v8++ & 1;
      v11 += v56[v17];
      v18 = v56[v7++ & 1];
      v12 += v18;
      v16 += 2;
    }

    while (v9 < v3);
  }

  return result;
}

void sub_1002EA2E0()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EA318(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 2);
        v8 = (v5 + 3);
        v9 = 3;
        do
        {
          v10 = *(v8 - 2) - 128;
          v11 = *v8 - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v7 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 1) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 2) = v19;
          v20 = *(v8 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v7[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[2] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[1] = v24;
          v6 = *(result + 40);
          v7 += 6;
          v25 = v9 + 1;
          v9 += 4;
          v8 += 4;
        }

        while (v25 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EA4AC()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EA4E4(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 2);
        v8 = (v5 + 3);
        v9 = 1;
        do
        {
          v10 = *(v8 - 3) - 128;
          v11 = *(v8 - 1) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 2);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v7 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 1) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 2) = v19;
          v21 = *v8;
          v8 += 4;
          v20 = v21;
          if (v21 <= 0x10)
          {
            v20 = 16;
          }

          v22 = 1220542 * v20 - 19528672;
          v23 = ((v22 + v12) >> 20) & ~((v22 + v12) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[3] = v23;
          v24 = ((v22 + v13) >> 20) & ~((v22 + v13) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[2] = v24;
          v25 = ((v22 + v14) >> 20) & ~((v22 + v14) >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          v7[1] = v25;
          v6 = *(result + 40);
          v7 += 6;
          v26 = v9 + 3;
          v9 += 4;
        }

        while (v26 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EA674()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EA6AC(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 2);
        v8 = (v5 + 3);
        v9 = 3;
        do
        {
          v10 = *v8 - 128;
          v11 = *(v8 - 2) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v7 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 1) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 2) = v19;
          v20 = *(v8 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v7[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[2] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[1] = v24;
          v6 = *(result + 40);
          v7 += 6;
          v25 = v9 + 1;
          v9 += 4;
          v8 += 4;
        }

        while (v25 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EA840()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EA878(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 1);
        do
        {
          v10 = *v9 - 128;
          v11 = v9[2] - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 1);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v20 = v9[1];
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v8[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[4] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[5] = v24;
          v7 += 4;
          v8 += 6;
          v6 = *(result + 40);
          v9 += 4;
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EAA04()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EAA3C(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 3);
        do
        {
          v10 = *(v9 - 3) - 128;
          v11 = *(v9 - 1) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 2);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v21 = *v9;
          v9 += 4;
          v20 = v21;
          if (v21 <= 0x10)
          {
            v20 = 16;
          }

          v22 = 1220542 * v20 - 19528672;
          v23 = ((v22 + v12) >> 20) & ~((v22 + v12) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[3] = v23;
          v24 = ((v22 + v13) >> 20) & ~((v22 + v13) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[4] = v24;
          v25 = ((v22 + v14) >> 20) & ~((v22 + v14) >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          v8[5] = v25;
          v7 += 4;
          v8 += 6;
          v6 = *(result + 40);
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EABC4()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EABFC(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 3);
        do
        {
          v10 = *v9 - 128;
          v11 = *(v9 - 2) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v20 = *(v9 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v8[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[4] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[5] = v24;
          v7 += 4;
          v8 += 6;
          v6 = *(result + 40);
          v9 += 4;
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EAD88()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EADC0(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 3);
        v8 = (v5 + 3);
        v9 = 3;
        do
        {
          v10 = *(v8 - 2) - 128;
          v11 = *v8 - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *(v7 - 1) = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 2) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 3) = v19;
          *v7 = -1;
          v20 = *(v8 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v7[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[2] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[1] = v24;
          v7[4] = -1;
          v6 = *(result + 40);
          v7 += 8;
          v25 = v9 + 1;
          v9 += 4;
          v8 += 4;
        }

        while (v25 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EAF5C()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EAF94(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 3);
        v8 = (v5 + 3);
        v9 = 1;
        do
        {
          v10 = *(v8 - 3) - 128;
          v11 = *(v8 - 1) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 2);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *(v7 - 1) = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 2) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 3) = v19;
          *v7 = -1;
          v21 = *v8;
          v8 += 4;
          v20 = v21;
          if (v21 <= 0x10)
          {
            v20 = 16;
          }

          v22 = 1220542 * v20 - 19528672;
          v23 = ((v22 + v12) >> 20) & ~((v22 + v12) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[3] = v23;
          v24 = ((v22 + v13) >> 20) & ~((v22 + v13) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[2] = v24;
          v25 = ((v22 + v14) >> 20) & ~((v22 + v14) >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          v7[1] = v25;
          v7[4] = -1;
          v6 = *(result + 40);
          v7 += 8;
          v26 = v9 + 3;
          v9 += 4;
        }

        while (v26 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EB12C()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EB164(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = (*(result + 8) + *(result + 16) * v2 + 3);
        v8 = (v5 + 3);
        v9 = 3;
        do
        {
          v10 = *v8 - 128;
          v11 = *(v8 - 2) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v8 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *(v7 - 1) = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(v7 - 2) = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          *(v7 - 3) = v19;
          *v7 = -1;
          v20 = *(v8 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v7[3] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v7[2] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v7[1] = v24;
          v7[4] = -1;
          v6 = *(result + 40);
          v7 += 8;
          v25 = v9 + 1;
          v9 += 4;
          v8 += 4;
        }

        while (v25 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EB300()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EB338(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 1);
        do
        {
          v10 = *v9 - 128;
          v11 = v9[2] - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 1);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v8[3] = -1;
          v20 = v9[1];
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v8[4] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[5] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[6] = v24;
          v8[7] = -1;
          v7 += 4;
          v8 += 8;
          v6 = *(result + 40);
          v9 += 4;
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EB4CC()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EB504(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 3);
        do
        {
          v10 = *(v9 - 3) - 128;
          v11 = *(v9 - 1) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 2);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v8[3] = -1;
          v21 = *v9;
          v9 += 4;
          v20 = v21;
          if (v21 <= 0x10)
          {
            v20 = 16;
          }

          v22 = 1220542 * v20 - 19528672;
          v23 = ((v22 + v12) >> 20) & ~((v22 + v12) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[4] = v23;
          v24 = ((v22 + v13) >> 20) & ~((v22 + v13) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[5] = v24;
          v25 = ((v22 + v14) >> 20) & ~((v22 + v14) >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          v8[6] = v25;
          v8[7] = -1;
          v7 += 4;
          v8 += 8;
          v6 = *(result + 40);
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EB694()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002EB6CC(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v2 < v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 24) + v4 * v2;
    LODWORD(v6) = *(result + 40);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = (*(result + 8) + *(result + 16) * v2);
        v9 = (v5 + 3);
        do
        {
          v10 = *v9 - 128;
          v11 = *(v9 - 2) - 128;
          v12 = 1673527 * v11 + 0x80000;
          v13 = -852492 * v11 - 409993 * v10 + 0x80000;
          v14 = 2116026 * v10 + 0x80000;
          v15 = *(v9 - 3);
          if (v15 <= 0x10)
          {
            v15 = 16;
          }

          v16 = 1220542 * v15 - 19528672;
          v17 = ((v16 + v12) >> 20) & ~((v16 + v12) >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *v8 = v17;
          v18 = ((v16 + v13) >> 20) & ~((v16 + v13) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v8[1] = v18;
          v19 = ((v16 + v14) >> 20) & ~((v16 + v14) >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v8[2] = v19;
          v8[3] = -1;
          v20 = *(v9 - 1);
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = 1220542 * v20 - 19528672;
          v22 = ((v21 + v12) >> 20) & ~((v21 + v12) >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v8[4] = v22;
          v23 = ((v21 + v13) >> 20) & ~((v21 + v13) >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v8[5] = v23;
          v24 = ((v21 + v14) >> 20) & ~((v21 + v14) >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v8[6] = v24;
          v8[7] = -1;
          v7 += 4;
          v8 += 8;
          v6 = *(result + 40);
          v9 += 4;
        }

        while (v7 < 2 * v6);
        v4 = *(result + 32);
      }

      ++v2;
      v5 += v4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1002EB860()
{
  nullsub_1();

  operator delete();
}

void sub_1002EB89C()
{
  nullsub_1();

  operator delete();
}

void sub_1002EB8D4(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v31, &off_100478760);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 < v5 && *(a1 + 40) >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24) + v6 * v4;
    v8 = *(a1 + 16);
    v9 = *(a1 + 8) + v8 * v4;
    v10.i64[0] = 0x81008100810081;
    v10.i64[1] = 0x81008100810081;
    v11 = vnegq_f16(v10);
    do
    {
      v12 = *(a1 + 40);
      if (v12 < 1)
      {
        goto LABEL_5;
      }

      if (v12 >= 8 && ((v13 = 4 * (v12 - 1), v7 < v9 + v13 + 4) ? (v14 = v9 >= v7 + v13 + 4) : (v14 = 1), v14))
      {
        v15 = v12 & 0x7FFFFFF8;
        v16 = (v9 + 4 * v15);
        v17 = (v7 + 4 * v15);
        v18 = v15;
        v19 = v9;
        v20 = v7;
        do
        {
          v32 = vld4_s8(v19);
          v19 += 32;
          v21.i64[0] = 0x80008000800080;
          v21.i64[1] = 0x80008000800080;
          v22 = vmlal_u8(v21, v32.val[3], v32.val[0]);
          v23.i64[0] = 0x80008000800080;
          v23.i64[1] = 0x80008000800080;
          v24 = vmlal_u8(v23, v32.val[3], v32.val[1]);
          v25.i64[0] = 0x80008000800080;
          v25.i64[1] = 0x80008000800080;
          v26 = vmlal_u8(v25, v32.val[3], v32.val[2]);
          v32.val[2] = vshrn_n_s16(vuzp2q_s16(vmull_u16(*v26.i8, *v11.i8), vmull_high_u16(v26, v11)), 7uLL);
          v32.val[1] = vshrn_n_s16(vuzp2q_s16(vmull_u16(*v24.i8, *v11.i8), vmull_high_u16(v24, v11)), 7uLL);
          v32.val[0] = vshrn_n_s16(vuzp2q_s16(vmull_u16(*v22.i8, *v11.i8), vmull_high_u16(v22, v11)), 7uLL);
          vst4_s8(v20, v32);
          v20 += 32;
          v18 -= 8;
        }

        while (v18);
        if (v15 == v12)
        {
          goto LABEL_4;
        }
      }

      else
      {
        LODWORD(v15) = 0;
        v16 = v9;
        v17 = v7;
      }

      v27 = v12 - v15;
      do
      {
        v28 = v16[1];
        v29 = v16[2];
        v30 = v16[3];
        *v17 = (v30 * *v16 + 128) / 0xFFu;
        v17[1] = (v30 * v28 + 128) / 0xFFu;
        v17[2] = (v30 * v29 + 128) / 0xFFu;
        v17[3] = v30;
        v17 += 4;
        v16 += 4;
        --v27;
      }

      while (v27);
LABEL_4:
      v8 = *(a1 + 16);
      v6 = *(a1 + 32);
      v5 = a2[1];
LABEL_5:
      ++v4;
      v9 += v8;
      v7 += v6;
    }

    while (v4 < v5);
  }

  if (v31[2])
  {
    sub_1002ACC1C(v31);
  }
}

void sub_1002EBAB4()
{
  nullsub_1();

  operator delete();
}

void sub_1002EBAEC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v17, &off_1004787C0);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 < v5 && *(a1 + 40) >= 1)
  {
    v6 = *(a1 + 32);
    v7 = (*(a1 + 24) + v6 * v4);
    v8 = *(a1 + 16);
    v9 = *(a1 + 8) + v8 * v4;
    do
    {
      v10 = *(a1 + 40);
      if (v10 >= 1)
      {
        v11 = (v9 + 3);
        v12 = v7;
        do
        {
          v16 = *v11;
          if (*v11)
          {
            v13 = ((v16 >> 1) - *(v11 - 3) + (*(v11 - 3) << 8)) / v16;
            v14 = ((v16 >> 1) - *(v11 - 2) + (*(v11 - 2) << 8)) / v16;
            v15 = ((v16 >> 1) - *(v11 - 1) + (*(v11 - 1) << 8)) / v16;
          }

          else
          {
            LOBYTE(v13) = 0;
            LOBYTE(v14) = 0;
            LOBYTE(v15) = 0;
          }

          *v12 = v13;
          v12[1] = v14;
          v12[2] = v15;
          v12[3] = v16;
          v12 += 4;
          v11 += 4;
          --v10;
        }

        while (v10);
        v8 = *(a1 + 16);
        v6 = *(a1 + 32);
        v5 = a2[1];
      }

      ++v4;
      v9 += v8;
      v7 += v6;
    }

    while (v4 < v5);
  }

  if (v17[2])
  {
    sub_1002ACC1C(v17);
  }
}

unsigned int *sub_1002EBC1C()
{
  xmmword_1004D3FA0 = xmmword_1003E6870;
  *&qword_1004D3FB0 = xmmword_1003E6880;
  xmmword_1004D3FC0 = xmmword_1003E6890;
  *&qword_1004D3FD0 = xmmword_1003E68A0;
  qword_1004D3FE0 = 0x3FEE68427418D691;
  xmmword_1004D3FF0 = xmmword_1003E68B0;
  *&qword_1004D4000 = xmmword_1003E68C0;
  xmmword_1004D4010 = xmmword_1003E68D0;
  *&qword_1004D4020 = xmmword_1003E68E0;
  qword_1004D4030 = 0x3FF0EABEF06B3786;
  xmmword_1004D3F70 = xmmword_1003E68F0;
  qword_1004D3F80 = 0x3FF16B8950763A19;
  sub_10029D334(&v2, 0x800u);
  sub_10029D334(&v1, 3u);
  sub_10029D700(&v2, &v1, &v3);
  dword_1004D3E04 = v3;
  sub_10029D334(&dword_1004D3E08, 0xFFFFFF7A);
  sub_10029D334(algn_1004D3E0C, 0xDCu);
  sub_10029D490(algn_1004D3E0C, &dword_1004D3E08, &dword_1004D3E10);
  sub_10029D334(&dword_1004D3E14, 0xFFFFFF74);
  sub_10029D334(&dword_1004D3E18, 0x7Au);
  sub_10029D490(&dword_1004D3E18, &dword_1004D3E14, &dword_1004D3E1C);
  sub_10029DA40(&v3, 0x329u);
  sub_10029DA40(&v2, 0x4E20u);
  sub_10029E2BC(&v3, &v2, &qword_1004D3E78);
  sub_10029DA40(&v3, 0x1E93u);
  sub_10029DA40(&v2, 0x2625A0u);
  sub_10029E2BC(&v3, &v2, &qword_1004D3E80);
  sub_10029DA40(&v3, 0x143u);
  sub_10029DA40(&v2, 0x19u);
  sub_10029E2BC(&v3, &v2, &qword_1004D3E88);
  sub_10029DA40(&v3, 0xCu);
  sub_10029DA40(&v2, 5u);
  sub_10029E2BC(&v3, &v2, &qword_1004D3E90);
  sub_10029DA40(&v3, 0xBu);
  sub_10029DA40(&v2, 0xC8u);
  sub_10029E2BC(&v3, &v2, &qword_1004D3E98);
  sub_10029D334(&v3, 0xD8u);
  sub_10029D334(&v2, 0x5F45u);
  sub_10029D700(&v3, &v2, &dword_1004D3E20);
  sub_10029D334(&v3, 0x349u);
  sub_10029D334(&v2, 0x6Cu);
  sub_10029D700(&v3, &v2, &dword_1004D3E24);
  sub_10029D334(&v3, 0x10u);
  sub_10029D334(&v2, 0x74u);
  sub_10029D700(&v3, &v2, &dword_1004D3E28);
  return sub_10029D334(&dword_1004D3E2C, 0xFFu);
}

double sub_1002EBEB8(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v5 = 0;
    v6 = 0;
    sub_1002A8980(-27, &v5, "cvStartReadChainPoints", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 60);
  }

  if (*(a1 + 44) != 1 || *(a1 + 4) <= 103)
  {
    v5 = 0;
    v6 = 0;
    sub_1002A8980(-201, &v5, "cvStartReadChainPoints", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 63);
  }

  sub_100232554(a1, a2, 0);
  *(a2 + 68) = *(a1 + 96);
  *(a2 + 76) = -16711679;
  *(a2 + 80) = 0;
  *(a2 + 81) = -1;
  *&result = 130816;
  *(a2 + 85) = 130816;
  *(a2 + 89) = 257;
  *(a2 + 91) = 1;
  return result;
}

void *sub_1002EBFDC(int *a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, int a7)
{
  if (!a2)
  {
    v70[0] = 0;
    v70[1] = 0;
    sub_1002A8980(-27, v70, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 188);
  }

  v12 = sub_1001FD9EC(a1, v70, 0, 0);
  v13 = (*v12 & 0xFFF) == 4;
  if (a4 == 2 && v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = a4;
  }

  v64 = v14;
  if (v14 != 4)
  {
    v13 = 0;
  }

  v15 = v14 < 4 && (*v12 & 0xFFE) == 0;
  if (!v15 && !v13)
  {
    v68 = 0;
    v69 = 0;
    qmemcpy(sub_1002A80E0(&v68, 119), "[Start]FindContours supports only CV_8UC1 images when mode != CV_RETR_FLOODFILL otherwise supports CV_32SC1 images only", 119);
    sub_1002A8980(-210, &v68, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 199);
  }

  v65 = *(v12 + 36);
  v67 = *(v12 + 32);
  v16 = *(v12 + 4);
  v17 = *(v12 + 24);
  if (a5 >= 5)
  {
    v68 = 0;
    v69 = 0;
    sub_1002A8980(-211, &v68, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 206);
  }

  if (a5)
  {
    v18 = 128;
  }

  else
  {
    v18 = 104;
  }

  if (v18 > a3)
  {
    v68 = 0;
    v69 = 0;
    sub_1002A8980(-201, &v68, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 209);
  }

  v62 = a7;
  v63 = v12;
  v19 = sub_1001D90AC(0x598uLL);
  bzero(v19 + 2, 0x588uLL);
  *v19 = a2;
  v19[1] = a2;
  v20 = &v17[v16];
  v61 = v17;
  v19[10] = v17;
  v19[11] = v20;
  *(v19 + 24) = v16;
  *(v19 + 25) = v65 - 1;
  v21 = v67 - 1;
  *(v19 + 26) = v67 - 1;
  *(v19 + 94) = v64;
  *(v19 + 108) = a6;
  *(v19 + 116) = 0x100000001;
  v19[16] = 0x200000001;
  v19[28] = 0;
  v19[29] = v19 + 34;
  *(v19 + 66) = 1;
  v19[27] = 0;
  v19[31] = (v67 << 32) | v65;
  *(v19 + 95) = 0;
  *(v19 + 68) = 0x8000;
  *(v19 + 92) = a5;
  *(v19 + 93) = a5;
  if (a5 - 3 >= 2)
  {
    if (a5)
    {
      v24 = 20492;
      *(v19 + 96) = 20492;
      *(v19 + 97) = a3;
      v23 = 8;
      *(v19 + 98) = 8;
      v22 = 20492;
    }

    else
    {
      v24 = 20480;
      *(v19 + 96) = 20480;
      *(v19 + 97) = a3;
      v23 = 1;
      *(v19 + 98) = 1;
      v22 = 20480;
    }
  }

  else
  {
    *(v19 + 92) = 0;
    v19[48] = 0x6800005000;
    *(v19 + 98) = 1;
    v22 = 20492;
    v23 = 8;
    v24 = 20480;
  }

  *(v19 + 100) = a3;
  *(v19 + 101) = v23;
  *(v19 + 96) = v24;
  *(v19 + 99) = v22;
  sub_100231AF4(a2, (v19 + 4));
  if (a5 <= 2)
  {
    if (v64 < 2)
    {
      goto LABEL_28;
    }

LABEL_31:
    sub_1002317F4(v19[1]);
    v19[2] = v26;
    v19[3] = sub_100236364(0, 112, 64, v26);
    if (v16 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  sub_1002317F4(v19[1]);
  *v19 = v25;
  if (v64 >= 2)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v16 < 0)
  {
LABEL_32:
    v68 = 0;
    v69 = 0;
    v27 = sub_1002A80E0(&v68, 9);
    *(v27 + 8) = 48;
    *v27 = *"step >= 0";
    sub_1002A8980(-215, &v68, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 289);
  }

LABEL_33:
  if (v67 <= 0)
  {
    v68 = 0;
    v69 = 0;
    *sub_1002A80E0(&v68, 16) = *"size.height >= 1";
    sub_1002A8980(-215, &v68, "cvStartFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 290);
  }

  if (v62)
  {
    v28 = (((*v63 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*v63 & 7))) & 3);
    bzero(v61, v28 * v65);
    bzero(&v61[v16 * v21], v28 * v65);
    if (v67 >= 3)
    {
      v29 = v28 * (v65 - 1);
      if (v28 > 7)
      {
        if (v29 != 0 && v29 < 0xFFFFFFFFFFFFFFE1)
        {
          v37 = v28 & 0x1FF8;
          if (v28 > 0x1F)
          {
            v39 = v28 & 0x1FE0;
            if (v39 == v28)
            {
              v40 = &v61[v16 + v29];
              v41 = &v61[v16 + 16];
              v42 = 1;
              do
              {
                v43 = v41;
                v44 = v40;
                v45 = v28 & 0x1FE0;
                do
                {
                  *v44 = 0uLL;
                  *(v44 + 1) = 0uLL;
                  v44 += 32;
                  *(v43 - 1) = 0uLL;
                  *v43 = 0uLL;
                  v43 += 2;
                  v45 -= 32;
                }

                while (v45);
                ++v42;
                v40 += v16;
                v41 += v16;
              }

              while (v42 != v21);
            }

            else
            {
              v50 = &v61[v16 + v29];
              v51 = v50 + 16;
              v52 = &v61[v16 + 16];
              v53 = &v61[v16 + v39];
              v54 = 1;
              do
              {
                v55 = v52;
                v56 = v51;
                v57 = v28 & 0x1FE0;
                do
                {
                  *(v56 - 1) = 0uLL;
                  *v56 = 0uLL;
                  v56 += 2;
                  *(v55 - 1) = 0uLL;
                  *v55 = 0uLL;
                  v55 += 2;
                  v57 -= 32;
                }

                while (v57);
                v58 = v28 & 0x1FE0;
                v59 = v37 - v39;
                v60 = v53;
                if ((v28 & 0x18) == 0)
                {
                  goto LABEL_83;
                }

                do
                {
                  *(v60 + v29) = 0;
                  *v60++ = 0;
                  v59 -= 8;
                }

                while (v59);
                v58 = v28 & 0x1FF8;
                if (v28 != v37)
                {
LABEL_83:
                  do
                  {
                    v50[v58] = 0;
                    v20[v58++] = 0;
                  }

                  while (v28 != v58);
                }

                ++v54;
                v20 += v16;
                v51 = (v51 + v16);
                v52 += v16;
                v53 += v16;
                v50 += v16;
              }

              while (v54 != v21);
            }
          }

          else if (v28 == v37)
          {
            v38 = v67 - 2;
            do
            {
              *&v20[v29] = 0;
              *v20 = 0;
              if (v37 != 8)
              {
                *&v20[v29 + 8] = 0;
                *(v20 + 1) = 0;
                if (v37 != 16)
                {
                  *&v20[v29 + 16] = 0;
                  *(v20 + 2) = 0;
                }
              }

              v20 += v16;
              --v38;
            }

            while (v38);
          }

          else
          {
            v46 = &v61[v37 + v16];
            v47 = 1;
            do
            {
              *&v20[v29] = 0;
              *v20 = 0;
              if (v37 != 8)
              {
                *&v20[v29 + 8] = 0;
                *(v20 + 1) = 0;
                if (v37 != 16)
                {
                  *&v20[v29 + 16] = 0;
                  *(v20 + 2) = 0;
                }
              }

              v48 = v46;
              v49 = v28 - v37;
              do
              {
                v48[v29] = 0;
                *v48++ = 0;
                --v49;
              }

              while (v49);
              ++v47;
              v20 += v16;
              v46 += v16;
            }

            while (v47 != v21);
          }
        }

        else
        {
          v33 = 1;
          do
          {
            v34 = v20;
            v35 = v28;
            do
            {
              v34[v29] = 0;
              *v34++ = 0;
              --v35;
            }

            while (v35);
            ++v33;
            v20 += v16;
          }

          while (v33 != v21);
        }
      }

      else
      {
        v30 = 1;
        do
        {
          v31 = v20;
          v32 = v28;
          do
          {
            v31[v29] = 0;
            *v31++ = 0;
            --v32;
          }

          while (v32);
          ++v30;
          v20 += v16;
        }

        while (v30 != v21);
      }
    }
  }

  if ((*v63 & 0xFFF) != 4)
  {
    sub_100371358(v63, v63, 0, 0.0, 1.0);
  }

  return v19;
}

void sub_1002EC6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EC760(void **a1)
{
  v1 = a1;
  if (!a1)
  {
    v211 = 0uLL;
    sub_1002A8980(-27, &v211, "cvFindNextContour", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1012);
  }

  if ((a1[12] & 0x80000000) != 0)
  {
    v211 = 0uLL;
    qmemcpy(sub_1002A80E0(&v211, 22), "scanner->img_step >= 0", 22);
    sub_1002A8980(-215, &v211, "cvFindNextContour", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1018);
  }

  v2 = a1[17];
  if (v2)
  {
    if (*(a1 + 95))
    {
      sub_100231AF4(a1[1], &v211);
      v1 = a1;
      if (v211 == a1[8] && DWORD2(v211) == *(a1 + 18))
      {
        sub_100231B80(a1[1], a1 + 6);
        v1 = a1;
      }

      *(v1 + 95) = 0;
    }

    v3 = v2[3];
    if (v3)
    {
      sub_100237434(v3, *(v2[2] + 24), (v1 + 34));
      v1 = a1;
    }

    v1[17] = 0;
  }

  v4 = v1[11];
  v5 = *(v1 + 30);
  v200 = *(v1 + 26);
  v6 = *(v1 + 94);
  v7 = *(v1 + 29) - 1;
  if (v6 == 4)
  {
    v8 = *(v4 + v7);
    v9 = -1073741824;
    if (v5 >= v200)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v4 + v7);
    v9 = -2;
    if (v5 >= v200)
    {
      return 0;
    }
  }

  v10 = *(v1 + 24);
  v11 = *(v1 + 25);
  v12 = v10;
  v13 = v10 >> 2;
  v188 = v1[10];
  if (v6 == 4)
  {
    v14 = v1[10];
  }

  else
  {
    v14 = 0;
  }

  v173 = v9;
  v186 = ~v9;
  v189 = v10 >> 2;
  v162 = v10 >> 2;
  v163 = v1 + 51;
  HIDWORD(v161) = -v13;
  LODWORD(v161) = 1 - v13;
  v15 = *(v1 + 31);
  LODWORD(v16) = *(v1 + 32);
  v160 = ~v13;
  v159 = v13 - 1;
  v176 = *(v1 + 33);
  v158 = v13 + 1;
  HIDWORD(v168) = -v10;
  LODWORD(v168) = 1 - v10;
  v167 = ~v10;
  v166 = v10 - 1;
  v169 = *(v1 + 24);
  v170 = v14;
  v165 = v10 + 1;
  v172 = v1 + 26;
  v157 = (v1 + 18);
  v17 = *(v1 + 29);
  v195 = v10;
  v171 = *(v1 + 94);
  while (1)
  {
    v18 = v6 == 4 ? v4 : 0;
    if (v17 < v11)
    {
      break;
    }

LABEL_23:
    v8 = 0;
    v15 = 0;
    v16 = (v5 + 1);
    v4 = (v4 + v12);
    v17 = 1;
    v5 = v16;
    if (v16 == v200)
    {
      return 0;
    }
  }

  v19 = v14 + 4 * v189 * v16;
  v20 = v188 + v12 * v16;
  v193 = v5 << 32;
  while (1)
  {
    if (v18)
    {
      if (v17 >= v11)
      {
        goto LABEL_23;
      }

      v21 = v17;
      while (1)
      {
        v22 = *(v18 + v21);
        v23 = v22 == v8 || ((v22 ^ v8) & v186) == 0;
        if (!v23)
        {
          break;
        }

        ++v21;
        v8 = v22;
        if (v11 == v21)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (v17 >= v11)
      {
        goto LABEL_23;
      }

      v21 = v17;
      while (1)
      {
        v22 = *(v4 + v21);
        if (v8 != v22)
        {
          break;
        }

        if (v11 == ++v21)
        {
          goto LABEL_22;
        }
      }
    }

    if (v11 <= v21)
    {
LABEL_22:
      v12 = v195;
      goto LABEL_23;
    }

    if (v18)
    {
      break;
    }

    if (!v8 && v22 == 1)
    {
      goto LABEL_56;
    }

    if (v22 || v8 < 1)
    {
      goto LABEL_68;
    }

    v22 = 0;
    v25 = v21 - 1;
    v28 = v21 - 1;
    if ((v8 & v173) != 0)
    {
      if (v6)
      {
        goto LABEL_70;
      }

      goto LABEL_286;
    }

LABEL_69:
    v28 = v15;
    if (v6)
    {
LABEL_70:
      v182 = v16;
      v178 = v4;
      if (v6 < 2)
      {
        v27 = 0;
        v26 = 1;
        v192 = v25;
        v183 = 1;
        goto LABEL_80;
      }

      v27 = 0;
      v26 = 0;
      v183 = 1;
      v15 = v28;
      v177 = v172;
      v192 = v25;
      if (v28 < 1)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

LABEL_286:
    if (v22 >= 2)
    {
      v15 = v21;
    }

    else
    {
      v15 = v28;
    }

    v17 = v21 + 1;
    v8 = v22;
    v12 = v195;
    if (v21 + 1 >= v11)
    {
      goto LABEL_23;
    }
  }

  v24 = (v8 & v173) != 0 || v8 == 0;
  if (!v24 || (v22 & v173) != 0)
  {
    if ((v173 & (v8 | v22)) != 0)
    {
      goto LABEL_68;
    }

    v25 = v21 - 1;
    goto LABEL_69;
  }

LABEL_56:
  if (!v6)
  {
    if (v20[v15] <= 0)
    {
      v182 = v16;
      v178 = v4;
LABEL_73:
      v183 = 0;
      v26 = 1;
      v192 = v21;
      v27 = 1;
      goto LABEL_80;
    }

LABEL_68:
    v28 = v15;
    goto LABEL_286;
  }

  v178 = v4;
  v182 = v16;
  if (v6 < 2)
  {
    goto LABEL_73;
  }

  if (v15 < 1)
  {
    v26 = 0;
    v183 = 0;
    v27 = 1;
LABEL_79:
    v192 = v21;
LABEL_80:
    v177 = v172;
    goto LABEL_81;
  }

  v26 = 0;
  v27 = 1;
  v183 = 0;
  if (v6 == 2)
  {
    goto LABEL_79;
  }

  v25 = v21;
  v192 = v21;
  v177 = v172;
  if (v6 == 4)
  {
    goto LABEL_81;
  }

LABEL_75:
  if (v14)
  {
    v29 = v163[*&v19[4 * v15] & 0x7F];
    if (!v29)
    {
      goto LABEL_295;
    }
  }

  else
  {
    v29 = v163[v20[v15] & 0x7F];
    if (!v29)
    {
      goto LABEL_295;
    }
  }

  v116 = 0;
  v117 = v18;
  v118 = v18 + v15;
  v119 = v178 + v15;
  while (2)
  {
    if (v15 - *(v29 + 8) >= *(v29 + 10) || (v182 - *(v29 + 9)) >= *(v29 + 11))
    {
      v120 = v116;
      goto LABEL_226;
    }

    v120 = v29;
    if (!v116)
    {
LABEL_226:
      v29 = v29[1];
      v116 = v120;
      if (!v29)
      {
        goto LABEL_265;
      }

      continue;
    }

    break;
  }

  v121 = *(v116 + 12);
  v122 = *(v116 + 13);
  v123 = *(v116 + 14);
  if (v14)
  {
    v124 = v14 + v122 * v189 + v121;
    v125 = *v124 & 0x3FFFFFFF;
    LODWORD(v211) = 1;
    *(&v211 + 4) = v161;
    HIDWORD(v211) = v160;
    LODWORD(v212) = -1;
    *(&v212 + 4) = __PAIR64__(v162, v159);
    HIDWORD(v212) = v158;
    v213 = v211;
    v214 = v212;
    v126 = 4 * (v123 == 0);
    LOBYTE(v127) = v126;
    do
    {
      v127 = (v127 - 1) & 7;
      v128 = *(&v211 + v127);
    }

    while (v127 != v126 && (v124[v128] & 0x3FFFFFFF) != v125);
    if (v127 != v126)
    {
      v130 = &v124[v128];
      for (i = v124; ; i = v134)
      {
        do
        {
          v132 = v127 + 1;
          v133 = *(&v211 + v127 + 1);
          if (v127 > 0xD)
          {
            break;
          }

          ++v127;
        }

        while ((i[v133] & 0x3FFFFFFF) != v125);
        if (i == v118)
        {
          break;
        }

        v134 = &i[v133];
        if (i == v130 && v134 == v124)
        {
          v124 = v130;
          goto LABEL_246;
        }

        v127 = v132 & 7 ^ 4;
      }

      goto LABEL_265;
    }

LABEL_246:
    v120 = v29;
    if (v124 == v118)
    {
      goto LABEL_265;
    }

    goto LABEL_226;
  }

  v135 = v188 + v122 * v195 + v121;
  LODWORD(v211) = 1;
  *(&v211 + 4) = v168;
  HIDWORD(v211) = v167;
  LODWORD(v212) = -1;
  *(&v212 + 4) = __PAIR64__(v169, v166);
  HIDWORD(v212) = v165;
  v213 = v211;
  v214 = v212;
  v136 = 4 * (v123 == 0);
  LOBYTE(v137) = 4 * (v123 == 0);
  do
  {
    LODWORD(v137) = (v137 - 1) & 7;
    v138 = *(&v211 + v137);
    if (v135[v138])
    {
      v139 = 1;
    }

    else
    {
      v139 = v137 == v136;
    }
  }

  while (!v139);
  if (v137 == v136)
  {
LABEL_264:
    v120 = v29;
    if (v135 == v119)
    {
      goto LABEL_265;
    }

    goto LABEL_226;
  }

  v140 = &v135[v138];
  v141 = v135;
  while (1)
  {
    v137 = v137;
    do
    {
      v142 = v137;
      v143 = &v211 + 4 * v137++;
      v144 = *(v143 + 1);
    }

    while (v142 <= 0xD && !v141[v144]);
    if (v141 == v119)
    {
      break;
    }

    v145 = &v141[v144];
    LODWORD(v137) = v137 & 7 ^ 4;
    v23 = v141 == v140;
    v141 = v145;
    if (v23)
    {
      v141 = v145;
      if (v145 == v135)
      {
        v135 = v140;
        goto LABEL_264;
      }
    }
  }

LABEL_265:
  if (!v116)
  {
LABEL_295:
    v211 = 0uLL;
    qmemcpy(sub_1002A80E0(&v211, 13), "par_info != 0", 13);
    sub_1002A8980(-215, &v211, "cvFindNextContour", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1182);
  }

  v18 = v117;
  v146 = v116;
  if (*(v116 + 14) == v183)
  {
    if (v116[2])
    {
      v146 = v116[2];
    }

    else
    {
      v146 = v172;
    }
  }

  v177 = v146;
  if (!v146[3])
  {
    v28 = v15;
    v4 = v178;
    LODWORD(v16) = v182;
    goto LABEL_286;
  }

  v26 = 0;
  v192 = v25;
LABEL_81:
  v174 = v20;
  v175 = v19;
  v187 = v18;
  v179 = v5;
  sub_100231AF4(v1[1], (v1 + 6));
  v194 = sub_100231FEC(*(a1 + 96), *(a1 + 97), *(a1 + 98), *a1);
  if (v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x8000;
  }

  v194->i32[0] |= v30;
  if (!v26)
  {
    v207 = 0;
    sub_100236464(a1[3], 0, &v207);
    v164 = v207;
    if (v187)
    {
      v41 = *(v187 + v192);
      v42 = *(a1 + 108);
      v190 = *(a1 + 92);
      v43 = v187 + v21 - v183;
      v44 = *v43;
      LODWORD(v211) = 1;
      *(&v211 + 4) = v161;
      HIDWORD(v211) = v160;
      LODWORD(v212) = -1;
      *(&v212 + 4) = __PAIR64__(v162, v159);
      HIDWORD(v212) = v158;
      v213 = v211;
      v214 = v212;
      sub_100232B14(v194, v208);
      v47 = vadd_s32(v42, __PAIR64__(v179, v192));
      if (v190 <= 0)
      {
        v194[12] = v47;
      }

      v181 = v41 & 0x7F;
      v48 = v44 & 0x3FFFFFFF;
      v184 = v44 & 0x3FFFFFFF | 0x40000000;
      v201 = v44 | 0xC0000000;
      v49 = ~(v194->i32[0] >> 13) & 4;
      LOBYTE(v50) = v49;
      do
      {
        v50 = (v50 - 1) & 7;
        v51 = *(&v211 + v50);
      }

      while ((v43[v51] & 0x3FFFFFFF) != v48 && v50 != v49);
      if (v50 == v49)
      {
        *v43 = v201;
        if (v190 >= 1)
        {
          v53 = v209;
          if (v209 >= v210)
          {
            sub_100232E70(v208);
            v53 = v209;
          }

          *v53 = v47;
          ++v209;
        }

        *&v205 = v47;
      }

      else
      {
        v198 = &v43[v51];
        v78 = v50 ^ 4;
        v79 = v187 + v21 - v183;
        v80 = v47;
        *&v45 = v47;
        if (v190 < 1)
        {
          v205 = v45;
          while (1)
          {
            v106 = v50;
            do
            {
              v107 = v106;
              v108 = *(&v211 + ++v106);
            }

            while (v107 <= 0xD && (v79[v108] & 0x3FFFFFFF) != v48);
            v109 = v201;
            if ((v106 & 7) - 1 < v50 || (v109 = v184, *v79 == v48))
            {
              *v79 = v109;
            }

            v110 = v209;
            if (v209 >= v210)
            {
              sub_100232E70(v208);
              v110 = v209;
            }

            *v110 = v106 & 7;
            v209 = (v209 + 1);
            LODWORD(v45) = v78;
            v46.i32[0] = v106 & 7;
            v111 = vdup_lane_s32(vceq_s32(v46, *&v45), 0);
            *(&v112 + 1) = *(&v205 + 1);
            v47 = vbsl_s8(v111, v47, vbsl_s8(vcgt_s32(*&v205, v80), v47, vmax_s32(v80, v47)));
            v46 = vmin_s32(v80, *&v205);
            *&v112 = vbsl_s8(v111, *&v205, v46);
            v205 = v112;
            if (v79 == v198 && &v79[v108] == v43)
            {
              break;
            }

            *&v45 = *(&unk_1003E76B8 + (v106 & 7));
            v80 = vadd_s32(*&v45, v80);
            v50 = (v106 + 4) & 7;
            v78 = v106 & 7;
            v79 += v108;
          }
        }

        else
        {
          v205 = v45;
          while (1)
          {
            v81 = v50;
            do
            {
              v82 = v81;
              v83 = *(&v211 + ++v81);
            }

            while (v82 <= 0xD && (v79[v83] & 0x3FFFFFFF) != v48);
            v84 = v201;
            if ((v81 & 7) - 1 < v50 || (v84 = v184, *v79 == v48))
            {
              *v79 = v84;
            }

            if (v190 == 1 || (v81 & 7) != v78)
            {
              v85 = v209;
              if (v209 >= v210)
              {
                sub_100232E70(v208);
                v85 = v209;
              }

              *v85 = v80;
              ++v209;
            }

            LODWORD(v45) = v78;
            v46.i32[0] = v81 & 7;
            v86 = vdup_lane_s32(vceq_s32(v46, *&v45), 0);
            *(&v87 + 1) = *(&v205 + 1);
            v47 = vbsl_s8(v86, v47, vbsl_s8(vcgt_s32(*&v205, v80), v47, vmax_s32(v80, v47)));
            v46 = vmin_s32(v80, *&v205);
            *&v87 = vbsl_s8(v86, *&v205, v46);
            v205 = v87;
            if (v79 == v198 && &v79[v83] == v43)
            {
              break;
            }

            *&v45 = *(&unk_1003E76B8 + (v81 & 7));
            v80 = vadd_s32(*&v45, v80);
            v50 = (v81 + 4) & 7;
            v78 = v81 & 7;
            v79 += v83;
          }
        }
      }

      sub_100232D30(v208);
      v113 = vadd_s32(vsub_s32(v47, *&v205), 0x100000001);
      v68 = v194;
      if (v190)
      {
        *&v114 = v205;
        *(&v114 + 1) = v113;
        *v194[12].i8 = v114;
      }

      v64 = v164;
      v164[4] = v205;
      v164[5] = v113;
      v65 = a1;
      v66 = v183;
      v67 = v192;
      v115 = v181;
LABEL_277:
      v64[4] = vsub_s32(v64[4], *(v65 + 108));
      v64[1] = v163[v115];
      v163[v115] = v64;
      goto LABEL_278;
    }

    if (((v176 + 1) & 0x7F) != 0)
    {
      v69 = 0;
    }

    else
    {
      v69 = 3;
    }

    v70 = *(a1 + 27);
    v71 = *(a1 + 28);
    v197 = *(a1 + 92);
    LODWORD(v211) = 1;
    *(&v211 + 4) = v168;
    HIDWORD(v211) = v167;
    LODWORD(v212) = -1;
    *(&v212 + 4) = __PAIR64__(v169, v166);
    HIDWORD(v212) = v165;
    v213 = v211;
    v214 = v212;
    sub_100232B14(v194, v208);
    v203 = v70 + v192;
    v206 = v71 + v179;
    if (v197 <= 0)
    {
      v194[12].i32[0] = v203;
      v194[12].i32[1] = v206;
    }

    v156 = v69 + ((v176 + 1) & 0x7F);
    v72 = v178 + v21 - v183;
    v73 = ~(v194->i32[0] >> 13) & 4;
    LOBYTE(v74) = v73;
    do
    {
      v74 = (v74 - 1) & 7;
      v75 = *(&v211 + v74);
      if (v72[v75])
      {
        v76 = 1;
      }

      else
      {
        v76 = v74 == v73;
      }
    }

    while (!v76);
    if (v74 == v73)
    {
      *v72 = v176 | 0x80;
      if (v197 < 1)
      {
        v191 = v70 + v192;
        v185 = v71 + v179;
      }

      else
      {
        v77 = v209;
        if (v209 >= v210)
        {
          sub_100232E70(v208);
          v77 = v209;
        }

        *v77 = v203;
        v77[1] = v206;
        ++v209;
        v191 = v70 + v192;
        v185 = v71 + v179;
      }

LABEL_274:
      sub_100232D30(v208);
      v147 = v203 - v191 + 1;
      v148 = v185 - v206 + 1;
      v68 = v194;
      if (v197)
      {
        v194[12].i32[0] = v191;
        v194[12].i32[1] = v206;
        v194[13].i32[0] = v147;
        v194[13].i32[1] = v148;
      }

      v64 = v164;
      v164[4].i32[0] = v191;
      v164[4].i32[1] = v206;
      v115 = v176;
      v176 = v156;
      v164[5].i32[0] = v147;
      v164[5].i32[1] = v148;
      v65 = a1;
      v66 = v183;
      v67 = v192;
      goto LABEL_277;
    }

    v180 = &v72[v75];
    v88 = v74 ^ 4;
    v89 = v203;
    v191 = v203;
    v90 = v206;
    v185 = v206;
    while (2)
    {
      v91 = v74;
      do
      {
        v92 = v91;
        v93 = *(&v211 + ++v91);
      }

      while (v92 <= 0xD && !v72[v93]);
      v94 = v91 & 7;
      v95 = v176 | 0x80;
      if (v94 - 1 < v74 || (v95 = v176, *v72 == 1))
      {
        *v72 = v95;
      }

      if (v197 <= 0)
      {
        v98 = v209;
        if (v209 >= v210)
        {
          sub_100232E70(v208);
          v98 = v209;
        }

        *v98 = v94;
        v97 = 1;
LABEL_188:
        v209 = (v209 + v97);
      }

      else if (v197 == 1 || v94 != v88)
      {
        v96 = v209;
        if (v209 >= v210)
        {
          sub_100232E70(v208);
          v96 = v209;
        }

        *v96 = v89;
        v96[1] = v90;
        v97 = 8;
        goto LABEL_188;
      }

      if (v94 != v88)
      {
        v99 = v203;
        if (v89 <= v203)
        {
          v100 = v203;
        }

        else
        {
          v100 = v89;
        }

        v101 = v191;
        if (v89 >= v191)
        {
          v99 = v100;
        }

        v203 = v99;
        if (v89 < v191)
        {
          v101 = v89;
        }

        v191 = v101;
        v102 = v185;
        if (v90 <= v185)
        {
          v103 = v185;
        }

        else
        {
          v103 = v90;
        }

        v104 = v206;
        v105 = v90 < v206;
        if (v90 < v206)
        {
          v104 = v90;
        }

        v206 = v104;
        if (!v105)
        {
          v102 = v103;
        }

        v185 = v102;
      }

      if (v72 == v180 && &v72[v93] == v178 + v21 - v183)
      {
        goto LABEL_274;
      }

      v90 += *(&unk_1003E76B8 + 2 * (v91 & 7) + 1);
      v89 += *(&unk_1003E76B8 + 2 * (v91 & 7));
      v74 = v94 ^ 4;
      v72 += v93;
      v88 = v91 & 7;
      continue;
    }
  }

  v31 = *(a1 + 27);
  v32 = *(a1 + 28);
  v33 = *(a1 + 92);
  LODWORD(v211) = 1;
  *(&v211 + 4) = v168;
  HIDWORD(v211) = v167;
  LODWORD(v212) = -1;
  *(&v212 + 4) = __PAIR64__(v169, v166);
  HIDWORD(v212) = v165;
  v213 = v211;
  v214 = v212;
  sub_100232B14(v194, v208);
  v204 = v31 + v192;
  v34 = v32 + v179;
  if (v33 <= 0)
  {
    v194[12].i32[0] = v204;
    v194[12].i32[1] = v34;
  }

  v35 = v178 + v21 - v183;
  v36 = ~(v194->i32[0] >> 13) & 4;
  LOBYTE(v37) = v36;
  do
  {
    v37 = (v37 - 1) & 7;
    v38 = *(&v211 + v37);
    if (v35[v38])
    {
      v39 = 1;
    }

    else
    {
      v39 = v37 == v36;
    }
  }

  while (!v39);
  if (v37 != v36)
  {
    v202 = &v35[v38];
    v196 = v37 ^ 4;
    v54 = v178 + v21 - v183;
    while (1)
    {
      v56 = v37;
      do
      {
        v57 = v56;
        v58 = *(&v211 + ++v56);
      }

      while (v57 <= 0xD && !v54[v58]);
      v59 = v56 & 7;
      if (v59 - 1 < v37)
      {
        break;
      }

      if (*v54 == 1)
      {
        v60 = 2;
        goto LABEL_124;
      }

LABEL_125:
      if (v33 <= 0)
      {
        v63 = v209;
        if (v209 >= v210)
        {
          sub_100232E70(v208);
          v63 = v209;
        }

        *v63 = v59;
        v209 = (v209 + 1);
        v55 = &v54[v58];
        v37 = v59 ^ 4;
        v23 = v54 == v202;
        v54 += v58;
        if (v23)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v33 == 1 || v59 != v196)
        {
          v61 = v209;
          if (v209 >= v210)
          {
            sub_100232E70(v208);
            v61 = v209;
          }

          *v61 = v204;
          v61[1] = v34;
          ++v209;
          v196 = v56 & 7;
        }

        v62 = (&unk_1003E76B8 + 8 * (v56 & 7));
        v204 += *v62;
        v34 += v62[1];
        v55 = &v54[v58];
        v37 = v59 ^ 4;
        v23 = v54 == v202;
        v54 += v58;
        if (v23)
        {
LABEL_116:
          v54 = v55;
          if (v55 == v35)
          {
            goto LABEL_135;
          }
        }
      }
    }

    v60 = -126;
LABEL_124:
    *v54 = v60;
    goto LABEL_125;
  }

  *v35 = -126;
  if (v33 < 1)
  {
LABEL_135:
    sub_100232D30(v208);
    if (v33)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v40 = v209;
    if (v209 >= v210)
    {
      sub_100232E70(v208);
      v40 = v209;
    }

    *v40 = v204;
    v40[1] = v34;
    ++v209;
    sub_100232D30(v208);
LABEL_136:
    sub_10035CC70(v194, 1);
  }

  v64 = v157;
  v65 = a1;
  v66 = v183;
  v67 = v192;
  v68 = v194;
LABEL_278:
  v64[7].i32[0] = v66;
  v64[6] = (v193 | v67);
  v149 = v64;
  v64[2] = v177;
  v64[3] = v68;
  v150 = *(v65 + 93);
  if (*(v65 + 92) != v150)
  {
    v64[3] = sub_1002C8350(v68, *(v65 + 100), v65[1], v150);
    sub_100231A48(*a1);
    v65 = a1;
    v151 = v187;
    *(*&v149[3] + 24) = *(*&v149[2] + 24);
    if (*(*&v177 + 24))
    {
      goto LABEL_292;
    }

LABEL_282:
    v149[3] = 0;
    v152 = *v65;
    if (*v65 == v65[1])
    {
      sub_100231B80(v152, v65 + 6);
    }

    else
    {
      sub_100231A48(v152);
    }

    v4 = v178;
    v5 = v179;
    v22 = *(v178 + v21);
    v1 = a1;
    v6 = v171;
    v14 = v170;
    LODWORD(v16) = v182;
    v18 = v187;
    v20 = v174;
    v19 = v175;
    v28 = v192;
    goto LABEL_286;
  }

  v151 = v187;
  *(v68 + 24) = *(*&v177 + 24);
  if (!*(*&v177 + 24))
  {
    goto LABEL_282;
  }

LABEL_292:
  v154 = v151 == 0;
  sub_100231AF4(v65[1], (v65 + 8));
  a1[17] = v149;
  v155 = v183;
  if (v154)
  {
    v155 = 0;
  }

  *(a1 + 29) = v21 - v155 + 1;
  *(a1 + 30) = v179;
  *(a1 + 31) = v192;
  *(a1 + 32) = v182;
  a1[11] = v178;
  *(a1 + 33) = v176;
  return v149[3];
}

void sub_1002EDAC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002EDB28(void **a1)
{
  if (!a1)
  {
    v6 = 0;
    v7 = 0;
    sub_1002A8980(-27, &v6, "cvEndFindContours", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1328);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 17);
    if (v3)
    {
      if (*(v2 + 95))
      {
        sub_100231AF4(*(v2 + 1), &v6);
        if (v6 == *(v2 + 8) && v7 == *(v2 + 18))
        {
          sub_100231B80(*(v2 + 1), v2 + 6);
        }

        *(v2 + 95) = 0;
      }

      v4 = *(v3 + 24);
      if (v4)
      {
        sub_100237434(v4, *(*(v3 + 16) + 24), v2 + 272);
      }

      *(v2 + 17) = 0;
    }

    if (*v2 != *(v2 + 1))
    {
      sub_100231874(v2);
    }

    if (*(v2 + 2))
    {
      sub_100231874(v2 + 2);
    }

    v2 = *(v2 + 38);
    j__free(*a1);
    *a1 = 0;
  }

  return v2;
}

uint64_t sub_1002EDC4C(int *a1, uint64_t a2, void **a3, int a4, int a5, unsigned int a6, uint64_t a7, int a8)
{
  v101 = 0;
  if (!a3)
  {
    v105 = 0;
    v106 = 0;
    qmemcpy(sub_1002A80E0(&v105, 25), "NULL double CvSeq pointer", 25);
    sub_1002A8980(-27, &v105, "cvFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1817);
  }

  *a3 = 0;
  if (a6 == 5)
  {
    if (a7)
    {
      v105 = 0;
      v106 = 0;
      qmemcpy(sub_1002A80E0(&v105, 51), "Nonzero offset is not supported in CV_LINK_RUNS yet", 51);
      sub_1002A8980(-211, &v105, "cvFindContours_Impl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1825);
    }

    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    if (!a2)
    {
      v103 = 0;
      v104 = 0;
      v9 = sub_1002A80E0(&v103, 20);
      *(v9 + 16) = 1919251566;
      *v9 = *"NULL storage pointer";
      sub_1002A8980(-27, &v103, "icvFindContoursInInterval", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1508);
    }

    if (a4 <= 127)
    {
      v103 = 0;
      v104 = 0;
      qmemcpy(sub_1002A80E0(&v103, 48), "Contour header size must be >= sizeof(CvContour)", 48);
      sub_1002A8980(-201, &v103, "icvFindContoursInInterval", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1514);
    }

    sub_1002317F4(a2);
    if (v10)
    {
      operator new();
    }

    v121 = 0;
    v122 = 0;
    sub_1002317F4(a2);
    if (v12)
    {
      operator new();
    }

    v119 = 0;
    v120 = 0;
    v13 = sub_1001FD9EC(a1, &v103, 0, 0);
    if ((*v13 & 0xFFE) != 0)
    {
      v102[0] = 0;
      v102[1] = 0;
      qmemcpy(sub_1002A80E0(v102, 32), "Input array must be 8uC1 or 8sC1", 32);
      sub_1002A8980(-5, v102, "icvFindContoursInInterval", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1525);
    }

    v14 = *(v13 + 24);
    v99 = *(v13 + 4);
    v15 = *(v13 + 36);
    v92 = *(v13 + 32);
    v98 = sub_100231FEC(0, 0x60uLL, 0x18uLL, 0);
    sub_100232B14(v98, &v109);
    sub_100232BC0(0, 96, 8, 0, v116);
    sub_100232BC0(0, 96, 8, 0, v113);
    v16 = v111;
    if (v111 >= v112)
    {
      sub_100232E70(&v109);
      v16 = v111;
    }

    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v17 = v111 + 3;
    v111 = v17;
    v18 = v17 - *(v110 + 44);
    v19 = v18;
    if (v15 >= 1)
    {
      v20 = 0;
      v19 = v17 - *(v110 + 44);
      do
      {
        v21 = (v14 + v20);
        v22 = v20 + 1;
        while (!*v21++)
        {
          ++v20;
          ++v22;
          if (v15 == v20)
          {
            goto LABEL_42;
          }
        }

        if (v15 == v20)
        {
          break;
        }

        v24 = v111;
        if (v111 >= v112)
        {
          sub_100232E70(&v109);
          v24 = v111;
        }

        *v24 = 0;
        v24[1] = 0;
        *(v24 + 4) = v20;
        *(v24 + 5) = 0;
        v25 = v111 + 3;
        v111 = v25;
        v26 = (v25 - *(v110 + 44));
        *(v19 + 1) = v26;
        if (v15 <= ++v20)
        {
LABEL_35:
          if (v25 < v112)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v27 = (v14 + v22);
          while (*v27++)
          {
            if (v15 == ++v22)
            {
              v20 = v15;
              goto LABEL_35;
            }
          }

          v20 = v22;
          if (v25 < v112)
          {
            goto LABEL_39;
          }
        }

        sub_100232E70(&v109);
        v25 = v111;
LABEL_39:
        *v25 = 0;
        v25[1] = 0;
        *(v25 + 4) = v20 - 1;
        *(v25 + 5) = 0;
        v111 += 3;
        v29 = v111 - *(v110 + 44);
        *v26 = v29;
        v26[1] = v29;
        v30 = v117;
        if (v117 >= v118)
        {
          sub_100232E70(v116);
          v30 = v117;
        }

        *v30 = v26;
        ++v117;
        v19 = v26[1];
      }

      while (v20 < v15);
    }

LABEL_42:
    sub_100232C74(&v109);
    v31 = *(v18 + 1);
    v32 = v98[10] - 1;
    *(v19 + 1) = 0;
    if (v92 > 1)
    {
      v33 = 0;
      v100 = 1;
      while (1)
      {
        v34 = v31;
        v35 = v19;
        v96 = v98[10];
        if (v15 >= 1)
        {
          v36 = 0;
          do
          {
            v37 = v99 + v36;
            v38 = v36 + 1;
            while (!*(v14 + v37))
            {
              ++v36;
              ++v37;
              ++v38;
              if (v15 == v36)
              {
                goto LABEL_64;
              }
            }

            if (v15 == v36)
            {
              break;
            }

            v39 = v111;
            if (v111 >= v112)
            {
              sub_100232E70(&v109);
              v39 = v111;
            }

            *v39 = 0;
            v39[1] = 0;
            *(v39 + 4) = v36;
            *(v39 + 5) = v100;
            v40 = v111 + 3;
            v111 = v40;
            v41 = v40 - *(v110 + 44);
            *(v19 + 1) = v41;
            if (v15 <= ++v36)
            {
LABEL_59:
              if (v40 < v112)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v42 = v99 + v38;
              while (*(v14 + v42))
              {
                ++v38;
                ++v42;
                if (v15 == v38)
                {
                  v36 = v15;
                  goto LABEL_59;
                }
              }

              v36 = v38;
              if (v40 < v112)
              {
                goto LABEL_63;
              }
            }

            sub_100232E70(&v109);
            v40 = v111;
LABEL_63:
            *v40 = 0;
            v40[1] = 0;
            *(v40 + 4) = v36 - 1;
            *(v40 + 5) = v100;
            v111 += 3;
            v19 = v111 - *(v110 + 44);
            *(v41 + 8) = v19;
          }

          while (v36 < v15);
        }

LABEL_64:
        sub_100232C74(&v109);
        v31 = *(v35 + 1);
        v43 = v98[10] - v96;
        v97 = v19;
        *(v19 + 1) = 0;
        v44 = v32 / 2;
        v45 = v43 / 2;
        v95 = v43;
        if (v32 < 2 || v43 < 2)
        {
          v47 = 0;
          v46 = 0;
          v48 = 0;
          v49 = v31;
          if (v43 <= 1)
          {
            goto LABEL_114;
          }

LABEL_110:
          *v49 = *(v49 + 8);
          v66 = v117;
          if (v117 >= v118)
          {
            sub_100232E70(v116);
            v66 = v117;
          }

          *v66 = v49;
          ++v117;
          v62 = *(v49 + 8);
          if (v47 + 1 == v45)
          {
            goto LABEL_113;
          }

LABEL_105:
          v63 = v117;
          v64 = ~v47 + v45;
          do
          {
            v65 = *(v62 + 8);
            *v65 = v65[1];
            if (v63 >= v118)
            {
              sub_100232E70(v116);
              v63 = v117;
            }

            *v63 = v65;
            v63 = ++v117;
            v62 = v65[1];
            --v64;
          }

          while (v64);
          v48 = 0;
          if (v46 < v44)
          {
            goto LABEL_115;
          }

          goto LABEL_44;
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = v31;
        do
        {
          if (v48 == -1)
          {
            v52 = *(v34 + 8);
            if (*(v49 + 16) <= *(v52 + 16) + 1)
            {
              v60 = v114;
              if (v114 >= v115)
              {
                sub_100232E70(v113);
                v60 = v114;
              }

              *v60 = v49;
              ++v114;
              *v49 = v33;
              v33 = *(v49 + 8);
              v50 = *(v34 + 8);
              if (*(v33 + 16) >= *(v50 + 16))
              {
                ++v46;
                v34 = *(v50 + 8);
                v48 = 1;
LABEL_100:
                v33 = v50;
                if (v46 >= v44)
                {
                  break;
                }

                continue;
              }

              ++v47;
              v49 = *(v33 + 8);
              v48 = -1;
              if (v46 >= v44)
              {
                break;
              }
            }

            else
            {
              v48 = 0;
              *v52 = v33;
              ++v46;
              v34 = *(v52 + 8);
              if (v46 >= v44)
              {
                break;
              }
            }

            continue;
          }

          if (v48 == 1)
          {
            v50 = *(v49 + 8);
            v51 = *(v50 + 16);
            if (*(v34 + 16) <= v51 + 1)
            {
              *v33 = v34;
              v33 = *(v34 + 8);
              if (*(v33 + 16) >= v51)
              {
                ++v47;
                v49 = *(v50 + 8);
                v48 = -1;
                goto LABEL_100;
              }

              ++v46;
              v34 = *(v33 + 8);
              v48 = 1;
              if (v46 >= v44)
              {
                break;
              }
            }

            else
            {
              v48 = 0;
              *v33 = v50;
              ++v47;
              v49 = *(v50 + 8);
              if (v46 >= v44)
              {
                break;
              }
            }

            continue;
          }

          v53 = *(v34 + 8);
          v54 = *(v53 + 16);
          v55 = *(v49 + 8);
          v56 = *(v55 + 16);
          if (v54 < v56)
          {
            v57 = *(v49 + 16) - 1;
            v58 = v54 < v57;
            v48 = v54 >= v57;
            if (v58)
            {
              v59 = *(v34 + 8);
            }

            else
            {
              v59 = v49;
            }

            if (!v58)
            {
              v33 = *(v34 + 8);
            }

            *v59 = v34;
            ++v46;
            v34 = *(v53 + 8);
            if (v46 >= v44)
            {
              break;
            }

            continue;
          }

          if (*(v34 + 16) <= v56 + 1)
          {
            *v49 = v34;
            v48 = -1;
            v33 = v55;
            ++v47;
            v49 = *(v55 + 8);
            if (v46 >= v44)
            {
              break;
            }

            continue;
          }

          *v49 = v55;
          v61 = v117;
          if (v117 >= v118)
          {
            sub_100232E70(v116);
            v61 = v117;
          }

          v48 = 0;
          *v61 = v49;
          ++v117;
          ++v47;
          v49 = *(*(v49 + 8) + 8);
          if (v46 >= v44)
          {
            break;
          }
        }

        while (v47 < v45);
        if (v47 >= v45)
        {
          goto LABEL_114;
        }

        if (!v48)
        {
          goto LABEL_110;
        }

        v62 = *(v49 + 8);
        *v33 = v62;
        if (v47 + 1 != v45)
        {
          goto LABEL_105;
        }

LABEL_113:
        v48 = 0;
LABEL_114:
        if (v46 < v44)
        {
LABEL_115:
          v67 = *(v34 + 8);
          if (v48)
          {
            v68 = v33;
          }

          else
          {
            v68 = v34;
          }

          *v67 = v68;
          if (v46 + 1 != v44)
          {
            v69 = ~v46 + v44;
            do
            {
              v70 = v67[1];
              v67 = *(v70 + 8);
              *v67 = v70;
              --v69;
            }

            while (v69);
          }
        }

LABEL_44:
        v14 += v99;
        ++v100;
        v19 = v97;
        v32 = v95;
        if (v100 == v92)
        {
          goto LABEL_125;
        }
      }
    }

    v45 = v32 / 2;
LABEL_125:
    if (v32 >= 2)
    {
      do
      {
        v71 = *(v31 + 8);
        *v71 = v31;
        v31 = v71[1];
        --v45;
      }

      while (v45);
    }

    v72 = sub_100232D30(v116);
    v73 = sub_100232D30(v113);
    sub_100232554(v72, &v105, 0);
    if (*(v72 + 40) < 1)
    {
      v77 = 0;
      v75 = 0;
      v74 = 0;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      do
      {
        v78 = *v107++;
        if (v107 >= v108)
        {
          sub_10023323C(&v105, 1);
        }

        if (*v78)
        {
          sub_100232BC0(0x500Cu, a4, 8, a2, &v109);
          v79 = v111;
          v80 = v78;
          do
          {
            if (v79 >= v112)
            {
              sub_100232E70(&v109);
              v79 = v111;
            }

            *v79 = v80[2];
            v79 = ++v111;
            v81 = *v80;
            *v80 = 0;
            v80 = v81;
          }

          while (v81 != v78);
          v77 = sub_100232D30(&v109);
          sub_10035CC70(v77, 1);
          if (v75)
          {
            *(v77 + 8) = v76;
            *(v76 + 16) = v77;
          }

          else
          {
            v75 = v77;
          }
        }

        else
        {
          v77 = v76;
        }

        ++v74;
        v76 = v77;
      }

      while (v74 < *(v72 + 40));
    }

    sub_100232554(v73, &v105, 0);
    if (*(v73 + 40) >= 1)
    {
      v82 = 0;
      do
      {
        v84 = *v107++;
        if (v107 >= v108)
        {
          sub_10023323C(&v105, 1);
        }

        if (*v84)
        {
          sub_100232BC0(0x500Cu, a4, 8, a2, &v109);
          v85 = v111;
          v86 = v84;
          do
          {
            if (v85 >= v112)
            {
              sub_100232E70(&v109);
              v85 = v111;
            }

            *v85 = v86[2];
            v85 = ++v111;
            v87 = *v86;
            *v86 = 0;
            v86 = v87;
          }

          while (v87 != v84);
          v83 = sub_100232D30(&v109);
          sub_10035CC70(v83, 1);
          *v83 |= 0x8000u;
          if (v75)
          {
            *(v83 + 8) = v77;
            *(v77 + 16) = v83;
          }

          else
          {
            v75 = v83;
          }
        }

        else
        {
          v83 = v77;
        }

        ++v82;
        ++v74;
        v77 = v83;
      }

      while (v82 < *(v73 + 40));
    }

    *a3 = v75;
    v88 = v119;
    if (v119 && atomic_fetch_add((v119 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v88 + 16))(v88);
    }

    v89 = v121;
    if (v121 && atomic_fetch_add((v121 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v89 + 16))(v89);
    }

    if (v75)
    {
      return v74;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v101 = sub_1002EBFDC(a1, a2, a4, a5, a6, a7, a8);
    LODWORD(v11) = -1;
    do
    {
      v11 = (v11 + 1);
    }

    while (sub_1002EC760(v101));
    *a3 = sub_1002EDB28(&v101);
  }

  return v11;
}

void sub_1002EE98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002A8124(va);
  sub_1002EF3F4(v20 - 120);
  sub_1002EF3F4(v20 - 104);
  _Unwind_Resume(a1);
}

void sub_1002EEA8C(uint64_t a1, int *a2, uint64_t a3, int a4, unsigned int a5, _DWORD *a6)
{
  sub_1002ACE7C(v75, &off_1004787E0);
  if (sub_100271148(a2) != 0x40000 && sub_100271148(a2) != 327680 && sub_100271148(a2) != 720896)
  {
    *v71 = 0;
    *&v71[8] = 0;
    qmemcpy(sub_1002A80E0(v71, 155), "(_contours.kind() == _InputArray::STD_VECTOR_VECTOR || _contours.kind() == _InputArray::STD_VECTOR_MAT || _contours.kind() == _InputArray::STD_VECTOR_UMAT)", 155);
    sub_1002A8980(-215, v71, "findContours", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1892);
  }

  if (!sub_1002743D4(a2) && (sub_1002743B4(a2, -1) != 2 || sub_100274398(a2, -1) != 4))
  {
    *v71 = 0;
    *&v71[8] = 0;
    qmemcpy(sub_1002A80E0(v71, 74), "_contours.empty() || (_contours.channels() == 2 && _contours.depth() == 4)", 74);
    sub_1002A8980(-215, v71, "findContours", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1894);
  }

  *v71 = 1124007936;
  memset(&v71[4], 0, 60);
  v72 = &v71[8];
  v73 = v74;
  v74[0] = 0;
  v74[1] = 0;
  LODWORD(v57) = 33619968;
  *(&v57 + 1) = v71;
  *&v58 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_10022FB6C(a1, &v57, 1, 1, 1, 1, 16, &v50);
  sub_100231744(0);
  if (v12)
  {
    operator new();
  }

  v69 = 0;
  v70 = 0;
  v66 = *&v71[16];
  v13 = *&v71[12];
  if (*&v71[4] == 1)
  {
    v13 = 1;
  }

  v64 = 0;
  v65 = 0;
  v67 = *&v71[8];
  v68 = v13;
  v14 = *v73;
  v63[0] = *v71 & 0x4FFF | 0x42420000;
  v63[1] = v14;
  v62 = 0;
  if (sub_1002769C0(a3))
  {
    sub_10027689C(a3);
  }

  sub_1002EDC4C(v63, 0, &v62, 128, a4, a5, (*a6 - 1) | ((a6[1] - 1) << 32), 0);
  if (!v62)
  {
    sub_10027689C(a2);
    goto LABEL_76;
  }

  v15 = sub_1002370E0(v62, 96, 0);
  v16 = v15;
  if (v15)
  {
    if (v15[11] != 8)
    {
      v50 = 0uLL;
      qmemcpy(sub_1002A80E0(&v50, 39), "!_seq || _seq->elem_size == sizeof(_Tp)", 39);
      sub_1002A8980(-215, &v50, "Seq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/core_c.h", 2974);
    }

    v17 = v15[10];
  }

  else
  {
    v17 = 0;
  }

  sub_100275A84(a2, v17, 1, 0, -1, 1, 0);
  sub_100232554(v16, &v57, 0);
  v48 = a3;
  v61 = 0;
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      v20 = **(&v58 + 1);
      *(v20 + 112) = v18;
      sub_100275A84(a2, *(v20 + 40), 1, 12, v18, 1, 0);
      sub_100271148(a2);
      sub_1002703C0(a2, v18, &v50);
      if ((BYTE1(v50) & 0x40) == 0)
      {
        v49[0] = 0;
        v49[1] = 0;
        v21 = sub_1002A80E0(v49, 17);
        *(v21 + 16) = 41;
        *v21 = *"ci.isContinuous()";
        sub_1002A8980(-215, v49, "findContours", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/contours.cpp", 1919);
      }

      sub_1002323E4(v20, v51, 0x3FFFFFFF00000000);
      if (*(&v53 + 1) && atomic_fetch_add((*(&v53 + 1) + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v50);
      }

      *(&v53 + 1) = 0;
      v51 = 0u;
      v52 = 0u;
      if (SDWORD1(v50) >= 1)
      {
        v22 = 0;
        v23 = v54;
        do
        {
          *&v23[4 * v22++] = 0;
        }

        while (v22 < SDWORD1(v50));
      }

      if (v55 != v56)
      {
        j__free(v55);
      }

      *(&v58 + 1) += 8;
      if (*(&v58 + 1) >= *(&v59 + 1))
      {
        sub_10023323C(&v57, 1);
      }

      v18 = (v18 + 1);
      if (v61 + 1 < 2 * *(*(&v57 + 1) + 40))
      {
        v19 = v61 + 1;
      }

      else
      {
        v19 = 0;
      }

      v61 = v19;
    }

    while (v18 != v17);
  }

  if (sub_1002769C0(v48))
  {
    sub_100275A84(v48, 1, v17, 28, -1, 1, 0);
    if (sub_100271148(v48) != 0x10000)
    {
      sub_1002703C0(v48, 0xFFFFFFFFLL, &v50);
      goto LABEL_48;
    }

    v24 = *(v48 + 8);
    v25 = *v24;
    v26 = *(v24 + 16);
    v50 = *v24;
    v51 = v26;
    v52 = *(v24 + 32);
    v27 = *(v24 + 56);
    *&v53 = *(v24 + 48);
    *(&v53 + 1) = v27;
    v54 = &v50 + 8;
    v55 = v56;
    v56[0] = 0;
    v56[1] = 0;
    if (v27)
    {
      atomic_fetch_add((v27 + 20), 1u);
      if (*(v24 + 4) <= 2)
      {
LABEL_44:
        v28 = *(v24 + 72);
        v29 = v55;
        *v55 = *v28;
        v29[1] = v28[1];
LABEL_48:
        v30 = v51;
        if (*(&v53 + 1) && atomic_fetch_add((*(&v53 + 1) + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v50);
        }

        *(&v53 + 1) = 0;
        v51 = 0u;
        v52 = 0u;
        if (SDWORD1(v50) >= 1)
        {
          v31 = 0;
          v32 = v54;
          do
          {
            *&v32[4 * v31++] = 0;
          }

          while (v31 < SDWORD1(v50));
        }

        if (v55 != v56)
        {
          j__free(v55);
        }

        sub_100232554(v16, &v50, 0);
        v59 = v52;
        v60 = v53;
        v61 = 0;
        v57 = v50;
        v58 = v51;
        if (v17 >= 1)
        {
          v33 = v17;
          v34 = (v30 + 8);
          while (1)
          {
            v36 = **(&v58 + 1);
            v37 = *(**(&v58 + 1) + 16);
            if (v37)
            {
              v38 = *(v37 + 112);
              v39 = v36[1];
              if (v39)
              {
                goto LABEL_64;
              }
            }

            else
            {
              v38 = -1;
              v39 = v36[1];
              if (v39)
              {
LABEL_64:
                v40 = *(v39 + 112);
                v41 = v36[4];
                if (v41)
                {
                  goto LABEL_65;
                }

                goto LABEL_69;
              }
            }

            v40 = -1;
            v41 = v36[4];
            if (v41)
            {
LABEL_65:
              v42 = *(v41 + 112);
              v43 = v36[3];
              if (!v43)
              {
                goto LABEL_70;
              }

              goto LABEL_66;
            }

LABEL_69:
            v42 = -1;
            v43 = v36[3];
            if (!v43)
            {
LABEL_70:
              v44 = -1;
              goto LABEL_71;
            }

LABEL_66:
            v44 = *(v43 + 112);
LABEL_71:
            *(v34 - 2) = v38;
            *(v34 - 1) = v40;
            *v34 = v42;
            v34[1] = v44;
            *(&v58 + 1) += 8;
            if (*(&v58 + 1) >= *(&v59 + 1))
            {
              sub_10023323C(&v57, 1);
            }

            if (v61 + 1 < 2 * *(*(&v57 + 1) + 40))
            {
              v35 = v61 + 1;
            }

            else
            {
              v35 = 0;
            }

            v61 = v35;
            v34 += 4;
            if (!--v33)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else if (SDWORD1(v25) <= 2)
    {
      goto LABEL_44;
    }

    DWORD1(v50) = 0;
    sub_100269B58(&v50, v24);
    goto LABEL_48;
  }

LABEL_73:
  v45 = v69;
  if (v69 && atomic_fetch_add((v69 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v45 + 16))(v45);
  }

LABEL_76:
  if (*&v71[56] && atomic_fetch_add((*&v71[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v71);
  }

  *&v71[56] = 0;
  memset(&v71[16], 0, 32);
  if (*&v71[4] >= 1)
  {
    v46 = 0;
    v47 = v72;
    do
    {
      *&v47[4 * v46++] = 0;
    }

    while (v46 < *&v71[4]);
  }

  if (v73 != v74)
  {
    j__free(v73);
  }

  if (v75[2])
  {
    sub_1002ACC1C(v75);
  }
}

void sub_1002EF2D8(_Unwind_Exception *a1)
{
  sub_1002A8124((v1 - 208));
  sub_1001D8BF4(v1 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EF3F4(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_1002EF464(uint64_t a1, int *a2, int a3, unsigned int a4, uint64_t *a5)
{
  sub_1002ACE7C(v12, &off_100478800);
  v10 = sub_100276DA4();
  v11 = *a5;
  sub_1002EEA8C(a1, a2, v10, a3, a4, &v11);
  if (v12[2])
  {
    sub_1002ACC1C(v12);
  }
}

void sub_1002EF4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EF524(uint64_t *a1)
{
  sub_1001FF66C((a1 + 3), a1[2]);
  v2 = *(*a1 + 8);

  return v2(a1);
}

void sub_1002EF584(uint64_t a1, uint64_t a2, int a3, BOOL a4)
{
  sub_1002ACE7C(v122, &off_100478860);
  if (*(a1 + 8) == *(a2 + 8))
  {
    v112 = 0;
    v111 = 0;
    qmemcpy(sub_1002A80E0(&v111, 34), "_points.getObj() != _hull.getObj()", 34);
    sub_1002A8980(-215, &v111, "convexHull", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/convhull.cpp", 133);
  }

  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v114);
    goto LABEL_10;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = *(v7 + 16);
  v114 = *v7;
  v115 = v9;
  v116 = *(v7 + 32);
  v10 = *(v7 + 56);
  v117 = *(v7 + 48);
  v118 = v10;
  v119 = &v114 + 8;
  v120 = v121;
  v121[0] = 0;
  v121[1] = 0;
  if (!v10)
  {
    if (SDWORD1(v8) <= 2)
    {
      goto LABEL_6;
    }

LABEL_9:
    DWORD1(v114) = 0;
    sub_100269B58(&v114, v7);
    goto LABEL_10;
  }

  atomic_fetch_add((v10 + 20), 1u);
  if (*(v7 + 4) > 2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = *(v7 + 72);
  v12 = v120;
  *v120 = *v11;
  v12[1] = v11[1];
LABEL_10:
  v13 = sub_10026F620(&v114, 2, -1, 1);
  v14 = v13;
  v15 = v114;
  if (v13 < 0 || (v114 & 6) != 4)
  {
    v112 = 0;
    v111 = 0;
    qmemcpy(sub_1002A80E0(&v111, 40), "total >= 0 && (depth == 5 || depth == 4)", 40);
    sub_1002A8980(-215, &v111, "convexHull", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/convhull.cpp", 137);
  }

  if (!v13)
  {
    sub_100274CEC(a2);
    goto LABEL_142;
  }

  if (sub_100275364(a2))
  {
    a4 = sub_100271A88(a2, -1) != 4;
  }

  v111 = v113;
  v112 = v14;
  if (v14 > 0x88)
  {
    operator new[]();
  }

  v108 = v110;
  v109 = (v14 + 2);
  v17 = v107;
  v105 = v107;
  v106 = v14;
  v18 = v111;
  v19 = v115;
  if ((BYTE1(v114) & 0x40) == 0)
  {
    v97 = 0uLL;
    qmemcpy(sub_1002A80E0(&v97, 21), "points.isContinuous()", 21);
    sub_1002A8980(-215, &v97, "convexHull", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/convhull.cpp", 156);
  }

  v20 = v15 & 7;
  if (v14 >= 1)
  {
    if (v14 < 4)
    {
      v21 = 0;
LABEL_27:
      v28 = (v18 + 8 * v21);
      v29 = v19 + 8 * v21;
      v30 = v14 - v21;
      do
      {
        *v28++ = v29;
        v29 += 8;
        --v30;
      }

      while (v30);
      goto LABEL_29;
    }

    v21 = v14 & 0x7FFFFFFC;
    v16 = xmmword_1003E0C50;
    v22 = v111 + 1;
    v23 = vdupq_n_s64(v115);
    v24 = vdupq_n_s64(0x10uLL);
    v25 = vdupq_n_s64(4uLL);
    v26 = v21;
    do
    {
      v27 = vaddq_s64(v23, vshlq_n_s64(v16, 3uLL));
      v22[-1] = v27;
      *v22 = vaddq_s64(v27, v24);
      v16 = vaddq_s64(v16, v25);
      v22 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v21 != v14)
    {
      goto LABEL_27;
    }
  }

LABEL_29:
  v31 = (v18 + 8 * v14);
  v32 = 126 - 2 * __clz(v14);
  *v94 = a2;
  v93 = a4;
  if (v20 == 5)
  {
    sub_1002F1BC4(v18, v31, &v97, v32, 1, v16);
    if (v14 >= 2)
    {
      v33 = 0;
      v34 = 0;
      for (i = 1; i != v14; ++i)
      {
        v36 = *(*(v18 + 8 * i) + 4);
        if (*(*(v18 + 8 * v33) + 4) > v36)
        {
          v33 = i;
        }

        if (*(*(v18 + 8 * v34) + 4) < v36)
        {
          v34 = i;
        }
      }

      goto LABEL_47;
    }

LABEL_46:
    v34 = 0;
    v33 = 0;
    goto LABEL_47;
  }

  sub_1002F05A4(v18, v31, &v97, v32, 1);
  if (v14 < 2)
  {
    goto LABEL_46;
  }

  v33 = 0;
  v34 = 0;
  for (j = 1; j != v14; ++j)
  {
    v38 = *(*(v18 + 8 * j) + 4);
    if (*(*(v18 + 8 * v33) + 4) > v38)
    {
      v33 = j;
    }

    if (*(*(v18 + 8 * v34) + 4) < v38)
    {
      v34 = j;
    }
  }

LABEL_47:
  v39 = v14 - 1;
  v40 = *(v18 + 8 * v39);
  if (**v18 == *v40 && *(*v18 + 4) == v40[1])
  {
    v107[0] = 0;
    v41 = 1;
    v42 = *v94;
    v43 = v93;
    goto LABEL_99;
  }

  v95 = v20;
  if (v20 == 5)
  {
    v44 = sub_1002F0440(v18, 0, v34, v110, -1, 1);
    v45 = &v110[v44];
    v46 = sub_1002F0440(v18, v14 - 1, v34, v45, -1, -1);
    if ((a3 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    v47 = v110;
    v48 = v44;
    v44 = v46;
    if (v48 < 2)
    {
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  v44 = sub_1002F02E4(v18, 0, v34, v110, -1, 1);
  v45 = &v110[v44];
  v46 = sub_1002F02E4(v18, v14 - 1, v34, v45, -1, -1);
  if (a3)
  {
    goto LABEL_55;
  }

LABEL_52:
  v47 = v45;
  v48 = v46;
  v45 = v110;
  if (v46 < 2)
  {
LABEL_53:
    v41 = 0;
    goto LABEL_58;
  }

LABEL_56:
  v41 = (v48 - 1);
  v49 = v41;
  v50 = v47;
  v51 = v107;
  do
  {
    v52 = *v50++;
    *v51++ = (*(v18 + 8 * v52) - v19) >> 3;
    --v49;
  }

  while (v49);
LABEL_58:
  if (v44 < 2)
  {
    goto LABEL_62;
  }

  v53 = &v107[v41];
  v54 = v44 + 1;
  v55 = &v45[v44 - 1];
  do
  {
    v56 = *v55--;
    *v53++ = (*(v18 + 8 * v56) - v19) >> 3;
    v41 = (v41 + 1);
    --v54;
  }

  while (v54 > 2);
  if (v44 == 2)
  {
LABEL_62:
    if (v48 <= 2)
    {
      v57 = -1;
      v58 = v18;
      if (v95 != 5)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v57 = v47[v48 - 2];
      v58 = v18;
      if (v95 != 5)
      {
LABEL_64:
        v59 = sub_1002F02E4(v58, 0, v33, v110, 1, -1);
        v60 = &v110[v59];
        v61 = sub_1002F02E4(v18, v39, v33, v60, 1, 1);
        goto LABEL_67;
      }
    }
  }

  else
  {
    v57 = v45[1];
    v58 = v18;
    if (v95 != 5)
    {
      goto LABEL_64;
    }
  }

  v59 = sub_1002F0440(v58, 0, v33, v110, 1, -1);
  v60 = &v110[v59];
  v61 = sub_1002F0440(v18, v39, v33, v60, 1, 1);
LABEL_67:
  if (a3)
  {
    v62 = v60;
  }

  else
  {
    v62 = v110;
  }

  if (a3)
  {
    v63 = v61;
  }

  else
  {
    v63 = v59;
  }

  if (a3)
  {
    v64 = v110;
  }

  else
  {
    v64 = v60;
  }

  if (a3)
  {
    v65 = v59;
  }

  else
  {
    v65 = v61;
  }

  v42 = *v94;
  v43 = v93;
  if ((v57 & 0x80000000) != 0)
  {
    v20 = v95;
  }

  else
  {
    v20 = v95;
    if (v63 < 3)
    {
      if (v61 + v59 <= 2)
      {
        goto LABEL_93;
      }

      v66 = v64[2 - v63];
      if (v66 == v57)
      {
LABEL_89:
        if (v63 >= 2)
        {
          v63 = 2;
        }

        if (v65 >= 2)
        {
          v65 = 2;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v66 = v62[1];
      if (v66 == v57)
      {
        goto LABEL_89;
      }
    }

    if ((v66 & 0x80000000) == 0)
    {
      v67 = *(v18 + 8 * v66);
      v68 = *(v18 + 8 * v57);
      if (*v67 == *v68 && v67[1] == v68[1])
      {
        goto LABEL_89;
      }
    }
  }

LABEL_93:
  if (v63 >= 2)
  {
    v69 = (v63 - 1);
    v70 = &v107[v41];
    v41 = (v69 + v41);
    do
    {
      v71 = *v62++;
      *v70++ = (*(v18 + 8 * v71) - v19) >> 3;
      --v69;
    }

    while (v69);
  }

  if (v65 >= 2)
  {
    v72 = &v107[v41];
    v73 = v65 + 1;
    v74 = &v64[v65 - 1];
    do
    {
      v75 = *v74--;
      *v72++ = (*(v18 + 8 * v75) - v19) >> 3;
      v41 = (v41 + 1);
      --v73;
    }

    while (v73 > 2);
  }

LABEL_99:
  if (v43)
  {
    sub_100275A84(v42, v41, 1, v20 | 8u, -1, 0, 0);
    if (sub_100271148(v42) == 0x10000)
    {
      v76 = *(v42 + 8);
      v77 = *v76;
      v78 = *(v76 + 16);
      v97 = *v76;
      v98 = v78;
      v99 = *(v76 + 32);
      v79 = *(v76 + 56);
      v100 = *(v76 + 48);
      v101 = v79;
      v102 = &v97 + 8;
      v103 = &v104;
      v104 = 0uLL;
      if (v79)
      {
        atomic_fetch_add((v79 + 20), 1u);
        if (*(v76 + 4) <= 2)
        {
LABEL_103:
          v80 = *(v76 + 72);
          v81 = v103;
          *v103 = *v80;
          v81[1] = v80[1];
          goto LABEL_117;
        }
      }

      else if (SDWORD1(v77) <= 2)
      {
        goto LABEL_103;
      }

      DWORD1(v97) = 0;
      sub_100269B58(&v97, v76);
    }

    else
    {
      sub_1002703C0(v42, 0xFFFFFFFFLL, &v97);
    }

LABEL_117:
    if ((BYTE1(v97) & 0x40) != 0)
    {
      v85 = 8;
      if (v41 < 1)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v85 = *v103;
      if (v41 < 1)
      {
        goto LABEL_123;
      }
    }

    v86 = v98;
    v87 = v41;
    do
    {
      v88 = *v17++;
      *v86 = *(v19 + 8 * v88);
      v86 = (v86 + v85);
      --v87;
    }

    while (v87);
LABEL_123:
    if (v101 && atomic_fetch_add((v101 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v97);
    }

    v101 = 0;
    v98 = 0u;
    v99 = 0u;
    if (SDWORD1(v97) >= 1)
    {
      v89 = 0;
      v90 = v102;
      do
      {
        *&v90[4 * v89++] = 0;
      }

      while (v89 < SDWORD1(v97));
    }

    v84 = v103;
    if (v103 == &v104)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  *(&v97 + 1) = v41 | 0x100000000;
  *&v98 = v107;
  *(&v98 + 1) = v107;
  v100 = 0;
  v101 = 0;
  v102 = &v97 + 8;
  v103 = &v104;
  *&v97 = 0x242FF4004;
  v104 = vdupq_n_s64(4uLL);
  *&v99 = &v107[v41];
  *(&v99 + 1) = v99;
  sub_10022B754(&v97, v42);
  if (v101 && atomic_fetch_add((v101 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v97);
  }

  v101 = 0;
  v98 = 0u;
  v99 = 0u;
  if (SDWORD1(v97) >= 1)
  {
    v82 = 0;
    v83 = v102;
    do
    {
      *&v83[4 * v82++] = 0;
    }

    while (v82 < SDWORD1(v97));
  }

  v84 = v103;
  if (v103 == &v104)
  {
    goto LABEL_131;
  }

LABEL_130:
  j__free(v84);
LABEL_131:
  if (v105 != v107)
  {
    if (v105)
    {
      operator delete[]();
    }

    v106 = 264;
  }

  if (v108 != v110)
  {
    if (v108)
    {
      operator delete[]();
    }

    v109 = 264;
  }

  if (v111 != v113 && v111)
  {
    operator delete[]();
  }

LABEL_142:
  if (v118 && atomic_fetch_add((v118 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v114);
  }

  v118 = 0;
  v115 = 0u;
  v116 = 0u;
  if (SDWORD1(v114) >= 1)
  {
    v91 = 0;
    v92 = v119;
    do
    {
      *&v92[4 * v91++] = 0;
    }

    while (v91 < SDWORD1(v114));
  }

  if (v120 != v121)
  {
    j__free(v120);
  }

  if (v122[2])
  {
    sub_1002ACC1C(v122);
  }
}

void sub_1002F012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (STACK[0x4C0] == a11)
  {
    v15 = STACK[0x8F0];
    if (STACK[0x8F0] == a13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (STACK[0x4C0])
    {
      operator delete[]();
    }

    STACK[0x4C8] = 264;
    v15 = STACK[0x8F0];
    if (STACK[0x8F0] == a13)
    {
LABEL_9:
      sub_100006D14(v13 - 208);
      sub_1001D8BF4(v13 - 104);
      _Unwind_Resume(a1);
    }
  }

  if (v15)
  {
    operator delete[]();
  }

  goto LABEL_9;
}

uint64_t sub_1002F02E4(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5, int a6)
{
  if (a3 > a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (a2 == a3 || **(a1 + 8 * a2) == **(a1 + 8 * a3))
  {
    *a4 = a2;
    return 1;
  }

  else
  {
    v8 = (v6 + a2);
    v9 = (v8 + v6);
    *a4 = a2;
    a4[1] = v8;
    a4[2] = v9;
    if (v8 == a3)
    {
      return 2;
    }

    else
    {
      v10 = v6 + a3;
      v11 = 3;
      v12 = a2;
      do
      {
        v14 = *(a1 + 8 * v8);
        v15 = *(a1 + 8 * v9);
        v16 = v14[1];
        v17 = v15[1] - v16;
        if (((v15[1] != v16) | (v17 >> 31)) == a5)
        {
          v13 = (v9 + v6);
          a4[v11 - 1] = v13;
          v9 = v8;
          v8 = v12;
        }

        else
        {
          v18 = *v14;
          v19 = *(a1 + 8 * v12);
          v20 = *v19;
          v21 = v19[1];
          v22 = (v16 - v21) * (*v15 - v18);
          v23 = (v18 - v20) * v17;
          v24 = v22 < v23;
          v25 = v22 != v23;
          if (v24)
          {
            v25 = -1;
          }

          if (v25 != a6 || (v18 == v20 ? (v26 = v16 == v21) : (v26 = 0), v26))
          {
            if (v12 == a2)
            {
              v13 = (v9 + v6);
              a4[1] = v9;
              a4[2] = v13;
              v8 = a2;
            }

            else
            {
              v27 = &a4[v11];
              *(v27 - 2) = v9;
              v8 = *(v27 - 4);
              --v11;
              v13 = v9;
              v9 = v12;
            }
          }

          else
          {
            v13 = (v9 + v6);
            a4[v11++] = v13;
          }
        }

        v12 = v8;
        v8 = v9;
        v9 = v13;
      }

      while (v13 != v10);
      return (v11 - 1);
    }
  }
}