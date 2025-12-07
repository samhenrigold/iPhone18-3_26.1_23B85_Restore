__n128 re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(_OWORD *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = fabsf(v5.f32[2] + vaddv_f32(*v5.f32));
  v7 = a3[1].f32[0];
  if (v6 >= 1.0e-10)
  {
    v11 = 0;
    v12 = *a3;
    v13 = 1;
LABEL_4:
    v14 = vsubq_f32(a2[2 * v11], v12);
    v15 = vmulq_f32(v14, v14);
    if (sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) > v7)
    {
LABEL_9:
      v19 = &a2[2 * v11++ + 2];
      while (1)
      {
        v19[-1].i8[0] = 1;
        if (v11 == 8)
        {
          break;
        }

        v20 = *v19;
        v19 += 2;
        v12 = *a3;
        v21 = vsubq_f32(v20, *a3);
        v22 = vmulq_f32(v21, v21);
        ++v11;
        if (sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)) <= v7)
        {
          v13 = 0;
          if (v11 != 8)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      v23 = *a3;
      *a4 = *a3;
      v7 = a3[1].f32[0];
      v10 = v7;
    }

    else
    {
      v16 = 32 * v11 + 32;
      while (v11 != 7)
      {
        v17 = vsubq_f32(*(a2 + v16), v12);
        v18 = vmulq_f32(v17, v17);
        v16 += 32;
        ++v11;
        if (sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) > v7)
        {
          v13 = 0;
          goto LABEL_9;
        }
      }

      if (v13)
      {
        v24 = vaddq_f32(v4, a2[14]);
        v25.i64[0] = 0x3F0000003F000000;
        v25.i64[1] = 0x3F0000003F000000;
        v23 = vmulq_f32(v24, v25);
        *a4 = v23;
        v10 = vabds_f32(v23.f32[0], a2->f32[0]);
        v7 = vabds_f32(v23.f32[2], a2->f32[2]);
      }

      else
      {
LABEL_18:
        v26 = 0uLL;
        v27 = 8;
        v28 = a2;
        do
        {
          v29 = *v28;
          if (v28[1].i8[0] == 1)
          {
            v30 = vsubq_f32(v29, *a3);
            v31 = vmulq_f32(v30, v30);
            *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
            v33 = vrsqrte_f32(v32);
            v34 = vmul_f32(v33, vrsqrts_f32(v32, vmul_f32(v33, v33)));
            v29 = vaddq_f32(*a3, vmulq_n_f32(vmulq_n_f32(v30, vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).f32[0]), COERCE_FLOAT(*&a3[1])));
            *v28 = v29;
          }

          v26 = vaddq_f32(v26, v29);
          v28 += 2;
          --v27;
        }

        while (v27);
        v35.i64[0] = 0x3E0000003E000000;
        v35.i64[1] = 0x3E0000003E000000;
        v23 = vmulq_f32(v26, v35);
        *a4 = v23;
        v36 = &a2->i64[1];
        v7 = 0.0;
        v37 = 8;
        v10 = 0.0;
        do
        {
          v38 = vabds_f32(*(v36 - 2), v23.f32[0]);
          v39 = *v36;
          v36 += 4;
          v40 = vabds_f32(v39, v23.f32[2]);
          if (v38 >= v10)
          {
            v10 = v38;
          }

          if (v40 >= v7)
          {
            v7 = v40;
          }

          --v37;
        }

        while (v37);
      }
    }

    v41 = a3[1].f32[0];
    v42 = v23.f32[1] - a3->f32[1];
    v9 = v42 - v41;
    v8 = v41 + v42;
  }

  else
  {
    v8 = 10.0;
    v9 = 0.01;
    v10 = a3[1].f32[0];
  }

  v43 = v8 + (fabsf(v8) * 0.3);
  v44 = v43 - (v9 - (fabsf(v9) * 0.3));
  *&v45 = 2.0 / (v10 + v10);
  LODWORD(v46) = 0;
  *(&v46 + 1) = 2.0 / (v7 + v7);
  *&v47 = 0;
  HIDWORD(v47) = 0;
  *(&v47 + 2) = 1.0 / v44;
  *&v48 = v43 / v44;
  *&v49 = 0;
  *(&v49 + 1) = __PAIR64__(1.0, v48);
  *a1 = v45;
  a1[1] = v46;
  a1[2] = v47;
  a1[3] = v49;
  result.n128_u64[0] = v47;
  result.n128_u32[2] = DWORD2(v47);
  return result;
}

__n128 re::LightContextBuilder::snapDirectionalLightProjectionToTexel(_OWORD *a1, simd_float4x4 *a2)
{
  v13 = __invert_f4(*a2);
  v3 = 0;
  v4 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v10 = v13;
  do
  {
    v11[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*&v10.columns[v3])), v5, *v10.columns[v3].f32, 1), v7, v10.columns[v3], 2), v6, v10.columns[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  v8 = vmul_f32(vadd_f32(*&v12, *&vmlaq_f32(vmlaq_f32(vmulq_f32(v11[0], 0), 0, v11[1]), 0, v11[2])), vdup_n_s32(0x43FE8000u));
  result.n128_u64[0] = vadd_f32(*v6.i8, vmul_f32(vsub_f32(vrnda_f32(v8), v8), vdup_n_s32(0x3B00C122u)));
  result.n128_u64[1] = vextq_s8(v6, v6, 8uLL).u64[0];
  a1[3] = result;
  return result;
}

double re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(_OWORD *a1, uint64_t *a2, uint64_t a3, int a4, float32x4_t *a5, uint64_t a6)
{
  if (!a4)
  {
    if (*(a3 + 136) == 1)
    {
      v17 = *(a6 + 48);
      v37[2] = *(a6 + 32);
      v37[3] = v17;
      v38 = *(a6 + 64);
      v18 = *(a6 + 16);
      v37[0] = *a6;
      v37[1] = v18;
      v39 = *(a6 + 80);
      if (v39 == 1)
      {
        v19 = *(a6 + 112);
        v40 = *(a6 + 96);
        v41 = v19;
        v20 = *(a6 + 144);
        v42 = *(a6 + 128);
        v43 = v20;
      }

      v44 = *(a6 + 160);
      if (v44 == 1)
      {
        v21 = *(a6 + 192);
        v45 = *(a6 + 176);
        v46 = v21;
        v22 = *(a6 + 224);
        v47 = *(a6 + 208);
        v48 = v22;
      }

      re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(v34, v37, a2[1], a2[2], (a3 + 32), 0, 0, *(a3 + 137));
      *v61 = v34[0];
      *&v61[12] = *(v34 + 12);
    }

    else
    {
      v23 = *(a3 + 140) * 0.5;
      *v61 = *(a3 + 80);
      *&v61[16] = v23;
      *&v61[20] = *(a3 + 116);
    }

    goto LABEL_15;
  }

  v10 = *a2;
  v11 = *(a6 + 48);
  v49[2] = *(a6 + 32);
  v49[3] = v11;
  v50 = *(a6 + 64);
  v12 = *(a6 + 16);
  v49[0] = *a6;
  v49[1] = v12;
  v51 = *(a6 + 80);
  if (v51 == 1)
  {
    v13 = *(a6 + 112);
    v52 = *(a6 + 96);
    v53 = v13;
    v14 = *(a6 + 144);
    v54 = *(a6 + 128);
    v55 = v14;
  }

  v56 = *(a6 + 160);
  if (v56 == 1)
  {
    v15 = *(a6 + 192);
    v57 = *(a6 + 176);
    v58 = v15;
    v16 = *(a6 + 224);
    v59 = *(a6 + 208);
    v60 = v16;
  }

  re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(v34, v49, a2[1], a2[3], (a3 + 32), 1, *(v10 + 3008), 1);
  *v61 = v34[0];
  *&v61[12] = *(v34 + 12);
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  if (*(v10 + 3008) != 1)
  {
LABEL_15:
    *&v24 = 0;
    LODWORD(v25) = 0;
    *(&v25 + 1) = 2.0 / (*&v61[16] + *&v61[16]);
    *(&v24 + 1) = COERCE_UNSIGNED_INT(1.0 / (*&v61[24] - *&v61[20]));
    *&v26 = 0;
    *(&v26 + 1) = __PAIR64__(1.0, *&v61[24] / (*&v61[24] - *&v61[20]));
    v34[0] = HIDWORD(v25);
    v34[1] = v25;
    v35 = v24;
    v36 = v26;
    *a5 = *v61;
    goto LABEL_16;
  }

  re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(v34, a2[3], v61, a5);
LABEL_16:
  v27 = *(a3 + 48);
  v33.columns[0] = *(a3 + 32);
  v33.columns[1] = v27;
  v28 = *(a3 + 80);
  v33.columns[2] = *(a3 + 64);
  v33.columns[3] = v28;
  v29 = *a5;
  v29.i32[3] = v33.columns[3].i32[3];
  v33.columns[3] = v29;
  re::LightContextBuilder::snapDirectionalLightProjectionToTexel(v34, &v33);
  v30 = v34[1];
  *a1 = v34[0];
  a1[1] = v30;
  result = *&v35;
  v32 = v36;
  a1[2] = v35;
  a1[3] = v32;
  return result;
}

void re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(re::Allocator *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, int a7, _BYTE *a8, _anonymous_namespace_ *a9)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a3 + 20) != -1)
  {
    re::ShadowView::ShadowView(buf, a1);
    if (*(a2 + 8))
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = (a2 + 9);
    }

    re::DynamicString::DynamicString(&v66, v17, a1);
    re::DynamicString::operator=(buf, &v66);
    if (v66 && (v67 & 1) != 0)
    {
      (*(*v66 + 40))();
    }

    *(&v78[1] + 6) = *(a3 + 14);
    *v78[0].i8 = *a3;
    v19 = *(a2 + 32);
    v18 = *(a2 + 36);
    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v22 = *(a2 + 52);
    v23 = *(a2 + 56);
    v24 = *(a2 + 64);
    v25 = *(a2 + 68);
    v26 = *(a2 + 72);
    v27 = (v19 + v22) + v26;
    if (v27 >= 0.0)
    {
      v38 = sqrtf(v27 + 1.0);
      v39 = v38 + v38;
      v40 = vrecpe_f32(COERCE_UNSIGNED_INT(v38 + v38));
      v41 = vmul_f32(v40, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v40));
      v42 = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v41)).f32[0];
      *&v32 = (v23 - v25) * v42;
      v33 = (v24 - v20) * v42;
      v34 = (v18 - v21) * v42;
      v35 = v39 * 0.25;
    }

    else if (v19 < v22 || v19 < v26)
    {
      v43 = 1.0 - v19;
      v44 = v22 < v26;
      v45 = v22 < v26;
      v46 = sqrtf((v43 - v22) + v26);
      *&v47 = v46 + v46;
      v48 = vrecpe_f32(v47);
      v49 = vmul_f32(v48, vrecps_f32(v47, v48));
      v50 = vmul_f32(v49, vrecps_f32(v47, v49)).f32[0];
      v51 = (v20 + v24) * v50;
      v52 = v23 + v25;
      v53 = v52 * v50;
      v54 = *&v47 * 0.25;
      v55 = (v18 - v21) * v50;
      v56 = sqrtf(v22 + (v43 - v26));
      *&v57 = v56 + v56;
      v58 = vrecpe_f32(v57);
      v59 = vmul_f32(v58, vrecps_f32(v57, v58));
      v59.f32[0] = vmul_f32(v59, vrecps_f32(v57, v59)).f32[0];
      v60 = (v18 + v21) * v59.f32[0];
      v61 = *&v57 * 0.25;
      v62 = v52 * v59.f32[0];
      v35 = (v24 - v20) * v59.f32[0];
      if (v44)
      {
        *&v32 = v51;
      }

      else
      {
        *&v32 = v60;
      }

      if (v45)
      {
        v33 = v53;
      }

      else
      {
        v33 = v61;
      }

      if (v45)
      {
        v34 = v54;
      }

      else
      {
        v34 = v62;
      }

      if (v45)
      {
        v35 = v55;
      }
    }

    else
    {
      v28 = sqrtf(v19 + ((1.0 - v22) - v26));
      *&v29 = v28 + v28;
      v30 = vrecpe_f32(v29);
      v31 = vmul_f32(v30, vrecps_f32(v29, v30));
      v31.f32[0] = vmul_f32(v31, vrecps_f32(v29, v31)).f32[0];
      *&v32 = *&v29 * 0.25;
      v33 = (v18 + v21) * v31.f32[0];
      v34 = (v20 + v24) * v31.f32[0];
      v35 = (v23 - v25) * v31.f32[0];
    }

    *(&v32 + 1) = v33;
    *(&v32 + 1) = __PAIR64__(LODWORD(v35), LODWORD(v34));
    v69 = *(a2 + 80);
    v70 = v32;
    if ((v72 & 1) == 0)
    {
      v72 = 1;
    }

    v63 = a4[1];
    v73 = *a4;
    v74 = v63;
    v64 = a4[3];
    v75 = a4[2];
    v76 = v64;
    if ((v77 & 1) == 0)
    {
      re::Projection::decompose(&v71, a4);
    }

    if (*a5 == 1)
    {
      v65 = *(a5 + 24);
      *&v69 = *(a5 + 16);
      *(&v69 + 1) = v65;
    }

    *(&v78[1] + 4) = vadd_s32(*(&v78[1] + 4), 0x300000003);
    v78[0] = vadd_s32(v78[0], 0x500000005);
    v83 = a6;
    if (v79)
    {
      if ((*a8 & 1) == 0)
      {
        v79 = 0;
LABEL_41:
        if ((v81 & 1) == 0)
        {
          v81 = 1;
        }

        v82 = a7;
        re::DynamicArray<re::ShadowView>::add(a9, buf);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        return;
      }
    }

    else
    {
      if ((*a8 & 1) == 0)
      {
        goto LABEL_41;
      }

      v79 = 1;
    }

    v80 = a8[1];
    goto LABEL_41;
  }

  v36 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 8))
    {
      v37 = *(a2 + 16);
    }

    else
    {
      v37 = a2 + 9;
    }

    *buf = 136315138;
    *&buf[4] = v37;
    _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Failed to allocate shadow map for light %s: not enough free space in shadow map atlas.", buf, 0xCu);
  }
}

BOOL re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(uint64_t a1, float32x4_t *a2, float32_t a3, float a4)
{
  v5 = 0;
  v7 = a2[2];
  v6 = a2[3];
  v55 = *a2;
  v56 = a2[1];
  v54 = vmulq_f32(*a2, 0);
  v8 = vmlaq_f32(v54, 0, v56);
  v9 = vmlaq_f32(v8, 0, v7);
  __asm { FMOV            V0.4S, #-1.0 }

  v57 = v7;
  v15 = vmlaq_f32(v8, _Q0, v7);
  v16 = vmulq_f32(v15, v15);
  v7.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v7.u32[0]);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v16.f32, *v16.f32)));
  LODWORD(v17) = vmul_f32(*v16.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v16.f32, *v16.f32))).u32[0];
  v18 = a4 * 0.5;
  do
  {
    v19 = &v59[v5];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 0;
    v5 += 32;
  }

  while (v5 != 256);
  v20 = 0;
  v21 = 0;
  v22 = vaddq_f32(v6, v9);
  v23 = vmulq_n_f32(v15, v17);
  v24 = &v60;
  v25 = 1;
  v26 = 1;
  do
  {
    if ((v21 & 2) != 0)
    {
      v27 = 20;
    }

    else
    {
      v27 = 4;
    }

    v28 = (a1 + v27);
    if (v21 >= 4)
    {
      v29 = 24;
    }

    else
    {
      v29 = 8;
    }

    v6.i32[0] = *(a1 + (v20 & 0x10));
    v6.i32[1] = *v28;
    v6.i32[2] = *(a1 + v29);
    v24[-1] = v6;
    v6 = vmulq_f32(v23, vsubq_f32(v6, v22));
    v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
    if (v6.f32[0] > a3)
    {
      v25 = 0;
LABEL_13:
      v24->i8[0] = 1;
      goto LABEL_15;
    }

    v26 = 0;
    if (v6.f32[0] < 0.0)
    {
      goto LABEL_13;
    }

    v25 = 0;
    v24->i8[0] = 0;
LABEL_15:
    ++v21;
    v24 += 2;
    v20 += 16;
  }

  while (v21 != 8);
  v58 = v22;
  v30 = tanf(v18);
  v31 = 0;
  v32 = v30 * a3;
  v33 = vmlaq_f32(vmlaq_f32(v55, 0, v56), 0, v57);
  v34 = vmulq_f32(v33, v33);
  v35 = vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35));
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v37 = vmlaq_f32(vaddq_f32(v54, v56), 0, v57);
  v38 = vmulq_f32(v37, v37);
  *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
  *v38.f32 = vrsqrte_f32(v39);
  *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
  v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
  v41 = 1;
  v42 = -(v30 * a3);
  v43 = 1;
  v44 = 1;
  v45 = 1;
  do
  {
    v46 = vsubq_f32(*&v59[v31], v58);
    v47 = vmulq_f32(v36, v46);
    v48 = vmulq_f32(v46, v46);
    v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
    v50 = (v47.f32[2] + vaddv_f32(*v47.f32)) / v49;
    v51 = vmulq_f32(v40, v46);
    v52 = (v51.f32[2] + vaddv_f32(*v51.f32)) / v49;
    v45 &= v50 < v42;
    if (v50 <= v32)
    {
      v44 = 0;
    }

    else
    {
      v45 = 0;
    }

    v43 &= v50 < v42;
    if (v52 <= v32)
    {
      v41 = 0;
    }

    else
    {
      v43 = 0;
    }

    v31 += 32;
  }

  while (v31 != 256);
  return (((v44 | v45 | v41 | v43) | (v26 | v25)) & 1) == 0;
}

BOOL re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(uint64_t a1, float32x4_t *a2, float32_t a3)
{
  v3 = 0;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = vmlaq_f32(vmulq_f32(*a2, 0), 0, v4);
  do
  {
    v8 = &v44[v3];
    v8->i64[0] = 0;
    v8->i64[1] = 0;
    v8[1].i8[0] = 0;
    v3 += 2;
  }

  while (v3 != 16);
  v9 = 0;
  v10 = 0;
  v11 = v44;
  do
  {
    if ((v10 & 2) != 0)
    {
      v12 = 20;
    }

    else
    {
      v12 = 4;
    }

    v13 = (a1 + v12);
    if (v10 >= 4)
    {
      v14 = 24;
    }

    else
    {
      v14 = 8;
    }

    v4.i32[0] = *(a1 + (v9 & 0x10));
    v4.i32[1] = *v13;
    v4.i32[2] = *(a1 + v14);
    *v11 = v4;
    v11 += 2;
    ++v10;
    v9 += 16;
  }

  while (v10 != 8);
  v15 = 0;
  v16 = vaddq_f32(v6, vmlaq_f32(v7, 0, v5));
  v17 = vsubq_f32(v44[2], v44[0]);
  v18 = vmulq_f32(v17, v17);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v19);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
  v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  v21 = vsubq_f32(v44[4], v44[0]);
  v22 = vmulq_f32(v21, v21);
  *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(v23);
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
  v24 = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  v25 = vsubq_f32(v44[8], v44[0]);
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v29 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, *v29.i32);
  *v29.i32 = -a3;
  v30 = 1;
  v31 = 1;
  v32 = vdup_lane_s32(v29, 0);
  v33 = 1;
  v34 = 1;
  v35 = 1;
  v36 = 1;
  do
  {
    v37 = vsubq_f32(v44[v15], v16);
    v38 = vmulq_f32(v20, v37);
    v39 = vmulq_f32(v24, v37);
    v40 = vmulq_f32(v28, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    v41 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v39.i8), vzip2_s32(*v40.i8, *v39.i8)));
    v31 &= v38.f32[0] < *v29.i32;
    if (v38.f32[0] <= a3)
    {
      v30 = 0;
    }

    else
    {
      v31 = 0;
    }

    v42 = vcgt_f32(v32, v41);
    v36 &= v41.f32[1] > a3;
    v35 &= v42.i8[4] & (v41.f32[1] <= a3);
    v34 &= v41.f32[0] > a3;
    v33 &= v42.i8[0] & (v41.f32[0] <= a3);
    v15 += 2;
  }

  while (v15 != 16);
  return (((v30 | v31 | v36 | v34 | v35) | v33) & 1) == 0;
}

uint64_t re::LightContextBuilder::buildLightContext(uint64_t result, uint64_t a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v7 = result;
  v208 = *MEMORY[0x1E69E9840];
  v8 = a4[12];
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v5 + 7), i);
      v9 += *(result + 16);
    }
  }

  else
  {
    v9 = 0;
  }

  v187 = v5;
  v188 = v7;
  v11 = v5[33];
  v12 = 0;
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 28), v13);
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_14:
      ++v13;
      v5 = v187;
      if (v13 == v11)
      {
        goto LABEL_15;
      }
    }

    v15 = 0;
    v16 = *(result + 48);
    v17 = *(result + 56);
    v18 = *(result + 32) + 200;
    while (v16 != v15)
    {
      if (*(v17 + v15) == 1)
      {
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(a5, (v18 - 168), *v18);
        v12 += result;
      }

      ++v15;
      v18 += 224;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    *v201 = 0;
    memset(&__src[3], 0, 32);
    if (v16 >= v14 - 1)
    {
      v105 = v14 - 1;
    }

    else
    {
      v105 = v16;
    }

    memset(__src, 0, 48);
    v106 = MEMORY[0x1E69E9C10];
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v105;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v107, v201, __src, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_187;
  }

LABEL_15:
  v183 = v5[26];
  v18 = 0;
  if (v183)
  {
    v13 = 0;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 21), v13);
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_23:
      ++v13;
      v5 = v187;
      if (v13 == v183)
      {
        goto LABEL_24;
      }
    }

    v15 = 0;
    v16 = *(result + 48);
    v17 = *(result + 56);
    v19 = (*(result + 32) + 208);
    while (v16 != v15)
    {
      if (*(v17 + v15) == 1)
      {
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(a5, v19 - 11, *(v19 - 2), *v19);
        v18 += result;
      }

      ++v15;
      v19 += 60;
      if (v14 == v15)
      {
        goto LABEL_23;
      }
    }

LABEL_187:
    *v201 = 0;
    memset(&__src[3], 0, 32);
    if (v16 >= v14 - 1)
    {
      v108 = v14 - 1;
    }

    else
    {
      v108 = v16;
    }

    memset(__src, 0, 48);
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v108;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v111, v201, __src, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    *v201 = 0;
    memset(__src, 0, 80);
    v112 = MEMORY[0x1E69E9C10];
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v14;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v114, v201, __src, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_198:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v115 = MEMORY[0x1E69E9C10];
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v203 = 468;
    v204 = 2048;
    v205 = v13;
    v206 = 2048;
    v207 = v15;
    _os_log_send_and_compose_impl(v117, v194, v196, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_202;
  }

