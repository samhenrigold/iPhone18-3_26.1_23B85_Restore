void sub_239E115F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL, a3, a4, a5, a6, a7, a8);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E11684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v59 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v59;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v18);
  a7[1] = v18;
  if (a2)
  {
    if (a5)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v20), v16, v17);
        if ((vmovn_s32(vcgtq_f32(v21, v22)).u8[0] & 1) == 0 && v22.f32[1] >= v21.f32[1] && v22.f32[2] >= v21.f32[2])
        {
          v24 = 0;
          v25.i64[0] = 0x7F0000007FLL;
          v25.i64[1] = 0x7F0000007FLL;
          v26 = vnegq_f32(v25);
          do
          {
            v27 = v26;
            v28 = v25;
            if (v24)
            {
              v29 = v21.f32[0];
            }

            else
            {
              v29 = v22.f32[0];
            }

            if ((v24 & 2) != 0)
            {
              v30 = v21.f32[1];
            }

            else
            {
              v30 = v22.f32[1];
            }

            if (v24 >= 4)
            {
              v31 = v21.f32[2];
            }

            else
            {
              v31 = v22.f32[2];
            }

            v32 = vaddq_f32(*(a2 + (v20 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v20 << 6)), v29), *(a2 + (v20 << 6) + 16), v30), *(a2 + (v20 << 6) + 32), v31));
            v33 = v27;
            v33.i32[3] = 0;
            v32.i32[3] = 0;
            v34 = vminnmq_f32(v33, v32);
            v26 = v34;
            v26.i32[3] = v27.i32[3];
            v35 = v28;
            v35.i32[3] = 0;
            v36 = vmaxnmq_f32(v35, v32);
            v25 = v36;
            v25.i32[3] = v28.i32[3];
            ++v24;
          }

          while (v24 != 8);
          v37 = *a7;
          v38 = a7[1];
          v37.i32[3] = 0;
          v26.i32[3] = 0;
          v39 = vminnmq_f32(v37, v26);
          v38.i32[3] = 0;
          v25.i32[3] = 0;
          v40 = vmaxnmq_f32(v38, v25);
          a7->i32[2] = v39.i32[2];
          a7[1].i32[2] = v40.i32[2];
          a7->i64[0] = v39.i64[0];
          a7[1].i64[0] = v40.i64[0];
          v41 = v19++;
          v42 = memptr + 32 * v41;
          *v42 = v34.i64[0];
          *(v42 + 2) = v34.i32[2];
          *(v42 + 3) = v20;
          *(v42 + 2) = v36.i64[0];
          *(v42 + 6) = v36.i32[2];
          *(v42 + 7) = 0;
        }

        ++v20;
      }

      while (v20 != a5);
    }
  }

  else if (a5)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v44), v16, v17);
      v47 = vcgt_f32(*v45.f32, *v46.f32);
      if ((v47.i8[0] & 1) == 0 && (v47.i8[4] & 1) == 0 && v46.f32[2] >= v45.f32[2])
      {
        v48 = *a7;
        v49 = a7[1];
        v48.i32[3] = 0;
        v50 = v45;
        v50.i32[3] = 0;
        v51 = vminnmq_f32(v48, v50);
        v49.i32[3] = 0;
        v52 = v46;
        v52.i32[3] = 0;
        a7->i32[2] = v51.i32[2];
        v53 = vmaxnmq_f32(v49, v52);
        a7->i64[0] = v51.i64[0];
        a7[1].i32[2] = v53.i32[2];
        a7[1].i64[0] = v53.i64[0];
        v54 = v43++;
        v55 = memptr + 32 * v54;
        *v55 = v45.i64[0];
        *(v55 + 2) = v45.i32[2];
        *(v55 + 3) = v44;
        *(v55 + 2) = v46.i64[0];
        *(v55 + 6) = v46.i32[2];
        *(v55 + 7) = 0;
      }

      ++v44;
    }

    while (a5 != v44);
  }

  v56 = *(a1 + 12);
  if (v56 != 1)
  {
    if (!v56)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E11BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E11C0C(uint64_t a1, _DWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(a4 + 8) = *a2;
  *(a4 + 12) = v10;
  *(a4 + 16) = v11;
  *(a4 + 20) = v12;
  *(a4 + 24) = v13;
  *(a4 + 28) = v14;
  *a4 = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E11CF0(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t sub_239E11CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v13 = &v39[-2 * v12];
  v39[0] = v13;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v14 = *a6;
      v15 = *(a6 + 8);
      v16 = *v15;
      *v16 = HIDWORD(v11);
      v17 = *v14;
      *v15 = v16 + 1;
      v18 = *(a6 + 16);
      v19 = *v18;
      *v19 = -HIDWORD(v10);
      v20 = v17 + 32 * v10;
      *v18 = v19 + 1;
      v21 = (**(a6 + 24) + 16 * (v10 >> 32));
      LODWORD(v19) = *(v20 + 28);
      v22 = -v19;
      v23 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v21 = v22;
      v21[1] = v23;
      v21[2] = v11;
      v21[3] = 0;
      if (v19)
      {
        v24 = **(a6 + 48);
        v25 = *(v20 + 12);
        v26 = 32 * v22;
        v27 = v24 + 32 * v25;
        v28 = 32 * v25;
        v29 = (v27 + 12);
        v30 = v26;
        do
        {
          v31 = *v29;
          v29 += 8;
          v32 = *(a6 + 32);
          v33 = *v32;
          *v33 = v31;
          *v32 = v33 + 1;
          v30 -= 32;
        }

        while (v30);
        v34 = (v24 + v28 + 28);
        do
        {
          v35 = *v34;
          v34 += 8;
          v36 = *(a6 + 56);
          v37 = *v36;
          *v37 = v35;
          *v36 = v37 + 1;
          v26 -= 32;
        }

        while (v26);
      }
    }

    else
    {
      result = sub_239E17918(a5, v10, v11, v39);
    }

    v38 = v39[0];
    if (v39[0] == v13)
    {
      break;
    }

    v39[0] -= 2;
    v10 = *(v38 - 2);
    v11 = *(v38 - 1);
  }

  return result;
}

uint64_t sub_239E11E9C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a5 + 8) = *a2;
  *(a5 + 12) = v9;
  *(a5 + 16) = v10;
  *(a5 + 20) = v11;
  *(a5 + 24) = v12;
  *(a5 + 28) = v13;
  *a5 = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E11F64(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t sub_239E11F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v13 = &v22[-2 * v12];
  v22[0] = v13;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v14 = *(a6 + 8);
      v15 = **a6 + 32 * v10;
      v16 = *v14;
      *v16 = HIDWORD(v11);
      *v14 = v16 + 1;
      v17 = *(a6 + 16);
      v18 = *v17;
      *v18 = -HIDWORD(v10);
      *v17 = v18 + 1;
      v19 = *(v15 + 28) ? *(**(a6 + 32) + 32 * *(v15 + 12) + 12) : -1;
      v20 = (**(a6 + 24) + 8 * (v10 >> 32));
      *v20 = v19;
      v20[1] = v11;
    }

    else
    {
      result = sub_239E17918(a5, v10, v11, v22);
    }

    v21 = v22[0];
    if (v22[0] == v13)
    {
      break;
    }

    v22[0] -= 2;
    v10 = *(v21 - 2);
    v11 = *(v21 - 1);
  }

  return result;
}

__n128 sub_239E120B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D08668;
  return result;
}

__n128 sub_239E120F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D08668;
  return result;
}

