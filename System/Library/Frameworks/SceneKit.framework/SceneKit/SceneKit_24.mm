void C3DParametricGeometryMaterialDidChange(uint64_t result)
{
  if (*(result + 312) == C3DBoxCreateMesh)
  {
    __Invalidate(result);
    *(result + 308) = -1;
  }
}

void __Invalidate(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
  }

  C3DGeometrySetMesh(a1, 0);
}

uint64_t C3DParametricGeometryGetType(uint64_t a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  C3DParametricGeometryGetCallbacks(a1, a2, v5);
  if (!memcmp(v5, kC3DBoxCallBacks, 0x30uLL))
  {
    return 1;
  }

  if (!memcmp(v5, kC3DPyramidCallBacks, 0x30uLL))
  {
    return 2;
  }

  if (!memcmp(v5, kC3DCylinderCallBacks, 0x30uLL))
  {
    return 4;
  }

  if (!memcmp(v5, kC3DConeCallBacks, 0x30uLL))
  {
    return 5;
  }

  if (!memcmp(v5, kC3DTubeCallBacks, 0x30uLL))
  {
    return 6;
  }

  if (!memcmp(v5, kC3DCapsuleCallBacks, 0x30uLL))
  {
    return 7;
  }

  if (!memcmp(v5, kC3DTorusCallBacks, 0x30uLL))
  {
    return 8;
  }

  if (!memcmp(v5, kC3DSphereCallBacks, 0x30uLL))
  {
    return 3;
  }

  result = memcmp(v5, kC3DPlaneCallBacks, 0x30uLL);
  if (result)
  {
    v4 = scn_default_log(result, v3);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DParametricGeometryGetType_cold_1(v4);
      return 0;
    }
  }

  return result;
}

__n128 C3DParametricGeometryGetCallbacks@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 328);
  *a3 = *(a1 + 312);
  *(a3 + 16) = v13;
  result = *(a1 + 344);
  *(a3 + 32) = result;
  return result;
}

uint64_t C3DParametricGeometryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DParametricGeometryGetTypeID_onceToken != -1)
  {
    C3DParametricGeometryGetTypeID_cold_1();
  }

  return C3DParametricGeometryGetTypeID_typeID;
}

double __C3DParametricGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParametricGeometryGetTypeID_typeID = v0;
  TypeID = C3DGeometryGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"chamferRadius", 228, 1, 0);
  C3DModelPathResolverRegisterProperty(@"chamferSegmentCount", 276, 2, 0);
  C3DModelPathResolverRegisterProperty(@"height", 220, 1, 0);
  C3DModelPathResolverRegisterProperty(@"heightSegmentCount", 268, 2, 0);
  C3DModelPathResolverRegisterProperty(@"length", 224, 1, 0);
  C3DModelPathResolverRegisterProperty(@"lengthSegmentCount", 272, 2, 0);
  C3DModelPathResolverRegisterProperty(@"width", 216, 1, 0);
  C3DModelPathResolverRegisterProperty(@"widthSegmentCount", 264, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v5 = C3DGeometryGetTypeID(v3, v4);
  C3DModelPathResolverRegisterClassBegin(v0, v5);
  C3DModelPathResolverRegisterProperty(@"capRadius", 232, 1, 0);
  C3DModelPathResolverRegisterProperty(@"capSegmentCount", 288, 2, 0);
  C3DModelPathResolverRegisterProperty(@"radialSegmentCount", 284, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v8 = C3DGeometryGetTypeID(v6, v7);
  C3DModelPathResolverRegisterClassBegin(v0, v8);
  C3DModelPathResolverRegisterProperty(@"bottomRadius", 240, 1, 0);
  C3DModelPathResolverRegisterProperty(@"topRadius", 236, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  v11 = C3DGeometryGetTypeID(v9, v10);
  C3DModelPathResolverRegisterClassBegin(v0, v11);
  C3DModelPathResolverRegisterProperty(@"radialSpan", 260, 1, 0);
  C3DModelPathResolverRegisterProperty(@"radius", 232, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  v14 = C3DGeometryGetTypeID(v12, v13);
  C3DModelPathResolverRegisterClassBegin(v0, v14);
  C3DModelPathResolverRegisterProperty(@"cornerRadius", 228, 1, 0);
  C3DModelPathResolverRegisterProperty(@"cornerSegmentCount", 276, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v17 = C3DGeometryGetTypeID(v15, v16);
  C3DModelPathResolverRegisterClassBegin(v0, v17);
  C3DModelPathResolverRegisterClassEnd();
  v20 = C3DGeometryGetTypeID(v18, v19);
  C3DModelPathResolverRegisterClassBegin(v0, v20);
  C3DModelPathResolverRegisterProperty(@"segmentCount", 280, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v23 = C3DGeometryGetTypeID(v21, v22);
  C3DModelPathResolverRegisterClassBegin(v0, v23);
  C3DModelPathResolverRegisterProperty(@"pipeRadius", 256, 1, 0);
  C3DModelPathResolverRegisterProperty(@"pipeSegmentCount", 296, 2, 0);
  C3DModelPathResolverRegisterProperty(@"ringRadius", 252, 1, 0);
  C3DModelPathResolverRegisterProperty(@"ringSegmentCount", 292, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v26 = C3DGeometryGetTypeID(v24, v25);
  C3DModelPathResolverRegisterClassBegin(v0, v26);
  C3DModelPathResolverRegisterProperty(@"innerRadius", 244, 1, 0);
  C3DModelPathResolverRegisterProperty(@"outerRadius", 248, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740800 = kC3DC3DParametricGeometryContextClassSerializable;
  unk_281740810 = *&off_282DC6AD8;
  unk_2817407C0 = kC3DC3DParametricGeometryContextClassBoundingVolumes;
  xmmword_2817407A8 = kC3DC3DParametricGeometryContextClassAnimatable;
  result = *&kC3DC3DParametricGeometryContextClassSceneLink;
  unk_2817407D0 = kC3DC3DParametricGeometryContextClassSceneLink;
  unk_2817407E0 = unk_282DC6B18;
  qword_2817407F0 = qword_282DC6B28;
  qword_281740820 = _C3DParametricGeometryCreateCopy;
  return result;
}

float64_t C3DPlaneGetBoundingBoxForPlaneParameters(float32x2_t *a1, uint64_t a2, float64x2_t a3, float64_t a4)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    a3.f64[1] = a4;
    __asm { FMOV            V1.2D, #-0.5 }

    a1[1].i32[0] = 0;
    *a1 = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    __asm { FMOV            V1.2D, #0.5 }

    *&a3.f64[0] = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    *(a2 + 8) = 0;
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

float32x2_t C3DPlaneGetBoundingBox(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[27];
    a2[1].i32[0] = 0;
    *a2 = vmul_f32(v4, 0xBF000000BF000000);
    result = vmul_f32(v4, 0x3F0000003F000000);
    a3[1].i32[0] = 0;
    *a3 = result;
  }

  return result;
}

double C3DParametricGeometryGetFloatValue(uint64_t a1, int a2)
{
  v2 = _C3DParametricGeometryFloatPtr(a1, a2);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

BOOL C3DPlaneGetBoundingSphereForPlaneParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = sqrt(a3 * a3 + a2 * a2) * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DPlaneGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(*(a1 + 220) * *(a1 + 220) + *(a1 + 216) * *(a1 + 216)) * 0.5;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DPlaneGeneratePointsCallBack(void *a1, uint64_t a2, unsigned int *a3, float64x2_t *a4, _OWORD *a5, unsigned int a6)
{
  v10 = a2;
  v12 = a1[27];
  ChamferRadius = C3DParametricGeometryGetChamferRadius(a1, a2);
  if (a6 >= 2)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }
  }

  else
  {
    v14 = vcvtq_f64_f32(v12);
    __asm { FMOV            V2.2D, #0.5 }

    v20 = vmulq_f64(v14, _Q2);
    if (ChamferRadius <= 0.0)
    {
      if (v10 >= 1)
      {
        v32 = vnegq_f64(v20);
        v33 = vdupq_n_s64(0x3EF0001000100010uLL);
        v34 = a5;
        do
        {
          v35 = 214013 * *a3 + 2531011;
          *a3 = 214013 * v35 + 2531011;
          v36.i32[0] = v35;
          v36.i32[1] = 214013 * v35 + 2531011;
          v37 = vshr_n_u32(v36, 0x10uLL);
          v38.i64[0] = v37.u32[0];
          v38.i64[1] = v37.u32[1];
          v39 = vmulq_f64(vcvtq_f64_u64(v38), v33);
          *&v39.f64[0] = vcvt_f32_f64(vmlaq_f64(v32, v14, v39));
          *a4 = v39;
          if (a5)
          {
            *v34 = xmmword_21C27F600;
          }

          ++v34;
          ++a4;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v21 = ChamferRadius;
      if (v20.f64[0] >= v20.f64[1])
      {
        v22 = v20.f64[1];
      }

      else
      {
        v22 = v20.f64[0];
      }

      if (v22 <= v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (v10 >= 1)
      {
        v24 = 0;
        v25 = -v20.f64[0];
        v20.f64[0] = v23 - v20.f64[0];
        do
        {
          v26 = *a3;
          do
          {
            v27 = 214013 * v26 + 2531011;
            v28 = v25 + HIWORD(v27) * 0.0000152590219 * v14.f64[0];
            v26 = 214013 * v27 + 2531011;
            v29 = HIWORD(v26) * 0.0000152590219 * v14.f64[1] - v20.f64[1];
            v30 = v20.f64[0] + fabsf(v28);
            if (v30 <= 0.0)
            {
              break;
            }

            v31 = v23 - v20.f64[1] + fabsf(v29);
            if (v31 <= 0.0)
            {
              break;
            }
          }

          while (v31 * v31 + v30 * v30 > v23 * v23);
          *a3 = v26;
          a4[v24] = __PAIR64__(LODWORD(v29), LODWORD(v28));
          if (a5)
          {
            a5[v24] = xmmword_21C27F600;
          }

          ++v24;
        }

        while (v24 != v10);
      }
    }
  }
}

float C3DParametricGeometryGetChamferRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 228);
}

uint64_t C3DPlaneSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 3, 0.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetIntValue(a1, 14, 10);
}

uint64_t C3DPlaneHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 0;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[57];
  a2[5] = a1[66];
  a2[6] = a1[67];
  a2[7] = a1[69];
  a2[8] = a1[77];
  return 36;
}

float64_t C3DBoxGetBoundingBoxForBoxParameters(float32x2_t *a1, uint64_t a2, float64x2_t a3, float64_t a4, double a5)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    a3.f64[1] = a4;
    __asm { FMOV            V1.2D, #-0.5 }

    v10 = a5 * -0.5;
    a1[1].f32[0] = v10;
    *a1 = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    __asm { FMOV            V1.2D, #0.5 }

    *&a3.f64[0] = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    *_Q1.f64 = a5 * 0.5;
    *(a2 + 8) = LODWORD(_Q1.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

float32_t C3DBoxGetBoundingBox(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[28].f32[0];
    v5 = a1[27];
    a2[1].f32[0] = v4 * -0.5;
    *a2 = vmul_f32(v5, 0xBF000000BF000000);
    result = v4 * 0.5;
    a3[1].f32[0] = result;
    *a3 = vmul_f32(v5, 0x3F0000003F000000);
  }

  return result;
}

BOOL C3DBoxGetBoundingSphereForBoxParameters(_OWORD *a1, double a2, double a3, double a4)
{
  if (a1)
  {
    v4 = sqrt(a3 * a3 + a2 * a2 + a4 * a4) * 0.5;
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL C3DBoxGetBoundingSphere(float *a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(a1[55] * a1[55] + a1[54] * a1[54] + a1[56] * a1[56]) * 0.5;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DBoxGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v10 = a2;
  Width = C3DParametricGeometryGetWidth(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v13);
  Length = C3DParametricGeometryGetLength(a1, v15);
  ChamferRadius = C3DParametricGeometryGetChamferRadius(a1, v17);
  v23.f32[0] = Width * 0.5;
  v24 = Height * 0.5;
  v25.f32[0] = Length * 0.5;
  if ((Width * 0.5) >= (Height * 0.5))
  {
    v26 = Height * 0.5;
  }

  else
  {
    v26 = Width * 0.5;
  }

  if (v26 >= v25.f32[0])
  {
    v26 = Length * 0.5;
  }

  if (ChamferRadius >= v26)
  {
    *v19.i32 = v26;
  }

  else
  {
    *v19.i32 = ChamferRadius;
  }

  if (a6 == 2)
  {

    C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
  }

  else
  {
    v27 = v23;
    v27.f32[1] = Height * 0.5;
    v27.f32[2] = Length * 0.5;
    v28 = *v19.i32;
    v29 = v28 * v28;
    v30 = vsubq_f32(v27, vdupq_lane_s32(v19, 0));
    if (a6 == 1)
    {
      v70 = Width;
      v71 = Height;
      v72 = Length;
      if (*v19.i32 <= 0.0)
      {
        if (v10 >= 1)
        {
          v87 = -v23.f32[0];
          v88 = -v25.f32[0];
          v89 = a5;
          do
          {
            v90 = 214013 * *a3 + 2531011;
            *v25.i64 = HIWORD(v90) * 0.0000152590219;
            v91 = 214013 * v90 + 2531011;
            v92 = HIWORD(v91) * 0.0000152590219 * v71 - v24;
            v93 = 214013 * v91 + 2531011;
            *a3 = v93;
            v25.f32[0] = v87 + *v25.i64 * v70;
            *&v92 = v92;
            v94 = v88 + HIWORD(v93) * 0.0000152590219 * v72;
            v25.i32[1] = LODWORD(v92);
            v25.f32[2] = v94;
            *a4 = v25;
            if (a5)
            {
              v95 = vmulq_f32(v25, v25);
              *&v96 = v95.f32[2] + vaddv_f32(*v95.f32);
              *v95.f32 = vrsqrte_f32(v96);
              *v95.f32 = vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32)));
              v25 = vmulq_n_f32(v25, vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32))).f32[0]);
              *v89 = v25;
            }

            ++v89;
            ++a4;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10 >= 1)
      {
        v73 = 0;
        v74 = -v24;
        v75 = -v25.f32[0];
        do
        {
          v76 = *a3;
          do
          {
            v77 = 214013 * v76 + 2531011;
            v21.f32[0] = HIWORD(v77) * 0.0000152590219 * v70 - v23.f32[0];
            v78 = 214013 * v77 + 2531011;
            v79 = v74 + HIWORD(v78) * 0.0000152590219 * v71;
            v76 = 214013 * v78 + 2531011;
            v80 = v75 + HIWORD(v76) * 0.0000152590219 * v72;
            v21.f32[1] = v79;
            v21.f32[2] = v80;
            v81 = vsubq_f32(vabsq_f32(v21), v30);
            v82 = v81.f32[1];
            v83 = v81.f32[1] > 0.0;
            if (v81.f32[0] > 0.0)
            {
              ++v83;
            }

            if (v81.f32[2] > 0.0)
            {
              ++v83;
            }

            if (v83 == 2)
            {
              if (v81.f32[0] <= v81.f32[1])
              {
                v81.f32[0] = v81.f32[1];
              }

              if (v81.f32[1] <= v81.f32[2])
              {
                v82 = v81.f32[2];
              }

              v84 = (v82 * v82) + (v81.f32[0] * v81.f32[0]);
            }

            else
            {
              if (v83 != 3)
              {
                break;
              }

              v84 = ((v81.f32[1] * v81.f32[1]) + (v81.f32[0] * v81.f32[0])) + (v81.f32[2] * v81.f32[2]);
            }
          }

          while (v29 < v84);
          *a3 = v76;
          a4[v73] = v21;
          if (a5)
          {
            v85 = vmulq_f32(v21, v21);
            *&v86 = v85.f32[2] + vaddv_f32(*v85.f32);
            *v85.f32 = vrsqrte_f32(v86);
            *v85.f32 = vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32)));
            v21 = vmulq_n_f32(v21, vmul_f32(*v85.f32, vrsqrts_f32(v86, vmul_f32(*v85.f32, *v85.f32))).f32[0]);
            a5[v73] = v21;
          }

          ++v73;
        }

        while (v73 != v10);
      }
    }

    else if (!a6 && v10 >= 1)
    {
      v20.f32[0] = v24 * v25.f32[0];
      v31 = v20;
      v31.f32[1] = v23.f32[0] * v25.f32[0];
      v31.f32[2] = v23.f32[0] * v24;
      v32 = vmulq_n_f32(v31, 1.0 / ((v23.f32[0] * v24) + ((v24 * v25.f32[0]) + (v23.f32[0] * v25.f32[0]))));
      v33 = v32.f32[0];
      v34 = v33 + v33;
      v35 = v33 + v33 + v32.f32[1] * 2.0;
      v36.i64[0] = 0x8000000080000000;
      v36.i64[1] = 0x8000000080000000;
      v37 = a5;
      do
      {
        v38 = 214013 * *a3 + 2531011;
        v39 = 214013 * v38 + 2531011;
        v40 = 214013 * v39 + 2531011;
        *a3 = v40;
        v41 = HIWORD(v40) * 0.0000152590219 + HIWORD(v40) * 0.0000152590219;
        if (v41 >= v34)
        {
          if (v41 >= v35)
          {
            v43 = v41 - v35 < v32.f32[2] || v32.f32[2] == 1.0;
            v42 = 2;
          }

          else
          {
            v43 = v41 - v34 < v32.f32[1] || v32.f32[1] == 1.0;
            v42 = 1;
          }

          v44 = -1;
        }

        else
        {
          v42 = 0;
          v43 = v32.f32[0] == 1.0;
          if (v41 < v33)
          {
            v43 = 1;
          }

          v44 = 2;
        }

        v45 = HIWORD(v38) * 0.0000152590219 * 2.0 + -1.0;
        v46 = HIWORD(v39) * 0.0000152590219 * 2.0 + -1.0;
        if (v42 == 2)
        {
          v47 = 0;
        }

        else
        {
          v47 = v42 + 1;
        }

        v48 = v42 + v44;
        v102 = v27;
        v49 = *(&v102 | (4 * v42));
        if (!v43)
        {
          v49 = -v49;
        }

        v103 = 0uLL;
        *(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v42 & 3))) = v49;
        v50 = v45 * *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
        v104 = v103;
        *(&v104 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) = v50;
        v51 = v46 * *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
        v105 = v104;
        *(&v105 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3))) = v51;
        v52 = v105;
        v53 = v105;
        v53.i32[3] = v22;
        if (*v19.i32 <= 0.0)
        {
          goto LABEL_54;
        }

        v54 = vsubq_f32(vabsq_f32(v105), v30);
        v55 = v54.f32[1] > 0.0;
        if (v54.f32[0] > 0.0)
        {
          ++v55;
        }

        if (v54.f32[2] > 0.0)
        {
          ++v55;
        }

        if (v55 == 3)
        {
          v57 = vmulq_f32(v54, v54);
          v58 = v57.f32[2] + vaddv_f32(*v57.f32);
          if (v29 < v58)
          {
            v59 = vmlaq_n_f32(v30, v54, *v19.i32 / sqrtf(v58));
            *v53.f32 = vbsl_s8(0x8000000080000000, *v59.f32, *v105.i8);
            v54.i32[0] = v59.i32[2];
            v52.i32[0] = v105.i32[2];
            v53.i32[2] = vbslq_s8(v36, v54, v52).u32[0];
LABEL_53:
            v53.i32[3] = v22;
          }
        }

        else if (v55 == 2)
        {
          if (v42 == 2)
          {
            v56 = v54.f32[1] <= 0.0;
          }

          else if (v42 == 1)
          {
            v56 = 2 * (v54.f32[0] > 0.0);
          }

          else if (v54.f32[1] <= 0.0)
          {
            v56 = 1;
          }

          else
          {
            v56 = 2;
          }

          if (v56 == 2)
          {
            v60 = 0;
          }

          else
          {
            v60 = v56 + 1;
          }

          v61 = (v56 + 2) % 3u;
          v97 = v54;
          *(&v97 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3))) = 0;
          v62 = v97;
          v63 = vmulq_f32(v62, v62);
          *v63.i64 = v28 / sqrtf(v63.f32[2] + vaddv_f32(*v63.f32));
          v64 = (&v100 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v98 = v30;
          v65 = *(&v98 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v99 = v97;
          *v62.i64 = v65 + *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) * *v63.i64;
          v62.f32[0] = *v62.i64;
          v100 = v52;
          v52.i32[0] = *v64;
          *v64 = vbslq_s8(v36, v62, v52).u32[0];
          v66 = v100;
          v67 = (&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
          *v62.i64 = *(&v98 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) + *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) * *v63.i64;
          v62.f32[0] = *v62.i64;
          v101 = v100;
          v66.i32[0] = *v67;
          *v67 = vbslq_s8(v36, v62, v66).u32[0];
          v53 = v101;
          goto LABEL_53;
        }

LABEL_54:
        *a4 = v53;
        if (a5)
        {
          v68 = vmulq_f32(v53, v53);
          *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
          *v68.f32 = vrsqrte_f32(v69);
          *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
          *v37 = vmulq_n_f32(v53, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
        }

        ++v37;
        ++a4;
        v22 = v53.i32[3];
        --v10;
      }

      while (v10);
    }
  }
}

float C3DParametricGeometryGetWidth(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

float C3DParametricGeometryGetHeight(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 220);
}

float C3DParametricGeometryGetLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

uint64_t C3DBoxSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 2, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 3, 0.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);
  C3DParametricGeometrySetIntValue(a1, 13, 1);

  return C3DParametricGeometrySetIntValue(a1, 14, 5);
}

uint64_t C3DBoxHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 1;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[56];
  a2[5] = a1[57];
  a2[6] = a1[66];
  a2[7] = a1[67];
  a2[8] = a1[68];
  a2[9] = a1[69];
  a2[10] = a1[77];
  return 44;
}

double C3DPyramidGetBoundingBoxForPyramidParameters(uint64_t a1, uint64_t a2, int32x4_t a3, double a4, float64_t a5)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    *&v6.f64[0] = a3.i64[0];
    v6.f64[1] = a5;
    __asm { FMOV            V4.2D, #-0.5 }

    v11 = vmulq_f64(v6, _Q4);
    *&v11.f64[0] = vcvt_f32_f64(v11);
    LODWORD(_Q4.f64[0]) = vzip1q_s32(v11, a3).u32[0];
    *(a1 + 8) = HIDWORD(v11.f64[0]);
    v12 = *a3.i64 * 0.5;
    *&a3.i64[1] = a4;
    *a1 = LODWORD(_Q4.f64[0]);
    *a3.i8 = vcvt_f32_f64(a3);
    v13 = a5 * 0.5;
    *(a2 + 8) = v13;
    *a2 = a3.i64[0];
  }

  return *a3.i64;
}

float C3DPyramidGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v6.i32 = C3DParametricGeometryGetWidth(a1, a2);
  v15 = v6;
  Height = C3DParametricGeometryGetHeight(a1, v7);
  *v9.i32 = C3DParametricGeometryGetLength(a1, v8);
  if (a2)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v15;
    v11.i32[1] = v9.i32[0];
    *v11.i8 = vmul_f32(*v11.i8, 0xBF000000BF000000);
    *(a2 + 8) = v11.i32[1];
    *a2 = vzip1q_s32(v11, v9).u32[0];
    *&v12 = *v15.i32 * 0.5;
    *(&v12 + 1) = Height;
    *v9.i32 = *v9.i32 * 0.5;
    *(a3 + 8) = v9.i32[0];
    *a3 = v12;
  }

  return *v9.i32;
}

BOOL C3DPyramidGetBoundingSphereForPyramidParameters(int32x4_t *a1, double a2, float64x2_t a3, double a4)
{
  if (a1)
  {
    a3.f64[1] = sqrt(a3.f64[0] * a3.f64[0] + a2 * a2 + a4 * a4);
    __asm { FMOV            V0.2D, #0.5 }

    v9 = vmulq_f64(a3, _Q0);
    *&v9.f64[0] = vcvt_f32_f64(v9);
    *a1 = vtrn1q_s32(0, vzip1q_s32(v9, v9));
  }

  return a1 != 0;
}

BOOL C3DPyramidGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  Width = C3DParametricGeometryGetWidth(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v5);
  Length = C3DParametricGeometryGetLength(a1, v7);
  if (a2)
  {
    v9 = sqrt(Height * Height + Width * Width + Length * Length) * 0.5;
    LODWORD(v10) = 0;
    DWORD2(v10) = 0;
    *(&v10 + 1) = Height * 0.5;
    *(&v10 + 3) = v9;
    *a2 = v10;
  }

  return a2 != 0;
}