LABEL_24:
  v20 = v5[5];
  if (v20)
  {
    v17 = 0;
    for (j = 0; j != v20; ++j)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v5, j);
      v17 += *(result + 16);
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = v5[40];
  if (v22)
  {
    v15 = 0;
    for (k = 0; k != v22; ++k)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[]((v5 + 35), k);
      v15 += *(result + 16);
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = v5[19];
  if (v24)
  {
    v14 = 0;
    for (m = 0; m != v24; ++m)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 14), m);
      v14 += *(result + 64);
    }
  }

  else
  {
    v14 = 0;
  }

  v184 = *(a2 + 72);
  v176 = *(a2 + 168);
  *(v188 + 8) = v9;
  *(v188 + 16) = 0;
  v13 = a3;
  *v188 = a3;
  if (v9)
  {
    if (v9 >= 0x13B13B13B13B13CLL)
    {
LABEL_258:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 208, v9);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v159, v165);
      __break(1u);
      goto LABEL_259;
    }

    result = (*(*a3 + 32))(a3, 208 * v9, 16);
    *(v188 + 16) = result;
    if (!result)
    {
LABEL_259:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_260;
    }

    v26 = v9 - 1;
    if (v9 != 1)
    {
      do
      {
        *(result + 176) = 0;
        *(result + 144) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *result = 0uLL;
        *(result + 180) = -1;
        *(result + 192) = 0;
        *(result + 198) = 0;
        result += 208;
        --v26;
      }

      while (v26);
    }

    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 180) = -1;
    *(result + 192) = 0;
    *(result + 198) = 0;
  }

  *(v188 + 32) = v12;
  *(v188 + 40) = 0;
  *(v188 + 24) = a3;
  if (v12)
  {
    if (v12 >= 0xBA2E8BA2E8BA2FLL)
    {
LABEL_260:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 352, v12);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v160, v166);
      __break(1u);
      goto LABEL_261;
    }

    result = (*(*a3 + 32))(a3, 352 * v12, 16);
    *(v188 + 40) = result;
    if (!result)
    {
LABEL_261:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_262;
    }

    if (v12 != 1)
    {
      v27 = 0;
      do
      {
        v28 = 0;
        *(result + 272) = 0uLL;
        *(result + 288) = 0uLL;
        *(result + 300) = 0uLL;
        *(result + 240) = 0uLL;
        *(result + 256) = 0uLL;
        *(result + 208) = 0uLL;
        *(result + 224) = 0uLL;
        *(result + 176) = 0uLL;
        *(result + 192) = 0uLL;
        *(result + 144) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *result = 0uLL;
        do
        {
          v29 = result + v28;
          *(v29 + 180) = 0;
          *(v29 + 172) = 0;
          *(v29 + 188) = 0;
          *(v29 + 192) = -1;
          v28 += 24;
        }

        while (v28 != 144);
        v30 = (result + 316);
        *(result + 332) = 0;
        *(result + 324) = 0;
        *(result + 336) = -1;
        *(result + 340) = 0;
        *(result + 342) = 0;
        result += 352;
        ++v27;
        *v30 = 0;
      }

      while (v27 != v12 - 1);
    }

    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 300) = 0u;
    v31 = result + 172;
    v32 = 144;
    *result = 0u;
    do
    {
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      *(v31 + 20) = -1;
      v31 += 24;
      v32 -= 24;
    }

    while (v32);
    *(result + 332) = 0;
    *(result + 324) = 0;
    *(result + 316) = 0;
    *(result + 336) = -1;
    *(result + 340) = 0;
    *(result + 342) = 0;
  }

  *(v188 + 56) = v18;
  *(v188 + 64) = 0;
  *(v188 + 48) = a3;
  if (v18)
  {
    if (v18 >= 0x111111111111112)
    {
LABEL_262:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 240, v18);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v161, v167);
      __break(1u);
      goto LABEL_263;
    }

    result = (*(*a3 + 32))(a3, 240 * v18, 16);
    *(v188 + 64) = result;
    if (!result)
    {
LABEL_263:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_264;
    }

    v33 = (v18 - 1);
    if (v18 != 1)
    {
      do
      {
        *(result + 188) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 176) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 144) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 32) = 0uLL;
        *(result + 48) = 0uLL;
        *result = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 200) = -1;
        *(result + 220) = 0;
        *(result + 204) = 0;
        *(result + 212) = 0;
        *(result + 224) = -1;
        *(result + 228) = 0;
        *(result + 230) = 0;
        result += 240;
        --v33;
      }

      while (v33);
    }

    *(result + 188) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 200) = -1;
    *(result + 220) = 0;
    *(result + 204) = 0;
    *(result + 212) = 0;
    *(result + 224) = -1;
    *(result + 228) = 0;
    *(result + 230) = 0;
  }

  v18 = v188;
  *(v188 + 80) = v17;
  *(v188 + 88) = 0;
  *(v188 + 72) = a3;
  if (v17)
  {
    if (v17 >> 59)
    {
LABEL_264:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v17);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v162, v168);
      __break(1u);
      goto LABEL_265;
    }

    result = (*(*a3 + 32))(a3, 32 * v17, 16);
    *(v188 + 88) = result;
    if (!result)
    {
LABEL_265:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_266;
    }

    v34 = result;
    v35 = result;
    v36 = v17 - 1;
    if (v17 != 1)
    {
      v35 = result;
      do
      {
        *v35 = 0;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        v35 += 32;
        --v36;
      }

      while (v36);
    }

    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
  }

  else
  {
    v34 = 0;
  }

  *(v188 + 104) = v15;
  *(v188 + 112) = 0;
  *(v188 + 96) = a3;
  if (v15)
  {
    if (v15 >= 0x24924924924924ALL)
    {
LABEL_266:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, v15);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v163, v169);
      __break(1u);
      goto LABEL_267;
    }

    result = (*(*a3 + 32))(a3, 112 * v15, 16);
    *(v188 + 112) = result;
    if (!result)
    {
LABEL_267:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_268;
    }

    v37 = v15 - 1;
    if (v15 != 1)
    {
      do
      {
        *(result + 88) = 0;
        *(result + 96) = 0;
        *result = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 80) = 0;
        result += 112;
        --v37;
      }

      while (v37);
    }

    *(result + 88) = 0;
    *(result + 96) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
  }

  *(v188 + 128) = v14;
  *(v188 + 136) = 0;
  *(v188 + 120) = a3;
  v178 = v14;
  v173 = v34;
  if (v14)
  {
    if (v14 >= 0x155555555555556)
    {
LABEL_268:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 192, v14);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v164, v170);
      __break(1u);
LABEL_269:
      re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    result = (*(*a3 + 32))(a3, 192 * v14, 16);
    *(v188 + 136) = result;
    if (!result)
    {
      goto LABEL_269;
    }

    v39 = result;
    v40 = v14 - 1;
    if (v14 != 1)
    {
      v39 = result;
      do
      {
        *(v39 + 176) = 0;
        *(v39 + 144) = 0uLL;
        *(v39 + 160) = 0uLL;
        *(v39 + 112) = 0uLL;
        *(v39 + 128) = 0uLL;
        *(v39 + 80) = 0uLL;
        *(v39 + 96) = 0uLL;
        *(v39 + 48) = 0uLL;
        *(v39 + 64) = 0uLL;
        *(v39 + 16) = 0uLL;
        *(v39 + 32) = 0uLL;
        *v39 = 0uLL;
        *(v39 + 176) = -1;
        v39 += 192;
        --v40;
      }

      while (v40);
    }

    v177 = result;
    *(v39 + 176) = 0;
    *(v39 + 144) = 0u;
    *(v39 + 160) = 0u;
    *(v39 + 112) = 0u;
    *(v39 + 128) = 0u;
    *(v39 + 80) = 0u;
    *(v39 + 96) = 0u;
    *(v39 + 48) = 0u;
    *(v39 + 64) = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0u;
    *v39 = 0u;
    *(v39 + 176) = -1;
  }

  else
  {
    v177 = 0;
  }

  *&v41 = v176;
  *(&v41 + 1) = v184;
  *(v188 + 144) = v41;
  *(v188 + 160) = 0;
  v180 = v5[12];
  if (v180)
  {
    v13 = 0;
    v42 = 0;
    v12 = v196;
    while (1)
    {
      v185 = v42;
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v5 + 7), v42);
      if (*(result + 16))
      {
        break;
      }

      v52 = v13;
LABEL_105:
      v42 = v185 + 1;
      v13 = v52;
      v5 = v187;
      if (v185 + 1 == v180)
      {
        goto LABEL_106;
      }
    }

    v17 = result;
    v14 = 0;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v14)
      {
        goto LABEL_194;
      }

      v43 = *(v17 + 32) + 160 * v14;
      v44 = *(v17 + 56) + 24 * v14;
      __src[0] = *(v43 + 32);
      __src[1] = *(v43 + 48);
      __src[2] = *(v43 + 64);
      __src[3] = *(v43 + 80);
      memset(&__src[5], 0, 100);
      __src[4] = *(v43 + 96);
      v45 = *(v43 + 112);
      v46 = *(v43 + 128);
      v9 = *(v43 + 135);
      v16 = *(v43 + 134);
      v47 = *(v44 + 8);
      if (v47)
      {
        v48 = *(v44 + 16);
        v49 = v48 + 96 * v47;
        do
        {
          while (1)
          {
            v50 = *(v48 + 16);
            v196[0] = *v48;
            v196[1] = v50;
            v196[2] = *(v48 + 32);
            v197 = *(v48 + 48);
            v198 = *(v48 + 64);
            if (v16)
            {
              break;
            }

            v199 = 0uLL;
            v200 = 0;
            __src[5] = v196[0];
            __src[6] = v196[1];
            __src[7] = v196[2];
            __src[8] = v197;
            __src[9] = v198;
            memset(&__src[10], 0, 20);
            v48 += 96;
            if (v48 == v49)
            {
              v51 = -1;
              v18 = v188;
              goto LABEL_99;
            }
          }

          result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(v48 + 80));
          v199 = *result;
          v200 = *(result + 16);
          v51 = *(result + 20);
          __src[5] = v196[0];
          __src[6] = v196[1];
          __src[7] = v196[2];
          __src[8] = v197;
          __src[9] = v198;
          __src[10] = v199;
          LODWORD(__src[11]) = v200;
          v48 += 96;
        }

        while (v48 != v49);
        v18 = v188;
        if (v9)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v51 = -1;
        if (v16 & 1) == 0 || (v9)
        {
          goto LABEL_99;
        }
      }

      *(v18 + 160) = 1;
LABEL_99:
      v15 = *(v18 + 8);
      if (v15 <= v13)
      {
        goto LABEL_198;
      }

      v52 = v13 + 1;
      v53 = *(v18 + 16) + 208 * v13;
      *(v53 + 128) = __src[8];
      *(v53 + 144) = __src[9];
      *(v53 + 160) = __src[10];
      *(v53 + 176) = __src[11];
      *(v53 + 64) = __src[4];
      *(v53 + 80) = __src[5];
      *(v53 + 96) = __src[6];
      *(v53 + 112) = __src[7];
      *v53 = __src[0];
      *(v53 + 16) = __src[1];
      *(v53 + 32) = __src[2];
      *(v53 + 48) = __src[3];
      *(v53 + 180) = v51;
      *(v53 + 182) = 0;
      *(v53 + 192) = v45;
      *(v53 + 196) = v46;
      *(v53 + 200) = 3;
      *(v53 + 204) = v16;
      *(v53 + 205) = v9;
      ++v14;
      ++v13;
      if (v14 >= *(v17 + 16))
      {
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  v174 = v5[33];
  if (v174)
  {
    v9 = 0;
    v54 = 0;
    v13 = __src;
    v12 = 0xFFFFLL;
    while (1)
    {
      v175 = v54;
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 28), v54);
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_126:
      v54 = v175 + 1;
      v5 = v187;
      if (v175 + 1 == v174)
      {
        goto LABEL_127;
      }
    }

    v17 = result;
    v14 = 0;
    v18 = 0;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v18)
      {
        break;
      }

      if (*(*(v17 + 56) + v18) == 1)
      {
        v55 = *(v17 + 32) + 224 * v18;
        v56 = *(v55 + 200);
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(a5, (v55 + 32), v56);
        if (result)
        {
          for (n = 0; n != 144; n += 24)
          {
            v58 = __src + n;
            *(v58 + 180) = 0;
            *(v58 + 172) = 0;
            *(v58 + 47) = 0;
            *(v58 + 96) = -1;
          }

          *(&__src[19] + 12) = 0;
          *(&__src[20] + 4) = 0;
          HIDWORD(__src[20]) = 0;
          LOWORD(__src[21]) = -1;
          __src[0] = *(v55 + 32);
          __src[1] = *(v55 + 48);
          __src[2] = *(v55 + 64);
          __src[3] = *(v55 + 80);
          __src[7] = *(v55 + 176);
          __src[6] = *(v55 + 160);
          __src[5] = *(v55 + 144);
          __src[4] = *(v55 + 128);
          __src[8] = *(v55 + 96);
          *&__src[9] = *(v55 + 112);
          *(&__src[9] + 2) = v56;
          *(&__src[9] + 12) = *(v55 + 204);
          *(&__src[10] + 4) = 0x300000003;
          if (*(v55 + 215) == 1)
          {
            v15 = *(v17 + 104);
            if (v15 <= v18)
            {
              goto LABEL_242;
            }

            v181 = v9;
            v15 = 0;
            v59 = *(v17 + 112) + v14;
            v60 = &__src[10] + 12;
            do
            {
              v61 = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(v59 + v15));
              *v60 = *v61;
              *(v60 + 14) = *(v61 + 14);
              v15 += 8;
              v60 += 24;
            }

            while (v15 != 48);
            *(v188 + 160) = 1;
            v9 = v181;
          }

          v62 = *(v55 + 214);
          if (v62 == 1)
          {
            v15 = *(v17 + 80);
            if (v15 <= v18)
            {
              goto LABEL_246;
            }

            v63 = re::DataArray<re::TextureAtlasTile>::get(a2 + 104, *(*(v17 + 88) + 8 * v18));
            *(&__src[19] + 12) = *v63;
            *(&__src[20] + 10) = *(v63 + 14);
            LOBYTE(v62) = *(v55 + 214);
          }

          BYTE4(__src[21]) = 0;
          BYTE5(__src[21]) = *(v55 + 215);
          BYTE6(__src[21]) = v62;
          v16 = *(v188 + 32);
          if (v16 <= v9)
          {
            goto LABEL_222;
          }

          result = memcpy((*(v188 + 40) + 352 * v9), __src, 0x157uLL);
          v15 = *(v17 + 16);
          ++v9;
        }
      }

      ++v18;
      v14 += 48;
      if (v18 >= v15)
      {
        goto LABEL_126;
      }
    }

LABEL_202:
    *v201 = 0;
    memset(__src, 0, 80);
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v18;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v120, v201, __src, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_206:
    *v201 = 0;
    memset(__src, 0, 80);
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v9;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v123, v201, __src, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_210:
    *v201 = 0;
    memset(__src, 0, 80);
    v124 = MEMORY[0x1E69E9C10];
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    *(v196 + 14) = 468;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v13;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v16;
    _os_log_send_and_compose_impl(v126, v201, __src, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_214:
    *&v194[0] = 0;
    memset(__src, 0, 80);
    v127 = MEMORY[0x1E69E9C10];
    v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v128)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }

    v203 = 468;
    v204 = 2048;
    v205 = v13;
    v206 = 2048;
    v207 = v16;
    _os_log_send_and_compose_impl(v129, v194, __src, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_218;
  }

LABEL_127:
  v18 = v188;
  v182 = v5[26];
  if (v182)
  {
    v64 = 0;
    v65 = 0;
    v12 = __src;
    while (1)
    {
      v186 = v65;
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 21), v65);
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_146:
      v65 = v186 + 1;
      v5 = v187;
      if (v186 + 1 == v182)
      {
        goto LABEL_147;
      }
    }

    v17 = result;
    v9 = 0;
    v14 = 224;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v9)
      {
        goto LABEL_206;
      }

      if (*(*(v17 + 56) + v9) == 1)
      {
        v66 = *(v17 + 32);
        v13 = v66 + v14;
        v18 = v66 + v14 - 192;
        v67 = *(v66 + v14 - 24);
        v68 = *(v66 + v14 - 16);
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(a5, v18, v67, v68);
        if (result)
        {
          v191 = 0uLL;
          v192 = 0;
          memset(v194 + 2, 0, 20);
          __src[0] = *v18;
          __src[1] = *(v66 + v14 - 176);
          __src[2] = *(v66 + v14 - 160);
          __src[3] = *(v66 + v14 - 144);
          v69 = *(v13 - 96);
          v70 = *(v13 - 80);
          v71 = *(v13 - 48);
          __src[6] = *(v13 - 64);
          __src[7] = v71;
          __src[4] = v69;
          __src[5] = v70;
          __src[8] = *(v13 - 128);
          v72 = *(v13 - 112);
          v73 = *(v13 - 20);
          v74 = *(v13 - 12);
          if (*v13 == 1)
          {
            v13 = *(v17 + 104);
            if (v13 <= v9)
            {
              goto LABEL_250;
            }

            result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(*(v17 + 112) + 8 * v9));
            v191 = *result;
            v192 = *(result + 16);
            v18 = *(result + 20);
            *(v188 + 160) = 1;
          }

          else
          {
            v18 = 0xFFFFLL;
          }

          v15 = v66 + v14;
          if (*(v66 + v14 - 1) == 1)
          {
            v13 = *(v17 + 80);
            if (v13 <= v9)
            {
              goto LABEL_254;
            }

            result = re::DataArray<re::TextureAtlasTile>::get(a2 + 104, *(*(v17 + 88) + 8 * v9));
            *(v194 + 2) = *result;
            *(&v194[1] + 2) = *(result + 16);
            v75 = *(result + 20);
          }

          else
          {
            v75 = -1;
          }

          v13 = *(v188 + 56);
          if (v13 <= v64)
          {
            goto LABEL_226;
          }

          v76 = *(v188 + 64) + 240 * v64++;
          v77 = *(v15 - 1);
          v78 = *(v66 + v14);
          v79 = *(v66 + v14 - 2);
          *(v76 + 80) = __src[5];
          *(v76 + 96) = __src[6];
          *(v76 + 112) = __src[7];
          *(v76 + 128) = __src[8];
          *(v76 + 16) = __src[1];
          *(v76 + 32) = __src[2];
          *(v76 + 48) = __src[3];
          *(v76 + 64) = __src[4];
          *v76 = __src[0];
          *(v76 + 144) = v72;
          *(v76 + 152) = v67;
          *(v76 + 156) = v73;
          *(v76 + 160) = v68;
          *(v76 + 164) = v74;
          *(v76 + 172) = 0x300000003;
          *(v76 + 180) = v191;
          *(v76 + 196) = v192;
          *(v76 + 200) = v18;
          *(v76 + 202) = v194[0];
          *(v76 + 216) = *(v194 + 14);
          *(v76 + 224) = v75;
          *(v76 + 228) = v79;
          *(v76 + 229) = v78;
          *(v76 + 230) = v77;
          v15 = *(v17 + 16);
          v18 = v188;
        }

        else
        {
          v18 = v188;
        }
      }

      ++v9;
      v14 += 240;
      if (v9 >= v15)
      {
        goto LABEL_146;
      }
    }
  }

LABEL_147:
  v80 = v5[5];
  if (v80)
  {
    v12 = 0;
    v14 = 0;
    v15 = v173 + 16;
    while (1)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v5, v14);
      v81 = *(result + 16);
      if (v81)
      {
        break;
      }

LABEL_156:
      ++v14;
      v5 = v187;
      if (v14 == v80)
      {
        goto LABEL_157;
      }
    }

    v16 = *(v18 + 80);
    if (v12 <= v16)
    {
      v13 = *(v18 + 80);
    }

    else
    {
      v13 = v12;
    }

    v82 = 32 * v81;
    v83 = (*(result + 32) + 16);
    v84 = (v15 + 32 * v12);
    while (v13 != v12)
    {
      v85 = v83 - 4;
      v86 = *v83;
      v83 += 8;
      ++v12;
      *(v84 - 1) = *v85;
      *v84 = v86;
      v84 += 8;
      v82 -= 32;
      if (!v82)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_210;
  }

LABEL_157:
  v87 = v5[40];
  if (v87)
  {
    v12 = 0;
    v14 = 0;
    v15 = v196;
    while (1)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[]((v5 + 35), v14);
      v88 = *(result + 16);
      if (v88)
      {
        break;
      }

LABEL_166:
      ++v14;
      v5 = v187;
      if (v14 == v87)
      {
        goto LABEL_167;
      }
    }

    v89 = 0;
    v90 = *(result + 32);
    v16 = *(v18 + 104);
    if (v12 <= v16)
    {
      v13 = *(v18 + 104);
    }

    else
    {
      v13 = v12;
    }

    v91 = 144 * v88;
    v92 = 112 * v12;
    while (1)
    {
      v93 = v90 + v89;
      v196[0] = *(v90 + v89 + 32);
      v196[1] = *(v90 + v89 + 48);
      v196[2] = *(v90 + v89 + 64);
      v197 = *(v90 + v89 + 80);
      v198 = *(v90 + v89 + 96);
      if (v13 == v12)
      {
        goto LABEL_214;
      }

      ++v12;
      v94 = *(v93 + 136);
      v95 = *(v93 + 128);
      v96 = *(v93 + 112);
      v97 = *(v18 + 112) + v92;
      *(v97 + 16) = v196[1];
      *(v97 + 32) = v196[2];
      *(v97 + 48) = v197;
      *(v97 + 64) = v198;
      *v97 = v196[0];
      *(v97 + 80) = v96;
      *(v97 + 88) = v95;
      *(v97 + 96) = v94;
      v89 += 144;
      v92 += 112;
      if (v91 == v89)
      {
        goto LABEL_166;
      }
    }
  }

LABEL_167:
  v190 = v5[19];
  if (v190)
  {
    v15 = 0;
    v14 = 0;
    v17 = __src;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 14), v14);
      v98 = *(result + 16);
      if (v98)
      {
        break;
      }

LABEL_178:
      ++v14;
      v5 = v187;
      if (v14 == v190)
      {
        return result;
      }
    }

    v13 = result;
    v16 = 0;
    v18 = 0;
    v12 = 0;
    while (1)
    {
      v9 = *(v13 + 48);
      if (v9 <= v12)
      {
        break;
      }

      if (*(*(v13 + 56) + v12) == 1)
      {
        v99 = *(v13 + 32) + v16;
        __src[0] = *(v99 + 32);
        __src[1] = *(v99 + 48);
        __src[2] = *(v99 + 64);
        __src[3] = *(v99 + 80);
        v9 = *(v13 + 80);
        if (v9 <= v12)
        {
          goto LABEL_230;
        }

        v100 = (*(v13 + 88) + v18);
        __src[4] = *v100;
        __src[5] = v100[1];
        __src[6] = v100[2];
        __src[7] = v100[3];
        __src[8] = *(v99 + 96);
        v9 = *(v13 + 104);
        if (v9 <= v12)
        {
          goto LABEL_234;
        }

        v101 = *(v99 + 112);
        v102 = *(v99 + 128);
        result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(*(v13 + 112) + 8 * v12));
        v194[0] = *result;
        LODWORD(v194[1]) = *(result + 16);
        v103 = *(result + 20);
        *(v188 + 160) = 1;
        if (v178 <= v15)
        {
          goto LABEL_238;
        }

        v104 = v177 + 192 * v15++;
        *(v104 + 80) = __src[5];
        *(v104 + 96) = __src[6];
        *(v104 + 112) = __src[7];
        *(v104 + 128) = __src[8];
        *(v104 + 16) = __src[1];
        *(v104 + 32) = __src[2];
        *(v104 + 48) = __src[3];
        *(v104 + 64) = __src[4];
        *v104 = __src[0];
        *(v104 + 144) = v101;
        *(v104 + 148) = v102;
        *(v104 + 152) = 3;
        *(v104 + 156) = v194[0];
        *(v104 + 172) = v194[1];
        *(v104 + 176) = v103;
        v98 = *(v13 + 16);
      }

      ++v12;
      v18 += 64;
      v16 += 144;
      if (v12 >= v98)
      {
        goto LABEL_178;
      }
    }