void sub_239E12148(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10, unsigned int a11)
{
  v11 = a3;
  v266 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 4) + 40))
  {
    sub_239E24B58(a1, a2);
  }

  v220 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v224 = *(a2 + 2);
  v222 = *(a2 + 3);
  if (a10 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v259 = 0;
  v258 = 0;
  v260 = 0;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v253 = 0;
  v252 = 0;
  v254 = 0;
  v250 = 0;
  v249 = 0;
  v251 = 0;
  v231 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = 0;
  v232 = 0;
  v234 = 0;
  v223 = v13 * a5;
  v225 = v11;
  for (i = objc_msgSend_count(v11, v16, v17); v14 < i; i = objc_msgSend_count(v225, v67, v68))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, v14);
    v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v22, v14);
    v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a6, v27, v14);
    v29 = v13;
    v31 = objc_msgSend_objectAtIndexedSubscript_(a7, v30, v14);
    v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
    v245[0] = 0;
    v261[0] = 0;
    v36 = objc_msgSend_objectAtIndexedSubscript_(a9, v35, v14);
    v39 = objc_msgSend_unsignedIntegerValue(v36, v37, v38);
    if (objc_msgSend_storageMode(v21, v40, v41) == 2)
    {
      v45 = objc_msgSend_length(v21, v42, v43) - v26;
      if (v28)
      {
        v46 = v45;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v45, 0);
      }

      else
      {
        v46 = v223 * v39;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v223 * v39, 0);
      }

      v50 = v47;
      if (!v234)
      {
        v234 = objc_msgSend_commandBuffer(v222, v48, v49);
        v232 = objc_msgSend_blitCommandEncoder(v234, v51, v52);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v48, v21, v26, v50, 0, v46);
      v55 = objc_msgSend_contents(v50, v53, v54);
    }

    else
    {
      v50 = 0;
      v55 = (objc_msgSend_contents(v21, v42, v43) + v26);
    }

    v245[0] = v55;
    if (v28)
    {
      if (objc_msgSend_storageMode(v28, v56, v57) == 2)
      {
        v62 = objc_msgSend_newBufferWithLength_options_(v224, v58, 4 * v39 * v29, 0);
        if (!v234)
        {
          v234 = objc_msgSend_commandBuffer(v222, v60, v61);
          v232 = objc_msgSend_blitCommandEncoder(v234, v63, v64);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v60, v28, v34, v62, 0, 4 * v39 * v29);
        v261[0] = objc_msgSend_contents(v62, v65, v66);
      }

      else
      {
        v62 = 0;
        v261[0] = (objc_msgSend_contents(v28, v58, v59) + v34);
      }
    }

    else
    {
      v62 = 0;
    }

    sub_239DEDD74(&v258, v245);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v255, __p);
    sub_239DEDD74(&v252, v261);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v249, __p);
    if (v50)
    {
      objc_msgSend_addObject_(v231, v67, v50);
    }

    if (v62)
    {
      objc_msgSend_addObject_(v231, v67, v62);
    }

    v15 += v39 * v29;
    v13 = v29;
    ++v14;
    v11 = v225;
  }

  if (v234)
  {
    objc_msgSend_endEncoding(v232, v19, v20);
    objc_msgSend_commit(v234, v69, v70);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v234, v71, v72);
    kdebug_trace();
  }

  memset(v245, 0, sizeof(v245));
  sub_239E15CC0(v245, v258, v259, (v259 - v258) >> 3);
  memset(v246, 0, sizeof(v246));
  sub_239E15D78(v246, v255, v256, (v256 - v255) >> 2);
  memset(v247, 0, sizeof(v247));
  sub_239E15CC0(v247, v252, v253, (v253 - v252) >> 3);
  memset(v248, 0, sizeof(v248));
  sub_239E15D78(v248, v249, v250, (v250 - v249) >> 2);
  v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v73, v74);
  kdebug_trace();
  v76 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v76 = 2.0;
  }

  v77 = (v76 * (v15 / v13));
  memptr = 0;
  v78 = 32 * v77;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v77, 0x1000040E0EAB150uLL);
  v243 = 0;
  if (a10)
  {
    v81 = 0;
    v82.i64[0] = 0x7F0000007FLL;
    v82.i64[1] = 0x7F0000007FLL;
    v83.n128_u64[0] = 0x7F0000007FLL;
    v83.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v82);
    v235 = v83;
    while (v81 < objc_msgSend_count(v11, v79, v80))
    {
      v85 = objc_msgSend_objectAtIndexedSubscript_(a9, v84, v81);
      v88 = objc_msgSend_unsignedIntegerValue(v85, v86, v87);
      if (v88)
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v92 + 1;
          v95 = v92 + 2;
          v96 = v92 + 3;
          v97 = *(v247[0] + v81);
          if (v97)
          {
            if (*(v248[0] + v81) == 4)
            {
              v98 = *(v97 + 4 * v92);
              v94 = *(v97 + 4 * v94);
              v95 = *(v97 + 4 * v95);
              v96 = *(v97 + 4 * v96);
            }

            else
            {
              v98 = *(v97 + 2 * v92);
              v94 = *(v97 + 2 * v94);
              v95 = *(v97 + 2 * v95);
              v96 = *(v97 + 2 * v96);
            }
          }

          else
          {
            v98 = v92;
          }

          v99 = *(v245[0] + v81);
          v100 = *(v246[0] + v81);
          v101 = v99 + v100 * v98;
          v89.i64[0] = *v101;
          v89.i32[2] = *(v101 + 8);
          v102 = v99 + v100 * v94;
          v91.i64[0] = *v102;
          v91.i32[2] = *(v102 + 8);
          v103 = v99 + v100 * v95;
          v90.i64[0] = *v103;
          v90.i32[2] = *(v103 + 8);
          v104 = vsubq_f32(v91, v89);
          v105 = vsubq_f32(v90, v89);
          v106 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL))), v105, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
          v107 = vmulq_f32(v106, v106);
          if (sqrtf(v107.f32[1] + (v107.f32[2] + v107.f32[0])) != 0.0)
          {
            v108 = v99 + v100 * v96;
            v109.i64[0] = *v108;
            v89.i32[3] = 0;
            v91.i32[3] = 0;
            v110 = vminnmq_f32(v89, v91);
            v111 = vmaxnmq_f32(v89, v91);
            v110.i32[3] = 0;
            v90.i32[3] = 0;
            v112 = vminnmq_f32(v110, v90);
            v111.i32[3] = 0;
            v112.i32[3] = 0;
            v113 = vmaxnmq_f32(v111, v90);
            v109.i64[1] = *(v108 + 8);
            v114 = vminnmq_f32(v112, v109);
            v113.i32[3] = 0;
            v115 = vmaxnmq_f32(v113, v109);
            v116 = v233;
            v116.i32[3] = 0;
            v117 = v243++;
            v118 = memptr + 32 * v117;
            *(v118 + 2) = v114.i32[2];
            *v118 = v114.i64[0];
            v114.i32[3] = 0;
            v90 = vminnmq_f32(v116, v114);
            v91 = v235;
            v91.i32[3] = 0;
            *(v118 + 2) = v115.i64[0];
            *(v118 + 6) = v115.i32[2];
            v115.i32[3] = 0;
            v89 = vmaxnmq_f32(v91, v115);
            v90.i32[3] = v233.n128_i32[3];
            v89.i32[3] = v235.n128_i32[3];
            *(v118 + 3) = v93 - 1;
            *(v118 + 7) = v81;
            v233 = v90;
            v235 = v89;
          }

          v119 = v88 > v93++;
          v92 += 4;
        }

        while (v119);
      }

      ++v81;
    }
  }

  else
  {
    v120 = 0;
    v121.i64[0] = 0x7F0000007FLL;
    v121.i64[1] = 0x7F0000007FLL;
    v122.n128_u64[0] = 0x7F0000007FLL;
    v122.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v121);
    v235 = v122;
    while (v120 < objc_msgSend_count(v11, v79, v80))
    {
      v124 = objc_msgSend_objectAtIndexedSubscript_(a9, v123, v120);
      v127 = objc_msgSend_unsignedIntegerValue(v124, v125, v126);
      if (v127)
      {
        v131 = 0;
        v132 = 1;
        do
        {
          v133 = v131 + 1;
          v134 = v131 + 2;
          v135 = *(v247[0] + v120);
          if (v135)
          {
            if (*(v248[0] + v120) == 4)
            {
              v136 = *(v135 + 4 * v131);
              v133 = *(v135 + 4 * v133);
              v134 = *(v135 + 4 * v134);
            }

            else
            {
              v136 = *(v135 + 2 * v131);
              v133 = *(v135 + 2 * v133);
              v134 = *(v135 + 2 * v134);
            }
          }

          else
          {
            v136 = v131;
          }

          v137 = *(v245[0] + v120);
          v138 = *(v246[0] + v120);
          v139 = v137 + v138 * v136;
          v128.i64[0] = *v139;
          v128.i32[2] = *(v139 + 8);
          v140 = v137 + v138 * v133;
          v129.i64[0] = *v140;
          v129.i32[2] = *(v140 + 8);
          v141 = v137 + v138 * v134;
          v130.i64[0] = *v141;
          v130.i32[2] = *(v141 + 8);
          v142 = vsubq_f32(v129, v128);
          v143 = vsubq_f32(v130, v128);
          v144 = vmlaq_f32(vnegq_f32(vmulq_f32(v142, vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL))), v143, vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
          v145 = vmulq_f32(v144, v144);
          if (sqrtf(v145.f32[1] + (v145.f32[2] + v145.f32[0])) != 0.0)
          {
            v128.i32[3] = 0;
            v129.i32[3] = 0;
            v146 = vminnmq_f32(v128, v129);
            v146.i32[3] = 0;
            v147 = vmaxnmq_f32(v128, v129);
            v130.i32[3] = 0;
            v148 = vminnmq_f32(v146, v130);
            v147.i32[3] = 0;
            v149 = vmaxnmq_f32(v147, v130);
            v150 = v233;
            v150.i32[3] = 0;
            v151 = v243++;
            v152 = memptr + 32 * v151;
            *(v152 + 2) = v148.i32[2];
            *v152 = v148.i64[0];
            v148.i32[3] = 0;
            v129 = vminnmq_f32(v150, v148);
            v130 = v235;
            v130.i32[3] = 0;
            *(v152 + 2) = v149.i64[0];
            *(v152 + 6) = v149.i32[2];
            v149.i32[3] = 0;
            v128 = vmaxnmq_f32(v130, v149);
            v129.i32[3] = v233.n128_i32[3];
            v128.i32[3] = v235.n128_i32[3];
            *(v152 + 3) = v132 - 1;
            *(v152 + 7) = v120;
            v233 = v129;
            v235 = v128;
          }

          v119 = v127 > v132++;
          v131 += 3;
        }

        while (v119);
      }

      ++v120;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v75, v153, v154);
  v155 = sub_239E05F90();
  v156 = *(a1 + 12);
  if (v156 > 1)
  {
    if (v156 == 2)
    {
      operator new();
    }

    if (v156 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v156)
    {
      operator new();
    }

    if (v156 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v155);
  v159 = objc_msgSend_date(MEMORY[0x277CBEAA8], v157, v158);
  kdebug_trace();
  v242 = 0;
  v160 = sub_239E05840(0, memptr, v243, v77, &v242, v233, v235);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v159, v161, v162);
  if (*(a1 + 8) == 1)
  {
    v165 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
    v168 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v166, v167);
    v169 = *(a1 + 24);
    *v261 = *(a1 + 8);
    v262 = v169;
    v263 = *(a1 + 40);
    v264 = *(a1 + 56);
    sub_239DFA254(a1, v261, v160, v168, v263, v169);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v170, @"CPU", @"BVH Builder");
    v172 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v171, @"{ %f, %f, %f }, { %f, %f, %f }", v233.n128_f32[0], v233.n128_f32[1], v233.n128_f32[2], v235.n128_f32[0], v235.n128_f32[1], v235.n128_f32[2], v220);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v173, v172, @"Bounds");
    if (v160[7] >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Internal", @"BVH Root Node Type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Leaf", @"BVH Root Node Type");
    }

    v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v178, v177, @"Temporary Memory");
    v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v179, v180, vcvtd_n_f64_u64(v78, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v182, v181, @"Fragments (mb)");
    v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, vcvtd_n_f64_u64(32 * v242, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v186, v185, @"Nodes (mb)");
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v187, &v238, v265, 16);
    if (v190)
    {
      v191 = *v239;
      v192 = 0.0;
      do
      {
        for (j = 0; j != v190; ++j)
        {
          if (*v239 != v191)
          {
            objc_enumerationMutation(v177);
          }

          v194 = objc_msgSend_objectForKeyedSubscript_(v177, v188, *(*(&v238 + 1) + 8 * j));
          objc_msgSend_doubleValue(v194, v195, v196);
          v192 = v192 + v197;
        }

        v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v188, &v238, v265, 16);
      }

      while (v190);
    }

    else
    {
      v192 = 0.0;
    }

    v198 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v188, v189, v192);
    objc_msgSend_setObject_forKeyedSubscript_(v177, v199, v198, @"Total (mb)");
    objc_msgSend_timeIntervalSinceNow(v165, v200, v201);
  }

  v202 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
  __p[0] = v160;
  v237 = 0;
  v243 = 0;
  v261[0] = &v237;
  v261[1] = &v243;
  v262.i64[0] = __p;
  sub_239E05960();
  objc_msgSend_timeIntervalSinceNow(v202, v203, v204);
  v205 = getpagesize();
  v206 = -v205;
  v207 = mmap(0, (v205 + (HIDWORD(v237) << 7) + 127) & -v205, 3, 4098, -1, 0);
  if (v207 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v208 = v205 - 1;
  v209 = mmap(0, (v205 - 1 + 16 * v237) & v206, 3, 4098, -1, 0);
  if (v209 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v208 + 4 * v243) & v206) != 0)
  {
    v210 = (v208 + 4 * v243) & v206;
  }

  else
  {
    v210 = v205;
  }

  v211 = mmap(0, v210, 3, 4098, -1, 0);
  if (v211 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v214 = mmap(0, v210, 3, 4098, -1, 0);
  if (v214 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v215 = objc_msgSend_date(MEMORY[0x277CBEAA8], v212, v213);
  v261[1] = 0;
  v261[0] = 0;
  v262.i64[0] = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v261, (v237 + HIDWORD(v237)));
  sub_239E04F58(__p, (v237 + HIDWORD(v237)));
  sub_239E11C0C(a1, v160, memptr, v207, v209, v211, v214, v261[0], __p[0]);
  objc_msgSend_timeIntervalSinceNow(v215, v216, v217);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v218, v219);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E138B4(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 168);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v8, 1);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 64) + 32));
  v10 = *(a1 + 80);
  v11 = *(a1 + 172);
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 88) + 32));
  v14 = *(a1 + 96);
  v15 = *(a1 + 176);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 104) + 32));
  v18 = *(a1 + 112);
  v19 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 128) + 32));
  v22 = *(a1 + 136);
  v23 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v24, 0);
  sub_239E006FC(v22, v23, v25, *(*(a1 + 144) + 32));
  v26 = *(a1 + 152);
  v27 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v29 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v28, 0);
  sub_239E006FC(v26, v27, v29, *(*(a1 + 160) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v30, 2);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v31 = *(a1 + 120);
  if (v31)
  {
    v32 = *(v31 + 48);
    if (v32)
    {
      *(v31 + 56) = v32;
      operator delete(v32);
    }

    v33 = *(v31 + 24);
    if (v33)
    {
      *(v31 + 32) = v33;
      operator delete(v33);
    }

    v34 = *v31;
    if (*v31)
    {
      *(v31 + 8) = v34;
      operator delete(v34);
    }

    MEMORY[0x23EE7D780](v31, 0x10C40E523AF1CLL);
  }

  v35 = *(a1 + 56);
  add = atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
  if (v35 && add == 1)
  {
    (*(*v35 + 8))(v35);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E13BAC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4(a1, a2);
  }

  v16 = a2[2];
  v110 = a2[3];
  kdebug_trace();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18) == 2)
    {
      v24 = objc_msgSend_newBufferWithLength_options_(v16, v22, a8 << 6, 0);
      v21 = objc_msgSend_commandBuffer(v110, v25, v26);
      v20 = objc_msgSend_blitCommandEncoder(v21, v27, v28);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v29, a3, a4, v24, 0, a8 << 6);
      v19 = objc_msgSend_contents(v24, v30, v31);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = objc_msgSend_contents(a3, v22, v23) + a4;
    }
  }

  v108 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18) == 2)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(v16, v32, 4 * a8, 0);
    if (!v21)
    {
      v21 = objc_msgSend_commandBuffer(v110, v34, v35);
      v20 = objc_msgSend_blitCommandEncoder(v21, v37, v38);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v34, a6, a7, v36, 0, 4 * a8);
    v43 = objc_msgSend_contents(v36, v39, v40);
  }

  else
  {
    v43 = objc_msgSend_contents(a6, v32, v33) + a7;
  }

  if (v21)
  {
    objc_msgSend_endEncoding(v20, v41, v42);
    objc_msgSend_commit(v21, v44, v45);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v21, v46, v47);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v19)
  {
    v49 = (a8 <= 1 ? objc_msgSend_newBufferWithLength_options_(v108, v48, 64, 0) : objc_msgSend_newBufferWithLength_options_(v108, v48, a8 << 6, 0));
    v52 = objc_msgSend_contents(v49, v50, v51);
    if (a8)
    {
      v53 = v19 + 32;
      v54 = v52 + 32;
      v55 = a8;
      do
      {
        *(v54 - 32) = __invert_f4(*(v53 - 32));
        v54 += 64;
        v53 += 64;
        --v55;
      }

      while (v55);
    }
  }

  memset(v121, 0, sizeof(v121));
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v48, &v117, v124, 16);
  if (v58)
  {
    v59 = *v118;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v118 != v59)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v117 + 1) + 8 * i), v56, v57);
        LODWORD(v122[1]) = v61;
        v123 = v62;
        v122[0] = v63;
        v122[2] = v64;
        sub_239E08920(v121, v122);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v56, &v117, v124, 16);
    }

    while (v58);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v65, 0x1000040E0EAB150uLL);
  v115 = 0;
  if (v19)
  {
    if (a8)
    {
      v66 = 0;
      v67.i64[0] = 0x7F0000007FLL;
      v67.i64[1] = 0x7F0000007FLL;
      v68.i64[0] = 0x7F0000007FLL;
      v68.i64[1] = 0x7F0000007FLL;
      v111 = vnegq_f32(v67);
      v113 = v68;
      do
      {
        v69 = (v121[0] + 32 * *(v43 + 4 * v66));
        v70 = *v69;
        v71 = v69[1];
        if ((vmovn_s32(vcgtq_f32(*v69, v71)).u8[0] & 1) == 0 && v71.f32[1] >= v70.f32[1] && v71.f32[2] >= v70.f32[2])
        {
          v73 = 0;
          v74.i64[0] = 0x7F0000007FLL;
          v74.i64[1] = 0x7F0000007FLL;
          v75 = vnegq_f32(v74);
          do
          {
            v76 = v75;
            v77 = v74;
            if (v73)
            {
              v78 = v70.f32[0];
            }

            else
            {
              v78 = v71.f32[0];
            }

            if ((v73 & 2) != 0)
            {
              v79 = v70.f32[1];
            }

            else
            {
              v79 = v71.f32[1];
            }

            if (v73 >= 4)
            {
              v80 = v70.f32[2];
            }

            else
            {
              v80 = v71.f32[2];
            }

            v81 = vaddq_f32(*(v19 + (v66 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v19 + (v66 << 6)), v78), *(v19 + (v66 << 6) + 16), v79), *(v19 + (v66 << 6) + 32), v80));
            v82 = v76;
            v82.i32[3] = 0;
            v81.i32[3] = 0;
            v83 = vminnmq_f32(v82, v81);
            v75 = v83;
            v75.i32[3] = v76.i32[3];
            v84 = v77;
            v84.i32[3] = 0;
            v85 = vmaxnmq_f32(v84, v81);
            v74 = v85;
            v74.i32[3] = v77.i32[3];
            ++v73;
          }

          while (v73 != 8);
          v86 = v111;
          v86.i32[3] = 0;
          v75.i32[3] = 0;
          v87 = v113;
          v87.i32[3] = 0;
          v74.i32[3] = 0;
          v88 = vminnmq_f32(v86, v75);
          v89 = vmaxnmq_f32(v87, v74);
          v88.i32[3] = v111.i32[3];
          v89.i32[3] = v113.i32[3];
          v90 = v115++;
          v91 = memptr + 32 * v90;
          *v91 = v83.i64[0];
          *(v91 + 2) = v83.i32[2];
          *(v91 + 3) = v66;
          *(v91 + 2) = v85.i64[0];
          *(v91 + 6) = v85.i32[2];
          *(v91 + 7) = 0;
          v111 = v88;
          v113 = v89;
        }

        ++v66;
      }

      while (v66 != a8);
    }
  }

  else if (a8)
  {
    v92 = 0;
    v93.i64[0] = 0x7F0000007FLL;
    v93.i64[1] = 0x7F0000007FLL;
    v94.i64[0] = 0x7F0000007FLL;
    v94.i64[1] = 0x7F0000007FLL;
    v112 = vnegq_f32(v93);
    v114 = v94;
    do
    {
      v95 = v121[0] + 32 * *(v43 + 4 * v92);
      v97 = *v95;
      v96 = *(v95 + 1);
      v98 = vcgt_f32(*v95, *&v96);
      if ((v98.i8[0] & 1) == 0 && (v98.i8[4] & 1) == 0 && *(&v96 + 2) >= *(&v97 + 2))
      {
        v99 = v112;
        v99.i32[3] = 0;
        v100 = *v95;
        v100.i32[3] = 0;
        v101 = vminnmq_f32(v99, v100);
        v102 = v114;
        v102.i32[3] = 0;
        v103 = *(v95 + 1);
        v103.i32[3] = 0;
        v104 = vmaxnmq_f32(v102, v103);
        v101.i32[3] = v112.i32[3];
        v104.i32[3] = v114.i32[3];
        v105 = v115++;
        v106 = memptr + 32 * v105;
        *v106 = v97;
        *(v106 + 2) = DWORD2(v97);
        *(v106 + 3) = v92;
        *(v106 + 2) = v96;
        *(v106 + 6) = DWORD2(v96);
        *(v106 + 7) = 0;
        v112 = v101;
        v114 = v104;
      }

      ++v92;
    }

    while (a8 != v92);
  }

  kdebug_trace();
  sub_239E05F90();
  v107 = *(a1 + 12);
  if (v107)
  {
    if (v107 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E14A90(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 148);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v8, 0);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 80) + 32));
  v10 = *(a1 + 88);
  v11 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 104) + 32));
  v14 = *(a1 + 112);
  v15 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 120) + 32));
  v18 = *(a1 + 128);
  v19 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 136) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v22, 2);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v23 = *(a1 + 96);
  if (v23)
  {
    v24 = *(v23 + 48);
    if (v24)
    {
      *(v23 + 56) = v24;
      operator delete(v24);
    }

    v25 = *(v23 + 24);
    if (v25)
    {
      *(v23 + 32) = v25;
      operator delete(v25);
    }

    v26 = *v23;
    if (*v23)
    {
      *(v23 + 8) = v26;
      operator delete(v26);
    }

    MEMORY[0x23EE7D780](v23, 0x10C40E523AF1CLL);
  }

  v27 = *(a1 + 56);
  add = atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
  if (v27 && add == 1)
  {
    (*(*v27 + 8))(v27);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E14D00(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6, uint64_t a7, NSObject *a8, float32x4_t *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_239E15CC0(&v108, v17, v18, v20);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_239E15D78(&v111, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  sub_239E15CC0(&v114, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  __p = 0;
  v118 = 0;
  v119 = 0;
  sub_239E15D78(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v114 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v108 + v33);
            v43 = *(v111 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->i32[2] = v27.i32[2];
              a9[1].i32[2] = v61.i32[2];
              a9->i64[0] = v27.i64[0];
              a9[1].i64[0] = v61.i64[0];
              v62 = v32++;
              v106 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v114 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v108 + v64);
        v73 = *(v111 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->i32[2] = v27.i32[2];
          a9[1].i32[2] = v87.i32[2];
          a9->i64[0] = v27.i64[0];
          a9[1].i64[0] = v87.i64[0];
          v88 = v32++;
          v106 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v105 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v105, *a9, a9[1]);
  v122 = v91;
  v104 = 0;
  v106 = 0;
  v120[0] = &v104;
  v120[1] = &v106;
  *&v121 = &v122;
  sub_239E05960();
  v94 = *(a1 + 52);
  if (v94 == 4)
  {
    v95 = 192;
  }

  else
  {
    v95 = 320;
  }

  if (v94 == 4)
  {
    v96 = 192;
  }

  else
  {
    v96 = 384;
  }

  v97 = v95 * HIDWORD(v104);
  v98 = v95 * HIDWORD(v104) + v96 * v106;
  v120[0] = 0;
  if (v98)
  {
    malloc_type_posix_memalign(v120, 0x40uLL, v98, 0x9CCB6776uLL);
    v99 = v120[0];
    if (!v120[0])
    {
      v102 = 0;
      goto LABEL_67;
    }

    v94 = *(a1 + 52);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 + v97;
  if (v94 == 4)
  {
    v101 = sub_239E09514(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  else
  {
    v101 = sub_239E095D8(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  v102 = v101;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  return v102;
}

void sub_239E15518(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL, a3, a4, a5, a6, a7, a8);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E155AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v59 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v59;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v18);
  a7[1] = v18;
  if (a2)
  {
    if (a5)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v20), v16, v17);
        if ((vmovn_s32(vcgtq_f32(v21, v22)).u8[0] & 1) == 0 && v22.f32[1] >= v21.f32[1] && v22.f32[2] >= v21.f32[2])
        {
          v24 = 0;
          v25.i64[0] = 0x7F0000007FLL;
          v25.i64[1] = 0x7F0000007FLL;
          v26 = vnegq_f32(v25);
          do
          {
            v27 = v26;
            v28 = v25;
            if (v24)
            {
              v29 = v21.f32[0];
            }

            else
            {
              v29 = v22.f32[0];
            }

            if ((v24 & 2) != 0)
            {
              v30 = v21.f32[1];
            }

            else
            {
              v30 = v22.f32[1];
            }

            if (v24 >= 4)
            {
              v31 = v21.f32[2];
            }

            else
            {
              v31 = v22.f32[2];
            }

            v32 = vaddq_f32(*(a2 + (v20 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v20 << 6)), v29), *(a2 + (v20 << 6) + 16), v30), *(a2 + (v20 << 6) + 32), v31));
            v33 = v27;
            v33.i32[3] = 0;
            v32.i32[3] = 0;
            v34 = vminnmq_f32(v33, v32);
            v26 = v34;
            v26.i32[3] = v27.i32[3];
            v35 = v28;
            v35.i32[3] = 0;
            v36 = vmaxnmq_f32(v35, v32);
            v25 = v36;
            v25.i32[3] = v28.i32[3];
            ++v24;
          }

          while (v24 != 8);
          v37 = *a7;
          v38 = a7[1];
          v37.i32[3] = 0;
          v26.i32[3] = 0;
          v39 = vminnmq_f32(v37, v26);
          v38.i32[3] = 0;
          v25.i32[3] = 0;
          v40 = vmaxnmq_f32(v38, v25);
          a7->i32[2] = v39.i32[2];
          a7[1].i32[2] = v40.i32[2];
          a7->i64[0] = v39.i64[0];
          a7[1].i64[0] = v40.i64[0];
          v41 = v19++;
          v42 = memptr + 32 * v41;
          *v42 = v34.i64[0];
          *(v42 + 2) = v34.i32[2];
          *(v42 + 3) = v20;
          *(v42 + 2) = v36.i64[0];
          *(v42 + 6) = v36.i32[2];
          *(v42 + 7) = 0;
        }

        ++v20;
      }

      while (v20 != a5);
    }
  }

  else if (a5)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v44), v16, v17);
      v47 = vcgt_f32(*v45.f32, *v46.f32);
      if ((v47.i8[0] & 1) == 0 && (v47.i8[4] & 1) == 0 && v46.f32[2] >= v45.f32[2])
      {
        v48 = *a7;
        v49 = a7[1];
        v48.i32[3] = 0;
        v50 = v45;
        v50.i32[3] = 0;
        v51 = vminnmq_f32(v48, v50);
        v49.i32[3] = 0;
        v52 = v46;
        v52.i32[3] = 0;
        a7->i32[2] = v51.i32[2];
        v53 = vmaxnmq_f32(v49, v52);
        a7->i64[0] = v51.i64[0];
        a7[1].i32[2] = v53.i32[2];
        a7[1].i64[0] = v53.i64[0];
        v54 = v43++;
        v55 = memptr + 32 * v54;
        *v55 = v45.i64[0];
        *(v55 + 2) = v45.i32[2];
        *(v55 + 3) = v44;
        *(v55 + 2) = v46.i64[0];
        *(v55 + 6) = v46.i32[2];
        *(v55 + 7) = 0;
      }

      ++v44;
    }

    while (a5 != v44);
  }

  v56 = *(a1 + 12);
  if (v56 != 1)
  {
    if (!v56)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E15AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E15B34(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v11[2] = *(a2 + 32);
  v12 = *(a2 + 48);
  v9 = sub_239E050BC(a1, v11, a3);
  *v9 = &unk_284D08500;
  sub_239E15BCC(v9 + 10, a5);
  *(a1 + 176) = a4;
  return a1;
}

uint64_t *sub_239E15BCC(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_239E15CC0(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_239E15D78(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_239E15CC0(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_239E15D78(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  return a1;
}

void sub_239E15C74(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E15CC0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E15D3C(result, a4);
  }

  return result;
}

void sub_239E15D20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E15D3C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239DEDFE0(a1, a2);
  }

  sub_239DEDF38();
}

uint64_t *sub_239E15D78(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E15DF4(result, a4);
  }

  return result;
}

void sub_239E15DD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E15DF4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239DEE028(a1, a2);
  }

  sub_239DEDF38();
}

void sub_239E15E30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_239DE77E8();
}