void C3DPyramidGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v10 = a2;
  v80 = *MEMORY[0x277D85DE8];
  Width = C3DParametricGeometryGetWidth(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v13);
  Length = C3DParametricGeometryGetLength(a1, v14);
  v20.f32[0] = Width * 0.5;
  v21.f32[0] = Length * 0.5;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v22 = Height;
      v23 = v21.f32[0];
      v24 = a5;
      do
      {
        v25 = 214013 * *a3 + 2531011;
        v26 = HIWORD(v25) * 0.0000152590219 * v22;
        *v21.i64 = v22 - v26;
        v27 = *v21.i64 * v23 / v22;
        v28 = 214013 * v25 + 2531011;
        v21.f32[0] = (HIWORD(v28) * 0.0000152590219 * 2.0 + -1.0) * (*v21.i64 * v20.f32[0] / v22);
        v29 = 214013 * v28 + 2531011;
        *a3 = v29;
        v30 = (HIWORD(v29) * 0.0000152590219 * 2.0 + -1.0) * v27;
        v21.f32[1] = v26;
        v21.f32[2] = v30;
        *a4 = v21;
        if (a5)
        {
          v31 = vmulq_f32(v21, v21);
          *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
          *v31.f32 = vrsqrte_f32(v32);
          *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
          v21 = vmulq_n_f32(v21, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
          *v24 = v21;
        }

        ++v24;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v33 = 0;
    v36.i32[1] = 0;
    v36.i32[3] = 0;
    v37.i32[3] = 0;
    v37.i64[0] = v20.u32[0];
    v20 = v20.u32[0];
    v20.f32[2] = Length * 0.5;
    v34.i32[0] = 0;
    v34.i64[1] = 0;
    v34.f32[1] = Height;
    v36.f32[0] = -(Width * 0.5);
    v35 = v36.u32[0];
    v35.f32[2] = Length * 0.5;
    v36.f32[2] = -(Length * 0.5);
    v37.f32[2] = v36.f32[2];
    v38 = vsubq_f32(v20, v35);
    v39 = vsubq_f32(v37, v20);
    v40 = vsubq_f32(v36, v37);
    v41 = vsubq_f32(v35, v36);
    v42 = vsubq_f32(v34.u64[0], v35);
    v43 = vsubq_f32(v34.u64[0], v37);
    v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    v45 = vmlaq_f32(vmulq_f32(v44, vnegq_f32(v39)), v43, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
    v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
    v47 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v48 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
    v49 = vnegq_f32(v41);
    v50 = vmlaq_f32(vmulq_f32(v48, v49), v42, v47);
    v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
    v52 = vmlaq_f32(vmulq_f32(v44, vnegq_f32(v40)), v43, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    v54 = vmlaq_f32(vmulq_f32(v48, vnegq_f32(v38)), v42, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v55 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
    do
    {
      v56 = v16;
      v57 = v17;
      v58 = v19;
      v59 = v18.i32[3];
      v79 = 0.16667;
      v78 = xmmword_21C2A2798;
      v60 = 4;
      v61 = 0.33333;
      do
      {
        v61 = v61 + *(&v78 + v60);
        *(&v78 + v60) = v61;
        v60 += 4;
      }

      while (v60 != 20);
      v62 = 214013 * *a3 + 2531011;
      v63 = HIWORD(v62) * 0.0000152590219;
      v16 = v35;
      v17 = v49;
      v19 = v38;
      v18 = xmmword_21C27F9A0;
      if (v63 >= 0.33333)
      {
        v16 = v34;
        v17 = v20;
        v19 = v35;
        v18 = v55;
        if (*(&v78 + 1) <= v63)
        {
          v16 = v34;
          v17 = v36;
          v19 = v37;
          v18 = v53;
          if (*(&v78 + 2) <= v63)
          {
            v16 = v36;
            v17 = v34;
            v19 = v35;
            v18 = v51;
            if (*(&v78 + 3) <= v63)
            {
              if (v79 <= v63)
              {
                v18.i64[0] = 0;
                v18.i32[2] = 0;
                v18.i32[3] = v59;
                v16 = v56;
                v17 = v57;
                v19 = v58;
              }

              else
              {
                v16 = v37;
                v17 = v20;
                v19 = v34;
                v18 = v46;
              }
            }
          }
        }
      }

      v64 = 214013 * v62 + 2531011;
      v65 = HIWORD(v64) * 0.0000152590219;
      v66 = 214013 * v64 + 2531011;
      *a3 = v66;
      v67 = HIWORD(v66) * 0.0000152590219;
      if (v63 >= 0.33333)
      {
        v69 = 214013 * v66 + 2531011;
        *a3 = v69;
        v70 = HIWORD(v69) * 0.0000152590219;
        v71 = 1.0 / ((v65 + v67) + v70);
        v72 = v71 * v65;
        v73 = v71 * v67;
        v74 = v71 * v70;
        v68 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v17, v73), v19, v72), v16, v74);
      }

      else
      {
        v68 = vaddq_f32(v16, vmlaq_n_f32(vmulq_n_f32(v17, v67), v19, v65));
      }

      a4[v33] = v68;
      if (a5)
      {
        v75 = vmulq_f32(v18, v18);
        *&v76 = v75.f32[2] + vaddv_f32(*v75.f32);
        *v75.f32 = vrsqrte_f32(v76);
        *v75.f32 = vmul_f32(*v75.f32, vrsqrts_f32(v76, vmul_f32(*v75.f32, *v75.f32)));
        a5[v33] = vmulq_n_f32(v18, vmul_f32(*v75.f32, vrsqrts_f32(v76, vmul_f32(*v75.f32, *v75.f32))).f32[0]);
      }

      ++v33;
    }

    while (v33 != v10);
  }
}

uint64_t C3DPyramidSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 2, 1.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetIntValue(a1, 13, 1);
}

uint64_t C3DPyramidHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 2;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[56];
  a2[5] = a1[66];
  a2[6] = a1[67];
  a2[7] = a1[68];
  a2[8] = a1[77];
  return 36;
}

float C3DSphereGetBoundingBoxForSphereParameters(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&a3 = a3;
    *&a4 = -*&a3;
    *(a1 + 8) = -*&a3;
    *a1 = vdupq_lane_s32(*&a4, 0).u64[0];
    *(a2 + 8) = LODWORD(a3);
    *a2 = vdupq_lane_s32(*&a3, 0).u64[0];
  }

  return *&a3;
}

float C3DSphereGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    LODWORD(a4) = *(a1 + 232);
    *&a5 = -*&a4;
    *(a2 + 8) = -*&a4;
    *a2 = vdupq_lane_s32(*&a5, 0).u64[0];
    *(a3 + 8) = LODWORD(a4);
    *a3 = vdupq_lane_s32(*&a4, 0).u64[0];
  }

  return *&a4;
}

BOOL C3DSphereGetBoundingSphereForSphereParameters(_OWORD *a1, double a2)
{
  if (a1)
  {
    v2 = a2;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a1 = v3;
  }

  return a1 != 0;
}

BOOL C3DSphereGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    HIDWORD(v2) = *(a1 + 232);
    *a2 = v2;
  }

  return a2 != 0;
}

void C3DSphereGeneratePointsCallBack(_DWORD *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, double a7)
{
  v9 = a4;
  v11 = a2;
  LODWORD(a7) = a1[58];
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, a6);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v12 = 0;
      v13 = vdup_n_s32(0x37800080u);
      __asm { FMOV            V3.2S, #-1.0 }

      do
      {
        v19 = *a3;
        do
        {
          v20 = 214013 * v19 + 2531011;
          v7.i32[0] = v20;
          v7.i32[1] = 214013 * v20 + 2531011;
          *v7.f32 = vmla_f32(_D3, 0x4000000040000000, vmul_f32(vcvt_f32_u32(vshr_n_u32(*v7.f32, 0x10uLL)), v13));
          v19 = 214013 * (214013 * v20 + 2531011) + 2531011;
          v7.f32[2] = ((HIWORD(v19) * 0.000015259) * 2.0) + -1.0;
          v21 = vmulq_f32(v7, v7);
          v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
        }

        while (v21.f32[0] > 1.0);
        *a3 = v19;
        if (a5)
        {
          a5[v12] = vdivq_f32(v7, vdupq_lane_s32(*v21.f32, 0));
        }

        v7 = vaddq_f32(vmulq_n_f32(v7, *&a7), 0);
        a4[v12++] = v7;
      }

      while (v12 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = vdupq_lane_s32(*&a7, 0);
    v22 = a5;
    do
    {
      v23 = 214013 * *a3 + 2531011;
      v29 = ((HIWORD(v23) * 0.000015259) * 2.0) + -1.0;
      v24 = 214013 * v23 + 2531011;
      *a3 = v24;
      v25 = ((HIWORD(v24) * 0.000015259) + (HIWORD(v24) * 0.000015259)) * 3.14159265;
      v26 = __sincosf_stret(v25);
      *v27.f32 = vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), sqrtf(1.0 - (v29 * v29)));
      v27.f32[2] = v29;
      *v9 = vmlaq_f32(0, v28, v27);
      if (a5)
      {
        *v22 = v27;
      }

      ++v22;
      ++v9;
      --v11;
    }

    while (v11);
  }
}

uint64_t C3DSphereSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetIntValue(a1, 22, 3);
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetIntValue(a1, 23, 24);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DSphereHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 3;
  a2[1] = a1[75];
  a2[2] = a1[76];
  a2[3] = a1[58];
  a2[4] = a1[70];
  a2[5] = a1[65];
  a2[6] = a1[77];
  return 28;
}

float64_t C3DCylinderGetBoundingBoxForCylinderParameters(uint64_t a1, uint64_t a2, float64x2_t a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a4 * -0.5;
    a3.f64[1] = a4 * 0.5;
    *&a3.f64[0] = vcvt_f32_f64(a3);
    *&v6 = -*a3.f64;
    *(a1 + 8) = -*a3.f64;
    *(&v6 + 1) = v5;
    *a1 = v6;
    *(a2 + 8) = LODWORD(a3.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

float C3DCylinderGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Radius = C3DParametricGeometryGetRadius(a1, a2);
  result = C3DParametricGeometryGetHeight(a1, v6);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *&v9 = -Radius;
    *(a2 + 8) = -Radius;
    *(&v9 + 1) = result * -0.5;
    *a2 = v9;
    result = result * 0.5;
    *(a3 + 8) = Radius;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(Radius));
  }

  return result;
}

float C3DParametricGeometryGetRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 232);
}

BOOL C3DCylinderGetBoundingSphereForCylinderParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = sqrt(a3 * 0.25 * a3 + a2 * a2);
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DCylinderGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  Radius = C3DParametricGeometryGetRadius(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v5);
  if (a2)
  {
    v7 = sqrt(Height * 0.25 * Height + Radius * Radius);
    *&v8 = 0;
    DWORD2(v8) = 0;
    *(&v8 + 3) = v7;
    *a2 = v8;
  }

  return a2 != 0;
}

void C3DCylinderGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  Radius = C3DParametricGeometryGetRadius(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v13);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v15 = Radius;
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219 + HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret(v18 * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = HIWORD(v22) * 0.0000152590219 * v15;
        v24.f64[0] = v23 * cosval;
        v25 = 214013 * v22 + 2531011;
        v24.f64[1] = Height * -0.5 + HIWORD(v25) * 0.0000152590219 * Height;
        *a3 = v25;
        *&v24.f64[0] = vcvt_f32_f64(v24);
        *&v23 = v23 * sinval;
        LODWORD(v24.f64[1]) = LODWORD(v23);
        *a4 = v24;
        if (a5)
        {
          *&v26 = LODWORD(cosval);
          *(&v26 + 1) = LODWORD(sinval);
          *v16 = v26;
        }

        ++v16;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v27 = a5;
    do
    {
      v28 = 214013 * *a3 + 2531011;
      v29 = HIWORD(v28) * 0.0000152590219 + HIWORD(v28) * 0.0000152590219;
      v30 = __sincos_stret(v29 * 3.14159265);
      v31 = v30.__sinval;
      v32 = v30.__cosval;
      v33 = 214013 * v28 + 2531011;
      *a3 = v33;
      *&v34 = Radius * v32;
      v35 = Height * -0.5 + HIWORD(v33) * 0.0000152590219 * Height;
      *(&v34 + 1) = v35;
      *(&v34 + 2) = Radius * v31;
      *a4 = v34;
      if (a5)
      {
        *&v36 = LODWORD(v32);
        *(&v36 + 1) = LODWORD(v31);
        *v27 = v36;
      }

      ++v27;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t C3DCylinderSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DCylinderHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 4;
  a2[1] = a1[75];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[71];
  a2[5] = a1[67];
  a2[6] = a1[65];
  a2[7] = a1[77];
  return 32;
}

float64_t C3DConeGetBoundingBoxForConeParameters(uint64_t a1, uint64_t a2, float64x2_t a3, float64_t a4, double a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (a3.f64[0] <= a4)
    {
      a3.f64[0] = a4;
    }

    v6 = a5 * -0.5;
    a3.f64[1] = a5 * 0.5;
    *&a3.f64[0] = vcvt_f32_f64(a3);
    *&v7 = -*a3.f64;
    *(a1 + 8) = -*a3.f64;
    *(&v7 + 1) = v6;
    *a1 = v7;
    *(a2 + 8) = LODWORD(a3.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

BOOL C3DConeGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TopRadius = C3DParametricGeometryGetTopRadius(a1, a2);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1, v7);
  Height = C3DParametricGeometryGetHeight(a1, v9);
  if (a2)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  result = !v11;
  if (!v11)
  {
    if (TopRadius <= BottomRadius)
    {
      *&v13 = BottomRadius;
    }

    else
    {
      *&v13 = TopRadius;
    }

    *&v14 = -*&v13;
    *(a2 + 8) = -*&v13;
    *(&v14 + 1) = Height * -0.5;
    *a2 = v14;
    *(a3 + 8) = v13;
    *(&v13 + 1) = Height * 0.5;
    *a3 = v13;
  }

  return result;
}

float C3DParametricGeometryGetTopRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 236);
}

float C3DParametricGeometryGetBottomRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

BOOL C3DConeGetBoundingSphereForConeParameters(_OWORD *a1, double a2, double a3, double a4)
{
  if (a1)
  {
    if (a2 <= a3)
    {
      a2 = a3;
    }

    v4 = sqrt(a2 * a2 + a4 * 0.25 * a4);
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL C3DConeGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  TopRadius = C3DParametricGeometryGetTopRadius(a1, a2);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1, v5);
  Height = C3DParametricGeometryGetHeight(a1, v7);
  if (a2)
  {
    v9 = Height;
    if (TopRadius <= BottomRadius)
    {
      v10 = BottomRadius;
    }

    else
    {
      v10 = TopRadius;
    }

    v11 = sqrt(v10 * v10 + v9 * 0.25 * v9);
    *&v12 = 0;
    DWORD2(v12) = 0;
    *(&v12 + 3) = v11;
    *a2 = v12;
  }

  return a2 != 0;
}

void C3DConeGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  TopRadius = C3DParametricGeometryGetTopRadius(a1, a2);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1, v13);
  Height = C3DParametricGeometryGetHeight(a1, v15);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v17 = TopRadius - BottomRadius;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219 + HIWORD(v19) * 0.0000152590219;
        v21 = __sincos_stret(v20 * 3.14159265);
        sinval = v21.__sinval;
        cosval = v21.__cosval;
        v24 = 214013 * v19 + 2531011;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = 214013 * v24 + 2531011;
        *a3 = v26;
        v27 = (BottomRadius + v25 * v17) * (HIWORD(v26) * 0.0000152590219);
        v28.f64[0] = v27 * cosval;
        v28.f64[1] = Height * -0.5 + v25 * Height;
        v29 = v27 * sinval;
        *&v30 = vcvt_f32_f64(v28);
        *&v29 = v29;
        DWORD2(v30) = LODWORD(v29);
        *a4 = v30;
        if (a5)
        {
          *&v31 = LODWORD(cosval);
          *(&v31 + 1) = LODWORD(sinval);
          *v18 = v31;
        }

        ++v18;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v32 = TopRadius - BottomRadius;
    v33 = a5;
    do
    {
      v34 = 214013 * *a3 + 2531011;
      v35 = HIWORD(v34) * 0.0000152590219 + HIWORD(v34) * 0.0000152590219;
      v36 = __sincos_stret(v35 * 3.14159265);
      v37 = v36.__sinval;
      v38 = v36.__cosval;
      v39 = 214013 * v34 + 2531011;
      *a3 = v39;
      v40 = HIWORD(v39) * 0.0000152590219;
      v41 = BottomRadius + v40 * v32;
      v42.f64[0] = v41 * v38;
      v42.f64[1] = Height * -0.5 + v40 * Height;
      v43 = v41 * v37;
      *&v44 = vcvt_f32_f64(v42);
      *&v43 = v43;
      DWORD2(v44) = LODWORD(v43);
      *a4 = v44;
      if (a5)
      {
        *&v45 = LODWORD(v38);
        *(&v45 + 1) = LODWORD(v37);
        *v33 = v45;
      }

      ++v33;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t C3DConeSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 5, 0.0);
  C3DParametricGeometrySetFloatValue(a1, 6, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);

  return C3DParametricGeometrySetIntValue(a1, 12, 1);
}

uint64_t C3DConeHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 5;
  a2[1] = a1[75];
  a2[2] = a1[59];
  a2[3] = a1[60];
  a2[4] = a1[55];
  a2[5] = a1[71];
  a2[6] = a1[67];
  a2[7] = a1[77];
  return 32;
}

float C3DTubeGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 220);
    LODWORD(v5) = *(a1 + 248);
    *&v6 = -*&v5;
    *(a2 + 8) = -*&v5;
    *(&v6 + 1) = v4 * -0.5;
    *a2 = v6;
    result = v4 * 0.5;
    *(a3 + 8) = v5;
    *(&v5 + 1) = result;
    *a3 = v5;
  }

  return result;
}

BOOL C3DTubeGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(*(a1 + 220) * 0.25 * *(a1 + 220) + *(a1 + 248) * *(a1 + 248));
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DTubeGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  OuterRadius = C3DParametricGeometryGetOuterRadius(a1, a2);
  InnerRadius = C3DParametricGeometryGetInnerRadius(a1, v13);
  Height = C3DParametricGeometryGetHeight(a1, v15);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v17 = OuterRadius - InnerRadius;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219 + HIWORD(v19) * 0.0000152590219;
        v21 = __sincos_stret(v20 * 3.14159265);
        sinval = v21.__sinval;
        cosval = v21.__cosval;
        v24 = 214013 * v19 + 2531011;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = InnerRadius + v17 * v25;
        v27.f64[0] = v26 * cosval;
        v28 = 214013 * v24 + 2531011;
        v27.f64[1] = Height * -0.5 + HIWORD(v28) * 0.0000152590219 * Height;
        *a3 = v28;
        *&v27.f64[0] = vcvt_f32_f64(v27);
        *&v26 = v26 * sinval;
        LODWORD(v27.f64[1]) = LODWORD(v26);
        *a4 = v27;
        if (a5)
        {
          if (v25 > 0.5)
          {
            cosval = -cosval;
            sinval = -sinval;
          }

          *&v29 = LODWORD(cosval);
          *(&v29 + 1) = LODWORD(sinval);
          *v18 = v29;
        }

        ++v18;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v30 = a5;
    do
    {
      v31 = 214013 * *a3 + 2531011;
      v32 = HIWORD(v31) * 0.0000152590219 + HIWORD(v31) * 0.0000152590219;
      v33 = __sincos_stret(v32 * 3.14159265);
      v34 = v33.__sinval;
      v35 = v33.__cosval;
      v36 = 214013 * v31 + 2531011;
      v37 = HIWORD(v36) * 0.0000152590219;
      if (v37 <= 0.5)
      {
        v38 = OuterRadius;
      }

      else
      {
        v38 = InnerRadius;
      }

      v39.f64[0] = v38 * v35;
      v40 = 214013 * v36 + 2531011;
      v39.f64[1] = Height * -0.5 + HIWORD(v40) * 0.0000152590219 * Height;
      *a3 = v40;
      *&v39.f64[0] = vcvt_f32_f64(v39);
      v41 = v38 * v34;
      *&v39.f64[1] = v41;
      *a4 = v39;
      if (a5)
      {
        if (v37 > 0.5)
        {
          v35 = -v35;
          v34 = -v34;
        }

        *&v42 = LODWORD(v35);
        *(&v42 + 1) = LODWORD(v34);
        *v30 = v42;
      }

      ++v30;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

float C3DParametricGeometryGetOuterRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 248);
}

float C3DParametricGeometryGetInnerRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 244);
}

uint64_t C3DTubeSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 7, 0.25);
  C3DParametricGeometrySetFloatValue(a1, 8, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DTubeHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 6;
  a2[1] = a1[75];
  a2[2] = a1[61];
  a2[3] = a1[62];
  a2[4] = a1[55];
  a2[5] = a1[71];
  a2[6] = a1[67];
  a2[7] = a1[65];
  a2[8] = a1[77];
  return 36;
}

float C3DCapsuleGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Radius = C3DParametricGeometryGetRadius(a1, a2);
  result = C3DParametricGeometryGetHeight(a1, v6);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *&v9 = -Radius;
    *(a2 + 8) = -Radius;
    *(&v9 + 1) = result * -0.5;
    *a2 = v9;
    result = result * 0.5;
    *(a3 + 8) = Radius;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(Radius));
  }

  return result;
}

BOOL C3DCapsuleGetBoundingSphereForCapsuleParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = a3 * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DCapsuleGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  C3DParametricGeometryGetRadius(a1, a2);
  Height = C3DParametricGeometryGetHeight(a1, v4);
  if (a2)
  {
    *&v6 = 0;
    DWORD2(v6) = 0;
    *(&v6 + 3) = Height * 0.5;
    *a2 = v6;
  }

  return a2 != 0;
}

void C3DCapsuleGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float64x2_t *a4, float64x2_t *a5, int a6)
{
  v10 = a2;
  Radius = C3DParametricGeometryGetRadius(a1, a2);
  v13 = Radius;
  Height = C3DParametricGeometryGetHeight(a1, v14);
  *v16.i64 = Height * 0.5;
  v17 = Height * 0.5 - Radius;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v18 = -*v16.i64;
      *v16.i32 = v17;
      v51 = v16;
      v19 = a5;
      do
      {
        v20 = 214013 * *a3 + 2531011;
        v21 = HIWORD(v20) * 0.0000152590219 + HIWORD(v20) * 0.0000152590219;
        v22 = __sincos_stret(v21 * 3.14159265);
        sinval = v22.__sinval;
        *v24.f64 = v22.__cosval;
        v25 = 214013 * v20 + 2531011;
        *v26.i32 = v18 + HIWORD(v25) * 0.0000152590219 * Height;
        v27 = 214013 * v25 + 2531011;
        *a3 = v27;
        v28 = HIWORD(v27) * 0.0000152590219 * v13;
        *v29.i64 = fabsf(*v26.i32) - v17;
        if (*v29.i64 <= 0.0)
        {
          *&v33.f64[0] = LODWORD(v24.f64[0]);
          *&v33.f64[1] = LODWORD(sinval);
          *v24.f64 = v28 * *v24.f64;
          HIDWORD(v24.f64[0]) = v26.i32[0];
        }

        else
        {
          *v29.i64 = *v29.i64 / v13;
          *v29.i32 = *v29.i64;
          v30.i64[0] = 0x8000000080000000;
          v30.i64[1] = 0x8000000080000000;
          v31 = *vbslq_s8(v30, v29, v26).i32;
          v32 = sqrtf(1.0 - (v31 * v31));
          *v24.f64 = v32 * *v24.f64;
          sinval = v32 * sinval;
          v33 = v24;
          *(v33.f64 + 1) = v31;
          *&v33.f64[1] = sinval;
          v34 = v28 * *v24.f64;
          v24.f64[1] = *vbslq_s8(v30, v51, v26).i32 + v31 * v28;
          *&v24.f64[0] = vcvt_f32_f64(v24);
        }

        v35 = v28 * sinval;
        *&v24.f64[1] = v35;
        *a4 = v24;
        if (a5)
        {
          *v19 = v33;
        }

        ++v19;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v36 = -*v16.i64;
    *v16.i32 = v17;
    v52 = v16;
    v37 = a5;
    do
    {
      v38 = 214013 * *a3 + 2531011;
      v39 = HIWORD(v38) * 0.0000152590219 + HIWORD(v38) * 0.0000152590219;
      v41 = __sincos_stret(v39 * 3.14159265);
      v42 = v41.__sinval;
      *v43.f64 = v41.__cosval;
      v44 = 214013 * v38 + 2531011;
      *a3 = v44;
      *v45.i32 = v36 + HIWORD(v44) * 0.0000152590219 * Height;
      *v46.i64 = fabsf(*v45.i32) - v17;
      if (*v46.i64 <= 0.0)
      {
        *&v50.__sinval = LODWORD(v43.f64[0]);
        *&v50.__cosval = LODWORD(v42);
        *v43.f64 = Radius * *v43.f64;
      }

      else
      {
        *v46.i64 = *v46.i64 / v13;
        *v46.i32 = *v46.i64;
        v47.i64[0] = 0x8000000080000000;
        v47.i64[1] = 0x8000000080000000;
        v48 = *vbslq_s8(v47, v46, v45).i32;
        v49 = sqrtf(1.0 - (v48 * v48));
        *&v40.__sinval = v49 * *v43.f64;
        v42 = v49 * v42;
        *v43.f64 = Radius * (v49 * *v43.f64);
        v50 = v40;
        *(&v50.__sinval + 1) = v48;
        *&v50.__cosval = v42;
        *v45.i32 = *vbslq_s8(v47, v52, v45).i32 + v48 * v13;
      }

      HIDWORD(v43.f64[0]) = v45.i32[0];
      *&v43.f64[1] = Radius * v42;
      *a4 = v43;
      if (a5)
      {
        *v37 = v50;
      }

      ++v37;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t C3DCapsuleSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 2.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 16, 24);

  return C3DParametricGeometrySetIntValue(a1, 12, 1);
}

uint64_t C3DCapsuleHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 7;
  a2[1] = a1[75];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[71];
  a2[5] = a1[72];
  a2[6] = a1[67];
  a2[7] = a1[77];
  return 32;
}

float32x4_t C3DTorusGetBoundingBoxForTorusParameters(uint64_t a1, uint64_t a2, float32x4_t result, float64_t a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5.f64[0] = *result.i64 + a4;
    v5.f64[1] = a4;
    v6 = vcvt_f32_f64(v5);
    v7 = vcvt_hight_f32_f64(v6, v5);
    result = vnegq_f32(v7);
    *(a1 + 8) = result.i32[2];
    *a1 = result.i64[0];
    *(a2 + 8) = v6.i32[0];
    *a2 = v7.i64[0];
  }

  return result;
}

float C3DTorusGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 252);
    v5 = vadd_f32(vdup_lane_s32(v4, 1), v4);
    v6.i64[0] = __PAIR64__(v4.u32[1], v5.u32[0]);
    *&v6.u32[2] = v5;
    v7 = vnegq_f32(v6);
    *(a2 + 8) = v7.i32[2];
    result = vaddv_f32(v4);
    *a2 = v7.i64[0];
    *(a3 + 8) = result;
    *a3 = v6.i64[0];
  }

  return result;
}

BOOL C3DTorusGetBoundingSphereForTorusParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = a2 + a3;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DTorusGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = *(a1 + 256) + *(a1 + 252);
    *a2 = v2;
  }

  return a2 != 0;
}