LABEL_218:
    *v201 = 0;
    memset(__src, 0, 80);
    v130 = MEMORY[0x1E69E9C10];
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v196[0]) = 136315906;
    *(v196 + 4) = "operator[]";
    WORD6(v196[0]) = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    *(v196 + 14) = 476;
    WORD1(v196[1]) = 2048;
    *(&v196[1] + 4) = v12;
    WORD6(v196[1]) = 2048;
    *(&v196[1] + 14) = v9;
    _os_log_send_and_compose_impl(v132, v201, __src, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v196, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_222:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v64 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    v203 = 468;
    v204 = 2048;
    v205 = v9;
    v206 = 2048;
    v207 = v16;
    _os_log_send_and_compose_impl(v134, v194, v196, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_226:
    v193 = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    v203 = 468;
    v204 = 2048;
    v205 = v64;
    v206 = 2048;
    v207 = v13;
    _os_log_send_and_compose_impl(v137, &v193, v196, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_230:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v12;
    v206 = 2048;
    v207 = v9;
    _os_log_send_and_compose_impl(v140, v194, v196, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_234:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v12;
    v206 = 2048;
    v207 = v9;
    _os_log_send_and_compose_impl(v143, v194, v196, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_238:
    *&v191 = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v203 = 468;
    v204 = 2048;
    v205 = v15;
    v206 = 2048;
    v207 = v178;
    _os_log_send_and_compose_impl(v146, &v191, v196, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_242:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v18;
    v206 = 2048;
    v207 = v15;
    _os_log_send_and_compose_impl(v149, v194, v196, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_246:
    *&v194[0] = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v18;
    v206 = 2048;
    v207 = v15;
    _os_log_send_and_compose_impl(v152, v194, v196, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_250:
    v193 = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v9;
    v206 = 2048;
    v207 = v13;
    _os_log_send_and_compose_impl(v155, &v193, v196, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
LABEL_254:
    v193 = 0;
    v197 = 0u;
    v198 = 0u;
    memset(v196, 0, sizeof(v196));
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v201 = 136315906;
    *&v201[4] = "operator[]";
    v202 = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    v203 = 476;
    v204 = 2048;
    v205 = v9;
    v206 = 2048;
    v207 = v13;
    _os_log_send_and_compose_impl(v158, &v193, v196, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v201, 38, v171, v172);
    _os_crash_msg();
    __break(1u);
    goto LABEL_258;
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 2876))
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
    re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(v7, a1 + 2848, v3 ^ (v3 >> 31));
    if (v8 != 0x7FFFFFFF)
    {
      return *(a1 + 2864) + 352 * v8 + 8;
    }

    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 352 * v5;
  for (result = a1 + 40; *(result - 8) != a2; result += 352)
  {
    v6 -= 352;
    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::LightContexts::addPerMeshLightContext(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v16 = a2;
  v15 = a3;
  v7 = a4[10].n128_u8[0];
  v8 = *(a1 + 40);
  re::BucketArray<re::LightContext,16ul>::add(a1, a4);
  *(a1 + 288) = (*(a1 + 288) | v7) & 1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
  re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1 + 56, &v16, v9 ^ (v9 >> 31), &v17);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v10 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1 + 56, v18, v17);
    v11 = v16;
    *(v10 + 8) = 0u;
    v12 = v10 + 8;
    *(v10 + 4) = v11;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0;
    *(v10 + 52) = 0x7FFFFFFF;
    ++*(a1 + 96);
  }

  else
  {
    v12 = *(a1 + 72) + 72 * HIDWORD(v18) + 8;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 8, &v15, v13 ^ (v13 >> 31), &v17);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v12 + 8, v18, v17);
    *(result + 8) = v15;
    *(result + 16) = v8;
    ++*(v12 + 48);
  }

  return result;
}

uint64_t re::LightContextBuilder::getMainCameraView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a1, v7);
        if (*(v8 + 16))
        {
          return *(v8 + 32);
        }
      }

      while (v6 != ++v7);
    }
  }

  if (a2)
  {
    v9 = *(a2 + 40);
    if (v9)
    {
      v10 = 0;
      do
      {
        v8 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a2, v10);
        if (*(v8 + 16))
        {
          return *(v8 + 32);
        }
      }

      while (v9 != ++v10);
    }
  }

  if (*(a3 + 40))
  {
    v11 = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a3, 0);
LABEL_15:
    v8 = *v11;
    return *(v8 + 32);
  }

  if (*(a3 + 96))
  {
    v11 = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a3 + 56, 0);
    goto LABEL_15;
  }

  return 0;
}