char *sub_239E15E88(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_239DEDF38();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_239E15E30(a1, v15);
    }

    v36 = 16 * (v13 >> 4);
    v37 = 48 * a5;
    v38 = v36;
    do
    {
      v39 = *v7;
      v40 = *(v7 + 2);
      v38[1] = *(v7 + 1);
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v7 += 48;
      v37 -= 48;
    }

    while (v37);
    memcpy((v36 + 48 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 48 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v36;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v30 = 3 * a5;
    v31 = &__dst[48 * a5];
    v32 = (v10 - 48 * a5);
    v33 = a1[1];
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v33 += 3;
      v32 += 3;
    }

    a1[1] = v33;
    if (v10 != v31)
    {
      memmove(&__dst[48 * a5], __dst, v10 - v31);
    }

    v29 = 16 * v30;
    v27 = v5;
    v28 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(a1[1], &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  a1[1] = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[48 * a5];
    v21 = v10 + v18;
    if (&v19[-48 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -48 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v23 += 48;
        v22 += 48;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    a1[1] = v21;
    if (v19 != v20)
    {
      memmove(&v5[48 * a5], v5, v19 - v20);
    }

    v27 = v5;
    v28 = v7;
    v29 = v10 - v5;
LABEL_28:
    memmove(v27, v28, v29);
  }

  return v5;
}

uint64_t **sub_239E16118(uint64_t **result, uint64_t a2, unint64_t a3, unint64_t **a4, double a5, double a6, double a7, float32x4_t a8, float32x2_t a9)
{
  v9 = result[1];
  v10 = **result;
  v11 = *v9;
  *v11 = HIDWORD(a3);
  v12 = v10 + 32 * a2;
  *v9 = (v11 + 1);
  v13 = result[2];
  v14 = *v13;
  *v14 = HIDWORD(a2);
  *v13 = (v14 + 1);
  v15 = *result[3];
  v16 = v15 + (a2 >> 32 << 6);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = *(v12 + 28);
  if (v17 >= 1)
  {
    v18 = v17 + 1;
    v19 = (HIDWORD(a2) | (HIDWORD(a3) << 33)) + (v17 << 32) - 0x100000000;
    v20 = ((a2 >> 32 << 6) + 32 * v17 + v15 - 16);
    v21.i64[0] = 0x1700000017;
    v21.i64[1] = 0x1700000017;
    v22 = vdupq_n_s32(0xF5000001);
    do
    {
      v23 = (**result + 32 * (v18 + *(v12 + 12) - 2));
      a8.i32[0] = *v23;
      a9.i32[0] = v23[2];
      a8.i32[1] = v23[4];
      a8.i32[2] = v23[1];
      v24 = a8;
      v24.i32[3] = v23[5];
      v25 = vaddq_s32(vshlq_n_s32(vmaxq_u32((*&vshrq_n_u32(v24, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL)), v21), 0x17uLL), v22);
      a8 = vtrn2q_s32(vrev64q_s32(vsubq_f32(a8, v25)), vaddq_f32(v24, v25));
      v24.i32[0] = a9.i32[0];
      v24.i32[1] = v23[6];
      *v20[-2].f32 = a8;
      *a8.f32 = vadd_s32(vshl_n_s32(vmax_u32((*&vshr_n_u32(*v24.f32, 0x17uLL) & 0xFFFFFEFFFFFFFEFFLL), 0x1700000017), 0x17uLL), *v22.i8);
      a9.i32[0] = vsub_f32(a9, *a8.f32).u32[0];
      a9.i32[1] = vadd_f32(*&v24, *&a8).i32[1];
      *v20 = a9;
      if (v23[7] < 1)
      {
        v27 = result[5];
        v28 = *v27;
        *v27 = v28 + 1;
        LODWORD(v27) = -v28;
      }

      else
      {
        v26 = result[4];
        v27 = *v26;
        *v26 = v27 + 1;
        v28 = v27;
      }

      v20[1].i32[0] = v27;
      v29 = (--v18 + *(v12 + 12) - 1) | (v28 << 32);
      v30 = *a4;
      *a4 += 2;
      *v30 = v29;
      v30[1] = v19;
      v19 -= 0x100000000;
      v20 -= 4;
    }

    while (v18 > 1);
    LODWORD(v17) = *(v12 + 28);
  }

  if (v17 <= 1)
  {
    v31 = v17;
    do
    {
      v32 = v31;
      v33 = v16 + 32 * v31;
      *v33 = xmmword_239E27050;
      *(v33 + 16) = 0xFF8000007F800000;
      v31 = 1;
    }

    while (!v32);
  }

  *(v16 + 60) = a3;
  return result;
}

void sub_239E162F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239DE77E8();
}

void **sub_239E16338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v15[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v12 = &v15[-2 * v11];
  v15[0] = v12;
  while (1)
  {
    result = *(a2 + 32 * v9 + 28) < 1 ? sub_239E1661C(a6, v9, v10) : sub_239E16428(a5, v9, v10, v15);
    v14 = v15[0];
    if (v15[0] == v12)
    {
      break;
    }

    v15[0] -= 2;
    v9 = *(v14 - 2);
    v10 = *(v14 - 1);
  }

  return result;
}

void **sub_239E16428(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 32) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 4);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 8) = v15;
      *v9 = v17;
      v9[8] = v19;
      *(v9 - 4) = v23;
      v9[4] = v25;
      v9[12] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      v27 = *(v11 + 28);
      if (v27 < 1)
      {
        v32 = (3 - v27) >> 2;
        *(a3 + v8) = v32 | *result[2] | 0x10;
        v4 = v4 & 0xFFFFFFFF00000000 | v10;
        v33 = *result[2];
        v34 = *a4;
        *a4 += 2;
        *v34 = v4;
        v34[1] = v33;
        v30 = result[2];
        v31 = *v30 + 192 * v32;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v5 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = *result[1];
        v29 = *a4;
        *a4 += 2;
        *v29 = v5;
        v29[1] = v28;
        v30 = result[1];
        v31 = *v30 + 192;
      }

      *v30 = v31;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

void **sub_239E1661C(void **result, unsigned int a2, uint64_t a3)
{
  v3 = **result + 32 * a2;
  v4 = *(v3 + 28);
  v5 = 3 - v4;
  if ((3 - v4) >= 4)
  {
    v6 = 0;
    v7 = 0;
    v8 = -v4;
    v9 = *result[1] + 32 * *(v3 + 12) + 28;
    v10 = (a3 + 80);
    do
    {
      v11 = (a3 + 192 * v6);
      v11[10] = 0uLL;
      v11[11] = 0uLL;
      v11[8] = 0uLL;
      v11[9] = 0uLL;
      v11[6] = 0uLL;
      v11[7] = 0uLL;
      v12 = (a3 + 144 + 192 * v6);
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      *v12 = -1;
      v12[1] = -1;
      if (v7 < v8)
      {
        v13 = 0;
        v14 = result[2];
        v15 = *v14;
        v16 = v14[6];
        v17 = v14[3];
        v18 = (v9 + 32 * v7);
        v19 = v10;
        do
        {
          v20 = *v18;
          v21 = *(v18 - 4);
          v22 = 3 * v21;
          v23 = 3 * v21 + 1;
          v24 = 3 * v21 + 2;
          v25 = *(v16 + 8 * v20);
          if (v25)
          {
            if (*(v14[9] + 4 * v20) == 4)
            {
              v22 = *(v25 + 4 * v22);
              v23 = *(v25 + 4 * v23);
              v24 = *(v25 + 4 * v24);
            }

            else
            {
              v22 = *(v25 + 2 * v22);
              v23 = *(v25 + 2 * v23);
              v24 = *(v25 + 2 * v24);
            }
          }

          v26 = *(v15 + 8 * v20);
          v27 = *(v17 + 4 * v20);
          v28 = (v26 + v27 * v22);
          v29 = v28[1];
          v30 = v28[2];
          v31 = (v26 + v27 * v23);
          v32 = *v31;
          v33 = v31[1];
          v34 = v31[2];
          v35 = (v26 + v27 * v24);
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          *(v19 - 20) = *v28;
          *(v19 - 16) = v29;
          *(v19 - 12) = v30;
          *(v19 - 8) = v32;
          *(v19 - 4) = v33;
          *v19 = v34;
          v19[4] = v36;
          v19[8] = v37;
          v19[12] = v38;
          v19[16] = v21;
          v39 = *v18;
          v18 += 8;
          v19[20] = v39;
          v40 = v13 + 1;
          if (v13 > 2)
          {
            break;
          }

          ++v19;
          ++v13;
        }

        while (v40 + v7 < v8);
        v7 += v40;
      }

      ++v6;
      v10 += 48;
    }

    while (v6 != v5 >> 2);
  }

  return result;
}

void **sub_239E167C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v15[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v12 = &v15[-2 * v11];
  v15[0] = v12;
  while (1)
  {
    result = *(a2 + 32 * v9 + 28) < 1 ? sub_239E16AB8(a6, v9, v10) : sub_239E168B4(a5, v9, v10, v15);
    v14 = v15[0];
    if (v15[0] == v12)
    {
      break;
    }

    v15[0] -= 2;
    v9 = *(v14 - 2);
    v10 = *(v14 - 1);
  }

  return result;
}

void **sub_239E168B4(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 64) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 8);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 16) = v15;
      *v9 = v17;
      v9[16] = v19;
      *(v9 - 8) = v23;
      v9[8] = v25;
      v9[24] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      v27 = *(v11 + 28);
      if (v27 < 1)
      {
        v32 = (7 - v27) >> 3;
        *(a3 + v8) = v32 | *result[2] | 0x10;
        v4 = v4 & 0xFFFFFFFF00000000 | v10;
        v33 = *result[2];
        v34 = *a4;
        *a4 += 2;
        *v34 = v4;
        v34[1] = v33;
        v30 = result[2];
        v31 = *v30 + 384 * v32;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v5 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = *result[1];
        v29 = *a4;
        *a4 += 2;
        *v29 = v5;
        v29[1] = v28;
        v30 = result[1];
        v31 = *v30 + 320;
      }

      *v30 = v31;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

void **sub_239E16AB8(void **result, unsigned int a2, uint64_t a3)
{
  v3 = **result + 32 * a2;
  v4 = *(v3 + 28);
  v5 = 7 - v4;
  if ((7 - v4) >= 8)
  {
    v6 = 0;
    v7 = 0;
    v8 = -v4;
    v9 = *result[1] + 32 * *(v3 + 12) + 28;
    v10 = (a3 + 160);
    *&v11 = -1;
    *(&v11 + 1) = -1;
    do
    {
      v12 = (a3 + 384 * v6);
      v12[22] = 0uLL;
      v12[23] = 0uLL;
      v12[20] = 0uLL;
      v12[21] = 0uLL;
      v12[18] = 0uLL;
      v12[19] = 0uLL;
      v13 = (a3 + 288 + 384 * v6);
      v12[16] = 0uLL;
      v12[17] = 0uLL;
      v12[14] = 0uLL;
      v12[15] = 0uLL;
      v12[12] = 0uLL;
      v12[13] = 0uLL;
      v12[10] = 0uLL;
      v12[11] = 0uLL;
      v12[8] = 0uLL;
      v12[9] = 0uLL;
      v12[6] = 0uLL;
      v12[7] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      *v13 = v11;
      v13[1] = v11;
      if (v7 < v8)
      {
        v14 = 0;
        v15 = result[2];
        v16 = *v15;
        v17 = v15[6];
        v18 = v15[3];
        v19 = (v9 + 32 * v7);
        v20 = v10;
        do
        {
          v21 = *v19;
          v22 = *(v19 - 4);
          v23 = 3 * v22;
          v24 = 3 * v22 + 1;
          v25 = 3 * v22 + 2;
          v26 = *(v17 + 8 * v21);
          if (v26)
          {
            if (*(v15[9] + 4 * v21) == 4)
            {
              v23 = *(v26 + 4 * v23);
              v24 = *(v26 + 4 * v24);
              v25 = *(v26 + 4 * v25);
            }

            else
            {
              v23 = *(v26 + 2 * v23);
              v24 = *(v26 + 2 * v24);
              v25 = *(v26 + 2 * v25);
            }
          }

          v27 = *(v16 + 8 * v21);
          v28 = *(v18 + 4 * v21);
          v29 = (v27 + v28 * v23);
          v30 = v29[1];
          v31 = v29[2];
          v32 = (v27 + v28 * v24);
          v33 = *v32;
          v34 = v32[1];
          v35 = v32[2];
          v36 = (v27 + v28 * v25);
          v37 = *v36;
          v38 = v36[1];
          v39 = v36[2];
          *(v20 - 40) = *v29;
          *(v20 - 32) = v30;
          *(v20 - 24) = v31;
          *(v20 - 16) = v33;
          *(v20 - 8) = v34;
          *v20 = v35;
          v20[8] = v37;
          v20[16] = v38;
          v20[24] = v39;
          v20[32] = v22;
          v40 = *v19;
          v19 += 8;
          v20[40] = v40;
          v41 = v14 + 1;
          if (v14 > 6)
          {
            break;
          }

          ++v20;
          ++v14;
        }

        while (v41 + v7 < v8);
        v7 += v41;
      }

      ++v6;
      v10 += 96;
    }

    while (v6 != v5 >> 3);
  }

  return result;
}

void sub_239E16C78(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_239DEDF38();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_239E16D8C(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_239E16D8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_239DE77E8();
}

void *sub_239E16DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v29 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v14 = (&v26 - v13);
  v27 = v14;
  while (1)
  {
    if (*(a2 + 32 * v12 + 28) < 1)
    {
      v15 = **a6 + 32 * v12;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (*(v15 + 28))
      {
        v16 = *a6[1] + 32 * *(v15 + 12);
        result = objc_msgSend_bvh(*(*a6[2] + 8 * *(v16 + 12)), v11, v12);
        v17 = 0;
        v18 = *(v16 + 12);
        v19 = (*a6[3] + (v18 << 6));
        v20 = v19[1];
        v28[0] = *v19;
        v28[1] = v20;
        v21 = v19[3];
        v28[2] = v19[2];
        v28[3] = v21;
        v22 = a4;
        do
        {
          v23 = 0;
          v24 = v28[v17];
          do
          {
            v26 = v24;
            *(v22 + 4 * v23) = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3)));
            ++v23;
          }

          while (v23 != 3);
          ++v17;
          v22 += 12;
        }

        while (v17 != 4);
        *(a4 + 48) = result;
        *(a4 + 56) = v18;
      }
    }

    else
    {
      result = sub_239E16F70(a5, v12, a4, &v27);
    }

    v25 = v27;
    if (v27 == v14)
    {
      break;
    }

    v27 -= 2;
    v12 = *(v25 - 2);
    a4 = *(v25 - 1);
  }

  return result;
}

void **sub_239E16F70(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 32) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 4);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 8) = v15;
      *v9 = v17;
      v9[8] = v19;
      *(v9 - 4) = v23;
      v9[4] = v25;
      v9[12] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      if (*(v11 + 28) < 1)
      {
        *(a3 + v8) = *result[2] | 0x20;
        v27 = v4 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 2;
        v29 = 64;
        v4 = v27;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v27 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 1;
        v29 = 192;
        v5 = v27;
      }

      v30 = **v28;
      v31 = *a4;
      *a4 += 2;
      *v31 = v27;
      v31[1] = v30;
      **v28 += v29;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

void *sub_239E1714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v29 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v14 = (&v26 - v13);
  v27 = v14;
  while (1)
  {
    if (*(a2 + 32 * v12 + 28) < 1)
    {
      v15 = **a6 + 32 * v12;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (*(v15 + 28))
      {
        v16 = *a6[1] + 32 * *(v15 + 12);
        result = objc_msgSend_bvh(*(*a6[2] + 8 * *(v16 + 12)), v11, v12);
        v17 = 0;
        v18 = *(v16 + 12);
        v19 = (*a6[3] + (v18 << 6));
        v20 = v19[1];
        v28[0] = *v19;
        v28[1] = v20;
        v21 = v19[3];
        v28[2] = v19[2];
        v28[3] = v21;
        v22 = a4;
        do
        {
          v23 = 0;
          v24 = v28[v17];
          do
          {
            v26 = v24;
            *(v22 + 4 * v23) = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3)));
            ++v23;
          }

          while (v23 != 3);
          ++v17;
          v22 += 12;
        }

        while (v17 != 4);
        *(a4 + 48) = result;
        *(a4 + 56) = v18;
      }
    }

    else
    {
      result = sub_239E172E8(a5, v12, a4, &v27);
    }

    v25 = v27;
    if (v27 == v14)
    {
      break;
    }

    v27 -= 2;
    v12 = *(v25 - 2);
    a4 = *(v25 - 1);
  }

  return result;
}

void **sub_239E172E8(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 64) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 8);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 16) = v15;
      *v9 = v17;
      v9[16] = v19;
      *(v9 - 8) = v23;
      v9[8] = v25;
      v9[24] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      if (*(v11 + 28) < 1)
      {
        *(a3 + v8) = *result[2] | 0x20;
        v27 = v4 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 2;
        v29 = 64;
        v4 = v27;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v27 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 1;
        v29 = 320;
        v5 = v27;
      }

      v30 = **v28;
      v31 = *a4;
      *a4 += 2;
      *v31 = v27;
      v31[1] = v30;
      **v28 += v29;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

uint64_t sub_239E174D4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t **a4)
{
  v4 = *(result + 8);
  v5 = **result + 32 * a2;
  v6 = *v4;
  *v6 = HIDWORD(a3);
  *v4 = v6 + 1;
  v7 = *(result + 16);
  v8 = *v7;
  *v8 = HIDWORD(a2);
  *v7 = v8 + 1;
  v9 = **(result + 24) + (a2 >> 32 << 6);
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = *(v5 + 28);
  if (v10 >= 1)
  {
    v11 = (HIDWORD(a2) | (HIDWORD(a3) << 33)) + (v10 << 32) - 0x100000000;
    v12 = 4 * v10 + 52;
    do
    {
      v13 = v10 - 1;
      v14 = **result + 32 * (v10 - 1 + *(v5 + 12));
      v15 = *(v14 + 4);
      v16 = *(v14 + 8);
      v17 = (*v14 >> 23);
      if (v17 <= 0x17)
      {
        v17 = 23;
      }

      v18 = *v14 - COERCE_FLOAT((v17 << 23) - 184549375);
      v19 = (LODWORD(v15) >> 23);
      if (v19 <= 0x17)
      {
        v19 = 23;
      }

      v20 = v15 - COERCE_FLOAT((v19 << 23) - 184549375);
      v21 = (LODWORD(v16) >> 23);
      if (v21 <= 0x17)
      {
        v21 = 23;
      }

      v22 = v16 - COERCE_FLOAT((v21 << 23) - 184549375);
      v23 = *(v14 + 20);
      v24 = *(v14 + 24);
      v25 = (*(v14 + 16) >> 23);
      if (v25 <= 0x17)
      {
        v25 = 23;
      }

      v26 = *(v14 + 16) + COERCE_FLOAT((v25 << 23) - 184549375);
      v27 = (LODWORD(v23) >> 23);
      if (v27 <= 0x17)
      {
        v27 = 23;
      }

      v28 = v23 + COERCE_FLOAT((v27 << 23) - 184549375);
      v29 = (LODWORD(v24) >> 23);
      if (v29 <= 0x17)
      {
        v29 = 23;
      }

      v30 = v24 + COERCE_FLOAT((v29 << 23) - 184549375);
      v31 = (v9 + v12);
      *(v31 - 10) = v18;
      *(v31 - 8) = v20;
      *(v31 - 6) = v22;
      *(v31 - 4) = v26;
      *(v31 - 2) = v28;
      *v31 = v30;
      if (*(v14 + 28) < 1)
      {
        v33 = *(result + 40);
        v34 = *v33;
        *v33 = v34 + 1;
        LODWORD(v33) = -v34;
      }

      else
      {
        v32 = *(result + 32);
        v33 = *v32;
        *v32 = v33 + 1;
        v34 = v33;
      }

      *(v9 + 4 * v10 - 4) = v33;
      v35 = (v10 + *(v5 + 12) - 1) | (v34 << 32);
      v36 = *a4;
      *a4 += 2;
      *v36 = v35;
      v36[1] = v11;
      v11 -= 0x100000000;
      v12 -= 4;
      v10 = v13;
    }

    while ((v13 + 1) > 1);
    LODWORD(v10) = *(v5 + 28);
  }

  if (v10 <= 1)
  {
    v10 = v10;
    do
    {
      result = v10;
      *(v9 + 16 + 4 * v10) = 2139095040;
      *(v9 + 24 + 4 * v10) = 2139095040;
      *(v9 + 32 + 4 * v10) = 2139095040;
      *(v9 + 40 + 4 * v10) = -8388608;
      *(v9 + 48 + 4 * v10) = -8388608;
      v10 = 1;
      *(v9 + 56 + 4 * result) = -8388608;
    }

    while (!result);
  }

  *(v9 + 8) = a3;
  return result;
}