void C3DTorusGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  RingRadius = C3DParametricGeometryGetRingRadius(a1, a2);
  PipeRadius = C3DParametricGeometryGetPipeRadius(a1, v13);
  v15 = PipeRadius;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219 + HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret(v18 * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = sqrt(HIWORD(v22) * 0.0000152590219) * v15;
        v24 = RingRadius + cosval * v23;
        *&v23 = v23 * sinval;
        v44 = sinval;
        v45 = LODWORD(v23);
        v25 = 214013 * v22 + 2531011;
        *a3 = v25;
        *&v23 = HIWORD(v25) * 0.0000152590219 + HIWORD(v25) * 0.0000152590219;
        v26 = __sincos_stret(*&v23 * 3.14159265);
        v27 = v26.__sinval;
        *&v28 = v26.__cosval;
        *&v29 = v24 * *&v28;
        DWORD1(v29) = v45;
        *(&v29 + 2) = v24 * v27;
        *a4 = v29;
        if (a5)
        {
          *&v28 = cosval * *&v28;
          *(&v28 + 1) = v44;
          *(&v28 + 2) = cosval * v27;
          *v16 = v28;
        }

        ++v16;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v43 = PipeRadius;
    if (v10 >= 1)
    {
      v30 = a5;
      do
      {
        v31 = 214013 * *a3 + 2531011;
        v32 = HIWORD(v31) * 0.0000152590219 + HIWORD(v31) * 0.0000152590219;
        v34 = __sincos_stret(v32 * 3.14159265);
        *&v33 = v34.__sinval;
        v46 = v33;
        v35 = v34.__cosval;
        v36 = 214013 * v31 + 2531011;
        *a3 = v36;
        *&v33 = HIWORD(v36) * 0.0000152590219 + HIWORD(v36) * 0.0000152590219;
        v37 = __sincos_stret(*&v33 * 3.14159265);
        v38 = v37.__sinval;
        *&v39 = v37.__cosval;
        v40.f64[0] = RingRadius + v35 * v15;
        HIDWORD(v41) = HIDWORD(v46);
        *&v40.f64[1] = v46;
        *&v41 = vcvt_f32_f64(v40);
        v42 = v39;
        *(&v42 + 1) = v43;
        *&v42 = vmul_f32(*&v42, *&v41);
        *(&v42 + 2) = v38 * *&v41;
        *a4 = v42;
        if (a5)
        {
          *&v41 = v35 * *&v39;
          *(&v41 + 2) = v35 * v38;
          *v30 = v41;
        }

        ++v30;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }
}

float C3DParametricGeometryGetRingRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 252);
}

float C3DParametricGeometryGetPipeRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 256);
}

uint64_t C3DTorusSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 9, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 10, 0.25);
  C3DParametricGeometrySetIntValue(a1, 17, 48);
  C3DParametricGeometrySetIntValue(a1, 18, 24);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DTorusHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 8;
  a2[1] = a1[75];
  a2[2] = a1[63];
  a2[3] = a1[64];
  a2[4] = a1[73];
  a2[5] = a1[74];
  a2[6] = a1[65];
  a2[7] = a1[77];
  return 32;
}

uint64_t _C3DParametricGeometryCreate(__int128 *a1, __int128 *a2, int a3)
{
  if (C3DParametricGeometryGetTypeID_onceToken != -1)
  {
    C3DParametricGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParametricGeometryGetTypeID_typeID, 352);
  C3DGeometryInit(Instance);
  if (a3)
  {
    Default = C3DMaterialCreateDefault(v7, v8);
    C3DGeometryAppendMaterial(Instance, Default);
    CFRelease(Default);
  }

  *(Instance + 120) = kC3DParametricGeometryValidationCallBacks;
  v10 = (Instance + 312);
  if (a2)
  {
    v11 = *a2;
    v12 = a2[2];
    *(Instance + 328) = a2[1];
    *(Instance + 344) = v12;
    *v10 = v11;
    C3DParametricGeometrySetIntValue(Instance, 20, 0);
    if (!a1)
    {
LABEL_12:
      (*(Instance + 336))(Instance);
      return Instance;
    }
  }

  else
  {
    *(Instance + 328) = 0u;
    *(Instance + 344) = 0u;
    *v10 = 0u;
    v13 = C3DParametricGeometrySetIntValue(Instance, 20, 0);
    if (!a1)
    {
      v19 = scn_default_log(v13, v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        _C3DParametricGeometryCreate_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      goto LABEL_12;
    }
  }

  v15 = *a1;
  *(Instance + 232) = a1[1];
  *(Instance + 216) = v15;
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[5];
  *(Instance + 280) = a1[4];
  *(Instance + 296) = v18;
  *(Instance + 264) = v17;
  *(Instance + 248) = v16;
  return Instance;
}

void C3DParametricGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DGeometryCopy(a1, a2);
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
    v5 = *(a1 + 344);
    *(a2 + 328) = *(a1 + 328);
    *(a2 + 344) = v5;
    *(a2 + 312) = v4;
  }

  v6 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v6;
  v7 = *(a1 + 248);
  v8 = *(a1 + 264);
  v9 = *(a1 + 296);
  *(a2 + 280) = *(a1 + 280);
  *(a2 + 296) = v9;
  *(a2 + 264) = v8;
  *(a2 + 248) = v7;
  os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
  v12 = *(a1 + 64);
  v13 = *(a1 + 360);
  if ((v12 != 0) == (v13 == 0))
  {
    v14 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryCopy_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v12)
  {
LABEL_6:
    C3DGeometrySetMesh(a2, v12);
    v22 = CFRetain(v13);
    *(a2 + 360) = v22;
    _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(v22);
  }

LABEL_7:
  os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
}

void _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(void *key)
{
  Value = CFDictionaryGetValue(_C3DParametricGeometryCacheRetainCounts, key);
  if (!Value)
  {
    v4 = scn_default_log(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, key, Value + 1);
}

uint64_t _C3DParametricGeometryFloatPtr(uint64_t a1, int a2)
{
  v2 = a1 + 252;
  v3 = a1 + 256;
  v4 = a1 + 260;
  if (a2 != 21)
  {
    v4 = 0;
  }

  if (a2 != 10)
  {
    v3 = v4;
  }

  if (a2 != 9)
  {
    v2 = v3;
  }

  v5 = a1 + 240;
  v6 = a1 + 244;
  v7 = a1 + 248;
  if (a2 != 8)
  {
    v7 = 0;
  }

  if (a2 != 7)
  {
    v6 = v7;
  }

  if (a2 != 6)
  {
    v5 = v6;
  }

  if (a2 <= 8)
  {
    v2 = v5;
  }

  v8 = a1 + 228;
  v9 = a1 + 232;
  v10 = a1 + 236;
  if (a2 != 5)
  {
    v10 = 0;
  }

  if (a2 != 4)
  {
    v9 = v10;
  }

  if (a2 != 3)
  {
    v8 = v9;
  }

  v11 = a1 + 216;
  v12 = a1 + 220;
  v13 = a1 + 224;
  if (a2 != 2)
  {
    v13 = 0;
  }

  if (a2 != 1)
  {
    v12 = v13;
  }

  if (a2)
  {
    v11 = v12;
  }

  if (a2 <= 2)
  {
    v8 = v11;
  }

  if (a2 <= 5)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

uint64_t C3DParametricGeometrySetFloatValue(uint64_t a1, int a2, double a3)
{
  result = _C3DParametricGeometryFloatPtr(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      __Invalidate(a1);
      v7 = a3;
      *v6 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t _C3DParametricGeometryIntPtr(uint64_t a1, int a2)
{
  v2 = a1 + 300;
  v3 = a1 + 280;
  v4 = a1 + 304;
  if (a2 != 22)
  {
    v4 = 0;
  }

  if (a2 != 23)
  {
    v3 = v4;
  }

  if (a2 != 20)
  {
    v2 = v3;
  }

  v5 = a1 + 288;
  v6 = a1 + 292;
  v7 = a1 + 296;
  if (a2 != 18)
  {
    v7 = 0;
  }

  if (a2 != 17)
  {
    v6 = v7;
  }

  if (a2 != 16)
  {
    v5 = v6;
  }

  if (a2 <= 19)
  {
    v2 = v5;
  }

  v8 = a1 + 272;
  v9 = a1 + 276;
  v10 = a1 + 284;
  if (a2 != 15)
  {
    v10 = 0;
  }

  if (a2 != 14)
  {
    v9 = v10;
  }

  if (a2 != 13)
  {
    v8 = v9;
  }

  v11 = a1 + 264;
  v12 = a1 + 268;
  if (a2 != 12)
  {
    v12 = 0;
  }

  if (a2 != 11)
  {
    v11 = v12;
  }

  if (a2 <= 12)
  {
    v8 = v11;
  }

  if (a2 <= 15)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

int *C3DParametricGeometryGetIntValue(uint64_t a1, int a2)
{
  result = _C3DParametricGeometryIntPtr(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t C3DParametricGeometrySetIntValue(uint64_t a1, int a2, uint64_t a3)
{
  result = _C3DParametricGeometryIntPtr(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      __Invalidate(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

BOOL C3DParametricGeometryIsHemispheric(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 304) == 2;
}

void C3DParametricGeometrySetHemispheric(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 304) = 2;
  __Invalidate(a1);
}

BOOL C3DParametricGeometryIsGeodesic(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 304) == 1;
}

void C3DParametricGeometrySetGeodesic(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 304) = v2;
  __Invalidate(a1);
}

void C3DParametricGeometrySetChamferRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 228) != a3)
  {
    *(a1 + 228) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetChamferSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 276);
}

void C3DParametricGeometrySetChamferSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 276) != v2)
  {
    *(a1 + 276) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetHeight(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 220) != a3)
  {
    *(a1 + 220) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetHeightSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 268);
}

void C3DParametricGeometrySetHeightSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 268) != v2)
  {
    *(a1 + 268) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetLength(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 224) != a3)
  {
    *(a1 + 224) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetLengthSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 272);
}

void C3DParametricGeometrySetLengthSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 272) != v2)
  {
    *(a1 + 272) = v2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetPrimitiveType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 300);
}

void C3DParametricGeometrySetPrimitiveType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 300) != v2)
  {
    *(a1 + 300) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetWidth(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 216) != a3)
  {
    *(a1 + 216) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetWidthSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 264);
}

void C3DParametricGeometrySetWidthSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 264) != v2)
  {
    *(a1 + 264) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetCapRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 232) != a3)
  {
    *(a1 + 232) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetCapSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 288);
}

void C3DParametricGeometrySetCapSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = v2 & ~(v2 >> 31);
  if (v12 != *(a1 + 288))
  {
    *(a1 + 288) = v12;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetRadialSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 284);
}

void C3DParametricGeometrySetRadialSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 284) != v2)
  {
    *(a1 + 284) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetBottomRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 240) != a3)
  {
    *(a1 + 240) = a3;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetTopRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 236) != a3)
  {
    *(a1 + 236) = a3;
    __Invalidate(a1);
  }
}

float C3DParametricGeometryGetRadialSpan(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 260);
}

void C3DParametricGeometrySetRadialSpan(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 260) != a3)
  {
    *(a1 + 260) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 280);
}

void C3DParametricGeometrySetSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 280) != v2)
  {
    *(a1 + 280) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetPipeRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 256) != a3)
  {
    *(a1 + 256) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetPipeSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 296);
}

void C3DParametricGeometrySetPipeSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 296) != v2)
  {
    *(a1 + 296) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetRingRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 252) != a3)
  {
    *(a1 + 252) = a3;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetRingSegmentCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 292);
}

void C3DParametricGeometrySetRingSegmentCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 292) != v2)
  {
    *(a1 + 292) = v2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetInnerRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 244) != a3)
  {
    *(a1 + 244) = a3;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetOuterRadius(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 248) != a3)
  {
    *(a1 + 248) = a3;
    __Invalidate(a1);
  }
}

void _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe()
{
  if (!_C3DParametricGeometryMeshCache)
  {
    v0 = *MEMORY[0x277CBECE8];
    v1 = MEMORY[0x277CBF138];
    _C3DParametricGeometryMeshCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _C3DParametricGeometryCacheRetainCounts = CFDictionaryCreateMutable(v0, 0, v1, 0);
  }
}

void _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(uint64_t a1)
{
  _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe();
  v2 = *(a1 + 360);
  if (v2)
  {
    Value = CFDictionaryGetValue(_C3DParametricGeometryCacheRetainCounts, *(a1 + 360));
    v5 = Value;
    if (Value)
    {
      if (Value == 1)
      {
        CFDictionaryRemoveValue(_C3DParametricGeometryMeshCache, v2);
        CFDictionaryRemoveValue(_C3DParametricGeometryCacheRetainCounts, v2);
LABEL_8:
        CFRelease(*(a1 + 360));
        *(a1 + 360) = 0;
        return;
      }
    }

    else
    {
      v6 = scn_default_log(0, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        _C3DParametricGeometryReleaseCachedMesh_not_thread_safe_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, v2, v5 - 1);
    goto LABEL_8;
  }
}

id _C3DParametricGeometryCFFinalize(__C3DGeometry *a1, uint64_t a2)
{
  if (a1[1].var10.var3)
  {
    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
  }

  return _C3DGeometryCFFinalize(a1, a2);
}

__CFString *_C3DParametricGeometryCFCopyDebugDescription(const void *a1, uint64_t a2)
{
  memset(__s1, 0, sizeof(__s1));
  C3DParametricGeometryGetCallbacks(a1, a2, __s1);
  if (!memcmp(__s1, kC3DBoxCallBacks, 0x30uLL))
  {
    v3 = @"Box";
  }

  else if (!memcmp(__s1, kC3DPyramidCallBacks, 0x30uLL))
  {
    v3 = @"Pyramid";
  }

  else if (!memcmp(__s1, kC3DCylinderCallBacks, 0x30uLL))
  {
    v3 = @"Cylinder";
  }

  else if (!memcmp(__s1, kC3DConeCallBacks, 0x30uLL))
  {
    v3 = @"Cone";
  }

  else if (!memcmp(__s1, kC3DTubeCallBacks, 0x30uLL))
  {
    v3 = @"Tube";
  }

  else if (!memcmp(__s1, kC3DCapsuleCallBacks, 0x30uLL))
  {
    v3 = @"Capsule";
  }

  else if (!memcmp(__s1, kC3DTorusCallBacks, 0x30uLL))
  {
    v3 = @"Torus";
  }

  else if (!memcmp(__s1, kC3DSphereCallBacks, 0x30uLL))
  {
    v3 = @"Sphere";
  }

  else if (!memcmp(__s1, kC3DPlaneCallBacks, 0x30uLL))
  {
    v3 = @"Plane";
  }

  else
  {
    v3 = @"Unknown";
  }

  v4 = CFGetTypeID(a1);
  v5 = CFCopyTypeIDDescription(v4);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DGeometryGetName(a1, v7);
  CFStringAppendFormat(Mutable, 0, @"<%@<%@>:%p %@\n", v5, v3, a1, Name);
  Mesh = C3DGeometryGetMesh(a1, v9);
  CFStringAppendFormat(Mutable, 0, @"  mesh: %@\n", Mesh);
  if (C3DGeometryGetMaterialsCount(a1, v11) >= 1)
  {
    v12 = 0;
    do
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v12);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v12++, MaterialAtIndex);
    }

    while (v12 < C3DGeometryGetMaterialsCount(a1, v14));
  }

  CFStringAppend(Mutable, @">");
  CFRelease(v5);
  return Mutable;
}

uint64_t _C3DParametricGeometryGetBoundingBox(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    v6 = *(a1 + 320);
    if (v6)
    {
      return v6();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _C3DParametricGeometryGetBoundingSphere(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void _C3DParametricGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  __Invalidate(a1);
}

uint64_t _C3DParametricGeometryCreateCopy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCopy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = _C3DParametricGeometryCreate((a1 + 216), 0, 0);
  C3DParametricGeometryCopy(a1, v11);
  return v11;
}

uint64_t C3DGLSLProfileBindPassInputs(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v106 = *MEMORY[0x277D85DE8];
  RendererElementState = C3DEngineContextGetRendererElementState(a1);
  x = C3DRendererElementStateGetActiveTextureUnit(RendererElementState);
  if (*(a3 + 520) >= 1)
  {
    v97 = a4;
    v10 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    v100 = a5;
    v16 = a2;
    while (1)
    {
      v17 = *(*(a3 + 512) + 8 * v10);
      RendererContextGL = C3DEngineContextGetRendererContextGL(a1, v9);
      if (C3DSubdivisionGetPathTypeSupportsSingleCrease(*(v17 + 32)))
      {
        goto LABEL_103;
      }

      v19 = *(v17 + 40);
      if (v19 == -2)
      {
        goto LABEL_103;
      }

      if (v19 == -1)
      {
        v9 = *(v17 + 48);
        if (!v9)
        {
          goto LABEL_68;
        }

        UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v16, v9);
        UniformIndex = C3DFXGLSLProgramObjectGetUniformIndex(v16, UniformLocationOfSymbolNamed);
        v19 = UniformIndex;
      }

      else
      {
        UniformIndex = C3DFXGLSLProgramObjectGetUniformLocation(v16, *(v17 + 40));
        UniformLocationOfSymbolNamed = UniformIndex;
      }

      if (UniformLocationOfSymbolNamed == -1)
      {
        goto LABEL_68;
      }

      if (a5)
      {
        v9 = *(v17 + 48);
        if (v9)
        {
          if (*(v17 + 40) != -1)
          {
            UniformIndex = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v16, v9);
            if (UniformIndex != UniformLocationOfSymbolNamed)
            {
              if (UniformIndex == -1)
              {
                v63 = scn_default_log(-1, v9);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  v94 = *(v17 + 48);
                  buf.columns[0].i32[0] = 138412290;
                  *(buf.columns[0].i64 + 4) = v94;
                  _os_log_error_impl(&dword_21BEF7000, v63, OS_LOG_TYPE_ERROR, "Error: wrong location returned for input named %@", &buf, 0xCu);
                }

LABEL_68:
                *(v17 + 40) = -2;
                goto LABEL_103;
              }

              v31 = C3DFXGLSLProgramObjectGetUniformIndex(v16, UniformLocationOfSymbolNamed);
              *(v17 + 40) = v31;
              v33 = scn_default_log(v31, v32);
              v34 = v33;
              if (v31 == -1)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v67 = *(v17 + 48);
                  buf.columns[0].i32[0] = 138412290;
                  *(buf.columns[0].i64 + 4) = v67;
                  v42 = v34;
                  v43 = "Error: can't find input named %@";
LABEL_45:
                  _os_log_error_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_ERROR, v43, &buf, 0xCu);
                }

LABEL_102:
                v16 = a2;
                goto LABEL_103;
              }

              UniformIndex = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              v16 = a2;
              if (UniformIndex)
              {
                buf.columns[0].i16[0] = 0;
                _os_log_impl(&dword_21BEF7000, v34, OS_LOG_TYPE_DEFAULT, "Warning: the same program is shared by two passes but indexed in a different manner", &buf, 2u);
              }
            }
          }
        }
      }

      v22 = *(v17 + 16);
      if (*(v17 + 32))
      {
        break;
      }

      if (v22 == 3)
      {
        UserInfo = C3DEngineContextGetUserInfo(a1, v9);
        RootNode = C3DFXPassGetRootNode(a3, v59);
        if (RootNode)
        {
          ObjCWrapper = C3DEntityGetObjCWrapper(RootNode);
        }

        else
        {
          ObjCWrapper = 0;
        }

        v64 = *(v17 + 96);
        ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2, v61);
        v66 = ObjCWrapper;
        v16 = a2;
        (*(v64 + 16))(v64, ProgramID, UniformLocationOfSymbolNamed, v66, UserInfo);
LABEL_71:
        a5 = v100;
        goto LABEL_103;
      }

      v23 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
      if (v22 == 2)
      {
        if (a5)
        {
          v44 = C3DFXGLSLProgramObjectGetProgramID(a2, v9);
          UniformIndex = C3DGLSLGetUniformType(RendererContextGL, v44, UniformLocationOfSymbolNamed);
          v45 = *(v17 + 20);
          if (UniformIndex == 13)
          {
            v46 = 10;
          }

          else
          {
            v46 = UniformIndex;
          }

          if (v45 == 13)
          {
            v45 = 10;
          }

          if (v45 != v46)
          {
            v47 = scn_default_log(UniformIndex, v9);
            UniformIndex = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
            if (UniformIndex)
            {
              v95 = *(v17 + 56);
              buf.columns[0].i32[0] = 138412290;
              *(buf.columns[0].i64 + 4) = v95;
              _os_log_error_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_ERROR, "Error: declared type doesn't match the uniform named %@", &buf, 0xCu);
            }
          }
        }

        v48 = **(v97 + 96);
        if (v48)
        {
          v49 = *(v17 + 20);
          v50 = *(v17 + 88);
          if (v49 == 5)
          {
            v51 = *(v48 + v50);
            if (!v51 || (UniformIndex = C3DFXSamplerGetTextureSampler(*(v48 + v50), v9), (v52 = UniformIndex) == 0))
            {
              v52 = *(v17 + 72);
              if (!v52)
              {
                v52 = C3DTextureSamplerBilinearNoAnisotropy(UniformIndex, v9);
              }

              if (!v51)
              {
                goto LABEL_100;
              }
            }

            Image = C3DFXSamplerGetImage(v51, v9);
            if (Image)
            {
              v55 = Image;
              ResourceManager = C3DEngineContextGetResourceManager(a1, v54);
              ImageResident = C3DResourceManagerMakeImageResident(ResourceManager, v55, v52, RendererContextGL);
            }

            else
            {
LABEL_100:
              ImageResident = 0;
            }

            a5 = v100;
            C3DRendererContextBindTexture(RendererContextGL, ImageResident, v52, 0, x);
            C3DRendererContextSetIntUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, x++);
          }

          else
          {
            C3DRendererContextSetTypedBytesUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, v49, (v48 + v50), *(v17 + 24));
          }
        }

        goto LABEL_102;
      }

      if (v22 == 1)
      {
        goto LABEL_21;
      }

LABEL_103:
      if (++v10 >= *(a3 + 520))
      {
        return C3DRendererElementStateSetActiveTextureUnit(RendererElementState, x);
      }
    }

    v23 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
    if (v22 != 1)
    {
      memset(&buf, 0, sizeof(buf));
      memset(&v104, 0, sizeof(v104));
      v24 = C3DEngineContextGetRendererContextGL(a1, v9);
      switch(*(v17 + 32))
      {
        case 6:
          memset(&value, 0, sizeof(value));
          Matrix4x4 = C3DEngineContextGetMatrix4x4(a1, 1);
          v26 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v26, Matrix4x4, &buf);
          v27 = C3DEngineContextGetMatrix4x4(a1, 0);
          C3DMatrix4x4Mult(&buf, v27, &value);
          goto LABEL_94;
        case 7:
          v81 = C3DEngineContextGetMatrix4x4(a1, 1);
          v82 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v82, v81, &buf);
          goto LABEL_87;
        case 8:
          v68 = a1;
          v69 = 2;
          goto LABEL_84;
        case 9:
          v68 = a1;
          v69 = 1;
          goto LABEL_84;
        case 0xA:
          v68 = a1;
          v69 = 0;
LABEL_84:
          v77 = C3DEngineContextGetMatrix4x4(v68, v69);
          v78 = *(v17 + 24);
          goto LABEL_99;
        case 0xB:
          memset(&value, 0, sizeof(value));
          C3DEngineContextComputeNormalMatrix(a1, &value);
          goto LABEL_89;
        case 0xC:
          memset(&value, 0, sizeof(value));
          v88 = C3DEngineContextGetMatrix4x4(a1, 1);
          v89 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v89, v88, &buf);
          v90 = C3DEngineContextGetMatrix4x4(a1, 0);
          C3DMatrix4x4Mult(&buf, v90, &value);
          C3DMatrix4x4Invert(&value, &value);
LABEL_94:
          v83 = *(v17 + 24);
          p_value = &value;
          goto LABEL_95;
        case 0xD:
          v79 = C3DEngineContextGetMatrix4x4(a1, 1);
          v80 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v80, v79, &buf);
          C3DMatrix4x4Invert(&buf, &buf);
LABEL_87:
          v83 = *(v17 + 24);
          p_value = &buf;
LABEL_95:
          C3DRendererContextSetMatrix4x4UniformAtLocation(v24, UniformLocationOfSymbolNamed, p_value, v83);
          goto LABEL_102;
        case 0xE:
          v75 = a1;
          v76 = 2;
          goto LABEL_98;
        case 0xF:
          v75 = a1;
          v76 = 1;
          goto LABEL_98;
        case 0x10:
          v75 = a1;
          v76 = 0;
LABEL_98:
          v91 = C3DEngineContextGetMatrix4x4(v75, v76);
          C3DMatrix4x4Invert(v91, &v104);
          v78 = *(v17 + 24);
          v77 = &v104;
          goto LABEL_99;
        case 0x11:
          memset(&value, 0, sizeof(value));
          C3DEngineContextComputeNormalMatrix(a1, &value);
          C3DMatrix4x4Invert(&value, &value);
LABEL_89:
          v78 = *(v17 + 24);
          v77 = &value;
LABEL_99:
          C3DRendererContextSetMatrix4x4UniformAtLocation(v24, UniformLocationOfSymbolNamed, v77, v78);
          break;
        case 0x12:
          FXContext = C3DEngineContextGetFXContext(a1, v9);
          OutputFramebuffer = C3DFXContextGetOutputFramebuffer(FXContext, v71);
          if (OutputFramebuffer)
          {
            *&v74 = C3DFramebufferGetSize(OutputFramebuffer, v73);
          }

          else
          {
            Viewport = C3DEngineContextGetViewport(a1);
            v74 = vextq_s8(Viewport, Viewport, 8uLL).u64[0];
          }

          *value.columns[0].f32 = vdiv_f32(_D8, vmaxnm_f32(v74, _D8));
          C3DRendererContextSetVector2UniformAtLocation(v24, UniformLocationOfSymbolNamed, &value, *(v17 + 24));
          break;
        case 0x13:
          SystemTime = C3DEngineContextGetSystemTime(a1);
          v86 = *&_bindSemanticUniform_t0;
          if (*&_bindSemanticUniform_t0 == 0.0)
          {
            _bindSemanticUniform_t0 = *&SystemTime;
            v86 = SystemTime;
          }

          v87 = SystemTime - v86;
          value.columns[0].f32[0] = v87;
          C3DRendererContextSetFloatUniformAtLocation(v24, UniformLocationOfSymbolNamed, &value, *(v17 + 24));
          break;
        default:
          goto LABEL_103;
      }

      goto LABEL_103;
    }