__n128 re::DynamicArray<re::SingleCullingFrustum>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::SingleCullingFrustum>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::SingleCullingFrustum>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 240 * v5;
  *v11 = 0;
  *(v11 + 8) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, a2);
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  v14 = *(a2 + 160);
  *(v11 + 144) = *(a2 + 144);
  *(v11 + 160) = v14;
  *(v11 + 112) = v12;
  *(v11 + 128) = v13;
  result = *(a2 + 176);
  v16 = *(a2 + 192);
  v17 = *(a2 + 224);
  *(v11 + 208) = *(a2 + 208);
  *(v11 + 224) = v17;
  *(v11 + 176) = result;
  *(v11 + 192) = v16;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::LightContextBuilder::prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v404 = *MEMORY[0x1E69E9840];
  MainCameraView = re::LightContextBuilder::getMainCameraView(a5, a6, a7);
  if (!MainCameraView)
  {
    return;
  }

  v10 = MainCameraView;
  v11 = 1;
  if (!*(a1 + 16))
  {
    v12 = *(a1 + 2940);
    if (v12)
    {
      v13 = a1 + 2912;
      v14 = *(a1 + 2944);
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 2928);
        while ((*v16 & 0x80000000) == 0)
        {
          v16 += 88;
          if (v14 == ++v15)
          {
            LODWORD(v15) = *(a1 + 2944);
            break;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      v17 = a1 + 2912;
    }

    else
    {
      v13 = a1 + 96;
      v14 = *(a1 + 80);
      LODWORD(v15) = 352;
      v17 = a1 + 96 + 352 * v14;
    }

    v11 = 0;
    while (1)
    {
LABEL_13:
      if (v12)
      {
        if (v14 == v15)
        {
          goto LABEL_30;
        }

        v18 = (*(v13 + 16) + 352 * v15 + 8);
      }

      else
      {
        if (v13 == v17)
        {
          goto LABEL_30;
        }

        v18 = (v13 + 8);
      }

      if (v18[12])
      {
        break;
      }

      if (v18[19])
      {
        break;
      }

      if (v18[26])
      {
        break;
      }

      if (v12)
      {
        v20 = v15 + 1;
        if (*(v13 + 32) <= (v15 + 1))
        {
          LODWORD(v15) = v15 + 1;
        }

        else
        {
          LODWORD(v15) = *(v13 + 32);
        }

        while (v15 != v20)
        {
          v21 = v20;
          v22 = *(*(v13 + 16) + 352 * v20++);
          if (v22 < 0)
          {
            LODWORD(v15) = v21;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v13 += 352;
      }
    }

    v11 = 1;
  }

LABEL_30:
  LOWORD(v379[0]) = 0;
  v317 = 0;
  v314 = 0u;
  v315 = 1u;
  v316 = 0uLL;
  v320 = 0;
  v323 = 0;
  v318 = 0u;
  v319 = 1;
  v321 = 0;
  v322 = 0;
  v324 = 0;
  v326 = 1;
  v325 = 0u;
  v327 = 0;
  v328 = 0;
  v329 = 0;
  v330 = 0;
  v336 = 0;
  v332 = 1;
  v331 = 0u;
  v333 = 0;
  v334 = 0;
  v335 = 0;
  v342 = 0;
  v338 = 1;
  v337 = 0u;
  v339 = 0;
  v340 = 0;
  v341 = 0;
  v344 = 1;
  v343 = 0u;
  v345 = 0;
  v346 = 0;
  v347 = 0;
  v348 = 0;
  v349 = 0;
  re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(a1 + 64, v379, &v314);
  re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v343);
  if (v343)
  {
    v23 = v344;
    if ((v344 & 1) == 0)
    {
      (*(*v343 + 40))(v343, v346);
      v23 = v344;
    }

    v343 = 0uLL;
    LODWORD(v344) = (v23 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v337);
  if (v337)
  {
    v24 = v338;
    if ((v338 & 1) == 0)
    {
      (*(*v337 + 40))(v337, v340);
      v24 = v338;
    }

    v337 = 0uLL;
    LODWORD(v338) = (v24 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v331);
  if (v331)
  {
    v25 = v332;
    if ((v332 & 1) == 0)
    {
      (*(*v331 + 40))(v331, v334);
      v25 = v332;
    }

    v331 = 0uLL;
    LODWORD(v332) = (v25 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v325);
  if (v325)
  {
    v26 = v326;
    if ((v326 & 1) == 0)
    {
      (*(*v325 + 40))();
      v26 = v326;
    }

    v325 = 0uLL;
    LODWORD(v326) = (v26 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v318);
  if (v318)
  {
    v27 = v319;
    if ((v319 & 1) == 0)
    {
      (*(*v318 + 40))();
      v27 = v319;
    }

    v318 = 0uLL;
    v319 = (v27 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v314);
  if (v314 && (v315 & 1) == 0)
  {
    (*(*v314 + 40))();
  }

  v30 = 0;
  m = v379;
  v32 = v362;
  do
  {
    v33 = &v354[v30];
    v33->i64[0] = 0;
    v33->i64[1] = 0;
    v33[1].i8[0] = 0;
    v30 += 2;
  }

  while (v30 != 16);
  *&v314 = a2;
  DWORD2(v314) = 0;
  *&v315 = 0;
  DWORD2(v315) = 0;
  v350 = 0u;
  v351 = 0u;
  v352 = 0;
  v353 = 0x7FFFFFFFLL;
  v300 = a1;
  v289 = v10;
  if (v11)
  {
    v34 = *(a1 + 2940);
    if (!v34)
    {
      v34 = *(a1 + 80);
    }

    memset(v399, 0, 24);
    re::FixedArray<unsigned short>::init<>(v399, a2, v34);
    v38 = *(a1 + 2940);
    if (v38)
    {
      v39 = a1 + 2912;
      v40 = *(a1 + 2944);
      if (v40)
      {
        v41 = 0;
        v42 = *(a1 + 2928);
        do
        {
          if ((*v42 & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          v42 += 88;
          ++v41;
        }

        while (v40 != v41);
        LODWORD(v41) = *(a1 + 2944);
      }

      else
      {
        LODWORD(v41) = 0;
      }

LABEL_66:
      v43 = a1 + 2912;
    }

    else
    {
      v39 = a1 + 96;
      v40 = *(a1 + 80);
      LODWORD(v41) = 352;
      v43 = a1 + 96 + 352 * v40;
    }

    v44 = 0;
    v45 = *&v399[8];
    v46 = *&v399[16];
    if (!v38)
    {
      goto LABEL_76;
    }

    while (v40 != v41)
    {
      if (v44 == v45)
      {
        goto LABEL_411;
      }

      v47 = *(v39 + 16);
      v46[v44] = *(v47 + 352 * v41 + 4);
      v48 = v41 + 1;
      if (*(v39 + 32) <= (v41 + 1))
      {
        LODWORD(v41) = v41 + 1;
      }

      else
      {
        LODWORD(v41) = *(v39 + 32);
      }

      do
      {
        if (v41 == v48)
        {
          goto LABEL_79;
        }

        v49 = v48;
        v35 = *(v47 + 352 * v48++);
      }

      while ((v35 & 0x80000000) == 0);
      LODWORD(v41) = v49;
LABEL_79:
      while (1)
      {
        ++v44;
        if (v38)
        {
          break;
        }

LABEL_76:
        if (v39 == v43)
        {
          goto LABEL_81;
        }

        if (v44 == v45)
        {
          goto LABEL_411;
        }

        v46[v44] = *v39;
        v39 += 352;
      }
    }

LABEL_81:
    *&v379[0] = 0;
    DWORD2(v379[0]) = 0;
    *&v379[1] = 0;
    DWORD2(v379[1]) = 0;
    v50 = v379;
    v394 = 0u;
    v395 = 0u;
    v396 = 0;
    v397 = 0x7FFFFFFFLL;
    if (v45)
    {
      v51 = &v46[v45];
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      v307 = vnegq_f32(v52);
      do
      {
        if (!HIDWORD(v395))
        {
          if (!*&v379[1])
          {
            LOWORD(v58) = *v46;
LABEL_113:
            v71 = &v380 + 3 * *&v379[1];
            *v71 = v58;
            *(v71 + 2) = v363.i64[0];
            *(v71 + 1) = *(v363.i64 + 6);
            *&v72 = 0x7F0000007FLL;
            *(&v72 + 1) = 0x7F0000007FLL;
            v71[1] = v307;
            v71[2] = v72;
            v73 = *&v379[1];
            ++DWORD2(v379[1]);
            ++*&v379[1];
            if (v73 == -1)
            {
              goto LABEL_417;
            }

            goto LABEL_114;
          }

          v57 = 48 * *&v379[1];
          v58 = *v46;
          v59 = 2;
          v60 = 48 * *&v379[1];
          do
          {
            if (LOWORD(v379[v59]) == v58)
            {
              goto LABEL_114;
            }

            v59 += 3;
            v60 -= 48;
          }

          while (v60);
          if ((v379[1] & 0xFFFFFFF8) == 0)
          {
            if (*&v379[1] >= 8uLL)
            {
              re::internal::assertLog(4, v36, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
              _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
              __break(1u);
              return;
            }

            goto LABEL_113;
          }

          if (v394)
          {
            goto LABEL_99;
          }

          v61 = *&v379[0];
          if (!*&v379[0])
          {
          }

          re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(&v394, v61, 16);
          if (*&v379[1])
          {
            v57 = 48 * *&v379[1];
LABEL_99:
            v62 = (&v380 + v57);
            v63 = &v380;
            while (2)
            {
              v64 = *v63;
              v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v64) ^ ((0xBF58476D1CE4E5B9 * v64) >> 27));
              v66 = v65 ^ (v65 >> 31);
              if (v394)
              {
                v67 = v66 % DWORD2(v395);
                v68 = *(*(&v394 + 1) + 4 * v67);
                if (v68 != 0x7FFFFFFF)
                {
                  while (*(v395 + 48 * v68 + 4) != v64)
                  {
                    LODWORD(v68) = *(v395 + 48 * v68) & 0x7FFFFFFF;
                    if (v68 == 0x7FFFFFFF)
                    {
                      goto LABEL_106;
                    }
                  }

LABEL_107:
                  v63 += 3;
                  if (v63 == v62)
                  {
                    goto LABEL_108;
                  }

                  continue;
                }
              }

              else
              {
                LODWORD(v67) = 0;
              }

              break;
            }

LABEL_106:
            v35 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(&v394, v67, v66);
            *(v35 + 4) = *v63;
            v69 = v63[2];
            *(v35 + 16) = v63[1];
            *(v35 + 32) = v69;
            ++HIDWORD(v397);
            goto LABEL_107;
          }

LABEL_108:
          *&v379[1] = 0;
          ++DWORD2(v379[1]);
        }

        v53 = *v46;
        v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v53) ^ ((0xBF58476D1CE4E5B9 * v53) >> 27));
        v55 = v54 ^ (v54 >> 31);
        if (v394)
        {
          v36 = v55 % DWORD2(v395);
          v56 = *(*(&v394 + 1) + 4 * v36);
          if (v56 != 0x7FFFFFFF)
          {
            while (*(v395 + 48 * v56 + 4) != v53)
            {
              LODWORD(v56) = *(v395 + 48 * v56) & 0x7FFFFFFF;
              if (v56 == 0x7FFFFFFF)
              {
                goto LABEL_110;
              }
            }

            goto LABEL_114;
          }
        }

        else
        {
          LODWORD(v36) = 0;
        }

LABEL_110:
        v35 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(&v394, v36, v55);
        *(v35 + 4) = *v46;
        *&v70 = 0x7F0000007FLL;
        *(&v70 + 1) = 0x7F0000007FLL;
        *(v35 + 16) = v307;
        *(v35 + 32) = v70;
        ++HIDWORD(v397);
LABEL_114:
        ++v46;
      }

      while (v46 != v51);
    }

    v74 = *(a3 + 40);
    if (!v74)
    {
      v76.i64[0] = 0x7F0000007FLL;
      v76.i64[1] = 0x7F0000007FLL;
      v77 = vnegq_f32(v76);
LABEL_143:
      v94 = vcgtq_f32(v77, v76);
      v94.i32[3] = v94.i32[2];
      if ((vmaxvq_u32(v94) & 0x80000000) != 0)
      {
        v100 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v373 = 0u;
        v374 = 0u;
        v371 = 0u;
        v372 = 0u;
        v369 = 0u;
        v370 = 0u;
        v367 = 0u;
        v368 = 0u;
        v365 = 0u;
        v366 = 0u;
        v363 = 0u;
        v364 = 0u;
        do
        {
          v101 = &v363 + v100;
          v100 += 32;
          *v101 = 0;
          *(v101 + 1) = 0;
          v101[16] = 0;
        }

        while (v100 != 256);
      }

      else
      {
        for (i = 0; i != 256; i += 32)
        {
          v96 = &v363 + i;
          *v96 = 0;
          *(v96 + 1) = 0;
          v96[16] = 0;
        }

        v97 = 0;
        v98 = &v364;
        do
        {
          *v37.f32 = vbsl_s8(vceqz_s32(vand_s8(vdup_n_s32(v97), 0x200000001)), *v77.f32, *v76.f32);
          if (v97 >= 4)
          {
            v99 = v76.f32[2];
          }

          else
          {
            v99 = v77.f32[2];
          }

          v37.f32[2] = v99;
          v98[-1] = v37;
          v98->i8[0] = 0;
          v98 += 2;
          ++v97;
        }

        while (v97 != 8);
      }

      v354[12] = v375;
      v354[13] = v376;
      v354[14] = v377;
      v354[15] = v378;
      v354[8] = v371;
      v354[9] = v372;
      v354[10] = v373;
      v354[11] = v374;
      v354[4] = v367;
      v354[5] = v368;
      v354[6] = v369;
      v354[7] = v370;
      v354[0] = v363;
      v354[1] = v364;
      v354[2] = v365;
      v354[3] = v366;
      v102 = HIDWORD(v395);
      if (!HIDWORD(v395))
      {
        v105 = &v380;
        v302 = &v380 + 3 * *&v379[1];
        v310 = v302;
        goto LABEL_164;
      }

      v310 = v396;
      v50 = 0;
      if (v396)
      {
        v103 = v395;
        do
        {
          v104 = *v103;
          v103 += 12;
          if (v104 < 0)
          {
            goto LABEL_162;
          }

          v50 = (v50 + 1);
        }

        while (v396 != v50);
        v105 = &v394;
        LODWORD(v50) = v396;
      }

      else
      {
        v310 = 0;
LABEL_162:
        v105 = &v394;
      }

      v302 = &v394;
      while (1)
      {
LABEL_164:
        if (v102)
        {
          if (v310 == v50)
          {
            goto LABEL_194;
          }

          v106 = *(v105 + 2) + 48 * v50;
          v107 = (v106 + 4);
          v108 = (v106 + 16);
        }

        else
        {
          if (v105 == v302)
          {
LABEL_194:
            *&v379[1] = 0;
            ++DWORD2(v379[1]);
            m = &v394;
            re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(&v394);
            *&v379[0] = 0;
            DWORD2(v379[0]) = 0;
            v124 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(&v394);
            if (*v399 && *&v399[8])
            {
              (*(**v399 + 40))(v124);
            }

            a1 = v300;
            v10 = v289;
            goto LABEL_198;
          }

          v108 = (v105 + 1);
          v107 = v105;
        }

        v401[0].i16[0] = *v107;
        v109 = *v108;
        v110 = v108[1];
        v111 = vcgtq_f32(*v108, v110);
        v111.i32[3] = v111.i32[2];
        if ((vmaxvq_u32(v111) & 0x80000000) != 0)
        {
          v119 = 0;
          v377 = 0u;
          v378 = 0u;
          v375 = 0u;
          v376 = 0u;
          v373 = 0u;
          v374 = 0u;
          v371 = 0u;
          v372 = 0u;
          v369 = 0u;
          v370 = 0u;
          v367 = 0u;
          v368 = 0u;
          v365 = 0u;
          v366 = 0u;
          v363 = 0u;
          v364 = 0u;
          do
          {
            v120 = &v363 + v119;
            v119 += 32;
            *v120 = 0;
            *(v120 + 1) = 0;
            v120[16] = 0;
          }

          while (v119 != 256);
        }

        else
        {
          for (j = 0; j != 256; j += 32)
          {
            v113 = &v363 + j;
            *v113 = 0;
            *(v113 + 1) = 0;
            v113[16] = 0;
          }

          v114 = 0;
          v115 = &v364;
          do
          {
            if (v114)
            {
              *v111.i32 = v110.f32[0];
            }

            else
            {
              *v111.i32 = v109.f32[0];
            }

            if ((v114 & 2) != 0)
            {
              v116 = 20;
            }

            else
            {
              v116 = 4;
            }

            v117 = (v108 + v116);
            if (v114 >= 4)
            {
              v118 = 6;
            }

            else
            {
              v118 = 2;
            }

            v111.i32[1] = *v117;
            v111.i32[2] = v108->i32[v118];
            v115[-1] = v111;
            v115->i8[0] = 0;
            v115 += 2;
            ++v114;
          }

          while (v114 != 8);
        }

        re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(&v314, v401, &v363);
        if (v102)
        {
          v121 = v50 + 1;
          if (*(v105 + 8) <= (v50 + 1))
          {
            LODWORD(v50) = v50 + 1;
          }

          else
          {
            LODWORD(v50) = *(v105 + 8);
          }

          while (v50 != v121)
          {
            v122 = v121;
            v123 = *(*(v105 + 2) + 48 * v121++);
            if (v123 < 0)
            {
              LODWORD(v50) = v122;
              goto LABEL_164;
            }
          }
        }

        else
        {
          v105 += 3;
        }
      }
    }

    v75 = 0;
    v76.i64[0] = 0x7F0000007FLL;
    v76.i64[1] = 0x7F0000007FLL;
    v77 = vnegq_f32(v76);
    LODWORD(v50) = 736;
    while (1)
    {
      v304 = v77;
      v308 = v76;
      v78 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a3, v75);
      v80 = *(v78 + 16);
      if (v80)
      {
        break;
      }

      v77 = v304;
      v76 = v308;
LABEL_140:
      if (++v75 == v74)
      {
        goto LABEL_143;
      }
    }

    v81 = *(v78 + 32);
    v82 = &v81[46 * v80];
    v77 = v304;
    v76 = v308;
    while (1)
    {
      if ((v81[43].i8[1] & 1) == 0 && v81[44].i8[11] != 1)
      {
        goto LABEL_137;
      }

      v305 = v77;
      v309 = v76;
      re::MeshScene::meshSceneBoundingBox(v81, v79, &v363);
      re::AABB::transform(&v363, v81 + 8, v401);
      v77 = v305;
      v76 = v309;
      if (v81[43].i8[1] == 1)
      {
        v77.i32[3] = 0;
        v83 = v401[0];
        v84 = v401[1];
        v83.i32[3] = 0;
        v77 = vminnmq_f32(v77, v83);
        v76.i32[3] = 0;
        v84.i32[3] = 0;
        v76 = vmaxnmq_f32(v76, v84);
      }

      if (v81[44].i8[11] != 1)
      {
        goto LABEL_137;
      }

      v85 = v81[32].u16[4];
      if (HIDWORD(v395))
      {
        break;
      }

      if (*&v379[1])
      {
        v88 = 48 * *&v379[1];
        v89 = &v381;
        while (v89[-1].u16[0] != v85)
        {
          v89 += 3;
          v88 -= 48;
          if (!v88)
          {
            goto LABEL_137;
          }
        }

LABEL_136:
        v90 = *v89;
        v91 = v89[1];
        v90.i32[3] = 0;
        v92 = v401[0];
        v92.i32[3] = 0;
        *v89 = vminnmq_f32(v90, v92);
        v93 = v401[1];
        v91.i32[3] = 0;
        v93.i32[3] = 0;
        v89[1] = vmaxnmq_f32(v91, v93);
      }

LABEL_137:
      v81 += 46;
      if (v81 == v82)
      {
        goto LABEL_140;
      }
    }

    if (!v394)
    {
      goto LABEL_137;
    }

    v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v85) ^ ((0xBF58476D1CE4E5B9 * v85) >> 27));
    v87 = *(*(&v394 + 1) + 4 * ((v86 ^ (v86 >> 31)) % DWORD2(v395)));
    if (v87 == 0x7FFFFFFF)
    {
      goto LABEL_137;
    }

    while (*(v395 + 48 * v87 + 4) != v85)
    {
      LODWORD(v87) = *(v395 + 48 * v87) & 0x7FFFFFFF;
      if (v87 == 0x7FFFFFFF)
      {
        goto LABEL_137;
      }
    }

    v89 = (v395 + 48 * v87 + 16);
    goto LABEL_136;
  }

LABEL_198:
  v125 = *(a1 + 2940);
  if (v125)
  {
    v126 = a1 + 2912;
    v28 = *(a1 + 2944);
    if (v28)
    {
      v29 = 0;
      v127 = *(a1 + 2928);
      while ((*v127 & 0x80000000) == 0)
      {
        v127 += 88;
        if (v28 == ++v29)
        {
          v29 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v29 = 0;
    }

    v288 = a1 + 2912;
  }

  else
  {
    v126 = a1 + 96;
    v288 = a1 + 96 + 352 * *(a1 + 80);
  }

  v301 = (v379 | 0xC);
  v303 = (&v363 | 0xC);
  v291 = v28;
  v287 = *(a1 + 2940);
  while (1)
  {
LABEL_208:
    v292 = v29;
    if (v125)
    {
      if (v28 == v29)
      {
        goto LABEL_368;
      }

      v128 = *(v126 + 16) + 352 * v29;
      v129 = (v128 + 4);
      v298 = (v128 + 8);
    }

    else
    {
      if (v126 == v288)
      {
        goto LABEL_368;
      }

      v298 = (v126 + 8);
      v129 = v126;
    }

    v313 = *v129;
    if (*(a1 + 16))
    {
      v130 = re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::addUninitialized((v298 + 7));
      m = v130;
      *(v130 + 32) = 0;
      *(v130 + 8) = 0;
      *(v130 + 16) = 0;
      *v130 = 0;
      *(v130 + 24) = 0;
      if (*a1)
      {
        v131 = *(a1 + 16);
        *v130 = *a1;
        re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v130, v131);
        ++*(m + 6);
        re::DynamicArray<re::DirectionalLightInfo>::copy(m, a1);
      }

      *(m + 5) = 0;
      *(m + 6) = 0;
      *(m + 7) = 0;
      v132 = *(a1 + 40);
      if (v132)
      {
        re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::init<>(m + 5, v132, *(a1 + 48));
        v134 = *(a1 + 48);
        if (*(m + 6) != v134)
        {
          goto LABEL_416;
        }

        if (v134)
        {
          v135 = *(a1 + 56);
          m = *(m + 7);
          for (k = 24 * v134; k; k -= 24)
          {
            if (v135 != m)
            {
              v137 = *v135;
              if (*m)
              {
                if (v137)
                {
                  goto LABEL_226;
                }
              }

              else if (v137)
              {
                re::FixedArray<re::LightContextBuilder::ShadowTileInfo>::init<>(m, v137, *(v135 + 8));
LABEL_226:
                v138 = *(v135 + 8);
                if (*(m + 1) != v138)
                {
                  goto LABEL_415;
                }

                if (v138)
                {
                  memmove(*(m + 2), *(v135 + 16), 96 * v138 - 8);
                }
              }
            }

            v135 += 24;
            m = (m + 24);
          }
        }
      }
    }

    if (HIDWORD(v351))
    {
      v32 = v362;
      if (!v350 || (v139 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v313) ^ ((0xBF58476D1CE4E5B9 * v313) >> 27)), v140 = *(*(&v350 + 1) + 4 * ((v139 ^ (v139 >> 31)) % DWORD2(v351))), v140 == 0x7FFFFFFF))
      {
LABEL_235:
        v141 = 0;
        v392 = 0u;
        v393 = 0u;
        v390 = 0u;
        v391 = 0u;
        v388 = 0u;
        v389 = 0u;
        v386 = 0u;
        v387 = 0u;
        v384 = 0u;
        v385 = 0u;
        v382 = 0u;
        v383 = 0u;
        v380 = 0u;
        v381 = 0u;
        memset(v379, 0, sizeof(v379));
        do
        {
          v142 = &v379[v141];
          *v142 = 0;
          *(v142 + 1) = 0;
          *(v142 + 16) = 0;
          v141 += 2;
        }

        while (v141 != 16);
        v143 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(&v350, &v313, v379);
      }

      else
      {
        while (*(v351 + 272 * v140 + 4) != v313)
        {
          LODWORD(v140) = *(v351 + 272 * v140) & 0x7FFFFFFF;
          if (v140 == 0x7FFFFFFF)
          {
            goto LABEL_235;
          }
        }

        v143 = (v351 + 272 * v140 + 16);
      }

      v144 = v298;
    }

    else
    {
      v32 = v362;
      v144 = v298;
      if (v315)
      {
        v145 = 272 * v315;
        v143 = &v317;
        while (v143[-1].u16[0] != v313)
        {
          v143 += 17;
          v145 -= 272;
          if (!v145)
          {
            goto LABEL_242;
          }
        }
      }

      else
      {
LABEL_242:
        v146 = 0;
        v392 = 0u;
        v393 = 0u;
        v390 = 0u;
        v391 = 0u;
        v388 = 0u;
        v389 = 0u;
        v386 = 0u;
        v387 = 0u;
        v384 = 0u;
        v385 = 0u;
        v382 = 0u;
        v383 = 0u;
        v380 = 0u;
        v381 = 0u;
        memset(v379, 0, sizeof(v379));
        do
        {
          v147 = &v379[v146];
          *v147 = 0;
          *(v147 + 1) = 0;
          *(v147 + 16) = 0;
          v146 += 2;
        }

        while (v146 != 16);
        v143 = re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(&v314, &v313, v379);
      }
    }

    v306 = v143;
    if (v144[12] | v144[19])
    {
      break;
    }

LABEL_341:
    v228 = v144[26];
    if (v228)
    {
      for (m = 0; m != v228; m = (m + 1))
      {
        v229 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[]((v144 + 21), m);
        v231 = *(v229 + 16);
        if (v231)
        {
          v232 = *(v229 + 32) + 116;
          v233 = 240 * v231;
          do
          {
            if (*(v232 + 108) == 1)
            {
              v230.i64[0] = *(v232 - 52);
              v230.i32[2] = *(v232 - 44);
              v234 = vmulq_f32(v230, v230);
              *&v235 = v234.f32[2] + vaddv_f32(*v234.f32);
              *v234.f32 = vrsqrte_f32(v235);
              *v234.f32 = vmul_f32(*v234.f32, vrsqrts_f32(v235, vmul_f32(*v234.f32, *v234.f32)));
              v236 = vmulq_n_f32(vnegq_f32(v230), vmul_f32(*v234.f32, vrsqrts_f32(v235, vmul_f32(*v234.f32, *v234.f32))).f32[0]);
              v237.i64[0] = 0x3F0000003F000000;
              v237.i64[1] = 0x3F0000003F000000;
              v238 = vmulq_f32(vsubq_f32(vmulq_f32(vaddq_f32(*v306, v306[14]), v237), *(v232 - 36)), v236);
              v239 = v238.f32[2] + vaddv_f32(*v238.f32);
              v240 = tan(*(v232 + 92) * 0.5);
              v230.f32[0] = fabsf(v239);
              if (*v232 >= v230.f32[0])
              {
                v230.i32[0] = *v232;
              }

              v241 = 1.0 / ((((v230.f32[0] * v240) + ((((v230.f32[0] * v240) + (v230.f32[0] * v240)) / 506.0) * 3.0)) * v240) / (v230.f32[0] * v240));
              *(v232 + 32) = v241;
              *(v232 + 12) = v241;
            }

            v232 += 240;
            v233 -= 240;
          }

          while (v233);
        }

        v144 = v298;
      }
    }

    if (v125)
    {
      v242 = *(v126 + 32);
      LODWORD(v28) = v291;
      v243 = v292 + 1;
      if (v242 <= v292 + 1)
      {
        v29 = (v292 + 1);
      }

      else
      {
        v29 = v242;
      }

      while (v29 != v243)
      {
        v244 = v243;
        v245 = *(*(v126 + 16) + 352 * v243++);
        if (v245 < 0)
        {
          v29 = v244;
          goto LABEL_208;
        }
      }
    }

    else
    {
      v126 += 352;
      LODWORD(v28) = v291;
      v29 = v292;
    }
  }

  v148 = *(v10 + 112);
  v365 = *(v10 + 96);
  v366 = v148;
  v367.i16[0] = *(v10 + 128);
  v149 = *(v10 + 80);
  v363 = *(v10 + 64);
  v364 = v149;
  v368.i8[0] = *(v10 + 144);
  if (v368.u8[0] == 1)
  {
    v150 = *(v10 + 176);
    v369 = *(v10 + 160);
    v370 = v150;
    v151 = *(v10 + 208);
    v371 = *(v10 + 192);
    v372 = v151;
  }

  v373.i8[0] = *(v10 + 224);
  if (v373.u8[0] == 1)
  {
    v152 = *(v10 + 256);
    v374 = *(v10 + 240);
    v375 = v152;
    v153 = *(v10 + 288);
    v376 = *(v10 + 272);
    v377 = v153;
  }

  re::RenderCamera::computeLocalTransform(v359, (v10 + 32));
  v355 = a1;
  v356 = v359;
  v357 = v306;
  v358 = v354;
  v154 = v379;
  if ((atomic_load_explicit(&qword_1EE1C0980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0980))
  {
    re::Defaults::BOOLValue(v379, "clipLightFrustumToSceneBounds", v246);
    if (LOBYTE(v379[0]))
    {
      v247 = BYTE1(v379[0]);
    }

    else
    {
      v247 = 0;
    }

    byte_1EE1C0963 = v247;
    __cxa_guard_release(&qword_1EE1C0980);
  }

  if (byte_1EE1C0963 == 1)
  {
    v155 = vmulq_f32(*v306, *v306);
    v156 = fabsf(v155.f32[2] + vaddv_f32(*v155.f32)) < 1.0e-10;
    v157 = *&v363.i32[1];
    if (!v156)
    {
      v158 = 0;
      v159 = vmulq_f32(v360, v360);
      *&v160 = v159.f32[2] + vaddv_f32(*v159.f32);
      v157 = vrsqrte_f32(v160);
      v161 = vmul_f32(v157, vrsqrts_f32(v160, vmul_f32(v157, v157)));
      v162 = vrsqrts_f32(v160, vmul_f32(v161, v161));
      v163 = -INFINITY;
      v157.i32[0] = 2139095040;
      v164 = vmulq_n_f32(vnegq_f32(v360), vmul_f32(v161, v162).f32[0]);
      do
      {
        v165 = vmulq_f32(vsubq_f32(v306[v158], v361), v164);
        v166 = vaddv_f32(*v165.f32);
        if (v157.f32[0] > (v165.f32[2] + v166))
        {
          v157.f32[0] = v165.f32[2] + v166;
        }

        if (v163 < (v165.f32[2] + v166))
        {
          v163 = v165.f32[2] + v166;
        }

        v158 += 2;
      }

      while (v158 != 16);
      v157.f32[1] = v163;
    }

    if (vcgt_f32(*&v363.i32[1], v157).u8[0])
    {
      v167 = v363.f32[1];
    }

    else
    {
      v167 = v157.f32[0];
    }

    if (v157.f32[1] <= v363.f32[2])
    {
      v168 = v157.f32[1];
    }

    else
    {
      v168 = v363.f32[2];
    }

    if (v363.i32[0])
    {
      v363.f32[1] = v167;
    }

    else
    {
      v169 = atan2f((v364.f32[0] - v363.f32[3]) * 0.5, v363.f32[1]);
      v363.f32[1] = v167;
      re::Projection::setFovX(&v363, v169 + v169);
    }

    v363.f32[2] = v168;
    re::Projection::cullingProjectionMatrix(v379, &v363);
    if ((v368.i8[0] & 1) == 0)
    {
      v368.i8[0] = 1;
    }

    v369 = v379[0];
    v370 = v379[1];
    v371 = v380;
    v372 = v381;
    if ((v373.i8[0] & 1) == 0)
    {
      re::Projection::decompose(&v363, v379);
    }
  }

  v290 = v126;
  v293 = v144[12];
  if (v293)
  {
    v170 = 0;
    do
    {
      v294 = v170;
      v171 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v144 + 7), v170);
      if (v171[2])
      {
        v172 = v171;
        v45 = 0;
        v311 = v356;
        v296 = v358;
        do
        {
          v173 = (v172[4] + 160 * v45);
          if (v173[8].i8[6] == 1)
          {
            if (v173[8].i8[8])
            {
              v174 = v363.i64[0];
              v175 = v363.f32[2];
              v176 = *((&v363 | 0xC) + 0x10);
              v400.columns[0] = *v303;
              v400.columns[1] = v176;
              v400.columns[2] = *((&v363 | 0xC) + 0x20);
              *(&v400.columns[2].i64[1] + 6) = *((&v363 | 0xC) + 0x2E);
              v10 = v368.u8[0];
              if (v368.u8[0] == 1)
              {
                *(v401 + 15) = v369;
                *(&v401[1] + 15) = v370;
                *(&v401[2] + 15) = v371;
                *(&v401[3] + 15) = v372;
              }

              v154 = v373.u8[0];
              if (v373.u8[0] == 1)
              {
                *&v399[15] = v374;
                *&v399[31] = v375;
                *&v399[47] = v376;
                *&v399[63] = v377;
              }

              if (v363.f32[2] > v173[7].f32[3])
              {
                v175 = v173[7].f32[3];
              }

              if (byte_1EE1C0963)
              {
                v177 = v175;
              }

              else
              {
                v177 = v173[7].f32[3];
              }

              if (v173[8].i8[7] == 1)
              {
                m = v172[6];
                if (m <= v45)
                {
                  goto LABEL_387;
                }

                v32 = (v172[7] + 24 * v45);
                v178 = re::TextureAtlas::requestTile(*(a1 + 2960), 1024, 1024, 0.0);
                if (!*(v32 + 1))
                {
                  goto LABEL_395;
                }

                *(*(v32 + 2) + 80) = v178;
                if (!*(v32 + 1))
                {
                  goto LABEL_399;
                }

                m = *(v32 + 2);
                v179 = v355;
                *&v379[0] = v174;
                *(v379 + 2) = v177;
                v180 = v400.columns[1];
                *v301 = v400.columns[0];
                *((v379 | 0xC) + 0x10) = v180;
                *((v379 | 0xC) + 0x20) = v400.columns[2];
                *((v379 | 0xC) + 0x2E) = *(&v400.columns[2].i64[1] + 6);
                LOBYTE(v383) = v10;
                if (v10)
                {
                  v384 = *(v401 + 15);
                  v385 = *(&v401[1] + 15);
                  v386 = *(&v401[2] + 15);
                  v387 = *(&v401[3] + 15);
                }

                LOBYTE(v388) = v154;
                if (v154)
                {
                  v389 = *&v399[15];
                  v390 = *&v399[31];
                  v391 = *&v399[47];
                  v392 = *&v399[63];
                }

                re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(&v403, v379, v311, v296, v173 + 2, 1, *(v179 + 3008), 1);
                *v362 = v403.columns[0];
                *&v362[12] = *(v403.columns + 12);
                memset(&v403, 0, sizeof(v403));
                if (*(v179 + 3008) == 1)
                {
                  re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(&v403, v296, v362, m);
                }

                else
                {
                  LODWORD(v195) = 0;
                  *(&v195 + 1) = 2.0 / (*&v362[16] + *&v362[16]);
                  v196.i64[0] = 0;
                  v196.i32[3] = 0;
                  v196.f32[2] = 1.0 / (*&v362[24] - *&v362[20]);
                  v197.i64[0] = 0;
                  v197.i64[1] = __PAIR64__(1.0, *&v362[24] / (*&v362[24] - *&v362[20]));
                  v403.columns[0] = HIDWORD(v195);
                  v403.columns[1] = v195;
                  v403.columns[2] = v196;
                  v403.columns[3] = v197;
                  *m = *v362;
                }

                a1 = v300;
                v154 = v379;
                v402 = *v173[2].i8;
                v198 = *m;
                v198.i32[3] = v402.columns[3].i32[3];
                v402.columns[3] = v198;
                re::LightContextBuilder::snapDirectionalLightProjectionToTexel(&v403, &v402);
                v398 = v403;
                if (!*(v32 + 1))
                {
                  goto LABEL_403;
                }

                v199 = *(v32 + 2);
                v200 = v398.columns[1];
                v199[1] = v398.columns[0];
                v199[2] = v200;
                v201 = v398.columns[3];
                v199[3] = v398.columns[2];
                v199[4] = v201;
              }

              else
              {
                v186 = (*(*a2 + 32))(a2, 240, 16);
                if (!v186)
                {
                  goto LABEL_386;
                }

                v32 = v186;
                *(v186 + 80) = 0;
                *(v186 + 160) = 0;
                *v186 = v174;
                *(v186 + 8) = v177;
                *(v186 + 12) = v400.columns[0];
                *(v186 + 28) = v400.columns[1];
                *(v186 + 44) = v400.columns[2];
                *(v186 + 58) = *(&v400.columns[2].i64[1] + 6);
                if (v10)
                {
                  *(v186 + 80) = 1;
                  v188 = *(&v401[1] + 15);
                  *(v186 + 96) = *(v401 + 15);
                  *(v186 + 112) = v188;
                  v189 = *(&v401[3] + 15);
                  *(v186 + 128) = *(&v401[2] + 15);
                  *(v186 + 144) = v189;
                }

                if (v154)
                {
                  *(v186 + 160) = 1;
                  v190 = *&v399[31];
                  *(v186 + 176) = *&v399[15];
                  *(v186 + 192) = v190;
                  v191 = *&v399[63];
                  *(v186 + 208) = *&v399[47];
                  *(v186 + 224) = v191;
                }

                m = v172[6];
                if (m <= v45)
                {
                  goto LABEL_391;
                }

                m = (v172[7] + 24 * v45);
                v192 = *(m + 1);
                v154 = v379;
                if (v192)
                {
                  v10 = 0;
                  m = *(m + 2);
                  v193 = 96 * v192;
                  v194 = 1;
                  do
                  {
                    *(m + 10) = re::TextureAtlas::requestTile(*(v300 + 2960), 1024, 1024, 0.0);
                    if ((v194 & 1) == 0)
                    {
                      goto LABEL_407;
                    }

                    re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(v379, &v355, v173, v173[8].u8[7], m, &v32[240 * v10]);
                    v194 = 0;
                    m[1] = v379[0];
                    m[2] = v379[1];
                    m[3] = v380;
                    m[4] = v381;
                    m += 6;
                    v10 = 1;
                    v193 -= 96;
                  }

                  while (v193);
                }

                v171 = (*(*a2 + 40))(a2, v32);
                a1 = v300;
              }

              v32 = v362;
            }

            else
            {
              v181 = v172[6];
              if (v181 <= v45)
              {
                *v399 = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v251 = MEMORY[0x1E69E9C10];
                v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v401[0].i32[0] = 136315906;
                *(v401[0].i64 + 4) = "operator[]";
                v401[0].i16[6] = 1024;
                if (v252)
                {
                  v253 = 3;
                }

                else
                {
                  v253 = 2;
                }

                *(&v401[0].i32[3] + 2) = 468;
                v401[1].i16[1] = 2048;
                *(v401[1].i64 + 4) = v45;
                v401[1].i16[6] = 2048;
                *(&v401[1].i64[1] + 6) = v181;
                _os_log_send_and_compose_impl(v253, v399, v379, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v401, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_374:
                *v399 = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v254 = MEMORY[0x1E69E9C10];
                v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v401[0].i32[0] = 136315906;
                *(v401[0].i64 + 4) = "operator[]";
                v401[0].i16[6] = 1024;
                if (v255)
                {
                  v256 = 3;
                }

                else
                {
                  v256 = 2;
                }

                *(&v401[0].i32[3] + 2) = 468;
                v401[1].i16[1] = 2048;
                *(v401[1].i64 + 4) = 0;
                v401[1].i16[6] = 2048;
                *(&v401[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v256, v399, v379, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v401, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_378:
                *v399 = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v257 = MEMORY[0x1E69E9C10];
                v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v401[0].i32[0] = 136315906;
                *(v401[0].i64 + 4) = "operator[]";
                v401[0].i16[6] = 1024;
                if (v258)
                {
                  v259 = 3;
                }

                else
                {
                  v259 = 2;
                }

                *(&v401[0].i32[3] + 2) = 468;
                v401[1].i16[1] = 2048;
                *(v401[1].i64 + 4) = 0;
                v401[1].i16[6] = 2048;
                *(&v401[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v259, v399, v379, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v401, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_382:
                v403.columns[0].i64[0] = 0;
                memset(v401, 0, sizeof(v401));
                m = MEMORY[0x1E69E9C10];
                v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v400.columns[0].i32[0] = 136315906;
                *(v400.columns[0].i64 + 4) = "operator[]";
                v400.columns[0].i16[6] = 1024;
                if (v260)
                {
                  v261 = 3;
                }

                else
                {
                  v261 = 2;
                }

                *(&v400.columns[0].i32[3] + 2) = 468;
                v400.columns[1].i16[1] = 2048;
                *(v400.columns[1].i64 + 4) = 0;
                v400.columns[1].i16[6] = 2048;
                *(&v400.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v261, &v403, v401, 80, &dword_1E1C61000, m, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v400, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_386:
                re::internal::assertLog(4, v187, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash("assertion failure: (m_data) Out of memory.");
                __break(1u);
LABEL_387:
                v402.columns[0].i64[0] = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v262 = MEMORY[0x1E69E9C10];
                v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v263)
                {
                  v264 = 3;
                }

                else
                {
                  v264 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = v45;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = m;
                _os_log_send_and_compose_impl(v264, &v402, v379, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_391:
                v402.columns[0].i64[0] = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v265 = MEMORY[0x1E69E9C10];
                v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v266)
                {
                  v267 = 3;
                }

                else
                {
                  v267 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = v45;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = m;
                _os_log_send_and_compose_impl(v267, &v402, v379, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_395:
                v402.columns[0].i64[0] = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v268 = MEMORY[0x1E69E9C10];
                v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v269)
                {
                  v270 = 3;
                }

                else
                {
                  v270 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = 0;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v270, &v402, v379, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_399:
                v402.columns[0].i64[0] = 0;
                v381 = 0u;
                v382 = 0u;
                v380 = 0u;
                memset(v379, 0, sizeof(v379));
                v271 = MEMORY[0x1E69E9C10];
                v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v272)
                {
                  v273 = 3;
                }

                else
                {
                  v273 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = 0;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v273, &v402, v379, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_403:
                v402.columns[0].i64[0] = 0;
                v154[3] = 0u;
                v154[4] = 0u;
                v154[1] = 0u;
                v154[2] = 0u;
                *v154 = 0u;
                v274 = MEMORY[0x1E69E9C10];
                v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v275)
                {
                  v276 = 3;
                }

                else
                {
                  v276 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = 0;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl(v276, &v402, v379, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_407:
                v402.columns[0].i64[0] = 0;
                v154[3] = 0u;
                v154[4] = 0u;
                v154[1] = 0u;
                v154[2] = 0u;
                *v154 = 0u;
                v277 = MEMORY[0x1E69E9C10];
                v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v403.columns[0].i32[0] = 136315906;
                *(v403.columns[0].i64 + 4) = "operator[]";
                v403.columns[0].i16[6] = 1024;
                if (v278)
                {
                  v279 = 3;
                }

                else
                {
                  v279 = 2;
                }

                *(&v403.columns[0].i32[3] + 2) = 468;
                v403.columns[1].i16[1] = 2048;
                *(v403.columns[1].i64 + 4) = v10;
                v403.columns[1].i16[6] = 2048;
                *(&v403.columns[1].i64[1] + 6) = 1;
                _os_log_send_and_compose_impl(v279, &v402, v379, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v403, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_411:
                v401[0].i64[0] = 0;
                *(v32 + 21) = 0u;
                *(v32 + 22) = 0u;
                *(v32 + 19) = 0u;
                *(v32 + 20) = 0u;
                *(v32 + 18) = 0u;
                v280 = MEMORY[0x1E69E9C10];
                v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *(v32 + 8) = 136315906;
                *(v32 + 36) = "operator[]";
                v363.i16[6] = 1024;
                if (v281)
                {
                  v282 = 3;
                }

                else
                {
                  v282 = 2;
                }

                *(v32 + 46) = 468;
                v364.i16[1] = 2048;
                *(v32 + 52) = v45;
                v364.i16[6] = 2048;
                *(v32 + 62) = v45;
                _os_log_send_and_compose_impl(v282, v401, v379, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v363, 38, v285, v286);
                _os_crash_msg();
                __break(1u);
LABEL_415:
                re::internal::assertLog(4, v137, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
                __break(1u);
LABEL_416:
                re::internal::assertLog(4, v133, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
                __break(1u);
LABEL_417:
                re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v73, 0);
                _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v283, v284);
                __break(1u);
              }

              m = (v172[7] + 24 * v45);
              v182 = re::TextureAtlas::requestTile(*(a1 + 2960), 1024, 1024, 0.0);
              if (!*(m + 1))
              {
                goto LABEL_374;
              }

              *(*(m + 2) + 80) = v182;
              if (!*(m + 1))
              {
                goto LABEL_378;
              }

              v183 = v173[8].u8[7];
              v184 = *(m + 2);
              LODWORD(v379[0]) = 0;
              *(v379 + 4) = xmmword_1E30806D0;
              *(&v379[1] + 4) = 0xBDCCCCCD3DCCCCCDLL;
              BYTE12(v379[1]) = 0;
              v380 = xmmword_1E30476A0;
              v381.i32[0] = 1;
              v381.i64[1] = 0;
              LOWORD(v382) = 0;
              LOBYTE(v383) = 0;
              LOBYTE(v388) = 0;
              re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(v399, &v355, v173, v183, v184, v379);
              if (!*(m + 1))
              {
                goto LABEL_382;
              }

              v185 = *(m + 2);
              v185[1] = *v399;
              v185[2] = *&v399[16];
              v185[3] = *&v399[32];
              v185[4] = *&v399[48];
            }
          }

          ++v45;
        }

        while (v45 < v172[2]);
      }

      v170 = v294 + 1;
      v144 = v298;
    }

    while (v294 + 1 != v293);
  }

  v295 = v144[19];
  if (!v295)
  {
LABEL_340:
    v10 = v289;
    v126 = v290;
    a1 = v300;
    v125 = v287;
    goto LABEL_341;
  }

  v202 = 0;
  v203 = v356;
  v204 = v357;
  while (1)
  {
    v297 = v202;
    v205 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[]((v144 + 14), v202);
    m = *(v205 + 2);
    if (*(v205 + 2))
    {
      break;
    }

LABEL_339:
    v202 = v297 + 1;
    v144 = v298;
    if (v297 + 1 == v295)
    {
      goto LABEL_340;
    }
  }

  v206 = 0;
  m = 0;
  v207 = 140;
  while (1)
  {
    v208 = v368.u8[0];
    if (v368.u8[0] == 1)
    {
      *(v401 + 15) = v369;
      *(&v401[1] + 15) = v370;
      *(&v401[2] + 15) = v371;
      *(&v401[3] + 15) = v372;
    }

    v209 = v373.u8[0];
    if (v373.u8[0] == 1)
    {
      *&v399[15] = v374;
      *&v399[31] = v375;
      *&v399[47] = v376;
      *&v399[63] = v377;
    }

    v210 = *(v205 + 4);
    v211 = v210 + v207;
    if (*(v210 + v207 - 6) == 1)
    {
      v212 = *(v211 - 16);
      *&v379[0] = v363.i64[0];
      DWORD2(v379[0]) = v212;
      v213 = *((&v363 | 0xC) + 0x10);
      *v301 = *v303;
      *((v379 | 0xC) + 0x10) = v213;
      *((v379 | 0xC) + 0x20) = *((&v363 | 0xC) + 0x20);
      *((v379 | 0xC) + 0x2E) = *((&v363 | 0xC) + 0x2E);
      LOBYTE(v383) = v208;
      if (v208)
      {
        v384 = *(v401 + 15);
        v385 = *(&v401[1] + 15);
        v386 = *(&v401[2] + 15);
        v387 = *(&v401[3] + 15);
      }

      LOBYTE(v388) = v209;
      if (v209)
      {
        v389 = *&v399[15];
        v390 = *&v399[31];
        v391 = *&v399[47];
        v392 = *&v399[63];
      }

      re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(&v400, v379, v203, v204, (v210 + v207 - 108), 0, 0, *(v210 + v207));
      v214 = v400.columns[0];
      v215 = v400.columns[1].f32[1];
      v216 = v400.columns[1].f32[0];
      v217 = v400.columns[1].f32[2];
    }

    else
    {
      v214 = *(v211 - 60);
      v216 = *(v211 - 4) * 0.5;
      v215 = *(v211 - 24);
      v217 = *(v211 - 20);
    }

    v218 = v217 - v215;
    *&v219 = 2.0 / (v216 + v216);
    LODWORD(v220) = 0;
    *(&v220 + 1) = *&v219;
    v221.i64[0] = 0;
    v221.i32[3] = 0;
    v221.f32[2] = 1.0 / v218;
    *&v222 = v217 / v218;
    v223.i64[0] = 0;
    v223.i64[1] = __PAIR64__(1.0, v222);
    v400.columns[0] = v219;
    v400.columns[1] = v220;
    v400.columns[2] = v221;
    v400.columns[3] = v223;
    v224 = v210 + v207;
    v403 = *(v224 - 108);
    v312 = v214;
    v225 = v214;
    v225.i32[3] = v403.columns[3].i32[3];
    v403.columns[3] = v225;
    re::LightContextBuilder::snapDirectionalLightProjectionToTexel(&v400, &v403);
    v402 = v400;
    v226 = *(v205 + 10);
    if (v226 <= m)
    {
      break;
    }

    *(*(v205 + 11) + v206) = v402;
    v227 = v312;
    v227.i32[3] = *(v224 - 48);
    *(v224 - 60) = v227;
    m = (m + 1);
    v206 += 64;
    v207 += 144;
    if (m >= *(v205 + 2))
    {
      goto LABEL_339;
    }
  }

  v403.columns[0].i64[0] = 0;
  v381 = 0u;
  v382 = 0u;
  v380 = 0u;
  memset(v379, 0, sizeof(v379));
  v248 = MEMORY[0x1E69E9C10];
  v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v400.columns[0].i32[0] = 136315906;
  *(v400.columns[0].i64 + 4) = "operator[]";
  v400.columns[0].i16[6] = 1024;
  if (v249)
  {
    v250 = 3;
  }

  else
  {
    v250 = 2;
  }

  *(&v400.columns[0].i32[3] + 2) = 468;
  v400.columns[1].i16[1] = 2048;
  *(v400.columns[1].i64 + 4) = m;
  v400.columns[1].i16[6] = 2048;
  *(&v400.columns[1].i64[1] + 6) = v226;
  _os_log_send_and_compose_impl(v250, &v403, v379, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v400, 38, v285, v286);
  _os_crash_msg();
  __break(1u);
LABEL_368:
  *&v315 = 0;
  ++DWORD2(v315);
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(&v350);
  *&v314 = 0;
  DWORD2(v314) = 0;
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(&v350);
}

uint64_t re::LightContextBuilder::build@<X0>(unint64_t a1@<X0>, re::Allocator *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, float32x4_t *a8@<X7>, uint64_t a9@<X8>)
{
  v588 = *MEMORY[0x1E69E9840];
  if (!re::LightContextBuilder::getMainCameraView(a5, a6, a7))
  {

    return re::LightContextBuilder::Result::Result(a9, a2);
  }

  v472 = a8;
  v473 = a9;
  v501 = a2;
  v474 = a4;
  if (!re::s_debugSettingsManager)
  {
    v523 = 0;
    v521 = 0;
    *&v522 = 0;
    DWORD2(v522) = 0;
    v520 = a2;
    re::DynamicArray<re::SingleCullingFrustum>::setCapacity(&v520, 0);
    ++DWORD2(v522);
    if (!a5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v20 = *(a5 + 40);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a5, i);
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = 1552 * v28;
          v30 = (*(v22 + 32) + 64);
          do
          {
            re::computeCullingPlanes(v30 - 2, v30, 1, &buf, v23, v24, v25, v26, v27);
            re::computeFrustumCorners(v30 - 2, v30, 1, &v570, v31, v32, v33, v34);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            v30 = (v30 + 1552);
            v29 -= 1552;
          }

          while (v29);
        }
      }
    }

    goto LABEL_19;
  }

  v533[0] = 0;
  buf.columns[0].i64[0] = 0xF53EA7863F1002DELL;
  buf.columns[0].i64[1] = "overrides:disablelightfrustumculling";
  v16 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &buf, v533);
  if (buf.columns[0].i8[0])
  {
    if (buf.columns[0].i8[0])
    {
    }
  }

  v17 = v533[0];
  v523 = 0;
  v521 = 0;
  *&v522 = 0;
  DWORD2(v522) = 0;
  v520 = a2;
  re::DynamicArray<re::SingleCullingFrustum>::setCapacity(&v520, 0);
  ++DWORD2(v522);
  if (v17)
  {
    goto LABEL_40;
  }

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (a6)
  {
    v35 = *(a6 + 40);
    if (v35)
    {
      for (j = 0; j != v35; ++j)
      {
        v37 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a6, j);
        v43 = *(v37 + 16);
        if (v43)
        {
          v44 = 3120 * v43;
          v45 = (*(v37 + 32) + 1616);
          do
          {
            re::computeCullingPlanes(v45 - 99, (v45 - 1552), 1, &buf, v38, v39, v40, v41, v42);
            re::computeFrustumCorners(v45 - 99, v45 - 1552, 1, &v570, v46, v47, v48, v49);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            re::computeCullingPlanes(v45 - 2, v45, 1, &buf, v50, v51, v52, v53, v54);
            re::computeFrustumCorners(v45 - 2, v45, 1, &v570, v55, v56, v57, v58);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            v45 = (v45 + 3120);
            v44 -= 3120;
          }

          while (v44);
        }
      }
    }
  }

  v59 = *(a7 + 40);
  if (v59)
  {
    for (k = 0; k != v59; ++k)
    {
      v61 = *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a7, k);
      if (v61)
      {
        v67 = *(v61 + 16);
        if (v67)
        {
          v68 = 1552 * v67;
          v69 = (*(v61 + 32) + 64);
          do
          {
            re::computeCullingPlanes(v69 - 2, v69, 1, &buf, v62, v63, v64, v65, v66);
            re::computeFrustumCorners(v69 - 2, v69, 1, &v570, v70, v71, v72, v73);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            v69 = (v69 + 1552);
            v68 -= 1552;
          }

          while (v68);
        }
      }
    }
  }

  a8 = *(a7 + 96);
  if (a8)
  {
    v74 = 0;
    do
    {
      v75 = *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a7 + 56, v74);
      if (v75)
      {
        v81 = *(v75 + 16);
        if (v81)
        {
          v82 = 3120 * v81;
          v83 = (*(v75 + 32) + 1616);
          do
          {
            re::computeCullingPlanes(v83 - 99, (v83 - 1552), 1, &buf, v76, v77, v78, v79, v80);
            re::computeFrustumCorners(v83 - 99, v83 - 1552, 1, &v570, v84, v85, v86, v87);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            re::computeCullingPlanes(v83 - 2, v83, 1, &buf, v88, v89, v90, v91, v92);
            re::computeFrustumCorners(v83 - 2, v83, 1, &v570, v93, v94, v95, v96);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v520, &buf);
            v83 = (v83 + 3120);
            v82 -= 3120;
          }

          while (v82);
        }
      }

      ++v74;
    }

    while (v74 != a8);
  }

LABEL_40:
  v507 = v523;
  v97 = v522;
  v98 = a1;
  v99 = *(a1 + 2940);
  if (v99)
  {
    v100 = a1 + 2912;
    v101 = *(a1 + 2944);
    if (v101)
    {
      v18 = 0;
      v102 = *(a1 + 2928);
      v481 = *(a1 + 2944);
      while ((*v102 & 0x80000000) == 0)
      {
        v102 += 88;
        if (v101 == ++v18)
        {
          v18 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v18 = 0;
      v481 = 0;
    }

    v476 = a1 + 2912;
  }

  else
  {
    v100 = a1 + 96;
    v476 = a1 + 96 + 352 * *(a1 + 80);
    v481 = v476;
  }

  v103 = a1 + 2992;
  v503 = (a1 + 3000);
  v505 = 240 * v522 - 240;
  v104 = v533;
  v484 = *(a1 + 2940);
  while (1)
  {
LABEL_50:
    v489 = v18;
    v492 = v100;
    if (v99)
    {
      if (v481 == v18)
      {
        goto LABEL_111;
      }

      a8 = (*(v100 + 16) + 352 * v18 + 8);
    }

    else
    {
      if (v100 == v476)
      {
        goto LABEL_111;
      }

      a8 = (v100 + 8);
    }

    v105 = a8[9].i64[1];
    if (v105)
    {
      for (m = 0; m != v105; ++m)
      {
        v107 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](&a8[7], m);
        *(v107 + 64) = *(v107 + 16);
        v108 = *(v107 + 48);
        if (v108 >= 1)
        {
          memset(*(v107 + 56), 1, v108);
        }
      }
    }

    v496 = a8;
    v495 = a8[16].i64[1];
    if (v495)
    {
      break;
    }

LABEL_76:
    v103 = a1 + 2992;
    v513 = a8[13].i64[0];
    if (v513)
    {
      v123 = 0;
      while (1)
      {
        v124 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](&a8[10].i64[1], v123);
        *(v124 + 64) = 0;
        a8 = (v124 + 64);
        if (*(v124 + 16))
        {
          break;
        }

LABEL_93:
        ++v123;
        a8 = v496;
        if (v123 == v513)
        {
          goto LABEL_94;
        }
      }

      v125 = v124;
      v113 = 0;
      while (2)
      {
        v126 = v125[4] + 240 * v113;
        v590 = __invert_f4(*(v126 + 32));
        v127 = 0;
        v128 = *(v126 + 128);
        v129 = *(v126 + 144);
        v130 = *(v126 + 160);
        v131 = *(v126 + 176);
        *v533 = v590;
        do
        {
          buf.columns[v127 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, COERCE_FLOAT(*&v533[v127])), v129, *&v533[v127], 1), v130, *&v533[v127], 2), v131, *&v533[v127], 3);
          v127 += 16;
        }

        while (v127 != 64);
        *v557 = buf;
        v591 = __invert_f4(buf);
        v524 = v591.columns[0];
        v525 = v591.columns[1];
        v526 = v591.columns[2];
        v527 = v591.columns[3];
        re::buildCullingFrustum(v557, &v524, &buf);
        if (v97)
        {
          v132 = v505;
          v133 = v507;
          do
          {
            v134 = re::approxFrustumIntersectFrustum(v133, &buf);
            if (v134)
            {
              break;
            }

            v133 += 15;
            v135 = v132;
            v132 -= 240;
          }

          while (v135);
          v98 = v125[6];
          if (v98 <= v113)
          {
            goto LABEL_107;
          }

          *(v125[7] + v113) = v134;
          v136 = a8;
          if (v134)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v98 = v125[6];
          if (v98 <= v113)
          {
            goto LABEL_107;
          }

          *(v125[7] + v113) = 0;
        }

        v136 = (a1 + 2992);
LABEL_92:
        ++*v136;
        if (++v113 >= v125[2])
        {
          goto LABEL_93;
        }

        continue;
      }
    }

LABEL_94:
    v99 = v484;
    if (v484)
    {
      v100 = v492;
      v137 = *(v492 + 32);
      v138 = v489 + 1;
      if (v137 <= v489 + 1)
      {
        v18 = (v489 + 1);
      }

      else
      {
        v18 = v137;
      }

      v98 = a1;
      while (v18 != v138)
      {
        v139 = v138;
        v140 = *(*(v492 + 16) + 352 * v138++);
        if (v140 < 0)
        {
          v18 = v139;
          goto LABEL_50;
        }
      }
    }

    else
    {
      v18 = v489;
      v100 = v492 + 352;
      v98 = a1;
    }
  }

  v109 = 0;
  while (1)
  {
    v499 = v109;
    v110 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](&a8[14], v109);
    v110[8] = 0;
    v113 = (v110 + 8);
    if (v110[2])
    {
      break;
    }

LABEL_75:
    a8 = v496;
    v109 = v499 + 1;
    if (v499 + 1 == v495)
    {
      goto LABEL_76;
    }
  }

  v114 = v110;
  a8 = 0;
  v103 = v110[4];
  v98 = v110[7];
  while (!v97)
  {
    v121 = v114[6];
    if (v121 <= a8)
    {
      goto LABEL_103;
    }

    a8->i8[v98] = 0;
LABEL_73:
    v122 = (a1 + 3000);
LABEL_74:
    ++*v122;
    a8 = (a8 + 1);
    if (a8 >= v114[2])
    {
      goto LABEL_75;
    }
  }

  v115 = v103 + 224 * a8;
  v116 = *(v115 + 80);
  v116.i32[3] = *(v115 + 200);
  v512 = v116;
  v117 = v505;
  v118 = v507;
  do
  {
    buf.columns[0] = v512;
    isBoundingSphereIntersectingFrustumPlanes = re::isBoundingSphereIntersectingFrustumPlanes(&buf, v118, *v512.i64, v111, v112);
    if (isBoundingSphereIntersectingFrustumPlanes)
    {
      break;
    }

    v118 += 30;
    v120 = v117;
    v117 -= 240;
  }

  while (v120);
  v121 = v114[6];
  if (v121 > a8)
  {
    a8->i8[v98] = isBoundingSphereIntersectingFrustumPlanes;
    v122 = v113;
    if (isBoundingSphereIntersectingFrustumPlanes)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_103:
  *v557 = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v141 = MEMORY[0x1E69E9C10];
  v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v142)
  {
    v143 = 3;
  }

  else
  {
    v143 = 2;
  }

  *&v533[14] = 468;
  *&v533[18] = 2048;
  *&v533[20] = a8;
  *&v533[28] = 2048;
  *&v533[30] = v121;
  _os_log_send_and_compose_impl(v143, v557, &buf, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_107:
  v529[0] = 0;
  memset(v533, 0, 80);
  v144 = MEMORY[0x1E69E9C10];
  v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v552 = 136315906;
  *&v552[4] = "operator[]";
  *&v552[12] = 1024;
  if (v145)
  {
    v146 = 3;
  }

  else
  {
    v146 = 2;
  }

  *&v552[14] = 468;
  v553 = 2048;
  v554 = v113;
  v555 = 2048;
  v556 = v98;
  _os_log_send_and_compose_impl(v146, v529, v533, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v552, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_111:
  v147 = v520;
  if (v520 && v523)
  {
    if (v522)
    {
      v148 = &v523[15 * v522];
      v149 = v523;
      do
      {
        v149->i64[0] = 0;
        ++v149->i32[2];
        v149 += 15;
      }

      while (v149 != v148);
    }

    v147 = (*(*v147 + 40))(v147);
  }

  *(v98 + 2976) = *(v98 + 2992) + *(v98 + 2984) + *(v98 + 3000);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v147);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v151 = *(isStatisticCollectionEnabled + 152);
    if (v151)
    {
      v152 = *(v98 + 2984);
      v153 = v151[840].u64[0];
      if (v153 >= v152)
      {
        v153 = *(v98 + 2984);
      }

      v151[840].i64[0] = v153;
      v154 = v151[840].u64[1];
      if (v154 <= v152)
      {
        v154 = v152;
      }

      v151[840].i64[1] = v154;
      v155 = vdupq_n_s64(1uLL);
      v155.i64[0] = v152;
      v151[841] = vaddq_s64(v151[841], v155);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v156 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v156)
  {
    v156 = re::profilerThreadContext(v156);
    v157 = *(v156 + 152);
    if (v157)
    {
      v158 = *v103;
      v159 = v157[824].u64[0];
      if (v159 >= *v103)
      {
        v159 = *v103;
      }

      v157[824].i64[0] = v159;
      v160 = v157[824].u64[1];
      if (v160 <= v158)
      {
        v160 = v158;
      }

      v157[824].i64[1] = v160;
      v161 = vdupq_n_s64(1uLL);
      v161.i64[0] = v158;
      v157[825] = vaddq_s64(v157[825], v161);
      *(v156 + 184) = 0;
    }
  }

  v162 = re::ProfilerConfig::isStatisticCollectionEnabled(v156);
  if (v162)
  {
    v162 = re::profilerThreadContext(v162);
    v163 = *(v162 + 152);
    if (v163)
    {
      v164 = *v503;
      v165 = v163[808].u64[0];
      if (v165 >= *v503)
      {
        v165 = *v503;
      }

      v163[808].i64[0] = v165;
      v166 = v163[808].u64[1];
      if (v166 <= v164)
      {
        v166 = v164;
      }

      v163[808].i64[1] = v166;
      v167 = vdupq_n_s64(1uLL);
      v167.i64[0] = v164;
      v163[809] = vaddq_s64(v163[809], v167);
      *(v162 + 184) = 0;
    }
  }

  v168 = re::ProfilerConfig::isStatisticCollectionEnabled(v162);
  if (v168)
  {
    v169 = re::profilerThreadContext(v168);
    v170 = *(v169 + 152);
    if (v170)
    {
      v171 = *(v98 + 2976);
      v172 = v170[776].u64[0];
      if (v172 >= v171)
      {
        v172 = *(v98 + 2976);
      }

      v170[776].i64[0] = v172;
      v173 = v170[776].u64[1];
      if (v173 <= v171)
      {
        v173 = v171;
      }

      v170[776].i64[1] = v173;
      v174 = vdupq_n_s64(1uLL);
      v174.i64[0] = v171;
      v170[777] = vaddq_s64(v170[777], v174);
      *(v169 + 184) = 0;
    }
  }

  re::LightContextBuilder::Result::Result(v473, v501);
  v175 = *(v98 + 2960);
  v514 = *(v175 + 72);
  v508 = *(v175 + 168);
  *v533 = 0u;
  *&v533[16] = 1;
  memset(&v533[24], 0, 28);
  re::BucketArray<re::LightContext,16ul>::init(v533, v501, 1uLL);
  v534 = 0;
  memset(&v533[56], 0, 32);
  v535 = 0x7FFFFFFFLL;
  v536 = v501;
  v537 = 0u;
  v539 = 0u;
  v538 = v501;
  v540 = v501;
  v541 = 0u;
  v543 = 0u;
  v542 = v501;
  v544 = v501;
  v545 = 0u;
  v546 = v501;
  v547 = 0u;
  v548 = 0u;
  v549 = 0;
  *&v176 = v508;
  *(&v176 + 1) = v514;
  v550 = v176;
  v551 = 0;
  v177 = *(v98 + 2940);
  if (v177)
  {
    v178 = (v98 + 2912);
    a8 = *(v98 + 2944);
    if (a8)
    {
      v104 = 0;
      v179 = *(v98 + 2928);
      while ((*v179 & 0x80000000) == 0)
      {
        v179 += 88;
        v104 = (v104 + 1);
        if (a8 == v104)
        {
          LODWORD(v104) = *(v98 + 2944);
          break;
        }
      }
    }

    else
    {
      LODWORD(v104) = 0;
    }

    v180 = v98 + 2912;
  }

  else
  {
    v178 = (v98 + 96);
    v180 = v98 + 96 + 352 * *(v98 + 80);
  }

  v181 = 0;
  v182.i64[0] = 0x7F0000007FLL;
  v182.i64[1] = 0x7F0000007FLL;
  v515 = vnegq_f32(v182);
LABEL_155:
  while (2)
  {
    if (v177)
    {
      if (a8 == v104)
      {
        goto LABEL_197;
      }

      v183 = *(v178 + 2) + 352 * v104;
      v184 = (v183 + 4);
      v185 = (v183 + 8);
LABEL_160:
      if (v185[26] || v185[33])
      {
        v181 = 1;
        goto LABEL_163;
      }

      v189 = *v184;
      *&v190 = 0x7F0000007FLL;
      *(&v190 + 1) = 0x7F0000007FLL;
      *v557 = v515;
      *&v557[16] = v190;
      re::LightContextBuilder::buildLightContext(&buf, *(a1 + 2960), v501, v185, v557);
      v191 = v574;
      v192 = *&v533[40];
      re::BucketArray<re::LightContext,16ul>::add(v533, &buf);
      v193 = v551 | v191;
      v103 = v557;
      LOBYTE(v551) = v193 & 1;
      memset(&v557[8], 0, 36);
      *&v557[44] = 0x7FFFFFFFLL;
      *v557 = v192;
      v194 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v189) ^ ((0xBF58476D1CE4E5B9 * v189) >> 27));
      v195 = v194 ^ (v194 >> 31);
      if (*&v533[56])
      {
        v196 = v195 % *&v533[80];
        v197 = *(*&v533[64] + 4 * v196);
        if (v197 != 0x7FFFFFFF)
        {
          while (*(*&v533[72] + 72 * v197 + 4) != v189)
          {
            LODWORD(v197) = *(*&v533[72] + 72 * v197) & 0x7FFFFFFF;
            if (v197 == 0x7FFFFFFF)
            {
              goto LABEL_177;
            }
          }

          goto LABEL_178;
        }
      }

      else
      {
        LODWORD(v196) = 0;
      }

LABEL_177:
      v198 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(&v533[56], v196, v195);
      *(v198 + 4) = v189;
      *(v198 + 8) = v192;
      *(v198 + 16) = 0u;
      *(v198 + 32) = 0u;
      *(v198 + 48) = 0;
      *(v198 + 52) = 0x7FFFFFFFLL;
      ++HIDWORD(v535);
LABEL_178:
      v199.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v557[8]);
      if (v570.i64[1])
      {
        if (v571)
        {
          (*(*v570.i64[1] + 40))(v199.n128_f64[0]);
          v571 = 0;
          v572 = 0;
        }

        v570.i64[1] = 0;
      }

      if (v568 && v569)
      {
        (*(*v568 + 40))(v199);
      }

      if (*(&v566 + 1) && v567)
      {
        (*(**(&v566 + 1) + 40))(v199);
      }

      if (buf.columns[3].i64[0] && buf.columns[3].i64[1])
      {
        (*(*buf.columns[3].i64[0] + 40))(v199);
      }

      if (buf.columns[1].i64[1] && buf.columns[2].i64[0])
      {
        (*(*buf.columns[1].i64[1] + 40))(v199);
      }

      if (buf.columns[0].i64[0] && buf.columns[0].i64[1])
      {
        (*(*buf.columns[0].i64[0] + 40))(v199);
      }