uint64_t **sub_239E17714(uint64_t **result, uint64_t a2, unint64_t a3, unint64_t **a4, double a5, double a6, double a7, float32x4_t a8, float32x2_t a9)
{
  v9 = result[1];
  v10 = **result;
  v11 = *v9;
  *v11 = HIDWORD(a3);
  *v9 = (v11 + 1);
  v12 = result[2];
  v13 = *v12;
  *v13 = HIDWORD(a2);
  v14 = v10 + 32 * a2;
  *v12 = (v13 + 1);
  v15 = *result[3];
  v16 = v15 + (a2 >> 32 << 7);
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = *(v14 + 28);
  v18 = a2 >> 32 << 7;
  if (v17 >= 1)
  {
    v19 = v17 + 1;
    v20 = (HIDWORD(a2) | (HIDWORD(a3) << 34)) + (v17 << 32) - 0x100000000;
    v21 = (v18 + 32 * v17 + v15 - 16);
    v22.i64[0] = 0x1700000017;
    v22.i64[1] = 0x1700000017;
    v23 = vdupq_n_s32(0xF5000001);
    do
    {
      v24 = (**result + 32 * (v19 + *(v14 + 12) - 2));
      a8.i32[0] = *v24;
      a9.i32[0] = v24[2];
      a8.i32[1] = v24[4];
      a8.i32[2] = v24[1];
      v25 = a8;
      v25.i32[3] = v24[5];
      v26 = vaddq_s32(vshlq_n_s32(vmaxq_u32((*&vshrq_n_u32(v25, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL)), v22), 0x17uLL), v23);
      a8 = vtrn2q_s32(vrev64q_s32(vsubq_f32(a8, v26)), vaddq_f32(v25, v26));
      v25.i32[0] = a9.i32[0];
      v25.i32[1] = v24[6];
      *v21[-2].f32 = a8;
      *a8.f32 = vadd_s32(vshl_n_s32(vmax_u32((*&vshr_n_u32(*v25.f32, 0x17uLL) & 0xFFFFFEFFFFFFFEFFLL), 0x1700000017), 0x17uLL), *v23.i8);
      a9.i32[0] = vsub_f32(a9, *a8.f32).u32[0];
      a9.i32[1] = vadd_f32(*&v25, *&a8).i32[1];
      *v21 = a9;
      if (v24[7] < 1)
      {
        v28 = result[5];
        v29 = *v28;
        *v28 = v29 + 1;
        LODWORD(v28) = -v29;
      }

      else
      {
        v27 = result[4];
        v28 = *v27;
        *v27 = v28 + 1;
        v29 = v28;
      }

      v21[1].i32[0] = v28;
      v30 = (--v19 + *(v14 + 12) - 1) | (v29 << 32);
      v31 = *a4;
      *a4 += 2;
      *v31 = v30;
      v31[1] = v20;
      v20 -= 0x100000000;
      v21 -= 4;
    }

    while (v19 > 1);
    LODWORD(v17) = *(v14 + 28);
  }

  if (v17 <= 3)
  {
    v32 = (v18 + 32 * v17 + v15 + 16);
    v33 = v17 + 1;
    do
    {
      *(v32 - 1) = xmmword_239E27050;
      *v32 = 0xFF8000007F800000;
      v32 += 4;
    }

    while (v33++ != 4);
  }

  *(v16 + 60) = a3;
  *(v16 + 28) = ~(-1 << *(v14 + 28));
  return result;
}

uint64_t sub_239E17918(uint64_t result, uint64_t a2, unint64_t a3, unint64_t **a4)
{
  v4 = *(result + 8);
  v5 = **result + 32 * a2;
  v6 = *v4;
  *v6 = HIDWORD(a3);
  *v4 = v6 + 1;
  v7 = *(result + 16);
  v8 = *v7;
  *v8 = HIDWORD(a2);
  *v7 = v8 + 1;
  v9 = **(result + 24);
  v10 = a2 >> 32;
  v11 = v9 + (a2 >> 32 << 7);
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = *(v5 + 28);
  if (v12 >= 1)
  {
    v13 = (HIDWORD(a2) | (HIDWORD(a3) << 34)) + (v12 << 32) - 0x100000000;
    v14 = 4 * v12 + 108;
    do
    {
      v15 = v12 - 1;
      v16 = **result + 32 * (v12 - 1 + *(v5 + 12));
      v17 = *(v16 + 4);
      v18 = *(v16 + 8);
      v19 = (*v16 >> 23);
      if (v19 <= 0x17)
      {
        v19 = 23;
      }

      v20 = *v16 - COERCE_FLOAT((v19 << 23) - 184549375);
      v21 = (LODWORD(v17) >> 23);
      if (v21 <= 0x17)
      {
        v21 = 23;
      }

      v22 = v17 - COERCE_FLOAT((v21 << 23) - 184549375);
      v23 = (LODWORD(v18) >> 23);
      if (v23 <= 0x17)
      {
        v23 = 23;
      }

      v24 = v18 - COERCE_FLOAT((v23 << 23) - 184549375);
      v25 = *(v16 + 20);
      v26 = *(v16 + 24);
      v27 = (*(v16 + 16) >> 23);
      if (v27 <= 0x17)
      {
        v27 = 23;
      }

      v28 = *(v16 + 16) + COERCE_FLOAT((v27 << 23) - 184549375);
      v29 = (LODWORD(v25) >> 23);
      if (v29 <= 0x17)
      {
        v29 = 23;
      }

      v30 = v25 + COERCE_FLOAT((v29 << 23) - 184549375);
      v31 = (LODWORD(v26) >> 23);
      if (v31 <= 0x17)
      {
        v31 = 23;
      }

      v32 = v26 + COERCE_FLOAT((v31 << 23) - 184549375);
      v33 = (v11 + v14);
      *(v33 - 20) = v20;
      *(v33 - 16) = v22;
      *(v33 - 12) = v24;
      *(v33 - 8) = v28;
      *(v33 - 4) = v30;
      *v33 = v32;
      if (*(v16 + 28) < 1)
      {
        v35 = *(result + 40);
        v36 = *v35;
        *v35 = v36 + 1;
        LODWORD(v35) = -v36;
      }

      else
      {
        v34 = *(result + 32);
        v35 = *v34;
        *v34 = v35 + 1;
        v36 = v35;
      }

      *(v11 + 4 * v12 - 4) = v35;
      v37 = (v12 + *(v5 + 12) - 1) | (v36 << 32);
      v38 = *a4;
      *a4 += 2;
      *v38 = v37;
      v38[1] = v13;
      v13 -= 0x100000000;
      v14 -= 4;
      v12 = v15;
    }

    while ((v15 + 1) > 1);
    LODWORD(v12) = *(v5 + 28);
  }

  if (v12 <= 3)
  {
    v39 = v12 + 1;
    v40 = ((v10 << 7) + 4 * v12 + v9 + 64);
    do
    {
      *(v40 - 8) = 2139095040;
      *(v40 - 4) = 2139095040;
      *v40 = 2139095040;
      v40[4] = -8388608;
      v40[8] = -8388608;
      v40[12] = -8388608;
      ++v40;
    }

    while (v39++ != 4);
  }

  *(v11 + 20) = a3;
  *(v11 + 16) = ~(-1 << *(v5 + 28));
  return result;
}

intptr_t sub_239E1899C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_239E18C24(uint64_t result)
{
  if (atomic_fetch_add((result + 56), 0xFFFFFFFF) == 1)
  {
    v1 = result;
    sub_239E18CB8(*(result + 64), result);
    result = *(v1 + 64);
    add = atomic_fetch_add((result + 8), 0xFFFFFFFF);
    if (result && add == 1)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

uint64_t sub_239E18CB8(uint64_t a1, uint64_t **a2)
{
  kdebug_trace();
  if (a2)
  {
    v4 = *a2;
    v5 = *a2 + 2;
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v4 + 24);
      if (v7)
      {
        *(v7 + 16) = v6;
        *(v6 + 24) = v7;
        *v5 = 0;
        v5[1] = 0;
        v8 = *v4;
        v8[1] = a2;
        *a2 = v8;
        v9 = (a2[5] + *(v4 + 40));
        a2[4] = *(v4 + 32);
        a2[5] = v9;
        MEMORY[0x23EE7D780]();
      }
    }

    v10 = a2[1];
    v11 = v10[2];
    if (v11)
    {
      v12 = v10[3];
      if (v12)
      {
        *(v12 + 16) = v11;
        *(v11 + 24) = v12;
        v10[2] = 0;
        v10[3] = 0;
        a2[5] = (a2[5] + v10[5]);
        v13 = v10[1];
        a2[1] = v13;
        *v13 = a2;
        MEMORY[0x23EE7D780]();
      }
    }

    v14 = a2[5];
    v15 = getpagesize();
    if (v14 <= v15)
    {
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v15;
      do
      {
        v18 = v16 + 1;
        v17 *= 2;
      }

      while (v17 < v14 && v16++ < 0xE);
    }

    v20 = a1 + 144 * v18;
    v21 = *(v20 + 80);
    a2[2] = (v20 + 56);
    a2[3] = v21;
    v21[2] = a2;
    *(v20 + 80) = a2;
  }

  return kdebug_trace();
}

void sub_239E18E2C(uint64_t a1, const char *a2, void *a3)
{
  if (*(a1 + 24))
  {
    v7 = objc_msgSend_blitCommandEncoder(a3, a2, a3);
    if (*(a1 + 32))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_newBufferWithLength_options_(*(a1 + 16), v5, a2, *(a1 + 40));
        v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 24), v10, v8);
        v13 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 24), v12, v8);
        v16 = objc_msgSend_length(v13, v14, v15);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v7, v17, v11, 0, v9, 0, v16);
        objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 24), v18, v9, v8);

        ++v8;
      }

      while (v8 < *(a1 + 32));
    }

    objc_msgSend_endEncoding(v7, v5, v6);
  }

  else
  {
    *(a1 + 24) = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (*(a1 + 32))
    {
      v20 = 0;
      do
      {
        v21 = objc_msgSend_newBufferWithLength_options_(*(a1 + 16), v19, a2, *(a1 + 40));
        objc_msgSend_addObject_(*(a1 + 24), v22, v21);

        ++v20;
      }

      while (v20 < *(a1 + 32));
    }
  }

  *(a1 + 48) = a2;
}

uint64_t sub_239E18F54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D085C8;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0;
  kdebug_trace();
  for (i = 0; i != 2304; i += 144)
  {
    v8 = a1 + i;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    v9 = a1 + i + 56;
    *(a1 + i + 128) = 0;
    *(v9 + 80) = 0;
    *(v9 + 88) = v9;
    *(v9 + 16) = 0;
    *(v9 + 24) = a1 + i + 128;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 96) = 0uLL;
    *(v9 + 112) = 0uLL;
  }

  *(a1 + 128) = a1 + 56;
  *(a1 + 64) = a1 + 128;
  kdebug_trace();
  return a1;
}

uint64_t sub_239E19044(uint64_t a1)
{
  *a1 = &unk_284D085C8;
  kdebug_trace();
  for (i = 0; i != 16; ++i)
  {
    v3 = a1 + 56 + 144 * i;
    v4 = *(v3 + 24);
    v5 = v3 + 72;
    if (v4 != v3 + 72)
    {
      do
      {
        v6 = *(v4 + 24);
        MEMORY[0x23EE7D780]();
        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  kdebug_trace();
  return a1;
}

void sub_239E19140(uint64_t a1)
{
  sub_239E19044(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E19178(uint64_t a1, uint64_t a2, void *a3)
{
  kdebug_trace();
  v6 = getpagesize();
  v7 = (a2 + v6 - 1) & -v6;
  if (!*(a1 + 48))
  {
    v12 = 1;
    do
    {
      v13 = v12;
      v12 *= 2;
    }

    while (v13 < v7);
    sub_239E18E2C(a1, v13, a3);
    operator new();
  }

  v8 = v6;
  if (v7 <= v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      v8 *= 2;
    }

    while (v8 < v7 && v9++ < 0xE);
  }

  do
  {
    v14 = a1 + 56 + 144 * v10;
    v15 = v14 + 72;
    while (1)
    {
      v14 = *(v14 + 24);
      if (v14 == v15)
      {
        break;
      }

      v16 = *(v14 + 48);
      if (v16 >= v7)
      {
        v23 = *(v14 + 16);
        v24 = *(v14 + 24);
        *(v24 + 16) = v23;
        *(v23 + 24) = v24;
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        atomic_store(1u, (v14 + 56));
        *(v14 + 40) = a2;
        if (v16 != v7)
        {
          operator new();
        }

        goto LABEL_27;
      }
    }

    ++v10;
  }

  while (v10 != 16);
  v17 = *(a1 + 128);
  if (!v17[2])
  {
    v18 = *(a1 + 48);
    goto LABEL_29;
  }

  v18 = *(a1 + 48);
  if (!v17[3])
  {
LABEL_29:
    v26 = v18;
    do
    {
      v27 = v26;
      v26 = (2 * v26);
    }

    while (v27 < &v18[v7]);
    sub_239E18E2C(a1, v27, a3);
    operator new();
  }

  v19 = v17[4];
  do
  {
    v20 = v18;
    v18 = (2 * v18);
  }

  while (v20 < v19 + v7);
  sub_239E18E2C(a1, v20, a3);
  v14 = *(a1 + 128);
  *(v14 + 40) = a2;
  *(v14 + 48) = &v20[-v19];
  v21 = *(v14 + 16);
  v22 = *(v14 + 24);
  *(v22 + 16) = v21;
  *(v21 + 24) = v22;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  atomic_store(1u, (v14 + 56));
  if (&v20[-v19] != v7)
  {
    operator new();
  }

LABEL_27:
  atomic_fetch_add((a1 + 8), 1u);
  kdebug_trace();
  return v14;
}

uint64_t sub_239E1959C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v7 = *(a3 + 16);
  v6 = *(a3 + 32);
  *(a1 + 8) = *a3;
  *(a1 + 24) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *a1 = &unk_284D08630;
  *(a1 + 64) = a2;
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 72) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3D538);
  *(a1 + 80) = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v9, 12, 32);
  v12 = objc_msgSend_name(a2, v10, v11);
  if (objc_msgSend_containsString_(v12, v13, @"AMD"))
  {
    v16 = 64;
  }

  else
  {
    v17 = objc_msgSend_name(a2, v14, v15);
    v19 = objc_msgSend_containsString_(v17, v18, @"Intel");
    v16 = 32;
    if (v19)
    {
      v16 = 64;
    }
  }

  *(a1 + 88) = v16;
  *(a1 + 96) = sub_239E0487C(a2, v14, v15);
  return a1;
}

uint64_t sub_239E19690(uint64_t a1)
{
  *a1 = &unk_284D08630;

  return a1;
}

void sub_239E196E8(uint64_t a1)
{
  sub_239E19690(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E19720(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  *&v37[12] = *(v6 + 44);
  v36 = v8;
  *v37 = v7;
  v35 = v9;
  v10 = MPSCreateFunctionConstantValues();
  v12 = v10;
  v13 = *a3;
  v14 = *(a3 + 1);
  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v16 = vceqq_s64(v14, v15);
  if (*a3 != -1 || ((v17 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v15), vceqq_s64(*(a3 + 4), v15)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v16, vceqq_s64(*(a3 + 3), v15)), xmmword_239E26D10)) & 0xF) == 0) ? (v18 = v17 == 0) : (v18 = 0), v18 ? (v19 = a3[5] == -1) : (v19 = 0), !v19))
  {
    if ((vuzp1_s16(vmovn_s64(v16), *v14.i8).u8[0] & 1) == 0)
    {
      v38 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &v38, 33, 126);
      v13 = *a3;
    }

    if (v13 != -1)
    {
      v38 = v13;
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 125);
    }

    if (a3[2] != -1)
    {
      v38 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 124);
    }

    if (a3[3] != -1)
    {
      v38 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 123);
    }

    if (a3[4] != -1)
    {
      v38 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 119);
    }

    if (a3[5] != -1)
    {
      v38 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 118);
    }

    if (a3[8] != -1)
    {
      v38 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 122);
    }

    if (a3[9] != -1)
    {
      v38 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 121);
    }

    if (a3[6] != -1)
    {
      v38 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 117);
    }

    if (a3[7] != -1)
    {
      v38 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v38, 33, 116);
    }
  }

  objc_msgSend_setConstantValue_type_atIndex_(v12, v11, &v35 + 4, 33, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v20, &v35 + 8, 33, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v21, &v35 | 0xC, 33, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v22, &v36, 33, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v23, &v36 + 4, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v24, &v36 + 8, 3, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v25, &v36 + 12, 3, 6);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v26, v37, 33, 7);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v27, &v37[4], 33, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v28, &v37[8], 53, 9);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v29, &v37[12], 33, 10);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v30, &v37[16], 53, 11);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v31, &v37[20], 33, 12);
  objc_msgSend_setConstantValue_type_atIndex_(v12, v32, &v37[24], 33, 13);
  v33 = _MPSNewSpecializedFunction();

  return v33;
}

uint64_t sub_239E19AB4(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, int a7, char a8, int a9)
{
  v14 = a2;
  v16 = *(a1 + 32);
  v17 = *(a1 + 16);
  v18 = *(a1 + 12);
  v19 = *(a1 + 88);
  if (a3)
  {
    v24 = *(a1 + 32);
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@%llu", a2, v19);
    v16 = v24;
    v14 = v20;
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v25 = a4;
  v26 = vextq_s8(vrev64q_s32(v16), v16, 8uLL);
  v27 = 1024;
  v28 = vrev64_s32(v17);
  v29 = a5;
  v30 = a6;
  v31 = v18 == 3;
  v32 = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  v36 = 0;
  v37 = 0;
  v38 = a9;
  v39 = v19;
  return sub_239E19BC4(v14, v21, v22, &v25, sub_239E19720);
}

uint64_t sub_239E19BC4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v13 = a2;
  if ((atomic_load_explicit(byte_27DF88878, memory_order_acquire) & 1) == 0)
  {
    sub_239E24D38();
  }

  std::mutex::lock(&stru_27DF88838);
  if (!qword_27DF88830)
  {
    operator new();
  }

  v9 = sub_239DE7494(qword_27DF88830, &v13);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_239E1FA4C(v9[3], a4);
  std::mutex::unlock(&stru_27DF88838);
  MPSLibrary::CreateUberShaderKey(a3, a1, &unk_239E27108, v10, a5, a4, 1, 0, 0, 0, 0, 0, 0);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239E19D68(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v20 = a5;
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v9, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v10, a3, (a4 << 8), 29);
  objc_msgSend_setBytes_length_atIndex_(a2, v11, &v20, 4, 30);
  v17 = vdupq_n_s64(1uLL);
  v18 = v17;
  v19 = 1;
  v16 = objc_msgSend_threadExecutionWidth(ComputeState, v12, v13);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v14, &v18, &v16);
}

uint64_t sub_239E19E34(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v10, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v11, a3, (a4 << 8), 29);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v12, a3, (a5 << 8), 30);
  v18 = vdupq_n_s64(1uLL);
  v19 = v18;
  v20 = 1;
  v17 = objc_msgSend_threadExecutionWidth(ComputeState, v13, v14);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v15, &v19, &v17);
}