LABEL_21:
    OutputDepthTexture = C3DEngineContextGetFXContext(a1, v9);
    if (*(v17 + 80))
    {
      v30 = OutputDepthTexture[16];
      if (v30)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((*(v17 + 80) & 2) == 0)
      {
        v29 = *(v17 + 32);
        if (v29 == 28)
        {
          OutputDepthTexture = C3DFXContextGetOutputDepthTexture(OutputDepthTexture, a1);
        }

        else if (v29 == 20)
        {
          OutputDepthTexture = C3DFXContextGetOutputColorTexture(OutputDepthTexture, a1);
        }

        else
        {
          OutputDepthTexture = C3DFramebufferRegistryGetTextureWithName(OutputDepthTexture[30], *(v17 + 56));
        }

LABEL_34:
        if (OutputDepthTexture)
        {
          v98 = OutputDepthTexture;
          v35 = *(v17 + 72);
          if (!v35)
          {
            v35 = C3DTextureSamplerBilinearNoAnisotropy(OutputDepthTexture, v9);
            *(v17 + 72) = CFRetain(v35);
          }

          if (v100)
          {
            v36 = C3DFXGLSLProgramObjectGetProgramID(a2, v9);
            v37 = C3DGLSLGetUniformType(RendererContextGL, v36, UniformLocationOfSymbolNamed);
            if (v37 != 5)
            {
              v39 = scn_default_log(v37, v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v93 = *(v17 + 56);
                buf.columns[0].i32[0] = 138412290;
                *(buf.columns[0].i64 + 4) = v93;
                _os_log_error_impl(&dword_21BEF7000, v39, OS_LOG_TYPE_ERROR, "Error: declared type doesn't match the uniform named %@", &buf, 0xCu);
              }
            }
          }

          C3DRendererContextSetIntUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, x);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(a2, v19, x);
          C3DRendererContextBindTexture(RendererContextGL, v98, v35, 0, x++);
          v16 = a2;
          goto LABEL_71;
        }

        goto LABEL_42;
      }

      v30 = OutputDepthTexture[17];
      if (v30)
      {
LABEL_33:
        OutputDepthTexture = *(v30 + 24);
        goto LABEL_34;
      }
    }

LABEL_42:
    if ((*(v23 + 345) & 1) == 0)
    {
      *(v23 + 345) = 1;
      v40 = scn_default_log(OutputDepthTexture, v9);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v17 + 56);
        buf.columns[0].i32[0] = 138412290;
        *(buf.columns[0].i64 + 4) = v41;
        v42 = v40;
        v43 = "Error: failed to find texture target named %@";
        goto LABEL_45;
      }

      goto LABEL_102;
    }

    goto LABEL_103;
  }

  return C3DRendererElementStateSetActiveTextureUnit(RendererElementState, x);
}

void C3DGLSLProfileBindProfileInputs(float32x4_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    PassCount = C3DFXTechniqueGetPassCount(a3, a2);
    if (PassCount >= 1)
    {
      v7 = PassCount;
      for (i = 0; i != v7; ++i)
      {
        PassAtIndex = C3DFXTechniqueGetPassAtIndex(a3, i);
        C3DGLSLProfileBindPassInputs(result, a2, PassAtIndex, a3, 0);
      }
    }
  }

  else if ((C3DGLSLProfileBindProfileInputs_done & 1) == 0)
  {
    C3DGLSLProfileBindProfileInputs_done = 1;
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      C3DGLSLProfileBindProfileInputs_cold_1(v10);
    }
  }
}

uint64_t C3DValueGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DValueGetTypeID_onceToken != -1)
  {
    C3DValueGetTypeID_cold_1();
  }

  return C3DValueGetTypeID_typeID;
}

uint64_t __C3DValueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DValueGetTypeID_typeID = result;
  qword_28173FEA8 = _C3DValueCopyInstanceVariables;
  return result;
}

uint64_t C3DValueCreate(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a1)
  {
    if (!C3DSizeOfBaseType(a1, a2))
    {
      return 0;
    }
  }

  if (C3DValueGetTypeID_onceToken != -1)
  {
    C3DValueGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DValueGetTypeID_typeID, 24);
  v6 = Instance;
  *(Instance + 18) = 0;
  *(Instance + 16) = v3;
  *(Instance + 32) = a2;
  if (v3)
  {
    Length = C3DValueGetLength(Instance, v5);
    *(v6 + 24) = malloc_type_calloc(Length, 1uLL, 0xD6FAB170uLL);
  }

  return v6;
}

uint64_t C3DValueGetLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32) * C3DSizeOfBaseType(*(a1 + 16), a2);
}

uint64_t C3DValueCreateDefault(uint64_t a1)
{
  v1 = a1;
  v2 = C3DValueCreate(a1, 1);
  v4 = v2;
  if (v1 == 11)
  {
    Bytes = C3DValueGetBytes(v2, v3);
    C3DMatrix4x4MakeIdentity(Bytes);
  }

  return v4;
}

uint64_t C3DValueGetBytes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DValueGetType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DValueGetTypeSemantic(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 18);
}

CFTypeRef C3DValueInitFrom(uint64_t a1, const void *a2)
{
  if (C3DValueGetTypeSemantic(a1, a2) == 1)
  {
    Bytes = C3DValueGetBytes(a1, v4);
    if (*Bytes)
    {
      CFRelease(*Bytes);
      *Bytes = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *Bytes = result;
  }

  else
  {
    Length = C3DValueGetLength(a1, v4);
    v9 = C3DValueGetBytes(a1, v8);

    return memcpy(v9, a2, Length);
  }

  return result;
}

size_t C3DValueCopyTo(uint64_t a1, void *a2)
{
  Length = C3DValueGetLength(a1, a2);
  Bytes = C3DValueGetBytes(a1, v5);
  memcpy(a2, Bytes, Length);
  return Length;
}

void CFStringScanFloats(char *a1, int *a2, unsigned int a3)
{
  if (a3)
  {
    CString = SCNStringGetCString(a1);
    if (a3 >= 1)
    {
      v6 = CString;
      v7 = 0;
      v8 = MEMORY[0x277D85DE0];
      while (1)
      {
        v19 = 0;
        v9 = strtod(v6, &v19);
        *&v9 = v9;
        a2[v7] = LODWORD(v9);
        if (v6 == v19)
        {
          break;
        }

        v10 = v19 - 1;
        do
        {
          v11 = v10[1];
          if ((v11 & 0x80000000) != 0)
          {
            v12 = __maskrune(v10[1], 0x4000uLL);
          }

          else
          {
            v12 = *(v8 + 4 * v11 + 60) & 0x4000;
          }

          ++v10;
        }

        while (v12);
        if (v11 == 44)
        {
          v6 = v10 + 1;
        }

        else
        {
          v6 = v10;
        }

        if (++v7 == a3)
        {
          return;
        }
      }

      if (v7 == 1 && a3 != 1)
      {
        v13 = 0;
        v15 = *a2;
        v14 = a2 + 2;
        LODWORD(v9) = v15;
        v16 = vdupq_n_s64(a3 - 2);
        do
        {
          v17 = vdupq_n_s64(v13);
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_21C27F640)));
          if (vuzp1_s16(v18, *&v9).u8[0])
          {
            *(v14 - 1) = LODWORD(v9);
          }

          if (vuzp1_s16(v18, *&v9).i8[2])
          {
            *v14 = LODWORD(v9);
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_21C27F630)))).i32[1])
          {
            v14[1] = LODWORD(v9);
            v14[2] = LODWORD(v9);
          }

          v13 += 4;
          v14 += 4;
        }

        while (((a3 + 2) & 0xFFFFFFFC) != v13);
      }
    }
  }
}

char *CFStringScanCGFloats(char *result, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return result;
  }

  result = SCNStringGetCString(result);
  v10 = result;
  if (a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = a3;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    *(a2 + 8 * v5) = strtod(v10, &v10);
    for (i = v10 + 1; ; ++i)
    {
      v9 = *(i - 1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      result = (*(v7 + 4 * v9 + 60) & 0x4000);
      if (!result)
      {
        goto LABEL_10;
      }

LABEL_9:
      v10 = i;
    }

    result = __maskrune(*(i - 1), 0x4000uLL);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v9 == 44)
    {
      v10 = i;
    }

    ++v5;
  }

  while (v5 != v6);
  return result;
}

CFStringRef C3DStringCreateSubstringAfterPrefix(const __CFString *a1, const __CFString *a2)
{
  v3 = CFStringFind(a1, a2, 0);
  if (v3.location == -1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1) - (v3.location + v3.length);
  if (v4.length < 1)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];

  v4.location = v3.location + v3.length;
  return CFStringCreateWithSubstring(v5, a1, v4);
}

BOOL C3DValueSetValueFromString(uint64_t a1, const __CFString *a2)
{
  Bytes = C3DValueGetBytes(a1, a2);
  v6 = Bytes;
  v7 = *(a1 + 16);
  if (v7 > 7)
  {
    switch(v7)
    {
      case 8u:
        v12 = 0;
        *&v26 = 0;
        SubstringAfterPrefix = C3DStringCreateSubstringAfterPrefix(a2, @"vec2(");
        if (SubstringAfterPrefix)
        {
          v14 = SubstringAfterPrefix;
          CFStringScanFloats(SubstringAfterPrefix, &v26, 2u);
          CFRelease(v14);
          v12 = v26;
        }

        *v6 = v12;
        return 1;
      case 9u:
        v26 = 0uLL;
        v24 = C3DStringCreateSubstringAfterPrefix(a2, @"vec3(");
        if (v24)
        {
          v25 = v24;
          CFStringScanFloats(v24, &v26, 3u);
          CFRelease(v25);
        }

        *v6 = v26;
        v6[2] = DWORD2(v26);
        return 1;
      case 0xAu:
        v26 = 0uLL;
        v9 = C3DStringCreateSubstringAfterPrefix(a2, @"vec4(");
        if (v9)
        {
          v10 = v9;
          CFStringScanFloats(v9, &v26, 4u);
          CFRelease(v10);
        }

        *v6 = v26;
        return 1;
    }

    goto LABEL_17;
  }

  switch(v7)
  {
    case 1u:
      DoubleValue = CFStringGetDoubleValue(a2);
      *v6 = DoubleValue;
      return 1;
    case 2u:
      *Bytes = CFStringGetIntValue(a2);
      return 1;
    case 3u:
      if (CFStringCompare(a2, @"true", 0))
      {
        v8 = 1;
      }

      else if (CFStringCompare(a2, @"false", 0))
      {
        v8 = 0;
      }

      else
      {
        v8 = CFStringGetIntValue(a2) != 0;
      }

      *v6 = v8;
      return 1;
  }

LABEL_17:
  v15 = scn_default_log(Bytes, v5);
  result = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (result)
  {
    C3DValueSetValueFromString_cold_1(v15, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  return result;
}

float32_t C3DValueConcat(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DValueConcat_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    C3DValueConcat_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_3(v20, a2, v21, v22, v23, v24, v25, v26);
    }
  }

  Type = C3DValueGetType(v5, a2);
  v29 = C3DValueGetType(a2, v28);
  if (Type != v29)
  {
    v31 = scn_default_log(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_4(v31, v30, v32, v33, v34, v35, v36, v37);
    }
  }

  v38 = C3DValueGetType(a3, v30);
  if (Type != v38)
  {
    v40 = scn_default_log(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_5(v40, v39, v41, v42, v43, v44, v45, v46);
    }
  }

  Bytes = C3DValueGetBytes(v5, v39);
  v49 = C3DValueGetBytes(a2, v48);
  v51 = C3DValueGetBytes(a3, v50);
  return C3DConcatBaseType(Type, Bytes, v49, v51, v52);
}

CFStringRef _C3DValueCFCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v4 = C3DBaseTypeStringDescription(*(a1 + 16), v3);
  return CFStringCreateWithFormat(v2, 0, @"<C3DValue %p - %@ ptr:%p >", a1, v4, *(a1 + 24));
}

__CFArray *_C3DValueCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  valuePtr = 2;
  v17 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v3, @"name", @"baseType");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  valuePtr = 2;
  v17 = a1 + 32;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v7, @"name", @"count");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = *(a1 + 16);
  v18 = 0;
  valuePtr = v12;
  v17 = *(a1 + 24);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v11, @"name", @"value");
  CFDictionarySetValue(v11, @"type", v13);
  CFDictionarySetValue(v11, @"address", v15);
  CFDictionarySetValue(v11, @"semantic", v14);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v14);
  CFRelease(v11);
  CFRelease(v15);
  CFRelease(v13);
  return Mutable;
}

void _C3DFXSamplerCFFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t __C3DFXSamplerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXSamplerGetTypeID_typeID = result;
  qword_2817430A8 = _C3DFXSamplerCopyInstanceVariables;
  return result;
}

uint64_t C3DFXSamplerCreate(uint64_t a1)
{
  if (C3DFXSamplerGetTypeID_onceToken != -1)
  {
    C3DFXSamplerCreate_cold_1();
  }

  v2 = C3DFXSamplerGetTypeID_typeID;

  return C3DTypeCreateInstance_(v2, 24);
}

CFTypeRef C3DFXSamplerSetTextureSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetTextureSampler(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

CFTypeRef C3DFXSamplerSetImage(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetImage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DFXSamplerSetTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

CFStringRef _C3DFXSamplerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXSampler>");
}

CFStringRef _C3DFXSamplerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXSampler>");
}

__CFArray *_C3DFXSamplerCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 2;
  valuePtr = 5;
  v12 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v3, @"name", @"sampler");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 2;
  valuePtr = 5;
  v12 = a1 + 24;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v7, @"name", @"image");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  return Mutable;
}

void __FillSetWithUVSet(uint64_t a1, __CFSet *a2, uint64_t a3)
{
  if (a3 != -1)
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 3, a3, 1);
    if (SourceWithSemanticAtIndex)
    {

      CFSetSetValue(a2, SourceWithSemanticAtIndex);
    }
  }
}

BOOL C3DNodeNeedsSpecialUpAxisConversion(uint64_t a1)
{
  result = 1;
  if ((C3DNodeHasCamera(a1) & 1) == 0)
  {
    Light = C3DNodeGetLight(a1, v2);
    if (!Light || (C3DLightGetType(Light, v4) & 0xFFFFFFFD) != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DIONeedsUnitOrUpAxisConversion(__n128 *a1, CFDictionaryRef theDict, int *a3, float *a4, _DWORD *a5)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToYUpIfNeeded")) == 0)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = CFBooleanGetValue(Value) != 0;
  if (a3)
  {
LABEL_6:
    *a3 = 0;
  }

LABEL_7:
  if (a4)
  {
    *a4 = 1.0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (v11)
  {
    v20.n128_u32[2] = 0;
    v20.n128_u64[0] = 0;
    C3DSceneGetUpAxis(a1, &v20);
    v12 = v20.n128_f32[1] <= 0.0001;
    if (a3 && v20.n128_f32[1] <= 0.0001)
    {
      if (v20.n128_f32[0] <= 0.0001)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      *a3 = v13;
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v20.n128_u32[0] = 0;
  if (theDict)
  {
    v14 = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToUnit");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberFloatType, &v20);
      if (v20.n128_f32[0] != 0.0)
      {
        if (a5)
        {
          *a5 = v20.n128_u32[0];
        }

        Unit = C3DSceneGetUnit(a1, v15);
        if (Unit != 0.0 && v20.n128_f32[0] != 0.0)
        {
          v17 = Unit / v20.n128_f32[0];
          v18 = fabs(v17 + -1.0);
          if (v18 > 0.0001)
          {
            v12 = 1;
          }

          else
          {
            v12 = v12;
          }

          if (a4 && v18 > 0.0001)
          {
            *a4 = v17;
            return 1;
          }
        }
      }
    }
  }

  return v12;
}

void C3DIOFinalizeLoadScene(__n128 *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v346 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v6 = a1;
  RootNode = C3DSceneGetRootNode(a1, a2);
  if (RootNode)
  {
    C3DNodeApplyHierarchy(RootNode, &__block_literal_global_95);
  }

  v8 = MEMORY[0x277CBED28];
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kSceneSourceRemoveColorArrays");
    if (Value)
    {
      if (CFEqual(*v8, Value))
      {
        v11 = C3DSceneGetRootNode(v6, v10);
        if (v11)
        {
          v12 = C3DNodeCopyNodesWithAttribute(v11, @"kMeshKey", 0);
          if (v12)
          {
            v13 = v12;
            Count = CFArrayGetCount(v12);
            if (Count >= 1)
            {
              v15 = Count;
              for (i = 0; i != v15; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
                Geometry = C3DNodeGetGeometry(ValueAtIndex, v18);
                Mesh = C3DGeometryGetMesh(Geometry, v20);
                C3DMeshRemoveSourcesWithSemantic(Mesh, 2);
              }
            }

            CFRelease(v13);
          }
        }
      }
    }

    v22 = CFDictionaryGetValue(a3, @"kSceneSourceRemoveAllLights");
    if (v22)
    {
      if (CFEqual(*v8, v22))
      {
        v24 = C3DSceneGetRootNode(v6, v23);
        if (v24)
        {
          v25 = C3DNodeCopyNodesWithAttribute(v24, @"kLightKey", 0);
          if (v25)
          {
            v26 = v25;
            v27 = CFArrayGetCount(v25);
            if (v27 >= 1)
            {
              v28 = v27;
              for (j = 0; j != v28; ++j)
              {
                v30 = CFArrayGetValueAtIndex(v26, j);
                C3DNodeRemoveFromParentNode(v30, v31);
              }
            }

            CFRelease(v26);
          }
        }
      }
    }

    v32 = CFDictionaryGetValue(a3, @"kSceneSourceCleanupMeshes");
    if (v32)
    {
      if (CFEqual(*v8, v32))
      {
        v34 = C3DSceneGetRootNode(v6, v33);
        if (v34)
        {
          v35 = C3DNodeCopyNodesWithAttribute(v34, @"kMeshKey", 0);
          if (v35)
          {
            v36 = v35;
            v303 = CFArrayGetCount(v35);
            if (v303 <= 0)
            {
              CFRelease(v36);
            }

            else
            {
              v298 = a3;
              v299 = v6;
              v37 = 0;
              allocator = *MEMORY[0x277CBECE8];
              cf = v36;
              do
              {
                v304 = v37;
                v38 = CFArrayGetValueAtIndex(v36, v37);
                v40 = C3DNodeGetGeometry(v38, v39);
                LightmapInfo = C3DNodeGetLightmapInfo(v38, v41);
                Skinner = C3DNodeGetSkinner(v38, v43);
                v46 = C3DGeometryGetMesh(v40, v45);
                v47 = MEMORY[0x277CBF158];
                theSet = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
                Mutable = CFSetCreateMutable(0, 0, v47);
                valuePtr.columns[0].i32[0] = 0;
                if (LightmapInfo)
                {
                  v49 = CFDictionaryGetValue(LightmapInfo, @"uv_set");
                  if (v49)
                  {
                    CFNumberGetValue(v49, kCFNumberIntType, &valuePtr);
                    v50 = valuePtr.columns[0].i32[0];
                  }

                  else
                  {
                    v50 = 1;
                    valuePtr.columns[0].i32[0] = 1;
                  }

                  SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v46, 3);
                  if (v50 >= SourcesCountForSemantic)
                  {
                    v54 = scn_default_log(SourcesCountForSemantic, v52);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.columns[0].i32[0] = 67109120;
                      buf.columns[0].i32[1] = valuePtr.columns[0].i32[0];
                      _os_log_impl(&dword_21BEF7000, v54, OS_LOG_TYPE_DEFAULT, "Warning: light_map uv_set:%d is pointing to an invalid uv_set(no corresponding source) and was reset to 1", &buf, 8u);
                    }

                    valuePtr.columns[0].i32[0] = 1;
                    v53 = 1;
                  }

                  else
                  {
                    v53 = valuePtr.columns[0].u32[0];
                  }

                  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v46, 3, v53, 0);
                  if (SourceWithSemanticAtIndex)
                  {
                    CFSetSetValue(theSet, SourceWithSemanticAtIndex);
                  }
                }

                MaterialsCount = C3DGeometryGetMaterialsCount(v40, v48);
                if (MaterialsCount >= 1)
                {
                  v57 = MaterialsCount;
                  for (k = 0; k != v57; ++k)
                  {
                    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v40, k);
                    CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex, v60);
                    if (CommonProfile)
                    {
                      v62 = CommonProfile;
                      UVSet = C3DEffectCommonProfileGetUVSet(CommonProfile, 0);
                      __FillSetWithUVSet(v46, theSet, UVSet);
                      v64 = C3DEffectCommonProfileGetUVSet(v62, 1);
                      __FillSetWithUVSet(v46, theSet, v64);
                      v65 = C3DEffectCommonProfileGetUVSet(v62, 2);
                      __FillSetWithUVSet(v46, theSet, v65);
                      v66 = C3DEffectCommonProfileGetUVSet(v62, 3);
                      __FillSetWithUVSet(v46, theSet, v66);
                      v67 = C3DEffectCommonProfileGetUVSet(v62, 5);
                      __FillSetWithUVSet(v46, theSet, v67);
                      v68 = C3DEffectCommonProfileGetUVSet(v62, 7);
                      __FillSetWithUVSet(v46, theSet, v68);
                      v69 = C3DEffectCommonProfileGetUVSet(v62, 8);
                      __FillSetWithUVSet(v46, theSet, v69);
                      v70 = C3DEffectCommonProfileGetUVSet(v62, 9);
                      __FillSetWithUVSet(v46, theSet, v70);
                      v71 = C3DEffectCommonProfileGetUVSet(v62, 10);
                      __FillSetWithUVSet(v46, theSet, v71);
                      v72 = C3DEffectCommonProfileGetUVSet(v62, 11);
                      __FillSetWithUVSet(v46, theSet, v72);
                      v73 = C3DEffectCommonProfileGetUVSet(v62, 12);
                      __FillSetWithUVSet(v46, theSet, v73);
                      v74 = C3DEffectCommonProfileGetUVSet(v62, 13);
                      __FillSetWithUVSet(v46, theSet, v74);
                      v75 = C3DEffectCommonProfileGetUVSet(v62, 14);
                      __FillSetWithUVSet(v46, theSet, v75);
                      v76 = C3DEffectCommonProfileGetUVSet(v62, 15);
                      __FillSetWithUVSet(v46, theSet, v76);
                      v77 = C3DEffectCommonProfileGetUVSet(v62, 16);
                      __FillSetWithUVSet(v46, theSet, v77);
                    }
                  }
                }

                v78 = C3DMeshGetSourcesCountForSemantic(v46, 3);
                if (v78 >= 1)
                {
                  v79 = v78;
                  for (m = 0; m != v79; ++m)
                  {
                    v81 = C3DMeshGetSourceWithSemanticAtIndex(v46, 3, m, 0);
                    if (v81)
                    {
                      v82 = v81;
                      if (!CFSetContainsValue(theSet, v81))
                      {
                        CFSetSetValue(Mutable, v82);
                      }
                    }
                  }
                }

                v83 = Mutable;
                CFSetApplyFunction(Mutable, __RemoveSources, v46);
                v85 = C3DGeometryGetMesh(v40, v84);
                if (!Skinner)
                {
                  v86 = v85;
                  PositionSource = C3DMeshGetPositionSource(v85, 1);
                  v88 = C3DMeshCopyAllSources(v86, 1);
                  v90 = C3DMeshSourceGetCount(PositionSource, v89);
                  v91 = malloc_type_malloc(8 * v90, 0x100004000313F17uLL);
                  v307 = malloc_type_malloc(8 * v90, 0x100004000313F17uLL);
                  v308 = v86;
                  v312 = v91;
                  if (v90 < 1)
                  {
                    v93 = 0;
                  }

                  else
                  {
                    memset(v91, 255, 8 * v90);
                    v92 = 0;
                    v93 = 0;
                    v310 = v90;
                    do
                    {
                      if (v90 <= v92 + 1)
                      {
                        v94 = v92 + 1;
                      }

                      else
                      {
                        v94 = v90;
                      }

                      while (*(v91 + v92) != -1)
                      {
                        if (v94 == ++v92)
                        {
                          v92 = v94 + 1;
                          goto LABEL_69;
                        }
                      }

                      *(v91 + v92) = v93;
                      v95 = v92 + 1;
                      for (n = v93; v95 < v90; ++v95)
                      {
                        if (*(v91 + v95) == -1)
                        {
                          v96 = CFArrayGetCount(v88);
                          if (v96 < 1)
                          {
                            goto LABEL_66;
                          }

                          v97 = v96;
                          v98 = 0;
                          for (ii = 0; ii != v97; v98 = ii >= v97)
                          {
                            v100 = CFArrayGetValueAtIndex(v88, ii);
                            Accessor = C3DMeshSourceGetAccessor(v100, v101, v102, v103, v104, v105, v106, v107);
                            if (Accessor)
                            {
                              v109 = Accessor;
                              ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
                              v112 = C3DSizeOfBaseType(ComponentsValueType, v111);
                              ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v109, v92);
                              v114 = C3DSourceAccessorGetValuePtrAtIndex(v109, v95);
                              ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v109);
                              if (memcmp(ValuePtrAtIndex, v114, ComponentsCountPerValue * v112))
                              {
                                break;
                              }
                            }

                            ++ii;
                          }

                          v90 = v310;
                          v91 = v312;
                          v93 = n;
                          if (v98)
                          {
LABEL_66:
                            *(v91 + v95) = v93;
                          }
                        }
                      }

                      v86 = v308;
                      v307[v93++] = v92++;
LABEL_69:
                      ;
                    }

                    while (v92 < v90);
                  }

                  if (CFArrayGetCount(v88) >= 1)
                  {
                    v117 = 0;
                    v315 = v93;
                    do
                    {
                      v118 = CFArrayGetValueAtIndex(v88, v117);
                      InputSetForSource = C3DMeshGetInputSetForSource(v86, v118, 1);
                      v126 = C3DMeshSourceGetAccessor(v118, v119, v120, v121, v122, v123, v124, v125);
                      v127 = C3DSourceAccessorGetComponentsValueType(v126);
                      v309 = v127;
                      v129 = C3DSizeOfBaseType(v127, v128);
                      v130 = C3DSourceAccessorGetComponentsCountPerValue(v126);
                      v131 = v130 * v129;
                      v132 = v130 * v129 * v93;
                      if (v132)
                      {
                        v133 = malloc_type_malloc(v130 * v129 * v93, 0x100004077774924uLL);
                      }

                      else
                      {
                        v133 = 0;
                      }

                      if (v93 >= 1)
                      {
                        v134 = v307;
                        v135 = v133;
                        v136 = v315;
                        do
                        {
                          v137 = *v134++;
                          v138 = C3DSourceAccessorGetValuePtrAtIndex(v126, v137);
                          memcpy(v135, v138, v131);
                          v135 += v131;
                          --v136;
                        }

                        while (v136);
                      }

                      v139 = CFDataCreate(allocator, v133, v132);
                      Semantic = C3DMeshSourceGetSemantic(v118, v140);
                      v142 = C3DSourceAccessorGetComponentsCountPerValue(v126);
                      Library = C3DSceneSourceGetLibrary(v126);
                      Offset = C3DSourceAccessorGetOffset(v126, v144);
                      v93 = v315;
                      v146 = C3DMeshSourceCreateWithData(Semantic, v139, v309, v142, v315, Library, Offset);
                      CFRelease(v139);
                      free(v133);
                      v86 = v308;
                      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(v308, v146, InputSetForSource);
                      CFRelease(v146);
                      ++v117;
                    }

                    while (v117 < CFArrayGetCount(v88));
                  }

                  ElementsCount = C3DMeshGetElementsCount(v86, v116);
                  v8 = MEMORY[0x277CBED28];
                  if (ElementsCount >= 1)
                  {
                    v148 = 0;
                    do
                    {
                      ElementAtIndex = C3DMeshGetElementAtIndex(v86, v148, 1);
                      buf.columns[0].i32[0] = 0;
                      Indexes = C3DMeshElementGetIndexes(ElementAtIndex, &buf);
                      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
                      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(ElementAtIndex, v152);
                      v155 = IndexCountPerPrimitive * PrimitiveCount;
                      switch(buf.columns[0].i32[0])
                      {
                        case 4:
                          BytePtr = CFDataGetBytePtr(Indexes);
                          if (v155 >= 1)
                          {
                            do
                            {
                              *BytePtr = *(v312 + *BytePtr);
                              BytePtr += 4;
                              --v155;
                            }

                            while (v155);
                          }

                          break;
                        case 2:
                          v158 = CFDataGetBytePtr(Indexes);
                          if (v155 >= 1)
                          {
                            do
                            {
                              *v158 = *(v312 + *v158);
                              v158 += 2;
                              --v155;
                            }

                            while (v155);
                          }

                          break;
                        case 1:
                          v156 = CFDataGetBytePtr(Indexes);
                          if (v155 >= 1)
                          {
                            do
                            {
                              *v156 = *(v312 + *v156);
                              ++v156;
                              --v155;
                            }

                            while (v155);
                          }

                          break;
                        default:
                          v160 = scn_default_log(IndexCountPerPrimitive, v154);
                          if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                          {
                            C3DIOFinalizeLoadScene_cold_1(&v318, v319, v160);
                          }

                          break;
                      }

                      ++v148;
                    }

                    while (v148 < C3DMeshGetElementsCount(v86, v157));
                  }

                  CFRelease(v88);
                  free(v312);
                  free(v307);
                  v83 = Mutable;
                }

                CFRelease(v83);
                CFRelease(theSet);
                v37 = v304 + 1;
                v36 = cf;
              }

              while (v304 + 1 != v303);
              CFRelease(cf);
              a3 = v298;
              v6 = v299;
            }
          }
        }
      }
    }

    v161 = CFDictionaryGetValue(a3, @"kSceneSourceCreateCameraIfAbsent");
    if (v161)
    {
      if (CFEqual(*v8, v161))
      {
        v163 = C3DSceneGetRootNode(v6, v162);
        if (v163)
        {
          v164 = C3DNodeCopyNodesWithAttribute(v163, @"kCameraKey", 1);
          if (!v164 || (v165 = v164, v166 = CFArrayGetCount(v164), CFRelease(v165), v166 <= 0))
          {
            v167 = C3DCreateDefaultCameraNode(v6, 1);
            if (v167)
            {
              v169 = v167;
              v170 = C3DSceneGetRootNode(v6, v168);
              C3DNodeAddChildNode(v170, v169);
              CFRelease(v169);
            }
          }
        }
      }
    }

    v171 = CFDictionaryGetValue(a3, @"kSceneSourceCreateLightIfAbsent");
    if (v171 && CFBooleanGetValue(v171))
    {
      v173 = C3DSceneGetRootNode(v6, v172);
      if (v173)
      {
        v174 = C3DNodeCopyNodesWithAttribute(v173, @"kLightKey", 0);
        if (v174)
        {
          v175 = v174;
          v176 = CFArrayGetCount(v174);
          if (v176 >= 1)
          {
            v177 = v176;
            v178 = 1;
            do
            {
              v179 = CFArrayGetValueAtIndex(v175, v178 - 1);
              Light = C3DNodeGetLight(v179, v180);
              Type = C3DLightGetType(Light, v182);
              if (v178 >= v177)
              {
                break;
              }

              ++v178;
            }

            while (!Type);
            if (!Type)
            {
              for (jj = 0; jj != v177; ++jj)
              {
                v185 = CFArrayGetValueAtIndex(v175, jj);
                v187 = C3DNodeGetLight(v185, v186);
                Color = C3DLightGetColor(v187, v188);
                if (((*Color + Color[1]) + Color[2]) >= 1.5)
                {
                  buf.columns[0] = 0uLL;
                  C3DColor4Make(&buf, 0.0, 0.0, 0.0, 0.0);
                  C3DLightSetColor(v187, &buf);
                }
              }
            }
          }

          CFRelease(v175);
        }
      }

      C3DSceneSetAttribute(v6, @"defaultLight", *v8);
    }

    v190 = CFDictionaryGetValue(a3, @"kSceneSourceCreateNormalsIfAbsent");
    if (v190)
    {
      if (CFEqual(*v8, v190))
      {
        v192 = C3DSceneGetRootNode(v6, v191);
        if (v192)
        {
          C3DNodeApplyHierarchy(v192, &__block_literal_global_15);
        }
      }
    }

    v193 = CFDictionaryGetValue(a3, @"kSceneSourceAdjustInvalidClippingPlanes");
    if (v193)
    {
      if (CFEqual(*v8, v193))
      {
        v195 = C3DSceneGetRootNode(v6, v194);
        if (v195)
        {
          v196 = v195;
          v197 = C3DNodeCopyNodesWithAttribute(v195, @"kCameraKey", 0);
          if (v197)
          {
            v198 = v197;
            v199 = CFArrayGetCount(v197);
            if (v199 > 0)
            {
              v200 = v199;
              v201 = a3;
              v202 = 0;
              v203 = 0;
              while (1)
              {
                v339 = 0u;
                v340 = 0u;
                v337 = 0u;
                v338 = 0u;
                v335 = 0u;
                v336 = 0u;
                v333 = 0u;
                v334 = 0u;
                v331 = 0u;
                v332 = 0u;
                memset(&buf, 0, sizeof(buf));
                v204 = CFArrayGetValueAtIndex(v198, v202);
                if (!v204)
                {
                  goto LABEL_149;
                }

                v205 = v204;
                if (!C3DNodeGetProjectionInfos(v204, &buf))
                {
                  goto LABEL_149;
                }

                ZFar = C3DProjectionInfosGetZFar(&buf, v206);
                if (ZFar <= C3DProjectionInfosGetZNear(&buf, v208))
                {
                  break;
                }

                if ((v203 & 1) == 0 && !C3DGetBoundingBox(v196, 1, &v341, &v342))
                {
                  goto LABEL_148;
                }

                v324 = 0u;
                v325 = 0u;
                memset(&valuePtr, 0, sizeof(valuePtr));
                C3DComputeFrustumPlanesFromNode(v205, &valuePtr, xmmword_21C27FDD0);
                v210.i64[0] = 0x3F0000003F000000;
                v210.i64[1] = 0x3F0000003F000000;
                v211 = vmulq_f32(vaddq_f32(v341, v342), v210);
                v212 = vmulq_f32(vsubq_f32(v342, v341), v210);
                v211.i32[3] = 1.0;
                v212.i32[3] = 0;
                v320 = valuePtr;
                v321 = v324;
                v322 = v325;
                v213 = scn_frustum_classify_aabb(&v320, v211, v212);
                if (v213 == 1)
                {
                  v215 = scn_default_log(v213, v214);
                  if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                  {
                    v320.columns[0].i16[0] = 0;
                    _os_log_impl(&dword_21BEF7000, v215, OS_LOG_TYPE_DEFAULT, "Warning: invalid zRange detected (whole scene clipped)", &v320, 2u);
                  }

LABEL_144:
                  Camera = C3DNodeGetCamera(v205, v209);
                  if (Camera)
                  {
                    ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(Camera, v217);
                    if (ProjectionInfosPtr)
                    {
                      v219 = ProjectionInfosPtr;
                      valuePtr.columns[0].i32[2] = 0;
                      valuePtr.columns[0].i64[0] = 0;
                      C3DNodeGetWorldPosition(v205, &valuePtr);
                      *v220.i64 = C3DVector3MidVector(v341, v342);
                      v221 = vsubq_f32(v341, v342);
                      v222 = vmulq_f32(v221, v221);
                      v223 = vsubq_f32(valuePtr.columns[0], v220);
                      v224 = vmulq_f32(v223, v223);
                      v225 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v222, v222, 8uLL), *&vextq_s8(v224, v224, 8uLL)), vadd_f32(vzip1_s32(*v222.i8, *v224.i8), vzip2_s32(*v222.i8, *v224.i8)))));
                      C3DProjectionInfosSetZFar(v219, v226, v225);
                      C3DProjectionInfosSetZNear(v219, v227, v225 / 250.0);
                    }
                  }
                }

                v203 = 1;
LABEL_149:
                if (v200 == ++v202)
                {
                  CFRelease(v198);
                  a3 = v201;
                  v8 = MEMORY[0x277CBED28];
                  goto LABEL_152;
                }
              }

              if ((v203 & 1) == 0 && !C3DGetBoundingBox(v196, 1, &v341, &v342))
              {
LABEL_148:
                v203 = 0;
                goto LABEL_149;
              }

              goto LABEL_144;
            }

            CFRelease(v198);
          }
        }
      }
    }