LABEL_163:
      if (v177)
      {
        v186 = v104 + 1;
        if (*(v178 + 8) <= (v104 + 1))
        {
          LODWORD(v104) = v104 + 1;
        }

        else
        {
          LODWORD(v104) = *(v178 + 8);
        }

        while (v104 != v186)
        {
          v187 = v186;
          v188 = *(*(v178 + 2) + 352 * v186++);
          if (v188 < 0)
          {
            LODWORD(v104) = v187;
            goto LABEL_155;
          }
        }
      }

      else
      {
        v178 += 176;
      }

      continue;
    }

    break;
  }

  if (v178 != v180)
  {
    v185 = v178 + 4;
    v184 = v178;
    goto LABEL_160;
  }

LABEL_197:
  if ((v181 & 1) == 0)
  {
    goto LABEL_317;
  }

  buf.columns[0].i64[0] = v501;
  buf.columns[0].i32[2] = 0;
  buf.columns[1].i64[0] = 0;
  buf.columns[1].i32[2] = 0;
  v584 = 0u;
  v585 = 0u;
  v586 = 0;
  v587 = 0x7FFFFFFFLL;
  v200 = v474;
  if (v474)
  {
    v516 = *(v474 + 40);
    if (v516)
    {
      v201 = 0;
      p_buf = &buf;
      v103 = 0x7FFFFFFFLL;
      while (1)
      {
        v203 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v200, v201);
        v204 = *(v203 + 16);
        if (v204)
        {
          break;
        }

LABEL_225:
        ++v201;
        v200 = v474;
        if (v201 == v516)
        {
          goto LABEL_226;
        }
      }

      v205 = *(v203 + 32);
      v104 = &v205[64 * v204];
      while (2)
      {
        v206 = re::AABB::transform(&v205[5], v205 + 8, &v524);
        v208 = v205[32].u64[0];
        v526.i64[0] = v208;
        v526.i16[4] = v205[32].i16[4];
        if (HIDWORD(v585))
        {
LABEL_204:
          memset(v557, 0, 24);
          if (*&v557[12] == 0x7FFFFFFF)
          {
            v209 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v584, *&v557[8], *v557);
            *(v209 + 8) = v205[32].i64[0];
            v210 = v526;
            *(v209 + 32) = v525;
            *(v209 + 48) = v210;
            *(v209 + 16) = v524;
            ++HIDWORD(v587);
          }

          goto LABEL_224;
        }

        if (buf.columns[1].i64[0])
        {
          v211 = buf.columns[1].i64[0] << 6;
          v212 = (buf.columns[1].i64[0] << 6) | 0x20;
          v213 = 2;
          do
          {
            if (buf.columns[v213].i64[0] == v208)
            {
              goto LABEL_224;
            }

            v213 += 4;
            v211 -= 64;
          }

          while (v211);
          if ((buf.columns[1].i32[0] & 0xFFFFFFF0) != 0)
          {
            if (v584)
            {
LABEL_216:
              v215 = v212 - 32;
              v216 = &buf.columns[2];
              do
              {
                memset(v557, 0, 24);
                if (*&v557[12] == 0x7FFFFFFF)
                {
                  v217 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v584, *&v557[8], *v557);
                  *(v217 + 8) = v216->i64[0];
                  v218 = v216[1];
                  v219 = v216[3];
                  *(v217 + 32) = v216[2];
                  *(v217 + 48) = v219;
                  *(v217 + 16) = v218;
                  ++HIDWORD(v587);
                }

                v216 += 4;
                v215 -= 64;
              }

              while (v215);
            }

            else
            {
              v214 = buf.columns[0].i64[0];
              if (!buf.columns[0].i64[0])
              {
              }

              re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v584, v214, 32);
              if (buf.columns[1].i64[0])
              {
                v212 = (buf.columns[1].i64[0] << 6) | 0x20;
                goto LABEL_216;
              }
            }

            buf.columns[1].i64[0] = 0;
            ++buf.columns[1].i32[2];
            v208 = v205[32].u64[0];
            goto LABEL_204;
          }

          *&v557[8] = v524;
          *&v557[24] = v525;
          *&v557[40] = v526;
          if (buf.columns[1].i64[0] >= 0x10uLL)
          {
            re::internal::assertLog(4, v207, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
            result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
            __break(1u);
            return result;
          }
        }

        else
        {
          *&v557[8] = v524;
          *&v557[24] = v525;
          *&v557[40] = v526;
        }

        v220 = &buf.columns[4 * buf.columns[1].i64[0] + 2];
        v221 = *&v557[16];
        *(v220 + 40) = *&v557[32];
        *(v220 + 8) = *v557;
        v220->i64[0] = v208;
        v220[3].i64[1] = *&v557[48];
        *(v220 + 24) = v221;
        ++buf.columns[1].i32[2];
        v222 = __CFADD__(buf.columns[1].i64[0], 1);
        v223 = ++buf.columns[1].i64[0];
        if (v222)
        {
          goto LABEL_494;
        }