uint64_t sub_239E19F00(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v13, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v14, a4, (a5 << 8), 28);
  v30 = a6;
  objc_msgSend_setBytes_length_atIndex_(a2, v15, &v30, 4, 29);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v16, a1[10], 0, 30);
  v26 = vdupq_n_s64(1uLL);
  v28 = v26;
  *v29 = v26;
  *&v29[16] = 1;
  v27 = objc_msgSend_threadExecutionWidth(ComputeState, v17, v18);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v19, v29, &v27);
  objc_msgSend_setComputePipelineState_(a2, v20, a3);
  v21 = a1[11];
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v22, 32 * v21, 0);
  v23 = a1[10];
  *v29 = v21;
  *&v29[8] = v26;
  return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(a2, v24, v23, 0, v29);
}

char *sub_239E1A07C(void *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 + *(a2 + 24) - 1) / *(a2 + 24) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (a3 + *(a2 + 24) - 1) / *(a2 + 24);
  }

  v5 = log2(a3);
  v7 = (exp2(ceil(v5)) + 1023) >> 10;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = 8 * v4;
  v10 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v6, v9, 32);
  v12 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v11, v9, 32);
  v14 = &v13[v10 - 1] & -v13;
  v15 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v13, 16 * (48 * v8), 32);
  v17 = &v16[v12 - 1 + v14] & -v16;
  v18 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v16, 16 * (48 * v8), 32);
  v20 = &v19[v15 - 1 + v17] & -v19;
  v21 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v19, 4 * (48 * v8), 32);
  v23 = &v22[v18 - 1 + v20] & -v22;
  v24 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v22, 4 * (48 * v8), 32);
  v26 = &v25[v21 - 1 + v23] & -v25;
  v27 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v25, 4 * (48 * v8), 32);
  v29 = &v28[v24 - 1 + v26] & -v28;
  v30 = v8 + 2 * v8;
  v31 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v28, 16 * v30, 32);
  v33 = &v32[v27 - 1 + v29] & -v32;
  v34 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v32, 16 * v30, 32);
  v36 = &v35[v31 - 1 + v33] & -v35;
  v37 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v35, 112 * v8, 32);
  v39 = &v38[v34 - 1 + v36] & -v38;
  v40 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v38, 4 * v8, 32);
  v42 = &v41[v37 - 1 + v39] & -v41;
  v43 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v41, 4 * v8, 32);
  v45 = &v44[v40 - 1 + v42] & -v44;
  v46 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v44, 4 * v30, 32);
  v48 = &v47[v43 - 1 + v45] & -v47;
  v49 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v47, 4 * v30, 32);
  v51 = &v50[v46 - 1 + v48] & -v50;
  v52 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v50, 4, 32);
  return (((v49 + v53 + v51 - 1) & -v53) + v52);
}

uint64_t sub_239E1A358(uint64_t a1, unint64_t a2)
{
  v2 = 1.0;
  if (!*(a1 + 52) && *(a1 + 4) == 3)
  {
    v2 = 2.0;
  }

  return (v2 * a2);
}

uint64_t sub_239E1A384(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = 2 * a2 - 1;
  v4 = __CFADD__(v3, v2);
  v5 = (v3 + v2) / v2;
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

char *sub_239E1A3A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, a2, &v56, v62, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(a5);
        }

        v14 += objc_msgSend_unsignedIntegerValue(*(*(&v56 + 1) + 8 * i), v11, v12);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v11, &v56, v62, 16);
    }

    while (v13);
    v17 = v14;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *(a2 + 4);
  v19 = v18 == 3 && *(a2 + 52) == 0;
  v20 = 1.0;
  if (v19)
  {
    v20 = 2.0;
  }

  v21 = (v20 * v17);
  v22 = *(a2 + 24);
  v23 = *(a2 + 16);
  v54[0] = *a2;
  v54[1] = v23;
  v54[2] = *(a2 + 32);
  v55 = *(a2 + 48);
  v24 = sub_239E1A07C(a1, v54, v21);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v25, &v50, v61, 16);
  if (v26)
  {
    v29 = v26;
    v30 = 0;
    v31 = *v51;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(a3);
        }

        v30 += objc_msgSend_length(*(*(&v50 + 1) + 8 * j), v27, v28);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v27, &v50, v61, 16);
    }

    while (v29);
    if (!a4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = 0;
    if (!a4)
    {
LABEL_33:
      v37 = 0;
      goto LABEL_34;
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v27, &v46, v60, 16);
  if (!v33)
  {
    goto LABEL_33;
  }

  v36 = v33;
  v37 = 0;
  v38 = *v47;
  do
  {
    for (k = 0; k != v36; ++k)
    {
      if (*v47 != v38)
      {
        objc_enumerationMutation(a4);
      }

      v37 += objc_msgSend_length(*(*(&v46 + 1) + 8 * k), v34, v35);
    }

    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v34, &v46, v60, 16);
  }

  while (v36);
LABEL_34:
  v40 = v22 + 2 * v21 - 1;
  if (v22 > v40)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40 / v22;
  }

  v42 = getpagesize();
  if (v18 == 3)
  {
    v43 = v30;
  }

  else
  {
    v43 = 0;
  }

  if (v18 == 3)
  {
    v44 = v37;
  }

  else
  {
    v44 = 0;
  }

  return &v24[2 * ((v42 - 1 + 4 * v21) & -v42) + v43 + ((v42 - 1 + 32 * v21) & -v42) + v44 + ((v42 - 1 + 32 * v41) & -v42) + ((v42 - 1 + 4 * v41) & -v42)];
}

void sub_239E1A69C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, int a9, void *a10, void *a11, int a12, uint64_t a13, void *a14, id *a15, id *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25)
{
  v295 = *MEMORY[0x277D85DE8];
  v290 = a2;
  v261 = *(a1 + 12);
  if ((a2 + *(a1 + 32) - 1) / *(a1 + 32) <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = (a2 + *(a1 + 32) - 1) / *(a1 + 32);
  }

  v29 = log2(a2);
  v30 = (exp2(ceil(v29)) + 1023) >> 10;
  if (v30 <= 1)
  {
    v30 = 1;
  }

  v262 = v30;
  v31 = *(a1 + 24);
  v286 = *(a1 + 8);
  v287 = v31;
  v288 = *(a1 + 40);
  v32 = *(a1 + 64);
  v289 = *(a1 + 56);
  v264 = sub_239E1A07C(v32, &v286, a2);
  v33 = *(a1 + 64);
  v36 = objc_msgSend_dedicatedMemorySize(v33, v34, v35);
  if (!v36)
  {
    v36 = objc_msgSend_sharedMemorySize(v33, v37, v38);
  }

  v259 = v36;
  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v37, &v282, v294, 16);
  if (v39)
  {
    v42 = v39;
    v43 = 0;
    v44 = *v283;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v283 != v44)
        {
          objc_enumerationMutation(a7);
        }

        v43 += objc_msgSend_length(*(*(&v282 + 1) + 8 * i), v40, v41);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v40, &v282, v294, 16);
    }

    while (v42);
  }

  else
  {
    v43 = 0;
  }

  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v40, &v278, v293, 16);
  if (v46)
  {
    v49 = v46;
    v50 = 0;
    v51 = *v279;
    v52 = v28;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v279 != v51)
        {
          objc_enumerationMutation(a10);
        }

        v50 += objc_msgSend_length(*(*(&v278 + 1) + 8 * j), v47, v48);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v47, &v278, v293, 16);
    }

    while (v49);
  }

  else
  {
    v50 = 0;
    v52 = v28;
  }

  if (v261 == 3)
  {
    v54 = v43;
  }

  else
  {
    v54 = 0;
  }

  if (v261 != 3)
  {
    v50 = 0;
  }

  v55 = &v264[v54 + objc_msgSend_length(a14, v47, v48)];
  v58 = v55 + objc_msgSend_length(*a15, v56, v57);
  v61 = v58 + objc_msgSend_length(*a16, v59, v60);
  v64 = v61 + objc_msgSend_length(a17, v62, v63);
  v67 = objc_msgSend_length(a18, v65, v66);
  if (v64 + v67 + v50 > v259)
  {
    sub_239E24DA0(v67, v68);
  }

  v69 = objc_alloc_init(MEMORY[0x277CD6E48]);
  objc_msgSend_setStorageMode_(v69, v70, 2);
  objc_msgSend_setSize_(v69, v71, v264);
  v73 = objc_msgSend_newHeapWithDescriptor_(*(a1 + 64), v72, v69);

  v265 = objc_msgSend_newBufferWithLength_options_(v73, v74, 8 * v52, 288);
  v76 = objc_msgSend_newBufferWithLength_options_(v73, v75, 8 * v52, 288);
  v260 = objc_msgSend_newBufferWithLength_options_(v73, v77, 768 * v262, 288);
  v258 = objc_msgSend_newBufferWithLength_options_(v73, v78, 768 * v262, 288);
  v257 = objc_msgSend_newBufferWithLength_options_(v73, v79, 192 * v262, 288);
  v256 = objc_msgSend_newBufferWithLength_options_(v73, v80, 192 * v262, 288);
  v255 = objc_msgSend_newBufferWithLength_options_(v73, v81, 192 * v262, 288);
  v254 = objc_msgSend_newBufferWithLength_options_(v73, v82, 48 * v262, 288);
  v253 = objc_msgSend_newBufferWithLength_options_(v73, v83, 48 * v262, 288);
  v252 = objc_msgSend_newBufferWithLength_options_(v73, v84, 112 * v262, 288);
  v251 = objc_msgSend_newBufferWithLength_options_(v73, v85, 4 * v262, 288);
  v250 = objc_msgSend_newBufferWithLength_options_(v73, v86, 4 * v262, 288);
  v249 = objc_msgSend_newBufferWithLength_options_(v73, v87, 12 * v262, 288);
  v248 = objc_msgSend_newBufferWithLength_options_(v73, v88, 12 * v262, 288);
  v235 = v73;
  v263 = objc_msgSend_newBufferWithLength_options_(v73, v89, 4, 288);
  v240 = objc_msgSend_count(a7, v90, v91);
  v247 = sub_239E19AB4(a1, @"dispatchBinsKernel", 1, 0, a9, a12, 0, v240 > 1, a25);
  v246 = sub_239E19AB4(a1, @"binFragmentsKernel", 0, 1, a9, a12, 0, v240 > 1, a25);
  v245 = sub_239E19AB4(a1, @"clearBatchesKernel", 0, 2, a9, a12, 0, v240 > 1, a25);
  v244 = sub_239E19AB4(a1, @"buildBVHKernel", 0, 3, a9, a12, 0, v240 > 1, a25);
  v243 = sub_239E19AB4(a1, @"findBestSplitKernel", 1, 4, a9, a12, 0, v240 > 1, a25);
  v242 = sub_239E19AB4(a1, @"splitObjectsKernel", 1, 5, a9, a12, 0, v240 > 1, a25);
  v239 = sub_239E19AB4(a1, @"binFragmentsSpatialKernel", 0, 6, a9, a12, 0, v240 > 1, a25);
  v238 = sub_239E19AB4(a1, @"findBestSpatialSplitKernel", 1, 7, a9, a12, 0, v240 > 1, a25);
  v92 = sub_239E19AB4(a1, @"initializeQueueKernel", 0, 8, a9, a12, 0, v240 > 1, a25);
  v93 = sub_239E19AB4(a1, @"initializeFragmentIndicesKernel", 0, 24, a9, a12, 0, v240 > 1, a25);
  v96 = objc_msgSend_commandBuffer(a6, v94, v95);
  *a24 = 0;
  v97 = *(a1 + 8);
  v98 = *(a1 + 96);
  v277[0] = MEMORY[0x277D85DD0];
  v277[1] = 3221225472;
  v277[2] = sub_239E1B870;
  v277[3] = &unk_278B3D940;
  v277[4] = a24;
  v231 = v96;
  v99 = sub_239E04ADC(v97, v98, v96, v277);
  objc_msgSend_waitForFence_(v99, v100, a20);
  sub_239E19D68(a1, v99, a19, 0, 1);
  sub_239E19D68(a1, v99, a19, 6, 1);
  sub_239E19D68(a1, v99, a19, 8, 0);
  sub_239E19D68(a1, v99, a19, 9, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v101, a17, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v102, v265, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v103, *a15, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v104, a21, 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v99, v105, &v290, 4, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v106, a22, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v107, a23, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v108, v263, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v109, a19, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v99, v110, a18, 0, 9);
  v234 = v92;
  objc_msgSend_setComputePipelineState_(v99, v111, v92);
  v286 = vdupq_n_s64(1uLL);
  *&v287 = 1;
  v275 = *(a1 + 88);
  v276 = v286;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v99, v112, &v286, &v275);
  v232 = v93;
  sub_239E19F00(a1, v99, v93, a21, 0, *(a1 + 88));
  v114 = 0;
  if (v240 >= 2)
  {
    v115 = *(a1 + 64);
    contexta = objc_autoreleasePoolPush();
    v118 = objc_msgSend_array(MEMORY[0x277CBEB18], v116, v117);
    v121 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v119, v120);
    objc_msgSend_setDataType_(v121, v122, 60);
    objc_msgSend_setIndex_(v121, v123, 0);
    objc_msgSend_setAccess_(v121, v124, 0);
    objc_msgSend_addObject_(v118, v125, v121);
    v128 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v126, v127);
    objc_msgSend_setDataType_(v128, v129, 60);
    objc_msgSend_setIndex_(v128, v130, 1);
    objc_msgSend_setAccess_(v128, v131, 0);
    objc_msgSend_addObject_(v118, v132, v128);
    v133 = v115;
    v135 = objc_msgSend_newArgumentEncoderWithArguments_(v115, v134, v118);
    objc_autoreleasePoolPop(contexta);
    MPSDevice = MPSDevice::GetMPSDevice();
    v137 = 16 * (*(*MPSDevice + 24))(MPSDevice);
    v140 = objc_msgSend_count(a7, v138, v139);
    v143 = objc_msgSend_encodedLength(v135, v141, v142);
    v114 = objc_msgSend_newBufferWithLength_options_(v133, v144, v143 * v140, v137);
    if (objc_msgSend_count(a7, v145, v146))
    {
      v149 = 0;
      do
      {
        v150 = objc_msgSend_encodedLength(v135, v147, v148);
        objc_msgSend_setArgumentBuffer_offset_(v135, v151, v114, v150 * v149);
        v153 = objc_msgSend_objectAtIndexedSubscript_(a7, v152, v149);
        v155 = objc_msgSend_objectAtIndexedSubscript_(a8, v154, v149);
        v158 = objc_msgSend_unsignedIntegerValue(v155, v156, v157);
        objc_msgSend_setBuffer_offset_atIndex_(v135, v159, v153, v158, 0);
        if (a10)
        {
          v162 = objc_msgSend_objectAtIndexedSubscript_(a10, v160, v149);
          v164 = objc_msgSend_objectAtIndexedSubscript_(a11, v163, v149);
          v167 = objc_msgSend_unsignedIntegerValue(v164, v165, v166);
          objc_msgSend_setBuffer_offset_atIndex_(v135, v168, v162, v167, 1);
        }

        ++v149;
      }

      while (v149 < objc_msgSend_count(a7, v160, v161));
    }
  }

  context = v114;
  if (*(a1 + 40))
  {
    v169 = 0;
    v170 = a16;
    v171 = a15;
    v172 = v265;
    do
    {
      v286.i32[0] = v169;
      objc_msgSend_setBytes_length_atIndex_(v99, v113, &v286, 4, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v173, *v171, 0, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v174, *v170, 0, 4);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v175, v172, 0, 5);
      v266 = v76;
      objc_msgSend_setBuffer_offset_atIndex_(v99, v176, v76, 0, 6);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v177, v263, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v178, a14, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v179, v260, 0, 7);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v180, v258, 0, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v181, v257, 0, 9);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v182, v251, 0, 10);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v183, v250, 0, 11);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v184, v256, 0, 12);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v185, v255, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v186, v254, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v187, v253, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v188, v249, 0, 16);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v189, v248, 0, 17);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v190, v252, 0, 18);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v191, a17, 0, 19);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v192, a19, 0, 22);
      objc_msgSend_setBuffer_offset_atIndex_(v99, v193, a18, 0, 23);
      if (v261 == 3)
      {
        v195 = objc_msgSend_objectAtIndexedSubscript_(a7, v194, 0);
        v197 = objc_msgSend_objectAtIndexedSubscript_(a8, v196, 0);
        v200 = objc_msgSend_unsignedIntegerValue(v197, v198, v199);
        objc_msgSend_setBuffer_offset_atIndex_(v99, v201, v195, v200, 20);
        v203 = objc_msgSend_objectAtIndexedSubscript_(a10, v202, 0);
        v205 = objc_msgSend_objectAtIndexedSubscript_(a11, v204, 0);
        v208 = objc_msgSend_unsignedIntegerValue(v205, v206, v207);
        objc_msgSend_setBuffer_offset_atIndex_(v99, v209, v203, v208, 21);
        if (v240 >= 2)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v99, v210, context, 0, 24);
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v211, &v271, v292, 16);
          if (v212)
          {
            v214 = v212;
            v215 = *v272;
            do
            {
              for (k = 0; k != v214; ++k)
              {
                if (*v272 != v215)
                {
                  objc_enumerationMutation(a7);
                }

                objc_msgSend_useResource_usage_(v99, v213, *(*(&v271 + 1) + 8 * k), 1);
              }

              v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v213, &v271, v292, 16);
            }

            while (v214);
          }

          v269 = 0u;
          v270 = 0u;
          v267 = 0u;
          v268 = 0u;
          v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v213, &v267, v291, 16);
          if (v217)
          {
            v219 = v217;
            v220 = *v268;
            do
            {
              for (m = 0; m != v219; ++m)
              {
                if (*v268 != v220)
                {
                  objc_enumerationMutation(a10);
                }

                objc_msgSend_useResource_usage_(v99, v218, *(*(&v267 + 1) + 8 * m), 1);
              }

              v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v218, &v267, v291, 16);
            }

            while (v219);
          }
        }

        sub_239E19D68(a1, v99, a19, 4, 0);
        sub_239E19D68(a1, v99, a19, 5, 0);
        sub_239E19D68(a1, v99, a19, 2, 0);
        sub_239E19D68(a1, v99, a19, 3, 0);
        sub_239E19D68(a1, v99, a19, 1, 0);
        sub_239E19F00(a1, v99, v247, a19, 0, 1);
        sub_239E19F00(a1, v99, v245, a19, 2, 1);
        sub_239E19F00(a1, v99, v246, a19, 4, 1);
        sub_239E19F00(a1, v99, v243, a19, 2, 1);
        sub_239E19F00(a1, v99, v245, a19, 2, 1);
        sub_239E19F00(a1, v99, v239, a19, 5, 1);
        sub_239E19F00(a1, v99, v238, a19, 3, 1);
        v170 = a16;
        v171 = a15;
      }

      else
      {
        sub_239E19D68(a1, v99, a19, 4, 0);
        sub_239E19D68(a1, v99, a19, 5, 0);
        sub_239E19D68(a1, v99, a19, 2, 0);
        sub_239E19D68(a1, v99, a19, 3, 0);
        sub_239E19D68(a1, v99, a19, 1, 0);
        sub_239E19F00(a1, v99, v247, a19, 0, 1);
        sub_239E19F00(a1, v99, v245, a19, 2, 1);
        sub_239E19F00(a1, v99, v246, a19, 4, 1);
        sub_239E19F00(a1, v99, v243, a19, 2, 1);
      }

      sub_239E19F00(a1, v99, v242, a19, 4, 1);
      sub_239E19F00(a1, v99, v244, a19, 2, 1);
      v222 = *v171;
      *v171 = *v170;
      *v170 = v222;
      sub_239E19E34(a1, v99, a19, 0, 1);
      ++v169;
      v76 = v172;
      v223 = v266;
      v172 = v266;
    }

    while (v169 < *(a1 + 40));
  }

  else
  {
    v223 = v265;
  }

  v224 = v223;
  objc_msgSend_updateFence_(v99, v113, a20);
  objc_msgSend_endEncoding(v99, v225, v226);
  objc_msgSend_commit(v231, v227, v228);

  objc_msgSend_waitUntilCompleted(v231, v229, v230);
}