LABEL_152:
    v228 = CFDictionaryGetValue(a3, @"kSceneSourceMakeSourcesCheaper");
    if (v228)
    {
      if (CFBooleanGetValue(v228))
      {
        v230 = C3DSceneGetRootNode(v6, v229);
        if (v230)
        {
          v231 = C3DNodeCopyNodesWithAttribute(v230, @"kMeshKey", 0);
          if (v231)
          {
            v232 = v231;
            v233 = a3;
            v234 = CFArrayGetCount(v231);
            if (v234 >= 1)
            {
              v235 = v234;
              for (kk = 0; kk != v235; ++kk)
              {
                v237 = CFArrayGetValueAtIndex(v232, kk);
                v239 = C3DNodeGetGeometry(v237, v238);
                v241 = C3DNodeGetLightmapInfo(v237, v240);
                C3DGeometryMakeSourcesCheaperWhenRelevant(v239, v241);
              }
            }

            CFRelease(v232);
            a3 = v233;
          }
        }
      }
    }
  }

  v317 = 0;
  v316 = 0.0;
  v242 = C3DIONeedsUnitOrUpAxisConversion(v6, a3, &v317 + 1, &v317, &v316);
  if (v242)
  {
    v244 = HIDWORD(v317);
    v245 = v317;
    if (HIDWORD(v317) || *&v317 != 1.0)
    {
      if (a5 == 1)
      {
        v246 = scn_default_log(v242, v243);
        if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
        {
          buf.columns[0].i16[0] = 0;
          _os_log_impl(&dword_21BEF7000, v246, OS_LOG_TYPE_INFO, "Info: SCNSceneSourceConvertUnitsToMetersKey and SCNSceneSourceConvertToYUpKey have no effect on compressed assets. Use Xcode's compression options instead", &buf, 2u);
        }
      }

      else
      {
        v247 = v316;
        v248 = a2;
        if (a2)
        {
          v249 = CFRetain(a2);
        }

        else
        {
          v248 = C3DLibraryCreate();
          v249 = C3DLibraryFillWithContentOfScene(v248, v6, 0);
        }

        TypeID = C3DMeshGetTypeID(v249, v250);
        v320.columns[0].i64[0] = MEMORY[0x277D85DD0];
        v320.columns[0].i64[1] = 0x40000000;
        v320.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke;
        v320.columns[1].i64[1] = &__block_descriptor_tmp_17;
        v320.columns[2].i64[0] = __PAIR64__(v245, v244);
        v320.columns[2].i8[8] = 0;
        C3DLibraryApplyEntriesWithType(v248, TypeID, &v320);
        v254 = C3DNodeGetTypeID(v252, v253);
        v327[0] = MEMORY[0x277D85DD0];
        v327[1] = 0x40000000;
        v327[2] = ___convertUnitsAndUpAxis_block_invoke_2;
        v327[3] = &__block_descriptor_tmp_18_2;
        v328 = v244;
        v329 = v245;
        C3DLibraryApplyEntriesWithType(v248, v254, v327);
        v257 = C3DSkinGetTypeID(v255, v256);
        v341.i64[0] = MEMORY[0x277D85DD0];
        v341.i64[1] = 0x40000000;
        v342.i64[0] = ___convertUnitsAndUpAxis_block_invoke_3;
        v342.i64[1] = &__block_descriptor_tmp_19;
        v343 = v244;
        v344 = v245;
        v345 = 0;
        C3DLibraryApplyEntriesWithType(v248, v257, &v341);
        if (v244 == 1)
        {
          memset(&buf, 0, sizeof(buf));
          memset(&valuePtr, 0, sizeof(valuePtr));
          v326 = xmmword_21C27F910;
          C3DMatrix4x4MakeAxisAngleRotation(&valuePtr, &v326, 1.57079633);
          C3DMatrix4x4Invert(&valuePtr, &buf);
          v261 = C3DSceneGetRootNode(v6, v260);
          v258 = _convertDirectionalNodes(v261, &valuePtr, &buf);
        }

        if (*&v245 != 1.0)
        {
          v262 = C3DLightGetTypeID(v258, v259);
          buf.columns[0].i64[0] = MEMORY[0x277D85DD0];
          buf.columns[0].i64[1] = 0x40000000;
          buf.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke_4;
          buf.columns[1].i64[1] = &__block_descriptor_tmp_20_6;
          buf.columns[2].i32[0] = v245;
          C3DLibraryApplyEntriesWithType(v248, v262, &buf);
          v265 = C3DCameraGetTypeID(v263, v264);
          valuePtr.columns[0].i64[0] = MEMORY[0x277D85DD0];
          valuePtr.columns[0].i64[1] = 0x40000000;
          valuePtr.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke_5;
          valuePtr.columns[1].i64[1] = &__block_descriptor_tmp_21;
          valuePtr.columns[2].i32[0] = v245;
          C3DLibraryApplyEntriesWithType(v248, v265, &valuePtr);
          if (v247 != 0.0)
          {
            C3DSceneSetUnit(v6, v266, v247);
          }
        }

        if (v244)
        {
          v326 = xmmword_21C27F8C0;
          C3DSceneSetUpAxis(v6, &v326);
        }

        CFRelease(v248);
      }
    }
  }

  if (!a3)
  {
    if (C3DMetalIsSupported())
    {
      return;
    }

    goto LABEL_194;
  }

  v267 = CFDictionaryGetValue(a3, @"kSceneSourceFlattenScene");
  if (v267)
  {
    if (CFEqual(*v8, v267))
    {
      AnimationManager = C3DSceneGetAnimationManager(v6, v268);
      if (!AnimationManager || C3DAnimationManagerIsEmpty(AnimationManager, v270))
      {
        v271 = C3DSceneGetRootNode(v6, v270);
        v272 = C3DNodeCopyChildNodesPassingTest(v271, &__block_literal_global_27_0, 1);
        v273 = CFArrayGetCount(v272);
        CFRelease(v272);
        if (v273 <= 0)
        {
          v274 = a3;
          v275 = v6;
          v276 = _C3DCreateFlattenedGeometryFromNodeHierarchy(v271, 1, 1, 0);
          v278 = C3DNodeCreate(v276, v277);
          v279 = C3DNodeCopyChildNodesPassingTest(v271, &__block_literal_global_30_0, 1);
          memset(&buf, 0, sizeof(buf));
          v280 = CFArrayGetCount(v279);
          if (v280 >= 1)
          {
            v282 = v280;
            for (mm = 0; mm != v282; ++mm)
            {
              v284 = CFArrayGetValueAtIndex(v279, mm);
              C3DNodeComputeWorldMatrix(v284, &buf);
              C3DNodeSetMatrix(v284, &buf);
              Copy = C3DNodeCreateCopy(v284, 0);
              C3DNodeAddChildNode(v278, Copy);
              CFRelease(Copy);
            }
          }

          v286 = C3DNodeCreate(v280, v281);
          C3DNodeSetGeometry(v286, v276);
          CFRelease(v276);
          C3DNodeSetName(v286, @"nodeFromflattenedMesh");
          C3DNodeAddChildNode(v278, v286);
          CFRelease(v286);
          v289 = C3DSceneCreate(v287, v288);
          C3DSceneSetRootNode(v289, v278);
          CFRelease(v278);
          CFRelease(v279);
          v6 = v275;
          a3 = v274;
          if (v289)
          {
            v291 = C3DSceneGetRootNode(v289, v290);
            CFRetain(v291);
            C3DSceneSetRootNode(v289, 0);
            C3DSceneSetRootNode(v275, v291);
            CFRelease(v291);
            CFRelease(v289);
          }
        }
      }
    }
  }

  v292 = CFDictionaryGetValue(a3, @"kSceneSourceSplitMeshesForGLES");
  IsSupported = C3DMetalIsSupported();
  if (!v292)
  {
    if (IsSupported)
    {
      goto LABEL_195;
    }

LABEL_194:
    v295 = C3DSceneGetRootNode(v6, v294);
    C3DSplitMeshesIfNeededInNodeTree(v295, 0xFFFFLL);
    if (!a3)
    {
      return;
    }

    goto LABEL_195;
  }

  if (CFEqual(*v8, v292))
  {
    goto LABEL_194;
  }

LABEL_195:
  v296 = CFDictionaryGetValue(a3, @"kSceneSourceInterleaveSources");
  if (v296 && CFBooleanGetValue(v296))
  {
    _C3DIOApplyFunctionToMeshes(v6, __InterleaveSources);
  }

  v297 = CFDictionaryGetValue(a3, @"kSceneSourceDeinterleaveSources");
  if (v297)
  {
    if (CFBooleanGetValue(v297))
    {
      _C3DIOApplyFunctionToMeshes(v6, __DeinterleaveSources);
    }
  }
}

void _C3DIOApplyFunctionToMeshes(uint64_t a1, void (*a2)(uint64_t))
{
  RootNode = C3DSceneGetRootNode(a1, a2);
  if (RootNode)
  {
    v4 = C3DNodeCopyNodesWithAttribute(RootNode, @"kMeshKey", 0);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          Geometry = C3DNodeGetGeometry(ValueAtIndex, v10);
          a2(Geometry);
        }
      }

      CFRelease(v5);
    }
  }
}

void __InterleaveSources(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1, a2);
  CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(Mesh);
  if (CopyWithInterleavedSources)
  {
    v5 = CopyWithInterleavedSources;
    C3DGeometrySetMesh(a1, CopyWithInterleavedSources);

    CFRelease(v5);
  }
}

void __DeinterleaveSources(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1, a2);
  if (C3DMeshIsInterleaved(Mesh))
  {
    CopyWithDeinterleavedSources = C3DMeshCreateCopyWithDeinterleavedSources(Mesh, v4);
    if (CopyWithDeinterleavedSources)
    {
      v6 = CopyWithDeinterleavedSources;
      C3DGeometrySetMesh(a1, CopyWithDeinterleavedSources);

      CFRelease(v6);
    }
  }
}

const __CFURL *C3DIOCopyResolvedImageURL(const __CFURL *a1, CFDictionaryRef theDict)
{
  v19 = *MEMORY[0x277D85DE8];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"preferredExtensions");
  }

  else
  {
    Value = 0;
  }

  v5 = CFDictionaryGetValue(theDict, @"kSceneSourceUseSafeMode");
  if (v5 && CFBooleanGetValue(v5))
  {
    v6 = CFURLCopyScheme(a1);
    if (v6)
    {
      v7 = v6;
      v8 = CFStringCompare(v6, @"file", 0);
      if (v8)
      {
        v10 = scn_default_log(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = a1;
          _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Safe mode enabled, denying the download of a network URL %@", &v17, 0xCu);
        }

        CFRelease(v7);
        return 0;
      }

      CFRelease(v7);
    }

    v12 = CFCopySearchPathForDirectoriesInDomains();
  }

  else
  {
    v12 = 0;
  }

  v13 = CFDictionaryGetValue(theDict, @"kSceneSourceOverrideAssetURLs");
  if (v13)
  {
    v14 = CFBooleanGetValue(v13) != 0;
    if (theDict)
    {
LABEL_16:
      v15 = CFDictionaryGetValue(theDict, @"kSceneSourceAssetDirectoryURLs");
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    if (theDict)
    {
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_19:
  v11 = C3DIOCopyURLForInitialURL(a1, v15, Value, 0, v12, v14);
  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t C3DIOShouldActivateSecurityChecks(const __CFURL *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSceneSourceCheckConsistency");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  v5 = C3DURLIsInMainBundle(a1);
  v6 = v5;
  if (a1 && (v5 & 1) == 0 && (v7 = CFURLCopyPath(a1)) != 0 && (v8 = v7, HasPrefix = CFStringHasPrefix(v7, @"/System"), CFRelease(v8), HasPrefix))
  {
    return 0;
  }

  else
  {
    return v6 ^ 1u;
  }
}

void ___convertUnitsAndUpAxis_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___meshConvertUnitAndUpAxis_block_invoke;
  v6[3] = &__block_descriptor_tmp_23_1;
  v7 = v3;
  v8 = v4;
  C3DMeshApplySources(a2, 0, v6);
  C3DMeshResetBoundingVolumes(a2, v5);
}

void ___convertUnitsAndUpAxis_block_invoke_2(uint64_t a1, __n128 *a2, float32x4_t a3)
{
  v4 = *(a1 + 32);
  a3.i32[0] = *(a1 + 36);
  v20 = a3;
  *v5.i64 = C3DNodeGetPosition(a2);
  if (v4 == 1)
  {
    v6.i64[0] = __PAIR64__(v5.u32[2], v5.u32[0]);
    v6.f32[2] = -v5.f32[1];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v6.f32[0] = -v5.f32[1];
    v6.i32[1] = v5.i32[0];
    v6.i32[2] = v5.i32[2];
  }

  v6.i32[3] = v5.i32[3];
  v5 = v6;
LABEL_6:
  v6.i32[0] = 1.0;
  C3DNodeSetPosition(a2, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v20, v6)), 0), vmulq_n_f32(v5, v20.f32[0]), v5));
  if (!v4)
  {
    goto LABEL_14;
  }

  C3DNodeGetAxisAngle(a2, v7);
  if (v4 == 1)
  {
    v16 = v9.n128_f32[1];
    v9.n128_u32[1] = v9.n128_u32[2];
    v9.n128_f32[2] = -v16;
    C3DNodeSetAxisAngle(a2, v8, v9);
    *v18.i64 = C3DNodeGetScale(a2, v17);
    v14 = v18.i32[3];
    v15 = vuzp1q_s32(v18, vrev64q_s32(v18));
  }

  else
  {
    if (v4 != 2)
    {
      C3DNodeSetAxisAngle(a2, v8, v9);
      v15.n128_f64[0] = C3DNodeGetScale(a2, v19);
      goto LABEL_13;
    }

    v10.n128_u64[1] = v9.n128_u64[1];
    v10.n128_f32[0] = -v9.n128_f32[1];
    v10.n128_u32[1] = v9.n128_u32[0];
    C3DNodeSetAxisAngle(a2, v8, v10);
    *v13.i64 = C3DNodeGetScale(a2, v11);
    v14 = v13.i32[3];
    v15 = vzip1q_s32(vextq_s8(v13, v13, 4uLL), v13);
  }

  v15.n128_u32[3] = v14;
LABEL_13:
  C3DNodeSetScale(a2, v12, v15);
LABEL_14:

  C3DNodeGeometryDidUpdate(a2, v7);
}

uint64_t ___convertUnitsAndUpAxis_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(a2);
  v6 = DefaultShapeMatrix[3];
  v8 = *DefaultShapeMatrix;
  v7 = DefaultShapeMatrix[1];
  v14.columns[2] = DefaultShapeMatrix[2];
  v14.columns[3] = v6;
  v14.columns[0] = v8;
  v14.columns[1] = v7;
  _convertMatrix(&v14, v3, v4);
  v13 = v14;
  C3DSkinSetDefaultShapeMatrix(a2, &v13);
  InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(a2);
  JointsCount = C3DSkinGetJointsCount(a2);
  if (JointsCount >= 1)
  {
    v11 = JointsCount;
    do
    {
      memset(&v13, 0, sizeof(v13));
      C3DMatrix4x4Invert(InverseBindMatricesPtr, &v13);
      _convertMatrix(&v13, v3, v4);
      C3DMatrix4x4Invert(&v13, InverseBindMatricesPtr++);
      --v11;
    }

    while (v11);
  }

  return C3DSkinInverseBindMatricesHaveChanged(a2);
}

uint64_t _convertDirectionalNodes(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (C3DNodeNeedsSpecialUpAxisConversion(result))
    {
      memset(v20, 0, sizeof(v20));
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      C3DNodeGetMatrix(v5, v6, &v16);
      C3DMatrix4x4Mult(a2, &v16, v20);
      C3DNodeSetMatrix(v5, v20);
      ChildNodesCount = C3DNodeGetChildNodesCount(v5);
      if (ChildNodesCount)
      {
        v8 = 0;
        v9 = ChildNodesCount;
        do
        {
          ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(v5, v8);
          C3DNodeGetMatrix(ChildNodeAtIndex, v11, v15);
          v16 = v15[0];
          v17 = v15[1];
          v18 = v15[2];
          v19 = v15[3];
          C3DMatrix4x4Mult(a3, &v16, v20);
          C3DNodeSetMatrix(ChildNodeAtIndex, v20);
          ++v8;
        }

        while (v9 != v8);
      }
    }

    result = C3DNodeGetChildNodesCount(v5);
    if (result)
    {
      v12 = 0;
      v13 = result;
      do
      {
        v14 = C3DNodeGetChildNodeAtIndex(v5, v12);
        result = _convertDirectionalNodes(v14, a2, a3);
        ++v12;
      }

      while (v13 != v12);
    }
  }

  return result;
}

