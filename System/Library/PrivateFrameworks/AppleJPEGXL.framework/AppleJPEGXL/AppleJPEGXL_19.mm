void sub_240BA3DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_240BA3664(v47 - 176);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  sub_240B86C34(&a19);
  if (a44)
  {
    operator delete(a44);
  }

  sub_240BA419C(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA3EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2852A1938;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  v5 = (a1 + 376);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  if (a4 != -1)
  {
    sub_240BA42C4(v5, a4 + 1);
  }

  return a1;
}

void sub_240BA3FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_240BA4110(&a9);
  sub_240B8D650(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_240BA3FD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  *(result + 16) = *a2;
  *(result + 32) = v4;
  *(result + 40) = a3;
  *(result + 48) = a4;
  v5 = *(result + 20);
  if (v5 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_240C83EC0[v5];
  }

  v7 = (v6 * *(result + 16)) >> 3;
  *(result + 56) = v7;
  v8 = v7 * a3;
  v9 = *(result + 32);
  if (v9 >= 2)
  {
    v8 = (v9 + v8 - 1) / v9 * v9;
  }

  *(result + 64) = v8;
  return result;
}

uint64_t sub_240BA403C(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v7 = a1[47];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[48] - v7) >> 5) <= a2)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  v12 = (v7 + 96 * a2);
  v14 = *a5;
  v15 = *(a5 + 2);
  sub_240BA3FD4(v12, &v14, *a1, a1[1]);
  *v12 = a3;
  v12[1] = a4;
  if ((v12[6] - 1) * v12[8] + v12[7] * v12[5] > a4)
  {
    return 0;
  }

  sub_240BA41E0((a1[47] + 96 * a2));
  return 1;
}

void sub_240BA4110(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_240BA419C(uint64_t a1)
{
  v3 = (a1 + 376);
  sub_240BA4110(&v3);
  sub_240B8D650(a1 + 72);
  return a1;
}

double sub_240BA41E0(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v7 = 0;
    v6 = 0uLL;
    sub_240BA4250(&v6, v1, &v1[v3], v3);
    v4 = a1[9];
    if (v4)
    {
      a1[10] = v4;
      operator delete(v4);
    }

    result = *&v6;
    *(a1 + 9) = v6;
    a1[11] = v7;
    *a1 = 0;
  }

  return result;
}

uint64_t *sub_240BA4250(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_240B291B0(result, a4);
  }

  return result;
}

void sub_240BA42A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BA42C4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B228BC();
}

uint64_t sub_240BA4324(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, float32x4_t *a6, float32x4_t *a7, int a8, float a9, __n128 a10, int8x16_t a11, double a12, __n128 *a13)
{
  v13 = *(result + 40);
  v14 = *(result + 8 * (3 * a3 + a2) + 72);
  if (a2 != 1 && a5 * a4 >= 4)
  {
    *&a12 = a5;
    v15 = vmlaq_n_f32(*a6, vdupq_lane_s32(*&a12, 0), a4 * -0.00744);
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    a11 = vbslq_s8(vcgtq_f32(v16, v15), v16, v15);
    *a6 = a11;
  }

  if (a5)
  {
    v17 = 0;
    v19 = (v13 + 4 * v14);
    v20 = (a8 * a9) * a10.n128_f32[0];
    v21 = 8 * a5;
    v22 = 4 * a5;
    v23 = 32 * a4;
    do
    {
      result = v17 >= v22;
      if (a4)
      {
        v24 = 0;
        result = 2 * (v17 >= v22);
        v25 = &xmmword_240C86460;
        v26 = v19;
        v27 = a7;
        v28 = a13;
        do
        {
          if (a4 == 1)
          {
            a10.n128_u32[0] = a6->u32[result | 1];
            a11.i32[0] = a6->i32[2 * (v17 >= v22)];
            v29 = vbslq_s8(*v25, vdupq_lane_s32(a10.n128_u64[0], 0), vdupq_lane_s32(*a11.i8, 0));
          }

          else
          {
            if (v24 < 4 * a4)
            {
              v30 = 2 * (v17 >= v22);
            }

            else
            {
              v30 = result + 1;
            }

            v31 = &a6->f32[v30];
            v29 = vld1q_dup_f32(v31);
          }

          v32 = *v26++;
          v33 = v32;
          v34 = *v27++;
          v35 = vmulq_f32(vmulq_n_f32(v33, v20), v34);
          v36 = vcgeq_f32(vabsq_f32(v35), v29);
          a11 = vrndnq_f32(v35);
          a10 = vcvtq_s32_f32(vandq_s8(a11, v36));
          *v28++ = a10;
          v24 += 4;
          ++v25;
        }

        while (v24 < 8 * a4);
      }

      ++v17;
      a13 = (a13 + v23);
      a7 = (a7 + v23);
      v19 = (v19 + v23);
    }

    while (v17 != v21);
  }

  return result;
}

void sub_240BA446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v170 = *MEMORY[0x277D85DE8];
  v16 = v11;
  v17 = v10;
  v18 = v9;
  switch(v8)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v10->i32[0] = v9->i32[0];
      return;
    case 4:
      v107.i32[0] = v9->i32[0];
      v107.f32[1] = v9->f32[1] * 0.90176;
      v108.i32[0] = v9[4].i32[0];
      v108.f32[1] = v9[4].f32[1] * 0.90176;
      v109 = vmul_f32(v108, vdup_n_s32(0x3F66DA05u));
      v110 = vadd_f32(v107, v109);
      v111 = vsub_f32(v107, v109);
      v109.i32[0] = vdup_lane_s32(v110, 1).u32[0];
      v112 = vzip1_s32(v110, v111);
      v109.i32[1] = v111.i32[1];
      *v10->f32 = vadd_f32(v112, v109);
      *&v10->f32[v11] = vsub_f32(v112, v109);
      return;
    case 5:
      v54 = 0;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v55 = *v18;
        v18 += 8;
        *(&v138 + v54) = vmulq_f32(vmulq_n_f32(v55, *(&xmmword_240C117C0 + v54)), xmmword_240C117C0);
        ++v54;
      }

      while (v54 != 4);
      v56 = 0;
      v128 = vaddq_f32(v138, v140);
      v129 = vsubq_f32(v138, v140);
      v57 = vaddq_f32(v139, v141);
      v58 = vmulq_f32(v139, vdupq_n_s32(0x3FB504F3u));
      v59 = vaddq_f32(v58, v57);
      v60 = vsubq_f32(v58, v57);
      v130 = v59;
      v131 = v60;
      v61 = 1;
      do
      {
        v62 = v61;
        v60.i32[0] = dword_240C123D8[v56];
        v63 = &v128 + v56;
        v64 = *v63;
        v65 = v63[2];
        *(&v124 + v56) = vmlaq_n_f32(*v63, v65, v60.f32[0]);
        *(&v124 + ((16 * v56) ^ 0x30)) = vmlsq_lane_f32(v64, v65, *v60.f32, 0);
        v56 = 1;
        v61 = 0;
      }

      while ((v62 & 1) != 0);
      v66 = 0;
      v67 = vzip1q_s32(v124, v126);
      v68 = vzip1q_s32(v125, v127);
      v69 = vzip2q_s32(v124, v126);
      v70 = vzip2q_s32(v125, v127);
      v71 = vzip1q_s32(v67, v68);
      v72 = vzip2q_s32(v67, v68);
      v73 = vzip1q_s32(v69, v70);
      v128 = vaddq_f32(v71, v73);
      v129 = vsubq_f32(v71, v73);
      v74 = vaddq_f32(v72, vzip2q_s32(v69, v70));
      v75 = vmulq_f32(v72, vdupq_n_s32(0x3FB504F3u));
      v76 = vaddq_f32(v75, v74);
      v77 = vsubq_f32(v75, v74);
      v130 = v76;
      v131 = v77;
      v78 = 1;
      do
      {
        v77.i32[0] = dword_240C123D8[v66];
        v79 = v78;
        v80 = &v128 + v66;
        v81 = v80[2];
        v82 = vmlsq_lane_f32(*v80, v81, *v77.f32, 0);
        *(v10 + 4 * v66 * v11) = vmlaq_n_f32(*v80, v81, v77.f32[0]);
        *(v10 + 4 * (v66 ^ 3) * v11) = v82;
        v66 = 1;
        v78 = 0;
      }

      while ((v79 & 1) != 0);
      return;
    case 6:
      v12.i32[0] = v9->i32[0];
      v13.f32[0] = v9->f32[1] * 0.90176;
      v10->i32[0] = vadd_f32(v12, v13).u32[0];
      v10->i32[v11] = vsub_f32(v12, v13).u32[0];
      return;
    case 7:
      v12.i32[0] = v9->i32[0];
      v13.f32[0] = v9->f32[1] * 0.90176;
      *v10->f32 = vzip1_s32(vadd_f32(v12, v13), vsub_f32(v12, v13));
      return;
    case 8:
      sub_240B89964(1, &v138, v11, v10, &v125, *&vmulq_f32(*v9, xmmword_240C117C0), 0.00624292809, v14, v15);
      return;
    case 9:
      v138 = vmulq_f32(*v9, xmmword_240C117C0);
      v124 = v138;
      sub_240B89964(1, v124.i32, 1, &v138, &v125, *v138.f32, 0.00624292809, v14, v15);
      v124 = v138;
      *v17 = v138;
      return;
    case 10:
      v94 = 0;
      v139 = 0u;
      v138 = 0u;
      v95 = 1;
      do
      {
        v96 = v95;
        *(&v138 + v94) = vmulq_f32(vmulq_n_f32(v9[8 * v94], flt_240C123E0[v94]), xmmword_240C117C0);
        v94 = 1;
        v95 = 0;
      }

      while ((v96 & 1) != 0);
      v124 = vaddq_f32(v138, v139);
      v125 = vsubq_f32(v138, v139);
      v97 = &v124;
      v98 = &v138;
      v99 = 1;
      do
      {
        v100 = 0;
        v101 = v99;
        do
        {
          v98->i32[0] = v97->i32[v100];
          v98 = (v98 + 8);
          ++v100;
        }

        while (v100 != 4);
        v99 = 0;
        v98 = &v138.i32[1];
        v97 = &v125;
      }

      while ((v101 & 1) != 0);
      sub_240B89A08(2, &v138, v11, v10, &v126);
      return;
    case 11:
      v31 = 0;
      v139 = 0u;
      v138 = 0u;
      v32 = 1;
      do
      {
        v33 = v32;
        *(&v138 + v31) = vmulq_f32(vmulq_n_f32(v9[8 * v31], flt_240C123E0[v31]), xmmword_240C117C0);
        v31 = 1;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v34 = &v138;
      v35 = &v124;
      v36 = 1;
      do
      {
        v37 = 0;
        v38 = v36;
        do
        {
          v35->i32[0] = v34->i32[v37];
          v35 = (v35 + 8);
          ++v37;
        }

        while (v37 != 4);
        v36 = 0;
        v35 = (v124.i64 + 4);
        v34 = &v139;
      }

      while ((v38 & 1) != 0);
      sub_240B89A08(2, &v124, 2, &v138, &v126);
      v171 = vld2q_f32(v138.f32);
      *v17 = vaddq_f32(v171.val[0], v171.val[1]);
      *(v17 + 4 * v16) = vsubq_f32(v171.val[0], v171.val[1]);
      return;
    case 18:
      v49 = 0;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v50 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v51 = 0;
        v52 = xmmword_240C847B0 + v49;
        v53 = vld1q_dup_f32(v52);
        do
        {
          v50[v51] = vmulq_f32(vmulq_f32(v18[v51], v53), xmmword_240C847B0[v51]);
          ++v51;
        }

        while (v51 != 2);
        ++v49;
        v50 += 2;
        v18 += 16;
      }

      while (v49 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 8;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5DB4, &v122, &v120, 8, v133);
      v122 = 8;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F9C8(&v122, &v120);
      v122 = 8;
      v123 = &v138;
      v25 = v133;
      v24 = sub_240BA5DB4;
      goto LABEL_49;
    case 19:
      v89 = 0;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v90 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v91 = 0;
        v92 = &xmmword_240C117C0 + v89;
        v93 = vld1q_dup_f32(v92);
        do
        {
          v90[v91] = vmulq_f32(vmulq_f32(v18[v91], v93), xmmword_240C847B0[v91]);
          ++v91;
        }

        while (v91 != 2);
        ++v89;
        v90 += 2;
        v18 += 16;
      }

      while (v89 != 4);
      v122 = 8;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5E28, &v122, &v120, 8, v132);
      v122 = 8;
      v123 = &v124;
      v120 = 4;
      v121 = &v138;
      sub_240B3F300(&v122, &v120);
      sub_240B3F3A8(&v138, 4, v17, v16, v132);
      return;
    case 20:
      v39 = 0;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v40 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v41 = 0;
        v42 = &xmmword_240C117C0 + v39;
        v43 = vld1q_dup_f32(v42);
        do
        {
          v40[v41] = vmulq_f32(vmulq_f32(v18[v41], v43), xmmword_240C847B0[v41]);
          ++v41;
        }

        while (v41 != 2);
        ++v39;
        v40 += 2;
        v18 += 16;
      }

      while (v39 != 4);
      v118 = v11;
      v119 = v10;
      v122 = 8;
      v123 = &v138;
      v120 = 4;
      v121 = &v124;
      sub_240B3F300(&v122, &v120);
      sub_240B3F3A8(&v124, 4, &v138, 4, v132);
      v122 = 4;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B404FC(&v122, &v120);
      v122 = 8;
      v123 = &v124;
      v24 = sub_240BA5E28;
      v25 = v132;
      goto LABEL_49;
    case 21:
      v44 = &v138;
      bzero(&v138, 0x400uLL);
      for (i = 0; i != 16; ++i)
      {
        v46 = 0;
        v47 = xmmword_240C847D0 + i;
        v48 = vld1q_dup_f32(v47);
        do
        {
          v44[v46] = vmulq_f32(vmulq_f32(v18[v46], v48), xmmword_240C847D0[v46]);
          ++v46;
        }

        while (v46 != 4);
        v44 += 4;
        v18 += 32;
      }

      v118 = v16;
      v119 = v17;
      v122 = 16;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5D40, &v122, &v120, 16, v135);
      v122 = 16;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F62C(&v122, &v120);
      v122 = 16;
      v123 = &v138;
      v25 = v135;
      v24 = sub_240BA5D40;
      goto LABEL_68;
    case 22:
      v83 = 0;
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
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v84 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v85 = 0;
        v86 = xmmword_240C847B0 + v83;
        v87 = vld1q_dup_f32(v86);
        do
        {
          v84[v85] = vmulq_f32(vmulq_f32(v18[v85], v87), xmmword_240C847D0[v85]);
          ++v85;
        }

        while (v85 != 4);
        ++v83;
        v84 += 4;
        v18 += 32;
      }

      while (v83 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 16;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5DB4, &v122, &v120, 16, v134);
      v122 = 16;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F714(&v122, &v120);
      v122 = 8;
      v123 = &v138;
      v24 = sub_240BA5D40;
      v25 = v134;
LABEL_49:
      v88 = 8;
      goto LABEL_77;
    case 23:
      v102 = 0;
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
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v103 = &v138;
      v139 = 0u;
      v138 = 0u;
      do
      {
        v104 = 0;
        v105 = xmmword_240C847B0 + v102;
        v106 = vld1q_dup_f32(v105);
        do
        {
          v103[v104] = vmulq_f32(vmulq_f32(v18[v104], v106), xmmword_240C847D0[v104]);
          ++v104;
        }

        while (v104 != 4);
        ++v102;
        v103 += 4;
        v18 += 32;
      }

      while (v102 != 8);
      v118 = v11;
      v119 = v10;
      v122 = 16;
      v123 = &v138;
      v120 = 8;
      v121 = &v124;
      sub_240B3F714(&v122, &v120);
      v122 = 8;
      v123 = &v124;
      v120 = 8;
      v121 = &v138;
      sub_240B3F2E8(sub_240BA5D40, &v122, &v120, 8, v134);
      v122 = 8;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F7FC(&v122, &v120);
      v122 = 16;
      v123 = &v124;
      v24 = sub_240BA5DB4;
      v25 = v134;
      goto LABEL_68;
    case 24:
      v26 = &v138;
      bzero(&v138, 0x1000uLL);
      for (j = 0; j != 32; ++j)
      {
        v28 = 0;
        v29 = xmmword_240C84810 + j;
        v30 = vld1q_dup_f32(v29);
        do
        {
          v26[v28] = vmulq_f32(vmulq_f32(v18[v28], v30), xmmword_240C84810[v28]);
          ++v28;
        }

        while (v28 != 8);
        v26 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5BA8, &v122, &v120, 32, v137);
      v122 = 32;
      v123 = &v124;
      v120 = 32;
      v121 = &v138;
      sub_240B3F2E8(sub_240BA578C, &v122, &v120, 32, 32);
      v122 = 32;
      v123 = &v138;
      v25 = v137;
      v24 = sub_240BA5BA8;
      goto LABEL_76;
    case 25:
      v19 = &v138;
      bzero(&v138, 0x800uLL);
      for (k = 0; k != 16; ++k)
      {
        v21 = 0;
        v22 = xmmword_240C847D0 + k;
        v23 = vld1q_dup_f32(v22);
        do
        {
          v19[v21] = vmulq_f32(vmulq_f32(v18[v21], v23), xmmword_240C84810[v21]);
          ++v21;
        }

        while (v21 != 8);
        v19 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA5D40, &v122, &v120, 32, v136);
      v122 = 32;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F2E8(sub_240BA578C, &v122, &v120, 16, 32);
      v122 = 16;
      v123 = &v138;
      v24 = sub_240BA5BA8;
      v25 = v136;
LABEL_68:
      v88 = 16;
      goto LABEL_77;
    case 26:
      v113 = &v138;
      bzero(&v138, 0x800uLL);
      for (m = 0; m != 16; ++m)
      {
        v115 = 0;
        v116 = xmmword_240C847D0 + m;
        v117 = vld1q_dup_f32(v116);
        do
        {
          v113[v115] = vmulq_f32(vmulq_f32(v18[v115], v117), xmmword_240C84810[v115]);
          ++v115;
        }

        while (v115 != 8);
        v113 += 8;
        v18 += 64;
      }

      v118 = v16;
      v119 = v17;
      v122 = 32;
      v123 = &v138;
      v120 = 16;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA578C, &v122, &v120, 16, 32);
      v122 = 16;
      v123 = &v124;
      v120 = 16;
      v121 = &v138;
      sub_240B3F2E8(sub_240BA5BA8, &v122, &v120, 16, v136);
      v122 = 16;
      v123 = &v138;
      v120 = 32;
      v121 = &v124;
      sub_240B3F2E8(sub_240BA578C, &v122, &v120, 32, 16);
      v122 = 32;
      v123 = &v124;
      v24 = sub_240BA5D40;
      v25 = v136;
LABEL_76:
      v88 = 32;
LABEL_77:
      sub_240B3F2E8(v24, &v122, &v118, v88, v25);
      break;
    default:
      return;
  }
}

double sub_240BA5358(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v8 = 8;
  v9 = a3;
  sub_240B3F2E8(sub_240BA5AC4, a1, &v8, 8, &a3[8]);
  v8 = 8;
  v9 = a3;
  v6 = 4;
  v7 = a2;
  sub_240B3F300(&v8, &v6);
  v8 = 4;
  v9 = a3;
  sub_240B41588(4, a2, &v8, a3 + 8);
  v8 = 4;
  v9 = a3;
  v6 = 8;
  v7 = a2;
  *&result = sub_240B404FC(&v8, &v6).u64[0];
  return result;
}

void sub_240BA53FC(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4 + 256;
    v10 = a4 + 384;
    v11 = a4 + 385;
    v12 = a4 + 1;
    v29 = vdupq_n_s32(0x3B800000u);
    v30 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v13 = 0;
      v14 = (a1[1] + v7);
      v15 = 4 * *a1;
      do
      {
        a4[v13++] = *v14;
        v14 = (v14 + v15);
      }

      while (v13 != 256);
      v16 = a4;
      for (i = 255; i != 127; --i)
      {
        v16[256] = vaddq_f32(*v16, a4[i]);
        ++v16;
      }

      sub_240B776C4(v9, a4 + 512);
      v18 = a4;
      for (j = 255; j != 127; --j)
      {
        v18[384] = vsubq_f32(*v18, a4[j]);
        ++v18;
      }

      for (k = 0; k != 128; ++k)
      {
        v10[k] = vmulq_n_f32(v10[k], dword_240C845B0[k]);
      }

      sub_240B776C4(v10, a4 + 512);
      *v10 = vmlaq_f32(*v11, v30, *v10);
      v21 = 126;
      v22 = v11;
      v23 = v11;
      do
      {
        v24 = v23[1];
        ++v23;
        *v22 = vaddq_f32(*v22, v24);
        v22 = v23;
        --v21;
      }

      while (v21);
      v25 = a4;
      do
      {
        *v25 = *(v9 + v21);
        v25 += 2;
        v21 += 16;
      }

      while (v21 != 2048);
      v26 = 0;
      v27 = v12;
      do
      {
        *v27 = v10[v26];
        v27 += 2;
        ++v26;
      }

      while (v26 != 128);
      for (m = 0; m != 256; ++m)
      {
        *(a2[1] + 4 * *a2 * m + 4 * v8) = vmulq_f32(a4[m], v29);
      }

      v8 += 4;
      v7 += 16;
    }

    while (v8 < a3);
  }
}

void sub_240BA55F8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 128);
      sub_240B776C4(a4, a4 + 128);
      v13 = 0;
      v14.i64[0] = 0x3C0000003C000000;
      v14.i64[1] = 0x3C0000003C000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 128);
      v8 += 16;
    }
  }
}

void sub_240BA56B8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3C800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 64);
      sub_240B777F8(a4, a4 + 64);
      for (i = 0; i != 64; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240BA578C(void *result, void *a2, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 12;
    v7 = 8;
    v8 = 4;
    do
    {
      if (a4)
      {
        v9 = 0;
        for (i = 0; i < a4; i += 4)
        {
          v11 = result[1];
          v12 = *(v11 + v4 * *result + v9);
          v13 = *(v11 + v8 * *result + v9);
          v14 = *(v11 + v7 * *result + v9);
          v15 = *(v11 + v6 * *result + v9);
          v16 = vzip1q_s32(v12, v14);
          v17 = vzip1q_s32(v13, v15);
          v18 = vzip2q_s32(v12, v14);
          v19 = vzip2q_s32(v13, v15);
          v20 = (a2[1] + 4 * *a2 * i + 4 * v5);
          vst2_f32(v20, v16);
          *(a2[1] + 4 * (*a2 + *a2 * i) + 4 * v5) = vzip2q_s32(v16, v17);
          v21 = (a2[1] + 4 * *a2 * (i + 2) + 4 * v5);
          vst2_f32(v21, v18);
          *(a2[1] + 4 * *a2 * (i + 3) + 4 * v5) = vzip2q_s32(v18, v19);
          v9 += 16;
        }
      }

      v5 += 4;
      v6 += 16;
      v7 += 16;
      v8 += 16;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240BA5870(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 32);
      sub_240B77928(a4, a4 + 32);
      v13 = 0;
      v14.i64[0] = 0x3D0000003D000000;
      v14.i64[1] = 0x3D0000003D000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 32);
      v8 += 16;
    }
  }
}

void sub_240BA5930(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 8);
      sub_240B41928(a4, a4 + 8);
      v13 = 0;
      v14.i64[0] = 0x3E0000003E000000;
      v14.i64[1] = 0x3E0000003E000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 8);
      v8 += 16;
    }
  }
}