LABEL_224:
        v205 += 64;
        if (v205 == v104)
        {
          goto LABEL_225;
        }

        continue;
      }
    }
  }

LABEL_226:
  v224 = a1;
  v509 = *(a3 + 40);
  if (v509)
  {
    v225 = 0;
    LODWORD(v104) = 0x7FFFFFFF;
    while (1)
    {
      v226 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a3, v225);
      v227 = *(v226 + 16);
      if (v227)
      {
        break;
      }

LABEL_272:
      if (++v225 == v509)
      {
        goto LABEL_273;
      }
    }

    v228 = *(v226 + 32);
    v229 = &v228[46 * v227];
    while (2)
    {
      v230 = v228[32].u16[4];
      v231 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(v224 + 64, v228[32].u16[4]);
      if (v231)
      {
        v233 = v231;
        re::MeshScene::meshSceneBoundingBox(v228, v232, v557);
        re::AABB::transform(v557, v228 + 8, &v524);
        v234 = HIDWORD(v585);
        if (HIDWORD(v585))
        {
          if (*&v557[12] != 0x7FFFFFFF)
          {
            v235 = (v585 + (*&v557[12] << 6) + 16);
            goto LABEL_234;
          }
        }

        else if (buf.columns[1].i64[0])
        {
          v243 = buf.columns[1].i64[0] << 6;
          v235 = &buf.columns[3];
          while (v235[-1].i64[0] != v228[32].i64[0])
          {
            v235 += 4;
            v243 -= 64;
            if (!v243)
            {
              goto LABEL_253;
            }
          }

LABEL_234:
          v236 = v524;
          v237 = v525;
          v236.i32[3] = 0;
          v238 = *v235;
          v239 = v235[1];
          v238.i32[3] = 0;
          v237.i32[3] = 0;
          v239.i32[3] = 0;
          v524 = vminnmq_f32(v236, v238);
          v525 = vmaxnmq_f32(v237, v239);
          if (v234)
          {
            v240 = *&v557[12];
            if (*&v557[12] != 0x7FFFFFFF)
            {
              v241 = (v585 + (*&v557[12] << 6));
              v242 = *v241 & 0x7FFFFFFF;
              if (*&v557[16] == 0x7FFFFFFF)
              {
                *(*(&v584 + 1) + 4 * *&v557[8]) = v242;
                v234 = HIDWORD(v585);
              }

              else
              {
                *(v585 + (*&v557[16] << 6)) = *(v585 + (*&v557[16] << 6)) & 0x80000000 | v242;
              }

              *v241 = v587;
              HIDWORD(v585) = v234 - 1;
              v587 = __PAIR64__(HIDWORD(v587), v240) + 0x100000000;
            }
          }

          else if (buf.columns[1].i64[0])
          {
            v244 = 0;
            v245 = &buf.columns[2];
            while (v245->i64[0] != v228[32].i64[0])
            {
              ++v244;
              v245 += 4;
              if (buf.columns[1].i64[0] == v244)
              {
                goto LABEL_253;
              }
            }

            v246 = buf.columns[1].i64[0] - 1;
            if (buf.columns[1].i64[0] - 1 > v244)
            {
              v247 = &v564[64 * buf.columns[1].i64[0]];
              v248 = *v247;
              v249 = v247[1];
              v250 = v247[3];
              v245[2] = v247[2];
              v245[3] = v250;
              *v245 = v248;
              v245[1] = v249;
              v246 = buf.columns[1].i64[0] - 1;
            }

            buf.columns[1].i64[0] = v246;
            ++buf.columns[1].i32[2];
          }
        }

LABEL_253:
        v224 = a1;
        re::LightContextBuilder::buildLightContext(v557, *(a1 + 2960), v501, v233, &v524);
        re::LightContexts::addPerMeshLightContext(v533, v230, v228[32].u64[0], v557);
        if (v561 && v562)
        {
          (*(*v561 + 40))();
          v562 = 0;
          v563 = 0;
        }

        if (v559 && v560)
        {
          (*(*v559 + 40))();
        }

        if (*&v557[72] && v558)
        {
          (*(**&v557[72] + 40))();
        }

        if (*&v557[48] && *&v557[56])
        {
          (*(**&v557[48] + 40))();
        }

        if (*&v557[24] && *&v557[32])
        {
          (*(**&v557[24] + 40))();
        }

        if (*v557 && *&v557[8])
        {
          (*(**v557 + 40))();
        }
      }

      v228 += 46;
      if (v228 == v229)
      {
        goto LABEL_272;
      }

      continue;
    }
  }

LABEL_273:
  v251 = HIDWORD(v585);
  if (HIDWORD(v585))
  {
    LODWORD(v224) = v586;
    if (v586)
    {
      v104 = 0;
      v252 = v585;
      while (1)
      {
        v253 = *v252;
        v252 += 16;
        if (v253 < 0)
        {
          break;
        }

        v104 = (v104 + 1);
        if (v586 == v104)
        {
          v254 = &v584;
          LODWORD(v104) = v586;
          goto LABEL_282;
        }
      }
    }

    else
    {
      LODWORD(v104) = 0;
    }

    v254 = &v584;
LABEL_282:
    v255 = &v584;
  }

  else
  {
    v254 = &buf.columns[2];
    v255 = &buf.columns[4 * buf.columns[1].i64[0] + 2];
  }

  v103 = v557;
LABEL_284:
  while (2)
  {
    if (v251)
    {
      if (v224 == v104)
      {
        break;
      }

      v256 = v254[1].i64[0] + (v104 << 6) + 16;
      goto LABEL_289;
    }

    if (v254 != v255)
    {
      v256 = &v254[1];
LABEL_289:
      v257 = *(v256 + 40);
      v258 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(a1 + 64, *(v256 + 40));
      if (v258)
      {
        re::LightContextBuilder::buildLightContext(v557, *(a1 + 2960), v501, v258, v256);
        re::LightContexts::addPerMeshLightContext(v533, v257, *(v256 + 32), v557);
        if (v561 && v562)
        {
          (*(*v561 + 40))();
          v562 = 0;
          v563 = 0;
        }

        if (v559 && v560)
        {
          (*(*v559 + 40))();
        }

        if (*&v557[72] && v558)
        {
          (*(**&v557[72] + 40))();
        }

        if (*&v557[48] && *&v557[56])
        {
          (*(**&v557[48] + 40))();
        }

        if (*&v557[24] && *&v557[32])
        {
          (*(**&v557[24] + 40))();
        }

        if (*v557 && *&v557[8])
        {
          (*(**v557 + 40))();
        }
      }

      if (v251)
      {
        v259 = v104 + 1;
        if (v254[2].i32[0] <= (v104 + 1))
        {
          LODWORD(v104) = v104 + 1;
        }

        else
        {
          LODWORD(v104) = v254[2].i32[0];
        }

        while (v104 != v259)
        {
          v260 = v259;
          v261 = *(v254[1].i64[0] + (v259++ << 6));
          if (v261 < 0)
          {
            LODWORD(v104) = v260;
            goto LABEL_284;
          }
        }
      }

      else
      {
        v254 += 4;
      }

      continue;
    }

    break;
  }

  buf.columns[1].i64[0] = 0;
  ++buf.columns[1].i32[2];
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v584);
  buf.columns[0].i64[0] = 0;
  buf.columns[0].i32[2] = 0;
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v584);
LABEL_317:
  re::BucketArray<re::BufferSlice,8ul>::operator=((v473 + 80), v533);
  re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v473 + 136, &v533[56]);
  re::FixedArray<float>::operator=((v473 + 184), &v536);
  re::FixedArray<float>::operator=((v473 + 208), &v538);
  re::FixedArray<float>::operator=((v473 + 232), &v540);
  re::FixedArray<float>::operator=((v473 + 256), &v542);
  re::FixedArray<float>::operator=((v473 + 280), &v544);
  re::FixedArray<float>::operator=((v473 + 304), &v546);
  *(v473 + 328) = v548;
  *(v473 + 344) = v549;
  *(v473 + 352) = v550;
  *(v473 + 368) = v551;
  p_buf = a1;
  if (v546)
  {
    if (v547)
    {
      (*(*v546 + 40))();
      v547 = 0uLL;
    }

    v546 = 0;
  }

  if (v544)
  {
    if (v545)
    {
      (*(*v544 + 40))();
      v545 = 0uLL;
    }

    v544 = 0;
  }

  if (v542)
  {
    if (v543)
    {
      (*(*v542 + 40))();
      v543 = 0uLL;
    }

    v542 = 0;
  }

  if (v540)
  {
    if (v541)
    {
      (*(*v540 + 40))();
      v541 = 0uLL;
    }

    v540 = 0;
  }

  if (v538)
  {
    if (v539)
    {
      (*(*v538 + 40))();
      v539 = 0uLL;
    }

    v538 = 0;
  }

  if (v536)
  {
    if (v537)
    {
      (*(*v536 + 40))();
      v537 = 0uLL;
    }

    v536 = 0;
  }

  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(&v533[56]);
  re::BucketArray<re::LightContext,16ul>::deinit(v533);
  if (*v533 && (v533[16] & 1) == 0)
  {
    (*(**v533 + 40))();
  }

  v526.i64[0] = 0;
  v525.i64[0] = 0;
  v525.i32[2] = 0;
  v524 = v501;
  re::DynamicArray<re::ShadowView>::setCapacity(&v524, 0);
  ++v525.i32[2];
  v264 = *(a1 + 2940);
  if (v264)
  {
    v265 = (a1 + 2912);
    v262 = *(a1 + 2944);
    if (v262)
    {
      v263 = 0;
      v266 = *(a1 + 2928);
      while ((*v266 & 0x80000000) == 0)
      {
        v266 += 88;
        if (v262 == ++v263)
        {
          v263 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v263 = 0;
    }

    v477 = a1 + 2912;
  }

  else
  {
    v265 = (a1 + 96);
    v477 = a1 + 96 + 352 * *(a1 + 80);
  }

  LODWORD(v495) = 136315138;
  v475 = *(a1 + 2940);
  v471 = v262;
LABEL_354:
  while (2)
  {
    v479 = v263;
    v482 = v265;
    if (v264)
    {
      if (v262 == v263)
      {
        goto LABEL_479;
      }

      v267 = *(v265 + 2) + 352 * v263;
      v268 = (v267 + 4);
      v269 = (v267 + 8);
    }

    else
    {
      if (v265 == v477)
      {
        goto LABEL_479;
      }

      v269 = v265 + 4;
      v268 = v265;
    }

    v270 = *v268;
    v493 = v269;
    v517 = v269[12];
    if (v517)
    {
      for (n = 0; n != v517; ++n)
      {
        v272 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v269 + 7), n);
        v273 = *(v272 + 16);
        if (v273)
        {
          v274 = v272;
          for (ii = 0; ii < v273; ++ii)
          {
            v103 = v274[4] + 160 * ii;
            if (*(v103 + 134) == 1)
            {
              v276 = v274[6];
              if (v276 <= ii)
              {
                goto LABEL_463;
              }

              v277 = v274[7] + 24 * ii;
              v278 = *(v277 + 8);
              if (v278)
              {
                v279 = *(v277 + 16);
                v280 = 96 * v278;
                do
                {
                  v281 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v279 + 10));
                  LOBYTE(v520) = 1;
                  v522 = *v279;
                  v282 = *(v103 + 135);
                  v531[0] = *(v103 + 132);
                  if (v531[0] == 1)
                  {
                    v531[1] = *(v103 + 133);
                  }

                  re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v501, v103, v281, v279 + 1, &v520, v282, v270, v531, &v524);
                  v279 += 6;
                  v280 -= 96;
                }

                while (v280);
                v273 = v274[2];
              }
            }
          }
        }

        v269 = v493;
      }
    }

    v510 = v269[19];
    if (v510)
    {
      v283 = 0;
      while (1)
      {
        v518 = v283;
        v284 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v269 + 14), v283);
        v285 = *(v284 + 16);
        if (v285)
        {
          break;
        }

LABEL_385:
        v283 = v518 + 1;
        v269 = v493;
        if (v518 + 1 == v510)
        {
          goto LABEL_386;
        }
      }

      v286 = v284;
      v103 = 0;
      v287 = 0;
      ii = 0;
      while (1)
      {
        v276 = v286[6];
        if (v276 <= ii)
        {
          break;
        }

        if (*(v286[7] + ii) == 1)
        {
          v276 = v286[13];
          if (v276 <= ii)
          {
            goto LABEL_471;
          }

          v288 = v286[4];
          v289 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v286[14] + 8 * ii));
          v290 = v286[10];
          if (v290 <= ii)
          {
            goto LABEL_475;
          }

          buf = *(v286[11] + v287);
          v552[0] = 0;
          v530[0] = *(v288 + v103 + 132);
          if (v530[0] == 1)
          {
            v530[1] = *(v288 + v103 + 133);
          }

          re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v501, v288 + v103, v289, &buf, v552, 0, v270, v530, &v524);
          v285 = v286[2];
        }

        ++ii;
        v287 += 64;
        v103 += 144;
        if (ii >= v285)
        {
          goto LABEL_385;
        }
      }