float64x2_t ___convertUnitsAndUpAxis_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a2 + 288) = v2 * *(a2 + 288);
  result = vmulq_n_f64(*(a2 + 72), v2);
  *(a2 + 72) = result;
  return result;
}

void ___meshConvertUnitAndUpAxis_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 == 4 || a3 == 1)
  {
    v9 = *(result + 32);
    a4.i32[0] = 1.0;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v9 = *(result + 32);
    a4.i32[0] = *(result + 36);
  }

  _sourceConvert(a2, v9, a3, a5, a6, a7, a8, a9, a4);
}

void _sourceConvert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9)
{
  v9 = a2;
  v20 = 0u;
  v21 = 0u;
  C3DMeshSourceGetContent(a1, a2, &v20);
  if (v21)
  {
    v12 = 0;
    v10.i32[0] = 1.0;
    v13 = a9.f32[0];
    v14 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a9, v10)), 0);
    v18 = v14;
    do
    {
      *v15.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v21), (v20 + v12 * BYTE6(v21)), v14, v13, v11);
      if (v9 == 1)
      {
        v16 = v15;
        v16.i32[1] = v15.i32[2];
        v16.f32[2] = -v15.f32[1];
      }

      else
      {
        v16 = v15;
        if (v9 == 2)
        {
          v16.f32[0] = -v15.f32[1];
          v16.i32[1] = v15.i32[0];
          v16.i32[2] = v15.i32[2];
        }
      }

      v17 = vbslq_s8(v18, vmulq_n_f32(v16, a9.f32[0]), v16);
      v17.i32[3] = v15.i32[3];
      C3DConvertFloatingTypeFromFloat4(BYTE4(v21), v20 + v12 * BYTE6(v21), v17);
      ++v12;
    }

    while (v12 < v21);
  }
}

double _convertMatrix(uint64_t a1, int a2, float a3)
{
  v21.i32[2] = 0;
  v21.i64[0] = 0;
  v20.i32[2] = 0;
  v20.i64[0] = 0;
  v18 = 0u;
  v19 = 0u;
  C3DMatrix4x4GetAffineTransforms(a1, &v21, &v19, &v20);
  C3DQuaternionGetAxisAngle(&v19, &v18);
  if (a2 == 1)
  {
    v8 = v18;
    v8.i32[1] = v18.i32[2];
    v8.f32[2] = -v18.f32[1];
    v18 = v8;
    v6 = __PAIR64__(v21.u32[2], v21.u32[0]);
    v7 = -v21.f32[1];
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    v5.i64[1] = v18.i64[1];
    v5.f32[0] = -v18.f32[1];
    v5.i32[1] = v18.i32[0];
    v18 = v5;
    *&v6 = -v21.f32[1];
    HIDWORD(v6) = v21.i32[0];
    v7 = v21.f32[2];
  }

  v21.f32[2] = v7;
  v21.i64[0] = v6;
LABEL_6:
  if (a3 != 1.0)
  {
    v21 = vmulq_n_f32(v21, a3);
  }

  v9 = v20;
  if (a2 == 1)
  {
    v9 = vuzp1q_s32(v20, vrev64q_s32(v20));
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_13;
    }

    v9 = vzip1q_s32(vextq_s8(v20, v20, 4uLL), v20);
  }

  v20.i32[2] = v9.i32[2];
  v20.i64[0] = v9.i64[0];
LABEL_13:
  __asm { FMOV            V2.4S, #1.0 }

  if (!(!_ZF & _CF))
  {
    v15 = _Q2;
    v15.i32[1] = v9.i32[1];
    v15.i32[2] = v9.i32[2];
    v20.i32[2] = v9.i32[2];
    v9.i32[0] = 1.0;
    v20.i64[0] = v9.i64[0];
    v9 = v15;
  }

  if (fabs(*&v9.i32[1] + -1.0) <= 0.000001)
  {
    _Q2.i32[0] = v9.i32[0];
    _Q2.i32[2] = v9.i32[2];
    v20.i32[2] = v9.i32[2];
    v9.i32[1] = 1.0;
    v20.i64[0] = v9.i64[0];
    v9 = _Q2;
  }

  if (fabs(*&v9.i32[2] + -1.0) <= 0.000001)
  {
    v20.i32[2] = 1065353216;
    v20.i64[0] = v9.i64[0];
  }

  C3DQuaternionMakeAxisAngle(&v19, &v18);
  *&result = C3DMatrix4x4MakeAffine(a1, &v21, &v19, &v20).n128_u64[0];
  return result;
}

void C3D::CIFilterPass::CIFilterPass(C3D::CIFilterPass *this, C3D::RenderGraph *a2, C3D::ScenePass *a3, __C3DNode *a4)
{
  C3D::CustomPass::CustomPass(this, a2, a3, 0);
  *v5 = &unk_282DC6C00;
  v5[16] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[20] = a4;
  v5[21] = 0;
}

void C3D::CIFilterPass::setup(__C3DNode **this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 4), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(&v7, this);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 28) = 115;
  *(v2 + 26) = 1;
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 1;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  v4 = C3D::CIFilterEffectColorPrefix(v3);
  *(v3 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, v4, this[20]);
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(&v7, this);
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *(v3 + 26) = 2;
  *(v3 + 28) = 115;
  v5 = this[3];
  *&v7 = this[1];
  v6 = C3D::RenderGraph::createPass<C3D::CIFilterDrawNodesPass,C3D::ScenePass *,__C3DNode *&>(v5, &v7, this + 20);
  this[16] = v6;
  C3D::Pass::addDependency(this, v6);
}

C3D::CIFilterDrawNodesPass *C3D::RenderGraph::createPass<C3D::CIFilterDrawNodesPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::ScenePass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5392, 16, 0);
  C3D::CIFilterDrawNodesPass::CIFilterDrawNodesPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::CIFilterPass::compile(C3D::CIFilterPass *this)
{
  v2 = *(*(this + 3) + 128);
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v2, v3);
  *(this + 21) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void **C3D::SmartPtr<CIContext *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator=(void **a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *a1;
  *a1 = a2;
  if (v5)
  {
  }

  return a1;
}

void C3D::CIFilterPass::execute(float32x4_t *a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  Stats = C3DEngineContextGetStats(a1[1].i64[0], a2);
  v5 = CACurrentMediaTime();
  v6 = C3D::PassDescriptor::outputAtIndex(&a1[2], 0);
  v7 = *(v6 + 16);
  v8 = *(v6 + 18);
  v11 = C3D::CIFilterPass::_computeProjectedBox(a1, *(a2 + 8));
  if (*&v11.i32[2] <= *v11.i32 || *&v11.i32[3] <= *&v11.i32[1])
  {
    v13 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_DEFAULT, "Warning: CIFilter should have been clipped by the culling", buf, 2u);
    }

LABEL_7:
    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v5;
    return;
  }

  if (*&v11.i32[3] < 0.0 || *v11.i32 >= v7 || *&v11.i32[1] >= v8)
  {
    v16 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: CIFilter should have been clipped by the culling (2)", buf, 2u);
    }

    goto LABEL_7;
  }

  v64 = v7;
  v63 = a2;
  v17 = *v11.i32;
  v18 = *&v11.i32[1];
  v19 = (*&v11.i32[2] - *v11.i32);
  v20 = (*&v11.i32[3] - *&v11.i32[1]);
  v21 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
  [v21 setDefaults];
  v22 = v8;
  v23 = v8 - (v18 + v20);
  [v21 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v17, v23, v19, v20), @"inputRectangle"}];
  v24 = [objc_alloc(MEMORY[0x277CBF758]) initWithMTLTexture:C3D::Pass::inputTextureAtIndex(a1 options:{0), 0}];
  v25 = *MEMORY[0x277CBFAF0];
  v61 = v24;
  [v21 setValue:? forKey:?];
  v26 = *MEMORY[0x277CBFB50];
  v27 = [v21 valueForKey:*MEMORY[0x277CBFB50]];
  v62 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[10].i64[1] + 16, v28);
  Filters = C3DNodeGetFilters(a1[10].i64[0], v29);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v31 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v31)
  {
    v32 = *v67;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(Filters);
        }

        v34 = *(*(&v66 + 1) + 8 * i);
        [v34 setValue:v27 forKey:v25];
        v27 = [v34 valueForKey:v26];
      }

      v31 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v31);
  }

  [v27 extent];
  v39 = v22 - (v38 + v37);
  if (v35 < 0.0)
  {
    v36 = v36 + v35;
  }

  v40 = 0.0;
  if (v35 >= 0.0)
  {
    v41 = v35;
  }

  else
  {
    v41 = 0.0;
  }

  if (v39 >= 0.0)
  {
    v42 = v37;
  }

  else
  {
    v42 = v37 + v39;
  }

  v43 = v64;
  if (v39 >= 0.0)
  {
    v40 = v39;
  }

  if (v41 + v36 <= v43)
  {
    v44 = v36;
  }

  else
  {
    v44 = v43 - v41;
  }

  if (v40 + v42 <= v22)
  {
    v45 = v42;
  }

  else
  {
    v45 = v22 - v40;
  }

  v59 = v45;
  v60 = v44;
  v46.f64[0] = v44;
  v46.f64[1] = v45;
  v65 = v41;
  v47.f64[0] = v41;
  v58 = v40;
  v47.f64[1] = v40;
  a1[9] = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v46);
  v49 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (!v49)
  {
    v50 = scn_default_log(0, v48);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      C3D::CIFilterPass::execute(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  [v62 render:v27 toMTLTexture:v49 commandBuffer:*v63 bounds:C3DColorSpaceLinearSRGB() colorSpace:{v65, v22 - (v58 + v59), v60}];
  *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v5;
}

int8x16_t C3D::CIFilterPass::_computeProjectedBox(C3D::CIFilterPass *this, unsigned int a2)
{
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v5 = a2;
  v6.i32[0] = *(v4 + 16);
  v6.i32[1] = *(v4 + 18);
  *v7.f32 = vcvt_f32_u32(v6);
  v7.i64[1] = v7.i64[0];
  v19 = v7;
  WorldMatrix = C3DNodeGetWorldMatrix(*(this + 20), v8);
  CullingContext = C3D::DrawNodesPass::getCullingContext(*(this + 16));
  C3DMatrix4x4Mult(WorldMatrix, (CullingContext + (v5 << 6) + 3856), v30);
  v27 = 0uLL;
  v11 = C3DNodeComputeHierarchicalBoundingBox(*(this + 20), 1, &v28);
  C3D::CIFilterPass::computeBoundingRectangle(v11, &v28, &v29, v30, &v27, &v26);
  v20 = vmulq_f32(v27, v19);
  v12 = *(this + 3);
  v13 = (**this)(this);
  v21[1] = 0;
  v21[2] = 0;
  v21[0] = v13;
  v22 = 0;
  v23 = this;
  v24 = 1;
  v25 = 1;
  v14 = C3D::RenderGraph::search(v12, v21);
  if (!v14)
  {
    return v20;
  }

  v15 = *(v14 + 9);
  if ((vminvq_u32(vceqzq_f32(v15)) & 0x80000000) != 0)
  {
    return v20;
  }

  else
  {
    v16 = v20.i64[0];
    v17.i64[0] = *(v14 + 18);
    v17.i64[1] = v20.i64[1];
    result.i64[1] = *(v14 + 19);
    result.i64[0] = vbslq_s8(vcgtq_f32(v20, v15), v17, result).u64[0];
  }

  return result;
}

void C3D::CIFilterPass::computeBoundingRectangle(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, _OWORD *a6)
{
  v8 = 0;
  v9 = 0;
  v44 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_21C280320;
  v10 = *a2;
  v11 = *a3;
  LODWORD(v12) = vaddq_f32(*a2, *a3).u32[0];
  LODWORD(v13) = HIDWORD(a2->i64[0]);
  LODWORD(v14) = HIDWORD(a3->i64[0]);
  LODWORD(v15) = v12;
  *(&v15 + 1) = v13 + v14;
  v16 = COERCE_FLOAT(a2->i64[1]);
  v17 = COERCE_FLOAT(a3->i64[1]);
  v29 = v16 + v17;
  v28 = v15;
  v31 = v16 - v17;
  v30 = v15;
  *(&v12 + 1) = v13 - v14;
  v33 = v16 + v17;
  v32 = v12;
  v35 = v16 - v17;
  v34 = v12;
  v10.i32[0] = vsubq_f32(v10, v11).u32[0];
  v11.i32[0] = v10.i32[0];
  v11.f32[1] = v13 + v14;
  v37 = v16 + v17;
  v36 = v11.i64[0];
  v39 = v16 - v17;
  v38 = v11.i64[0];
  v10.f32[1] = v13 - v14;
  v41 = v16 + v17;
  v40 = v10.i64[0];
  v43 = v16 - v17;
  v42 = v10.i64[0];
  *a6 = 0u;
  v18 = 1.0;
  while (2)
  {
    v19 = 16 * v8++;
    while (1)
    {
      v20 = *(&v28 + v19);
      v20.f32[3] = v18;
      v21 = C3DVector4MultMatrix4x4(a4, v20);
      if (v22 <= 0.0)
      {
        break;
      }

      v23 = (1.0 / v22) * *&v21;
      v24 = *a5;
      v18 = 1.0;
      if (v23 < COERCE_FLOAT(*a5))
      {
        v24.f32[0] = (1.0 / v22) * *&v21;
        *a5 = v24;
      }

      v25 = vmuls_lane_f32(1.0 / v22, *&v21, 1);
      if (v25 < v24.f32[1])
      {
        v24.f32[1] = v25;
        *a5 = v24;
      }

      if (v23 > v24.f32[2])
      {
        v24.f32[2] = v23;
        *a5 = v24;
      }

      if (v25 > v24.f32[3])
      {
        v24.f32[3] = v25;
        *a5 = v24;
      }

      ++v8;
      v19 += 16;
      if (v8 == 9)
      {
        v26 = xmmword_21C27FDD0;
        if ((v9 & 1) == 0)
        {
          v27.i64[0] = 0x3F0000003F000000;
          v27.i64[1] = 0x3F0000003F000000;
          v26 = vmlaq_f32(v27, v27, *a5);
        }

        goto LABEL_18;
      }
    }

    v9 = 1;
    v18 = 1.0;
    if (v8 != 8)
    {
      continue;
    }

    break;
  }

  v26 = xmmword_21C27FDD0;
LABEL_18:
  *a5 = v26;
}

void C3D::CIFilterPassResource::~CIFilterPassResource(C3D::CIFilterPassResource *this)
{
  *this = &unk_282DC6C70;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6C70;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

C3D::CIFilterDrawNodesPass *C3D::CIFilterDrawNodesPass::CIFilterDrawNodesPass(C3D::CIFilterDrawNodesPass *this, C3D::RenderGraph *a2, C3D::ScenePass *a3, __C3DNode *a4)
{
  v10 = 0;
  v12 = 0u;
  v13 = 0x20000;
  memset(v9, 0, sizeof(v9));
  v11 = -1;
  BYTE8(v12) = 1;
  v7 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v9);
  *v7 = &unk_282DC6C90;
  *(v7 + 671) = a4;
  *(this + 670) = *(C3D::DrawNodesPass::getCullingContext(a3) + 4680);
  return this;
}

uint64_t C3D::CIFilterDrawNodesPass::setup(C3D::CIFilterDrawNodesPass *this)
{
  C3D::Pass::setOutputCount(this, 2u);
  v2 = *(this + 670);
  *(this + 112) = v2 != 0;
  *(this + 625) = v2;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(v23, this);
  *(v3 + 16) = *v23;
  *(v3 + 32) = v24;
  *(v3 + 28) = 115;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 66) = *(v3 + 66) & 0xFFBC | 0x42;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  v5 = C3D::CIFilterEffectDepthPrefix(v4);
  *(v4 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, v5, *(this + 671));
  *(v4 + 64) = 2;
  C3D::Pass::parentDepthDesc(v23, this);
  *(v4 + 16) = *v23;
  *(v4 + 32) = v24;
  *(v4 + 66) = *(v4 + 66) & 0xFFFC | 2;
  *(this + 296) = 1;
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 2), v6);
  C3DStackAllocatorPushFrame(StackAllocator, v8);
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(v23, StackAllocator);
  *(this + 672) = v23;
  v9 = *(*(this + 3) + 16);
  Aligned = C3DScratchAllocatorAllocateAligned(v9, 24, 8, 0);
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, v9);
  v11 = *(this + 671);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = ___ZN3C3D21CIFilterDrawNodesPass5setupEv_block_invoke;
  v22[3] = &__block_descriptor_48_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
  v22[4] = this;
  v22[5] = Aligned;
  C3DNodeApplyHierarchy(v11, v22);
  *(this + 34) = Aligned;
  C3D::DrawNodesPass::setup(this, v12);
  v13 = LOWORD(v23[2]);
  C3D::Pass::setInputCount(this, LOWORD(v23[2]));
  if (v13)
  {
    v15 = 0;
    do
    {
      v16 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](v23, v15);
      v17 = C3D::PassDescriptor::inputAtIndex((this + 32), v15);
      *v17 = *v16;
      v18 = v16[4];
      v20 = v16[1];
      v19 = v16[2];
      v17[3] = v16[3];
      v17[4] = v18;
      v17[1] = v20;
      v17[2] = v19;
      v15 = (v15 + 1);
    }

    while (v13 != v15);
  }

  return C3DStackAllocatorPopFrame(StackAllocator, v14);
}

void C3D::CIFilterDrawNodesPass::_setupPointOfViewMatrices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  C3D::DrawNodesPass::_setupPointOfViewMatrices(a1, a2, a3);
  v4 = *(a1 + 5360);
  if (v4)
  {

    C3DCullingContextSetupMirrorMatrices(a1 + 320, v4);
  }
}

uint64_t C3D::CIFilterDrawNodesPass::_shouldPushNodeToVisible(C3D::CIFilterDrawNodesPass *this, __C3DNode *a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(this + 671) != a2 && (*(a2 + 221) & 0x40) != 0)
  {
    v5 = *(a2 + 114);
    v6 = *(a2 + 113);
    v7 = *(a2 + 112);
    v8 = this + 16 * a3;
    C3D::PassIODescriptor::PassIODescriptor(v32, 2);
    C3D::Pass::parentColorDesc(&v28, this);
    v34 = v28;
    v35 = v29;
    WORD6(v34) = 115;
    v10 = C3D::CIFilterEffectColorPrefix(v9);
    v33 = C3D::Pass::nameWithPrefixAndPointer(this, v10, a2);
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(*(this + 672), v32);
    C3D::PassIODescriptor::PassIODescriptor(&v28, 2);
    C3D::Pass::parentDepthDesc(&v26, this);
    v29 = v26;
    v30 = v27;
    v31 = 2;
    BYTE10(v29) = 7;
    v12 = C3D::CIFilterEffectDepthPrefix(v11);
    *(&v28 + 1) = C3D::Pass::nameWithPrefixAndPointer(this, v12, a2);
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(*(this + 672), &v28);
    if ((*(v8 + 1310) + 1) > *(v8 + 1311))
    {
      v15 = scn_default_log(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    v23 = *(v8 + 1310);
    v24 = (*(v8 + 654) + 4 * v23);
    *v24 = v7;
    v24[1] = v5 + v6 - 1;
    *(v8 + 1310) = v23 + 1;
  }

  return 1;
}

BOOL ___ZN3C3D21CIFilterDrawNodesPass5setupEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 32);
  C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(*(a1 + 40), &v4);
  return v4 != *(v2 + 5368) && (*(v4 + 221) & 0x40) != 0;
}

void C3D::computeSampleCountsPerLevels(uint64_t a1, unsigned int a2, void *a3, int a4, double a5, double a6)
{
  LODWORD(a5) = 28.0;
  if (a4)
  {
    *&a5 = (4 * [a3 width]);
    if (*&a5 >= 8192.0)
    {
      *&a5 = 8192.0;
    }

    HIDWORD(a6) = 1107296256;
    if (*&a5 <= 32.0)
    {
      *&a5 = 32.0;
    }

    *&a5 = *&a5 + -4.0;
  }

  if (a2)
  {
    v8 = 0;
    *&a6 = (a2 - 1);
    v9 = vdupq_n_s64(a2 - 1);
    v10 = xmmword_21C27F630;
    v11 = xmmword_21C27F640;
    v12 = (a2 + 3) & 0x1FFFFFFFCLL;
    v30 = vdupq_lane_s32(*&a5, 0);
    v31 = vdupq_n_s64(4uLL);
    v13 = (a1 + 8);
    __asm { FMOV            V0.4S, #4.0 }

    v28 = _Q0;
    v29 = vdupq_lane_s32(*&a6, 0);
    v32 = v9;
    do
    {
      v35 = v10;
      v19 = vorr_s8(vdup_n_s32(v8), 0x300000002);
      v34 = v11;
      v20 = vmovn_s64(vcgeq_u64(v9, v11));
      v21.i32[0] = v8;
      v21.i32[1] = v8 + 1;
      v33 = vuzp1_s16(v20, v19).u8[0];
      v21.u64[1] = v19;
      v39 = vdivq_f32(vcvtq_f32_u32(v21), v29);
      v36 = powf(v39.f32[1], 0.25);
      v22.f32[0] = powf(v39.f32[0], 0.25);
      v22.f32[1] = v36;
      v37 = v22;
      v23 = powf(v39.f32[2], 0.25);
      v24 = v37;
      v24.f32[2] = v23;
      v38 = v24;
      v25 = powf(v39.f32[3], 0.25);
      v26 = v38;
      v26.f32[3] = v25;
      v27 = vmlaq_f32(v28, v30, v26);
      if (v33)
      {
        *(v13 - 2) = v27.f32[0];
      }

      if (vuzp1_s16(v20, *&v27).i8[2])
      {
        *(v13 - 1) = v27.f32[1];
      }

      v9 = v32;
      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v32, *&v35))).i32[1])
      {
        *v13 = v27.f32[2];
        v13[1] = v27.f32[3];
      }

      v8 += 4;
      v10 = vaddq_s64(v35, v31);
      v11 = vaddq_s64(v34, v31);
      v13 += 4;
    }

    while (v12 != v8);
  }
}

void C3D::ComputeRadiancePass::ComputeRadiancePass(C3D::ComputeRadiancePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC6D20;
  v6 = *&a4->var0;
  *(v5 + 116) = *&a4->var8;
  *(v5 + 108) = v6;
}

uint64_t C3D::ComputeRadiancePass::setup(C3D::ComputeRadiancePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "PreFiltered Radiance";
  v3 = *(this + 108) == 0;
  v4 = *(this + 58);
  *(result + 16) = v4 << (*(this + 108) != 0);
  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 2;
  }

  *(result + 18) = v4;
  *(result + 20) = 0;
  *(result + 24) = v5;
  *(result + 25) = 2;
  *(result + 27) = 0;
  *(result + 28) = 115;
  *(result + 32) = 0;
  *(result + 30) = 5;
  return result;
}

void *C3D::ComputeRadiancePass::compile(C3D::ComputeRadiancePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  C3DEngineContextHasFeatures(*(this + 2), 512);
  v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x4FB7DAE84DD6F2FCLL ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(this + 108)) ^ ((0xC6A4A7935BD1E995 * *(this + 108)) >> 47))))) ^ *(this + 29));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::ComputeRadiancePass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v6 = [v4 mipmapLevelCount];
  v7 = [v5 mipmapLevelCount];
  v8 = [v5 pixelFormat];
  v9 = MEMORY[0x28223BE20](v8);
  v10 = *(a1 + 112) == 1;
  v39 = &v36 - v11;
  v40 = v7;
  C3D::computeSampleCountsPerLevels(&v36 - v11, v7, v4, v10, v9, v12);
  v13 = *(*(a1 + 120) + 16);
  if ([v4 pixelFormat] == 125)
  {
    v13 = *(*(a1 + 120) + 24);
  }

  v14 = [(SCNMTLOpenSubdivComputeEvaluator *)v13 computeEvaluator];
  if (v3->_computePipelineState != v14)
  {
    v3->_computePipelineState = v14;
    [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v14];
  }

  v15 = *(a1 + 108);
  v38 = v4;
  if (v15)
  {
    if (v3->_textures[1] != v4)
    {
      v3->_textures[1] = v4;
      v3->_texturesToBind[0] |= 2uLL;
    }

    if (v40)
    {
      v16 = 0;
      v17 = v6 - v40;
      if ((v6 - v40) >= -1)
      {
        v17 = -1;
      }

      v18 = v17 + 1;
      do
      {
        if (v6 >= 2)
        {
          v19 = [v38 newTextureViewWithPixelFormat:objc_msgSend(v38 textureType:"pixelFormat") levels:5 slices:v18 + v16, 1, 0, 6];
          if (v3->_textures[1] != v19)
          {
            v3->_textures[1] = v19;
            v3->_texturesToBind[0] |= 2uLL;
          }
        }

        v43 = v16 / ([v5 mipmapLevelCount] - 1);
        SCNMTLComputeCommandEncoder::setBytes(v3, &v43, 4uLL, 0);
        v42 = *&v39[4 * v16];
        SCNMTLComputeCommandEncoder::setBytes(v3, &v42, 4uLL, 1uLL);
        v20 = [v5 newTextureViewWithPixelFormat:v8 textureType:2 levels:v16 slices:1, 0, 1];
        v21 = v20;
        if (v3->_textures[0] != v20)
        {
          v3->_textures[0] = v20;
          v3->_texturesToBind[0] |= 1uLL;
        }

        SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v20 width], [(MTLTexture *)v20 height]);

        ++v16;
      }

      while (v40 != v16);
    }
  }

  else
  {
    HasFeatures = C3DEngineContextHasFeatures(*(a1 + 16), 512);
    if (v3->_textures[1] != v4)
    {
      v3->_textures[1] = v4;
      v3->_texturesToBind[0] |= 2uLL;
    }

    if (v40)
    {
      v23 = 0;
      v24 = v6 - v40;
      if ((v6 - v40) >= -1)
      {
        v24 = -1;
      }

      v37 = v24 + 1;
      do
      {
        v25 = v6;
        if (v6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v26 = v38;
          v27 = [v38 pixelFormat];
          v28 = [v26 newTextureViewWithPixelFormat:v27 textureType:5 levels:v37 + v23 slices:1, 0, 6];
          v29 = v28;
          if (v3->_textures[1] != v28)
          {
            v3->_textures[1] = v28;
            v3->_texturesToBind[0] |= 2uLL;
          }
        }

        v43 = v23 / ([v5 mipmapLevelCount] - 1);
        SCNMTLComputeCommandEncoder::setBytes(v3, &v43, 4uLL, 0);
        v42 = *&v39[4 * v23];
        SCNMTLComputeCommandEncoder::setBytes(v3, &v42, 4uLL, 1uLL);
        v30 = 0;
        do
        {
          if (HasFeatures)
          {
            v31 = [v5 newTextureViewWithPixelFormat:v8 textureType:5 levels:v23 slices:1, 0, 6];
            v32 = v31;
            if (v3->_textures[0] != v31)
            {
              v3->_textures[0] = v31;
              v3->_texturesToBind[0] |= 1uLL;
            }

            SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v3, v31);
          }

          else
          {
            v41 = v30;
            SCNMTLComputeCommandEncoder::setBytes(v3, &v41, 4uLL, 2uLL);
            v33 = [v5 newTextureViewWithPixelFormat:v8 textureType:2 levels:v23 slices:1, v30, 1];
            v32 = v33;
            if (v3->_textures[0] != v33)
            {
              v3->_textures[0] = v33;
              v3->_texturesToBind[0] |= 1uLL;
            }

            SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v33 width], [(MTLTexture *)v33 height]);
          }

          v35 = v30++ > 4 || HasFeatures;
        }

        while ((v35 & 1) == 0);

        ++v23;
        v6 = v25;
      }

      while (v23 != v40);
    }
  }
}