void sub_240BA59F0(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3D800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 16);
      sub_240B417F4(a4, a4 + 16);
      for (i = 0; i != 16; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240BA5AC4(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = vdupq_n_s32(0x3F0A8BD4u);
    v7 = vdupq_n_s32(0x3FA73D75u);
    v8 = vdupq_n_s32(0x3FB504F3u);
    __asm { FMOV            V3.4S, #0.25 }

    do
    {
      v14 = 0;
      v15 = (result[1] + v4);
      v16 = 4 * *result;
      do
      {
        a4[v14++] = *v15;
        v15 = (v15 + v16);
      }

      while (v14 != 4);
      v17 = 0;
      v18 = *a4;
      v19 = a4[1];
      v21 = a4[2];
      v20 = a4[3];
      v22 = vaddq_f32(*a4, v20);
      v23 = vaddq_f32(v19, v21);
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      a4[4] = v24;
      a4[5] = v25;
      v26 = vmulq_f32(vsubq_f32(v18, v20), v6);
      v27 = vmulq_f32(vsubq_f32(v19, v21), v7);
      v28 = vaddq_f32(v26, v27);
      v29 = vsubq_f32(v26, v27);
      a4[7] = v29;
      a4[2] = v25;
      a4[3] = v29;
      v30 = vmlaq_f32(v29, v8, v28);
      a4[6] = v30;
      *a4 = v24;
      a4[1] = v30;
      do
      {
        *(a2[1] + 4 * *a2 * v17 + 4 * v5) = vmulq_f32(a4[v17], _Q3);
        ++v17;
      }

      while (v17 != 4);
      v5 += 4;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240BA5BA8(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 + 16;
    v32 = a4 + 31;
    v31 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v11 = 0;
      v13 = *a1;
      v12 = a1[1];
      v14 = *a2;
      v15 = a2[1];
      v16 = (v12 + v8);
      v17 = 8 * *a1;
      do
      {
        a4[v11++] = *v16;
        v16 = (v16 + v17);
      }

      while (v11 != 16);
      v18 = v12 + 4 * v13;
      for (i = 16; i != 32; ++i)
      {
        a4[i] = *(v18 + v8);
        v18 += v17;
      }

      sub_240B3FFF4(a4, 4, a4, 4, a4 + 32);
      v20 = -15;
      v21 = v32;
      v22 = v32;
      do
      {
        v23 = v22[-1];
        --v22;
        *v21 = vaddq_f32(*v21, v23);
        v21 = v22;
      }

      while (!__CFADD__(v20++, 1));
      *v10 = vmulq_f32(*v10, v31);
      sub_240B3FFF4(v10, 4, v10, 4, a4 + 32);
      v26 = 0;
      v27 = v15 + 124 * v14;
      v28 = v10;
      do
      {
        v25.f32[0] = dword_240C83FEC[v26];
        v29 = v28[-16];
        v30 = *v28++;
        *(v15 + v8) = vmlaq_n_f32(v29, v30, v25.f32[0]);
        *(v27 + v8) = vmlsq_lane_f32(v29, v30, v25, 0);
        ++v26;
        v27 -= 4 * v14;
        v15 += 4 * v14;
      }

      while (v26 != 16);
      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240BA5D40(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FFF4((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240BA5DB4(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3F3A8((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240BA5E28(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B40454((a1[1] + v8), *a1, a2[1] + v8, *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240BA5E9C(unint64_t a1, float32x4_t *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v439 = *MEMORY[0x277D85DE8];
  v11 = a2[5].u64[0];
  v10 = a2[5].u64[1];
  v12 = a1 / v10;
  v13 = a1 % v10;
  v14 = a2[8].u64[1];
  v15 = v14 >> 3;
  v16 = (v14 >> 3) * v13;
  v17 = (v14 >> 3) * v12;
  v18 = a2[4].u64[1];
  v19 = v16 + (v14 >> 3);
  v370 = v16;
  _CF = v18 >= v16;
  v21 = v18 - v16;
  if (!_CF)
  {
    v21 = 0;
  }

  if (v19 <= v18)
  {
    v22 = v14 >> 3;
  }

  else
  {
    v22 = v21;
  }

  v374 = v22;
  v23 = v11 - v17;
  if (v11 < v17)
  {
    v23 = 0;
  }

  if (v17 + (v14 >> 3) > v11)
  {
    v15 = v23;
  }

  v368 = (v14 >> 3) * v12;
  v369 = v15;
  v24 = a6[2];
  v25 = a3[2];
  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  v26 = malloc_type_malloc(0xC0100uLL, 0xF0EBF2FBuLL);
  if (v26)
  {
    v27 = v26 & 0xFFFFFFFFFFFFFF80;
    v28 = (v26 & 0xFFFFFFFFFFFFFF80) + 256;
    *(v27 + 240) = v26;
    *(v27 + 248) = 786432;
  }

  else
  {
    v28 = 0;
  }

  v419[2] = 0;
  v406 = v28;
  v419[0] = v28;
  v419[1] = 0;
  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  v29 = malloc_type_malloc(0x143100uLL, 0xF0EBF2FBuLL);
  v412 = v24;
  v414 = a4;
  v34 = a5;
  if (v29)
  {
    v35 = v29 & 0xFFFFFFFFFFFFFF80;
    v36 = (v29 & 0xFFFFFFFFFFFFFF80) + 256;
    *(v35 + 240) = v29;
    *(v35 + 248) = 1323008;
  }

  else
  {
    v36 = 0;
  }

  v418[2] = 0;
  v409 = v36;
  v418[0] = v36;
  v418[1] = 0;
  v425 = 0;
  memset(v424, 0, sizeof(v424));
  v401 = a2;
  v385 = a2[267].i64[0];
  if (v385)
  {
    v37 = 0;
    v38 = v424;
    do
    {
      v39 = 0;
      v40 = v38;
      do
      {
        v41 = *(v401[264].i64[0] + 8 * v37);
        *v40 = (*(*v41 + 24))(v41, v39, a1, 0);
        v40 += 11;
        ++v39;
      }

      while (v39 != 3);
      ++v37;
      v38 = (v38 + 8);
    }

    while (v37 != v385);
  }

  v42 = v401;
  if (v369)
  {
    v43 = 0;
    v404 = v412 >> 2;
    v365 = v414 + v14 * v13;
    v363 = v370 >> 3;
    v364 = v34 + v14 * v12;
    v410 = v409 + 49152;
    v44 = 16 * (v25 >> 2);
    v407 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v362 = v44 + 16;
    v45 = 4 * (v25 >> 2);
    v394 = v409 + 2;
    v395 = &v409->i8[4];
    v411 = v25 >> 2;
    v386 = 8 * (v25 >> 2);
    v46.i32[1] = 1059313418;
    v382 = vdupq_n_s64(0x3FE147AE147AE148uLL);
    v47 = vdupq_n_s32(0x3F0A3D71u);
    v381 = v47;
    v392 = v44;
    do
    {
      v48 = v43 + v368;
      v49 = v42[65].i64[1];
      v50 = v42[65].i64[0];
      v51 = v42[70].i64[1];
      v52 = v42[70].i64[0];
      v53 = v42[73].i64[0];
      v54 = v42[72].i64[1];
      v371 = v43;
      v55 = a3[2] * (v364 + 8 * v43);
      v56 = a3[8] + v55 + 4 * v365;
      v423[0] = a3[3] + v55 + 4 * v365;
      v423[1] = v56;
      v423[2] = a3[13] + v55 + 4 * v365;
      v57 = a6[2] * v48;
      v58 = a6[8] + v57 + 4 * v370;
      v420 = a6[3] + v57 + 4 * v370;
      v421 = v58;
      v422 = a6[13] + v57 + 4 * v370;
      if (v374 + 7 < 8)
      {
        goto LABEL_304;
      }

      v380 = 0;
      v59 = 0;
      v389 = v49 + v50 * v48 + 4 * v370;
      v60 = (v368 >> 3) + (v371 >> 3);
      v372 = v53 + v54 * v60 + v363;
      v373 = v51 + v52 * v60 + v363;
      v390 = v42[11].i64[0] + v42[10].i64[1] * v48 + v370;
      v378 = v44;
      v379 = 16;
      v377 = v362;
      v61 = 8;
      do
      {
        v375 = v61;
        v376 = v59;
        if (v374 < v61)
        {
          v61 = v374;
        }

        v391 = v61;
        if (v374 <= 8 * v59)
        {
          goto LABEL_303;
        }

        v62 = 8 * v59;
        v46.i32[0] = v42[75].i32[1];
        v47.f32[0] = v42[75].f32[3] + (*(v372 + v59) * v46.f32[0]);
        v46.f32[0] = v42[75].f32[2] + (*(v373 + v59) * v46.f32[0]);
        v46 = vnegq_f32(vdupq_lane_s32(*v46.f32, 0));
        v47 = vnegq_f32(vdupq_lane_s32(*v47.f32, 0));
        v383 = v47;
        v384 = v46;
        v63 = v380;
        v397 = v378;
        v398 = v379;
        v396 = v377;
        do
        {
          v405 = v62;
          v64 = *(v390 + v62);
          v65 = v64 >> 1;
          v416 = v64 >> 1;
          v417 = v64 & 1;
          if ((v64 & 1) == 0)
          {
            goto LABEL_302;
          }

          v66 = 0;
          v67 = byte_240C87EA0[v65];
          v68 = byte_240C87EBB[v65];
          if (v68 >= v67)
          {
            v69 = byte_240C87EA0[v65];
          }

          else
          {
            v69 = byte_240C87EBB[v65];
          }

          v387 = v68;
          v388 = v67;
          if (v68 <= v67)
          {
            v68 = v67;
          }

          v415 = v69;
          v413 = v68;
          v70 = v69 * v68;
          v400 = *(v389 + 4 * v405);
          v71 = v70 << 6;
          v437 = 0x100000000;
          v438 = 2;
          v402 = 32 * v405;
          v399 = v70 << 8;
          v408 = v70 << 6;
          do
          {
            v72 = *(&v437 + v66);
            v73 = v423[v72];
            v42 = (v73 + v402);
            v74 = (v409 + 4 * v71 * v72);
            switch(v416)
            {
              case 0u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5930, v426, v435, 8, &v409[49168]);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 8;
                v427.i64[1] = &v409[49152];
                sub_240B3F9C8(v435, &v427);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 8;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5930, v435, &v427, 8, &v409[49168]);
                goto LABEL_158;
              case 1u:
                v210 = 0;
                v211 = &v42->i8[4];
                v212 = 1;
                v42 = v401;
                do
                {
                  v213 = 0;
                  v214 = v212;
                  v215 = 1;
                  v216 = &v211[4 * ((4 * v210) | 1) * v411];
                  v217 = 8 * v210;
                  v218 = v44 * v210;
                  v219 = v73 + v44 * v210;
                  v220 = &v409[2 * v210] + v399 * v72;
                  v221 = v73 + v63 + v218;
                  do
                  {
                    v222 = v215;
                    v223 = 0.0;
                    v224 = 4;
                    v225 = v219 + 16 * v213;
                    do
                    {
                      v223 = (((v223 + COERCE_FLOAT(*(v225 + v63))) + COERCE_FLOAT(HIDWORD(*(v225 + v63)))) + COERCE_FLOAT(*(v225 + v63 + 8))) + COERCE_FLOAT(HIDWORD(*(v225 + v63)));
                      v225 += v45;
                      --v224;
                    }

                    while (v224);
                    v30 = v221 + 16 * v213;
                    v31 = v220 + 4 * v213;
                    do
                    {
                      v32 = 0;
                      v33 = v31;
                      do
                      {
                        if (v224 != 1 || v32 != 4)
                        {
                          *v33 = *(v30 + v32) - *&v216[16 * v213];
                        }

                        v32 += 4;
                        v33 += 2;
                      }

                      while (v32 != 16);
                      ++v224;
                      v31 += 64;
                      v30 += v45;
                    }

                    while (v224 != 4);
                    v215 = 0;
                    v226 = &v74->i32[v213 | v217];
                    v226[18] = *v226;
                    *v226 = v223 * 0.0625;
                    v213 = 1;
                  }

                  while ((v222 & 1) != 0);
                  v212 = 0;
                  v210 = 1;
                }

                while ((v214 & 1) != 0);
                v227 = v74->f32[0];
                v228 = v74->f32[1];
                v229 = v74[2].f32[0];
                v230 = v74[2].f32[1];
                v231 = v74->f32[0] + v228;
                v74->f32[0] = ((v231 + v229) + v230) * 0.25;
                v74->f32[1] = ((v231 - v229) - v230) * 0.25;
                v232 = v227 - v228;
                v168 = ((v232 + v229) - v230) * 0.25;
                v169 = ((v232 - v229) + v230) * 0.25;
                goto LABEL_139;
              case 2u:
                for (i = 1; i != 9; i += 2)
                {
                  v139 = (v73 + v63);
                  v440 = vld2q_f32(v139);
                  v140 = (v73 + v45 + v63);
                  v441 = vld2q_f32(v140);
                  v141 = vaddq_f32(v440.val[0], v440.val[1]);
                  v142 = vaddq_f32(vaddq_f32(v141, v441.val[0]), v441.val[1]);
                  v143 = vsubq_f32(vsubq_f32(v141, v441.val[0]), v441.val[1]);
                  v440.val[0] = vsubq_f32(v440.val[0], v440.val[1]);
                  v440.val[1] = vsubq_f32(vaddq_f32(v440.val[0], v441.val[0]), v441.val[1]);
                  v440.val[0] = vaddq_f32(vsubq_f32(v440.val[0], v441.val[0]), v441.val[1]);
                  __asm { FMOV            V2.4S, #0.25 }

                  v146 = &v435[i];
                  v146[-1] = vmulq_f32(v142, v441.val[0]);
                  *v146 = vmulq_f32(v143, v441.val[0]);
                  v146[7] = vmulq_f32(v440.val[1], v441.val[0]);
                  v146[8] = vmulq_f32(v440.val[0], v441.val[0]);
                  v73 += v386;
                }

                v147 = 0;
                v74[12] = v435[12];
                v74[13] = v435[13];
                v74[14] = v435[14];
                v74[15] = v435[15];
                v74[8] = v435[8];
                v74[9] = v435[9];
                v74[10] = v435[10];
                v74[11] = v435[11];
                v74[4] = v435[4];
                v74[5] = v435[5];
                v74[6] = v435[6];
                v74[7] = v435[7];
                *v74 = v435[0];
                v74[1] = v435[1];
                v74[2] = v435[2];
                v74[3] = v435[3];
                v148 = 1;
                v42 = v401;
                do
                {
                  v149 = 0;
                  v150 = v148;
                  v151 = 16 * v147;
                  v152 = 8 * v147;
                  v153 = 1;
                  do
                  {
                    v154 = v153;
                    v155 = (v74->f32 + ((8 * v149) | (4 * v151)));
                    v156 = v155[1];
                    v157 = v155[8];
                    v158 = v155[9];
                    v159 = *v155 + v156;
                    v160 = *v155 - v156;
                    v161 = &v435[0].f32[v149 | v152];
                    *v161 = ((v159 + v157) + v158) * 0.25;
                    v161[2] = ((v159 - v157) - v158) * 0.25;
                    v161[16] = ((v160 + v157) - v158) * 0.25;
                    v161[18] = ((v160 - v157) + v158) * 0.25;
                    v149 = 1;
                    v153 = 0;
                  }

                  while ((v154 & 1) != 0);
                  v148 = 0;
                  v147 = 1;
                }

                while ((v150 & 1) != 0);
                for (j = 0; j != 8; j += 2)
                {
                  v74[j] = v435[j];
                }

                v163 = v74->f32[1];
                v164 = v74[2].f32[0];
                v165 = v74[2].f32[1];
                v166 = v74->f32[0] + v163;
                v167 = v74->f32[0] - v163;
                v168 = ((v167 + v164) - v165) * 0.25;
                v74->f32[0] = ((v166 + v164) + v165) * 0.25;
                v74->f32[1] = ((v166 - v164) - v165) * 0.25;
                v169 = ((v167 - v164) + v165) * 0.25;
LABEL_139:
                v74[2].f32[0] = v168;
                v74[2].f32[1] = v169;
                break;
              case 3u:
                v393 = v66;
                v191 = 0;
                v192 = 1;
                do
                {
                  v193 = 0;
                  v194 = v192;
                  v195 = &v42->i8[4 * v191 * v407];
                  v196 = &v74[2 * v191];
                  v197 = 1;
                  do
                  {
                    v198 = v197;
                    v199 = v435;
                    sub_240B76E50(v411, &v195[16 * v193], v435, v410);
                    v200 = 0;
                    v201 = &v196->i32[v193];
                    do
                    {
                      v202 = 0;
                      v203 = v201;
                      do
                      {
                        *v203 = v199->i32[v202];
                        v203 += 2;
                        ++v202;
                      }

                      while (v202 != 4);
                      ++v200;
                      v201 += 16;
                      ++v199;
                    }

                    while (v200 != 4);
                    v197 = 0;
                    v193 = 1;
                  }

                  while ((v198 & 1) != 0);
                  v192 = 0;
                  v191 = 1;
                }

                while ((v194 & 1) != 0);
                v204 = v74->f32[0];
                v205 = v74->f32[1];
                v206 = v74[2].f32[0];
                v207 = v74[2].f32[1];
                v208 = v74->f32[0] + v205;
                v74->f32[0] = ((v208 + v206) + v207) * 0.25;
                v74->f32[1] = ((v208 - v206) - v207) * 0.25;
                v209 = v204 - v205;
                v74[2].f32[0] = ((v209 + v206) - v207) * 0.25;
                v74[2].f32[1] = ((v209 - v206) + v207) * 0.25;
                v42 = v401;
                v44 = v392;
                goto LABEL_169;
              case 4u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 16;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA59F0, v426, v435, 16, &v409[49216]);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 16;
                v427.i64[1] = &v409[49152];
                sub_240B3F62C(v435, &v427);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 16;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA59F0, v435, &v427, 16, &v409[49216]);
                goto LABEL_158;
              case 5u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 32;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5870, v426, v435, 32, &v409[49408]);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 32;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 32, 32);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5870, v435, &v427, 32, &v409[49408]);
                goto LABEL_158;
              case 6u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA59F0, v426, v435, 8, &v409[49184]);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 16;
                v427.i64[1] = &v409[49152];
                sub_240B3F7FC(v435, &v427);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 16;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5930, v435, &v427, 16, &v409[49184]);
                goto LABEL_158;
              case 7u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 16;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA5930, v426, v435, 16, &v409[49184]);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 8;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F714(v435, &v427);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 8;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA59F0, v435, &v427, 8, &v409[49184]);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 16;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F7FC(v435, &v427);
                goto LABEL_158;
              case 8u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5870, v426, v435, 8, &v409[49216]);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 32;
                v427.i64[1] = &v409[49152];
                sub_240B76EE0(v435, &v427);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5930, v435, &v427, 32, &v409[49216]);
                goto LABEL_158;
              case 9u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA5930, v426, v435, 32, &v409[49216]);
                v124 = 0;
                v125 = 1;
                do
                {
                  v126 = v125;
                  v127 = &v410[2 * v124];
                  v128 = -4;
                  v129 = &v409[v124 + 4] + v399 * v72;
                  do
                  {
                    v130 = v127[8];
                    v131 = v127[16];
                    v132 = v127[24];
                    v133 = vzip1q_s32(*v127, v131);
                    v134 = vzip1q_s32(v130, v132);
                    v135 = vzip2q_s32(*v127, v131);
                    v136 = vzip2q_s32(v130, v132);
                    v137 = (v129 - 64);
                    vst2_f32(v137, v133);
                    vst2_f32(v129, v135);
                    *(v129 - 32) = vzip2q_s32(v133, v134);
                    *(v129 + 32) = vzip2q_s32(v135, v136);
                    v128 += 4;
                    ++v127;
                    v129 += 128;
                  }

                  while (v128 < 0x1C);
                  v125 = 0;
                  v124 = 1;
                }

                while ((v126 & 1) != 0);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 8;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA5870, v435, &v427, 8, &v409[49216]);
                v435[0].i64[0] = 8;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B76EE0(v435, &v427);
                goto LABEL_158;
              case 0xAu:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 16;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5870, v426, v435, 16, &v409[49280]);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 32;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 32, 16);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA59F0, v435, &v427, 32, &v409[49280]);
                goto LABEL_158;
              case 0xBu:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA59F0, v426, v435, 32, &v409[49280]);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 16;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 16, 32);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 16;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA5870, v435, &v427, 16, &v409[49280]);
                v435[0].i64[0] = 16;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 32, 16);
                goto LABEL_158;
              case 0xCu:
                v115 = v73 + v402;
                v116 = 0;
                v117 = 1;
                v42 = v401;
                do
                {
                  v118 = v117;
                  v427.i64[0] = v411;
                  v427.i64[1] = v115 + 4 * v116 * v407;
                  sub_240BA5358(&v427, v435, v410);
                  v119 = 0;
                  v120 = &v74[2 * v116];
                  do
                  {
                    v121 = v435[v119 + 1];
                    *v120 = v435[v119];
                    v120[1] = v121;
                    v120 += 4;
                    v119 += 2;
                  }

                  while (v119 != 8);
                  v117 = 0;
                  v116 = 1;
                }

                while ((v118 & 1) != 0);
                v71 = v408;
                v122 = v74->f32[0];
                v123 = v74[2].f32[0];
                v74->f32[0] = (v74->f32[0] + v123) * 0.5;
                v74[2].f32[0] = (v122 - v123) * 0.5;
                break;
              case 0xDu:
                v393 = v66;
                v258 = 0;
                v259 = 1;
                do
                {
                  v260 = v259;
                  v427.i64[0] = 4;
                  v427.i64[1] = v435;
                  sub_240B41588(v411, &v42[v258], &v427, v409 + 49160);
                  v427.i64[0] = 4;
                  v427.i64[1] = v435;
                  v426[0].i64[0] = 8;
                  v426[0].i64[1] = &v409[49152];
                  sub_240B404FC(&v427, v426);
                  v427.i64[0] = 8;
                  v427.i64[1] = &v409[49152];
                  v426[0].i64[0] = 8;
                  v426[0].i64[1] = v435;
                  sub_240B3F2E8(sub_240BA5AC4, &v427, v426, 8, &v409[49160]);
                  v261 = 0;
                  v262 = &v74[2 * v258];
                  do
                  {
                    v263 = v435[v261 + 1];
                    *v262 = v435[v261];
                    v262[1] = v263;
                    v262 += 4;
                    v261 += 2;
                  }

                  while (v261 != 8);
                  v259 = 0;
                  v258 = 1;
                }

                while ((v260 & 1) != 0);
                v264 = v74->f32[0];
                v265 = v74[2].f32[0];
                v74->f32[0] = (v74->f32[0] + v265) * 0.5;
                v74[2].f32[0] = (v264 - v265) * 0.5;
                v44 = v392;
                v42 = v401;
LABEL_169:
                v71 = v408;
                v66 = v393;
                break;
              case 0xEu:
                v95 = 0;
                v433 = 0u;
                v434 = 0u;
                v431 = 0u;
                v432 = 0u;
                v429 = 0u;
                v430 = 0u;
                v96 = (v73 + v63);
                v427 = 0u;
                v428 = 0u;
                do
                {
                  *(&v427 + v95) = *v96;
                  v95 += 16;
                  v96 = (v96 + v45);
                }

                while (v95 != 64);
                v97 = 0;
                v98 = &unk_240C84030;
                do
                {
                  v99 = 0;
                  v100 = 0uLL;
                  do
                  {
                    v100 = vmlaq_n_f32(v100, v98[v99 * 4], v427.f32[v99]);
                    ++v99;
                  }

                  while (v99 != 16);
                  v426[v97] = v100;
                  ++v98;
                  _CF = v97++ >= 3;
                }

                while (!_CF);
                v101 = 0;
                v102 = v426;
                v103 = &v409->i32[v71 * v72];
                do
                {
                  v104 = 0;
                  v105 = v103;
                  do
                  {
                    *v105 = v102->i32[v104];
                    v105 += 2;
                    ++v104;
                  }

                  while (v104 != 4);
                  ++v101;
                  v103 += 16;
                  ++v102;
                }

                while (v101 != 4);
                v106 = &v427;
                sub_240B76E50(v411, v42 + 1, &v427, v435);
                v107 = 0;
                v108 = v399 * v72;
                v109 = &v395[v108];
                do
                {
                  v110 = 0;
                  v111 = v109;
                  do
                  {
                    *v111 = v106->i32[v110];
                    v111 += 8;
                    ++v110;
                  }

                  while (v110 != 8);
                  ++v107;
                  v109 += 64;
                  ++v106;
                }

                while (v107 != 4);
                v436.i64[0] = v411;
                v436.i64[1] = v42 + v44;
                sub_240BA5358(&v436, &v427, v435);
                v112 = 0;
                v113 = v394 + v108;
                do
                {
                  v114 = *(&v427 + v112 + 16);
                  *v113 = *(&v427 + v112);
                  *(v113 + 1) = v114;
                  v113 += 64;
                  v112 += 32;
                }

                while (v112 != 128);
                goto LABEL_157;
              case 0xFu:
                v170 = 0;
                v433 = 0u;
                v434 = 0u;
                v431 = 0u;
                v432 = 0u;
                v429 = 0u;
                v430 = 0u;
                v171 = (v73 + v398);
                v427 = 0u;
                v428 = 0u;
                do
                {
                  v172 = vrev64q_s32(*v171);
                  *(&v427 + v170) = vextq_s8(v172, v172, 8uLL);
                  v170 += 16;
                  v171 = (v171 + v45);
                }

                while (v170 != 64);
                v173 = 0;
                v174 = &unk_240C84030;
                do
                {
                  v175 = 0;
                  v176 = 0uLL;
                  do
                  {
                    v176 = vmlaq_n_f32(v176, v174[v175 * 4], v427.f32[v175]);
                    ++v175;
                  }

                  while (v175 != 16);
                  v426[v173] = v176;
                  ++v174;
                  _CF = v173++ >= 3;
                }

                while (!_CF);
                v177 = 0;
                v178 = v426;
                v179 = &v409->i32[v71 * v72];
                do
                {
                  v180 = 0;
                  v181 = v179;
                  do
                  {
                    *v181 = v178->i32[v180];
                    v181 += 2;
                    ++v180;
                  }

                  while (v180 != 4);
                  ++v177;
                  v179 += 16;
                  ++v178;
                }

                while (v177 != 4);
                v182 = &v427;
                sub_240B76E50(v411, v42, &v427, v435);
                v183 = 0;
                v184 = v399 * v72;
                v185 = &v395[v184];
                do
                {
                  v186 = 0;
                  v187 = v185;
                  do
                  {
                    *v187 = v182->i32[v186];
                    v187 += 8;
                    ++v186;
                  }

                  while (v186 != 8);
                  ++v183;
                  v185 += 64;
                  ++v182;
                }

                while (v183 != 4);
                v436.i64[0] = v411;
                v436.i64[1] = v42 + v44;
                sub_240BA5358(&v436, &v427, v435);
                v188 = 0;
                v189 = v394 + v184;
                do
                {
                  v190 = *(&v427 + v188 + 16);
                  *v189 = *(&v427 + v188);
                  *(v189 + 1) = v190;
                  v189 += 64;
                  v188 += 32;
                }

                while (v188 != 128);
                goto LABEL_157;
              case 0x10u:
                v433 = 0u;
                v434 = 0u;
                v431 = 0u;
                v432 = 0u;
                v429 = 0u;
                v430 = 0u;
                v75 = (v73 + v397);
                v76 = 48;
                v427 = 0u;
                v428 = 0u;
                do
                {
                  *(&v427 + v76) = *v75;
                  v76 -= 16;
                  v75 = (v75 + v45);
                }

                while (v76 != -16);
                v77 = 0;
                v78 = &unk_240C84030;
                do
                {
                  v79 = 0;
                  v80 = 0uLL;
                  do
                  {
                    v80 = vmlaq_n_f32(v80, v78[v79 * 4], v427.f32[v79]);
                    ++v79;
                  }

                  while (v79 != 16);
                  v426[v77] = v80;
                  ++v78;
                  _CF = v77++ >= 3;
                }

                while (!_CF);
                v81 = 0;
                v82 = v426;
                v83 = &v409->i32[v71 * v72];
                do
                {
                  v84 = 0;
                  v85 = v83;
                  do
                  {
                    *v85 = v82->i32[v84];
                    v85 += 2;
                    ++v84;
                  }

                  while (v84 != 4);
                  ++v81;
                  v83 += 16;
                  ++v82;
                }

                while (v81 != 4);
                v86 = &v427;
                sub_240B76E50(v411, (v42 + v44 + 16), &v427, v435);
                v87 = 0;
                v88 = v399 * v72;
                v89 = &v395[v88];
                do
                {
                  v90 = 0;
                  v91 = v89;
                  do
                  {
                    *v91 = v86->i32[v90];
                    v91 += 8;
                    ++v90;
                  }

                  while (v90 != 8);
                  ++v87;
                  v89 += 64;
                  ++v86;
                }

                while (v87 != 4);
                v436.i64[0] = v411;
                v436.i64[1] = v42;
                sub_240BA5358(&v436, &v427, v435);
                v92 = 0;
                v93 = v394 + v88;
                do
                {
                  v94 = *(&v427 + v92 + 16);
                  *v93 = *(&v427 + v92);
                  *(v93 + 1) = v94;
                  v93 += 64;
                  v92 += 32;
                }

                while (v92 != 128);
                goto LABEL_157;
              case 0x11u:
                v433 = 0u;
                v434 = 0u;
                v431 = 0u;
                v432 = 0u;
                v429 = 0u;
                v430 = 0u;
                v233 = (v73 + v396);
                v234 = 48;
                v427 = 0u;
                v428 = 0u;
                do
                {
                  v235 = vrev64q_s32(*v233);
                  *(&v427 + v234) = vextq_s8(v235, v235, 8uLL);
                  v234 -= 16;
                  v233 = (v233 + v45);
                }

                while (v234 != -16);
                v236 = 0;
                v237 = &unk_240C84030;
                do
                {
                  v238 = 0;
                  v239 = 0uLL;
                  do
                  {
                    v239 = vmlaq_n_f32(v239, v237[v238 * 4], v427.f32[v238]);
                    ++v238;
                  }

                  while (v238 != 16);
                  v426[v236] = v239;
                  ++v237;
                  _CF = v236++ >= 3;
                }

                while (!_CF);
                v240 = 0;
                v241 = v426;
                v242 = &v409->i32[v71 * v72];
                do
                {
                  v243 = 0;
                  v244 = v242;
                  do
                  {
                    *v244 = v241->i32[v243];
                    v244 += 2;
                    ++v243;
                  }

                  while (v243 != 4);
                  ++v240;
                  v242 += 16;
                  ++v241;
                }

                while (v240 != 4);
                v245 = &v427;
                sub_240B76E50(v411, (v42 + v44), &v427, v435);
                v246 = 0;
                v247 = v399 * v72;
                v248 = &v395[v247];
                do
                {
                  v249 = 0;
                  v250 = v248;
                  do
                  {
                    *v250 = v245->i32[v249];
                    v250 += 8;
                    ++v249;
                  }

                  while (v249 != 8);
                  ++v246;
                  v248 += 64;
                  ++v245;
                }

                while (v246 != 4);
                v436.i64[0] = v411;
                v436.i64[1] = v42;
                sub_240BA5358(&v436, &v427, v435);
                v251 = 0;
                v252 = v394 + v247;
                do
                {
                  v253 = *(&v427 + v251 + 16);
                  *v252 = *(&v427 + v251);
                  *(v252 + 1) = v253;
                  v252 += 64;
                  v251 += 32;
                }

                while (v251 != 128);