void sub_239E1B87C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, int a9, void *a10, void *a11, int a12, uint64_t a13, uint64_t a14, void *a15, int a16)
{
  v74 = sub_239E19AB4(a1, @"initializeFragmentsKernel", 0, 9, a9, a12, 0, 0, a16);
  v22 = sub_239E19AB4(a1, @"preprocessPolygonsKernel", 1, 10, a9, a12, 0, 0, a16);
  v25 = objc_msgSend_commandBuffer(a3, v23, v24);
  *a15 = 0;
  v26 = *(a1 + 8);
  v27 = *(a1 + 96);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_239E1BBB0;
  v81[3] = &unk_278B3D940;
  v81[4] = a15;
  v72 = v25;
  v28 = sub_239E04ADC(v26, v27, v25, v81);
  v73 = a4;
  objc_msgSend_waitForFence_(v28, v29, a4);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v30, a5, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v31, a6, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v32, a13, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v33, a14, 0, 8);
  objc_msgSend_setComputePipelineState_(v28, v34, v74);
  v35 = *(a1 + 88);
  v79 = vdupq_n_s64(1uLL);
  *v80 = v79;
  *&v80[16] = 1;
  v78 = v35;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v36, v80, &v78);
  if (objc_msgSend_count(a2, v37, v38))
  {
    v40 = 0;
    v75 = vdupq_n_s64(1uLL);
    do
    {
      v41 = objc_msgSend_objectAtIndexedSubscript_(a2, v39, v40);
      v77 = objc_msgSend_unsignedIntegerValue(v41, v42, v43);
      if (v77)
      {
        objc_msgSend_setBytes_length_atIndex_(v28, v44, &v77, 4, 0);
        v47 = objc_msgSend_objectAtIndexedSubscript_(a7, v46, v40);
        v49 = objc_msgSend_objectAtIndexedSubscript_(a8, v48, v40);
        v52 = objc_msgSend_unsignedIntegerValue(v49, v50, v51);
        objc_msgSend_setBuffer_offset_atIndex_(v28, v53, v47, v52, 3);
        v55 = objc_msgSend_objectAtIndexedSubscript_(a10, v54, v40);
        v57 = objc_msgSend_objectAtIndexedSubscript_(a11, v56, v40);
        v60 = objc_msgSend_unsignedIntegerValue(v57, v58, v59);
        objc_msgSend_setBuffer_offset_atIndex_(v28, v61, v55, v60, 4);
        v76 = v40;
        objc_msgSend_setBytes_length_atIndex_(v28, v62, &v76, 4, 9);
        objc_msgSend_setComputePipelineState_(v28, v63, v22);
        v64 = *(a1 + 88);
        *v80 = (v64 + v77 - 1) / v64;
        *&v80[8] = v75;
        v78 = v64;
        v79 = v75;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v65, v80, &v78);
      }

      ++v40;
    }

    while (v40 < objc_msgSend_count(a2, v44, v45));
  }

  objc_msgSend_updateFence_(v28, v39, v73);
  objc_msgSend_endEncoding(v28, v66, v67);
  objc_msgSend_commit(v72, v68, v69);
}

void sub_239E1BBBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v87 = *MEMORY[0x277D85DE8];
  v85 = a2;
  v74 = sub_239E19AB4(a1, @"initializeFragmentsKernel", 0, 9, 0, 0, a11, 0, 0);
  v73 = sub_239E19AB4(a1, @"preprocessInstancesKernel", 1, 11, 0, 0, a11, 0, 0);
  ComputeState = MPSLibrary::GetComputeState();
  v20 = *(a1 + 64);
  v23 = objc_msgSend_count(a12, v21, v22);
  if (v23 <= 1)
  {
    v25 = objc_msgSend_newBufferWithLength_options_(v20, v24, 32, 288);
  }

  else
  {
    v25 = objc_msgSend_newBufferWithLength_options_(v20, v24, 32 * v23, 288);
  }

  v28 = v25;
  v29 = objc_msgSend_commandBuffer(a3, v26, v27);
  *a16 = 0;
  v30 = *(a1 + 8);
  v31 = *(a1 + 96);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_239E1C01C;
  v84[3] = &unk_278B3D940;
  v84[4] = a16;
  v72 = v29;
  v32 = sub_239E04ADC(v30, v31, v29, v84);
  objc_msgSend_waitForFence_(v32, v33, a4);
  objc_msgSend_setComputePipelineState_(v32, v34, ComputeState);
  v83 = 0;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(a12, v35, &v79, v86, 16);
  if (v36)
  {
    v38 = v36;
    v39 = *v80;
    v75 = vdupq_n_s64(1uLL);
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v80 != v39)
        {
          objc_enumerationMutation(a12);
        }

        v41 = *(*(&v79 + 1) + 8 * i);
        objc_msgSend_setBytes_length_atIndex_(v32, v37, &v83, 4, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v32, v42, v28, 0, 1);
        v45 = objc_msgSend_boundingBoxBuffer(v41, v43, v44);
        objc_msgSend_setBuffer_offset_atIndex_(v32, v46, v45, 0, 2);
        *v78 = v75;
        *&v78[16] = 1;
        v76 = objc_msgSend_threadExecutionWidth(ComputeState, v47, v48);
        v77 = v75;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v49, v78, &v76);
        ++v83;
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(a12, v37, &v79, v86, 16);
    }

    while (v38);
  }

  objc_msgSend_setBytes_length_atIndex_(v32, v37, &v85, 8, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v50, a5, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v51, a6, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v52, a7, a8, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v53, a9, a10, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v54, a13, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v55, v28, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v56, a14, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v57, a15, 0, 8);
  objc_msgSend_setComputePipelineState_(v32, v58, v74);
  v59 = *(a1 + 88);
  v77 = vdupq_n_s64(1uLL);
  *v78 = v77;
  *&v78[16] = 1;
  v76 = v59;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v60, v78, &v76);
  if (v85)
  {
    objc_msgSend_setComputePipelineState_(v32, v61, v73);
    v62 = *(a1 + 88);
    *v78 = (v62 + v85 - 1) / v62;
    *&v78[8] = vdupq_n_s64(1uLL);
    v76 = v62;
    v77 = *&v78[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v63, v78, &v76);
  }

  objc_msgSend_updateFence_(v32, v61, a4);
  objc_msgSend_endEncoding(v32, v64, v65);
  objc_msgSend_commit(v72, v66, v67);
}

void sub_239E1C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, int a20)
{
  v59 = sub_239E19AB4(a1, @"encodePolygonBVHKernel", 0, 12, 0, 0, 0, 0, a20);
  v58 = sub_239E19AB4(a1, @"encodePolygonInnerNodeKernel", 0, 14, 0, 0, 0, 0, a20);
  v24 = sub_239E19AB4(a1, @"encodePolygonLeafNodeKernel", 0, 16, 0, 0, 0, 0, a20);
  v25 = sub_239E19AB4(a1, @"encodeNode0Kernel", 0, 17, 0, 0, 0, 0, a20);
  v28 = objc_msgSend_commandBuffer(a17, v26, v27);
  *a19 = 0;
  v29 = *(a1 + 8);
  v30 = *(a1 + 96);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_239E1C39C;
  v64[3] = &unk_278B3D940;
  v64[4] = a19;
  v31 = sub_239E04ADC(v29, v30, v28, v64);
  objc_msgSend_waitForFence_(v31, v32, a16);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v33, a4, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v34, a2, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v35, a3, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v36, a5, a6, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v37, a7, a8, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v38, a9, a10, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v39, a11, a12, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v40, a13, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v41, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v42, a15, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v43, a18, 0, 10);
  v44 = *(a1 + 88);
  objc_msgSend_setComputePipelineState_(v31, v45, v25);
  v61 = vdupq_n_s64(1uLL);
  v62 = v61;
  v63 = 1;
  v60 = v44;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v46, &v62, &v60);
  sub_239E19F00(a1, v31, v59, a15, 6, *(a1 + 88));
  sub_239E19F00(a1, v31, v58, a15, 8, *(a1 + 88));
  sub_239E19F00(a1, v31, v24, a15, 9, 1);
  objc_msgSend_updateFence_(v31, v47, a16);
  objc_msgSend_endEncoding(v31, v48, v49);
  objc_msgSend_commit(v28, v50, v51);
  objc_msgSend_waitUntilCompleted(v28, v52, v53);
}

void sub_239E1C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  v53 = sub_239E19AB4(a1, @"encodeInstanceBVHKernel", 0, 13, 0, 0, 0, 0, 0);
  v52 = sub_239E19AB4(a1, @"encodeInstanceInnerNodeKernel", 0, 15, 0, 0, 0, 0, 0);
  v19 = sub_239E19AB4(a1, @"encodeNode0Kernel", 0, 17, 0, 0, 0, 0, 0);
  v22 = objc_msgSend_commandBuffer(a13, v20, v21);
  *a15 = 0;
  v23 = *(a1 + 8);
  v24 = *(a1 + 96);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_239E1C6AC;
  v58[3] = &unk_278B3D940;
  v58[4] = a15;
  v25 = sub_239E04ADC(v23, v24, v22, v58);
  objc_msgSend_waitForFence_(v25, v26, a12);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v27, a4, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v28, a2, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v29, a3, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v30, a5, a6, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v31, a7, a8, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v32, 0, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v33, 0, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v34, a9, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v35, a10, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v36, a11, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v25, v37, a14, 0, 10);
  v38 = *(a1 + 88);
  objc_msgSend_setComputePipelineState_(v25, v39, v19);
  v55 = vdupq_n_s64(1uLL);
  v56 = v55;
  v57 = 1;
  v54 = v38;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v40, &v56, &v54);
  sub_239E19F00(a1, v25, v53, a11, 6, *(a1 + 88));
  sub_239E19F00(a1, v25, v52, a11, 8, *(a1 + 88));
  objc_msgSend_updateFence_(v25, v41, a12);
  objc_msgSend_endEncoding(v25, v42, v43);
  objc_msgSend_commit(v22, v44, v45);
  objc_msgSend_waitUntilCompleted(v22, v46, v47);
}

void sub_239E1C6B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v160 = sub_239E19AB4(a1, @"maxKeyKernel", 0, 18, 0, 0, 0, 0, 0);
  v164 = sub_239E19AB4(a1, @"clearTableKernel", 0, 19, 0, 0, 0, 0, 0);
  v162 = sub_239E19AB4(a1, @"insertPageTable1Kernel", 0, 20, 0, 0, 0, 0, 0);
  v159 = sub_239E19AB4(a1, @"scanTableKernel", 1, 21, 0, 0, 0, 0, 0);
  v161 = sub_239E19AB4(a1, @"insertPageTable0Kernel", 0, 22, 0, 0, 0, 0, 0);
  v157 = sub_239E19AB4(a1, @"insertPagesKernel", 0, 23, 0, 0, 0, 0, 0);
  v20 = objc_msgSend_commandBuffer(a6, v18, v19);
  *a11 = 0;
  v21 = *(a1 + 8);
  v22 = *(a1 + 96);
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = sub_239E1D134;
  v175[3] = &unk_278B3D940;
  v175[4] = a11;
  v23 = sub_239E04ADC(v21, v22, v20, v175);
  objc_msgSend_waitForFence_(v23, v24, a5);
  objc_msgSend_setBuffer_offset_atIndex_(v23, v25, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v23, v26, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v23, v27, a4, 0, 2);
  sub_239E19D68(a1, v23, a4, 10, 0);
  sub_239E19F00(a1, v23, v160, a4, 6, *(a1 + 88));
  objc_msgSend_updateFence_(v23, v28, a5);
  objc_msgSend_endEncoding(v23, v29, v30);
  objc_msgSend_commit(v20, v31, v32);
  v35 = objc_msgSend_length(a4, v33, v34);
  v158 = a6;
  v155 = a5;
  v36 = sub_239E1D148(a1, v35, a4, a6, a5);
  v37 = v36[640];
  v40 = objc_msgSend_length(a4, v38, v39);
  munmap(v36, v40);
  if (v37 <= 0xFFFFEFFF)
  {
    v43 = (v37 + 4096) >> 12;
  }

  else
  {
    v43 = 0xFFFFF;
  }

  v174 = v43;
  v44 = objc_msgSend_commandBuffer(a6, v41, v42);
  *a9 = sub_239E19178(a7[8], 4 * v43, v44);
  v45 = *(a1 + 8);
  v46 = *(a1 + 96);
  v173[0] = MEMORY[0x277D85DD0];
  v173[1] = 3221225472;
  v173[2] = sub_239E1D2F0;
  v173[3] = &unk_278B3D940;
  v173[4] = a11;
  v47 = sub_239E04ADC(v45, v46, v44, v173);
  objc_msgSend_waitForFence_(v47, v48, a5);
  v50 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v49, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v51, v50, *(*a9 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v47, v52, &v174, 4, 1);
  objc_msgSend_setComputePipelineState_(v47, v53, v164);
  v54 = *(a1 + 88);
  v171 = (v54 + v174 - 1) / v54;
  v163 = vdupq_n_s64(1uLL);
  v172 = v163;
  v169 = v54;
  v170 = v163;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v47, v55, &v171, &v169);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v56, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v57, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v58, a4, 0, 2);
  v60 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v59, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v61, v60, *(*a9 + 32), 3);
  sub_239E19F00(a1, v47, v162, a4, 6, *(a1 + 88));
  sub_239E19D68(a1, v47, a4, 11, 0);
  v63 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v62, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v64, v63, *(*a9 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v47, v65, &v174, 4, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v47, v66, a4, 0, 2);
  v168 = 11;
  objc_msgSend_setBytes_length_atIndex_(v47, v67, &v168, 4, 3);
  objc_msgSend_setComputePipelineState_(v47, v68, v159);
  v69 = *(a1 + 88);
  v171 = (v69 + v174 - 1) / v69;
  v172 = v163;
  v169 = v69;
  v170 = v163;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v47, v70, &v171, &v169);
  objc_msgSend_updateFence_(v47, v71, a5);
  objc_msgSend_endEncoding(v47, v72, v73);
  objc_msgSend_commit(v44, v74, v75);
  v78 = objc_msgSend_length(a4, v76, v77);
  v79 = sub_239E1D148(a1, v78, a4, a6, a5);
  v168 = v79[704];
  v80 = v168;
  v83 = objc_msgSend_length(a4, v81, v82);
  munmap(v79, v83);
  v86 = objc_msgSend_commandBuffer(v158, v84, v85);
  *a8 = sub_239E19178(a7[7], 4 * v80, v86);
  v87 = *(a1 + 8);
  v88 = *(a1 + 96);
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = sub_239E1D304;
  v167[3] = &unk_278B3D940;
  v167[4] = a11;
  v89 = sub_239E04ADC(v87, v88, v86, v167);
  objc_msgSend_waitForFence_(v89, v90, a5);
  v92 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v91, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v93, v92, *(*a8 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v89, v94, &v168, 4, 1);
  objc_msgSend_setComputePipelineState_(v89, v95, v164);
  v96 = *(a1 + 88);
  v171 = (v96 + v168 - 1) / v96;
  v172 = v163;
  v169 = v96;
  v170 = v163;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v89, v97, &v171, &v169);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v98, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v99, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v100, a4, 0, 2);
  v102 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v101, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v103, v102, *(*a9 + 32), 3);
  v105 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v104, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v106, v105, *(*a8 + 32), 4);
  sub_239E19F00(a1, v89, v161, a4, 6, *(a1 + 88));
  sub_239E19D68(a1, v89, a4, 12, 0);
  v108 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v107, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v109, v108, *(*a8 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v89, v110, &v168, 4, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v89, v111, a4, 0, 2);
  v166 = 12;
  objc_msgSend_setBytes_length_atIndex_(v89, v112, &v166, 4, 3);
  objc_msgSend_setComputePipelineState_(v89, v113, v159);
  v114 = *(a1 + 88);
  v171 = (v114 + v168 - 1) / v114;
  v172 = v163;
  v169 = v114;
  v170 = v163;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v89, v115, &v171, &v169);
  objc_msgSend_updateFence_(v89, v116, a5);
  objc_msgSend_endEncoding(v89, v117, v118);
  objc_msgSend_commit(v86, v119, v120);
  v123 = objc_msgSend_length(a4, v121, v122);
  v124 = sub_239E1D148(a1, v123, a4, v158, a5);
  v125 = v124[768];
  v128 = objc_msgSend_length(a4, v126, v127);
  munmap(v124, v128);
  v131 = objc_msgSend_commandBuffer(v158, v129, v130);
  *a10 = sub_239E19178(a7[9], 4 * v125, v131);
  v132 = *(a1 + 8);
  v133 = *(a1 + 96);
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = sub_239E1D318;
  v165[3] = &unk_278B3D940;
  v165[4] = a11;
  v134 = sub_239E04ADC(v132, v133, v131, v165);
  objc_msgSend_waitForFence_(v134, v135, v155);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v136, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v137, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v138, a4, 0, 2);
  v140 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v139, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v141, v140, *(*a9 + 32), 3);
  v143 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v142, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v144, v143, *(*a8 + 32), 4);
  v146 = objc_msgSend_objectAtIndexedSubscript_(*(a7[9] + 24), v145, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v147, v146, *(*a10 + 32), 5);
  sub_239E19F00(a1, v134, v157, a4, 6, *(a1 + 88));
  objc_msgSend_updateFence_(v134, v148, v155);
  objc_msgSend_endEncoding(v134, v149, v150);
  objc_msgSend_commit(v131, v151, v152);
  objc_msgSend_waitUntilCompleted(v131, v153, v154);
}

double sub_239E1D134(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

void *sub_239E1D148(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a2;
  v12 = mmap(0, a2, 3, 4098, -1, 0);
  if (v12 == -1)
  {
    sub_239E24DDC(-1, v11);
  }

  v13 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(*(a1 + 64), v11, v12, v10, 256, 0);
  v16 = objc_msgSend_commandBuffer(a4, v14, v15);
  v19 = objc_msgSend_computeCommandEncoder(v16, v17, v18);
  objc_msgSend_waitForFence_(v19, v20, a5);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v19, v22, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(v19, v23, v13, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v19, v24, a3, 0, 1);
  v42 = a2 >> 2;
  objc_msgSend_setBytes_length_atIndex_(v19, v25, &v42, 4, 2);
  v28 = objc_msgSend_threadExecutionWidth(ComputeState, v26, v27);
  v40 = (v28 + v42 - 1) / v28;
  v41 = vdupq_n_s64(1uLL);
  v38 = v28;
  v39 = v41;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v29, &v40, &v38);
  objc_msgSend_updateFence_(v19, v30, a5);
  objc_msgSend_endEncoding(v19, v31, v32);
  objc_msgSend_commit(v16, v33, v34);
  objc_msgSend_waitUntilCompleted(v16, v35, v36);

  return v12;
}