void C3D::ComputeRadiancePass::Resource::~Resource(C3D::ComputeRadiancePass::Resource *this)
{
  *this = &unk_282DC6D90;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC6D90;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t _createConstraintFromDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v4 = *a1;
  if (v3)
  {
    v5 = [v4 _handle];
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 44);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v40.var0.var0[0].var0.var0[0] = *(a1 + 8);
    v40.var0.var0[0].var0.var0[1] = v8;
    *&v40.var0.var0[0].var0.var0[2] = v11;
    *v40.var0.var0[1].var0.var0 = __PAIR64__(v9, v6);
    *&v40.var0.var0[1].var0.var0[2] = v12;
    *v40.var0.var0[2].var0.var0 = __PAIR64__(v10, v7);
    *&v40.var0.var0[2].var0.var0[2] = v13;
    *v40.var1.var0.var0 = *(a1 + 56);
    *&v40.var1.var0.var0[2] = v14;
    v15 = [*(a1 + 72) _handle];
    v16 = *(a1 + 84);
    v17 = *(a1 + 88);
    v18 = *(a1 + 96);
    v19 = *(a1 + 100);
    v20 = *(a1 + 104);
    v21 = *(a1 + 112);
    v22 = *(a1 + 116);
    v23 = *(a1 + 120);
    v24 = *(a1 + 136);
    v39.var0.var0[0].var0.var0[0] = *(a1 + 80);
    *&v39.var0.var0[0].var0.var0[1] = __PAIR64__(v21, v18);
    v39.var0.var0[0].var0.var0[3] = 0.0;
    *v39.var0.var0[1].var0.var0 = __PAIR64__(v19, v16);
    *&v39.var0.var0[1].var0.var0[2] = v22;
    *v39.var0.var0[2].var0.var0 = __PAIR64__(v20, v17);
    *&v39.var0.var0[2].var0.var0[2] = v23;
    *v39.var1.var0.var0 = *(a1 + 128);
    *&v39.var1.var0.var0[2] = v24;
    v25 = btAlignedAllocInternal(704, 16);
    btConeTwistConstraint::btConeTwistConstraint(v25, v5, v15, &v40, &v39);
    v26 = *(a1 + 160);
    *(v25 + 512) = vcvt_f32_f64(*(a1 + 144));
    *(v25 + 520) = v26;
    *(v25 + 496) = 0x3E99999A3F000000;
    *(v25 + 504) = 1065353216;
    *(v25 + 592) = 1;
  }

  else
  {
    if (!v4)
    {
      v27 = scn_default_log(0, a2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v27);
      }
    }

    v28 = [*a1 _handle];
    v29 = *(a1 + 12);
    v30 = *(a1 + 16);
    v31 = *(a1 + 24);
    v32 = *(a1 + 28);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = *(a1 + 44);
    v36 = *(a1 + 48);
    v37 = *(a1 + 64);
    v40.var0.var0[0].var0.var0[0] = *(a1 + 8);
    v40.var0.var0[0].var0.var0[1] = v31;
    *&v40.var0.var0[0].var0.var0[2] = v34;
    *v40.var0.var0[1].var0.var0 = __PAIR64__(v32, v29);
    *&v40.var0.var0[1].var0.var0[2] = v35;
    *v40.var0.var0[2].var0.var0 = __PAIR64__(v33, v30);
    *&v40.var0.var0[2].var0.var0[2] = v36;
    *v40.var1.var0.var0 = *(a1 + 56);
    *&v40.var1.var0.var0[2] = v37;
    v25 = btAlignedAllocInternal(704, 16);
    btConeTwistConstraint::btConeTwistConstraint(v25, v28, &v40);
  }

  return v25;
}

{
  *v3.var0.var0 = *(a1 + 28);
  *&v3.var0.var0[2] = *(a1 + 36);
  v57.var1 = v3;
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 24);
  if (fabsf(v6) <= 0.70711)
  {
    v15 = (v4 * v4) + (v5 * v5);
    v16 = 1.0 / sqrtf(v15);
    v14 = -(v4 * v16);
    v9 = v5 * v16;
    v11 = -(v6 * (v5 * v16));
    v12 = v6 * v14;
    v13 = v15 * v16;
    v10 = 0.0;
  }

  else
  {
    v7 = (v6 * v6) + (v4 * v4);
    v8 = 1.0 / sqrtf(v7);
    v9 = -(v6 * v8);
    v10 = v4 * v8;
    v11 = v7 * v8;
    v12 = -(v5 * (v4 * v8));
    v13 = v5 * v9;
    v14 = 0.0;
  }

  v57.var0.var0[0].var0.var0[0] = *(a1 + 16);
  v57.var0.var0[0].var0.var0[1] = v14;
  *&v57.var0.var0[0].var0.var0[2] = LODWORD(v11);
  *v57.var0.var0[1].var0.var0 = __PAIR64__(LODWORD(v9), LODWORD(v4));
  *&v57.var0.var0[1].var0.var0[2] = LODWORD(v12);
  *v57.var0.var0[2].var0.var0 = __PAIR64__(LODWORD(v10), LODWORD(v6));
  *&v57.var0.var0[2].var0.var0[2] = LODWORD(v13);
  *v17.var0.var0 = *(a1 + 52);
  *&v17.var0.var0[2] = *(a1 + 60);
  v56.var1 = v17;
  v18 = *(a1 + 40);
  v19 = *(a1 + 44);
  v20 = *(a1 + 48);
  v21 = fabsf(v20) <= 0.70711;
  v22 = (v19 * v19) + (v18 * v18);
  v23 = 1.0 / sqrtf(v22);
  v24 = -(v19 * v23);
  v25 = v18 * v23;
  v26 = -(v20 * (v18 * v23));
  v27 = v20 * v24;
  v28 = v22 * v23;
  v29 = 0.0;
  v30 = (v20 * v20) + (v19 * v19);
  v31 = 1.0 / sqrtf(v30);
  v32 = -(v20 * v31);
  v33 = v19 * v31;
  v34 = v30 * v31;
  v35 = -(v18 * v33);
  if (v21)
  {
    v34 = v26;
  }

  else
  {
    v24 = 0.0;
  }

  v56.var0.var0[0].var0.var0[0] = *(a1 + 40);
  *&v56.var0.var0[0].var0.var0[1] = __PAIR64__(LODWORD(v34), LODWORD(v24));
  v56.var0.var0[0].var0.var0[3] = 0.0;
  v36 = v18 * v32;
  if (v21)
  {
    v37 = v25;
  }

  else
  {
    v37 = v32;
  }

  if (v21)
  {
    v38 = v27;
  }

  else
  {
    v29 = v33;
    v28 = v36;
    v38 = v35;
  }

  *v56.var0.var0[1].var0.var0 = __PAIR64__(LODWORD(v37), LODWORD(v19));
  *&v56.var0.var0[1].var0.var0[2] = LODWORD(v38);
  *v56.var0.var0[2].var0.var0 = __PAIR64__(LODWORD(v29), LODWORD(v20));
  *&v56.var0.var0[2].var0.var0[2] = LODWORD(v28);
  v39 = *a1;
  if (*(a1 + 8))
  {
    v40 = [v39 _handle];
    v41 = [*(a1 + 8) _handle];
    v42 = btAlignedAllocInternal(1248, 16);
    btSliderConstraint::btSliderConstraint(v42, v40, v41, &v57, &v56, 1);
  }

  else
  {
    if (!v39)
    {
      v43 = scn_default_log(0, a2);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v43);
      }
    }

    v44 = [*a1 _handle];
    v42 = btAlignedAllocInternal(1248, 16);
    btSliderConstraint::btSliderConstraint(v42, v44, &v57, 1);
  }

  *(v42 + 212) = vcvt_f32_f64(*(a1 + 64));
  v45 = *(a1 + 80);
  v46 = fmodf(v45, 6.2832);
  if (v46 >= -3.1416)
  {
    if (v46 > 3.1416)
    {
      v46 = v46 + -6.2832;
    }
  }

  else
  {
    v46 = v46 + 6.2832;
  }

  *(v42 + 220) = v46;
  v47 = *(a1 + 88);
  v48 = fmodf(v47, 6.2832);
  if (v48 >= -3.1416)
  {
    if (v48 > 3.1416)
    {
      v48 = v48 + -6.2832;
    }
  }

  else
  {
    v48 = v48 + 6.2832;
  }

  *(v42 + 224) = v48;
  v49 = *(a1 + 96);
  if (v49 != 0.0)
  {
    *(v42 + 1216) = 1;
    v50 = v49;
    *(v42 + 1220) = v50;
    v51 = *(a1 + 104);
    *(v42 + 1224) = v51;
  }

  v52 = *(a1 + 112);
  if (v52 != 0.0)
  {
    *(v42 + 1232) = 1;
    v53 = v52;
    *(v42 + 1236) = v53;
    v54 = *(a1 + 120);
    *(v42 + 1240) = v54;
  }

  return v42;
}

__n128 *C3DIOCreateSceneWithData(const __CFData *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, uint64_t a5)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"__library__", a3);
  v11 = _C3DIOCreateSceneWithData(a1, a2, a3, v10, a5);
  CFRelease(v10);
  return v11;
}

__n128 *_C3DIOCreateSceneWithData(CFDataRef data, uint64_t a2, const void *a3, __CFDictionary *a4, uint64_t a5)
{
  v103 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  error = 0;
  v99 = 0;
  if (a5)
  {
    (*(a5 + 16))(a5, 4, 0, &v99, 0.0);
    if (v99)
    {
      return 0;
    }
  }

  format = 0;
  v10 = CFPropertyListCreateWithData(0, data, 0, &format, 0);
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v10, @"version");
  v12 = CFDictionaryGetValue(v10, @"readerMinimumRequiredVersion");
  valuePtr = C3DParseVersionNumber(Value, v13);
  v16 = C3DParseVersionNumber(@"0.12", v14);
  v17 = v16;
  if (v12)
  {
    v18 = C3DParseVersionNumber(v12, v15);
  }

  else
  {
    v18 = v16;
  }

  v20 = C3DParseVersionNumber(@"0.10", v15);
  v22 = C3DParseVersionNumber(@"0.9", v21);
  v23 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a4, @"versionNumber", v23);
  CFRelease(v23);
  if (valuePtr < v20)
  {
    v26 = scn_default_log(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_9();
      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v18 > v17)
  {
    v27 = scn_default_log(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_8();
      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!a5)
    {
LABEL_25:
      CFRelease(v10);
      return 0;
    }

LABEL_24:
    v28 = CFErrorCreate(0, @"SCNKitErrorDomain", 1, 0);
    (*(a5 + 16))(a5, 0xFFFFFFFFLL, v28, &v99, 0.0);
    CFRelease(v28);
    goto LABEL_25;
  }

  if (valuePtr >= v22)
  {
    v30 = CFDictionaryGetValue(v10, @"zipped");
    if (v30)
    {
      if (CFBooleanGetValue(v30))
      {
        v31 = CFDictionaryGetValue(v10, @"zippedData");
        if (v31)
        {
          v33 = C3DIOCreateUnzippedData(v31);
          if (v33)
          {
            v35 = v33;
            CFRelease(v10);
            v10 = CFPropertyListCreateWithData(0, v35, 0, &format, &error);
            CFRelease(v35);
            if (!v10)
            {
              v74 = scn_default_log(v36, v37);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                _C3DIOCreateSceneWithData_cold_1(&error, v74);
              }

              if (error)
              {
                CFRelease(error);
                error = 0;
              }

              __EmitMalformedDocumentErrorIfNeeded(a5, &v99);
              return 0;
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            goto LABEL_36;
          }

          v72 = scn_default_log(0, v34);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            _C3DIOCreateSceneWithData_cold_2();
          }
        }

        else
        {
          v71 = scn_default_log(0, v32);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            _C3DIOCreateSceneWithData_cold_3();
          }
        }

        __EmitMalformedDocumentErrorIfNeeded(a5, &v99);
        goto LABEL_25;
      }
    }
  }

LABEL_36:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v99, 0.2);
    if (v99)
    {
      goto LABEL_25;
    }
  }

  cf = 0;
  v38 = CFDictionaryGetValue(v10, @"library");
  if (!v38)
  {
    v49 = scn_default_log(0, v39);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_7();
    }

    __EmitMalformedDocumentErrorIfNeeded(a5, &v99);
    v19 = 0;
LABEL_10:
    if (v19)
    {
      CFRelease(v19);
    }

    if (!v10)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v40 = C3DInitWithPropertyList(a3, v38, a4, &cf);
  if ((v40 & 1) == 0)
  {
    v42 = scn_default_log(v40, v41);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      if (!a5)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    _C3DIOCreateSceneWithData_cold_4();
    if (a5)
    {
LABEL_42:
      (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v99, 1.0);
    }
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v99, 0.4);
    v19 = 0;
    if (v99)
    {
      goto LABEL_10;
    }
  }

  v43 = CFDictionaryGetValue(v10, @"scene");
  if (!v43)
  {
    v19 = 0;
    goto LABEL_58;
  }

  v45 = v43;
  v19 = C3DSceneCreate(v43, v44);
  v46 = C3DInitWithPropertyList(v19, v45, a4, &cf);
  if ((v46 & 1) == 0)
  {
    v48 = scn_default_log(v46, v47);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      if (!a5)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    _C3DIOCreateSceneWithData_cold_5();
    if (a5)
    {
LABEL_51:
      (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v99, 1.0);
    }
  }

LABEL_52:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_58:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v99, 0.5);
    if (v99)
    {
      goto LABEL_10;
    }
  }

  v50 = CFDictionaryGetValue(v10, @"scene");
  if (v50)
  {
    v51 = C3DFinalizeDeserialization(v19, a3, v50, &cf);
    if (v51)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_64;
    }

    v73 = scn_default_log(v51, v52);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_6();
      if (!a5)
      {
LABEL_92:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_10;
      }
    }

    else if (!a5)
    {
      goto LABEL_92;
    }

    (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v99, 1.0);
    goto LABEL_92;
  }

LABEL_64:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v99, 0.6);
    if (v99)
    {
      goto LABEL_10;
    }
  }

  v53 = CFDictionaryGetValue(v10, @"library");
  if (v53)
  {
    v54 = C3DFinalizeDeserialization(a3, a3, v53, &cf);
    if (!v54)
    {
      v56 = scn_default_log(v54, v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v56, OS_LOG_TYPE_DEFAULT, "Warning: cannot finalize library deserialization", buf, 2u);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v99, 0.9);
    if (v99)
    {
      goto LABEL_10;
    }
  }

  v57 = CFDictionaryGetValue(v10, @"created");
  if (v57)
  {
    v58 = v57;
    C3DSceneSourceSetProperty(a2, @"created", v57);
    C3DSceneSourceSetProperty(a2, @"modified", v58);
  }

  v96.n128_u32[2] = 0;
  v96.n128_u64[0] = 0;
  C3DSceneGetUpAxis(v19, &v96);
  snprintf(buf, 0x10uLL, "%.1f %.1f %.1f", v96.n128_f32[0], v96.n128_f32[1], v96.n128_f32[2]);
  v59 = C3DIOCreateCFStringFromCString(buf);
  C3DSceneSourceSetProperty(a2, @"up_axis", v59);
  CFRelease(v59);
  Unit = C3DSceneGetUnit(v19, v60);
  v61 = CFNumberCreate(0, kCFNumberFloatType, &Unit);
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"unitName", @"meter");
  CFDictionarySetValue(Mutable, @"unitMeter", v61);
  C3DSceneSourceSetProperty(a2, @"unit", Mutable);
  CFRelease(v61);
  CFRelease(Mutable);
  v63 = CFDictionaryGetValue(v10, @"contributors");
  if (v63)
  {
    C3DSceneSourceSetProperty(a2, @"contributors", v63);
  }

  v94 = 0;
  TypeID = C3DAnimationGroupGetTypeID(v63, v64);
  v66 = C3DLibraryCopyEntriesWithKind(a3, TypeID, &v94);
  AnimationManager = C3DSceneGetAnimationManager(v19, v67);
  v92 = AnimationManager;
  if (!a4 || (AnimationManager = CFDictionaryGetValue(a4, @"kSceneSourceAnimationLoadingMode"), (cf1 = AnimationManager) == 0))
  {
    if (C3DWasLinkedBeforeMajorOSYear2014(AnimationManager, v69))
    {
      v70 = kC3DIOSceneSourceAnimationLoadingModePlayUsingSceneTime;
    }

    else
    {
      v70 = kC3DIOSceneSourceAnimationLoadingModePlayRepeatedly;
    }

    cf1 = *v70;
  }

  if (v66 && cf1 != @"keepSeparate")
  {
    if (v94 >= 1)
    {
      for (i = 0; i < v94; ++i)
      {
        v76 = v66[i];
        AnimationCount = C3DAnimationGroupGetAnimationCount(v76, v69);
        if (AnimationCount >= 1)
        {
          v78 = AnimationCount;
          for (j = 0; j != v78; ++j)
          {
            AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(v76, j);
            if (C3DAnimationIsGroup(AnimationAtIndex))
            {
              _flagChildAnimationGroup(AnimationAtIndex, v69);
            }
          }
        }

        v81 = v94;
      }

      if (v94 >= 1)
      {
        v82 = 0;
        do
        {
          v83 = v66[v82];
          if ((v83[42] & 0x1000) == 0)
          {
            Name = C3DAnimationGetName(v66[v82], v69);
            if (!Name)
            {
              Name = CFStringCreateWithFormat(0, 0, @"unnamed animation #%d", v82);
              C3DAnimationSetName(v83, Name);
              CFRelease(Name);
            }

            Copy = C3DAnimationCreateCopy(v83, v84);
            v87 = CFEqual(cf1, @"playUsingSceneTime") != 0;
            C3DAnimationSetIsSceneTimeBased(Copy, v87);
            v88 = CFEqual(cf1, @"playUsingSceneTime") == 0;
            C3DAnimationSetRemoveOnCompletion(Copy, v88);
            v89 = CFEqual(cf1, @"playRepeatedly");
            v91 = INFINITY;
            if (!v89)
            {
              v91 = 0.0;
            }

            C3DAnimationSetRepeatCount(Copy, v90, v91);
            C3DAnimationManagerAddAnimationToSceneForKey(v92, Copy, v19, a3, Name);
            CFRelease(Copy);
            v81 = v94;
          }

          ++v82;
        }

        while (v82 < v81);
      }
    }

    free(v66);
  }

LABEL_8:
  if (a5)
  {
    (*(a5 + 16))(a5, 16, 0, &v99, 1.0);
    if (v99)
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v19;
}

__n128 *C3DIOCreateSceneAtURL(const __CFURL *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, uint64_t a5)
{
  v9 = C3DIOCreateImportContextFromOptions(theDict, a1);
  CFDictionarySetValue(v9, @"__library__", a3);
  v10 = C3DCreateDataWithContentOfURL(a1, 0);
  if (!v10)
  {
    v12 = 0;
    if (!v9)
    {
      return v12;
    }

    goto LABEL_3;
  }

  v11 = v10;
  v12 = _C3DIOCreateSceneWithData(v10, a2, a3, v9, a5);
  CFRelease(v11);
  if (v9)
  {
LABEL_3:
    CFRelease(v9);
  }

  return v12;
}

__CFDictionary *_C3DCreatePropertyListFromScene(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v46 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"version", @"0.12");
  CFDictionarySetValue(Mutable, @"readerMinimumRequiredVersion", @"0.11");
  if (a3 && (Value = CFDictionaryGetValue(a3, @"kCreatePropertyListShouldZipOption")) != 0 && CFBooleanGetValue(Value))
  {
    v11 = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = 1;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = CFRetain(Mutable);
    v12 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  v45 = 0;
  (*(a5 + 16))(a5, 0, &v45, 0.1);
  if (v45)
  {
    goto LABEL_39;
  }

LABEL_8:
  v13 = C3DCopyPropertyList(a2, a2, a3, &v46);
  if (v13)
  {
    v14 = v13;
    CFDictionaryAddValue(v11, @"library", v13);
    CFRelease(v14);
  }

  if (a5)
  {
    v44 = 0;
    (*(a5 + 16))(a5, v46, &v44, 0.5);
    if (v44)
    {
      goto LABEL_39;
    }
  }

  v15 = C3DCopyPropertyList(a1, a2, a3, &v46);
  if (v15)
  {
    v16 = v15;
    CFDictionaryAddValue(v11, @"scene", v15);
    CFRelease(v16);
  }

  if (a5)
  {
    v43 = 0;
    (*(a5 + 16))(a5, v46, &v43, 0.75);
    if (v43)
    {
      goto LABEL_39;
    }
  }

  v17 = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  v20 = Identifier ? Identifier : @"SceneKit";
  CFDictionarySetValue(v17, @"authoring_tool", v20);
  CFDictionarySetValue(v17, @"author", @"SceneKit");
  v21 = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
  CFArrayAppendValue(v21, v17);
  CFDictionaryAddValue(v11, @"contributors", v21);
  CFRelease(v21);
  CFRelease(v17);
  if (a5)
  {
    v42 = 0;
    (*(a5 + 16))(a5, v46, &v42, 0.77);
    if (v42)
    {
      goto LABEL_39;
    }
  }

  if (!v12)
  {
    v27 = MEMORY[0x277CBED10];
    goto LABEL_26;
  }

  v22 = CFWriteStreamCreateWithAllocatedBuffers(0, 0);
  CFWriteStreamOpen(v22);
  CFPropertyListWrite(v11, v22, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFWriteStreamClose(v22);
  v23 = CFWriteStreamCopyProperty(v22, *MEMORY[0x277CBF068]);
  CFRelease(v22);
  if (!v23)
  {
    v28 = scn_default_log(v24, v25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_2(v11, v28);
    }

    CFRelease(v11);
    v31 = scn_default_log(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_3();
      if (!a5)
      {
        goto LABEL_39;
      }
    }

    else if (!a5)
    {
      goto LABEL_39;
    }

    v41 = 1;
    v32 = C3DErrorCreate(0, @"Could not get the data for the serialized property list", 0);
    v33.n128_u32[0] = 1061997773;
    (*(a5 + 16))(a5, v46, &v41, v33);
    goto LABEL_37;
  }

  v26 = C3DIOCreateZippedData(v23);
  CFRelease(v23);
  if (!v26)
  {
    CFRelease(v11);
    v36 = scn_default_log(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_1();
      if (a5)
      {
        goto LABEL_36;
      }
    }

    else if (a5)
    {
LABEL_36:
      v40 = 1;
      v32 = C3DErrorCreate(0, @"Could not zip the serialized property list", 0);
      v37.n128_u32[0] = 1062836634;
      (*(a5 + 16))(a5, v46, &v40, v37);
LABEL_37:
      if (v32)
      {
        CFRelease(v32);
      }
    }

LABEL_39:
    CFRelease(Mutable);
    return 0;
  }

  CFDictionaryAddValue(Mutable, @"zippedData", v26);
  CFRelease(v26);
  v27 = MEMORY[0x277CBED28];
LABEL_26:
  CFDictionaryAddValue(Mutable, @"zipped", *v27);
  CFRelease(v11);
  if (a5)
  {
    v39 = 0;
    (*(a5 + 16))(a5, v46, &v39, 1.0);
    if (v39 == 1)
    {
      goto LABEL_39;
    }
  }

  return Mutable;
}

BOOL C3DIOWriteSceneToURL(const __CFURL *a1, const void *a2, const __CFDictionary *a3, const void *a4, uint64_t a5)
{
  v10 = C3DLibraryCreate();
  C3DLibraryFillWithContentOfScene(v10, a2, a3);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kSceneSourceInputLibrary");
    if (Value)
    {
      v13 = Value;
      v14 = C3DLibraryCopyKinds(Value, v12);
      if (v14)
      {
        v15 = v14;
        v42 = a4;
        v43 = a2;
        v44 = a5;
        v45 = a1;
        Count = CFArrayGetCount(v14);
        if (Count >= 1)
        {
          v17 = Count;
          for (i = 0; i != v17; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
            valuePtr = 0;
            v20 = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
            v21 = valuePtr;
            TypeID = C3DKeyframedAnimationGetTypeID(v20, v22);
            if (v21 != TypeID && v21 != C3DMeshSourceGetTypeID(TypeID, v24))
            {
              v46 = 0;
              v26 = C3DLibraryCopyEntriesWithKind(v13, v21, &v46);
              if (v46 >= 1)
              {
                for (j = 0; j < v46; ++j)
                {
                  v28 = v26[j];
                  ID = C3DEntityGetID(v28, v25);
                  if (ID && !C3DLibraryGetEntryWithDocumentID(v10, ID) && (v21 != C3DAnimationGroupGetTypeID(0, v25) || C3DAnimationGroupIsAnimationClip(v28, v30)))
                  {
                    C3DLibraryAddEntry(v10, v28);
                  }
                }
              }

              free(v26);
            }
          }
        }

        CFRelease(v15);
        a5 = v44;
        a1 = v45;
        a4 = v42;
        a2 = v43;
      }
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v32 = MutableCopy;
  v33 = CFDictionaryGetValue(MutableCopy, @"SCNSceneExportDestinationURL");
  if (!v33)
  {
    v33 = C3DCopyResolvedURLFromFileURL(a1);
    CFDictionarySetValue(v32, @"SCNSceneExportDestinationURL", v33);
    CFRelease(v33);
  }

  if (CFURLHasDirectoryPath(v33))
  {
    PathComponent = CFURLCopyAbsoluteURL(v33);
  }

  else
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v33);
  }

  v35 = PathComponent;
  CFDictionarySetValue(v32, @"kEnclosingFolderURL", PathComponent);
  CFRelease(v35);
  if (a4)
  {
    CFDictionarySetValue(v32, @"kC3DIOSerializationExportDelegate", a4);
  }

  v37 = _C3DCreatePropertyListFromScene(a2, v10, v32, v36, a5);
  CFRelease(v32);
  if (v37)
  {
    v38 = CFWriteStreamCreateWithFile(0, a1);
    if (v38)
    {
      v39 = v38;
      if (CFWriteStreamOpen(v38))
      {
        v40 = CFPropertyListWrite(v37, v39, kCFPropertyListBinaryFormat_v1_0, 0, 0) != 0;
        CFWriteStreamClose(v39);
      }

      else
      {
        v40 = 0;
      }

      CFRelease(v39);
    }

    else
    {
      v40 = 0;
    }

    CFRelease(v37);
  }

  else
  {
    v40 = 0;
  }

  CFRelease(v10);
  return v40;
}