LABEL_157:
                v254 = v74->f32[1];
                v255 = v74->f32[0] * 0.25;
                v256 = v74[2].f32[0];
                v257.f32[0] = (v255 + v254) + (v256 * 2.0);
                v257.f32[1] = v255 - v254;
                *v74->f32 = vmul_f32(v257, 0x3F0000003E800000);
                v74[2].f32[0] = ((v255 + v254) + (v256 * -2.0)) * 0.25;
                goto LABEL_158;
              case 0x12u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 64;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA56B8, v426, v435, 64, &v409[50176]);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 64;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 64, 64);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 64;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA56B8, v435, &v427, 64, &v409[50176]);
                goto LABEL_158;
              case 0x13u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 32;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA56B8, v426, v435, 32, &v409[49664]);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 64;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 64, 32);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 64;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA5870, v435, &v427, 64, &v409[49664]);
                goto LABEL_158;
              case 0x14u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 64;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA5870, v426, v435, 64, &v409[49664]);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 32;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 32, 64);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 32;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA56B8, v435, &v427, 32, &v409[49664]);
                v435[0].i64[0] = 32;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 64;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 64, 32);
                goto LABEL_158;
              case 0x15u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 128;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA55F8, v426, v435, 128, &v409[53248]);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 128;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 128, 128);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 128;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA55F8, v435, &v427, 128, &v409[53248]);
                goto LABEL_158;
              case 0x16u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 64;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA55F8, v426, v435, 64, &v409[51200]);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 128;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 128, 64);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 128;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA56B8, v435, &v427, 128, &v409[51200]);
                goto LABEL_158;
              case 0x17u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 128;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA56B8, v426, v435, 128, &v409[51200]);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 64;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 64, 128);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 64;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA55F8, v435, &v427, 64, &v409[51200]);
                v435[0].i64[0] = 64;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 128;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 128, 64);
                goto LABEL_158;
              case 0x18u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 256;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA53FC, v426, v435, 256, &v409[0x10000]);
                v435[0].i64[0] = 256;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 256;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 256, 256);
                v435[0].i64[0] = 256;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 256;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA53FC, v435, &v427, 256, &v409[0x10000]);
                goto LABEL_158;
              case 0x19u:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 128;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA53FC, v426, v435, 128, &v409[57344]);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 256;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 256, 128);
                v435[0].i64[0] = 256;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 256;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA55F8, v435, &v427, 256, &v409[57344]);
                goto LABEL_158;
              case 0x1Au:
                v426[0].i64[0] = v411;
                v426[0].i64[1] = v73 + v402;
                v435[0].i64[0] = 256;
                v435[0].i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA55F8, v426, v435, 256, &v409[57344]);
                v435[0].i64[0] = 256;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 128;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 128, 256);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = v409->i64 + 4 * v71 * v72;
                v427.i64[0] = 128;
                v427.i64[1] = &v409[49152];
                sub_240B3F2E8(sub_240BA53FC, v435, &v427, 128, &v409[57344]);
                v435[0].i64[0] = 128;
                v435[0].i64[1] = &v409[49152];
                v427.i64[0] = 256;
                v427.i64[1] = v409->i64 + 4 * v71 * v72;
                sub_240B3F2E8(sub_240BA578C, v435, &v427, 256, 128);
LABEL_158:
                v42 = v401;
                v71 = v408;
                break;
              default:
                break;
            }

            v66 += 4;
          }

          while (v66 != 12);
          v266 = v416;
          v267 = (v409 + 4 * v71);
          sub_240BA446C(v416, v267, v421 + 4 * v405, v404, v30, v31, v32, v33);
          v426[0] = xmmword_240C11880;
          if (v42[287].i32[0] > 5)
          {
            v329 = 3 * v266;
            v426[0] = xmmword_240C11870;
            v272 = v400;
            goto LABEL_287;
          }

          v271 = 0;
          v272 = 0;
          LODWORD(v437) = v42[329].i32[0];
          HIDWORD(v437) = 1065353216;
          v438 = v42[329].i32[1];
          *v269.i32 = (v413 * 0.003) * v415;
          if (*v269.i32 > 0.08)
          {
            *v269.i32 = 0.08;
          }

          v273 = vdupq_lane_s32(*v269.i8, 0);
          v274 = 4 * v415;
          v275 = 4 * v413;
          v276 = v387 * v388;
          *v269.i32 = v276;
          v270 = v400;
          v277 = 2;
          if (v266 != 5)
          {
            v277 = 3;
          }

          if (v266 == 4)
          {
            v277 = 0;
          }

          if ((v266 & 0xFE) == 0xALL)
          {
            v278 = 1;
          }

          else
          {
            v278 = v277;
          }

          v403 = v278;
          v279 = v276 >> 1;
          v280 = vsubq_f32(xmmword_240C11880, v273);
          v281 = vbslq_s8(vuzp1q_s32(vcgtq_f64(v382, vcvtq_f64_f32(*v280.f32)), vcgtq_f64(v382, vcvt_hight_f64_f32(v280))), v381, v280);
          v282 = 32 * v413;
          v283 = &dword_240C11000;
          do
          {
            v436 = xmmword_240C11880;
            v284 = v400;
            if (((1 << v266) & 0x3F00E) != 0)
            {
              if (v271)
              {
                goto LABEL_191;
              }

LABEL_285:
              v426[0] = v436;
              goto LABEL_191;
            }

            v285 = dword_240C83FC0[v271];
            v286 = v42[63].i64[1];
            v287 = *(v286 + 8 * (3 * v266 + v285) + 72);
            if ((v387 | v388) >= 2)
            {
              v436 = v281;
            }

            v288 = *(&v437 + v285);
            v289 = *(v286 + 40);
            v290 = v42[62].f32[1];
            v435[0] = 0uLL;
            v427 = 0uLL;
            if (v415)
            {
              v291 = 0;
              v292 = &v409->i8[4 * v408 * v285];
              v293 = v289 + 4 * v287;
              v294 = v290 * v400;
              v295 = 0.0;
              v296 = 0.0;
              v297 = 0.0;
              do
              {
                if (v413)
                {
                  v298 = 0;
                  v299 = 8 * v413;
                  do
                  {
                    if (v291 >= v415 || v298 >= v413)
                    {
                      if (v298 < v275)
                      {
                        v300 = 2 * (v291 >= v274);
                      }

                      else
                      {
                        v300 = 2 * (v291 >= v274) + 1;
                      }

                      v301 = *&v292[4 * v298] * ((v294 * *(v293 + 4 * v298)) * v288);
                      v302 = fabsf(v301);
                      v303 = (&v436 | (4 * v300));
                      v304 = rintf(v301);
                      if (v302 >= *v303)
                      {
                        v305 = v304;
                      }

                      else
                      {
                        v305 = 0.0;
                      }

                      v306 = vabds_f32(v301, v305);
                      v307 = fabsf(v304);
                      if (v302 < *v303)
                      {
                        v307 = 0.0;
                      }

                      if (!v271 && v305 == 0.0 && v427.f32[v300] < v306)
                      {
                        v427.f32[v300] = v306;
                      }

                      v296 = v296 + v306;
                      v297 = v297 + v307;
                      if (v305 != 0.0)
                      {
                        if ((v435[0].f32[v300] = v307 + v435[0].f32[v300], v291 >= 7 * v415) && v298 >= 7 * v413 || (v291 != 8 * v415 - 1 ? (_ZF = v299 == 1) : (_ZF = 1), _ZF ? (v309 = 0) : (v309 = 1), v298 >= v275 && (v309 & 1) == 0 && v291 >= v274))
                        {
                          v295 = v295 + v302;
                        }
                      }
                    }

                    ++v298;
                    --v299;
                  }

                  while (v299);
                }

                ++v291;
                v293 += v282;
                v292 += v282;
              }

              while (v291 != 8 * v415);
              v310 = v296 * 2.29427083;
              v311 = v310;
              v283 = &dword_240C11000;
            }

            else
            {
              v311 = 0.0;
              v297 = 0.0;
              v295 = 0.0;
            }

            v312 = v400;
            if (!v271)
            {
              v312 = v400;
              if ((v297 * 8.0) < *v269.i32)
              {
                v313 = 1;
                while (v435[0].f32[v313] != 0.0 || v427.f32[v313] <= 0.46)
                {
                  if (++v313 == 4)
                  {
                    v312 = v400;
                    goto LABEL_240;
                  }
                }

                v312 = v400 + 1;
LABEL_240:
                if (v435[0].f32[3] == 0.0 && v427.f32[3] > 0.46)
                {
                  v314 = v427.f32[3] * 0.9999 * v312 / v270;
                  v436.f32[3] = v314;
                  goto LABEL_255;
                }

                if (v435[0].f32[1] == 0.0)
                {
                  v315 = v427.f32[1];
                  if (v427.f32[1] > 0.46)
                  {
                    v316 = v427.f32[2];
LABEL_249:
                    if (v315 >= v316)
                    {
                      v316 = v315;
                    }

                    v317 = v316 * 0.9999 * v312 / v270;
                    v436.f32[1] = v317;
                    v436.f32[2] = v317;
                    goto LABEL_255;
                  }
                }

                if (v435[0].f32[2] == 0.0)
                {
                  v316 = v427.f32[2];
                  if (v427.f32[2] > 0.46)
                  {
                    v315 = v427.f32[1];
                    goto LABEL_249;
                  }
                }

                if (v435[0].f32[0] == 0.0 && v427.f32[0] > 0.46)
                {
                  v318 = v427.f32[0] * 0.9999 * v312 / v270;
                  v436.f32[0] = v318;
                }
              }
            }

LABEL_255:
            v319 = ((v435[0].f32[0] + v435[0].f32[1]) + v435[0].f32[2]) + v435[0].f32[3];
            v320 = v295 * flt_240C83EF0[v285];
            if (v320 >= (v319 + 1.0))
            {
              if (((v320 / (v319 + 1.0)) + v312) >= 255)
              {
                v312 = 255;
              }

              else
              {
                v312 = ((v320 / (v319 + 1.0)) + v312);
              }
            }

            if (v266 || v319 >= 11.0)
            {
              if (v266 >= 4u)
              {
                v321 = v297 * 2.29427083;
                v322 = dbl_240C83F60[3 * v403 + v285] * v321 + dbl_240C83F00[3 * v403 + v285] * v413 * v415 * 8.0 * 8.0;
                if (v322 < v311)
                {
                  v323 = (v311 / v322);
                  if (v323 >= 2)
                  {
                    v323 = 2;
                  }

                  v324 = v312 + (v323 & ~(v323 >> 31));
                  if (v324 >= 255)
                  {
                    v312 = 255;
                  }

                  else
                  {
                    v312 = v324;
                  }
                }
              }
            }

            else if (v312 < 255)
            {
              ++v312;
            }

            else
            {
              v312 = 255;
            }

            v325 = 1;
            v326 = (v279 + v435[0].f32[0]) / v276;
            do
            {
              if ((v279 + v435[0].f32[v325]) / v276 < v326)
              {
                v326 = (v279 + v435[0].f32[v325]) / v276;
              }

              ++v325;
            }

            while (v325 != 4);
            if (v326 >= 15)
            {
              v326 = 15;
            }

            if (!v271)
            {
              for (k = 1; k != 4; ++k)
              {
                v328 = v436.f32[k] + v326 * *(v283 + 370);
                v436.f32[k] = v328;
              }
            }

            v284 = v312 - v326;
            if (v312 / 2 > v284)
            {
              v284 = v312 / 2;
            }

            if (v284 <= 4)
            {
              v284 = 4;
            }

            if (!v271)
            {
              goto LABEL_285;
            }

LABEL_191:
            if (v284 > v272)
            {
              v272 = v284;
            }

            ++v271;
          }

          while (v271 != 3);
          v329 = 3 * v266;
LABEL_287:
          v330 = (v406 + 4 * v408);
          v268.n128_u32[0] = 1.0;
          sub_240BA4324(v42[63].i64[1], 1, v266, v413, v415, v426, v267, v272, v42[62].f32[1], v268, v269, v270, v330);
          v334 = v272;
          LODWORD(v335) = v408;
          v336 = v42[62].f32[0] / v272;
          if (v408)
          {
            v337 = 0;
            v338 = (*(v42[63].i64[1] + 32) + 4 * *(v42[63].i64[1] + 8 * v329 + 80));
            v339.i64[0] = 0x8000000080000000;
            v339.i64[1] = 0x8000000080000000;
            do
            {
              v340 = *v330++;
              v341 = vcvtq_f32_s32(v340);
              __asm { FMOV            V5.4S, #1.125 }

              v343 = vbslq_s8(vcgtq_f32(_Q5, vabsq_f32(v341)), vbicq_s8(vorrq_s8(vandq_s8(v341, v339), vdupq_n_s32(0x3F6E10E8u)), vceqzq_s32(v340)), vmlaq_f32(v341, vdupq_n_s32(0xBE147AE1), vrecpeq_f32(v341)));
              v344 = *v338++;
              *v267++ = vmulq_n_f32(vmulq_f32(v344, v343), v336);
              v337 += 4;
            }

            while (v337 < v408);
            v345 = 0;
            v346 = v409;
            v333 = *v384.i64;
            v347 = v392;
            do
            {
              v331 = v346[16 * v415 * v413];
              v332 = vmlaq_f32(*(v346 + 8 * v408), v331, v383);
              *v346 = vmlaq_f32(*v346, v331, v384);
              *(v346 + 8 * v408) = v332;
              v345 += 4;
              ++v346;
            }

            while (v345 < v408);
          }

          else
          {
            v347 = v392;
          }

          v348 = 0;
          v427.i64[0] = 0x200000000;
          v349 = v416;
          do
          {
            v350 = v427.i32[v348];
            v351 = 1316;
            if (v350)
            {
              v351 = 1317;
            }

            v331.n128_u32[0] = v42->u32[v351];
            v435[0] = xmmword_240C11AA0;
            v352 = v335 * v350;
            v353 = (v409 + 4 * v352);
            sub_240BA4324(v42[63].i64[1], v350, v349, v413, v415, v435, v353, v334, v42[62].f32[1], v331, v332, v333, (v406 + 4 * v352));
            sub_240BA446C(v349, v353, *(&v420 + v350) + 4 * v405, v404, v354, v355, v356, v357);
            ++v348;
            v335 = v408;
            v334 = v272;
          }

          while (v348 != 2);
          v358 = 0;
          *(v389 + 4 * v405) = v272;
          v359 = v424;
          v44 = v347;
          do
          {
            sub_240C10404(&v42[267], (v406 + 4 * v358 * v335), &v416, v424 + 11 * v358);
            v335 = v408;
            v360 = v359;
            for (m = v385; m; --m)
            {
              *v360++ += 4 * v408;
            }

            ++v358;
            v359 = (v359 + 88);
          }

          while (v358 != 3);
LABEL_302:
          v62 = v405 + 1;
          v396 += 32;
          v397 += 32;
          v398 += 32;
          v63 += 32;
        }

        while (v405 + 1 != v391);
LABEL_303:
        v59 = v376 + 1;
        v61 = v375 + 8;
        v377 += 256;
        v378 += 256;
        v379 += 256;
        v380 += 256;
      }

      while (v376 + 1 != (v374 + 7) >> 3);
LABEL_304:
      v43 = v371 + 1;
    }

    while (v371 + 1 != v369);
  }

  sub_240B38BD0(v418);
  sub_240B38B7C(v419);
}

void sub_240BA8880(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (&v10 + v5);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_240B2BA38((&v10 + v5), *(a4 + v5), *(a4 + v5 + 8), (*(a4 + v5 + 8) - *(a4 + v5)) >> 2);
      ++v6;
      v5 += 24;
    }

    while (v5 != 72);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_240B86FB8(&v11, *(a4 + 72), *(a4 + 80), (*(a4 + 80) - *(a4 + 72)) >> 2);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_240B28D90(&v14, *(a4 + 96), *(a4 + 104), *(a4 + 104) - *(a4 + 96));
    v17 = *(a4 + 120);
    sub_240B51508(&v14, byte_240C84890, &byte_240C84890[39], 0x27uLL);
    v17 = xmmword_240C11890;
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    for (i = 0; i != -72; i -= 24)
    {
      v9 = *(&v10 + i + 48);
      if (v9)
      {
        *(&v10 + i + 56) = v9;
        operator delete(v9);
      }
    }
  }

  else if (*(a1 + 48) <= 6 && a2[1] * *a2 >= vcvts_n_u32_f32(*a1, 0xAuLL))
  {
    operator new();
  }
}