double sub_239E1D2F0(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

double sub_239E1D304(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

double sub_239E1D318(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

void sub_239E1D330(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, unsigned int a11)
{
  v254 = *MEMORY[0x277D85DE8];
  v198 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15);
  v230 = v16;
  if (*(a2 + 2) != *(a1 + 64))
  {
    v16 = sub_239E24E2C(v16, v17);
  }

  v228 = a2;
  v231 = *(a2 + 3);
  if ((*(a1 + 12) - 4) <= 0xFFFFFFFD)
  {
    v16 = sub_239E24E7C(v16, v17);
  }

  if (*(a1 + 52) != 2)
  {
    v16 = sub_239E24ECC(v16, v17);
  }

  if (*(a1 + 56))
  {
    sub_239E24F1C(v16, v17);
  }

  sub_239DFA24C(*(a1 + 64), v17);
  v19 = sub_239DFA24C(*(a1 + 64), v18);
  if ((v19 & 1) == 0)
  {
    sub_239E24F6C(v19, v20);
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v20, &v248, v253, 16);
  if (v23)
  {
    v24 = 0;
    v25 = *v249;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v249 != v25)
        {
          objc_enumerationMutation(a9);
        }

        v24 += objc_msgSend_unsignedIntegerValue(*(*(&v248 + 1) + 8 * i), v21, v22);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v21, &v248, v253, 16);
    }

    while (v23);
    v27 = v24;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = *(a1 + 12) == 3 && *(a1 + 60) == 0;
  v29 = 1.0;
  if (v28)
  {
    v29 = 2.0;
  }

  v30 = (v29 * v27);
  v31 = getpagesize();
  v33 = v31;
  v200 = 32 * v30;
  v34 = -v31;
  if (((v31 - 1 + 32 * v30) & -v31) != 0)
  {
    v35 = (v31 - 1 + 32 * v30) & -v31;
  }

  else
  {
    v35 = v31;
  }

  v36 = (a1 + 64);
  v37 = *(a1 + 32);
  v38 = v37 + 2 * v30 - 1;
  if (v37 > v38)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 / v37;
  }

  v216 = v39;
  v225 = v31 - 1;
  v201 = v35;
  v202 = v30;
  LODWORD(v39) = (v31 - 1 + 4 * v30) & v34;
  if (v39)
  {
    v39 = v39;
  }

  else
  {
    v39 = v31;
  }

  v218 = v39;
  v224 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v32, v35, 288);
  v247 = objc_msgSend_newBufferWithLength_options_(*v36, v40, v218, 288);
  v199 = 32 * v216;
  v246 = objc_msgSend_newBufferWithLength_options_(*v36, v41, v218, 288);
  v203 = (v225 + v199) & v34;
  v220 = objc_msgSend_newBufferWithLength_options_(*v36, v42, v203, 288);
  v204 = (v225 + 4 * v216) & v34;
  v223 = objc_msgSend_newBufferWithLength_options_(*v36, v43, v204, 288);
  v205 = (v33 + 3327) & v34;
  v227 = objc_msgSend_newBufferWithLength_options_(*v36, v44, v205, 288);
  v46 = objc_msgSend_newBufferWithLength_options_(*v36, v45, 256, 288);
  v48 = objc_msgSend_newBufferWithLength_options_(*v36, v47, 16, 288);
  v50 = objc_msgSend_newBufferWithLength_options_(*v36, v49, 16, 288);
  v229 = objc_msgSend_newFence(*v36, v51, v52);
  if (!a6)
  {
    a8 = 0;
  }

  v55 = objc_msgSend_date(MEMORY[0x277CBEAA8], v53, v54);
  v245 = 0.0;
  sub_239E1B87C(a1, a9, v231, v229, v46, v224, a3, a4, a5, a6, a7, a8, v48, v50, &v245, a10);
  objc_msgSend_timeIntervalSinceNow(v55, v56, v57);
  v59 = v58;
  v62 = objc_msgSend_date(MEMORY[0x277CBEAA8], v60, v61);
  v244 = 0.0;
  (*(*a1 + 32))(a1, v202, v201, v216, v203, v231, a3, a4, a5, a6, a7, a8, __PAIR64__(v204, v218), v224, &v247, &v246, v220, v223, v227, v229, v46, v48, v50, &v244, a10);
  objc_msgSend_timeIntervalSinceNow(v62, v63, v64);
  v66 = v65;

  v67 = sub_239E1D148(a1, v205, v227, v231, v229);
  v68 = v67[448];
  v215 = v67[512];
  v213 = v67[576];
  munmap(v67, v205);
  if (((v225 + 4 * v68) & v34) != 0)
  {
    v71 = (v225 + 4 * v68) & v34;
  }

  else
  {
    v71 = v33;
  }

  v72 = objc_msgSend_commandBuffer(v231, v69, v70);
  v217 = sub_239E19178(v228[5], (v33 + (v215 << 6) + 63) & v34, v72);
  v226 = sub_239E19178(v228[6], (v225 + 16 * v213) & v34, v72);
  v222 = sub_239E19178(v228[4], v71, v72);
  objc_msgSend_commit(v72, v73, v74);
  objc_msgSend_waitUntilCompleted(v72, v75, v76);
  v206 = objc_msgSend_date(MEMORY[0x277CBEAA8], v77, v78);
  v80 = objc_msgSend_newBufferWithLength_options_(*v36, v79, 48, 256);
  v219 = objc_msgSend_newBufferWithLength_options_(*v36, v81, v204, 288);
  v243 = 0.0;
  v210 = v247;
  v83 = objc_msgSend_objectAtIndexedSubscript_(*(v228[5] + 24), v82, 0);
  v84 = *(v217 + 32);
  v86 = objc_msgSend_objectAtIndexedSubscript_(*(v228[6] + 24), v85, 0);
  v87 = *(v226 + 32);
  v89 = objc_msgSend_objectAtIndexedSubscript_(*(v228[4] + 24), v88, 0);
  v90 = *(v222 + 32);
  v92 = objc_msgSend_objectAtIndexedSubscript_(*(v228[4] + 24), v91, 1);
  sub_239E1C028(a1, v224, v210, v220, v83, v84, v86, v87, v89, v90, v92, *(v222 + 32), v223, v219, v227, v229, v231, v80, &v243, a10);
  v95 = objc_msgSend_contents(v80, v93, v94);
  v208 = *(v95 + 16);
  v211 = *v95;
  v96 = *(v95 + 32);

  objc_msgSend_timeIntervalSinceNow(v206, v97, v98);
  v100 = v99;
  v103 = objc_msgSend_date(MEMORY[0x277CBEAA8], v101, v102);
  v241 = 0;
  v242 = 0;
  v239 = 0.0;
  v240 = 0;
  sub_239E1C6B8(a1, v223, v219, v227, v229, v231, v228, &v242, &v241, &v240, &v239);
  objc_msgSend_timeIntervalSinceNow(v103, v104, v105);
  v109 = v108;
  v110 = 0.0;
  if (*(a1 + 8) == 1)
  {
    v111 = objc_msgSend_date(MEMORY[0x277CBEAA8], v106, v107);
    v112 = sub_239E1D148(a1, v203, v220, v231, v229);
    v113 = *(a1 + 24);
    v236[0] = *(a1 + 8);
    v236[1] = v113;
    v237 = *(a1 + 40);
    v238 = *(a1 + 56);
    sub_239DFA254(a1, v236, v112, v230, v237, v113);
    munmap(v112, v203);
    objc_msgSend_timeIntervalSinceNow(v111, v114, v115);
    v110 = -v116;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v230, v106, @"GPU", @"BVH Builder");
  v118 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v117, @"{ %f, %f, %f }, { %f, %f, %f }", *&v211, *(&v211 + 1), *(&v211 + 2), *&v208, *(&v208 + 1), *(&v208 + 2));
  objc_msgSend_setObject_forKeyedSubscript_(v230, v119, v118, @"Bounds");
  if (v96)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v230, v120, @"Leaf", @"BVH Root Node Type");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v230, v120, @"Internal", @"BVH Root Node Type");
  }

  v123 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v121, v122);
  objc_msgSend_setObject_forKeyedSubscript_(v230, v124, v123, @"Temporary Memory");
  v127 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v125, v126, vcvtd_n_f64_u64(v200, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v123, v128, v127, @"Fragments (mb)");
  v131 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v129, v130, vcvtd_n_f64_u64(v199, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v123, v132, v131, @"Nodes (mb)");
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v133, &v232, v252, 16);
  if (v136)
  {
    v137 = *v233;
    v138 = 0.0;
    do
    {
      for (j = 0; j != v136; ++j)
      {
        if (*v233 != v137)
        {
          objc_enumerationMutation(v123);
        }

        v140 = objc_msgSend_objectForKeyedSubscript_(v123, v134, *(*(&v232 + 1) + 8 * j));
        objc_msgSend_doubleValue(v140, v141, v142);
        v138 = v138 + v143;
      }

      v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v134, &v232, v252, 16);
    }

    while (v136);
  }

  else
  {
    v138 = 0.0;
  }

  v144 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v134, v135, v138);
  objc_msgSend_setObject_forKeyedSubscript_(v123, v145, v144, @"Total (mb)");
  v148 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v146, v147);
  objc_msgSend_setObject_forKeyedSubscript_(v230, v149, v148, @"Timing");
  v152 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v150, v151, -v66);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v153, v152, @"BVH Build (s)");
  v156 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v154, v155, -v59);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v157, v156, @"Fragment Preprocessing (s)");
  v160 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v158, v159, -v100);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v161, v160, @"Encode (s)");
  v164 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v162, v163, -v109);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v165, v164, @"Sparse Table Build (s)");
  v168 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v166, v167, v110);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v169, v168, @"Compute Statistics (s)");
  v170 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(v198, v171, v172);
  v176 = objc_msgSend_numberWithDouble_(v170, v174, v175, -v173);
  objc_msgSend_setObject_forKeyedSubscript_(v148, v177, v176, @"Total (s)");
  v180 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v178, v179);
  objc_msgSend_setObject_forKeyedSubscript_(v230, v181, v180, @"Timing (GPU)");
  v184 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v182, v183, v245 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v180, v185, v184, @"Fragment Preprocessing (s)");
  v188 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v186, v187, v244 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v180, v189, v188, @"BVH Build (s)");
  v192 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v190, v191, v243 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v180, v193, v192, @"Encode (s)");
  v196 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v194, v195, v239 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v180, v197, v196, @"Sparse Table Build (s)");

  operator new();
}

void sub_239E1DF30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v242 = *MEMORY[0x277D85DE8];
  v197 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
  v223 = v14;
  if (*(a2 + 2) != *(a1 + 64))
  {
    v14 = sub_239E24FBC(v14, v15);
  }

  v217 = a2;
  v224 = *(a2 + 3);
  if (*(a1 + 12) != 2)
  {
    v14 = sub_239E2500C(v14, v15);
  }

  if (*(a1 + 52) != 2)
  {
    v14 = sub_239E2505C(v14, v15);
  }

  if (*(a1 + 56))
  {
    sub_239E250AC(v14, v15);
  }

  sub_239DFA24C(*(a1 + 64), v15);
  v17 = sub_239DFA24C(*(a1 + 64), v16);
  if ((v17 & 1) == 0)
  {
    sub_239E250FC(v17, v18);
  }

  v19 = *(a1 + 12) == 3 && *(a1 + 60) == 0;
  v20 = 1.0;
  if (v19)
  {
    v20 = 2.0;
  }

  v21 = (v20 * a8);
  v22 = getpagesize();
  v24 = 32 * v21;
  v25 = v22 - 1;
  v26 = -v22;
  if (((v22 - 1 + 32 * v21) & -v22) != 0)
  {
    v27 = (v22 - 1 + 32 * v21) & -v22;
  }

  else
  {
    v27 = v22;
  }

  v28 = *(a1 + 32);
  v29 = v28 + 2 * v21 - 1;
  if (v28 > v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 / v28;
  }

  v31 = 32 * v30;
  v32 = (v25 + 32 * v30) & v26;
  v202 = v21;
  if (((v25 + 4 * v21) & v26) != 0)
  {
    v33 = (v25 + 4 * v21) & v26;
  }

  else
  {
    v33 = v22;
  }

  v203 = v30;
  v204 = v27;
  v34 = (v25 + 4 * v30) & v26;
  v201 = v22;
  v35 = (v22 + 3327) & v26;
  v219 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v23, v27, 288);
  v240 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v36, v33, 288);
  v239 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v37, v33, 288);
  v213 = v32;
  v216 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v38, v32, 288);
  v207 = v34;
  v218 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v39, v34, 288);
  v214 = v35;
  v220 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v40, v35, 288);
  v42 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v41, 256, 288);
  v44 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v43, 16, 288);
  v48 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v45, 16, 288);
  v198 = v31;
  v199 = v24;
  v200 = v25;
  if (a5 == 1)
  {
    v49 = 0;
  }

  else
  {
    v50 = *(a1 + 64);
    if (a8 <= 1)
    {
      v51 = objc_msgSend_newBufferWithLength_options_(v50, v46, 64, 32);
    }

    else
    {
      v51 = objc_msgSend_newBufferWithLength_options_(v50, v46, a8 << 6, 32);
    }

    v49 = v51;
  }

  v52 = objc_msgSend_newFence(*(a1 + 64), v46, v47);
  v55 = objc_msgSend_date(MEMORY[0x277CBEAA8], v53, v54);
  v238 = 0.0;
  v196 = v49;
  v195 = a5;
  v222 = v52;
  sub_239E1BBBC(a1, a8, v224, v52, v42, v219, a6, a7, a3, a4, v195, a9, v49, v44, v48, &v238);
  objc_msgSend_timeIntervalSinceNow(v55, v56, v57);
  v59 = v58;
  v62 = objc_msgSend_date(MEMORY[0x277CBEAA8], v60, v61);
  v237 = 0.0;
  (*(*a1 + 32))(a1, v202, v204, v203, v213, v224, 0, 0, 0, 0, 0, 0, __PAIR64__(v207, v33), v219, &v240, &v239, v216, v218, v220, v52, v42, v44, v48, &v237, 0, v196);

  objc_msgSend_timeIntervalSinceNow(v62, v63, v64);
  v66 = v65;
  v67 = sub_239E1D148(a1, v214, v220, v224, v52);
  v211 = v67[512];
  v209 = v67[576];
  munmap(v67, v214);
  v70 = objc_msgSend_commandBuffer(v224, v68, v69);
  v71 = sub_239E19178(v217[5], (v201 + (v211 << 6) + 63) & v26, v70);
  v72 = sub_239E19178(v217[6], (v200 + 8 * v209) & v26, v70);
  objc_msgSend_commit(v70, v73, v74);
  objc_msgSend_waitUntilCompleted(v70, v75, v76);
  v79 = objc_msgSend_date(MEMORY[0x277CBEAA8], v77, v78);
  v81 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v80, 48, 256);
  v83 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v82, v207, 288);
  v236 = 0.0;
  v84 = v240;
  v86 = objc_msgSend_objectAtIndexedSubscript_(*(v217[5] + 24), v85, 0);
  v87 = *(v71 + 32);
  v89 = objc_msgSend_objectAtIndexedSubscript_(*(v217[6] + 24), v88, 0);
  sub_239E1C3A8(a1, v219, v84, v216, v86, v87, v89, *(v72 + 32), v218, v83, v220, v222, v224, v81, &v236);
  v92 = objc_msgSend_contents(v81, v90, v91);
  *v215 = *v92;
  v212 = *(v92 + 16);
  v93 = *(v92 + 32);

  objc_msgSend_timeIntervalSinceNow(v79, v94, v95);
  v97 = v96;
  v100 = objc_msgSend_date(MEMORY[0x277CBEAA8], v98, v99);
  v234 = 0;
  v235 = 0;
  v232 = 0.0;
  v233 = 0;
  sub_239E1C6B8(a1, v218, v83, v220, v222, v224, v217, &v235, &v234, &v233, &v232);
  objc_msgSend_timeIntervalSinceNow(v100, v101, v102);
  v106 = v105;
  v107 = 0.0;
  if (*(a1 + 8) == 1)
  {
    v108 = objc_msgSend_date(MEMORY[0x277CBEAA8], v103, v104);
    v109 = sub_239E1D148(a1, v213, v216, v224, v222);
    v110 = *(a1 + 24);
    v229[0] = *(a1 + 8);
    v229[1] = v110;
    v230 = *(a1 + 40);
    v231 = *(a1 + 56);
    sub_239DFA254(a1, v229, v109, v223, v230, v110);
    munmap(v109, v213);
    objc_msgSend_timeIntervalSinceNow(v108, v111, v112);
    v107 = -v113;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v223, v103, @"GPU", @"BVH Builder");
  v115 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v114, @"{ %f, %f, %f }, { %f, %f, %f }", *v215, *(v215 + 1), *&v215[1], v212.n128_f32[0], v212.n128_f32[1], v212.n128_f32[2]);
  objc_msgSend_setObject_forKeyedSubscript_(v223, v116, v115, @"Bounds");
  if (v93)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v223, v117, @"Leaf", @"BVH Root Node Type");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v223, v117, @"Internal", @"BVH Root Node Type");
  }

  v120 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v118, v119);
  objc_msgSend_setObject_forKeyedSubscript_(v223, v121, v120, @"Temporary Memory");
  v124 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v122, v123, vcvtd_n_f64_u64(v199, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v120, v125, v124, @"Fragments (mb)");
  v128 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v126, v127, vcvtd_n_f64_u64(v198, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v120, v129, v128, @"Nodes (mb)");
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v130, &v225, v241, 16);
  if (v133)
  {
    v134 = *v226;
    v135 = 0.0;
    do
    {
      for (i = 0; i != v133; ++i)
      {
        if (*v226 != v134)
        {
          objc_enumerationMutation(v120);
        }

        v137 = objc_msgSend_objectForKeyedSubscript_(v120, v131, *(*(&v225 + 1) + 8 * i));
        objc_msgSend_doubleValue(v137, v138, v139);
        v135 = v135 + v140;
      }

      v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v131, &v225, v241, 16);
    }

    while (v133);
  }

  else
  {
    v135 = 0.0;
  }

  v141 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v131, v132, v135);
  objc_msgSend_setObject_forKeyedSubscript_(v120, v142, v141, @"Total (mb)");
  v145 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v143, v144);
  objc_msgSend_setObject_forKeyedSubscript_(v223, v146, v145, @"Timing");
  v149 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v147, v148, -v66);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v150, v149, @"BVH Build (s)");
  v153 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v151, v152, -v59);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v154, v153, @"Fragment Preprocessing (s)");
  v157 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v155, v156, -v97);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v158, v157, @"Encode (s)");
  v161 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v159, v160, -v106);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v162, v161, @"Sparse Table Build (s)");
  v165 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v163, v164, v107);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v166, v165, @"Compute Statistics (s)");
  v167 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(v197, v168, v169);
  v173 = objc_msgSend_numberWithDouble_(v167, v171, v172, -v170);
  objc_msgSend_setObject_forKeyedSubscript_(v145, v174, v173, @"Total (s)");
  v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176);
  objc_msgSend_setObject_forKeyedSubscript_(v223, v178, v177, @"Timing (GPU)");
  v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v179, v180, v238 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v177, v182, v181, @"Fragment Preprocessing (s)");
  v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, v237 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v177, v186, v185, @"BVH Build (s)");
  v189 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v187, v188, v236 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v177, v190, v189, @"Encode (s)");
  v193 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v191, v192, v232 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v177, v194, v193, @"Sparse Table Build (s)");

  operator new();
}

void *sub_239E1EA18(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = *(a3 + 32);
  v6 = *(a3 + 48);
  result = sub_239E1959C(a1, a2, v5);
  *result = &unk_284D085F0;
  return result;
}

void sub_239E1EA78(uint64_t a1)
{
  sub_239E19690(a1);

  JUMPOUT(0x23EE7D780);
}