void __EmitMalformedDocumentErrorIfNeeded(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    (*(a1 + 16))(a1, 0xFFFFFFFFLL, MalformedDocumentError, a2, 0.0);

    CFRelease(MalformedDocumentError);
  }
}

uint64_t _flagChildAnimationGroup(uint64_t a1, uint64_t a2)
{
  *(a1 + 84) |= 0x1000u;
  result = C3DAnimationGroupGetAnimationCount(a1, a2);
  if (result >= 1)
  {
    v4 = result;
    for (i = 0; i != v4; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
      result = C3DAnimationIsGroup(AnimationAtIndex);
      if (result)
      {
        result = _flagChildAnimationGroup(AnimationAtIndex, v7);
      }
    }
  }

  return result;
}

double C3D::SSRRaytracePass::SSRRaytracePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  v5 = C3D::RenderPass::RenderPass(a1, a2, a3);
  *v5 = &unk_282DC6DB0;
  *(v5 + 31) = a4;
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  return result;
}

double C3D::SSRRaytracePass::setup(C3D::SSRRaytracePass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 2u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "ColorDownSampled";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "Normals";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2) + 8) = "DepthDownSampled";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 8) = "SSR";
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(&v5, this);
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *(v2 + 16) = **(this + 31);
  *(v2 + 18) = *(*(this + 31) + 2);
  *(v2 + 66) &= 0xFFFCu;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v3 + 8) = "lobeFootprint";
  *(v3 + 65) = 1;
  C3D::Pass::parentColorDesc(&v5, this);
  result = *&v5;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 28) = 115;
  *(v3 + 16) = **(this + 31);
  *(v3 + 18) = *(*(this + 31) + 2);
  *(v3 + 66) &= 0xFFFCu;
  return result;
}

void *C3D::SSRRaytracePass::compile(C3D::SSRRaytracePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  Scene = C3DEngineContextGetScene(*(this + 2), v4);
  if (Scene)
  {
    v7 = C3DSceneGetFogEndDistance(Scene, v6) > 0.0;
  }

  else
  {
    v7 = 0;
  }

  *(this + 392) = v7;
  v8 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  v12 = v8;
  v9 = ((2 * *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28)) << (4 * *(this + 392))) | v8;
  v10 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) >> 47));
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

_OWORD *C3D::SSRRaytracePass::execute(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 24) + 128);
  Scene = C3DEngineContextGetScene(*(a1 + 16), a2);
  result = C3DEngineContextGetPointOfView(*(a1 + 16), v6);
  if (result)
  {
    result = C3DNodeGetCamera(result, v8);
    if (result)
    {
      v9 = *a2;
      CullingContext = C3D::DrawNodesPass::getCullingContext(*(a1 + 8));
      v11 = CullingContext[218];
      v12 = CullingContext[219];
      v13 = CullingContext[220];
      *(a1 + 256) = CullingContext[217];
      *(a1 + 272) = v11;
      *(a1 + 288) = v12;
      *(a1 + 304) = v13;
      *(a1 + 336) = C3DSceneGetSSRSampleCount(Scene, v14);
      *(a1 + 332) = fmaxf(C3DSceneGetSSRMaxRayDistance(Scene, v15), 0.0);
      *(a1 + 328) = fmaxf(C3DSceneGetSSRStride(Scene, v16), 1.0);
      *(a1 + 320) = *(*(a1 + 248) + 8);
      PointOfViewScale = C3DEngineContextGetPointOfViewScale(*(a1 + 16), v17);
      *&v20 = C3DSceneComputeFogParameters(Scene, v19, PointOfViewScale);
      *(a1 + 352) = v20;
      result = C3DSceneGetFogColor(Scene, v21);
      *(a1 + 368) = *result;
      if (*(a1 + 336) >= 1)
      {
        *(a1 + 384) = C3D::getBlueNoise32(0, 0, v4);
        v23 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 240) + 16 :v22) detail:"state" :?NSRetainFct];
        if (*(v9 + 3376) != v23)
        {
          *(v9 + 3376) = v23;
          [*(v9 + 3392) setRenderPipelineState:v23];
        }

        v28 = __invert_f4(*(a1 + 256));
        SCNMTLRenderCommandEncoder::setVertexBytes(v9, &v28, 0x40uLL, 0);
        v24 = C3D::Pass::inputTextureAtIndex(a1, 0);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v9, v24, 0);
        v25 = C3D::Pass::inputTextureAtIndex(a1, 1);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v9, v25, 1uLL);
        v26 = C3D::Pass::inputTextureAtIndex(a1, 2);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v9, v26, 2uLL);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v9, *(a1 + 384), 3uLL);
        SCNMTLRenderCommandEncoder::setFragmentBytes(v9, (a1 + 256), 0x80uLL, 0);
        return SCNMTLRenderCommandEncoder::drawFullScreenQuad(v9, v27);
      }
    }
  }

  return result;
}

void C3D::SSRRaytracePassResource::~SSRRaytracePassResource(C3D::SSRRaytracePassResource *this)
{
  *this = &unk_282DC6E20;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6E20;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void Mesh::AddIndex(Mesh *this, __int16 a2)
{
  v3 = *(this + 36) + a2;
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 >= v4)
  {
    v7 = *(this + 6);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(this + 48, v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *(this + 6);
    *(this + 6) = v16;
    *(this + 7) = v6;
    *(this + 8) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 2;
  }

  *(this + 7) = v6;
}

void Mesh::AllocateVertices(Mesh *this, unsigned int a2)
{
  std::vector<SCNVector3>::resize(this, 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 2) + a2);
  v4 = ((*(this + 4) - *(this + 3)) >> 4) + a2;

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(this + 3, v4);
}

void std::vector<SCNVector3>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<SCNVector3>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v2);
  }
}

SCNGeometry *Mesh::CreateLineGeometry(Mesh *this)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [SCNGeometrySource geometrySourceWithVertices:"geometrySourceWithVertices:count:" count:?];
  v3 = +[SCNGeometryElement geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:](SCNGeometryElement, "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:", [MEMORY[0x277CBEA90] dataWithBytes:*(this + 6) length:*(this + 7) - *(this + 6)], 2, ((*(this + 7) - *(this + 6)) >> 1) >> 1, 2);
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v13 = v2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v12 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v12;
  }

  else
  {
    v6 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v5 - v4], @"kGeometrySourceSemanticColor", (*(this + 4) - *(this + 3)) >> 4, 1, 4, 4, 0, 0);
    v15[0] = v2;
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v14 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v14;
  }

  v10 = +[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", v7, [v8 arrayWithObjects:v9 count:1]);
  [-[SCNGeometry material](v10 "material")];
  return v10;
}

SCNGeometry *Mesh::CreateTriangleGeometry(Mesh *this)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [SCNGeometrySource geometrySourceWithVertices:"geometrySourceWithVertices:count:" count:?];
  v3 = +[SCNGeometryElement geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:](SCNGeometryElement, "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:", [MEMORY[0x277CBEA90] dataWithBytes:*(this + 6) length:*(this + 7) - *(this + 6)], 0, ((*(this + 7) - *(this + 6)) >> 1) / 3uLL, 2);
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v13 = v2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v12 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v12;
  }

  else
  {
    v6 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v5 - v4], @"kGeometrySourceSemanticColor", (*(this + 4) - *(this + 3)) >> 4, 1, 4, 4, 0, 0);
    v15[0] = v2;
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v14 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v14;
  }

  v10 = +[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", v7, [v8 arrayWithObjects:v9 count:1]);
  [-[SCNGeometry material](v10 "material")];
  return v10;
}

SCNGeometry *Mesh::CreateCameraGeometry(Mesh *this)
{
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  v14.x = 0.5;
  v14.y = 0.5;
  v14.z = 0.75;
  Mesh::AppendWireframeBox(v9, &stru_21C2A2800, v14, &C3DAuthoringEnvironmentColorGrayMedium);
  *&v8.x = --0.0000305175998;
  v8.z = -0.5;
  *&v7.x = 0x3F0000003F000000;
  v7.z = -0.5;
  *&v6.x = -0.0000305175853;
  v6.z = -0.5;
  *&v5.x = 0xBF000000BF000000;
  v5.z = -0.5;
  *&v4.x = 0;
  v4.z = 0.0;
  Mesh::AppendWireframePyramid(v9, &v4, &v8, &v7, &v6, &v5, &C3DAuthoringEnvironmentColorWhite);
  v4.x = 0.0;
  *&v4.y = 0x3FA000003F800000;
  Mesh::AppendWireframeXCylinder(v9, &v4, 0.5, 0.5, &C3DAuthoringEnvironmentColorWhite);
  v3.x = 0.0;
  *&v3.y = 0x3E8000003F800000;
  Mesh::AppendWireframeXCylinder(v9, &v3, 0.5, 0.5, &C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v9);
  if (v12)
  {
    *(&v12 + 1) = v12;
    operator delete(v12);
  }

  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return LineGeometry;
}

void sub_21C113518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void Mesh::AppendWireframeBox(Mesh *this, const SCNVector3 *a2, SCNVector3 a3, C3DColor4 *a4)
{
  v6 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v7.i64[0] = *&a2->x;
  v7.i32[2] = LODWORD(a2->z);
  v8 = (*(this + 7) - *(this + 6)) >> 1;
  v7.i32[3] = 1.0;
  v9.i64[0] = *&a3.x;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v8;
  v9.i64[1] = LODWORD(a3.z);
  v10 = vaddq_f32(v9, v9);
  v11 = vdupq_laneq_s32(v10, 3);
  v11.i32[0] = v10.i32[0];
  v19 = vsubq_f32(v7, v9);
  v20 = vaddq_f32(v11, v19);
  v21 = vaddq_f32(vextq_s8(v10, vuzp2q_s32(v10, v10), 0xCuLL), v19);
  v22 = vaddq_f32(v11, v21);
  v12 = vzip2q_s32(v10, v10);
  v13 = vextq_s8(v12, v12, 8uLL);
  v23 = vaddq_f32(v13, v19);
  v24 = vaddq_f32(v13, v20);
  v25 = vaddq_f32(v13, v21);
  v26 = vaddq_f32(v13, v22);
  do
  {
    v14 = *(&v19 + v6 * 8);
    v17 = v19.i64[v6];
    v18 = DWORD2(v14);
    std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, &v17);
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
    v6 += 2;
  }

  while (v6 != 16);
  for (i = 0; i != 24; ++i)
  {
    Mesh::AddIndex(this, word_21C2A280C[i]);
  }

  v16 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v16;
}

void Mesh::AppendWireframePyramid(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, SCNVector3 *a4, SCNVector3 *a5, SCNVector3 *a6, C3DColor4 *a7)
{
  v13 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v13;
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a2);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a3);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a4);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a5);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a6);
  v14 = 5;
  do
  {
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a7);
    --v14;
  }

  while (v14);
  for (i = 0; i != 16; ++i)
  {
    Mesh::AddIndex(this, word_21C2A283C[i]);
  }

  v16 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v16;
}

uint64_t Mesh::AppendWireframeXCylinder(Mesh *this, const SCNVector3 *a2, float a3, float a4, const C3DColor4 *a5)
{
  v10 = (this + 48);
  v11 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v11;
  Mesh::AllocateVertices(this, 0x18u);
  v12 = 0.0;
  for (i = 12; i != 24; ++i)
  {
    v14 = v12 * 6.28318531 / 12.0;
    v15 = __sincosf_stret(v14);
    v16 = (v15.__sinval * a3) + a2->y;
    v17 = (v15.__cosval * a3) + a2->z;
    v18 = a2->x + a4;
    v19 = i + *(this + 18);
    v20 = v19 - 12;
    v21 = *this;
    v22 = (*this + 12 * (v19 - 12));
    *v22 = a2->x - a4;
    v22[1] = v16;
    v22[2] = v17;
    v23 = (v21 + 12 * v19);
    *v23 = v18;
    v23[1] = v16;
    v23[2] = v17;
    *(*(this + 3) + 16 * v20) = *a5;
    *(*(this + 3) + 16 * (i + *(this + 18))) = *a5;
    v12 = v12 + 1.0;
  }

  std::vector<unsigned short>::resize(v10, ((*(this + 7) - *(this + 6)) >> 1) + 72);
  v24 = 0;
  v25 = *(this + 18);
  v26 = *(this + 19);
  v27 = *(this + 6);
  v28 = 1;
  v29 = v25;
  do
  {
    v30 = v26 + v24;
    *(v27 + 2 * (v26 + v24)) = v29;
    if (v24 == 66)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28;
    }

    *(v27 + 2 * (v30 + 1)) = v25 + v31;
    *(v27 + 2 * (v30 + 2)) = v29 + 12;
    result = (v30 + 3);
    *(v27 + 2 * result) = v25 + 12 + v31;
    *(v27 + 2 * (v30 + 4)) = v29;
    *(v27 + 2 * (v30 + 5)) = v29 + 12;
    v24 += 6;
    ++v29;
    ++v28;
  }

  while (v24 != 72);
  v33 = (*(this + 7) - v27) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v33;
  return result;
}

SCNGeometry *Mesh::CreateCameraFrustumGeometry(Mesh *this)
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  Mesh::AppendWireframeCameraFrustum(v3, &C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return LineGeometry;
}

void Mesh::AppendWireframeCameraFrustum(Mesh *this, C3DColor4 *a2)
{
  *&v15.x = 0;
  v15.z = 0.0;
  v14.x = -1.0;
  __asm { FMOV            V0.2S, #1.0 }

  v9 = -_D0;
  *&v14.y = -_D0;
  *&v13.x = _D0;
  v13.z = -1.0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v12.x = _D0;
  v12.z = -1.0;
  *&v11.x = v9;
  v11.z = -1.0;
  Mesh::AppendSegment(this, &v15, &v14, a2, a2);
  Mesh::AppendSegment(this, &v15, &v13, a2, a2);
  Mesh::AppendSegment(this, &v15, &v11, a2, a2);
  Mesh::AppendSegment(this, &v15, &v12, a2, a2);
  Mesh::AppendQuad(this, &v14, &v13, &v11, &v12, a2);
}

SCNGeometry *Mesh::CreateOrthographicCameraFrustumGeometry(Mesh *this)
{
  *__p = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  *v4 = 0u;
  *&v3.x = 0;
  v3.z = -1.0;
  v9.x = 1.0;
  v9.y = 1.0;
  v9.z = 1.0;
  Mesh::AppendWireframeBox(v4, &v3, v9, &C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return LineGeometry;
}

void sub_21C113BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

SCNGeometry *Mesh::CreateCameraNearPlaneGeometry(Mesh *this)
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  Mesh::AppendWireframeCameraNearPlane(v3, &C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return LineGeometry;
}

double Mesh::AppendWireframeCameraNearPlane(Mesh *this, C3DColor4 *a2)
{
  __asm { FMOV            V0.2S, #-1.0 }

  *&v12.x = -_D0;
  v12.z = -1.0;
  __asm { FMOV            V1.2S, #1.0 }

  *&v11.x = _D1;
  v11.z = -1.0;
  *&v10.x = _D0;
  v10.z = -1.0;
  *&v9.x = -_D1;
  v9.z = -1.0;
  Mesh::AppendQuad(this, &v12, &v11, &v9, &v10, a2);
  return result;
}

SCNGeometry *Mesh::CreatePhysicsFieldGeometry(Mesh *this)
{
  *__p = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  *v4 = 0u;
  v3.z = 0.0;
  *&v3.x = 1065353216;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  v3.z = 0.0;
  *&v3.x = 3212836864;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0x3F80000000000000;
  v3.z = 0.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0xBF80000000000000;
  v3.z = 0.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0;
  v3.z = 1.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0;
  v3.z = -1.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, &C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return LineGeometry;
}

void sub_21C113E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void Mesh::AppendCone(Mesh *this, const SCNVector3 *a2, const SCNVector3 *a3, float a4, float a5, const C3DColor4 *a6)
{
  v10 = (this + 48);
  v11 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v11;
  Mesh::AllocateVertices(this, 0x33u);
  v12.i64[0] = *&a2->x;
  z = a2->z;
  v31 = *&a2->x;
  v13 = v12;
  v13.f32[2] = z;
  v12.i64[0] = *&a3->x;
  v12.i32[2] = LODWORD(a3->z);
  v33 = vmlaq_n_f32(v13, v12, a4);
  v35.i32[2] = 0;
  v35.i64[0] = 0;
  v34.i32[2] = 0;
  v34.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v35, &v34, v12);
  v14 = 0;
  v34 = vmulq_n_f32(v34, a5);
  v35 = vmulq_n_f32(v35, a5);
  v15 = 0.0;
  do
  {
    v16 = __sincosf_stret(v15);
    v17 = vmlaq_n_f32(vmlaq_n_f32(v33, v35, v16.__cosval), v34, v16.__sinval);
    v18 = v14 + *(this + 18);
    v19 = *this + 12 * v18;
    *v19 = v17.i64[0];
    *(v19 + 8) = v17.i32[2];
    *(*(this + 3) + 16 * v18) = *a6;
    ++v14;
    v15 = v15 + 0.12566;
  }

  while (v14 != 50);
  v20 = *(this + 18) + 50;
  v21 = *this + 12 * v20;
  *v21 = v31;
  *(v21 + 8) = z;
  *(*(this + 3) + 16 * v20) = *a6;
  std::vector<unsigned short>::resize(v10, ((*(this + 7) - *(this + 6)) >> 1) + 108);
  v22 = *(this + 18);
  v23 = *(this + 19);
  v24 = *(this + 6);
  v25 = 1;
  v26 = v23;
  do
  {
    *(v24 + 2 * v26) = v22 + v25 - 1;
    if (v25 == 50)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    *(v24 + 2 * (v26 + 1)) = v22 + v27;
    v26 += 2;
    ++v25;
  }

  while (v25 != 51);
  *(v24 + 2 * (v23 + 100)) = v22 + 50;
  *(v24 + 2 * (v23 + 101)) = v22;
  *(v24 + 2 * (v23 + 102)) = v22 + 50;
  *(v24 + 2 * (v23 + 103)) = v22 + 12;
  *(v24 + 2 * (v23 + 104)) = v22 + 50;
  *(v24 + 2 * (v23 + 105)) = v22 + 25;
  *(v24 + 2 * (v23 + 106)) = v22 + 50;
  *(v24 + 2 * (v23 + 107)) = v22 + 37;
  v28 = (*(this + 7) - v24) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v28;
}

void Mesh::AppendWireframeXYDisk(Mesh *this, const SCNVector3 *a2, float a3, C3DColor4 *a4)
{
  v8 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v8;
  v9 = 0.0;
  v10 = 24;
  do
  {
    v11 = v9 * 6.28318531 / 23.0;
    x = a2->x;
    v13 = __sincosf_stret(v11);
    y = a2->y;
    z = a2->z;
    *&v19 = x + (a3 * v13.__cosval);
    *(&v19 + 1) = y + (a3 * v13.__sinval);
    v20 = z + 0.0;
    std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, &v19);
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
    v9 = v9 + 1.0;
    --v10;
  }

  while (v10);
  for (i = 1; i != 25; ++i)
  {
    Mesh::AddIndex(this, i - 1);
    if (i == 24)
    {
      v17 = 0;
    }

    else
    {
      v17 = i;
    }

    Mesh::AddIndex(this, v17);
  }

  v18 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v18;
}

void Mesh::AppendWireframeEllispoid(uint64_t a1, float32x2_t *a2, unsigned int a3)
{
  v5 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v6 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = -1431655765 * ((*(a1 + 8) - *a1) >> 2);
  *(a1 + 76) = v6;
  v7 = 48 * a3;
  MEMORY[0x28223BE20](a1);
  v9 = &v62[-4 * v8];
  v11 = (32 * v10);
  *&v14 = MEMORY[0x28223BE20](v12);
  v15 = &v62[-2 * v11];
  if (v16)
  {
    v64 = v13;
    v65 = v5;
    v17 = 0;
    *&v70 = (a3 + 1);
    v63 = 2 * a3;
    v19 = a2->f32[0];
    v18 = a2->i32[1];
    v66 = *(&v14 + 1);
    v67 = *&v18;
    v69 = v14;
    v20 = *(&v14 + 2);
    v21 = v9 + 37;
    v22 = 3.14159265;
    v23 = v9;
    v24 = a2[1].f32[0];
    *&v68 = 3.14159265;
    do
    {
      v25 = v21;
      v26 = ++v17 * v22 / *&v70;
      v27 = __sincosf_stret(v26);
      v28 = 0;
      v29 = *&v69 * v27.__sinval;
      v30 = v67 + (v66 * v27.__cosval);
      v31 = v20;
      v32 = v20 * v27.__sinval;
      v33 = 0.0;
      do
      {
        v34 = __sincosf_stret(v33);
        v35 = (v23 + v28);
        *v35 = v19 + (v29 * v34.__cosval);
        v35[1] = v30;
        v35[2] = v24 + (v32 * v34.__sinval);
        v33 = v33 + 0.2618;
        v28 += 12;
      }

      while (v28 != 288);
      v23 += 36;
      v21 = (v25 + 72);
      v20 = v31;
      v22 = *&v68;
    }

    while (v17 != a3);
    v36 = 0;
    v37 = 0.0;
    do
    {
      v38 = v37 * v22 / a3;
      v39 = __sincosf_stret(v38);
      v40 = v69;
      *&v40 = *&v69 * v39.__cosval;
      v70 = v40;
      v41 = 0.0;
      v42 = 24;
      v43 = v25;
      do
      {
        v44 = __sincosf_stret(v41);
        v45 = a2[1].f32[0] + ((v20 * v39.__sinval) * v44.__cosval);
        *(v43 - 1) = vmla_f32(*a2, __PAIR64__(LODWORD(v44.__sinval), LODWORD(v44.__cosval)), *&v70);
        *v43 = v45;
        v43 += 3;
        v41 = v41 + 0.2618;
        --v42;
      }

      while (v42);
      v37 = v37 + 1.0;
      ++v36;
      v25 += 72;
    }

    while (v36 != a3);
    v46 = v64;
    v5 = v65;
    v47 = v63;
    if (v63)
    {
      v48 = 0;
      v49.i64[0] = 0x100000001;
      v49.i64[1] = 0x100000001;
      v50.i64[0] = 0x1800000018;
      v50.i64[1] = 0x1800000018;
      v51.i64[0] = 0x800000008;
      v51.i64[1] = 0x800000008;
      v52 = &v62[-2 * v11];
      do
      {
        v53 = 0;
        v54 = vdupq_lane_s32(v48, 1);
        v55 = xmmword_21C280330;
        v56 = xmmword_21C2A27F0;
        do
        {
          v57 = &v52[v53];
          v72.val[0] = vuzp1q_s16(vaddq_s32(v55, v54), vaddq_s32(v56, v54));
          v58 = vaddq_s32(v56, v49);
          v59 = vaddq_s32(v55, v49);
          v72.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v59, vceqq_s32(v59, v50)), v54), vaddq_s32(vbicq_s8(v58, vceqq_s32(v58, v50)), v54));
          vst2q_s16(v57, v72);
          v55 = vaddq_s32(v55, v51);
          v56 = vaddq_s32(v56, v51);
          v53 += 32;
        }

        while (v53 != 96);
        v48 = vadd_s32(v48, 0x1800000001);
        v52 += 96;
      }

      while (v48.i32[0] != v47);
    }

    if (v7)
    {
      do
      {
        std::vector<vmesh::Triangle>::push_back[abi:nn200100](v5, v9);
        std::vector<CFRange>::push_back[abi:nn200100](v5 + 24, v46);
        v9 = (v9 + 12);
        --v7;
      }

      while (v7);
    }

    if (v11)
    {
      do
      {
        v60 = *v15++;
        Mesh::AddIndex(v5, v60);
        --v11;
      }

      while (v11);
    }
  }

  v61 = (*(v5 + 56) - *(v5 + 48)) >> 1;
  *(v5 + 72) = -1431655765 * ((*(v5 + 8) - *v5) >> 2);
  *(v5 + 76) = v61;
}