void sub_240BA9170(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  MEMORY[0x245CCE590](v22, 0x1000C40DDE5C641, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

unint64_t sub_240BA9284(unint64_t result, unsigned __int8 *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = &a2[-v11];
    if (&a2[-v11] <= 2)
    {
      if (&a2[-v11] < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v99 = *v10;
        v100 = *v11;
        if (*(**a3 + 8 * v99) > *(**a3 + 8 * v100))
        {
          *v11 = v99;
          *v10 = v100;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v108 = (v11 + 1);
      v109 = *(v11 + 1);
      v110 = (v11 + 2);
      v111 = *(v11 + 2);
      v112 = **a3;
      v113 = *(v112 + 8 * v109);
      v114 = *v11;
      v115 = *(v112 + 8 * v111);
      if (v113 <= *(v112 + 8 * v114))
      {
        if (v115 > v113)
        {
          *v108 = v111;
          *v110 = v109;
          v112 = **a3;
          v116 = v11;
          v117 = (v11 + 1);
          result = v109;
          v167 = v109;
          if (*(v112 + 8 * v111) > *(v112 + 8 * v114))
          {
            goto LABEL_184;
          }

LABEL_186:
          v173 = *v10;
          if (*(v112 + 8 * v173) > *(v112 + 8 * v109))
          {
            *v110 = v173;
            *v10 = v167;
            v174 = *v110;
            v175 = *v108;
            if (*(**a3 + 8 * v174) > *(**a3 + 8 * v175))
            {
              *(v11 + 1) = v174;
              *(v11 + 2) = v175;
              v176 = *v11;
              if (*(**a3 + 8 * v174) > *(**a3 + 8 * v176))
              {
                *v11 = v174;
                *(v11 + 1) = v176;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v115 > v113)
        {
          v116 = v11;
          v117 = (v11 + 2);
          v109 = *v11;
          result = v109;
          goto LABEL_184;
        }

        *v11 = v109;
        *(v11 + 1) = v114;
        v112 = **a3;
        v116 = (v11 + 1);
        v117 = (v11 + 2);
        v109 = v114;
        result = v114;
        if (*(v112 + 8 * v111) > *(v112 + 8 * v114))
        {
LABEL_184:
          *v116 = v111;
          *v117 = v114;
          v112 = **a3;
          v167 = result;
          goto LABEL_186;
        }
      }

      v109 = v111;
      v167 = v111;
      goto LABEL_186;
    }

    if (v12 == 5)
    {

      return sub_240BA9E14(v11, (v11 + 1), (v11 + 2), (v11 + 3), a2 - 1, a3);
    }

LABEL_10:
    if (v12 <= 23)
    {
      v118 = v11 + 1;
      v120 = v11 == a2 || v118 == a2;
      if (a5)
      {
        if (!v120)
        {
          v121 = *a3;
          v122 = 1;
          v123 = v11;
          do
          {
            v124 = v123[1];
            v125 = *v123;
            v123 = v118;
            if (*(*v121 + 8 * v124) > *(*v121 + 8 * v125))
            {
              v126 = v122;
              LOBYTE(v127) = v125;
              while (1)
              {
                *(v11 + v126) = v127;
                v128 = v126 - 1;
                if (v126 == 1)
                {
                  break;
                }

                v127 = *(v11 + v126-- - 2);
                if (*(**a3 + 8 * v124) <= *(**a3 + 8 * v127))
                {
                  v129 = (v11 + v128);
                  goto LABEL_127;
                }
              }

              v129 = v11;
LABEL_127:
              *v129 = v124;
              v121 = *a3;
            }

            v118 = (v123 + 1);
            ++v122;
          }

          while (v123 + 1 != a2);
        }
      }

      else if (!v120)
      {
        v168 = *a3;
        do
        {
          v169 = v9[1];
          v170 = *v9;
          v9 = v118;
          if (*(*v168 + 8 * v169) > *(*v168 + 8 * v170))
          {
            v171 = v118;
            LOBYTE(v118) = v170;
            do
            {
              *v171 = v118;
              v118 = *(v171 - 2);
              --v171;
            }

            while (*(**a3 + 8 * v169) > *(**a3 + 8 * v118));
            *v171 = v169;
            v168 = *a3;
          }

          v118 = (v9 + 1);
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v130 = &a2[-v11 - 2] >> 1;
        v131 = v130;
        do
        {
          v132 = v131;
          if (v130 >= v131)
          {
            v133 = (2 * v131) | 1;
            v134 = (v11 + v133);
            v135 = *(v11 + v133);
            if (2 * v132 + 2 >= v12)
            {
              v136 = **a3;
            }

            else
            {
              v136 = **a3;
              result = *(v136 + 8 * v135);
              if (result > *(v136 + 8 * v134[1]))
              {
                LODWORD(v135) = *++v134;
                v133 = 2 * v132 + 2;
              }
            }

            v137 = (v11 + v132);
            v138 = *(v11 + v132);
            if (*(v136 + 8 * v135) <= *(v136 + 8 * v138))
            {
              do
              {
                v139 = v134;
                *v137 = v135;
                if (v130 < v133)
                {
                  break;
                }

                v140 = (2 * v133) | 1;
                v134 = (v11 + v140);
                v133 = 2 * v133 + 2;
                v135 = *(v11 + v140);
                if (v133 >= v12)
                {
                  v141 = **a3;
                  v133 = v140;
                }

                else
                {
                  v141 = **a3;
                  if (*(v141 + 8 * v135) <= *(v141 + 8 * v134[1]))
                  {
                    v133 = v140;
                  }

                  else
                  {
                    LODWORD(v135) = *++v134;
                  }
                }

                result = *(v141 + 8 * v135);
                v137 = v139;
              }

              while (result <= *(v141 + 8 * v138));
              *v139 = v138;
            }
          }

          v131 = v132 - 1;
        }

        while (v132);
        do
        {
          v142 = 0;
          v143 = *v11;
          v144 = v11;
          do
          {
            v145 = &v144[v142];
            v146 = &v144[v142 + 1];
            v147 = *v146;
            v148 = (2 * v142) | 1;
            v142 = 2 * v142 + 2;
            if (v142 >= v12)
            {
              v142 = v148;
            }

            else
            {
              v151 = v145[2];
              v149 = v145 + 2;
              v150 = v151;
              v152 = **a3;
              v153 = *(v152 + 8 * v147);
              result = *(v152 + 8 * v151);
              if (v153 <= result)
              {
                v142 = v148;
              }

              else
              {
                LOBYTE(v147) = v150;
                v146 = v149;
              }
            }

            *v144 = v147;
            v144 = v146;
          }

          while (v142 <= ((v12 - 2) >> 1));
          if (v146 == --a2)
          {
            *v146 = v143;
          }

          else
          {
            *v146 = *a2;
            *a2 = v143;
            v154 = &v146[-v11 - 1];
            if (&v146[-v11 + 1] >= 2)
            {
              v155 = (v11 + (v154 >> 1));
              v156 = *v155;
              v157 = *v146;
              if (*(**a3 + 8 * v156) > *(**a3 + 8 * v157))
              {
                v158 = v154 >> 1;
                do
                {
                  v159 = v155;
                  *v146 = v156;
                  if (!v158)
                  {
                    break;
                  }

                  v160 = v158 - 1;
                  v158 = (v158 - 1) >> 1;
                  v155 = (v11 + (v160 >> 1));
                  v156 = *v155;
                  v161 = **a3;
                  v162 = *(v161 + 8 * v156);
                  v163 = *(v161 + 8 * v157);
                  v146 = v159;
                }

                while (v162 > v163);
                *v159 = v157;
              }
            }
          }
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = (v11 + (v12 >> 1));
    v14 = **a3;
    v15 = *v10;
    v16 = *(v14 + 8 * v15);
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v11;
      v19 = *(v14 + 8 * v17);
      if (v19 <= *(v14 + 8 * v18))
      {
        if (v16 > v19)
        {
          *v13 = v15;
          *v10 = v17;
          v23 = *v13;
          v24 = *v11;
          if (*(**a3 + 8 * v23) > *(**a3 + 8 * v24))
          {
            *v11 = v23;
            *v13 = v24;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v11 = v15;
          goto LABEL_27;
        }

        *v11 = v17;
        *v13 = v18;
        v27 = *v10;
        if (*(**a3 + 8 * v27) > *(**a3 + 8 * v18))
        {
          *v13 = v27;
LABEL_27:
          *v10 = v18;
        }
      }

      v28 = v12 >> 1;
      v29 = (v12 >> 1) + v11;
      v32 = *(v29 - 1);
      v30 = (v29 - 1);
      v31 = v32;
      v33 = *(v11 + 1);
      v34 = **a3;
      v35 = *(v34 + 8 * v32);
      v36 = *(v34 + 8 * v33);
      v37 = *(a2 - 2);
      v38 = *(v34 + 8 * v37);
      if (v35 <= v36)
      {
        if (v38 > v35)
        {
          *v30 = v37;
          *(a2 - 2) = v31;
          v39 = *v30;
          v40 = *(v11 + 1);
          if (*(**a3 + 8 * v39) > *(**a3 + 8 * v40))
          {
            *(v11 + 1) = v39;
            *v30 = v40;
          }
        }
      }

      else
      {
        if (v38 > v35)
        {
          *(v11 + 1) = v37;
          goto LABEL_39;
        }

        *(v11 + 1) = v31;
        *v30 = v33;
        v42 = *(a2 - 2);
        if (*(**a3 + 8 * v42) > *(**a3 + 8 * v33))
        {
          *v30 = v42;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v43 = v28 + v11;
      v46 = *(v43 + 1);
      v44 = (v43 + 1);
      v45 = v46;
      v47 = *(v11 + 2);
      v48 = **a3;
      v49 = *(v48 + 8 * v46);
      v50 = *(v48 + 8 * v47);
      v51 = *(a2 - 3);
      v52 = *(v48 + 8 * v51);
      if (v49 <= v50)
      {
        if (v52 > v49)
        {
          *v44 = v51;
          *(a2 - 3) = v45;
          v53 = *v44;
          v54 = *(v11 + 2);
          if (*(**a3 + 8 * v53) > *(**a3 + 8 * v54))
          {
            *(v11 + 2) = v53;
            *v44 = v54;
          }
        }
      }

      else
      {
        if (v52 > v49)
        {
          *(v11 + 2) = v51;
          goto LABEL_48;
        }

        *(v11 + 2) = v45;
        *v44 = v47;
        v55 = *(a2 - 3);
        if (*(**a3 + 8 * v55) > *(**a3 + 8 * v47))
        {
          *v44 = v55;
LABEL_48:
          *(a2 - 3) = v47;
        }
      }

      v56 = *v13;
      v57 = *v30;
      v58 = **a3;
      v59 = *(v58 + 8 * v56);
      v60 = *(v58 + 8 * v57);
      v61 = *v44;
      v62 = *(v58 + 8 * v61);
      if (v59 <= v60)
      {
        if (v62 <= v59)
        {
          goto LABEL_56;
        }

        *v13 = v61;
        *v44 = v56;
        v66 = **a3;
        v67 = *(v66 + 8 * v61);
        v68 = *(v66 + 8 * v57);
        v44 = v13;
        LOBYTE(v56) = v57;
        if (v67 <= v68)
        {
          LOBYTE(v56) = v61;
          goto LABEL_56;
        }
      }

      else if (v62 <= v59)
      {
        *v30 = v56;
        *v13 = v57;
        v63 = **a3;
        v64 = *(v63 + 8 * v61);
        v65 = *(v63 + 8 * v57);
        v30 = v13;
        LOBYTE(v56) = v61;
        if (v64 <= v65)
        {
          LOBYTE(v56) = v57;
LABEL_56:
          v69 = *v11;
          *v11 = v56;
          *v13 = v69;
          goto LABEL_57;
        }
      }

      *v30 = v61;
      *v44 = v57;
      goto LABEL_56;
    }

    v20 = *v11;
    v21 = *v13;
    v22 = *(v14 + 8 * v20);
    if (v22 <= *(v14 + 8 * v21))
    {
      if (v16 > v22)
      {
        *v11 = v15;
        *v10 = v20;
        v25 = *v11;
        v26 = *v13;
        if (*(**a3 + 8 * v25) > *(**a3 + 8 * v26))
        {
          *v13 = v25;
          *v11 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v22)
    {
      *v13 = v15;
LABEL_36:
      *v10 = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v11 = v21;
    v41 = *v10;
    if (*(**a3 + 8 * v41) > *(**a3 + 8 * v21))
    {
      *v11 = v41;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v70 = *v11;
    v71 = **a3;
    if (a5)
    {
      v72 = *(v71 + 8 * v70);
LABEL_60:
      v73 = v11;
      do
      {
        v74 = v73;
        v76 = *++v73;
        v75 = v76;
      }

      while (*(v71 + 8 * v76) > v72);
      v77 = a2;
      if (v74 == v11)
      {
        v77 = a2;
        do
        {
          if (v73 >= v77)
          {
            break;
          }

          v79 = *--v77;
        }

        while (*(v71 + 8 * v79) <= v72);
      }

      else
      {
        do
        {
          v78 = *--v77;
        }

        while (*(v71 + 8 * v78) <= v72);
      }

      if (v73 < v77)
      {
        v80 = *v77;
        v81 = v73;
        v82 = v77;
        do
        {
          *v81 = v80;
          *v82 = v75;
          v83 = **a3;
          v84 = *(v83 + 8 * v70);
          do
          {
            v74 = v81;
            v85 = *++v81;
            v75 = v85;
          }

          while (*(v83 + 8 * v85) > v84);
          do
          {
            v86 = *--v82;
            v80 = v86;
          }

          while (*(v83 + 8 * v86) <= v84);
        }

        while (v81 < v82);
      }

      if (v74 != v11)
      {
        *v11 = *v74;
      }

      *v74 = v70;
      if (v73 < v77)
      {
        goto LABEL_79;
      }

      v87 = sub_240BA9FF0(v11, v74, a3);
      v11 = (v74 + 1);
      result = sub_240BA9FF0(v74 + 1, a2, a3);
      if (result)
      {
        a2 = v74;
        if (!v87)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v87)
      {
LABEL_79:
        result = sub_240BA9284(v9, v74, a3, a4, a5 & 1);
        a5 = 0;
        v11 = (v74 + 1);
      }
    }

    else
    {
      v72 = *(v71 + 8 * v70);
      if (*(v71 + 8 * *(v11 - 1)) > v72)
      {
        goto LABEL_60;
      }

      if (v72 <= *(v71 + 8 * *v10))
      {
        v89 = v11 + 1;
        do
        {
          v11 = v89;
          if (v89 >= a2)
          {
            break;
          }

          ++v89;
        }

        while (v72 <= *(v71 + 8 * *v11));
      }

      else
      {
        do
        {
          v88 = *++v11;
        }

        while (v72 <= *(v71 + 8 * v88));
      }

      v90 = a2;
      if (v11 < a2)
      {
        v90 = a2;
        do
        {
          v91 = *--v90;
        }

        while (v72 > *(v71 + 8 * v91));
      }

      if (v11 < v90)
      {
        v92 = *v11;
        v93 = *v90;
        do
        {
          *v11 = v93;
          *v90 = v92;
          v94 = **a3;
          v95 = *(v94 + 8 * v70);
          do
          {
            v96 = *++v11;
            v92 = v96;
          }

          while (v95 <= *(v94 + 8 * v96));
          do
          {
            v97 = *--v90;
            v93 = v97;
          }

          while (v95 > *(v94 + 8 * v97));
        }

        while (v11 < v90);
      }

      v98 = (v11 - 1);
      if ((v11 - 1) != v9)
      {
        *v9 = *v98;
      }

      a5 = 0;
      *v98 = v70;
    }
  }

  v101 = *(v11 + 1);
  v102 = *v11;
  v103 = **a3;
  v104 = *(v103 + 8 * v101);
  v105 = *(v103 + 8 * v102);
  v106 = *v10;
  v107 = *(v103 + 8 * v106);
  if (v104 <= v105)
  {
    if (v107 > v104)
    {
      *(v11 + 1) = v106;
      *v10 = v101;
      v165 = *(v11 + 1);
      v166 = *v11;
      if (*(**a3 + 8 * v165) > *(**a3 + 8 * v166))
      {
        *v11 = v165;
        *(v11 + 1) = v166;
      }
    }
  }

  else
  {
    if (v107 <= v104)
    {
      *v11 = v101;
      *(v11 + 1) = v102;
      v172 = *v10;
      if (*(**a3 + 8 * v172) <= *(**a3 + 8 * v102))
      {
        return result;
      }

      *(v11 + 1) = v172;
    }

    else
    {
      *v11 = v106;
    }

    *v10 = v102;
  }

  return result;
}

_BYTE *sub_240BA9E14(_BYTE *result, char *a2, char *a3, unsigned __int8 *a4, _BYTE *a5, uint64_t **a6)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *result;
  v9 = **a6;
  v10 = *(v9 + 8 * v6);
  v11 = *(v9 + 8 * v8);
  v12 = *a3;
  v13 = *(v9 + 8 * v12);
  if (v10 > v11)
  {
    if (v13 > v10)
    {
      *result = v12;
LABEL_9:
      *a3 = v8;
      v6 = v8;
      v7 = v8;
      goto LABEL_12;
    }

    *result = v6;
    *a2 = v8;
    v6 = *a3;
    if (*(**a6 + 8 * v6) > *(**a6 + 8 * v8))
    {
      *a2 = v6;
      goto LABEL_9;
    }

LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if (v13 <= v10)
  {
    v6 = *a3;
    v7 = *a3;
    goto LABEL_12;
  }

  *a2 = v12;
  *a3 = v6;
  v14 = *a2;
  v15 = *result;
  if (*(**a6 + 8 * v14) > *(**a6 + 8 * v15))
  {
    *result = v14;
    *a2 = v15;
    v6 = *a3;
    goto LABEL_11;
  }

LABEL_12:
  v16 = *a4;
  v17 = **a6;
  if (*(v17 + 8 * v16) > *(v17 + 8 * v6))
  {
    *a3 = v16;
    *a4 = v7;
    v18 = *a3;
    v19 = *a2;
    v17 = **a6;
    if (*(v17 + 8 * v18) > *(v17 + 8 * v19))
    {
      *a2 = v18;
      *a3 = v19;
      v20 = *a2;
      v21 = *result;
      v17 = **a6;
      if (*(v17 + 8 * v20) > *(v17 + 8 * v21))
      {
        *result = v20;
        *a2 = v21;
        v17 = **a6;
      }
    }
  }

  v22 = *a5;
  v23 = *a4;
  if (*(v17 + 8 * v22) > *(v17 + 8 * v23))
  {
    *a4 = v22;
    *a5 = v23;
    v24 = *a4;
    v25 = *a3;
    if (*(**a6 + 8 * v24) > *(**a6 + 8 * v25))
    {
      *a3 = v24;
      *a4 = v25;
      v26 = *a3;
      v27 = *a2;
      if (*(**a6 + 8 * v26) > *(**a6 + 8 * v27))
      {
        *a2 = v26;
        *a3 = v27;
        v28 = *a2;
        v29 = *result;
        if (*(**a6 + 8 * v28) > *(**a6 + 8 * v29))
        {
          *result = v28;
          *a2 = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_240BA9FF0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v4 == 3)
    {
      v7 = a1[1];
      v8 = *a1;
      v9 = **a3;
      v10 = *(v9 + 8 * v7);
      v11 = *(v9 + 8 * v8);
      v12 = *(a2 - 1);
      v13 = *(v9 + 8 * v12);
      if (v10 <= v11)
      {
        if (v13 > v10)
        {
          a1[1] = v12;
          *(a2 - 1) = v7;
          v37 = a1[1];
          v38 = *a1;
          if (*(**a3 + 8 * v37) > *(**a3 + 8 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v13 <= v10)
      {
        *a1 = v7;
        a1[1] = v8;
        v54 = *(a2 - 1);
        if (*(**a3 + 8 * v54) <= *(**a3 + 8 * v8))
        {
          return 1;
        }

        a1[1] = v54;
      }

      else
      {
        *a1 = v12;
      }

      *(a2 - 1) = v8;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      sub_240BA9E14(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v26 = a1 + 1;
    v27 = a1[1];
    v28 = a1 + 2;
    v29 = a1[2];
    v30 = **a3;
    v31 = *(v30 + 8 * v27);
    v32 = *a1;
    v33 = *(v30 + 8 * v29);
    if (v31 <= *(v30 + 8 * v32))
    {
      if (v33 > v31)
      {
        *v26 = v29;
        *v28 = v27;
        v30 = **a3;
        v34 = a1;
        v35 = a1 + 1;
        v36 = v27;
        v53 = v27;
        if (*(v30 + 8 * v29) <= *(v30 + 8 * v32))
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v33 > v31)
      {
        v34 = a1;
        v35 = a1 + 2;
        v27 = *a1;
        v36 = *a1;
LABEL_45:
        *v34 = v29;
        *v35 = v32;
        v30 = **a3;
        v53 = v36;
LABEL_47:
        v55 = *(a2 - 1);
        if (*(v30 + 8 * v55) > *(v30 + 8 * v27))
        {
          *v28 = v55;
          *(a2 - 1) = v53;
          v56 = *v28;
          v57 = *v26;
          if (*(**a3 + 8 * v56) > *(**a3 + 8 * v57))
          {
            a1[1] = v56;
            a1[2] = v57;
            v58 = *a1;
            if (*(**a3 + 8 * v56) > *(**a3 + 8 * v58))
            {
              *a1 = v56;
              a1[1] = v58;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v32;
      v30 = **a3;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v27 = v32;
      v36 = v32;
      if (*(v30 + 8 * v29) > *(v30 + 8 * v32))
      {
        goto LABEL_45;
      }
    }

    v27 = v29;
    v53 = v29;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(**a3 + 8 * v5) > *(**a3 + 8 * v6))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v15 = a1 + 2;
  v14 = a1[2];
  v16 = a1[1];
  v17 = **a3;
  v18 = *(v17 + 8 * v16);
  v19 = *a1;
  v20 = *(v17 + 8 * v14);
  if (v18 <= *(v17 + 8 * v19))
  {
    if (v20 <= v18)
    {
      goto LABEL_26;
    }

    a1[1] = v14;
    *v15 = v16;
    v39 = **a3;
    v24 = *(v39 + 8 * v14);
    v25 = *(v39 + 8 * v19);
    v21 = a1;
    v22 = a1 + 1;
LABEL_24:
    if (v24 <= v25)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v21 = a1;
  v22 = a1 + 2;
  if (v20 <= v18)
  {
    *a1 = v16;
    a1[1] = v19;
    v23 = **a3;
    v24 = *(v23 + 8 * v14);
    v25 = *(v23 + 8 * v19);
    v21 = a1 + 1;
    v22 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v21 = v14;
  *v22 = v19;
LABEL_26:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = *a3;
  for (i = 3; ; ++i)
  {
    v44 = *v40;
    v45 = *v15;
    if (*(*v42 + 8 * v44) > *(*v42 + 8 * v45))
    {
      break;
    }

LABEL_36:
    v15 = v40;
    if (++v40 == a2)
    {
      return 1;
    }
  }

  v46 = i;
  LOBYTE(v47) = v45;
  while (1)
  {
    a1[v46] = v47;
    v48 = v46 - 1;
    if (v46 == 1)
    {
      break;
    }

    v47 = a1[v46 - 2];
    v49 = **a3;
    v50 = *(v49 + 8 * v44);
    v51 = *(v49 + 8 * v47);
    v46 = v48;
    if (v50 <= v51)
    {
      v52 = &a1[v48];
      goto LABEL_34;
    }
  }

  v52 = a1;
LABEL_34:
  *v52 = v44;
  if (++v41 != 8)
  {
    v42 = *a3;
    goto LABEL_36;
  }

  return v40 + 1 == a2;
}

uint64_t sub_240BAA3B8(unsigned int *a1, unsigned int *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  sub_240B23590(&v65, v4, v5);
  v6 = v69;
  if (!v69)
  {
    v61 = v65;
    v7 = v67;
    v67 = 0;
    v62 = v66;
    v63 = v7;
    v64 = v68;
    if (a1[1] && *a1)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        memcpy(v9, (*(a1 + 3) + *(a1 + 2) * v8++), 4 * *a1);
        v9 += v62;
      }

      while (v8 < a1[1]);
    }

    sub_240C107A4(&v56, &v61, 2uLL);
    v6 = v60;
    if (!v60)
    {
      v61 = v56;
      v10 = v58;
      v58 = 0;
      v11 = v59;
      v62 = v57;
      v63 = v10;
      if (v7)
      {
        atomic_fetch_add(&qword_27E519020, -*(v7 - 3));
        free(*(v7 - 4));
      }

      v64 = v11;
      sub_240B23590(&v52, v61, DWORD1(v61));
      v6 = v55;
      if (!v55)
      {
        v13 = v53;
        v12 = v54;
        v54 = 0;
        sub_240BAA830(&v61, v53, v12);
        v14 = a2[1];
        if (v14)
        {
          v15 = 0;
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          v19 = *(a1 + 2);
          v18 = *(a1 + 3);
          v20 = -5;
          v21 = *a2;
          do
          {
            v22 = 0;
            v23 = v16 + v17 * v15;
            v71 = 0uLL;
            memset(v72, 0, sizeof(v72));
            v24 = v20;
            memset(v70, 0, sizeof(v70));
            do
            {
              v25 = v24 & ~(v24 >> 63);
              if (v25 >= v5)
              {
                v25 = v5 - 1;
              }

              *(v70 + v22) = v18 + v19 * v25;
              v22 += 8;
              ++v24;
            }

            while (v22 != 96);
            if (v21)
            {
              v26 = 0;
              for (i = 0; i != v21; ++i)
              {
                v28 = 0;
                v29 = 3.4028e38;
                v30 = 1.1755e-38;
                v31 = &v71 + 1;
                do
                {
                  v32 = v28;
                  v33 = *v31;
                  v34 = v26;
                  v35 = 2;
                  do
                  {
                    if (v34 >= v4)
                    {
                      v36 = v4 - 1;
                    }

                    else
                    {
                      v36 = v34;
                    }

                    v37 = *(v33 + 4 * v36);
                    if (v37 < v29)
                    {
                      v29 = *(v33 + 4 * v36);
                    }

                    if (v30 < v37)
                    {
                      v30 = *(v33 + 4 * v36);
                    }

                    ++v34;
                    --v35;
                  }

                  while (v35);
                  v28 = 1;
                  v31 = v72;
                }

                while ((v32 & 1) == 0);
                v38 = 0;
                v39 = 0.0;
                v40 = &dword_240C848E0;
                do
                {
                  v41 = -5;
                  v42 = v40;
                  do
                  {
                    v43 = (v26 + v41) & ~((v26 + v41) >> 63);
                    if (v43 >= v4)
                    {
                      v43 = v4 - 1;
                    }

                    v44 = *v42++;
                    v39 = v39 + (*(*(v70 + v38) + 4 * v43) * v44);
                    ++v41;
                  }

                  while (v41 != 7);
                  ++v38;
                  v40 += 12;
                }

                while (v38 != 12);
                *(v23 + 4 * i) = v39;
                v45 = *(v12 + v13 * v15 + 4 * i);
                v46 = v29 - v45;
                if (v39 < v46 || (v46 = v30 + v45, v39 > (v30 + v45)))
                {
                  *(v23 + 4 * i) = v46;
                }

                v26 += 2;
              }
            }

            ++v15;
            v20 += 2;
          }

          while (v15 != v14);
        }

        if (!v12 || (atomic_fetch_add(&qword_27E519020, -*(v12 - 24)), free(*(v12 - 32)), !v55))
        {
          v47 = v54;
          v54 = 0;
          if (v47)
          {
            atomic_fetch_add(&qword_27E519020, -*(v47 - 24));
            free(*(v47 - 32));
          }
        }

        v6 = 0;
      }

      if (!v60)
      {
        v48 = v58;
        v58 = 0;
        if (v48)
        {
          atomic_fetch_add(&qword_27E519020, -*(v48 - 3));
          free(*(v48 - 4));
        }
      }
    }

    v49 = v63;
    v63 = 0;
    if (v49)
    {
      atomic_fetch_add(&qword_27E519020, -*(v49 - 3));
      free(*(v49 - 4));
    }

    if (!v69)
    {
      v50 = v67;
      v67 = 0;
      if (v50)
      {
        atomic_fetch_add(&qword_27E519020, -*(v50 - 3));
        free(*(v50 - 4));
      }
    }
  }

  return v6;
}

void sub_240BAA78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  if (!a20 && a18)
  {
    atomic_fetch_add(&qword_27E519020, -*(a18 - 24));
    free(*(a18 - 32));
  }

  if (a24)
  {
    atomic_fetch_add(&qword_27E519020, -*(a24 - 24));
    free(*(a24 - 32));
  }

  if (!a32)
  {
    if (a30)
    {
      atomic_fetch_add(&qword_27E519020, -*(a30 - 24));
      free(*(a30 - 32));
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_240BAA830(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 4);
  if (v3)
  {
    v4 = 0;
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = *result;
    v8 = v5;
    do
    {
      if (v4)
      {
        v9 = v6 * (v4 - 1);
      }

      else
      {
        v9 = 0;
      }

      v10 = v4 + 1;
      if (v7)
      {
        v11 = 0;
        v12 = v5 + v9;
        v13 = v6 * v4;
        if (v10 < v3)
        {
          v13 = v6 * v10;
        }

        v14 = v5 + v13;
        result = 1;
        do
        {
          v15 = (v8 + v11);
          v16 = *(v8 + v11);
          v17 = v16;
          if (v11)
          {
            v17 = *(v15 - 1);
          }

          if (result < v7)
          {
            ++v15;
          }

          v18 = *v15;
          v19 = *(v12 + v11);
          v20 = *(v14 + v11);
          v21 = vabds_f32(v16, v17);
          *&v30 = 3.4028e38;
          v31 = 3.4028e38;
          v22 = 3.4028e38;
          if (v21 < 3.4028e38)
          {
            v31 = v21;
            v22 = v21;
          }

          v23 = vabds_f32(v16, v18);
          v24 = 3.4028e38;
          if (v23 < 3.4028e38)
          {
            if (v22 <= v23)
            {
              v25 = &v30;
            }

            else
            {
              *&v30 = v22;
              v25 = &v31;
            }

            *v25 = v23;
            v24 = *&v30;
          }

          v26 = vabds_f32(v16, v19);
          if (v24 > v26)
          {
            if (v31 <= v26)
            {
              v27 = &v30;
            }

            else
            {
              *&v30 = v31;
              v27 = &v31;
            }

            *v27 = v26;
            v24 = *&v30;
          }

          v28 = vabds_f32(v16, v20);
          if (v24 > v28)
          {
            if (v31 <= v28)
            {
              v29 = &v30;
            }

            else
            {
              *&v30 = v31;
              v29 = &v31;
            }

            *v29 = v28;
            v24 = *&v30;
          }

          *(a3 + v11) = v24;
          v11 += 4;
          ++result;
        }

        while (4 * v7 != v11);
      }

      a3 += a2;
      v8 += v6;
      v4 = v10;
    }

    while (v10 != v3);
  }

  return result;
}

unsigned int *sub_240BAA994(unsigned int *result, unsigned int *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    v7 = *a2;
    v9 = a2 + 4;
    v8 = *(a2 + 2);
    v31 = *(v9 + 1);
    do
    {
      if (v3 <= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v3;
      }

      if (v7)
      {
        v11 = 0;
        if (2 * v4 <= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = 2 * v4;
        }

        v13 = v12 - 4;
        v14 = 2 * v4 + 6;
        if (v14 >= v6)
        {
          v14 = v6;
        }

        v15 = *(result + 2);
        v16 = *(result + 3) + v15 * (v10 - 4);
        do
        {
          if (2 * v11 <= 4)
          {
            v17 = 4;
          }

          else
          {
            v17 = 2 * v11;
          }

          v18 = 2 * v11 + 6;
          if (v18 >= v5)
          {
            v18 = v5;
          }

          v19 = 0.0;
          if (v13 < v14)
          {
            v20 = v17 - 4;
            v21 = v16;
            v22 = v13;
            do
            {
              if (v20 < v18)
              {
                v23 = v4 - v22 / 2;
                v24 = v23 - 3;
                if (v22)
                {
                  v25 = &unk_240C84C4C;
                }

                else
                {
                  v25 = &unk_240C84B20;
                }

                v26 = 20 * v23;
                v27 = v20;
                do
                {
                  v28 = 0.0;
                  if (v24 >= 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v29 = v11 - v27 / 2;
                    if ((v29 - 3) >= 0xFFFFFFFFFFFFFFFBLL)
                    {
                      if ((v27 & 1 & v22) != 0)
                      {
                        v30 = &unk_240C84B84;
                      }

                      else
                      {
                        v30 = &unk_240C84BE8;
                      }

                      if ((v27 & 1) == 0)
                      {
                        v30 = v25;
                      }

                      v28 = *&v30[4 * v29 + 48 + v26];
                    }
                  }

                  v19 = v19 + v28 * *(v21 + 4 * v27++);
                }

                while (v27 < v18);
              }

              ++v22;
              v21 += v15;
            }

            while (v22 < v14);
          }

          *(v31 + v8 * v4 + 4 * v11++) = v19;
        }

        while (v11 != v7);
      }

      ++v4;
      v3 += 2;
    }

    while (v4 != v2);
  }

  return result;
}

unsigned int *sub_240BAAB48(unsigned int *result, unsigned int *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1];
    v6 = *a2;
    v8 = *(result + 2);
    v7 = *(result + 3);
    result = &unk_240C84B20;
    do
    {
      if (v6)
      {
        v9 = 0;
        if (v3)
        {
          v10 = &unk_240C84C4C;
        }

        else
        {
          v10 = &unk_240C84B20;
        }

        v11 = (v3 >> 1) - 2;
        v12 = *(a2 + 3) + *(a2 + 2) * v3;
        do
        {
          v13 = 0;
          v14 = 3.4028e38;
          v15 = 1.1755e-38;
          do
          {
            v16 = (v11 + v13) & ~((v11 + v13) >> 63);
            if (v16 >= v5)
            {
              v16 = v5 - 1;
            }

            v17 = v7 + v8 * v16;
            v18 = (v9 >> 1) - 2;
            v19 = 5;
            do
            {
              v20 = v18 & ~(v18 >> 63);
              if (v20 >= v4)
              {
                v20 = v4 - 1;
              }

              v21 = *(v17 + 4 * v20);
              if (v21 < v14)
              {
                v14 = *(v17 + 4 * v20);
              }

              if (v15 < v21)
              {
                v15 = *(v17 + 4 * v20);
              }

              ++v18;
              --v19;
            }

            while (v19);
            ++v13;
          }

          while (v13 != 5);
          v22 = 0;
          if ((v3 & 1 & v9) != 0)
          {
            v23 = &unk_240C84B84;
          }

          else
          {
            v23 = &unk_240C84BE8;
          }

          if ((v9 & 1) == 0)
          {
            v23 = v10;
          }

          v24 = 0.0;
          do
          {
            v25 = 0;
            v26 = (v11 + v22) & ~((v11 + v22) >> 63);
            if (v26 >= v5)
            {
              v26 = v5 - 1;
            }

            v27 = v7 + v8 * v26;
            v28 = (v9 >> 1) - 2;
            do
            {
              v29 = v28 & ~(v28 >> 63);
              if (v29 >= v4)
              {
                v29 = v4 - 1;
              }

              v24 = v24 + (*(v27 + 4 * v29) * *&v23[v25]);
              v25 += 4;
              ++v28;
            }

            while (v25 != 20);
            ++v22;
            v23 += 20;
          }

          while (v22 != 5);
          *(v12 + 4 * v9) = v24;
          if (v24 < v14)
          {
            *(v12 + 4 * v9) = v14;
            v24 = v14;
          }

          if (v24 > v15)
          {
            *(v12 + 4 * v9) = v15;
          }

          ++v9;
        }

        while (v9 != v6);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_240BAACE4(uint64_t a1, unsigned int *a2, uint64_t a3, float a4)
{
  v8 = *a2;
  v9 = a2[1];
  sub_240B23590(&v26, *a2, v9);
  if (v30)
  {
    *(a1 + 40) = v30;
  }

  else
  {
    v10 = v27;
    v11 = v28;
    v12 = v29;
    if (v9)
    {
      v13 = 0;
      v15 = *(a2 + 2);
      v14 = *(a2 + 3);
      v16 = v28;
      v18 = *(a3 + 16);
      v17 = *(a3 + 24);
      do
      {
        v19 = v14;
        v20 = v17;
        v21 = v16;
        v22 = v8;
        if (v8)
        {
          do
          {
            v23 = *v19++;
            v24 = v23;
            v25 = *v20++;
            *v21++ = v24 + (v25 * a4);
            --v22;
          }

          while (v22);
        }

        ++v13;
        v16 = (v16 + v10);
        v17 = (v17 + v18);
        v14 = (v14 + v15);
      }

      while (v13 != v9);
    }

    *(a1 + 40) = 0;
    *a1 = v26;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
  }
}

uint64_t sub_240BAADCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = a5[1];
  if (v5)
  {
    v6 = 0;
    v7 = *a5;
    v9 = *(a5 + 2);
    v8 = *(a5 + 3);
    v10 = a2 - result - 4;
    do
    {
      if (v7)
      {
        v11 = 0;
        v12 = v8 + v9 * v6;
        v13 = v10;
        do
        {
          v14 = *(v12 + 4 * v11);
          v15 = *(a2 + v6 * result + 4 * v11);
          v16 = -1;
          v17 = v13;
          v18 = v15;
          do
          {
            v19 = v16 + v6;
            v20 = -1;
            v21 = v17;
            do
            {
              if (v11 + v20 >= 0 && (v19 & 0x8000000000000000) == 0 && v11 + v20 < v7 && v19 < v5)
              {
                if (*v21 < v18)
                {
                  v18 = *v21;
                }

                if (v15 < *v21)
                {
                  v15 = *v21;
                }
              }

              ++v20;
              ++v21;
            }

            while (v20 != 2);
            ++v16;
            v17 = (v17 + result);
          }

          while (v16 != 2);
          v22 = *(a4 + v6 * a3 + 4 * v11) + *(a4 + v6 * a3 + 4 * v11);
          v23 = v18 - v22;
          v24 = v15 + v22;
          if (v14 >= v23)
          {
            v25 = v14 <= v24;
          }

          else
          {
            v14 = v23;
            v25 = 0;
          }

          if (!v25)
          {
            if (v14 > v24)
            {
              v14 = v24;
            }

            *(v12 + 4 * v11) = v14;
          }

          ++v11;
          v13 += 4;
        }

        while (v11 != v7);
      }

      ++v6;
      v10 += result;
    }

    while (v6 != v5);
  }

  return result;
}

BOOL sub_240BAAED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  v11[0] = a3;
  v11[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v11, sub_240BAB034, sub_240BAB3F8, 0, a2) != 0;
  }

  sub_240BAB034(v11, 1uLL, a3, a4, a5, a6, a7, a8);
  for (i = 0; i != v8; ++i)
  {
    sub_240BAB3F8(v11, i, 0);
  }

  return 0;
}

void sub_240BAAF84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BAAFD8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240BAAFD8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 120)
  {
    sub_240B22320((i - 16));
    sub_240B22320((i - 56));
    sub_240B22320((i - 96));
  }

  *(a1 + 8) = a2;
}

uint64_t sub_240BAB034(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = **a1;
  *(v10 + 112) = 396288;
  if ((396288 * a2) >> 62)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_240AE3FA8(1585152 * a2, a2, a3, a4, a5, a6, a7, a8);
  }

  v41 = 0;
  v42 = 0uLL;
  sub_240B3ABD8((v10 + 120), v11);
  *(v10 + 128) = 0uLL;
  sub_240B38BD0(&v41);
  v19 = 0;
  *(v10 + 144) = 0x10000;
  if ((a2 & 0xC00000000000) == 0)
  {
    v19 = sub_240AE3FA8(a2 << 18, v12, v13, v14, v15, v16, v17, v18);
  }

  v41 = 0;
  v42 = 0uLL;
  v20 = *(v10 + 152);
  *(v10 + 152) = v19;
  if (v20)
  {
    v21 = *(v10 + 160);
    if (v21)
    {
      v21(*(v10 + 168), *(v20 - 16));
    }

    else
    {
      free(*(v20 - 16));
    }
  }

  *(v10 + 160) = v42;
  sub_240B786A0(&v41);
  v29 = v9[1];
  v30 = *v29;
  v31 = v29[1];
  v32 = 0xEEEEEEEEEEEEEEEFLL * ((v31 - *v29) >> 3);
  v33 = a2 - v32;
  if (a2 <= v32)
  {
    if (a2 < v32)
    {
      sub_240BAAFD8(v9[1], v30 + 120 * a2);
    }
  }

  else
  {
    v34 = v29[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v34 - v31) >> 3) < v33)
    {
      if (a2 <= 0x222222222222222)
      {
        v35 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - v30) >> 3);
        v36 = 2 * v35;
        if (2 * v35 <= a2)
        {
          v36 = a2;
        }

        if (v35 >= 0x111111111111111)
        {
          v37 = 0x222222222222222;
        }

        else
        {
          v37 = v36;
        }

        if (v37 <= 0x222222222222222)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(v29[1], 120 * ((120 * v33 - 120) / 0x78) + 120);
    v29[1] = v31 + 120 * ((120 * v33 - 120) / 0x78) + 120;
  }

  v38 = v9[2];
  if ((347136 * a2) >> 62)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_240AE3FA8(1388544 * a2, v22, v23, v24, v25, v26, v27, v28);
  }

  v41 = 0;
  v42 = 0uLL;
  sub_240B3ABD8((v38 + 40), v39);
  *(v38 + 48) = v42;
  sub_240B38BD0(&v41);
  return 0;
}

void sub_240BAB3F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v358 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if (v4)
  {
    return;
  }

  v5 = *(v3 + 16);
  v6 = (*(*(v3 + 8) + 64) + 7) >> 3;
  v7.i64[0] = a2 % v6;
  v7.i64[1] = a2 / v6;
  v8 = vshlq_n_s64(v7, 3uLL);
  v9 = vaddq_s64(v8, vdupq_n_s64(8uLL));
  v10 = vsubq_s64(vbslq_s8(vcgtq_u64(v9, *(*(v3 + 8) + 64)), *(*(v3 + 8) + 64), v9), v8);
  v275 = v8;
  v329 = v8;
  v330 = v10;
  v277 = v3;
  if (*(v5 + 48) <= 3)
  {
    v326 = v10;
    sub_240B8A5F0(*(v3 + 24), &v329, **(v3 + 32), *(v3 + 40), *(v3 + 48), 0, 0, 0, 0, a3, *(v3 + 56));
    v3 = v277;
    v10 = v326;
  }

  v11 = v10.i64[1];
  v316 = v10.u64[1];
  v318 = v10.i64[0];
  v12 = *(v3 + 64);
  v307 = *(v3 + 72);
  v13 = *v12;
  if (*(*v12 + 48) >= 6)
  {
    if (v10.i64[1])
    {
      v15 = v10.i64[1];
      v14 = v10.i64[0];
      if (v10.i64[0] <= 1uLL)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10.i64[0];
      }

      v10.i32[1] = v275.i32[1];
      v17 = v275.i64[1];
      do
      {
        if (v14)
        {
          memset((*(v307 + 24) + *(v307 + 16) * v17 + v275.i64[0]), 1, v16);
          v14 = v318;
        }

        ++v17;
        --v15;
      }

      while (v15);
    }

    goto LABEL_141;
  }

  v18 = *(v3 + 56);
  v19 = *v13;
  v323 = (*(v12 + 15) + 4 * *(v12 + 14) * a3);
  v321 = &v323[49152];
  v20 = *(v18 + 100);
  *&v353 = *(v18 + 104) + (*(*(v18 + 24) + *(v18 + 16) * (v275.i64[1] >> 3) + (v275.i64[0] >> 3)) * v20);
  DWORD1(v353) = 0;
  *(&v353 + 2) = *(v18 + 108) + (*(*(v18 + 64) + *(v18 + 56) * (v275.i64[1] >> 3) + (v275.i64[0] >> 3)) * v20);
  v10 = 0uLL;
  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v347 = 0u;
  v348 = 0u;
  v345 = 0u;
  v346 = 0u;
  v343 = 0u;
  v344 = 0u;
  v341 = 0u;
  v342 = 0u;
  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  v327 = v12;
  v312 = v13;
  if (v11)
  {
    v21 = 0;
    if (v19 >= 12.0)
    {
      v23 = 1.0;
    }

    else
    {
      v22 = 8.0 / (v19 + -4.0);
      v23 = v22;
    }

    if (v318 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v318;
    }

    v298 = v24;
    v25 = v318;
    do
    {
      if (v25)
      {
        v26 = 0;
        v314 = v21 + v275.i64[1];
        v27 = 8 * (v21 + v275.i64[1]);
        v295 = v21;
        v309 = 8 * v21;
        do
        {
          v28 = 0;
          v29 = *(v312 + 48);
          v30 = &qword_240C82F38;
          v31 = 160;
          v32 = 1.0e30;
          do
          {
            if (*(v30 - 1) >= v29)
            {
              v33 = *(v30 - 2);
              v34 = *v30;
              v333.i32[0] = v33;
              v333.i8[4] = 1;
              v35 = v34 / 0.8;
              if (v19 >= 5.0 || v33 - 1 > 1)
              {
                v36 = v19 > 4.0 && v33 >= 3;
                if (v36)
                {
                  v35 = v35 + (v23 * 0.5);
                }
              }

              else
              {
                v35 = v35 + ((((5.0 - v19) / 5.0) * ((5.0 - v19) / 5.0)) * -0.4);
              }

              v37 = sub_240B73474(&v333, 8 * (v26 + v275.i64[0]), v27, v327 + 2, &v353, v323, v321, v35);
              if (v32 > v37)
              {
                v28 = v33;
                v32 = v37;
              }
            }

            v30 += 2;
            v31 -= 16;
          }

          while (v31);
          v38 = v32;
          sub_240B4541C(v307, v26 + v275.i64[0], v314, v28, 0);
          *(&v337 + v26 + v309) = ((-0.4 / (v19 + 1.4)) + 1.0) * v38;
          ++v26;
        }

        while (v26 != v298);
        v25 = v318;
        v12 = v327;
        v13 = v312;
        v21 = v295;
      }

      ++v21;
    }

    while (v21 < v316);
    v39 = v316;
    v10 = 0uLL;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0;
  v335 = v10;
  v336 = v10;
  v333 = v10;
  v334 = v10;
  v287 = *(v13 + 56);
  do
  {
    v41 = &byte_240C82FD0[v40];
    if (*(v13 + 56) > byte_240C82FD0[v40 + 5])
    {
      goto LABEL_115;
    }

    v42 = *v41;
    v43 = byte_240C87EBB[v42];
    if (v43 - 1 >= v39)
    {
      goto LABEL_115;
    }

    v44 = 0;
    v45 = v41[4];
    v46 = *(v41 + 2);
    v47 = byte_240C87EA0[v42];
    v48 = v47 - 1;
    if (v47 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = byte_240C87EA0[v42];
    }

    if (v43 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = byte_240C87EBB[v42];
    }

    v51 = 32 * v43;
    v52 = 8 * v43;
    v288 = v50;
    v53 = 32 * v50;
    v54 = &v337;
    v55 = &v333;
    v56 = byte_240C87EBB[v42];
    v286 = v56;
    __len = v49;
    v279 = v53;
    v280 = 4 * v49;
    v284 = 8 * v43;
    v285 = 32 * v43;
    do
    {
      v57 = v44;
      v44 = v56;
      if (v48 >= v318)
      {
        goto LABEL_114;
      }

      v291 = v56;
      v58 = 0;
      v59 = v42 == 10;
      v60 = v57 + 7;
      v61 = (v57 & 1) != 0 && v42 == 7;
      v62 = !v61;
      v292 = v62;
      v63 = (v57 & 3) != 0 && v42 == 11;
      v64 = v63;
      v310 = v64;
      v302 = v57 + 3;
      v296 = v57 + 1;
      v299 = v57;
      if (v63)
      {
        v59 = 1;
      }

      v305 = v59;
      v282 = v57 + v275.i64[1];
      v283 = 8 * (v57 + v275.i64[1]);
      v281 = (&v337 + 2 * v57);
      v289 = v55;
      v290 = v54;
      v65 = v47;
      v66 = v318;
      do
      {
        v67 = v58;
        v58 = v65;
        if (v67 + 7 >= v66 || v60 >= v316)
        {
          if ((v310 & 1) != 0 || v42 == 10 && (v67 & 3) != 0)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (*(v312 + 56) <= 3uLL && v42 == 20)
          {
            if (((v67 | v57) & 7) != 0)
            {
              goto LABEL_103;
            }

            sub_240B78008(8uLL, 1, v275.i64[0], v275.i64[1], v67, v57, v12 + 2, &v353, v46, 2.26, v307, &v337, v323, v321);
            goto LABEL_91;
          }

          if (v305)
          {
            goto LABEL_103;
          }
        }

        if (v67 + 3 < v318 && v302 < v316)
        {
          if (v42 == 11)
          {
            if (((v67 | v57) & 3) != 0)
            {
              goto LABEL_103;
            }

            sub_240B78008(4uLL, v287 < 4, v275.i64[0], v275.i64[1], v67, v57, v12 + 2, &v353, v46, 1.5, v307, &v337, v323, v321);
LABEL_91:
            v12 = v327;
LABEL_92:
            v57 = v299;
            goto LABEL_103;
          }

          if (v42 == 10)
          {
            goto LABEL_103;
          }
        }

        if (v67 + 1 >= v318 || v296 >= v316)
        {
          if (!v292 || v42 == 6 && (v67 & 1) != 0)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v42 == 6)
          {
            goto LABEL_103;
          }

          if (v42 == 7)
          {
            if ((v67 | v57))
            {
              goto LABEL_103;
            }

            sub_240B78008(2uLL, 1, v275.i64[0], v275.i64[1], v67, v57, v12 + 2, &v353, v46, 1.35, v307, &v337, v323, v321);
            goto LABEL_91;
          }
        }

        v70 = 0;
        v331 = v42;
        v332 = (v42 | 0x100000000uLL) >> 32;
        v71 = 0.0;
        v72 = v55;
        v73 = v54;
LABEL_106:
        v74 = v72;
        v75 = v73;
        v76 = __len;
        while (1)
        {
          v77 = v74->u8[0];
          v74 = (v74 + 1);
          if (v77 >= v45)
          {
            break;
          }

          v78 = *v75++;
          v71 = v71 + v78;
          if (!--v76)
          {
            ++v70;
            v73 += 8;
            v72 = (v72 + 8);
            if (v70 != v288)
            {
              goto LABEL_106;
            }

            v79 = sub_240B73474(&v331, 8 * (v67 + v275.i64[0]), v283, v12 + 2, &v353, v323, v321, v46);
            v12 = v327;
            v57 = v299;
            if (v79 < v71)
            {
              v276 = v40;
              v80 = 0;
              v81 = v55;
              do
              {
                bzero(&v54[v80 / 0x10], v280);
                memset(v81, v45, __len);
                v80 += 32;
                v81 = (v81 + 8);
              }

              while (v279 != v80);
              sub_240B4541C(v307, v67 + v275.i64[0], v282, v42, 0);
              v281[v67] = v79;
              v12 = v327;
              v40 = v276;
              goto LABEL_92;
            }

            break;
          }
        }

LABEL_103:
        v65 = v58 + v47;
        v54 = (v54 + 4 * v47);
        v55 = (v55 + v47);
        v66 = v318;
      }

      while (v58 + v47 - 1 < v318);
      v39 = v316;
      v48 = v47 - 1;
      v43 = v286;
      v54 = v290;
      v44 = v291;
      v52 = v284;
      v51 = v285;
      v55 = v289;
LABEL_114:
      v56 = v44 + v43;
      v54 = (v54 + v51);
      v55 = (v55 + v52);
    }

    while (v44 + v43 - 1 < v39);
LABEL_115:
    v40 += 12;
    v13 = v312;
  }

  while (v40 != 108);
  if (*(v312 + 48) <= 4 && v39 >= 2)
  {
    v83 = 0;
    v84 = 1;
    do
    {
      v85 = v83;
      v83 = v84;
      if (v318 >= 2)
      {
        v86 = 0;
        do
        {
          if ((v86 | v85))
          {
            sub_240B78008(2uLL, 1, v275.i64[0], v275.i64[1], v86, v85, v327 + 2, &v353, 1.25, 1.35, v307, &v337, v323, v321);
          }

          v87 = v86 + 2;
          ++v86;
        }

        while (v87 < v318);
        v39 = v316;
        v13 = v312;
      }

      v84 = v83 + 1;
    }

    while (v83 + 1 < v39);
    if (*(v13 + 48) < 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = 2;
    }

    if (v39 >= 4)
    {
      v89 = 0;
      do
      {
        if (v318 >= 4)
        {
          for (i = 3; i < v318; i += v88)
          {
            if ((((i - 3) | v89) & 3) != 0)
            {
              sub_240B78008(4uLL, v287 < 4, v275.i64[0], v275.i64[1], i - 3, v89, v327 + 2, &v353, 1.5, 1.5, v307, &v337, v323, v321);
            }
          }

          v39 = v316;
        }

        v89 += v88;
      }

      while (v89 + 3 < v39);
    }
  }

LABEL_141:
  v91 = *(v277 + 16);
  v92 = *(v277 + 104);
  v93 = *v91;
  v94 = *(v91 + 48);
  if (v93 < 0.5 || v94 > 4 || *(*(v277 + 88) + 452) == 0)
  {
    if (v316)
    {
      v97 = v318;
      if (v318 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v318;
      }

      v10.i32[1] = v275.i32[1];
      v99 = v275.i64[1];
      do
      {
        if (v97)
        {
          memset((*(v92 + 24) + *(v92 + 16) * v99 + v275.i64[0]), 4, v98);
          v97 = v318;
        }

        ++v99;
        --v316;
      }

      while (v316);
    }
  }

  else
  {
    v100 = *(v277 + 40);
    v101 = **(v277 + 32);
    v297 = *(v277 + 72);
    v300 = *(v277 + 96);
    v102 = **(v277 + 80) + 120 * a3;
    v328 = *(v92 + 16);
    v104 = *v100;
    v103 = v100[1];
    if (!*v102)
    {
      sub_240B23590(&v337, 0x44u, 0x44u);
      if (DWORD2(v339))
      {
        goto LABEL_319;
      }

      v264 = v338;
      *(&v338 + 1) = 0;
      v265 = v339;
      *v102 = v337;
      v266 = *(v102 + 24);
      *(v102 + 16) = v264;
      if (v266)
      {
        atomic_fetch_add(&qword_27E519020, -*(v266 - 24));
        free(*(v266 - 32));
      }

      *(v102 + 32) = v265;
      sub_240B23590(&v333, 0x10u, 0x10u);
      v267 = v335.i32[2];
      if (!v335.i32[2])
      {
        v268 = v334;
        v334.i64[1] = 0;
        v269 = v335.i64[0];
        *(v102 + 40) = v333;
        v270 = *(v102 + 64);
        *(v102 + 56) = v268;
        if (v270)
        {
          atomic_fetch_add(&qword_27E519020, -*(v270 - 24));
          free(*(v270 - 32));
        }

        *(v102 + 72) = v269;
        sub_240B23590(&v353, 0x11u, 0x11u);
        v267 = v357;
        if (!v357)
        {
          v271 = v355;
          v272 = v356;
          *(v102 + 80) = v353;
          *(v102 + 96) = v354;
          sub_240B2453C((v102 + 104), v271);
          *(v102 + 112) = v272;
          v355 = 0;
        }

        if (!v335.i32[2])
        {
          v273 = v334.i64[1];
          v334.i64[1] = 0;
          if (v273)
          {
            atomic_fetch_add(&qword_27E519020, -*(v273 - 24));
            free(*(v273 - 32));
          }
        }
      }

      if (!DWORD2(v339))
      {
        v274 = *(&v338 + 1);
        *(&v338 + 1) = 0;
        if (v274)
        {
          atomic_fetch_add(&qword_27E519020, -*(v274 - 24));
          free(*(v274 - 32));
        }
      }

      if (v267)
      {
LABEL_319:
        atomic_store(1u, *v277);
        return;
      }
    }

    v105 = v275.i64[0] + (v104 >> 3);
    v106 = v105 + v318;
    v107 = v275.i64[1] + (v103 >> 3);
    v108 = v107 + v316;
    v109 = 8 * v107;
    v110 = 8 * v107 - 2;
    if (!v107)
    {
      v110 = 0;
    }

    v111 = 8 * v108;
    if (8 * v108 != v101[1])
    {
      v111 = (8 * v108) | 2;
    }

    v112 = 8 * v105;
    if (8 * v106 == *v101)
    {
      v113 = 8 * v106;
    }

    else
    {
      v113 = (8 * v106) | 2;
    }

    if (v110 < v111)
    {
      do
      {
        v114 = 0;
        v115 = v110;
        v116 = *(v102 + 24) + *(v102 + 16) * (v110 - v109 + 2);
        v337 = 0uLL;
        *&v338 = 0;
        v333 = 0uLL;
        v334.i64[0] = 0;
        v353 = 0uLL;
        v354 = 0;
        v36 = v110 != 0;
        v117 = v110 - 1;
        if (!v36)
        {
          v117 = 0;
        }

        v118 = *(v101 + 2);
        v119 = v118 * v117;
        v110 = v115 + 1;
        v120 = v118 * v115;
        if (v115 + 1 < v101[1])
        {
          ++v115;
        }

        v121 = v115 * v118;
        v122 = (v101 + 6);
        do
        {
          v123 = *v122;
          v122 += 5;
          *(&v337 + v114 * 8) = v123 + v119;
          v333.i64[v114] = v123 + v120;
          *(&v353 + v114 * 8) = v123 + v121;
          ++v114;
        }

        while (v114 != 3);
        v124 = v112 - 2;
        if (!v105)
        {
          v125 = 0;
          v127 = 0.0;
          do
          {
            v128 = v333.i64[v125];
            v126 = *v101 > 1;
            v129 = (flt_240C837E8[v125] * (*(*(&v337 + v125) + 4 * v126) + (**(&v337 + v125) + ((*(*(&v353 + v125) + 4 * v126) + (**(&v353 + v125) + ((*v128 + v128[v126]) + **(&v353 + v125)))) + **(&v337 + v125))))) + (flt_240C837DC[v125] * *v128);
            v127 = v127 + (v129 * v129);
            ++v125;
          }

          while (v125 != 3);
          *(v116 + 4 * (2 - v112)) = v127;
          v124 = 1;
        }

        v130 = v124 + 4;
        if (v124 + 4 <= v113)
        {
          while (1)
          {
            v131 = v130;
            if (v124 + 5 > *v101)
            {
              break;
            }

            v132 = 0;
            v133 = 0uLL;
            do
            {
              v134 = v333.i64[v132] + 4 * v124;
              v135 = *(v134 - 4);
              v136 = *(v134 + 4);
              v137 = vmulq_n_f32(*v134, flt_240C837DC[v132]);
              v138 = *(&v337 + v132) + 4 * v124;
              v139 = *(v138 - 4);
              v140 = *v138;
              v141 = vaddq_f32(v135, *(v138 + 4));
              v142 = *(&v353 + v132) + 4 * v124;
              v143 = vmlaq_n_f32(v137, vaddq_f32(vaddq_f32(v141, vaddq_f32(v136, *(v142 - 4))), vaddq_f32(vaddq_f32(v139, *v142), vaddq_f32(v140, *(v142 + 4)))), flt_240C837E8[v132]);
              v133 = vmlaq_f32(v133, v143, v143);
              ++v132;
            }

            while (v132 != 3);
            *(v116 - 32 * v105 + 8 + 4 * v124) = v133;
            v130 = v131 + 4;
            v124 = v131;
            if (v131 + 4 > v113)
            {
              goto LABEL_183;
            }
          }
        }

        v131 = v124;
LABEL_183:
        if (v131 < v113)
        {
          v144 = *v101;
          v145 = v116 + 8;
          do
          {
            v146 = 0;
            if (v131)
            {
              v147 = v131 - 1;
            }

            else
            {
              v147 = 0;
            }

            v148 = v131 + 1;
            if (v131 + 1 >= v144)
            {
              v149 = v131;
            }

            else
            {
              v149 = v131 + 1;
            }

            v150 = 0.0;
            do
            {
              v151 = v333.i64[v146];
              v152 = *(&v353 + v146);
              v153 = (flt_240C837E8[v146] * (((((((*(v151 + 4 * v147) + *(v151 + 4 * v149)) + *(v152 + 4 * v147)) + *(v152 + 4 * v131)) + *(v152 + 4 * v149)) + *(*(&v337 + v146) + 4 * v147)) + *(*(&v337 + v146) + 4 * v131)) + *(*(&v337 + v146) + 4 * v149))) + (flt_240C837DC[v146] * *(v151 + 4 * v131));
              v150 = v150 + (v153 * v153);
              ++v146;
            }

            while (v146 != 3);
            *(v145 + 4 * (v131 - v112)) = v150;
            ++v131;
          }

          while (v148 != v113);
        }
      }

      while (v110 != v111);
    }

    v154 = *(v102 + 64);
    v155 = *(v102 + 56) >> 2;
    v324 = v330.i64[1];
    v156 = 2 * v330.i64[1];
    v158 = *(v102 + 16);
    v157 = *(v102 + 24);
    v319 = v330.i64[0];
    v159 = 2 * v330.i64[0];
    v160 = 4 * v158;
    if (2 * v330.i64[1])
    {
      v161 = 0;
      v162 = v157 + 2 * v158;
      do
      {
        v163 = 0;
        v337 = 0uLL;
        v338 = 0uLL;
        v164 = v162;
        do
        {
          *(&v337 + v163) = v164;
          v163 += 8;
          v164 += v158;
        }

        while (v163 != 32);
        if (v159)
        {
          for (j = 0; j != v159; ++j)
          {
            v166 = 0;
            v167 = 0uLL;
            do
            {
              v167 = vaddq_f32(v167, *(*(&v337 + v166) + 16 * j + 8));
              v166 += 8;
            }

            while (v166 != 32);
            v168 = vpaddq_f32(v167, v167).u64[0];
            v168.f32[0] = vaddv_f32(v168);
            v154[v161 * v155 + j] = 0.25 * vsqrtq_f32(vdupq_lane_s32(v168, 0)).f32[0];
          }
        }

        ++v161;
        v162 += v160;
      }

      while (v161 != v156);
    }

    v317 = v154;
    __lena = v92;
    v169 = 0;
    v170 = *(v102 + 104);
    v171 = *(v102 + 96) >> 2;
    v172 = -8 * v105;
    v174 = *v101;
    v173 = v101[1];
    v10 = 0uLL;
    do
    {
      v175 = 0;
      v337 = 0uLL;
      v338 = 0uLL;
      v176 = 4 * v169;
      v177 = v157;
      do
      {
        *(&v337 + v175) = v177;
        v175 += 8;
        v177 += v158;
      }

      while (v175 != 32);
      v178 = 0;
      v179 = v176 + v109;
      v180 = v176 + v109 == 0;
      v181 = 2 * (v176 + v109 == 0);
      v182 = v179 | 2;
      v183 = v173 + 2 - v179;
      if (v182 <= v173)
      {
        v184 = 4;
      }

      else
      {
        v184 = v183;
      }

      v185 = v184 - 2 * v180;
      do
      {
        v186 = (4 * v178) | 2;
        if (4 * v178 != v172)
        {
          v186 = 4 * v178;
        }

        if (((v112 + 4 * v178) | 2uLL) <= v174)
        {
          v187 = 4 * v178 + 4;
        }

        else
        {
          v187 = v174 - v112 + 2;
        }

        if (v187 - v186 == 4 && v185 == 4)
        {
          v193 = 0uLL;
          if (v184 > v181)
          {
            v194 = v181;
            do
            {
              if (v187 > v186)
              {
                v195 = (*(&v337 + v194) + 4 * v186);
                v196 = v186;
                do
                {
                  v197 = *v195++;
                  v193 = vaddq_f32(v193, v197);
                  v196 += 4;
                }

                while (v196 < v187);
              }

              ++v194;
            }

            while (v194 < v184);
          }

          v198 = vpaddq_f32(v193, v193).u64[0];
          v198.f32[0] = vaddv_f32(v198);
          v192 = 0.25 * vsqrtq_f32(vdupq_lane_s32(v198, 0)).f32[0];
        }

        else
        {
          v189 = 0.0;
          if (v184 > v181)
          {
            v190 = v181;
            do
            {
              if (v187 > v186)
              {
                v191 = v186;
                do
                {
                  v189 = v189 + *(*(&v337 + v190) + 4 * v191++);
                }

                while (v191 < v187);
              }

              ++v190;
            }

            while (v190 < v184);
          }

          v192 = sqrtf(v189 / ((v187 - v186) * v185));
        }

        *(v170 + 4 * v169 * v171 + 4 * v178) = v192;
        v61 = v178++ == v159;
      }

      while (!v61);
      v157 += v160;
      v61 = v169++ == v156;
    }

    while (!v61);
    v315 = v329.u64[1];
    v301 = v329.i64[1] + v324;
    if (v329.i64[1] < (v329.i64[1] + v324))
    {
      v303 = v329.i64[0];
      v325 = v329.i64[0] + v319;
      v199 = 8 * v155;
      v200 = 4 * v155;
      v313 = v154 + 1;
      v201 = 8 * v171;
      v308 = (v170 + 8);
      v311 = &v154[v155 + 1];
      v304 = v170 + 8 + 4 * v171;
      v306 = v170 + 8 + 8 * v171;
      do
      {
        if (v303 < v325)
        {
          v202 = v313;
          v322 = *(v297 + 24) + *(v297 + 16) * v315;
          v320 = *(v300 + 24) + *(v300 + 16) * v315;
          v204 = v303;
          v203 = v304;
          v205 = (*(__lena + 24) + v303 + *(__lena + 16) * v315);
          v206 = v306;
          v207 = v308;
          v208 = v311;
          v209 = v317;
          do
          {
            v210 = *(v322 + v204);
            if (v210)
            {
              v211 = 0;
              v212 = v210 >> 1;
              v213 = byte_240C87EBB[v210 >> 1];
              v214 = 2 * v213;
              v215 = byte_240C87EA0[v212];
              v216 = 2 * v215;
              if (2 * v215 <= 1)
              {
                v216 = 1;
              }

              if (v214 <= 1)
              {
                v214 = 1;
              }

              v217 = 0.0;
              v218 = v209;
              do
              {
                v219 = v218;
                v220 = v216;
                do
                {
                  v221 = *v219++;
                  v217 = v217 + (v221 * v221);
                  --v220;
                }

                while (v220);
                ++v211;
                v218 = (v218 + v200);
              }

              while (v211 != v214);
              v222 = 0;
              v223 = (1.0 / *(v320 + 4 * v204)) * 0.0625;
              v224 = sqrtf(v217 / (4 * v213 * v215)) + v223 * 3.25000005;
              if (v215 <= 1)
              {
                v225 = 1;
              }

              else
              {
                v225 = v215;
              }

              if (v213 <= 1)
              {
                v226 = 1;
              }

              else
              {
                v226 = v213;
              }

              v227 = v207;
              v228 = v203;
              v229 = v206;
              v230 = v208;
              v231 = v202;
              v232 = v205;
              do
              {
                v233 = v227;
                v234 = v228;
                v235 = v229;
                v236 = v230;
                v237 = v231;
                v238 = v232;
                v239 = v225;
                do
                {
                  v240 = *(v237 - 1);
                  v241 = *(v236 - 1);
                  v242 = *v236;
                  if (*v237 >= v240)
                  {
                    v243 = *(v237 - 1);
                  }

                  else
                  {
                    v243 = *v237;
                  }

                  if (v242 >= v241)
                  {
                    v244 = *(v236 - 1);
                  }

                  else
                  {
                    v244 = *v236;
                  }

                  if (v244 < v243)
                  {
                    v243 = v244;
                  }

                  v246 = *(v234 - 2);
                  v245 = *(v234 - 1);
                  if (v245 < v243)
                  {
                    v243 = *(v234 - 1);
                  }

                  v247 = *(v233 - 2);
                  if (*(v233 - 1) < v247)
                  {
                    v247 = *(v233 - 1);
                  }

                  v248 = *v233;
                  v233 += 2;
                  v249 = v248;
                  if (v246 >= v248)
                  {
                    v246 = v249;
                  }

                  v250 = *v234;
                  v234 += 2;
                  v251 = v250;
                  if (v250 >= v245)
                  {
                    v251 = v245;
                  }

                  v252 = *(v235 - 2);
                  if (*(v235 - 1) < v252)
                  {
                    v252 = *(v235 - 1);
                  }

                  if (v246 >= v247)
                  {
                    v246 = v247;
                  }

                  if (v252 >= v251)
                  {
                    v253 = v251;
                  }

                  else
                  {
                    v253 = v252;
                  }

                  if (v253 < v246)
                  {
                    v246 = v253;
                  }

                  v254 = *v235;
                  v235 += 2;
                  v255 = v254;
                  if (v254 < v246)
                  {
                    v246 = v255;
                  }

                  if (v246 >= v243)
                  {
                    v256 = v243;
                  }

                  else
                  {
                    v256 = v246;
                  }

                  v257 = (v243 * 0.125) + (v256 * 0.625);
                  if (v245 >= (v256 * 1.5))
                  {
                    v245 = v256 * 1.5;
                  }

                  v258 = (v257 + (v245 * 0.125)) + (v246 * 0.125);
                  v259 = v224 / (v223 + v258);
                  v260 = ((((v240 + *v237) + v241) + v242) + v258) * 0.2;
                  if (v259 > 3.2 || v260 < (v223 * 0.085))
                  {
                    v262 = 4;
                  }

                  else
                  {
                    v262 = 0;
                  }

                  *v238++ = v262;
                  v237 += 2;
                  v236 += 2;
                  --v239;
                }

                while (v239);
                ++v222;
                v232 += v328;
                v231 = (v231 + v199);
                v230 = (v230 + v199);
                v229 = (v229 + v201);
                v228 = (v228 + v201);
                v227 = (v227 + v201);
              }

              while (v222 != v226);
            }

            ++v204;
            v209 += 2;
            ++v205;
            v202 += 2;
            v208 += 8;
            v206 += 8;
            v203 += 8;
            v207 += 2;
          }

          while (v204 < v325);
        }

        ++v315;
        v317 = (v317 + v199);
        v313 = (v313 + v199);
        v311 += v199;
        v306 += v201;
        v304 += v201;
        v308 = (v308 + v201);
      }

      while (v315 < v301);
    }
  }

  v10.i32[0] = **(v277 + 16);
  sub_240B78894(*(*(v277 + 72) + 16), *(*(v277 + 72) + 24), v329.i64, *(v277 + 96), *v10.i64);
  sub_240B6A268(*(v277 + 112), *(*(v277 + 96) + 16), *(*(v277 + 96) + 24), &v329, *(v277 + 120));
  v263 = *(*(v277 + 16) + 48);
  if (v263 <= 5)
  {
    sub_240B8A5F0(*(v277 + 24), &v329, **(v277 + 32), *(v277 + 40), *(v277 + 48), *(v277 + 72), *(v277 + 120), *(v277 + 112), v263 > 3, a3, *(v277 + 56));
  }
}

void sub_240BAC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a64 && a62)
  {
    atomic_fetch_add(&qword_27E519020, -*(a62 - 24));
    free(*(a62 - 32));
  }

  if (!a66)
  {
    if (a65)
    {
      atomic_fetch_add(&qword_27E519020, -*(a65 - 24));
      free(*(a65 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BACA0C(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unint64_t *a5)
{
  v5 = 0;
  v6 = 0;
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  do
  {
    if (*(result + 4 * v5))
    {
      if (v6 > 3)
      {
        if (v6 != 4)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *(v9 + v6) = v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (a2 != v5);
  v7 = 64 - __clz(a2 - 1);
  if (v6 > 1)
  {
LABEL_10:
    sub_240C0F4E4(result, a2, 15, a3);
  }

  *(a5[3] + (*a5 >> 3)) = (1 << (*a5 & 7)) | *(a5[3] + (*a5 >> 3));
  v8 = *a5 + 4;
  *a5 = v8;
  *(a5[3] + (v8 >> 3)) = (*&v9[0] << (v8 & 7)) | *(a5[3] + (v8 >> 3));
  *a5 += v7;
  return result;
}

void sub_240BAD310(unint64_t a1, size_t *a2)
{
  v4 = *a2;
  v5 = *a2 + 9;
  sub_240B4ADF0(a2, v5);
  v6 = a2[2];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  if (a1 < 0x80)
  {
    v8 = v4;
    LOBYTE(v9) = a1;
  }

  else
  {
    do
    {
      v8 = v4 + 1;
      *(v6 + v4) = a1 | 0x80;
      v9 = a1 >> 7;
      v10 = a1 >> 14;
      a1 >>= 7;
      ++v4;
    }

    while (v10);
  }

  *(v6 + v8) = v9;
  sub_240B4ADF0(a2, v8 + 1);
  if (a2[2])
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
}

void sub_240BAD3B4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_240B57EEC(v11, a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      *(v12 + v7) = *(a1 + v6);
      v7 += (a2 + a3 - 1) / a3;
      if (v7 >= a2)
      {
        v7 = ++v8;
      }

      ++v6;
    }

    while (a2 != v6);
    v9 = 0;
    v10 = v12;
    do
    {
      *(a1 + v9) = *(v10 + v9);
      ++v9;
    }

    while (a2 != v9);
    v12 = 0;
  }

  else
  {
    v10 = v12;
    v12 = 0;
    if (!v10)
    {
      return;
    }
  }

  atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
  free(*(v10 - 32));
}

uint64_t sub_240BAD484(unint64_t a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, size_t *a8)
{
  v8 = *a7 + a4;
  v9 = *a7 - 1;
  if (v8 > a6 || v9 >= v8)
  {
    return 1;
  }

  if (a1 > v9 >> 2 || *a7 < 4 * a1)
  {
    return 1;
  }

  v18 = *a8;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v22 = *a7;
      v23 = sub_240B59594(a5, *a7, i, a1, a2, a3);
      sub_240B57E90(a8, *(a5 + v22 + i) - v23);
    }

    v8 = *a7 + a4;
  }

  *a7 = v8;
  if (a2 > 1)
  {
    sub_240BAD3B4(a8[2] + v18, a4, a2);
  }

  return 0;
}

uint64_t sub_240BAD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7, unsigned int *a8, float a9)
{
  v38 = a9;
  v15 = a6[1];
  v34[0] = *a6;
  v34[1] = v15;
  v16 = a6[3];
  v34[2] = a6[2];
  v36 = a8;
  v37 = a3;
  v34[3] = v16;
  memset(&v34[4], 0, 48);
  v35 = 0;
  v33 = *(a1 + 56) == 1;
  v17 = *(a4 + 16);
  if (v17 <= *a8)
  {
    v18 = *(a4 + 24);
    if (v18 <= a8[1])
    {
      v23 = a8 + 1;
      v24 = 120;
      do
      {
        *(v23 - 1) = v17;
        *v23 = v18;
        v23 += 10;
        v24 -= 40;
      }

      while (v24);
      goto LABEL_13;
    }
  }

  else
  {
    v18 = *(a4 + 24);
  }

  sub_240B2A11C(v30, v17, v18);
  v19 = v32;
  if (v32)
  {
    goto LABEL_18;
  }

  sub_240B2A358(v29, v30);
  sub_240B30D80(a8, v29);
  for (i = 13; i != -2; i -= 5)
  {
    sub_240B22320(&v29[i]);
  }

  if (!v32)
  {
    v21 = &v31;
    v22 = -120;
    do
    {
      sub_240B22320(v21);
      v21 -= 5;
      v22 += 40;
    }

    while (v22);
  }

  v18 = *(a4 + 24);
LABEL_13:
  v28 = 0;
  v29[0] = v34;
  v29[1] = a1;
  v29[2] = a5;
  v29[3] = &v38;
  v29[4] = a4;
  v30[0] = &v28;
  v30[1] = v34;
  v30[2] = &v33;
  v30[3] = a4;
  v30[4] = a2;
  v30[5] = a1;
  v30[6] = &v37;
  v30[7] = &v36;
  if (a7)
  {
    v25 = sub_240BAD79C(a7, v18, v29, v30);
  }

  else
  {
    v39[0] = 0;
    v39[1] = v39;
    v25 = sub_240BAD79C(v39, v18, v29, v30);
  }

  v19 = v25;
  if (!v25)
  {
    v26 = atomic_load(&v28);
    v19 = v26 & 1;
  }

LABEL_18:
  sub_240BAD864(v34);
  return v19;
}

BOOL sub_240BAD79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240BAD8BC(*a3, *(a3 + 8), *(a3 + 16), *(*(a3 + 32) + 16), 1, **(a3 + 24)))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240BAD9F0(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240BADC58, sub_240BAD9F0, 0, a2) != 0;
}

uint64_t sub_240BAD864(uint64_t a1)
{
  if (*(a1 + 64))
  {
    (*(a1 + 56))();
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  return a1;
}

BOOL sub_240BAD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v12 = (a1 + 72);
  if (v12 != (a2 + 32))
  {
    sub_240B28A14(v12, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  }

  v13 = *(a1 + 80) - *(a1 + 72);
  v22[0] = *(a1 + 72);
  v22[1] = v13;
  sub_240B250A4(v23, a2 + 16);
  v14 = 3;
  if (*(a2 + 56) == 1)
  {
    v14 = 1;
  }

  v15 = 4;
  if (!*(a2 + 60))
  {
    v15 = v14;
  }

  v23[13] = v15;
  if (a1 + 96 != a3 + 32)
  {
    sub_240B28A14((a1 + 96), *(a3 + 32), *(a3 + 40), *(a3 + 40) - *(a3 + 32));
  }

  v16 = *(a1 + 104) - *(a1 + 96);
  v20[0] = *(a1 + 96);
  v20[1] = v16;
  sub_240B250A4(v21, a3 + 16);
  if (*(a3 + 60))
  {
    return 1;
  }

  v18 = 3;
  if (*(a3 + 56) == 1)
  {
    v18 = 1;
  }

  v21[13] = v18;
  v19 = (*(a1 + 24))(*(a1 + 16), a5, a4, v22, v20, a6);
  *(a1 + 64) = v19;
  return v19 == 0;
}

float sub_240BAD9F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if (v4)
  {
    return result;
  }

  v7 = (*(*(v3 + 8) + 32))(*(*(v3 + 8) + 64), a3);
  if (**(v3 + 16) == 1)
  {
    v9 = *(*(v3 + 32) + 24) + *(*(v3 + 32) + 16) * (*(*(v3 + 24) + 8) + a2) + 4 * **(v3 + 24);
  }

  else
  {
    v9 = v7;
    if (*(*(v3 + 40) + 60) == 1)
    {
      v10 = **(v3 + 48);
      if (!v10)
      {
LABEL_18:
        atomic_store(1u, *v3);
        return result;
      }

      v11 = *(v3 + 24);
      v12 = v11[2];
      if (v12)
      {
        v13 = 0;
        v14 = *(v3 + 32);
        v15 = *v11;
        v16 = v11[1] + a2;
        v17 = *(v10 + 24) + *(v10 + 16) * v16;
        v18 = v14[2] * v16;
        v19 = v14[3] + v18 + 4 * v15;
        v20 = v14[8] + v18 + 4 * v15;
        v21 = v14[13] + v18 + 4 * v15;
        v22 = v17 + 4 * v15;
        v23 = (v7 + 8);
        do
        {
          *(v23 - 2) = *(v19 + 4 * v13);
          *(v23 - 1) = *(v20 + 4 * v13);
          *v23 = *(v21 + 4 * v13);
          v23[1] = *(v22 + 4 * v13++);
          v23 += 4;
        }

        while (v12 != v13);
      }
    }

    else
    {
      v24 = *(v3 + 24);
      v25 = v24[2];
      if (v25)
      {
        v26 = *(v3 + 32);
        v27 = *v24;
        v28 = v26[2] * (v24[1] + a2);
        v29 = (v26[3] + v28 + 4 * *v24);
        v30 = (v26[8] + v28 + 4 * v27);
        v31 = (v26[13] + v28 + 4 * v27);
        v32 = (v7 + 8);
        do
        {
          v33 = *v29++;
          *(v32 - 2) = v33;
          v34 = *v30++;
          *(v32 - 1) = v34;
          v35 = *v31++;
          *v32 = v35;
          v32 += 3;
          --v25;
        }

        while (v25);
      }
    }
  }

  v36 = (*(*(v3 + 8) + 40))(*(*(v3 + 8) + 64), a3);
  if (!(*(*(v3 + 8) + 48))(*(*(v3 + 8) + 64), a3, v9, v36, *(*(v3 + 24) + 16)))
  {
    goto LABEL_18;
  }

  v37 = **(v3 + 56);
  v38 = v37[2] * a2;
  v39 = (v37[3] + v38);
  v40 = (v37[8] + v38);
  v41 = (v37[13] + v38);
  v42 = *(*(v3 + 24) + 16);
  if (**(v3 + 16))
  {
    for (; v42; --v42)
    {
      v43 = *v36;
      *v39++ = *v36;
      *v40++ = v43;
      v44 = *v36++;
      result = v44;
      *v41++ = v44;
    }
  }

  else if (v42)
  {
    v45 = v36 + 1;
    do
    {
      *v39++ = *(v45 - 1);
      *v40++ = *v45;
      result = v45[1];
      *v41++ = result;
      v45 += 3;
      --v42;
    }

    while (v42);
  }

  return result;
}

uint64_t sub_240BADC90(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t *a5)
{
  if (sub_240B4A210(a1 + 232, a2 + 16))
  {
    v10 = *(a1 + 88);
    v11 = *(v10 + 328);
    v12 = *(v10 + 336);
    while (v11 != v12)
    {
      if (*(v11 + 12) == 4)
      {
        goto LABEL_6;
      }

      v11 += 96;
    }

    v13 = 0;
    *a5 = a1;
  }

  else
  {
LABEL_6:
    sub_240B2A11C(v55, *(a1 + 96), *(a1 + 100));
    v13 = v57;
    if (!v57)
    {
      sub_240B2A358(v54, v55);
      sub_240B32D14((a1 + 96), v54);
      sub_240B598DC(a4, v54, a1 + 216);
      v14 = *(a1 + 424);
      v15 = *(a1 + 416);
      if (v15 == v14)
      {
LABEL_30:
        v30 = *(a4 + 96);
        v49 = 0uLL;
        *&v31 = v30;
        *(&v31 + 1) = HIDWORD(v30);
        v50 = v31;
        v32 = *(a4 + 88);
        v33 = *(v32 + 300);
        v34 = *(v32 + 328);
        v35 = *(v32 + 336);
        if (v34 == v35)
        {
          v38 = 0;
          v37 = a3;
        }

        else
        {
          v36 = v34;
          v37 = a3;
          while (*(v36 + 12) != 4)
          {
            v36 += 96;
            if (v36 == v35)
            {
              v38 = 0;
              goto LABEL_43;
            }
          }

          v39 = v34;
          while (*(v39 + 12) != 4)
          {
            v39 += 96;
            if (v39 == v35)
            {
              v39 = 0;
              break;
            }
          }

          v38 = *(a4 + 416) - 0x5555555555555548 * ((v39 - v34) >> 5);
        }

LABEL_43:
        if (sub_240BAD594(a4 + 216, a4 + 96, v38, &v49, a2, v37, 0, (a4 + 96), v33))
        {
          v13 = 1;
        }

        else
        {
          *(a4 + 224) = *(a2 + 8);
          v40 = *(a2 + 16);
          *(a4 + 237) = *(a2 + 21);
          *(a4 + 232) = v40;
          if (a4 + 216 != a2)
          {
            sub_240B28A14((a4 + 248), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
          }

          v13 = 0;
          v41 = *(a2 + 56);
          v42 = *(a2 + 72);
          v43 = *(a2 + 88);
          *(a4 + 320) = *(a2 + 104);
          *(a4 + 288) = v42;
          *(a4 + 304) = v43;
          *(a4 + 272) = v41;
          *(a4 + 336) = *(a2 + 120);
          *(a4 + 352) = *(a2 + 136);
          *(a4 + 376) = *(a2 + 160);
          *(a4 + 392) = *(a2 + 176);
          *(a4 + 408) = *(a2 + 192);
          *a5 = a4;
        }
      }

      else
      {
        memset(v53, 0, sizeof(v53));
        while (1)
        {
          sub_240B23590(&v49, *v15, v15[1]);
          v13 = v52;
          if (v52)
          {
            break;
          }

          v16 = v50;
          *(&v50 + 1) = 0;
          v17 = v51;
          if (v15[1] && *v15)
          {
            v18 = 0;
            v19 = *(&v16 + 1);
            do
            {
              memcpy(v19, (*(v15 + 3) + *(v15 + 2) * v18++), 4 * *v15);
              v19 += v16;
            }

            while (v18 < v15[1]);
          }

          v20 = *&v53[8];
          if (*&v53[8] >= *&v53[16])
          {
            v22 = 0xCCCCCCCCCCCCCCCDLL * ((*&v53[8] - *v53) >> 3);
            v23 = v22 + 1;
            if (v22 + 1 > 0x666666666666666)
            {
              sub_240B228BC();
            }

            if (0x999999999999999ALL * ((*&v53[16] - *v53) >> 3) > v23)
            {
              v23 = 0x999999999999999ALL * ((*&v53[16] - *v53) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*&v53[16] - *v53) >> 3) >= 0x333333333333333)
            {
              v24 = 0x666666666666666;
            }

            else
            {
              v24 = v23;
            }

            v61 = v53;
            if (v24)
            {
              sub_240B59980(v24);
            }

            v25 = 8 * ((*&v53[8] - *v53) >> 3);
            v58 = 0;
            v59 = v25;
            *(&v60 + 1) = 0;
            *v25 = v49;
            *(v25 + 16) = v16;
            *(v25 + 32) = v17;
            *&v60 = 40 * v22 + 40;
            v26 = 40 * v22 + *v53 - *&v53[8];
            sub_240B59A2C(*v53, *&v53[8], v25 + *v53 - *&v53[8]);
            v27 = *v53;
            v28 = *&v53[16];
            *v53 = v26;
            v48 = v60;
            *&v53[8] = v60;
            *&v60 = v27;
            *(&v60 + 1) = v28;
            v58 = v27;
            v59 = v27;
            sub_240B599D8(&v58);
            v21 = v48;
          }

          else
          {
            **&v53[8] = v49;
            *(v20 + 16) = v16;
            *(v20 + 32) = v17;
            v21 = v20 + 40;
          }

          *&v53[8] = v21;
          if (!v52)
          {
            v29 = *(&v50 + 1);
            *(&v50 + 1) = 0;
            if (v29)
            {
              atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
              free(*(v29 - 32));
            }
          }

          v15 += 10;
          if (v15 == v14)
          {
            sub_240B30E18((a4 + 416));
            *(a4 + 416) = *v53;
            *(a4 + 432) = *&v53[16];
            memset(v53, 0, sizeof(v53));
            *&v49 = v53;
            sub_240B30C38(&v49);
            goto LABEL_30;
          }
        }

        *&v49 = v53;
        sub_240B30C38(&v49);
      }

      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320(&v54[i]);
      }

      if (!v57)
      {
        v45 = &v56;
        v46 = -120;
        do
        {
          sub_240B22320(v45);
          v45 -= 5;
          v46 += 40;
        }

        while (v46);
      }
    }
  }

  return v13;
}

void sub_240BAE100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a22 + i));
  }

  if (!a52)
  {
    v54 = &a50;
    v55 = -120;
    do
    {
      sub_240B22320(v54);
      v54 -= 5;
      v55 += 40;
    }

    while (v55);
  }

  _Unwind_Resume(a1);
}

void **sub_240BAE1C8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_240B2287C(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 4;
        *v14 = v15;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

void **sub_240BAE2E8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_240B2287C(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(v8, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_240BAE3EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    sub_240B7BE18((i - 152));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BAE43C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v78 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = 0u;
  v7 = a1 + 48;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v8 = (a1 + 72);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  sub_240B2BCB4(a1 + 272);
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 320) = 0u;
  sub_240B3CC4C((a1 + 368), a2);
  sub_240B86714(a1 + 512, a3);
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1224) = 13;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1240) = 0;
  v9 = *(a2 + 112);
  LODWORD(__src) = 5;
  *(&__src + 1) = 0;
  *&v76 = 0;
  *(&v76 + 1) = v9;
  v10 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
  v74 = v10;
  v11 = sub_240B97DD0(a1 + 512);
  v12 = *(a1 + 568);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + 788) = 0;
    }

    else
    {
      if (v12 != 3)
      {
LABEL_11:
        *(a1 + 728) = 0;
        *(a1 + 776) = 0;
        goto LABEL_14;
      }

      *(a1 + 728) = 0;
    }

    *(a1 + 776) = 5;
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  if (v12 != 1)
  {
    goto LABEL_11;
  }

  *(a1 + 788) = 1;
LABEL_14:
  if (*(a1 + 864) && sub_240B97DD0(a1 + 512))
  {
    *(a1 + 796) = 0;
    *(a1 + 728) = 0;
  }

LABEL_17:
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v14) >> 3);
  v16 = v10 >= v15;
  v17 = v10 - v15;
  v70 = a1 + 1152;
  if (v17 != 0 && v16)
  {
    v18 = *(a1 + 64);
    if (0x2E8BA2E8BA2E8BA3 * ((v18 - v13) >> 3) < v17)
    {
      if (v10 > 0x2E8BA2E8BA2E8BALL)
      {
        sub_240B228BC();
      }

      v19 = 0x2E8BA2E8BA2E8BA3 * ((v18 - v14) >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= v10)
      {
        v20 = v10;
      }

      if (v19 >= 0x1745D1745D1745DLL)
      {
        v21 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

LABEL_136:
      sub_240B2291C();
    }

    v22 = v13 + 88 * v17;
    do
    {
      *(v13 + 32) = 0uLL;
      *(v13 + 48) = 0uLL;
      *v13 = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 64) = 8;
      *(v13 + 72) = 0;
      *(v13 + 80) = 1;
      v13 += 88;
    }

    while (v13 != v22);
    *(a1 + 56) = v22;
  }

  else if (!v16)
  {
    sub_240B7BDA8(v7, (v14 + 88 * v10));
  }

  v23 = *(a1 + 864);
  if (v23 < 0)
  {
    v23 = sub_240B97DD0(a1 + 512) ^ 1;
    *(a1 + 864) = v23;
  }

  *(a1 + 760) = (14 * *(a1 + 560) + 82);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (v23)
  {
    __src = xmmword_240C84D10;
    v76 = unk_240C84D20;
    *v77 = xmmword_240C84D30;
    *&v77[16] = unk_240C84D40;
    sub_240BAE1C8(&v71, &__src, v78, 0x10uLL);
  }

  else
  {
    __src = xmmword_240C84D50;
    v76 = unk_240C84D60;
    *v77 = xmmword_240C84D70;
    *&v77[16] = unk_240C84D80;
    sub_240BAE1C8(&v71, &__src, v78, 0x10uLL);
    if (v10 <= 0x1D && *(a1 + 560) >= 2 && sub_240B97DD0(a3))
    {
      v24 = v71 + 4;
      v25 = v72 - (v71 + 8);
      if (v72 != v71 + 8)
      {
        memmove(v71 + 4, v71 + 8, v72 - (v71 + 8));
      }

      v72 = &v24[v25];
    }
  }

  if (*(a2 + 12) == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = -1;
  }

  if (v26 + *(*(a2 + 408) + 320) >= *(a1 + 732))
  {
    v27 = *(a1 + 732);
  }

  else
  {
    v27 = v26 + *(*(a2 + 408) + 320);
  }

  v28 = *(a1 + 560);
  if (v28 <= 2)
  {
    if (v28 < 2)
    {
      v29 = v71;
      sub_240B343B0((a1 + 736), v71, v72, (v72 - v71) >> 2);
      v30 = 256;
      goto LABEL_61;
    }

    if (v28 == 2)
    {
      v29 = v71;
      sub_240BAE2E8((a1 + 736), v71, v71 + 40, 0xAuLL);
      v30 = 96;
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (v28 == 3)
  {
    v29 = v71;
    sub_240BAE2E8((a1 + 736), v71, v71 + 28, 7uLL);
    v30 = 48;
    goto LABEL_61;
  }

  if (v28 != 4)
  {
    if (v28 == 5)
    {
      v29 = v71;
      sub_240BAE2E8((a1 + 736), v71, v71 + 16, 4uLL);
      v30 = 24;
      goto LABEL_61;
    }

LABEL_59:
    v29 = v71;
    sub_240BAE2E8((a1 + 736), v71, v71 + 12, 3uLL);
    v30 = 16;
    goto LABEL_61;
  }

  v29 = v71;
  sub_240BAE2E8((a1 + 736), v71, v71 + 20, 5uLL);
  v30 = 32;
LABEL_61:
  *(a1 + 768) = v30;
  if (*(a1 + 560) <= 1)
  {
    if (v27 >= 1)
    {
      if (4 * v27 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = 4 * v27;
      }

      v33 = 16;
      do
      {
        LODWORD(__src) = v33;
        sub_240B22E1C(a1 + 736, &__src);
        ++v33;
        --v32;
      }

      while (v32);
    }
  }

  else if (v27 >= 1)
  {
    v31 = 19;
    do
    {
      LODWORD(__src) = v31;
      sub_240B22E1C(a1 + 736, &__src);
      v31 += 4;
      --v27;
    }

    while (v27);
  }

  if (v29)
  {
    operator delete(v29);
  }

  v34 = *(a1 + 776);
  if (v34 + 1 > 0xE)
  {
    goto LABEL_77;
  }

  if (((1 << (v34 + 1)) & 0x7890) == 0)
  {
    if (v34 == -1)
    {
      goto LABEL_81;
    }

LABEL_77:
    *(a1 + 1224) = v34;
    if (*(a1 + 888) != 1)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (sub_240B97DD0(a1 + 512))
  {
    goto LABEL_77;
  }

  *(a1 + 776) = -1;
LABEL_81:
  v35 = *(a1 + 560);
  if (v35 > 0 || (*(a1 + 580) & 1) == 0 || !sub_240B97DD0(a1 + 512))
  {
    if (!*(a1 + 864) && *(a1 + 888) != 1)
    {
      if (*(a1 + 580) == 1 && sub_240B97DD0(a1 + 512))
      {
        if (v35 >= 7)
        {
          if (v35 == 7)
          {
            v34 = 6;
          }

          else
          {
            v34 = 5;
          }
        }

        else
        {
          v34 = 14;
        }
      }

      else
      {
        v34 = 5;
      }

      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (*(a1 + 864))
  {
LABEL_88:
    v34 = 0;
    goto LABEL_89;
  }

  v34 = 15;
LABEL_89:
  *(a1 + 776) = v34;
LABEL_90:
  if ((sub_240B97DD0(a1 + 512) & 1) == 0 && v34 <= 0xF && ((1 << v34) & 0xC040) != 0)
  {
    *(a1 + 776) = 0;
  }

  *&__src = 0;
  sub_240B495E8(a1 + 1152, &__src);
  if ((*(a1 + 580) & 1) == 0)
  {
    *(a1 + 784) = 1065353216;
    LODWORD(__src) = 1;
    v76 = 0uLL;
    *(&__src + 1) = 0;
    v71 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v70, &v71);
    LODWORD(__src) = 2;
    v76 = 0uLL;
    *(&__src + 1) = 0;
    v71 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v70, &v71);
    LODWORD(__src) = 3;
    v76 = 0uLL;
    *(&__src + 1) = 0;
    v71 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v70, &v71);
    LODWORD(__src) = 4;
    v76 = 0uLL;
    *(&__src + 1) = 0;
    v71 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v70, &v71);
    LODWORD(__src) = 5;
    v76 = 0uLL;
    *(&__src + 1) = 0;
    v71 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v70, &v71);
    sub_240B38D70(a1, *(a1 + 488));
    v36 = *(a1 + 488);
    v37 = *(a1 + 24);
    v38 = *(a1 + 32) - v37;
    if (v36 <= v38)
    {
      if (v36 < v38)
      {
        *(a1 + 32) = v37 + v36;
      }
    }

    else
    {
      sub_240B26918((a1 + 24), v36 - v38);
    }
  }

  sub_240B495E8(v70, &v74);
  v39 = (a1 + 712);
  v40 = (a1 + 760);
  v41 = *(a1 + 496);
  *(a1 + 712) = v41;
  *(a1 + 720) = v41;
  v42 = *(a1 + 72);
  v43 = *(a1 + 80);
  v44 = 0x86BCA1AF286BCA1BLL * ((v43 - v42) >> 3);
  v45 = v10 - v44;
  if (v10 <= v44)
  {
    if (v10 >= v44)
    {
      goto LABEL_116;
    }

    v49 = v42 + 152 * v10;
    while (v43 != v49)
    {
      v43 -= 152;
      sub_240B7BE18(v43);
    }
  }

  else
  {
    v46 = *(a1 + 88);
    if (0x86BCA1AF286BCA1BLL * ((v46 - v43) >> 3) < v45)
    {
      if (v10 > 0x1AF286BCA1AF286)
      {
        sub_240B228BC();
      }

      v47 = 0xD79435E50D79436 * ((v46 - v42) >> 3);
      if (v47 <= v10)
      {
        v47 = v10;
      }

      if (0x86BCA1AF286BCA1BLL * ((v46 - v42) >> 3) >= 0xD79435E50D7943)
      {
        v48 = 0x1AF286BCA1AF286;
      }

      else
      {
        v48 = v47;
      }

      *v77 = v8;
      if (v48 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }

      goto LABEL_136;
    }

    v49 = v43 + 152 * v45;
    v50 = 152 * v10 - 152 * v44;
    do
    {
      v51 = *v39;
      *(v43 + 16) = *(a1 + 728);
      *v43 = v51;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      sub_240B86FB8((v43 + 24), *(a1 + 736), *(a1 + 744), (*(a1 + 744) - *(a1 + 736)) >> 2);
      v52 = *v40;
      v53 = *(a1 + 776);
      *(v43 + 80) = *(a1 + 792);
      *(v43 + 48) = v52;
      *(v43 + 64) = v53;
      v54 = *(a1 + 800);
      *(v43 + 104) = 0;
      *(v43 + 88) = v54;
      *(v43 + 112) = 0;
      *(v43 + 120) = 0;
      sub_240B3C84C((v43 + 104), *(a1 + 816), *(a1 + 824), (*(a1 + 824) - *(a1 + 816)) >> 3);
      v55 = *(a1 + 840);
      *(v43 + 133) = *(a1 + 845);
      *(v43 + 128) = v55;
      *(v43 + 144) = *(a1 + 856);
      v43 += 152;
      v50 -= 152;
    }

    while (v50);
  }

  *(a1 + 80) = v49;
LABEL_116:
  v56 = *v8;
  v57 = *v39;
  *(v56 + 16) = *(a1 + 728);
  *v56 = v57;
  if (v56 == v39)
  {
    v60 = *v40;
    v61 = *(a1 + 776);
    *(v56 + 80) = *(a1 + 792);
    *(v56 + 48) = v60;
    *(v56 + 64) = v61;
    *(v56 + 88) = *(a1 + 800);
  }

  else
  {
    sub_240B343B0((v56 + 24), *(a1 + 736), *(a1 + 744), (*(a1 + 744) - *(a1 + 736)) >> 2);
    v58 = *v40;
    v59 = *(a1 + 776);
    *(v56 + 80) = *(a1 + 792);
    *(v56 + 48) = v58;
    *(v56 + 64) = v59;
    *(v56 + 88) = *(a1 + 800);
    sub_240BA2C68((v56 + 104), *(a1 + 816), *(a1 + 824), (*(a1 + 824) - *(a1 + 816)) >> 3);
  }

  v62 = *(a1 + 840);
  *(v56 + 133) = *(a1 + 845);
  *(v56 + 128) = v62;
  *(v56 + 144) = *(a1 + 856);
  v63 = *(a1 + 560);
  if (v63 == 7)
  {
    v64 = 5;
    goto LABEL_123;
  }

  if (v63 == 8)
  {
    v64 = 6;
LABEL_123:
    v65 = *v8;
    *(*v8 + 84) = v64;
    goto LABEL_125;
  }

  v65 = *v8;
LABEL_125:
  sub_240B8464C(&__src, a1 + 512, 0, 0, a4);
  v66 = *(v65 + 104);
  *(v65 + 88) = __src;
  if (v66)
  {
    *(v65 + 112) = v66;
    operator delete(v66);
    *(v65 + 104) = 0;
    *(v65 + 112) = 0;
    *(v65 + 120) = 0;
  }

  *(v65 + 104) = v76;
  v67 = *&v77[8];
  *(v65 + 120) = *v77;
  *(v65 + 128) = v67;
  *(v65 + 133) = *&v77[13];
  return a1;
}

void sub_240BAF170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void **a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v25 + 1232);
  if (v29)
  {
    *(v25 + 1240) = v29;
    operator delete(v29);
  }

  v30 = *(v25 + 1200);
  if (v30)
  {
    *(v25 + 1208) = v30;
    operator delete(v30);
  }

  __p = (v25 + 1176);
  sub_240B23988(&__p);
  v31 = *a18;
  if (*a18)
  {
    *(v25 + 1160) = v31;
    operator delete(v31);
  }

  sub_240B7BB60(v25 + 512);
  v32 = *(v25 + 344);
  if (v32)
  {
    *(v25 + 352) = v32;
    operator delete(v32);
  }

  sub_240B8C428(a14);
  __p = a15;
  sub_240B31E8C(&__p);
  __p = (v25 + 168);
  sub_240B4B18C(&__p);
  __p = a16;
  sub_240B31E8C(&__p);
  v33 = *(v25 + 120);
  if (v33)
  {
    *(v25 + 128) = v33;
    operator delete(v33);
  }

  v34 = *(v25 + 96);
  if (v34)
  {
    *(v25 + 104) = v34;
    operator delete(v34);
  }

  __p = v26;
  sub_240B7BCD0(&__p);
  __p = v27;
  sub_240B7BD54(&__p);
  v35 = *(v25 + 24);
  if (v35)
  {
    *(v25 + 32) = v35;
    operator delete(v35);
  }

  v36 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BAF358(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  v18 = a11;
  v280 = *MEMORY[0x277D85DE8];
  v272 = a4;
  v271 = a13;
  v19 = *(a9 + 4208);
  v270 = v19;
  if ((a13 & 1) == 0)
  {
    v22 = (a3 + 28);
    goto LABEL_12;
  }

  if (*(a2 + 425) == 1 && (v19 & 1) == 0)
  {
    *&v276 = vdup_n_s32(0x3F7DA86Bu);
    DWORD2(v276) = 1065199723;
    *v263 = 0uLL;
    *&v20 = *a4;
    *(&v20 + 1) = HIDWORD(*a4);
    *&v263[16] = v20;
    v21 = sub_240C0F1B0(a4, v263, &v276, a11);
    if (v21)
    {
      return v21;
    }
  }

  v22 = (a3 + 28);
  if (*(a3 + 28) > 0x10u || *(a1 + 560) > 5 || *(a1 + 568) > 1uLL || (v19 & 1) != 0)
  {
LABEL_12:
    if (*(a1 + 1008) != *(a1 + 1016))
    {
      sub_240BA2EF4((a9 + 1432), a1 + 1000);
    }

    v24 = *a7;
    v247 = a7[1];
    if (*(a3 + 104) == 1)
    {
      v25 = 3;
      if (*(a1 + 576) == 1)
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 3;
    }

    if (!a13)
    {
      v25 = 0;
    }

    v27 = *a5;
    v26 = a5[1];
    v28 = *(a3 + 24) == 1 && *(a1 + 576) != 0;
    v269 = v28;
    v29 = *v22;
    if (*v22 < 0x20)
    {
      if (a13)
      {
LABEL_29:
        v248 = a3;
        v244 = a8;
        v30 = v29 + !v28;
        goto LABEL_31;
      }
    }

    else if (a13)
    {
      if (*(a1 + 576) && (v29 != 32 || !v28))
      {
        return 1;
      }

      goto LABEL_29;
    }

    v248 = a3;
    v244 = a8;
    v30 = 0;
LABEL_31:
    v31 = *(a1 + 48);
    v243 = v25 - 858993459 * ((v26 - v27) >> 3);
    sub_240B64760(v263, v24, v247, v29, v243);
    v21 = v268;
    if (v268)
    {
LABEL_32:
      sub_240B43B14(v263);
      return v21;
    }

    v238 = v22;
    v245 = v24;
    v242 = (a1 + 512);
    v276 = *v263;
    memset(v263, 0, sizeof(v263));
    *v278 = *&v263[24];
    v277 = *&v263[16];
    v278[2] = v264;
    v264 = 0;
    *&v278[3] = v265;
    *&v278[5] = v266;
    LOBYTE(v279) = v267;
    sub_240B649A8(v31, &v276);
    v254 = v278;
    sub_240B37900(&v254);
    v254 = &v276;
    sub_240B379C0(&v254);
    v262 = 0;
    if (*(a1 + 576) || *(a1 + 580) != 1)
    {
      v33 = v24;
    }

    else
    {
      DWORD2(v276) = 1157627904;
      *&v276 = 0x4500000047000000;
      v33 = v24;
      if (*v242 > 0.0 && !*(a1 + 864))
      {
        __asm { FMOV            V2.2S, #1.0 }

        *&v276 = vmul_f32(vdiv_f32(_D2, vmla_n_f32(_D2, 0x4160000041B80000, *v242)), 0x4500000047000000);
        DWORD2(v276) = DWORD1(v276);
        *v242 = 0.0;
      }

      v38 = *(a1 + 952);
      if (*(a1 + 960) - v38 == 12)
      {
        sub_240BC0BC8(a9 + 208, v38);
      }

      else
      {
        sub_240BC0BC8(a9 + 208, &v276);
        v30 = 12;
      }
    }

    v39 = *(v31 + 64);
    if (v39 < 32)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = 0;
    }

    v253 = a2;
    if (a13)
    {
      v41 = v262;
      if (v262 <= 2)
      {
        v240 = a9 + 268;
        v42 = a2 + 48;
        while (1)
        {
          v43 = *(a1 + 576);
          if (*(v248 + 104) == 1 && v41 != 0 && v43 == 1)
          {
            goto LABEL_75;
          }

          v261 = v41;
          if (v41 != 2 && !v43)
          {
            break;
          }

          v273 = v40;
          v46 = v41;
          if (v43)
          {
            v47 = v41;
LABEL_68:
            v63 = *(v248 + 28);
            v259 = *(v248 + 32);
            v260 = v63;
            v64 = *(v253 + 60) - byte_240C85334[*(v42 + 4 * v47)];
            v65 = *v31;
            *(*v31 + (v46 << 6) + 56) = v64;
            *(v65 + (v261 << 6) + 60) = *(v253 + 61) - byte_240C85338[*(v42 + 4 * v262)];
            v66 = v65 + (v261 << 6);
            v258 = (v33 - 1 + (1 << *(v66 + 56))) / (1 << *(v66 + 56));
            v67 = 1 << *(v66 + 60);
            v68 = (v247 - 1 + v67) / v67;
            *(v66 + 40) = v258;
            *(v66 + 48) = v68;
            v21 = sub_240B43734(v66);
            if (v21)
            {
              goto LABEL_32;
            }

            v257 = 0;
            *&v276 = &v257;
            *(&v276 + 1) = &v272;
            v277 = &v262;
            v278[0] = a6;
            v278[1] = v31;
            v278[2] = &v261;
            v278[3] = &v258;
            v278[4] = &v260;
            v278[5] = &v259;
            v278[6] = &v269;
            v279 = &v273;
            if (a11)
            {
              v69 = sub_240BB0E70(a11, v68, &v276);
            }

            else
            {
              v254 = 0;
              *v255 = &v254;
              v69 = sub_240BB0E70(&v254, v68, &v276);
            }

            v21 = v69;
            if (v69)
            {
              goto LABEL_32;
            }

            v70 = atomic_load(&v257);
            if (v70)
            {
              goto LABEL_98;
            }

            goto LABEL_74;
          }

          v48 = *(v240 + 4 * v41);
          v273 = v48;
          v47 = v41;
          if (v41 != 2)
          {
            goto LABEL_68;
          }

          if (v247)
          {
            v49 = 0;
            v50 = 0;
            v51 = v272;
            v52 = v272[2];
            v53 = *v31;
            v55 = *(*v31 + 16);
            v54 = *(*v31 + 24);
            do
            {
              if (v33)
              {
                v56 = (*(v53 + (v261 << 6) + 24) + *(v53 + (v261 << 6) + 16) * v50);
                v57 = (v51[5 * v262 + 3] + v49);
                v58 = v54;
                v59 = v33;
                do
                {
                  v60 = *v57++;
                  v61 = v60 * v48 + 0.5;
                  *v56 = v61;
                  v62 = *v58++;
                  *v56++ = (v61 - v62 + ((v61 - v62) >> 31)) & 0xFFFFFFFE;
                  --v59;
                }

                while (v59);
              }

              ++v50;
              v54 = (v54 + v55);
              v49 += v52;
            }

            while (v50 != v247);
          }

LABEL_74:
          v41 = v262;
LABEL_75:
          v262 = v41 + 1;
          v232 = v41++ < 2;
          if (!v232)
          {
            goto LABEL_76;
          }
        }

        v46 = (1 - v41);
        v261 = 1 - v41;
        v47 = v41;
        v273 = *(v240 + 4 * v41);
        goto LABEL_68;
      }

LABEL_76:
      if (*(v248 + 104) == 1 && *(a1 + 576) == 1)
      {
        v262 = 1;
      }
    }

    v241 = v40;
    v246 = a7;
    v273 = 0.0;
    if (a5[1] != *a5)
    {
      v71 = 0;
      v72 = v262;
      do
      {
        v73 = *(v248 + 328);
        v74 = *(*(v253 + 272) + 4 * v71);
        v75 = *v31 + (v72 << 6);
        v76 = ((v74 - 1 + v246[3]) / v74);
        *(v75 + 40) = ((v74 - 1 + v246[2]) / v74);
        *(v75 + 48) = v76;
        v21 = sub_240B43734(v75);
        if (v21)
        {
          goto LABEL_32;
        }

        v77 = v73 + 96 * v71;
        v78 = __clz(v74);
        v79 = v78 ^ 0x3F;
        v80 = 64 - v78;
        v81 = *(v253 + 268);
        v82 = __clz(v81) ^ 0x1F;
        v83 = (v81 & (v81 - 1)) != 0;
        if ((v74 & (v74 - 1)) == 0)
        {
          v80 = v79;
        }

        v84 = v80 - v83 - v82;
        v85 = *v31;
        *(*v31 + (v262 << 6) + 60) = v84;
        *(v85 + (v262 << 6) + 56) = v84;
        v86 = *(v77 + 28);
        v261 = v86;
        v260 = *(v77 + 32);
        LOBYTE(v259) = *(v77 + 24);
        v87 = ~(-1 << *(v77 + 28));
        if (v259)
        {
          v87 = 1.0;
        }

        v258 = *&v87;
        if (v86 + (v259 ^ 1) > v30)
        {
          v30 = v86 + (v259 ^ 1);
        }

        v257 = 0;
        v88 = *(v85 + (v262 << 6) + 4);
        *&v276 = &v257;
        *(&v276 + 1) = a5;
        v277 = &v273;
        v278[0] = a6;
        v278[1] = v31;
        v278[2] = &v262;
        v278[3] = &v261;
        v278[4] = &v260;
        v278[5] = &v259;
        v278[6] = &v258;
        if (a11)
        {
          v89 = sub_240BB0F20(a11, v88, &v276);
        }

        else
        {
          v254 = 0;
          *v255 = &v254;
          v89 = sub_240BB0F20(&v254, v88, &v276);
        }

        v33 = v245;
        v21 = v89;
        if (v89)
        {
          goto LABEL_32;
        }

        v90 = atomic_load(&v257);
        if (v90)
        {
          goto LABEL_98;
        }

        v71 = *&v273 + 1;
        *&v273 = v71;
        v72 = ++v262;
      }

      while (v71 < 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3));
    }

    if (*(a1 + 912) == 5)
    {
      v91 = 16;
    }

    else
    {
      v91 = 32;
    }

    if (v30 > v91)
    {
LABEL_98:
      v21 = 1;
      goto LABEL_32;
    }

    v237 = v30;
    v92 = a1 + 512;
    v236 = v91;
    if ((sub_240B97DD0(v242) & 1) == 0)
    {
      if (!*(a1 + 576))
      {
        *(a1 + 876) = 0;
      }

      *(a1 + 888) = 0;
      *(a1 + 880) = 0;
      if (v270)
      {
        goto LABEL_109;
      }

      goto LABEL_131;
    }

    if (*(a1 + 884))
    {
      v93 = v270;
    }

    else
    {
      v93 = v270;
      if ((*(a1 + 888) & 1) == 0)
      {
        if (v270)
        {
          goto LABEL_109;
        }

        goto LABEL_131;
      }
    }

    if (v93)
    {
LABEL_109:
      v94 = 1;
      goto LABEL_134;
    }

    if ((((*(v31 + 8) - *v31) >> 6) - *(v31 + 72)) >= 2)
    {
      sub_240B65F00(&v276, 1);
      v95 = *(v31 + 72);
      HIDWORD(v276) = v95;
      v96 = ((*(v31 + 8) - *v31) >> 6) - v95;
      v97 = v247 * v33;
      v98 = (v247 * v33) >> 1;
      v99 = *(a1 + 884);
      if (v99 >= 0)
      {
        v100 = *(a1 + 884);
      }

      else
      {
        v100 = -v99;
      }

      if (v100 < v98)
      {
        LODWORD(v98) = v100;
      }

      HIDWORD(v277) = v96;
      LODWORD(v278[0]) = v98;
      LOBYTE(v278[5]) = v99 >= 0;
      if (v96 == 3)
      {
        v101 = *(a1 + 888);
      }

      else
      {
        v101 = 0;
      }

      BYTE1(v278[5]) = v101;
      if (v101 == 1)
      {
        HIDWORD(v278[4]) = *(a1 + 1224);
      }

      v254 = &unk_2852A1238;
      *&v255[4] = 0u;
      memset(v256, 0, sizeof(v256));
      sub_240B53CC8(&v254);
      sub_240BB0FD0(v31, &v276, *(a1 + 560), &v254, a11, *(a1 + 856));
      *&v276 = &unk_2852A1210;
      v254 = &v278[1];
      sub_240B388C4(&v254);
      v33 = v245;
      if ((((*(v31 + 8) - *v31) >> 6) - *(v31 + 72)) >= 4)
      {
        sub_240B65F00(&v276, 1);
        HIDWORD(v276) = *(v31 + 72);
        v102 = v97 / 3;
        v103 = *(a1 + 884);
        if (v103 >= 0)
        {
          v104 = *(a1 + 884);
        }

        else
        {
          v104 = -v103;
        }

        if (v104 < v102)
        {
          LODWORD(v102) = v104;
        }

        HIDWORD(v277) = ((*(v31 + 8) - *v31) >> 6) + ~HIDWORD(v276);
        LODWORD(v278[0]) = v102;
        LOBYTE(v278[5]) = v103 >= 0;
        BYTE1(v278[5]) = *(a1 + 888);
        if (BYTE1(v278[5]) == 1)
        {
          HIDWORD(v278[4]) = *(a1 + 1224);
        }

        v254 = &unk_2852A1238;
        *&v255[4] = 0u;
        memset(v256, 0, sizeof(v256));
        sub_240B53CC8(&v254);
        sub_240BB0FD0(v31, &v276, *(a1 + 560), &v254, a11, *(a1 + 856));
        *&v276 = &unk_2852A1210;
        v254 = &v278[1];
        sub_240B388C4(&v254);
      }
    }

LABEL_131:
    if (*(a1 + 876) <= 0.0 || (*(a1 + 888) & 1) != 0)
    {
      v94 = 0;
    }

    else if (*(a1 + 560) < 9 || (v94 = 0, v271 == 1) && *v238 >= 9)
    {
      v251 = ((*(v31 + 8) - *v31) >> 6) - *(v31 + 72);
      if (v251)
      {
        v107 = 0;
        v108 = 0;
        v109 = (v247 * v33) >> 4;
        v110 = v241;
        do
        {
          v111 = (*v31 + (*(v31 + 72) << 6) + (v108 << 6));
          v112 = v111[6];
          if (v112)
          {
            v113 = 0;
            v115 = v111[2];
            v114 = v111[3];
            v116 = 0x80000000;
            v117 = 0x7FFFFFFF;
            v118 = v111[5];
            do
            {
              v119 = v114;
              for (i = v118; i; --i)
              {
                v122 = *v119++;
                v121 = v122;
                if (v122 < v117)
                {
                  v117 = v121;
                }

                if (v121 > v116)
                {
                  v116 = v121;
                }
              }

              ++v113;
              v114 = (v114 + v115);
            }

            while (v113 != v112);
            v123 = v117;
            v124 = v116 + 1;
          }

          else
          {
            v124 = -2147483647;
            v123 = 0x7FFFFFFFLL;
          }

          sub_240B65F00(&v276, 1);
          v125 = *(a1 + 876) / 100.0;
          HIDWORD(v276) = *(v31 + 72) + v108;
          v126 = (v125 * (v124 - v123));
          if (v126 >= v109)
          {
            v126 = v109;
          }

          HIDWORD(v277) = 1;
          LODWORD(v278[0]) = v126;
          v254 = &unk_2852A1238;
          *&v255[4] = 0u;
          memset(v256, 0, sizeof(v256));
          v274 = xmmword_240C112C0;
          *&v273 = &unk_2852A2120;
          v275 = 0;
          sub_240B63734(&v254, &v273);
          if (sub_240BB0FD0(v31, &v276, *(a1 + 560), &v254, a11, 0))
          {
            v127 = (*v31 + (*(v31 + 72) << 6) + (v108 << 6));
            v128 = v127[6];
            if (v128)
            {
              v129 = 0;
              v131 = v127[2];
              v130 = v127[3];
              v132 = 0x80000000;
              v133 = v127[5];
              do
              {
                v134 = v130;
                for (j = v133; j; --j)
                {
                  v137 = *v134++;
                  v136 = v137;
                  if (v137 > v132)
                  {
                    v132 = v136;
                  }
                }

                ++v129;
                v130 = (v130 + v131);
              }

              while (v129 != v128);
            }

            else
            {
              v132 = 0x80000000;
            }

            if (v132 < v110)
            {
              v110 = v132;
            }

            v138 = 32 - __clz(v132 - 1);
            if (v132 <= 0)
            {
              v139 = 0;
            }

            else
            {
              v139 = v138;
            }

            if (v107 <= v139)
            {
              v107 = v139;
            }
          }

          else
          {
            v107 = v237;
          }

          *&v276 = &unk_2852A1210;
          v254 = &v278[1];
          sub_240B388C4(&v254);
          ++v108;
        }

        while (v108 != v251);
        v241 = v110;
        v94 = 0;
        v237 = v107;
        v92 = a1 + 512;
      }

      else
      {
        v94 = 0;
        v237 = 0;
      }
    }

LABEL_134:
    v239 = v94;
    if (*(a1 + 576) == 1 && v271 == 1 && (((*(v31 + 8) - *v31) >> 6) - *(v31 + 72)) >= 3 && v237 + 1 < v91)
    {
      v105 = *(a1 + 868);
      if (v105 < 0)
      {
        if (!sub_240B97DD0(v92) || *(a1 + 560) >= 6)
        {
          sub_240B65F00(&v276, 0);
          HIDWORD(v276) = *(v31 + 72);
          LODWORD(v277) = 6;
          v254 = &unk_2852A1238;
          *&v255[4] = 0u;
          memset(v256, 0, sizeof(v256));
          sub_240B53CC8(&v254);
          sub_240BB1198(v31, &v276, &v254, a11, 0);
          goto LABEL_183;
        }
      }

      else if (v105 >= 1)
      {
        sub_240B65F00(&v276, 0);
        v106 = *(a1 + 868);
        HIDWORD(v276) = *(v31 + 72);
        LODWORD(v277) = v106;
        v254 = &unk_2852A1238;
        *&v255[4] = 0u;
        memset(v256, 0, sizeof(v256));
        sub_240B53CC8(&v254);
        sub_240BB1198(v31, &v276, &v254, a11, 0);
LABEL_183:
        *&v276 = &unk_2852A1210;
        v254 = &v278[1];
        sub_240B388C4(&v254);
        ++v237;
      }
    }

    v252 = v31;
    v140 = *(a1 + 872);
    if (v140 >= 1)
    {
      v142 = *v31;
      v141 = *(v31 + 8);
      if (v140 < (v141 - *v31) >> 6)
      {
        v143 = 0;
        v144 = *(a1 + 872);
        do
        {
          if (v140)
          {
            do
            {
              sub_240B65F00(&v276, 0);
              v145 = v140 + v143 - 2;
              if (v140 == 1)
              {
                v145 = v143;
                v146 = 28;
              }

              else
              {
                v146 = 14;
              }

              HIDWORD(v276) = v145;
              LODWORD(v277) = v146;
              v254 = &unk_2852A1238;
              if (v140 == 1)
              {
                v140 = 0;
              }

              else
              {
                v140 -= 2;
              }

              *&v255[4] = 0u;
              memset(v256, 0, sizeof(v256));
              v274 = xmmword_240C112C0;
              *&v273 = &unk_2852A2120;
              v275 = 0;
              sub_240B63734(&v254, &v273);
              sub_240BB1198(v31, &v276, &v254, a11, 0);
              *&v276 = &unk_2852A1210;
              v254 = &v278[1];
              sub_240B388C4(&v254);
            }

            while (v140);
            v144 = *(a1 + 872);
            v142 = *v31;
            v141 = *(v31 + 8);
          }

          ++v143;
          v140 = v144;
        }

        while (v143 + v144 < ((v141 - v142) >> 6));
      }
    }

    if (v239)
    {
      v147 = v246;
      v148 = (a1 + 512);
      v149 = v241;
      v151 = v236;
      v150 = v237;
    }

    else
    {
      v147 = v246;
      v149 = v241;
      v151 = v236;
      v150 = v237;
      if (*(a1 + 864))
      {
        v148 = (a1 + 512);
        if (*v31 != *(v31 + 8) && v237 + 2 < v236)
        {
          sub_240B65F00(&v276, 2);
          v254 = &unk_2852A1238;
          *&v255[4] = 0u;
          memset(v256, 0, sizeof(v256));
          sub_240B53CC8(&v254);
          sub_240BB1198(v31, &v276, &v254, a11, 0);
          *&v276 = &unk_2852A1210;
          v254 = &v278[1];
          sub_240B388C4(&v254);
          v150 = v237 + 2;
        }
      }

      else
      {
        v148 = (a1 + 512);
      }
    }

    if (v150 >= v151)
    {
      *(a1 + 868) = 0;
    }

    if ((sub_240B97DD0(v148) & 1) == 0)
    {
      v152 = (*(v31 + 8) - *v31) >> 6;
      LODWORD(v276) = 1;
      sub_240B2B4A8((a1 + 96), v152, &v276);
      if (*(a1 + 864))
      {
        v153 = 0.25;
      }

      else
      {
        v153 = 0.025;
      }

      if (*(a1 + 576))
      {
        v154 = v149 / 255.0;
      }

      else
      {
        v154 = 1.0;
      }

      v276 = 0uLL;
      v155 = 3;
      v277 = 0;
      do
      {
        *&v254 = v154 * (v153 * *v148);
        sub_240BB1EE4(&v276, &v254);
        --v155;
      }

      while (v155);
      if (a5[1] != *a5)
      {
        v156 = 0;
        v157 = 28;
        do
        {
          v158 = *(*(v248 + 328) + v157);
          if (v158 < 32)
          {
            v159 = ~(-1 << v158);
          }

          else
          {
            v159 = 0;
          }

          v160 = *(a1 + 520);
          v161 = 0.0;
          if (v156 < (*(a1 + 528) - v160) >> 2)
          {
            v161 = *(v160 + 4 * v156);
            if (v161 < 0.0)
            {
              v161 = *v148;
            }
          }

          *&v254 = (v159 / 255.0) * (v153 * v161);
          sub_240BB1EE4(&v276, &v254);
          ++v156;
          v157 += 96;
        }

        while (v156 < 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3));
      }

      v162 = *(a1 + 728);
      if (v162 == 0.0)
      {
        v21 = 1;
        v166 = v276;
      }

      else
      {
        v163 = *(v31 + 72);
        v164 = *v31;
        v165 = (*(v31 + 8) - *v31) >> 6;
        v166 = v276;
        if (v165 > v163)
        {
          v167 = v163;
          v168 = 3;
          if (v271)
          {
            v168 = 0;
          }

          v169 = *(a1 + 576);
          v170 = *(a1 + 96);
          v171 = *(v31 + 72);
          do
          {
            v172 = (v164 + (v167 << 6));
            v173 = v172[15] + v172[14];
            if (v173 >= 16)
            {
              v174 = 16;
            }

            else
            {
              v174 = v172[15] + v172[14];
            }

            v175 = v173 > 0;
            v176 = v168 + (v167 - v163) % v243;
            if (v243 >= 3 && v165 - 4 <= v167 && *(a1 + 864))
            {
              v176 = 1;
            }

            v177 = v174 - v175;
            if (v169 || v176 > 2)
            {
              if (!*(a1 + 868) || (v176 - 1) > 1)
              {
                v180 = flt_240C84E9C[v177] * ((v166[v176] * 0.35) * 1.1);
                goto LABEL_244;
              }

              v178 = v166[v176] * 0.35;
              v179 = flt_240C84E5C[v177];
            }

            else
            {
              v178 = v166[v176] * 2.4;
              v179 = flt_240C84D9C[16 * v176 + v177];
            }

            v180 = v178 * v179;
LABEL_244:
            if (v180 <= 1)
            {
              v181 = 1;
            }

            else
            {
              v181 = v180;
            }

            if (v180 >= 2)
            {
              v182 = v172[1];
              if (v182)
              {
                v183 = 0;
                v185 = *(v172 + 2);
                v184 = *(v172 + 3);
                v186 = v181 >> 1;
                LODWORD(v187) = *v172;
                do
                {
                  if (v187)
                  {
                    v188 = 0;
                    do
                    {
                      v189 = *(v184 + 4 * v188);
                      if (v189 < 0)
                      {
                        v190 = (v186 - v189) % v181 - (v186 - v189);
                      }

                      else
                      {
                        v190 = (v189 + v186) / v181 * v181;
                      }

                      *(v184 + 4 * v188++) = v190;
                      v187 = *v172;
                    }

                    while (v188 < v187);
                    v182 = v172[1];
                    v18 = a11;
                  }

                  ++v183;
                  v184 += v185;
                }

                while (v183 < v182);
              }
            }

            *(v170 + 4 * v167) = v181;
            LODWORD(v171) = v171 + 1;
            v167 = v171;
            v147 = v246;
          }

          while (v165 > v171);
        }

        v21 = 0;
      }

      if (v166)
      {
        operator delete(v166);
      }

      if (v162 == 0.0)
      {
        goto LABEL_32;
      }
    }

    if (v147[15])
    {
      v191 = 0;
      do
      {
        v192 = v147[12];
        v193 = v191 / v192;
        v194 = v191 % v192;
        v195 = v147[17];
        v196 = v195 * v194;
        v197 = v194 + (*v244 >> 11);
        v198 = v195 * v193;
        v199 = v193 + (v244[1] >> 11);
        v200 = *(a1 + 464);
        *&v276 = v196;
        *(&v276 + 1) = v198;
        v277 = v195;
        v278[0] = v195;
        v278[1] = 0x3E800000003;
        LODWORD(v278[2]) = 2;
        v278[3] = 0;
        v278[4] = v197 + v199 * v200;
        v278[5] = 0;
        sub_240BB1FBC(a1 + 1232, &v276);
        ++v191;
      }

      while (v191 < v147[15]);
    }

    v201 = v147[14];
    if (v201)
    {
      v202 = 0;
      v203 = *(a9 + 4272);
      do
      {
        if (v203)
        {
          v204 = 0;
          v205 = v147[10];
          v206 = v202 / v205;
          v207 = v202 % v205;
          v208 = v147[16];
          v209 = v208 * v207;
          v210 = v208 * v206;
          v211 = *v244 / *(a1 + 496) + v207 + (v244[1] / *(a1 + 496) + v206) * *(a1 + 448);
          do
          {
            LODWORD(v254) = 0;
            LODWORD(v273) = 0;
            sub_240B3A8D8((v253 + 104), v204, &v273, &v254);
            *&v276 = v209;
            *(&v276 + 1) = v210;
            v277 = v208;
            v278[0] = v208;
            v278[1] = __PAIR64__(v254, LODWORD(v273));
            LODWORD(v278[2]) = 5;
            v278[3] = 0;
            v278[4] = v211;
            v278[5] = v204;
            sub_240BB1FBC(a1 + 1232, &v276);
            ++v204;
            v203 = *(a9 + 4272);
          }

          while (v204 < v203);
          v147 = v246;
          v201 = v246[14];
        }

        ++v202;
      }

      while (v202 < v201);
    }

    if (*(a1 + 1240) - *(a1 + 1232) == 144)
    {
      v276 = 0u;
      v277 = v245;
      v278[0] = v247;
      v278[1] = 0x3E800000000;
      memset(&v278[2], 0, 32);
      sub_240BB1FBC(a1 + 1232, &v276);
    }

    v212 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
    v213 = *(a1 + 1184);
    v214 = *(a1 + 1176);
    v215 = 0xAAAAAAAAAAAAAAABLL * ((v213 - v214) >> 3);
    v216 = v212 - v215;
    if (v212 <= v215)
    {
      if (v212 < v215)
      {
        v220 = v214 + 0x5D1745D1745D1748 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
        if (v213 != v220)
        {
          v221 = *(a1 + 1184);
          do
          {
            v223 = *(v221 - 24);
            v221 -= 24;
            v222 = v223;
            if (v223)
            {
              *(v213 - 16) = v222;
              operator delete(v222);
            }

            v213 = v221;
          }

          while (v221 != v220);
        }

        *(a1 + 1184) = v220;
      }
    }

    else
    {
      v217 = *(a1 + 1192);
      if (0xAAAAAAAAAAAAAAABLL * ((v217 - v213) >> 3) < v216)
      {
        if (v212 <= 0xAAAAAAAAAAAAAAALL)
        {
          v218 = 0xAAAAAAAAAAAAAAABLL * ((v217 - v214) >> 3);
          if (2 * v218 > v212)
          {
            v212 = 2 * v218;
          }

          if (v218 >= 0x555555555555555)
          {
            v219 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v219 = v212;
          }

          if (v219 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_240B2291C();
        }

        sub_240B228BC();
      }

      bzero(*(a1 + 1184), 24 * ((24 * v216 - 24) / 0x18) + 24);
      *(a1 + 1184) = v213 + 24 * ((24 * v216 - 24) / 0x18) + 24;
    }

    v224 = 954437177 * ((*(a1 + 1240) - *(a1 + 1232)) >> 3);
    *&v276 = a1;
    *(&v276 + 1) = &v271;
    v277 = &v270;
    if (v18)
    {
      v225 = sub_240BB2120(v18, v224, &v276);
    }

    else
    {
      v254 = 0;
      *v255 = &v254;
      v225 = sub_240BB2120(&v254, v224, &v276);
    }

    v21 = v225;
    if (!v225)
    {
      v226 = *(a1 + 48);
      v227 = v226[9];
      v228 = *v226;
      v229 = (v226[1] - *v226) >> 6;
      if (v227 < v229)
      {
        v230 = *(a1 + 496);
        v231 = (v228 + (v227 << 6) + 48);
        while (1)
        {
          v232 = *(v231 - 1) > v230 || *v231 > v230;
          if (v232)
          {
            break;
          }

          v231 += 8;
          if (v229 == ++v227)
          {
            goto LABEL_311;
          }
        }
      }

      if (v227 < v229)
      {
        v233 = v227 << 6;
        do
        {
          v234 = v228 + v233;
          v235 = *(v228 + v233 + 24);
          *v234 = 0u;
          *(v234 + 16) = 0u;
          if (v235)
          {
            atomic_fetch_add(&qword_27E519020, -*(v235 - 24));
            free(*(v235 - 32));
          }

          *(v234 + 32) = 0;
          ++v227;
          v228 = *v226;
          v233 += 64;
        }

        while (v227 < (v226[1] - *v226) >> 6);
      }

LABEL_311:
      v21 = sub_240B63CEC(v252, *(*(a1 + 72) + 8));
    }

    goto LABEL_32;
  }

  v23 = v272;
  v21 = sub_240BB88F4(v272, a9, a10, 0, a12, *(a1 + 576) == 0, a7, a8);
  if (!v21)
  {
    sub_240BB8708((a9 + 1256), v23);
    v22 = (a3 + 28);
    goto LABEL_12;
  }

  return v21;
}