LABEL_459:
      *v557 = 0;
      v566 = 0u;
      memset(&buf, 0, sizeof(buf));
      v330 = MEMORY[0x1E69E9C10];
      v331 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v533 = 136315906;
      *&v533[4] = "operator[]";
      *&v533[12] = 1024;
      if (v331)
      {
        v332 = 3;
      }

      else
      {
        v332 = 2;
      }

      *&v533[14] = 476;
      *&v533[18] = 2048;
      *&v533[20] = ii;
      *&v533[28] = 2048;
      *&v533[30] = v276;
      _os_log_send_and_compose_impl(v332, v557, &buf, 80, &dword_1E1C61000, v330, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
      _os_crash_msg();
      __break(1u);
LABEL_463:
      *v557 = 0;
      v566 = 0u;
      memset(&buf, 0, sizeof(buf));
      v333 = MEMORY[0x1E69E9C10];
      v334 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v533 = 136315906;
      *&v533[4] = "operator[]";
      *&v533[12] = 1024;
      if (v334)
      {
        v335 = 3;
      }

      else
      {
        v335 = 2;
      }

      *&v533[14] = 476;
      *&v533[18] = 2048;
      *&v533[20] = ii;
      *&v533[28] = 2048;
      *&v533[30] = v276;
      _os_log_send_and_compose_impl(v335, v557, &buf, 80, &dword_1E1C61000, v333, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
      _os_crash_msg();
      __break(1u);
LABEL_467:
      *v557 = 0;
      v566 = 0u;
      memset(&buf, 0, sizeof(buf));
      v336 = MEMORY[0x1E69E9C10];
      v337 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v533 = 136315906;
      *&v533[4] = "operator[]";
      *&v533[12] = 1024;
      if (v337)
      {
        v338 = 3;
      }

      else
      {
        v338 = 2;
      }

      *&v533[14] = 476;
      *&v533[18] = 2048;
      *&v533[20] = ii;
      *&v533[28] = 2048;
      *&v533[30] = v276;
      _os_log_send_and_compose_impl(v338, v557, &buf, 80, &dword_1E1C61000, v336, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
      _os_crash_msg();
      __break(1u);
LABEL_471:
      *v557 = 0;
      v566 = 0u;
      memset(&buf, 0, sizeof(buf));
      v290 = MEMORY[0x1E69E9C10];
      v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v533 = 136315906;
      *&v533[4] = "operator[]";
      *&v533[12] = 1024;
      if (v339)
      {
        v340 = 3;
      }

      else
      {
        v340 = 2;
      }

      *&v533[14] = 476;
      *&v533[18] = 2048;
      *&v533[20] = ii;
      *&v533[28] = 2048;
      *&v533[30] = v276;
      _os_log_send_and_compose_impl(v340, v557, &buf, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
      _os_crash_msg();
      __break(1u);
LABEL_475:
      *v557 = 0;
      v566 = 0u;
      memset(&buf, 0, sizeof(buf));
      p_buf = MEMORY[0x1E69E9C10];
      v341 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v533 = 136315906;
      *&v533[4] = "operator[]";
      *&v533[12] = 1024;
      if (v341)
      {
        v342 = 3;
      }

      else
      {
        v342 = 2;
      }

      *&v533[14] = 476;
      *&v533[18] = 2048;
      *&v533[20] = ii;
      *&v533[28] = 2048;
      *&v533[30] = v290;
      _os_log_send_and_compose_impl(v342, v557, &buf, 80, &dword_1E1C61000, p_buf, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
      _os_crash_msg();
      __break(1u);
LABEL_479:
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v473, &v524);
      re::DynamicArray<re::ShadowView>::deinit(&v524);
      *&v557[32] = 0;
      *&v557[16] = 0;
      *&v557[24] = 0;
      *v557 = v501;
      re::DynamicArray<re::FilterView>::setCapacity(v557, 0);
      ++*&v557[24];
      v345 = *(p_buf + 2940);
      if (!v345)
      {
        goto LABEL_489;
      }

      v346 = p_buf + 2912;
      v347 = *(p_buf + 2944);
      if (v347)
      {
        v344 = 0;
        v348 = *(p_buf + 2928);
        LODWORD(v483) = *(p_buf + 2944);
        while ((*v348 & 0x80000000) == 0)
        {
          v348 += 88;
          if (v347 == ++v344)
          {
            v344 = *(p_buf + 2944);
            goto LABEL_496;
          }
        }

        goto LABEL_496;
      }

LABEL_495:
      v344 = 0;
      LODWORD(v483) = 0;
LABEL_496:
      v480 = v346;
      goto LABEL_497;
    }

LABEL_386:
    v511 = v269[26];
    if (!v511)
    {
LABEL_399:
      v485 = v269[33];
      if (!v485)
      {
LABEL_445:
        v264 = v475;
        if (v475)
        {
          v265 = v482;
          v323 = *(v482 + 8);
          v324 = v479 + 1;
          if (v323 <= v479 + 1)
          {
            v263 = (v479 + 1);
          }

          else
          {
            v263 = v323;
          }

          p_buf = a1;
          LODWORD(v262) = v471;
          while (v263 != v324)
          {
            v325 = v324;
            v326 = *(*(v482 + 2) + 352 * v324++);
            if (v326 < 0)
            {
              v263 = v325;
              goto LABEL_354;
            }
          }
        }

        else
        {
          v263 = v479;
          v265 = v482 + 176;
          p_buf = a1;
          LODWORD(v262) = v471;
        }

        continue;
      }

      v299 = 0;
LABEL_401:
      v487 = v299;
      v300 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v269 + 28), v299);
      v301 = *(v300 + 16);
      if (!v301)
      {
        goto LABEL_444;
      }

      v302 = v300;
      v276 = 0;
      v103 = 0;
LABEL_403:
      ii = v302[4] + 224 * v103;
      if (*(ii + 215) != 1)
      {
        goto LABEL_443;
      }

      p_buf = v302[6];
      if (p_buf <= v103)
      {
        *v557 = 0;
        v566 = 0u;
        memset(&buf, 0, sizeof(buf));
        v352 = MEMORY[0x1E69E9C10];
        v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v533 = 136315906;
        *&v533[4] = "operator[]";
        *&v533[12] = 1024;
        if (v353)
        {
          v354 = 3;
        }

        else
        {
          v354 = 2;
        }

        *&v533[14] = 476;
        *&v533[18] = 2048;
        *&v533[20] = v103;
        *&v533[28] = 2048;
        *&v533[30] = p_buf;
        _os_log_send_and_compose_impl(v354, v557, &buf, 80, &dword_1E1C61000, v352, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
        _os_crash_msg();
        __break(1u);
LABEL_494:
        re::internal::assertLog(6, v207, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, v223);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v464, v467);
        __break(1u);
        goto LABEL_495;
      }

      if (*(v302[7] + v103) != 1)
      {
        goto LABEL_443;
      }

      for (jj = 0; jj != 144; jj += 24)
      {
        v304 = &v533[jj];
        *v304 = 0;
        *(v304 + 1) = 0;
        *(v304 + 4) = 0;
        *(v304 + 10) = -1;
      }

      v305 = 0;
      v490 = v276;
      do
      {
        v306 = v302[13];
        if (v306 <= v103)
        {
          v532 = 0;
          v566 = 0u;
          memset(&buf, 0, sizeof(buf));
          v327 = MEMORY[0x1E69E9C10];
          v328 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v557 = 136315906;
          *&v557[4] = "operator[]";
          *&v557[12] = 1024;
          if (v328)
          {
            v329 = 3;
          }

          else
          {
            v329 = 2;
          }

          *&v557[14] = 476;
          *&v557[18] = 2048;
          *&v557[20] = v103;
          *&v557[28] = 2048;
          *&v557[30] = v306;
          _os_log_send_and_compose_impl(v329, &v532, &buf, 80, &dword_1E1C61000, v327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v557, 38, v469, v470);
          _os_crash_msg();
          __break(1u);
LABEL_458:
          re::internal::assertLog(6, v312, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v306, v511);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v463, v466);
          __break(1u);
          goto LABEL_459;
        }

        v307 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v276 + v302[14]));
        v308 = &v533[v305];
        *v308 = *v307;
        *(v308 + 14) = *(v307 + 14);
        v305 += 24;
        v276 = (v276 + 8);
      }

      while (v305 != 144);
      v506 = *(ii + 212);
      if (v506 == 1)
      {
        LOBYTE(v496) = *(ii + 213);
      }

      PointLightFaceLookatOrientations = re::getPointLightFaceLookatOrientations(v307);
      v504 = PointLightFaceLookatOrientations;
      v511 = v310;
      v306 = 0;
      v311 = v533;
      while (1)
      {
        if (*(v311 + 10) == -1)
        {
          v321 = *re::graphicsLogObjects(PointLightFaceLookatOrientations);
          PointLightFaceLookatOrientations = os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT);
          if (PointLightFaceLookatOrientations)
          {
            v322 = ii + 9;
            if (*(ii + 8))
            {
              v322 = *(ii + 16);
            }

            buf.columns[0].i32[0] = 136315138;
            *(buf.columns[0].i64 + 4) = v322;
            _os_log_impl(&dword_1E1C61000, v321, OS_LOG_TYPE_DEFAULT, "Failed to allocate shadow map face for point light %s: not enough free space in shadow map atlas.", &buf, 0xCu);
          }

          goto LABEL_441;
        }

        v276 = v501;
        re::ShadowView::ShadowView(&buf, v501);
        if (v511 <= v306)
        {
          goto LABEL_458;
        }

        v314 = *&v504[v306];
        v315 = *(&v504[v306] + 1);
        buf.columns[2] = *(ii + 80);
        buf.columns[3].i64[0] = v314;
        buf.columns[3].i64[1] = v315;
        v316 = ii + 9;
        if (*(ii + 8))
        {
          v316 = *(ii + 16);
        }

        re::DynamicString::format(v557, v501, "%s_face%u", v313, v316, v306);
        re::DynamicString::operator=(&buf, v557);
        if (*v557 && (v557[8] & 1) != 0)
        {
          (*(**v557 + 40))();
        }

        v317 = atan2f(*v311, (*v311 - 3));
        *&v557[15] = *(ii + 128);
        *&v557[31] = *(ii + 144);
        *&v557[47] = *(ii + 160);
        *&v557[63] = *(ii + 176);
        if (v573)
        {
          v318 = *(ii + 128);
          v319 = *(ii + 144);
          v320 = *(ii + 176);
          v576 = *(ii + 160);
          v577 = v320;
          v574 = v318;
          v575 = v319;
        }

        else
        {
          v573 = 1;
          v574 = *&v557[15];
          v575 = *&v557[31];
          v576 = *&v557[47];
          v577 = *&v557[63];
        }

        if ((v578 & 1) == 0)
        {
          re::Projection::decompose(&v566, ii + 128);
        }

        re::Projection::setFovY(&v566, v317 + v317);
        if ((v581 & 1) == 0)
        {
          v581 = 1;
        }

        v582 = v270;
        if (v580[0])
        {
          if (v506)
          {
            goto LABEL_437;
          }

          v580[0] = 0;
        }

        else if (v506)
        {
          v580[0] = 1;
LABEL_437:
          v580[1] = v496;
        }

        *v579 = *v311;
        *&v579[14] = *(v311 + 14);
        re::DynamicArray<re::ShadowView>::add(&v524, &buf);
        PointLightFaceLookatOrientations = buf.columns[0].i64[0];
        if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
        {
          PointLightFaceLookatOrientations = (*(*buf.columns[0].i64[0] + 40))();
        }

LABEL_441:
        ++v306;
        v311 += 24;
        if (v306 == 6)
        {
          v301 = v302[2];
          v276 = v490;
LABEL_443:
          ++v103;
          v276 = (v276 + 48);
          if (v103 >= v301)
          {
LABEL_444:
            v299 = v487 + 1;
            v269 = v493;
            if (v487 + 1 == v485)
            {
              goto LABEL_445;
            }

            goto LABEL_401;
          }

          goto LABEL_403;
        }
      }
    }

    break;
  }

  v291 = 0;
  while (1)
  {
    v519 = v291;
    v292 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v269 + 21), v291);
    v293 = *(v292 + 16);
    if (v293)
    {
      break;
    }

LABEL_398:
    v291 = v519 + 1;
    v269 = v493;
    if (v519 + 1 == v511)
    {
      goto LABEL_399;
    }
  }

  p_buf = v292;
  v294 = 0;
  ii = 0;
  while (2)
  {
    v295 = *(p_buf + 32);
    v103 = v295 + v294;
    if (*(v295 + v294 + 224) != 1)
    {
      goto LABEL_397;
    }

    v276 = *(p_buf + 48);
    if (v276 <= ii)
    {
      goto LABEL_467;
    }

    if (*(*(p_buf + 56) + ii) != 1)
    {
LABEL_397:
      ++ii;
      v294 += 240;
      if (ii >= v293)
      {
        goto LABEL_398;
      }

      continue;
    }

    break;
  }

  v296 = *(p_buf + 104);
  if (v296 > ii)
  {
    v297 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(*(p_buf + 112) + 8 * ii));
    v298 = v295 + v294;
    LOBYTE(v529[0]) = 0;
    v528[0] = *(v295 + v294 + 220);
    if (v528[0] == 1)
    {
      v528[1] = *(v298 + 221);
    }

    re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v501, v295 + v294, v297, (v298 + 128), v529, 0, v270, v528, &v524);
    v293 = *(p_buf + 16);
    goto LABEL_397;
  }

  *v557 = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v349 = MEMORY[0x1E69E9C10];
  v350 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v350)
  {
    v351 = 3;
  }

  else
  {
    v351 = 2;
  }

  *&v533[14] = 476;
  *&v533[18] = 2048;
  *&v533[20] = ii;
  *&v533[28] = 2048;
  *&v533[30] = v296;
  _os_log_send_and_compose_impl(v351, v557, &buf, 80, &dword_1E1C61000, v349, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_489:
  v346 = p_buf + 96;
  v480 = p_buf + 96 + 352 * *(p_buf + 80);
  v483 = *(p_buf + 80);
LABEL_497:
  v486 = v345;
  while (1)
  {
LABEL_498:
    v488 = v344;
    v491 = v346;
    if (v345)
    {
      if (v483 == v344)
      {
        goto LABEL_604;
      }

      v355 = *(v346 + 16) + 352 * v344 + 8;
    }

    else
    {
      if (v346 == v480)
      {
        goto LABEL_604;
      }

      v355 = v346 + 8;
    }

    v497 = *(v355 + 208);
    v500 = v355;
    if (v497)
    {
      break;
    }

LABEL_545:
    v416 = a1;
    v494 = *(v355 + 264);
    if (v494)
    {
      v343 = 0;
      do
      {
        v498 = v343;
        v417 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](v355 + 224, v343);
        v418 = *(v417 + 16);
        if (v418)
        {
          v419 = v417;
          p_buf = 0;
          v359 = 128;
          do
          {
            v420 = v419[4];
            if (*(v420 + v359 + 86) == 1)
            {
              v360 = v419[6];
              if (v360 <= p_buf)
              {
                goto LABEL_592;
              }

              if (*(v419[7] + p_buf) == 1)
              {
                v360 = v419[10];
                if (v360 <= p_buf)
                {
                  goto LABEL_600;
                }

                v421 = re::DataArray<re::TextureAtlasTile>::get(*(v416 + 2960) + 104, *(v419[11] + 8 * p_buf));
                v422 = *v421;
                *v552 = *(v421 + 4);
                v423 = *(v421 + 20);
                v103 = v420 + v359;
                v424 = *(v420 + v359 + 64);
                v425 = re::getPointLightFaceLookatOrientations(v421);
                if (v423 == 0xFFFF)
                {
                  v434 = *re::graphicsLogObjects(v425);
                  v416 = a1;
                  if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                  {
                    v435 = v420 + v359 - 119;
                    if (*(v420 + v359 - 120))
                    {
                      v435 = *(v420 + v359 - 112);
                    }

                    buf.columns[0].i32[0] = v495;
                    *(buf.columns[0].i64 + 4) = v435;
                    _os_log_impl(&dword_1E1C61000, v434, OS_LOG_TYPE_DEFAULT, "Failed to allocate filter map face for point light %s: not enough free space in filter map atlas.", &buf, 0xCu);
                  }
                }

                else
                {
                  re::FilterView::FilterView(&buf, v501);
                  v583 = v424;
                  buf.columns[2] = *(v103 - 48);
                  buf.columns[3].i64[1] = 0x3F80000000000000;
                  buf.columns[3].i64[0] = 0;
                  re::DynamicString::format(&v524, "_face%u", v426, 0);
                  re::DynamicString::operator+(v533, (v420 + v359 - 128), &v524);
                  if (v533[8])
                  {
                    v427 = *&v533[16];
                  }

                  else
                  {
                    v427 = &v533[9];
                  }

                  v428 = strlen(v427);
                  v520 = v427;
                  v521 = v428;
                  re::DynamicString::operator=(&buf, &v520);
                  if (*v533)
                  {
                    if (v533[8])
                    {
                      (*(**v533 + 40))();
                    }

                    memset(v533, 0, 32);
                  }

                  if (v524.i64[0] && (v524.i8[8] & 1) != 0)
                  {
                    (*(*v524.i64[0] + 40))();
                  }

                  v429 = atan2f(v422, (v422 - 3));
                  v430 = (v420 + v359);
                  *&v533[15] = *(v420 + v359);
                  *&v533[31] = *(v420 + v359 + 16);
                  *&v533[47] = *(v420 + v359 + 32);
                  *&v533[63] = *(v420 + v359 + 48);
                  if (v573)
                  {
                    v431 = *v430;
                    v432 = v430[1];
                    v433 = v430[3];
                    v576 = v430[2];
                    v577 = v433;
                    v574 = v431;
                    v575 = v432;
                  }

                  else
                  {
                    v573 = 1;
                    v574 = *&v533[15];
                    v575 = *&v533[31];
                    v576 = *&v533[47];
                    v577 = *&v533[63];
                  }

                  if ((v578 & 1) == 0)
                  {
                    re::Projection::decompose(&v566, v430);
                  }

                  re::Projection::setFovY(&v566, v429 + v429);
                  *v579 = v422;
                  *&v579[4] = *v552;
                  *&v579[20] = v423;
                  re::DynamicArray<re::FilterView>::add(v557, &buf);
                  re::DynamicArray<re::MeshScene>::deinit(v580);
                  if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
                  {
                    (*(*buf.columns[0].i64[0] + 40))();
                  }

                  v416 = a1;
                }

                v418 = v419[2];
              }
            }

            ++p_buf;
            v359 += 224;
          }

          while (p_buf < v418);
        }

        v343 = v498 + 1;
        v355 = v500;
      }

      while (v498 + 1 != v494);
    }

    v345 = v486;
    if (v486)
    {
      v346 = v491;
      v436 = *(v491 + 32);
      v437 = v488 + 1;
      if (v436 <= v488 + 1)
      {
        v344 = (v488 + 1);
      }

      else
      {
        v344 = v436;
      }

      while (v344 != v437)
      {
        v438 = v437;
        v439 = *(*(v491 + 16) + 352 * v437++);
        if (v439 < 0)
        {
          v344 = v438;
          goto LABEL_498;
        }
      }
    }

    else
    {
      v344 = v488;
      v346 = v491 + 352;
    }
  }

  v103 = 0;
  while (1)
  {
    v356 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](v355 + 168, v103);
    if (*(v356 + 16))
    {
      break;
    }

LABEL_544:
    ++v103;
    v355 = v500;
    if (v103 == v497)
    {
      goto LABEL_545;
    }
  }

  v357 = v356;
  v358 = 0;
  v359 = 0;
  while (2)
  {
    v360 = v357[4];
    v361 = (v360 + v358);
    if (*(v360 + v358 + 223) != 1)
    {
LABEL_543:
      ++v359;
      v358 += 240;
      if (v359 >= v357[2])
      {
        goto LABEL_544;
      }

      continue;
    }

    break;
  }

  p_buf = v357[6];
  if (p_buf > v359)
  {
    if (*(v357[7] + v359) == 1)
    {
      p_buf = v357[10];
      if (p_buf <= v359)
      {
        goto LABEL_596;
      }

      v362 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 104, *(v357[11] + 8 * v359));
      if (v362[10] == -1)
      {
        v398 = *re::graphicsLogObjects(v362);
        if (os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
        {
          v399 = v360 + v358 + 9;
          if (*(v360 + v358 + 8))
          {
            v399 = *(v360 + v358 + 16);
          }

          buf.columns[0].i32[0] = v495;
          *(buf.columns[0].i64 + 4) = v399;
          _os_log_impl(&dword_1E1C61000, v398, OS_LOG_TYPE_DEFAULT, "Failed to allocate filter map for light %s: not enough free space in filter map atlas.", &buf, 0xCu);
        }
      }

      else
      {
        p_buf = v362;
        v363 = v360 + v358;
        v364 = *(v363 + 192);
        re::FilterView::FilterView(&buf, v501);
        v583 = v364;
        re::DynamicString::operator=(&buf, v361);
        v365 = *p_buf;
        *&v579[14] = *(p_buf + 14);
        *v579 = v365;
        v367 = *(v363 + 32);
        v366 = *(v363 + 36);
        v368 = *(v363 + 40);
        v369 = *(v363 + 48);
        v370 = *(v363 + 52);
        v371 = *(v363 + 56);
        v372 = *(v363 + 64);
        v373 = *(v363 + 68);
        v374 = *(v363 + 72);
        v375 = (v367 + v370) + v374;
        if (v375 >= 0.0)
        {
          v400 = sqrtf(v375 + 1.0);
          v401 = v400 + v400;
          v402 = vrecpe_f32(COERCE_UNSIGNED_INT(v400 + v400));
          v403 = vmul_f32(v402, vrecps_f32(COERCE_UNSIGNED_INT(v400 + v400), v402));
          v404 = vmul_f32(v403, vrecps_f32(COERCE_UNSIGNED_INT(v400 + v400), v403)).f32[0];
          v409.f32[0] = (v371 - v373) * v404;
          v410 = (v372 - v368) * v404;
          v411 = (v366 - v369) * v404;
          v412 = v401 * 0.25;
        }

        else if (v367 < v370 || v367 < v374)
        {
          v377 = 1.0 - v367;
          v378 = v370 < v374;
          v379 = v370 < v374;
          v380 = sqrtf((v377 - v370) + v374);
          *&v381 = v380 + v380;
          v382 = vrecpe_f32(v381);
          v383 = vmul_f32(v382, vrecps_f32(v381, v382));
          v384 = vmul_f32(v383, vrecps_f32(v381, v383)).f32[0];
          v385 = (v368 + v372) * v384;
          v386 = v371 + v373;
          v387 = v386 * v384;
          v388 = *&v381 * 0.25;
          v389 = (v366 - v369) * v384;
          v390 = sqrtf(v370 + (v377 - v374));
          *&v391 = v390 + v390;
          v392 = vrecpe_f32(v391);
          v393 = vmul_f32(v392, vrecps_f32(v391, v392));
          v394 = vmul_f32(v393, vrecps_f32(v391, v393)).f32[0];
          v395 = (v366 + v369) * v394;
          v396 = *&v391 * 0.25;
          v397 = v386 * v394;
          v412 = (v372 - v368) * v394;
          if (v378)
          {
            v409.f32[0] = v385;
          }

          else
          {
            v409.f32[0] = v395;
          }

          if (v379)
          {
            v410 = v387;
          }

          else
          {
            v410 = v396;
          }

          if (v379)
          {
            v411 = v388;
          }

          else
          {
            v411 = v397;
          }

          if (v379)
          {
            v412 = v389;
          }
        }

        else
        {
          v405 = sqrtf(v367 + ((1.0 - v370) - v374));
          *&v406 = v405 + v405;
          v407 = vrecpe_f32(v406);
          v408 = vmul_f32(v407, vrecps_f32(v406, v407));
          v408.f32[0] = vmul_f32(v408, vrecps_f32(v406, v408)).f32[0];
          v409.f32[0] = *&v406 * 0.25;
          v410 = (v366 + v369) * v408.f32[0];
          v411 = (v368 + v372) * v408.f32[0];
          v412 = (v371 - v373) * v408.f32[0];
        }

        v409.f32[1] = v410;
        v409.i64[1] = __PAIR64__(LODWORD(v412), LODWORD(v411));
        buf.columns[2] = *(v363 + 80);
        buf.columns[3] = v409;
        *&v533[15] = *(v363 + 128);
        *&v533[31] = *(v363 + 144);
        *&v533[47] = *(v363 + 160);
        *&v533[63] = *(v363 + 176);
        if (v573)
        {
          v413 = *(v363 + 128);
          v414 = *(v363 + 144);
          v415 = *(v363 + 176);
          v576 = *(v363 + 160);
          v577 = v415;
          v574 = v413;
          v575 = v414;
        }

        else
        {
          v573 = 1;
          v574 = *&v533[15];
          v575 = *&v533[31];
          v576 = *&v533[47];
          v577 = *&v533[63];
        }

        if ((v578 & 1) == 0)
        {
          re::Projection::decompose(&v566, v363 + 128);
        }

        *&v579[12] = vadd_s32(*&v579[12], 0x300000003);
        *v579 = vadd_s32(*v579, 0x500000005);
        re::DynamicArray<re::FilterView>::add(v557, &buf);
        re::DynamicArray<re::MeshScene>::deinit(v580);
        if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
        {
          (*(*buf.columns[0].i64[0] + 40))();
        }
      }
    }

    goto LABEL_543;
  }

  v524.i64[0] = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v440 = MEMORY[0x1E69E9C10];
  v441 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v441)
  {
    v442 = 3;
  }

  else
  {
    v442 = 2;
  }

  *&v533[14] = 476;
  *&v533[18] = 2048;
  *&v533[20] = v359;
  *&v533[28] = 2048;
  *&v533[30] = p_buf;
  _os_log_send_and_compose_impl(v442, &v524, &buf, 80, &dword_1E1C61000, v440, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_592:
  v524.i64[0] = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v443 = MEMORY[0x1E69E9C10];
  v444 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v444)
  {
    v445 = 3;
  }

  else
  {
    v445 = 2;
  }

  *&v533[14] = 476;
  *&v533[18] = 2048;
  *&v533[20] = p_buf;
  *&v533[28] = 2048;
  *&v533[30] = v360;
  _os_log_send_and_compose_impl(v445, &v524, &buf, 80, &dword_1E1C61000, v443, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_596:
  v524.i64[0] = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v446 = MEMORY[0x1E69E9C10];
  v447 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v447)
  {
    v448 = 3;
  }

  else
  {
    v448 = 2;
  }

  *&v533[14] = 476;
  *&v533[18] = 2048;
  *&v533[20] = v359;
  *&v533[28] = 2048;
  *&v533[30] = p_buf;
  _os_log_send_and_compose_impl(v448, &v524, &buf, 80, &dword_1E1C61000, v446, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_600:
  v524.i64[0] = 0;
  v566 = 0u;
  memset(&buf, 0, sizeof(buf));
  v449 = MEMORY[0x1E69E9C10];
  v450 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v533 = 136315906;
  *&v533[4] = "operator[]";
  *&v533[12] = 1024;
  if (v450)
  {
    v451 = 3;
  }

  else
  {
    v451 = 2;
  }

  *&v533[14] = 476;
  *&v533[18] = 2048;
  *&v533[20] = p_buf;
  *&v533[28] = 2048;
  *&v533[30] = v360;
  _os_log_send_and_compose_impl(v451, &v524, &buf, 80, &dword_1E1C61000, v449, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
  _os_crash_msg();
  __break(1u);
LABEL_604:
  v452 = *(v472 + 40);
  if (v452)
  {
    for (kk = 0; kk != v452; ++kk)
    {
      v454 = *(v472 + 40);
      if (v454 <= kk)
      {
        re::internal::assertLog(6, v343, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, kk, v454);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v465, v468);
        __break(1u);
LABEL_622:
        v524.i64[0] = 0;
        v566 = 0u;
        memset(&buf, 0, sizeof(buf));
        v460 = MEMORY[0x1E69E9C10];
        v461 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v533 = 136315906;
        *&v533[4] = "operator[]";
        *&v533[12] = 1024;
        if (v461)
        {
          v462 = 3;
        }

        else
        {
          v462 = 2;
        }

        *&v533[14] = 866;
        *&v533[18] = 2048;
        *&v533[20] = p_buf;
        *&v533[28] = 2048;
        *&v533[30] = v103;
        _os_log_send_and_compose_impl(v462, &v524, &buf, 80, &dword_1E1C61000, v460, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v533, 38, v469, v470);
        _os_crash_msg();
        __break(1u);
      }

      p_buf = kk >> 2;
      v103 = *(v472 + 8);
      if (v103 <= kk >> 2)
      {
        goto LABEL_622;
      }

      v455 = *(v472 + 32);
      if (*(v472 + 16))
      {
        v455 = v472 + 24;
      }

      v456 = *(v455 + 8 * p_buf) + 40 * (kk & 3);
      v457 = *(v456 + 16);
      if (v457)
      {
        v458 = *(v456 + 32);
        v103 = v458 + 736 * v457;
        do
        {
          if (*&v557[16])
          {
            p_buf = *&v557[32] + 640;
            v459 = 688 * *&v557[16];
            do
            {
              if (*(p_buf + 40) == *(v458 + 512) && *p_buf)
              {
                re::DynamicArray<re::MeshScene>::add(p_buf, v458);
              }

              p_buf += 688;
              v459 -= 688;
            }

            while (v459);
          }

          v458 += 736;
        }

        while (v458 != v103);
      }
    }
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v473 + 40, v557);
  return re::DynamicArray<re::FilterView>::deinit(v557);
}