void sub_239E1EAB0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned int a6)
{
  v11 = objc_msgSend_length(a2, a2, a3);
  v12 = sub_239E1D148(a1, v11, a2, a4, a5);
  v15 = objc_msgSend_length(a3, v13, v14);
  *malloc_type_malloc(v15, 0x100004052888210uLL) = 0;
  printf("I%u (%f, %f)\n", 0, *v12, v12[4]);
  operator new[]();
}

uint64_t sub_239E1EC78(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, int a11, int *a12, uint64_t a13, int a14, __n128 *a15)
{
  v18 = result + 32 * a2;
  if ((a3 & 0x80000000) == 0)
  {
    v21 = result;
    v22 = a3;
    v23 = HIDWORD(*(a4 + 8 * a3));
    v24 = *(a4 + 8 * a3);
    if ((v24 & 0x80000000) != 0 && (v23 & 0x80000000) != 0)
    {
      ++*(a8 + 2304);
      *(v18 + 28) = -2;
LABEL_8:
      *(v18 + 12) = *(a7 + 8 * v22) + 1;
      v28 = a10 + 32 * v22;
      a9 = *v28;
      *v18 = *v28;
      *(v18 + 8) = a9.n128_u32[2];
      v29 = *(v28 + 16);
      *(v18 + 16) = v29;
      *(v18 + 24) = DWORD2(v29);
      goto LABEL_9;
    }

    if (a11 == 30)
    {
      ++*(a8 + 2304);
      *(v18 + 28) = vsub_s32(*(a7 + 8 * v22), vdup_lane_s32(*(a7 + 8 * v22), 1)).u32[0];
      goto LABEL_8;
    }

    v30 = (a10 + 32 * v22);
    v31 = *v30;
    *v18 = *v30;
    *(v18 + 8) = DWORD2(v31);
    a9 = v30[1];
    *(v18 + 16) = a9.n128_u64[0];
    *(v18 + 24) = a9.n128_u32[2];
    a9.n128_u64[0] = vsub_s32(vdup_lane_s32(*(a7 + 8 * v22), 1), *(a7 + 8 * v22));
    if (a9.n128_i32[0] <= 3)
    {
      ++*(a8 + 2304);
      *(v18 + 28) = -a9.n128_u32[0];
      *(v18 + 12) = *(a7 + 8 * v22) + 1;
      a9.n128_u64[0] = *v18;
      a9.n128_u32[2] = *(v18 + 8);
      goto LABEL_9;
    }

    ++*(a8 + 2048);
    *(v18 + 28) = 2;
    v32 = *a12;
    *(v18 + 12) = *a12;
    *a12 = v32 + 2;
    sub_239E1EC78(result, *(v18 + 12), v24, a4, a5, a6, a7, a8, a9, a10, a11 + 1, a12, a13, 2 * a14, &v40);
    v38 = (2 * a14) | 1;
    result = sub_239E1EC78(v21, *(v18 + 12) + 1, v23, a4, a5, a6, a7, a8, v33, a10, a11 + 1, a12, a13, v38, &v39);
    v34 = *(v18 + 12);
    v35 = *(v21 + 32 * v34 + 28);
    if (v35 == -1)
    {
      v36 = (v34 + 1);
      if ((*(v21 + 32 * v36 + 28) & 0x80000000) != 0)
      {
LABEL_17:
        v37 = dword_27DF88888++;
        result = printf("3T%u\n", v37);
        v34 = *(v18 + 12);
        goto LABEL_18;
      }
    }

    else
    {
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v36 = (v34 + 1);
    }

    if (*(v21 + 32 * v36 + 28) == -1)
    {
      goto LABEL_17;
    }

LABEL_18:
    *(a13 + 4 * v34) = 2 * a14;
    *(a13 + 4 * (*(v18 + 12) + 1)) = v38;
    a9.n128_u64[0] = *v18;
    a9.n128_u32[2] = *(v18 + 8);
    goto LABEL_9;
  }

  ++*(a8 + 2304);
  *(v18 + 28) = -1;
  *(v18 + 12) = a3 & 0x7FFFFFFF;
  v25 = (a5 + 32 * *(a6 + 4 * (a3 & 0x7FFFFFFF)));
  v26 = *v25;
  *(v18 + 8) = *(v25 + 2);
  *v18 = v26;
  v27 = v25[2];
  *(v18 + 24) = *(v25 + 6);
  *(v18 + 16) = v27;
  a9.n128_u64[0] = *v18;
  a9.n128_u32[2] = *(v18 + 8);
LABEL_9:
  *a15 = a9;
  return result;
}

uint64_t sub_239E1EFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, _DWORD *a10)
{
  a9.n128_u64[0] = *(a2 + 8 * (a5 - 1));
  v13 = 1;
  *a10 = 1;
  result = sub_239E1EC78(a1, 0, a9.n128_u32[0], a2, a3, a4, a6, a7, a9, a8, 0, &v13, a10, 1, &v12);
  *(a7 + 1536) = v13;
  return result;
}

void sub_239E1F030(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, void *a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25)
{
  v26 = a2;
  v159 = a4;
  v160[0] = a2;
  v28 = objc_msgSend_count(a7, a2, a3) > 1;
  v148 = sub_239E19AB4(a1, @"generateMortonCodes", 1, 0, a9, a12, 0, v28, a25);
  v147 = sub_239E19AB4(a1, @"generateDistances", 1, 0, a9, a12, 0, v28, a25);
  v29 = sub_239E19AB4(a1, @"generateHierarchy1", 1, 0, a9, a12, 0, v28, a25);
  v30 = sub_239E19AB4(a1, @"generateHierarchy2", 1, 0, a9, a12, 0, v28, a25);
  v146 = sub_239E19AB4(a1, @"generateNodesInit", 1, 0, a9, a12, 0, v28, a25);
  v31 = sub_239E19AB4(a1, @"generateNodesStep", 1, 0, a9, a12, 0, v28, a25);
  *a24 = 0;
  v141 = a6;
  v34 = objc_msgSend_commandBuffer(a6, v32, v33);
  v35 = 4 * v26;
  v155 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v36, v35, 32);
  v140 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v37, v35, 32);
  v145 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v38, v35, 32);
  v144 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v39, v35, 32);
  v154 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v40, 8 * v26, 32);
  v153 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v41, 8 * v26, 32);
  v151 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v42, 32 * v26, 32);
  v43 = 4 * a4;
  v150 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v44, v43, 32);
  v143 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v45, v43, 32);
  v47 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v46, v35, 32);
  v49 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v48, v35, 32);
  v52 = objc_msgSend_computeCommandEncoder(v34, v50, v51);
  objc_msgSend_waitForFence_(v52, v53, a20);
  sub_239E19D68(a1, v52, a19, 6, 0);
  sub_239E19D68(a1, v52, a19, 8, 0);
  sub_239E19D68(a1, v52, a19, 9, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v54, v155, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v55, a14, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v56, a21, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v57, a22, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v58, a23, 0, 4);
  objc_msgSend_setBytes_length_atIndex_(v52, v59, v160, 4, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v60, *a16, 0, 14);
  objc_msgSend_setComputePipelineState_(v52, v61, v148);
  v66 = objc_msgSend_maxTotalThreadsPerThreadgroup(v148, v62, v63);
  v67 = *(a1 + 64);
  if (v67)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v67, v64, v65);
    v68 = *v158;
  }

  else
  {
    v68 = 0;
  }

  if (v68 >= v66)
  {
    v68 = v66;
  }

  *v158 = (v68 + v160[0] - 1) / v68;
  *&v158[8] = vdupq_n_s64(1uLL);
  v156 = v68;
  v157 = *&v158[8];
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v52, v64, v158, &v156);
  objc_msgSend_endEncoding(v52, v69, v70);
  v71 = objc_alloc(MEMORY[0x277CD7270]);
  v73 = objc_msgSend_initWithDevice_keyPairDataType_valuePairDataType_(v71, v72, *(a1 + 64), 32, 32);
  objc_msgSend_encodeToCommandBuffer_sourceKeyBuffer_sourceKeyOffset_sourceValueBuffer_sourceValueOffset_destinationKeyBuffer_destinationKeyOffset_destinationValueBuffer_destinationValueOffset_numEntries_(v73, v74, v34, v155, 0, *a16, 0, v140, 0, *a15, 0, v160[0]);
  objc_msgSend_commit(v34, v75, v76);
  v142 = objc_msgSend_commandBuffer(v141, v77, v78);
  v81 = objc_msgSend_computeCommandEncoder(v142, v79, v80);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v82, v140, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v83, v145, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v84, v144, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v85, v153, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v86, a21, 0, 5);
  v89 = objc_msgSend_threadExecutionWidth(v147, v87, v88);
  sub_239E19F00(a1, v81, v147, a21, 0, v89);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v90, v154, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v91, v153, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v92, v151, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v93, a21, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v94, v150, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v95, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v96, a19, 0, 9);
  objc_msgSend_setBytes_length_atIndex_(v81, v97, &v159, 4, 10);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v98, *a15, 0, 14);
  sub_239E19D68(a1, v81, a19, 1, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v99, v47, 0, 13);
  v102 = objc_msgSend_threadExecutionWidth(v29, v100, v101);
  sub_239E19F00(a1, v81, v29, a21, 0, v102);
  sub_239E19E34(a1, v81, a19, 0, 1);
  v103 = 64;
  do
  {
    v104 = v49;
    v49 = v47;
    sub_239E19D68(a1, v81, a19, 1, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v81, v105, v47, 0, 12);
    objc_msgSend_setBuffer_offset_atIndex_(v81, v106, v104, 0, 13);
    v109 = objc_msgSend_threadExecutionWidth(v29, v107, v108);
    sub_239E19F00(a1, v81, v30, a19, 0, v109);
    sub_239E19E34(a1, v81, a19, 0, 1);
    v47 = v104;
    --v103;
  }

  while (v103);
  sub_239E19D68(a1, v81, a19, 1, 0);
  sub_239E19D68(a1, v81, a19, 6, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v110, v154, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v111, v153, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v112, v151, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v113, a21, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v114, v150, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v115, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v116, a19, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v117, v104, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v118, *a15, 0, 14);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v119, a18, 0, 15);
  objc_msgSend_setBuffer_offset_atIndex_(v81, v120, a17, 0, 16);
  v158[0] = 0;
  objc_msgSend_setBytes_length_atIndex_(v81, v121, v158, 1, 17);
  objc_msgSend_setComputePipelineState_(v81, v122, v146);
  v152 = vdupq_n_s64(1uLL);
  *v158 = v152;
  *&v158[16] = 1;
  v156 = objc_msgSend_threadExecutionWidth(v146, v123, v124);
  v157 = v152;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v81, v125, v158, &v156);
  sub_239E19E34(a1, v81, a19, 0, 1);
  if (*(a1 + 40) < 2u)
  {
    v128 = v49;
  }

  else
  {
    v127 = 1;
    do
    {
      v128 = v104;
      sub_239E19D68(a1, v81, a19, 1, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v81, v129, v104, 0, 12);
      objc_msgSend_setBuffer_offset_atIndex_(v81, v130, v49, 0, 13);
      if (v127 == *(a1 + 40) - 1)
      {
        v158[0] = 1;
        objc_msgSend_setBytes_length_atIndex_(v81, v131, v158, 1, 17);
      }

      v133 = objc_msgSend_threadExecutionWidth(v31, v131, v132);
      sub_239E19F00(a1, v81, v31, a19, 0, v133);
      sub_239E19E34(a1, v81, a19, 0, 1);
      ++v127;
      v104 = v49;
      v49 = v128;
    }

    while (v127 < *(a1 + 40));
  }

  objc_msgSend_updateFence_(v81, v126, a20);
  objc_msgSend_endEncoding(v81, v134, v135);
  objc_msgSend_commit(v142, v136, v137);
  objc_msgSend_waitUntilCompleted(v142, v138, v139);
}

uint64_t sub_239E1FA4C(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v11[0] = a2[2];
  *(v11 + 12) = *(a2 + 44);
  v5 = sub_239E1FAF4(a1, &v9);
  if (v5)
  {
    return v5[10];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11[0] = a2[2];
  *(v11 + 12) = *(a2 + 44);
  v12 = &v9;
  sub_239E1FC28(a1, &v9, &unk_239E26E90, &v12)[10] = v6;
  return v6;
}

void *sub_239E1FAF4(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193066;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 60);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
    if (*&v5 <= v6)
    {
      v9 = v6 % v5.i32[0];
    }
  }

  else
  {
    v9 = (v5.i32[0] - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (!memcmp(v11 + 2, __s2, 0x3CuLL))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_239E1FC28(void *a1, char *__s2, uint64_t a3, __int128 **a4)
{
  v5 = 0;
  v6 = 1193066;
  do
  {
    v6 = (1540483477 * ((1540483477 * *&__s2[v5]) ^ ((1540483477 * *&__s2[v5]) >> 24))) ^ (1540483477 * v6);
    v5 += 4;
  }

  while (v5 != 60);
  v7 = 1540483477 * (v6 ^ (v6 >> 13));
  v8 = v7 ^ (v7 >> 15);
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7 ^ (v7 >> 15);
    if (*&v9 <= v8)
    {
      v12 = v8 % v9.i32[0];
    }
  }

  else
  {
    v12 = (v9.i32[0] - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (memcmp(v14 + 2, __s2, 0x3CuLL))
  {
    goto LABEL_19;
  }

  return v14;
}

uint64_t sub_239E1FECC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FF1C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FF6C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FFBC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2000C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2005C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E200AC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E200FC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2014C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2019C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E201EC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2023C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2028C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E202DC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2032C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2037C(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E203CC(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2041C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20458(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20494(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E204D0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2050C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20548(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20598(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E205D4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20610(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2064C(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20698(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E206E4()
{
  if (__cxa_guard_acquire(byte_27DF884E8))
  {
    __cxa_atexit(MEMORY[0x277D82690], &stru_27DF884A8, &dword_239DE2000);

    __cxa_guard_release(byte_27DF884E8);
  }
}

uint64_t sub_239E2074C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2079C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E207EC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20838(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20884(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E208D4(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20920(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2096C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E209B8(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A04(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A50(uint64_t a1, uint64_t a2)
{
  result = sub_239DF192C(a1, a2);
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A9C(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20AE8(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E20B34()
{
  if (__cxa_guard_acquire(byte_27DF88718))
  {
    __cxa_atexit(MEMORY[0x277D82690], &stru_27DF886D8, &dword_239DE2000);

    __cxa_guard_release(byte_27DF88718);
  }
}

uint64_t sub_239E20B9C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20BEC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20C3C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20C94(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20CE4(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20D3C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20D8C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20DE4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20E34(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20E84(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20ED4(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20F24(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20F7C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20FCC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21024(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21074(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E210CC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2111C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2116C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E211BC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2120C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2125C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E212AC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E212FC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2134C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2139C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E213EC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2143C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2148C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E214DC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2152C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2157C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E215D4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21624(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2167C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E216CC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2171C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21774(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E217C4(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2181C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2186C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E218BC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2190C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2195C(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E219AC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E219FC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21A4C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21A9C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21AF4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21B44(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21B9C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21BF4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21C44(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18A8(a1, a2);
  if (result)
  {
    sub_239DF18FC(result, v3);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21C9C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21CEC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    sub_239DF1914(result, v3);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21D3C(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21D88(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21DD8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21E28(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21E78(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21EC8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21F18(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E21F70()
{
  if (__cxa_guard_acquire(byte_27DF88768))
  {
    __cxa_atexit(MEMORY[0x277D82690], &stru_27DF88728, &dword_239DE2000);

    __cxa_guard_release(byte_27DF88768);
  }
}

uint64_t sub_239E21FD8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22028(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22078(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E220C8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22118(void *a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    objc_msgSend_channelCount_(a1, v5, a2);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2217C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E221CC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2221C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2226C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E222C4(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    sub_239DF5F2C();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22318(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2236C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E223BC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22414(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22474(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E224C8(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    sub_239DF5F2C();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2251C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22574(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E225C8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22618(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22654(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22690(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E226CC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22708(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22744(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22780(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E227BC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E227F8(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22844(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22880(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E228BC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E228F8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22948(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22984(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E229C0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E229FC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22A38(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22A84(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22AD0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22B20(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22B70(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22BC0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22C10(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22C60(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22CB0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22D00(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22D50(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22DA0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22DF0(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22E44(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA214(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22EA0(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22EEC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22F3C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22F90(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA214(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22FEC(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23038(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23088(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    objc_msgSend_device(v2, v4, v5);
    v6 = sub_239DFA240();
    objc_msgSend_device(v6, v7, v8);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E230F0(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2313C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2318C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E231DC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2322C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23280(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E232CC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2331C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23370(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E233BC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2340C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23460(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E234B0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23500(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_device(v3, v5, v6);
    objc_msgSend_device(v2, v7, v8);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23560(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E235B0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23600(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23650(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E236A0(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E236F4(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23740(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23790(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E237E4(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA214(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23840(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2388C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E238DC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23930(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA214(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2398C(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E239D8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23A28(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    objc_msgSend_device(v2, v4, v5);
    v6 = sub_239DFA240();
    objc_msgSend_device(v6, v7, v8);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23A90(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23ADC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23B2C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23B7C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23BCC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23C20(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23C6C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23CBC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23D10(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23D5C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23DAC(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23E00(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23E4C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23E9C(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23EF0(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23F40(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23F90(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_device(v3, v5, v6);
    objc_msgSend_device(v2, v7, v8);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23FF0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24040(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24090(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E240E0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24130(uint64_t a1, uint64_t a2)
{
  result = sub_239DFA1F8(a1, a2);
  if (result)
  {
    objc_msgSend_device(v2, v4, v5);
    v6 = sub_239DFA240();
    objc_msgSend_device(v6, v7, v8);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24198(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E241E4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24234(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24284(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E242D8(uint64_t a1, uint64_t a2)
{
  result = sub_239DE7E3C(a1, a2);
  if (result)
  {
    objc_msgSend_arrayLength(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24330(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24380(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E243D0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24424(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_arrayLength(v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24478(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E244D0(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_width(v3, v5, v6);
    v7 = sub_239DFA240();
    objc_msgSend_height(v7, v8, v9);
    objc_msgSend_width(v2, v10, v11);
    objc_msgSend_height(v2, v12, v13);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24550(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E245A0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E245F0(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24648(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E246A4(uint64_t a1, uint64_t a2)
{
  result = sub_239DFB37C(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    sub_239DFB364();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24700(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24758(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E247A8(uint64_t a1, uint64_t a2)
{
  result = sub_239DFB37C(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    sub_239DFB364();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24804(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24864(uint64_t a1, uint64_t a2)
{
  result = sub_239DF18C8(a1, a2);
  if (result)
  {
    objc_msgSend_length(*v2, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E248BC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24918(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E24954(void *a1, uint64_t a2)
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure();
  }
}

void sub_239E249C0(void *a1, uint64_t a2)
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure();
  }
}

uint64_t sub_239E24A2C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24A7C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24AB8(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24B08(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24B58(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    sub_239E17B84();

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24BA4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    sub_239E17B78();

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24BF0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24C40(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24C90(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24CE4(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E24D38()
{
  if (__cxa_guard_acquire(byte_27DF88878))
  {
    __cxa_atexit(MEMORY[0x277D82690], &stru_27DF88838, &dword_239DE2000);

    __cxa_guard_release(byte_27DF88878);
  }
}

uint64_t sub_239E24DA0(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24DDC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24E2C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24E7C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24ECC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24F1C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24F6C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E24FBC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2500C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2505C(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E250AC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E250FC(uint64_t a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}