uint64_t *re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void re::Projection::setFovX(re::Projection *this, float a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  v7 = (v3 - v4) / (v5 - v6);
  v8 = (v3 + v4) * 0.5;
  v9 = (v5 + v6) * 0.5;
  v10 = *(this + 1);
  v11 = tanf(a2 * 0.5) * v10;
  *(this + 5) = v9 + (v11 / v7);
  *(this + 6) = v9 - (v11 / v7);
  *(this + 3) = v8 - v11;
  *(this + 4) = v8 + v11;
  re::Projection::cullingProjectionMatrix(v14, this);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v12 = v14[1];
  *(this + 6) = v14[0];
  *(this + 7) = v12;
  v13 = v14[3];
  *(this + 8) = v14[2];
  *(this + 9) = v13;
  if ((*(this + 160) & 1) == 0)
  {
    re::Projection::decompose(this, v14);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::ShadowView>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::ShadowView>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ShadowView>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 656 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v16;
  v18 = *(a2 + 96);
  v17 = *(a2 + 112);
  v19 = *(a2 + 80);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 96) = v18;
  *(v11 + 112) = v17;
  *(v11 + 80) = v19;
  *(v11 + 64) = *(a2 + 64);
  LODWORD(v13) = *(a2 + 144);
  *(v11 + 144) = v13;
  if (v13 == 1)
  {
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 208);
    *(v11 + 192) = *(a2 + 192);
    *(v11 + 208) = v22;
    *(v11 + 160) = v20;
    *(v11 + 176) = v21;
  }

  v23 = *(a2 + 224);
  *(v11 + 224) = v23;
  if (v23 == 1)
  {
    v24 = *(a2 + 240);
    v25 = *(a2 + 256);
    v26 = *(a2 + 288);
    *(v11 + 272) = *(a2 + 272);
    *(v11 + 288) = v26;
    *(v11 + 240) = v24;
    *(v11 + 256) = v25;
  }

  v27 = *(a2 + 304);
  *(v11 + 320) = *(a2 + 320);
  *(v11 + 304) = v27;
  v28 = *(a2 + 336);
  v29 = *(a2 + 352);
  v30 = *(a2 + 384);
  *(v11 + 368) = *(a2 + 368);
  *(v11 + 384) = v30;
  *(v11 + 336) = v28;
  *(v11 + 352) = v29;
  v32 = *(a2 + 432);
  v31 = *(a2 + 448);
  v33 = *(a2 + 416);
  *(v11 + 464) = *(a2 + 464);
  *(v11 + 432) = v32;
  *(v11 + 448) = v31;
  *(v11 + 416) = v33;
  *(v11 + 400) = *(a2 + 400);
  v34 = *(a2 + 480);
  *(v11 + 480) = v34;
  if (v34 == 1)
  {
    v35 = *(a2 + 496);
    v36 = *(a2 + 512);
    v37 = *(a2 + 544);
    *(v11 + 528) = *(a2 + 528);
    *(v11 + 544) = v37;
    *(v11 + 496) = v35;
    *(v11 + 512) = v36;
  }

  v38 = *(a2 + 560);
  *(v11 + 560) = v38;
  if (v38 == 1)
  {
    v39 = *(a2 + 576);
    v40 = *(a2 + 592);
    v41 = *(a2 + 624);
    *(v11 + 608) = *(a2 + 608);
    *(v11 + 624) = v41;
    *(v11 + 576) = v39;
    *(v11 + 592) = v40;
  }

  v42 = *(a2 + 640);
  *(v11 + 640) = v42;
  if (v42 == 1)
  {
    *(v11 + 641) = *(a2 + 641);
  }

  v43 = *(a2 + 644);
  *(v11 + 644) = v43;
  if (v43 == 1)
  {
    *(v11 + 648) = *(a2 + 648);
  }

  *(v11 + 652) = *(a2 + 652);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

re::ShadowView *re::ShadowView::ShadowView(re::ShadowView *this, re::Allocator *a2)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = a2;
  *(this + 1) = 0;
  re::DynamicString::setCapacity(this, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0x3F80000000000000;
  *(this + 16) = 0;
  *(this + 68) = xmmword_1E30806D0;
  *(this + 84) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 92) = 0;
  *(this + 6) = xmmword_1E30476A0;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 64) = 0;
  *(this + 144) = 0;
  *(this + 224) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 162) = -1;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 0;
  *(this + 404) = xmmword_1E30806D0;
  *(this + 420) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 428) = 0;
  *(this + 27) = xmmword_1E30476A0;
  *(this + 112) = 1;
  *(this + 57) = 0;
  *(this + 232) = 0;
  *(this + 480) = 0;
  *(this + 560) = 0;
  *(this + 640) = 0;
  *(this + 644) = 0;
  *(this + 652) = 0;
  return this;
}

void re::Projection::setFovY(re::Projection *this, float a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  v7 = (v3 - v4) / (v5 - v6);
  v8 = (v3 + v4) * 0.5;
  v9 = (v5 + v6) * 0.5;
  v10 = *(this + 1);
  v11 = tanf(a2 * 0.5) * v10;
  *(this + 5) = v9 + v11;
  *(this + 6) = v9 - v11;
  *(this + 3) = v8 - (v11 * v7);
  *(this + 4) = v8 + (v11 * v7);
  re::Projection::cullingProjectionMatrix(v14, this);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v12 = v14[1];
  *(this + 6) = v14[0];
  *(this + 7) = v12;
  v13 = v14[3];
  *(this + 8) = v14[2];
  *(this + 9) = v13;
  if ((*(this + 160) & 1) == 0)
  {
    re::Projection::decompose(this, v14);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::FilterView>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::FilterView>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::FilterView>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 688 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v16;
  v18 = *(a2 + 96);
  v17 = *(a2 + 112);
  v19 = *(a2 + 80);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 96) = v18;
  *(v11 + 112) = v17;
  *(v11 + 80) = v19;
  *(v11 + 64) = *(a2 + 64);
  LODWORD(v13) = *(a2 + 144);
  *(v11 + 144) = v13;
  if (v13 == 1)
  {
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 208);
    *(v11 + 192) = *(a2 + 192);
    *(v11 + 208) = v22;
    *(v11 + 160) = v20;
    *(v11 + 176) = v21;
  }

  v23 = *(a2 + 224);
  *(v11 + 224) = v23;
  if (v23 == 1)
  {
    v24 = *(a2 + 240);
    v25 = *(a2 + 256);
    v26 = *(a2 + 288);
    *(v11 + 272) = *(a2 + 272);
    *(v11 + 288) = v26;
    *(v11 + 240) = v24;
    *(v11 + 256) = v25;
  }

  v27 = *(a2 + 304);
  *(v11 + 320) = *(a2 + 320);
  *(v11 + 304) = v27;
  v28 = *(a2 + 336);
  v29 = *(a2 + 352);
  v30 = *(a2 + 384);
  *(v11 + 368) = *(a2 + 368);
  *(v11 + 384) = v30;
  *(v11 + 336) = v28;
  *(v11 + 352) = v29;
  v32 = *(a2 + 432);
  v31 = *(a2 + 448);
  v33 = *(a2 + 416);
  *(v11 + 464) = *(a2 + 464);
  *(v11 + 432) = v32;
  *(v11 + 448) = v31;
  *(v11 + 416) = v33;
  *(v11 + 400) = *(a2 + 400);
  v34 = *(a2 + 480);
  *(v11 + 480) = v34;
  if (v34 == 1)
  {
    v35 = *(a2 + 496);
    v36 = *(a2 + 512);
    v37 = *(a2 + 544);
    *(v11 + 528) = *(a2 + 528);
    *(v11 + 544) = v37;
    *(v11 + 496) = v35;
    *(v11 + 512) = v36;
  }

  v38 = *(a2 + 560);
  *(v11 + 560) = v38;
  if (v38 == 1)
  {
    v39 = *(a2 + 576);
    v40 = *(a2 + 592);
    v41 = *(a2 + 624);
    *(v11 + 608) = *(a2 + 608);
    *(v11 + 624) = v41;
    *(v11 + 576) = v39;
    *(v11 + 592) = v40;
  }

  *(v11 + 672) = 0;
  *(v11 + 640) = 0;
  *(v11 + 656) = 0;
  *(v11 + 648) = 0;
  *(v11 + 664) = 0;
  *(v11 + 640) = *(a2 + 640);
  *(a2 + 640) = 0;
  *(v11 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  v42 = *(v11 + 656);
  *(v11 + 656) = *(a2 + 656);
  *(a2 + 656) = v42;
  v43 = *(v11 + 672);
  *(v11 + 672) = *(a2 + 672);
  *(a2 + 672) = v43;
  ++*(a2 + 664);
  ++*(v11 + 664);
  *(v11 + 680) = *(a2 + 680);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::FilterView::FilterView(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = a2;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3F80000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = xmmword_1E30806D0;
  *(a1 + 84) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 92) = 0;
  *(a1 + 96) = xmmword_1E30476A0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 224) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 324) = -1;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 404) = xmmword_1E30806D0;
  *(a1 + 420) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 428) = 0;
  *(a1 + 432) = xmmword_1E30476A0;
  *(a1 + 448) = 1;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 560) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 640) = a2;
  re::DynamicArray<re::MeshScene>::setCapacity((a1 + 640), 0);
  ++*(a1 + 664);
  *(a1 + 680) = 0;
  return a1;
}

__n128 re::BucketArray<re::LightContext,16ul>::add(uint64_t a1, __n128 *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 16 * v5)
  {
    re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(a1, (v4 + 16) >> 4);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 4)
  {
    v25 = 0;
    memset(v34, 0, sizeof(v34));
    v22 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 858;
    v30 = 2048;
    v31 = v4 >> 4;
    v32 = 2048;
    v33 = v5;
    _os_log_send_and_compose_impl(v23, &v25, v34, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 168 * (v4 & 0xF));
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = 0;
  v8[1].n128_u64[0] = 0;
  v9 = a2->n128_u64[1];
  v8->n128_u64[0] = a2->n128_u64[0];
  v8->n128_u64[1] = v9;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  v10 = v8[1].n128_u64[0];
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v10;
  v8[1].n128_u64[1] = 0;
  v8[2].n128_u64[0] = 0;
  v8[2].n128_u64[1] = 0;
  v11 = a2[2].n128_u64[0];
  v8[1].n128_u64[1] = a2[1].n128_u64[1];
  v8[2].n128_u64[0] = v11;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  v12 = v8[2].n128_u64[1];
  v8[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v12;
  v8[3].n128_u64[0] = 0;
  v8[3].n128_u64[1] = 0;
  v8[4].n128_u64[0] = 0;
  v13 = a2[3].n128_u64[1];
  v8[3].n128_u64[0] = a2[3].n128_u64[0];
  v8[3].n128_u64[1] = v13;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  v14 = v8[4].n128_u64[0];
  v8[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v14;
  v8[4].n128_u64[1] = 0;
  v8[5].n128_u64[0] = 0;
  v8[5].n128_u64[1] = 0;
  v15 = a2[5].n128_u64[0];
  v8[4].n128_u64[1] = a2[4].n128_u64[1];
  v8[5].n128_u64[0] = v15;
  a2[4].n128_u64[1] = 0;
  a2[5].n128_u64[0] = 0;
  v16 = v8[5].n128_u64[1];
  v8[5].n128_u64[1] = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = v16;
  v8[6].n128_u64[0] = 0;
  v8[6].n128_u64[1] = 0;
  v8[7].n128_u64[0] = 0;
  v17 = a2[6].n128_u64[1];
  v8[6].n128_u64[0] = a2[6].n128_u64[0];
  v8[6].n128_u64[1] = v17;
  a2[6].n128_u64[0] = 0;
  a2[6].n128_u64[1] = 0;
  v18 = v8[7].n128_u64[0];
  v8[7].n128_u64[0] = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = v18;
  v8[7].n128_u64[1] = 0;
  v8[8].n128_u64[0] = 0;
  v8[8].n128_u64[1] = 0;
  v19 = a2[8].n128_u64[0];
  v8[7].n128_u64[1] = a2[7].n128_u64[1];
  v8[8].n128_u64[0] = v19;
  a2[7].n128_u64[1] = 0;
  a2[8].n128_u64[0] = 0;
  v20 = v8[8].n128_u64[1];
  v8[8].n128_u64[1] = a2[8].n128_u64[1];
  a2[8].n128_u64[1] = v20;
  result = a2[9];
  v8[10].n128_u8[0] = a2[10].n128_u8[0];
  v8[9] = result;
  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 72 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 72 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 72 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::LightContextBuilder::Result::Result(uint64_t a1, re::Allocator *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  re::DynamicArray<re::ShadowView>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = a2;
  re::DynamicArray<re::FilterView>::setCapacity((a1 + 40), 0);
  ++*(a1 + 64);
  re::LightContexts::LightContexts((a1 + 80), a2);
  return a1;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (!*(a1 + 2876))
  {
    v8 = (a1 + 16);
    v7 = *(a1 + 16);
    if (!v7)
    {
LABEL_20:
      LOWORD(v26) = *a2;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v33 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v27, a3);
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v40 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v34, a3 + 56);
      v41 = 0;
      v42 = 0;
      v43 = 1;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v47 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v41, a3 + 112);
      v48 = 0;
      v49 = 0;
      v50 = 1;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      v54 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v48, a3 + 168);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v61 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v55, a3 + 224);
      v62 = 0;
      v63 = 0;
      v64 = 1;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v68 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v62, a3 + 280);
      v69 = *(a3 + 336);
      if (*v8 < 8uLL)
      {
        v17 = a1 + 32 + 352 * *v8;
        *v17 = v26;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 1;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = 0;
        *(v17 + 56) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 8, &v27);
        *(v17 + 64) = 0;
        *(v17 + 72) = 0;
        *(v17 + 80) = 1;
        *(v17 + 96) = 0;
        *(v17 + 104) = 0;
        *(v17 + 88) = 0;
        *(v17 + 112) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 64, &v34);
        *(v17 + 120) = 0;
        *(v17 + 128) = 0;
        *(v17 + 136) = 1;
        *(v17 + 152) = 0;
        *(v17 + 160) = 0;
        *(v17 + 144) = 0;
        *(v17 + 168) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 120, &v41);
        *(v17 + 176) = 0;
        *(v17 + 184) = 0;
        *(v17 + 192) = 1;
        *(v17 + 208) = 0;
        *(v17 + 216) = 0;
        *(v17 + 200) = 0;
        *(v17 + 224) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 176, &v48);
        *(v17 + 232) = 0;
        *(v17 + 240) = 0;
        v17 += 232;
        *(v17 + 16) = 1;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0;
        *(v17 + 24) = 0;
        *(v17 + 48) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17, &v55);
        *(v17 + 56) = 0;
        *(v17 + 64) = 0;
        *(v17 + 72) = 1;
        *(v17 + 88) = 0;
        *(v17 + 96) = 0;
        *(v17 + 80) = 0;
        *(v17 + 104) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 56, &v62);
        *(v17 + 112) = v69;
        ++*(a1 + 16);
        ++*(a1 + 24);
        re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v62);
        if (v62)
        {
          v18 = v64;
          if ((v64 & 1) == 0)
          {
            (*(*v62 + 40))();
            v18 = v64;
          }

          v62 = 0;
          v63 = 0;
          v64 = (v18 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v55);
        if (v55)
        {
          v19 = v57;
          if ((v57 & 1) == 0)
          {
            (*(*v55 + 40))();
            v19 = v57;
          }

          v55 = 0;
          v56 = 0;
          v57 = (v19 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v48);
        if (v48)
        {
          v20 = v50;
          if ((v50 & 1) == 0)
          {
            (*(*v48 + 40))();
            v20 = v50;
          }

          v48 = 0;
          v49 = 0;
          v50 = (v20 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v41);
        if (v41)
        {
          v21 = v43;
          if ((v43 & 1) == 0)
          {
            (*(*v41 + 40))();
            v21 = v43;
          }

          v41 = 0;
          v42 = 0;
          v43 = (v21 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v34);
        if (v34)
        {
          v22 = v36;
          if ((v36 & 1) == 0)
          {
            (*(*v34 + 40))();
            v22 = v36;
          }

          v34 = 0;
          v35 = 0;
          v36 = (v22 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v27);
        if (v27 && (v29 & 1) == 0)
        {
          (*(*v27 + 40))();
        }

        if (*v8)
        {
          return (a1 + 32 + 352 * (*v8 - 1) + 8);
        }

        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *v8 - 1, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v24, v25);
        __break(1u);
      }

      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      return result;
    }

    v9 = 352 * v7;
    result = (a1 + 40);
    v10 = 352 * v7;
    do
    {
      if (*(result - 4) == *a2)
      {
        return result;
      }

      result = (result + 352);
      v10 -= 352;
    }

    while (v10);
    if ((v7 & 0xFFFFFFF8) == 0)
    {
      goto LABEL_20;
    }

    if (!*(a1 + 2848))
    {
      v11 = *a1;
      if (!*a1)
      {
      }

      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(a1 + 2848, v11, 16);
      if (!*v8)
      {
        goto LABEL_19;
      }

      v9 = 352 * *v8;
    }

    v12 = 0;
    do
    {
      v13 = a1 + v12;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v14 = 0xBF58476D1CE4E5B9 * *(a1 + v12 + 32);
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(&v26, a1 + 2848, (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31));
      if (HIDWORD(v27) == 0x7FFFFFFF)
      {
        v15 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1 + 2848, v27, v26);
        *(v15 + 4) = *(v13 + 32);
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *(v15 + 24) = 1;
        *(v15 + 56) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 32) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 8, v13 + 40);
        *(v15 + 64) = 0;
        *(v15 + 72) = 0;
        *(v15 + 80) = 1;
        *(v15 + 96) = 0;
        *(v15 + 104) = 0;
        *(v15 + 88) = 0;
        *(v15 + 112) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 64, v13 + 96);
        *(v15 + 120) = 0;
        *(v15 + 128) = 0;
        *(v15 + 136) = 1;
        *(v15 + 152) = 0;
        *(v15 + 160) = 0;
        *(v15 + 144) = 0;
        *(v15 + 168) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 120, v13 + 152);
        *(v15 + 176) = 0;
        *(v15 + 184) = 0;
        *(v15 + 192) = 1;
        *(v15 + 208) = 0;
        *(v15 + 216) = 0;
        *(v15 + 200) = 0;
        *(v15 + 224) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 176, v13 + 208);
        *(v15 + 232) = 0;
        *(v15 + 240) = 0;
        v15 += 232;
        *(v15 + 16) = 1;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15, v13 + 264);
        *(v15 + 56) = 0;
        *(v15 + 64) = 0;
        *(v15 + 72) = 1;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        *(v15 + 80) = 0;
        *(v15 + 104) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 56, v13 + 320);
        *(v15 + 112) = *(v13 + 376);
        ++*(a1 + 2888);
      }

      v12 += 352;
    }

    while (v9 != v12);
LABEL_19:
    re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((a1 + 16));
  }

  return re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::add(a1 + 2848, a2, a3);
}

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::add(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(&v10, a1, v6 ^ (v6 >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 352 * HIDWORD(v11) + 8;
  }

  v7 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1, v11, v10);
  *(v7 + 4) = *a2;
  *(v7 + 8) = 0;
  v8 = v7 + 8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 8, a3);
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 88) = 0;
  *(v7 + 112) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 64, a3 + 56);
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 120, a3 + 112);
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 1;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 200) = 0;
  *(v7 + 224) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 176, a3 + 168);
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  v7 += 232;
  *(v7 + 16) = 1;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 48) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7, a3 + 224);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 104) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 56, a3 + 280);
  *(v7 + 112) = *(a3 + 336);
  ++*(a1 + 40);
  return v8;
}

void re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 352 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *a2;
  v4 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v3 = a3 % *(a2 + 24);
  v5 = *(*(a2 + 8) + 4 * v3);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  v7 = 0xBF58476D1CE4E5B9 * *(v6 + 352 * v5 + 4);
  if (((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31)) == a3)
  {
    v4 = *(*(a2 + 8) + 4 * v3);
LABEL_5:
    v5 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v6 + 352 * v5) & 0x7FFFFFFF;
  v4 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      v10 = 0xBF58476D1CE4E5B9 * *(v6 + 352 * v8 + 4);
      if (((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31)) == a3)
      {
        break;
      }

      v8 = *(v6 + 352 * v9) & 0x7FFFFFFF;
      v5 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v5 = v9;
        goto LABEL_6;
      }
    }

    v4 = v9;
  }

LABEL_6:
  *result = a3;
  *(result + 8) = v3;
  *(result + 12) = v4;
  *(result + 16) = v5;
  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v19 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1, (v18 ^ (v18 >> 31)) % *(a1 + 24), v18 ^ (v18 >> 31));
                *(v19 + 4) = *(v13 + 4);
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 1;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 8, v13 + 8);
                *(v19 + 64) = 0;
                *(v19 + 72) = 0;
                *(v19 + 80) = 1;
                *(v19 + 96) = 0;
                *(v19 + 104) = 0;
                *(v19 + 88) = 0;
                *(v19 + 112) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 64, v13 + 64);
                *(v19 + 120) = 0;
                *(v19 + 128) = 0;
                *(v19 + 136) = 1;
                *(v19 + 152) = 0;
                *(v19 + 160) = 0;
                *(v19 + 144) = 0;
                *(v19 + 168) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 120, v13 + 120);
                *(v19 + 176) = 0;
                *(v19 + 184) = 0;
                *(v19 + 192) = 1;
                *(v19 + 208) = 0;
                *(v19 + 216) = 0;
                *(v19 + 200) = 0;
                *(v19 + 224) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 176, v13 + 176);
                *(v19 + 232) = 0;
                *(v19 + 240) = 0;
                v19 += 232;
                *(v19 + 16) = 1;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 48) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19, v13 + 232);
                *(v19 + 56) = 0;
                *(v19 + 64) = 0;
                *(v19 + 72) = 1;
                *(v19 + 88) = 0;
                *(v19 + 96) = 0;
                *(v19 + 80) = 0;
                *(v19 + 104) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 56, v13 + 288);
                *(v19 + 112) = *(v13 + 344);
              }

              ++v17;
              v13 += 352;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 352 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 352 * v4;
}

uint64_t re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a1 + 8))
    {
      re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(v7, a1);
    }

    else
    {
      v7[0] = *a1;
      *(a1 + 16) = v4 + 2;
      v8 = 3;
    }
  }

  else
  {
    v8 = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v7, a1);
  }

  re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(a2, v7);
  result = v7[0];
  if (v7[0] && (v8 & 1) == 0)
  {
    result = (*(*v7[0] + 40))();
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 160, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}