uint64_t __C3DLightingSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DLightingSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DLightingSystemCreate(uint64_t a1)
{
  if (C3DLightingSystemGetTypeID_onceToken != -1)
  {
    C3DLightingSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLightingSystemGetTypeID_typeID, 129296);
  *(Instance + 16) = a1;
  *(Instance + 24) = C3DLightProbesSystemCreate();
  v3 = *MEMORY[0x277CBECE8];
  *(Instance + 32) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  *(Instance + 40) = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x277CBF150]);
  v4 = MEMORY[0x277CBF158];
  *(Instance + 496) = CFSetCreateMutable(v3, 0, MEMORY[0x277CBF158]);
  Mutable = CFSetCreateMutable(v3, 0, v4);
  v6 = 0;
  *(Instance + 488) = Mutable;
  *(Instance + 116504) = -1;
  v7 = Instance + 117008;
  do
  {
    for (i = 0; i != 1536; i += 384)
    {
      Mutable = C3DConvexPolyhedronCreate(Mutable);
      *(v7 + i) = Mutable;
    }

    ++v6;
    v7 += 1568;
  }

  while (v6 != 8);
  return Instance;
}

uint64_t __lightOptimizedType(uint64_t a1, uint64_t a2)
{
  Type = C3DLightGetType(a1, a2);
  AttenuationEndDistance = C3DLightGetAttenuationEndDistance(a1, v4);
  v9 = (LODWORD(AttenuationEndDistance) & 0x7FFFFFFF) == 0 || LODWORD(AttenuationEndDistance) == 2139095040;
  if (Type <= 2)
  {
    switch(Type)
    {
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        if (v9)
        {
          return 1;
        }

        else
        {
          return 2;
        }
    }
  }

  else if (Type > 4)
  {
    if (Type == 5)
    {
      if (v9)
      {
        return 1;
      }

      else
      {
        return 6;
      }
    }

    if (Type == 6)
    {
      return 7;
    }
  }

  else
  {
    if (Type == 3)
    {
      return 3;
    }

    ProbeType = C3DLightGetProbeType(a1, v6);
    if (!ProbeType)
    {
      return 4;
    }

    if (ProbeType == 1)
    {
      return 5;
    }
  }

  v11 = scn_default_log(ProbeType, v6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __lightOptimizedType_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return 8;
}

void C3DLightingSystemAdd(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Light = C3DNodeGetLight(a2, a2);
  if (Light)
  {
    v13 = Light;
    if (!C3DNodeIsHiddenOrIsHiddenByAncestor(a2, v12))
    {
      Value = CFDictionaryGetValue(*(a1 + 32), a2);
      if (Value)
      {
        v16 = scn_default_log(Value, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          C3DLightingSystemAdd_cold_2();
        }
      }

      else
      {
        v27 = __lightOptimizedType(v13, v15);
        v28 = a1 + 4 * v27;
        v29 = *(v28 + 64);
        *(v28 + 64) = v29 + 1;
        __reserveData(a1, v27, v29);
        v30 = a1 + 8 * v27;
        *(*(v30 + 136) + 8 * v29) = a2;
        *(*(v30 + 200) + 8 * v29) = v13;
        C3DLightSetRadianceProbeIndex(v13, (v29 + 1));
        __updateWorldData(a1, v27, v29, a2, v13);
        CFDictionarySetValue(*(a1 + 32), a2, ((v29 + 1) & 0xFFFFFFF | (v27 << 28)));
        if (__isLightGlobal(v13, v31))
        {
          *(a1 + 568) = 0;
          *(a1 + 504) = 0u;
          *(a1 + 520) = 0u;
          CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
        }

        else if (!*(a1 + 572))
        {
          v33 = *(a1 + 116424);
          if (v33)
          {
            C3DEnginePipelineInvalidateAllProgramHashCode(v33);
          }
        }

        _recomputeLocalLightsCount(a1, v32);
        if (C3DLightGetTechnique(v13, v34))
        {
          C3DLightingSystemAddToLightsWithTechnique(a1, v13);
        }
      }
    }
  }

  else
  {
    v17 = scn_default_log(0, v12);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (v18)
    {
      __C3DLightDidChange_cold_1(v17, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = scn_default_log(v18, v19);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_DEFAULT, "Warning: Should not register a node without light to the light system", v35, 2u);
    }
  }
}

uint64_t _recomputeLocalLightsCount(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 572) = 0;
  v3 = result + 64;
  v4 = result + 200;
  for (i = 2; i != 7; ++i)
  {
    v6 = *(v3 + 4 * i);
    if (v6)
    {
      v7 = 0;
      v8 = 8 * v6;
      do
      {
        result = *(*(v4 + 8 * i) + v7);
        if (result)
        {
          result = __lightNeedsClustering(result, a2);
          if (result)
          {
            ++*(v2 + 572);
          }
        }

        v7 += 8;
      }

      while (v8 != v7);
    }
  }

  return result;
}

void C3DLightingSystemRemove(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return;
  }

  v6 = Value;
  Light = C3DNodeGetLight(a2, v5);
  v8 = (v6 & 0xFFFFFFF) - 1;
  v9 = a1 + 4 * (v6 >> 28);
  v10 = v6 >> 28;
  v11 = (*(v9 + 64) - 1);
  *(v9 + 64) = v11;
  if (v8 < v11)
  {
    v12 = (a1 + 8 * v10);
    v13 = v12[17];
    v14 = *(v13 + 8 * v11);
    v15 = *(v12[25] + 8 * v11);
    *(v13 + 8 * v8) = v14;
    *(v12[25] + 8 * v8) = v15;
    *(v12[41] + v8) = *(v12[41] + v11);
    *(v12[49] + v8) = *(v12[49] + v11);
    if (v6 >> 28 > 3)
    {
      switch(v10)
      {
        case 4:
          C3DLightProbesSystemSetProbeData(*(a1 + 24), v8, v14, v15);
          break;
        case 5:
          v22 = *(a1 + 480);
          v23 = (v22 + 80 * v8);
          v24 = (v22 + 80 * v11);
          *v23 = *v24;
          v25 = v24[1];
          v26 = v24[2];
          v27 = v24[4];
          v23[3] = v24[3];
          v23[4] = v27;
          v23[1] = v25;
          v23[2] = v26;
          C3DLightSetRadianceProbeIndex(v15, v6 & 0xFFFFFFF);
          break;
        case 6:
          v16 = *(a1 + 464);
LABEL_14:
          *(v16 + 16 * v8) = *(v16 + 16 * v11);
          break;
      }

LABEL_15:
      CFDictionarySetValue(*(a1 + 32), v14, v6);
      goto LABEL_16;
    }

    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v17 = *(a1 + 472);
        v18 = (v17 + 48 * v11);
        v19 = *v18;
        v20 = v18[2];
        v21 = (v17 + 48 * v8);
        v21[1] = v18[1];
        v21[2] = v20;
        *v21 = v19;
      }

      goto LABEL_15;
    }

    v16 = *(a1 + 456);
    goto LABEL_14;
  }

LABEL_16:
  if (v10 == 4)
  {
    C3DLightProbesSystemSetProbesCount(*(a1 + 24), v11);
  }

  CFDictionaryRemoveValue(*(a1 + 32), a2);
  if (Light && __isLightGlobal(Light, v28))
  {
    *(a1 + 568) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 520) = 0u;
    CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
  }

  _recomputeLocalLightsCount(a1, v28);
  CFSetRemoveValue(*(a1 + 496), a2);
  if (C3DLightGetTechnique(Light, v29))
  {
    v30 = *(a1 + 116496);
    if (v30)
    {

      CFSetRemoveValue(v30, Light);
    }
  }
}

void C3DLightingSystemLightDidUpdate(uint64_t a1, const void *a2)
{
  if (__isLightGlobal(a2, a2))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 568);
  if (v4)
  {
    if (*(*(a1 + 200 + ((*(a1 + 504) >> 25) & 0x78)) + 8 * ((*(a1 + 504) & 0xFFFFFFFu) - 1)) == a2)
    {
      goto LABEL_2;
    }

    v5 = (a1 + 508);
    v6 = 1;
    do
    {
      v7 = v6;
      if (v4 == v6)
      {
        break;
      }

      v8 = *v5++;
      ++v6;
    }

    while (*(*(a1 + 200 + ((v8 >> 25) & 0x78)) + 8 * ((v8 & 0xFFFFFFF) - 1)) != a2);
    if (v7 < v4)
    {
LABEL_2:
      *(a1 + 568) = 0;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
    }
  }

  v9 = *(a1 + 488);

  CFSetAddValue(v9, a2);
}

double __ComputeAmbientLighting(uint64_t a1)
{
  v16 = 0uLL;
  C3DColor4Make(&v16, 0.0, 0.0, 0.0, 1.0);
  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 8 * v9;
    do
    {
      v12 = *(*(a1 + 200) + v10);
      if (v12)
      {
        C3DLightGetColorModulatedByIntensity(v12, v2, v3, v4, v5, v6, v7, v8);
        v3.f32[0] = v13;
        v4 = *&v16;
        *v2.f32 = vadd_f32(*&v16, v14);
        *&v16 = v2.i64[0];
        v2.f32[0] = *(&v16 + 2) + v13;
        *(&v16 + 2) = *(&v16 + 2) + v13;
      }

      v10 += 8;
    }

    while (v11 != v10);
  }

  result = *&v16;
  *(a1 + 48) = v16;
  return result;
}

uint64_t __LightsHaveChanged(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v13 = a1 + 64;
  v5 = a1 + 200;
  v6 = a1 + 136;
  do
  {
    v7 = *(v13 + 4 * v4);
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        v9 = *(*(v5 + 8 * v4) + 8 * i);
        if (CFSetContainsValue(*(a1 + 488), v9))
        {
          v10 = *(*(v6 + 8 * v4) + 8 * i);
          v11 = __lightOptimizedType(v9, a2);
          if (v4 == v11)
          {
            __updateWorldData(a1, v4, i, v10, v9);
          }

          else
          {
            C3DLightingSystemRemove(a1, v10);
            C3DLightingSystemAdd(a1, v10);
            v7 = *(v13 + 4 * v4);
            --i;
          }

          v3 |= v11 == 0;
          C3DNodeUpdateCullingSystemMembership(v10);
        }
      }
    }

    ++v4;
  }

  while (v4 != 8);
  _recomputeLocalLightsCount(a1, a2);
  return v3 & 1;
}

void __ComputeInfiniteLightSet(float32x4_t *result, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v3 = result[4].u32[1];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    if (v3 >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v3;
    }

    do
    {
      v8 = *(result[17].i64[0] + 8 * v4);
      if (v8 == -1)
      {
        *(v20 + v5++) = __runtimeIndex(result, 1, v4);
      }

      else
      {
        v6 |= v8;
      }

      ++v4;
    }

    while (v7 != v4);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  result[37].i64[0] = v6;
  v9 = result[4].i32[3] + result[4].i32[2];
  v10 = -result[5].i32[2];
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 == v10;
  }

  if (v11 && __ShouldForceLighting(result[7276].i64[0], a2))
  {
    DefaultLightNode = C3DEngineContextGetDefaultLightNode(result[7276].i64[0], v12);
    Light = C3DNodeGetLight(DefaultLightNode, v14);
    PointOfView = C3DEngineContextGetPointOfView(result[7276].i64[0], v16);
    C3DEngineContextSynchronizeDefaultLight(result[7276].i64[0], PointOfView);
    result[358].i32[1] = C3DLightGetProgramHashCode(Light, v18);
    result[294].i64[0] = Light;
    result[166].i64[0] = DefaultLightNode;
    _ComputeRuntimeDataForIndex(result, 255, 0);
    v19 = 0;
    LOBYTE(v20[0]) = -1;
    result[36].i64[0] = v20[0];
    result[36].i32[2] = 1;
  }

  else
  {
    result[36].i64[0] = v20[0];
    result[36].i32[2] = v5;
    v19 = v5 == 8;
  }

  if (v9 == v10 && !result[37].i64[0])
  {
    v19 = 1;
  }

  result[36].i8[12] = v19;
}

uint64_t __runtimeIndex(float32x4_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = &a1[20].i8[8];
  LOBYTE(v4) = *(a1[20].i64[a2 + 1] + a3);
  if (!v4)
  {
    v6 = a1[38].i32[0];
    if (v6 == 256)
    {
      if ((__runtimeIndex_done & 1) == 0)
      {
        __runtimeIndex_done = 1;
        v7 = scn_default_log(a1, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __runtimeIndex_cold_1();
        }
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v9 = a2;
      v4 = v6 + 1;
      v10 = a1 + 8 * a2;
      v11 = *(*(v10 + 25) + 8 * a3);
      a1[38].i32[0] = v4;
      v12 = *(*(v10 + 17) + 8 * a3);
      v13 = a1 + 8 * v4;
      *(v13 + 333) = v11;
      *(v13 + 77) = v12;
      *(*&v3[8 * a2] + a3) = v4;
      a1[294].i32[v4 + 2] = C3DLightGetProgramHashCode(v11, a2);
      _ComputeRuntimeDataForIndex(a1, v4, a3 & 0xFFFFFFF | (v9 << 28));
    }
  }

  return v4;
}

const __CFDictionary *__ShouldForceLighting(uint64_t a1, uint64_t a2)
{
  Scene = C3DEngineContextGetScene(a1, a2);
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (LightingEnvironmentEffectSlot)
  {
    v6 = LightingEnvironmentEffectSlot;
    if (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot, v5) || C3DEffectSlotHasPrecomputedLightingEnvironment(v6, v7))
    {
      return 0;
    }
  }

  if (C3DSceneGetAllowsDefaultLightingEnvironmentFallback(Scene, v5))
  {
    return 0;
  }

  v9 = MEMORY[0x277CBED28];
  if (Scene)
  {
    Attribute = C3DSceneGetAttribute(Scene, @"triggerOptionsForRealtimeViewer");
    if (!Attribute)
    {
      Attribute = *MEMORY[0x277CBED10];
    }

    v11 = *v9;
    v12 = CFEqual(Attribute, *v9);
    v13 = v11;
    if (v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = C3DSceneGetAttribute(Scene, @"defaultLight");
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    if (CFEqual(v13, v11))
    {
      return 1;
    }
  }

LABEL_16:
  result = C3DEngineContextGetRenderingOptionForKey(a1, @"defaultLight");
  if (result)
  {
    return (CFEqual(result, *v9) != 0);
  }

  return result;
}

void _ComputeRuntimeDataForIndex(float32x4_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  v5 = &a1[27 * a2];
  v6 = v5 + 359;
  v7 = a1 + 8 * a2;
  v8 = *(v7 + 77);
  v9 = *(v7 + 333);
  v5[366].i32[0] = 0;
  key = v8;
  WorldMatrix = C3DNodeGetWorldMatrix(v8, a2);
  memset(&v135, 0, sizeof(v135));
  C3DMatrix4x4Mult(WorldMatrix, a1 + 7271, &v135);
  Type = C3DLightGetType(v9, v11);
  HasValidGobo = C3DLightHasValidGobo(v9, v13);
  UsesDeferredShadows = C3DLightGetUsesDeferredShadows(v9, v15);
  CastsShadow = C3DLightGetCastsShadow(v9, v17);
  v21 = C3DLightGetUsesModulatedMode(v9, v19) & (HasValidGobo | UsesDeferredShadows ^ 1);
  if ((v21 & 1) == 0)
  {
    C3DLightGetColorModulatedByIntensity(v9, v22, v23, v24, v25, v26, v27, v28);
    v30.i64[0] = v29;
    *&v30.u32[2] = vzip1_s32(v20, HIDWORD(v20));
    *v6 = v30;
    v6[7].i32[0] |= 0x40u;
  }

  v31 = a1 + 7168;
  if (Type > 6)
  {
LABEL_9:
    if (Type < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (((1 << Type) & 0x6C) == 0)
  {
    if (Type != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v32 = v135.columns[3];
  v6[7].i32[0] |= 1u;
  v32.i32[3] = v6[1].i32[3];
  v6[1] = v32;
  v6[1].f32[3] = C3DLightGetAttenuationEndDistance(v9, v20);
  if (((1 << Type) & 0x68) != 0)
  {
LABEL_8:
    v33 = vmulq_f32(v135.columns[2], v135.columns[2]);
    *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
    *v33.f32 = vrsqrte_f32(v34);
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
    v35 = vmulq_n_f32(v135.columns[2], vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
    v6[7].i32[0] |= 2u;
    v6[2].i32[2] = v35.i32[2];
    v6[2].i64[0] = v35.i64[0];
    goto LABEL_9;
  }

LABEL_10:
  v36.f32[0] = C3DLightComputeDistanceAttenuations(v9, 0, a1[7275].f32[0]);
  v6[5] = v36;
  if (Type == 3)
  {
    v37 = v21;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    if (Type == 5)
    {
      *&v38 = 1.0 / (C3DLightGetIESSpotAngle(v9, v20) / 180.0 * 3.14159265);
      v6[6].i32[2] = 0;
      v6[6].i64[0] = v38;
    }
  }

  else
  {
    C3DLightComputeSpotAttenuations(v9);
    v6[6] = v39;
  }

LABEL_17:
  v40 = C3DLightTypeSupportsShadow(v9, v20);
  if (!(UsesDeferredShadows & 1 | ((CastsShadow & 1) == 0)) && v40)
  {
    v6[7].i32[0] |= 0x10u;
    v42 = a1[24].i64[(a3 >> 28) + 1];
    v43 = *(v42 + (a3 & 0xFFFFFFF));
    if (*(v42 + (a3 & 0xFFFFFFF)))
    {
      CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a1[7276].i64[0], v41);
      v141 = __invert_f4(*a1[7271].f32);
      v115 = v141.columns[1];
      v117 = v141.columns[0];
      v113 = v141.columns[3];
      v114 = v141.columns[2];
      if (!C3DLightSupportsShadowCascades(v9, v45))
      {
        v54 = 1;
LABEL_31:
        v83 = &a1[27 * v3 + 370];
        v84 = &a1[98 * (v43 - 1) + 7309];
        do
        {
          *v85.i64 = _computeShadowMatrix(CoordinatesSystemOptions, v84[-7], v84[-6], v84[-5], v84[-4], v84[-3], v84[-2], v84[-1], *v84, v46, v47, v48, v49, v50, v51, v52, v117, v115, v114, v113);
          v83[-3] = v85;
          v83[-2] = v86;
          v83[-1] = v87;
          *v83 = v88;
          v83 += 4;
          v84 += 24;
          --v54;
        }

        while (v54);
        goto LABEL_33;
      }

      ShadowCascadeCount = C3DLightGetShadowCascadeCount(v9, v46);
      if (ShadowCascadeCount)
      {
        v54 = ShadowCascadeCount;
        goto LABEL_31;
      }
    }

LABEL_33:
    Value = CFDictionaryGetValue(a1[2].i64[1], key);
    if (Value)
    {
      Value = C3DEngineContextGetTextureWithName(a1[7276].i64[0], Value);
      v6[25].i64[0] = Value;
    }

    else if ((_ComputeRuntimeData_done & 1) == 0)
    {
      _ComputeRuntimeData_done = 1;
      v91 = scn_default_log(0, v90);
      Value = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
      if (Value)
      {
        _ComputeRuntimeDataForIndex_cold_1();
      }
    }

    v6[25].i64[1] = C3DTextureSamplerDepthCompare(Value, v90);
    v6[24].i64[0] = C3DLightGetShadowColor(v9, v92);
    v6[24].i64[1] = v93;
    if (C3DLightGetEffectiveShadowSampleCount(v9, v93) >= 2)
    {
      v6[7].i32[0] |= 0x20u;
      RealShadowMapSize = C3DLightGetRealShadowMapSize(v9, v94);
      ShadowRadius = C3DLightGetShadowRadius(v9, v95);
      v97 = *&RealShadowMapSize.i32[1];
      if (*RealShadowMapSize.i32 > *&RealShadowMapSize.i32[1])
      {
        v97 = *RealShadowMapSize.i32;
      }

      if (v97 < 1.0)
      {
        v97 = 1.0;
      }

      v6[7].f32[1] = ShadowRadius / v97;
    }

    return;
  }

  if (HasValidGobo)
  {
    Gobo = C3DLightGetGobo(v9, 0);
    v134 = 0;
    TextureForEffectSlot = C3DEngineContextGetTextureForEffectSlot(v31[108].i64[0], Gobo, &v134);
    v57 = v134;
    v6[25].i64[0] = TextureForEffectSlot;
    v6[25].i64[1] = v57;
    C3DEffectSlotSetTextureFromImageProxy(Gobo, TextureForEffectSlot);
    v6[7].i32[0] |= 0x10u;
    memset(&v133, 0, sizeof(v133));
    C3DMatrix4x4Invert(&v135, &v133);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    C3DLightGetProjectionInfo(v9, &v119);
    v59 = C3DEngineContextGetCoordinatesSystemOptions(v31[108].i64[0], v58);
    Matrix = C3DProjectionInfosGetMatrix(v119.i64, 0, v59);
    v61 = 0;
    v62 = *Matrix;
    v63 = *(Matrix + 2);
    v64 = *(Matrix + 4);
    v65 = *(Matrix + 6);
    v136 = v133;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    do
    {
      *(&v137 + v61 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*&v136.columns[v61])), v63, *v136.columns[v61].f32, 1), v64, v136.columns[v61], 2), v65, v136.columns[v61], 3);
      ++v61;
    }

    while (v61 != 4);
    v66 = v138;
    v67 = v139;
    v68 = v140;
    v6[8] = v137;
    v6[9] = v66;
    v6[10] = v67;
    v6[11] = v68;
    if (C3DKeyframeControllerHasInterpolationModesPerKey(Gobo))
    {
      ImageTransform = C3DEffectSlotGetImageTransform(Gobo, v69);
      v71 = 0;
      v72 = *ImageTransform;
      v73 = ImageTransform[1];
      v74 = ImageTransform[2];
      v75 = ImageTransform[3];
      v76 = v6[9];
      v77 = v6[10];
      v78 = v6[11];
      v137 = v6[8];
      v138 = v76;
      v139 = v77;
      v140 = v78;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      do
      {
        *(&v119 + v71) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v137 + v71))), v73, *&v137.f32[v71 / 4], 1), v74, *(&v137 + v71), 2), v75, *(&v137 + v71), 3);
        v71 += 16;
      }

      while (v71 != 64);
      v79 = v119;
      v80 = v120;
      v81 = v121;
      v82 = v122;
    }

    else
    {
      v79 = v6[8];
      v80 = v6[9];
      v81 = v6[10];
      v82 = v6[11];
    }

    v98 = 0;
    v99 = *MEMORY[0x277D860B8];
    v100 = *(MEMORY[0x277D860B8] + 16);
    v101 = *(MEMORY[0x277D860B8] + 32);
    v99.i32[0] = 0.5;
    v100.i32[1] = -0.5;
    v101.i32[2] = 1.0;
    v102.i64[0] = 0x3F0000003F000000;
    v102.i64[1] = *(MEMORY[0x277D860B8] + 56);
    v137 = v79;
    v138 = v80;
    v139 = v81;
    v140 = v82;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    do
    {
      *(&v119 + v98) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v137 + v98))), v100, *&v137.f32[v98 / 4], 1), v101, *(&v137 + v98), 2), v102, *(&v137 + v98), 3);
      v98 += 16;
    }

    while (v98 != 64);
    v103 = v120;
    v104 = v121;
    v105 = v122;
    v6[8] = v119;
    v6[9] = v103;
    v6[10] = v104;
    v6[11] = v105;
    Intensity = C3DEffectSlotGetIntensity(Gobo, v69);
    __asm { FMOV            V1.4S, #1.0 }

    _Q1.f32[3] = Intensity;
    v6[24] = _Q1;
  }
}

uint64_t __appendShadowTechnique(uint64_t a1, void *key, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ShadowTechniqueForNode = C3DLightingSystemGetShadowTechniqueForNode(a1, a3, key);
  if (!ShadowTechniqueForNode)
  {
    ShadowTechniqueForNode = C3DFXTechniqueCreateSpotShadow(a3, v12);
    C3DLightingSystemSetShadowTechniqueForNode(a1, a3, key, ShadowTechniqueForNode);
    CFRelease(ShadowTechniqueForNode);
  }

  if (C3DLightShouldAdjustsShadowProjection(key, v12))
  {
    EnableSampleDistributed = C3DLightGetEnableSampleDistributed(key);
    C3DFXContextSetEnableSampleDistributedRange(a4, a5, EnableSampleDistributed);
  }

  result = C3DFXTechniqueMarkAsUsed(ShadowTechniqueForNode, a6);
  if (result)
  {
    v16 = C3DFXShadowMapTargetNameWithNode(a3);
    CFDictionarySetValue(*(a1 + 40), a3, v16);

    return C3DFXContextAppendTechnique(a4, a5, ShadowTechniqueForNode);
  }

  return result;
}

const void *C3DLightingSystemGetShadowTechniqueForNode(uint64_t a1, const void *a2, void *key)
{
  v3 = *(a1 + 116488);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, a2);
}

void C3DLightingSystemSetShadowTechniqueForNode(uint64_t a1, const void *a2, void *key, const void *a4)
{
  Mutable = *(a1 + 116488);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, 0, MEMORY[0x277CBF150]);
    *(a1 + 116488) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 1, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(a1 + 116488), key, Value);
    CFRelease(Value);
  }

  CFDictionarySetValue(Value, a2, a4);
}

uint64_t C3DLightingSystemAppendForwardShadowingTechniques(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(a3, a2);
  result = C3DSceneGetFrameStamp(Scene, v7);
  v10 = result;
  if (*(a1 + 116504) != result)
  {
    *(a1 + 116504) = result;
  }

  v11 = *(a1 + 68);
  if (v11)
  {
    v12 = 0;
    v13 = 8 * v11;
    do
    {
      v14 = *(*(a1 + 208) + v12);
      result = C3DLightGetCastsShadow(v14, v9);
      if (result)
      {
        result = C3DLightGetUsesDeferredShadows(v14, v9);
        if ((result & 1) == 0)
        {
          result = __appendShadowTechnique(a1, v14, *(*(a1 + 144) + v12), a2, a3, v10);
        }
      }

      v12 += 8;
    }

    while (v13 != v12);
  }

  v15 = *(a1 + 76);
  if (v15)
  {
    v16 = 0;
    v17 = 8 * v15;
    do
    {
      v18 = *(*(a1 + 224) + v16);
      result = C3DLightGetCastsShadow(v18, v9);
      if (result)
      {
        result = C3DLightGetUsesDeferredShadows(v18, v9);
        if ((result & 1) == 0)
        {
          result = __appendShadowTechnique(a1, v18, *(*(a1 + 160) + v16), a2, a3, v10);
        }
      }

      v16 += 8;
    }

    while (v17 != v16);
  }

  return result;
}

void __CommitLightsUpdate(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 488)))
  {
    HaveChanged = __LightsHaveChanged(a1, v2);
    CFSetRemoveAllValues(*(a1 + 488));
    if (HaveChanged)
    {
      IsBlack = C3DColor4IsBlack((a1 + 48));
      __ComputeAmbientLighting(a1);
      if (IsBlack != C3DColor4IsBlack((a1 + 48)))
      {
        v5 = *(a1 + 116424);
        if (v5)
        {

          C3DEnginePipelineInvalidateAllProgramHashCode(v5);
        }
      }
    }
  }
}

void C3DLightingSystemBeginQueries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 114688;
  if (!a2)
  {
    v7 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemBeginQueries_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  *(v6 + 1728) = a3;
  Scene = C3DEngineContextGetScene(a3, a2);
  *(v6 + 1736) = C3DSceneGetEnginePipeline(Scene, v15);
  *(v6 + 1744) = C3DEngineContextGetBooleanOptionForKey(a3, @"probeRendering");
  v16 = *(a2 + 48);
  v18 = *a2;
  v17 = *(a2 + 16);
  *(a1 + 116368) = *(a2 + 32);
  *(a1 + 116384) = v16;
  *(a1 + 116336) = v18;
  *(a1 + 116352) = v17;
  v28.i32[2] = 0;
  v28.i64[0] = 0;
  C3DMatrix4x4GetScale(a2, &v28);
  v19 = vabsq_f32(v28);
  *(v6 + 1712) = fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]);
  __CommitLightsUpdate(a1);
  for (i = 1; i != 8; ++i)
  {
    v21 = *(a1 + 64 + 4 * i);
    if (v21)
    {
      for (j = 0; j != v21; ++j)
      {
        __updateWorldData(a1, i, j, *(*(a1 + 136 + 8 * i) + 8 * j), *(*(a1 + 200 + 8 * i) + 8 * j));
      }
    }
  }

  for (k = 0; k != 7; ++k)
  {
    bzero(*(a1 + 8 * k + 336), *(a1 + 4 * k + 68));
  }

  bzero((a1 + 2664), 0x800uLL);
  bzero((a1 + 616), 0x800uLL);
  *(a1 + 608) = 0;
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a3, 0);
  *(v6 + 1752) = AuthoringEnvironment;
  if (AuthoringEnvironment)
  {
    ShouldDisplayLightInfluences = C3DAuthoringEnvironmentShouldDisplayLightInfluences(AuthoringEnvironment);
    v26 = *(v6 + 1752);
    *(v6 + 1796) = ShouldDisplayLightInfluences;
    if (v26)
    {
      *(a1 + 116480) = 0;
      *(a1 + 116448) = 0u;
      *(a1 + 116464) = 0u;
    }
  }

  else
  {
    *(v6 + 1796) = 0;
  }

  __ComputeAmbientLighting(a1);
  if (C3DLightingSystemGetIrradianceProbesCount(a1, v27))
  {
    C3DLightProbesBeginQueries(*(a1 + 24), a3);
  }
}

uint64_t C3DLightingSystemGetIrradianceProbesCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

uint64_t C3DLightingSystemGetInfiniteLightSet(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = *(a1 + 576);
  *a3 = *(a1 + 584);
  return *(a1 + 588);
}

__n128 C3DLightingSystemGetLightingContext@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x8000000000;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  __ComputeAmbientLighting(a1);
  v23 = *(a1 + 48);
  if (C3DColor4IsBlack(&v23))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  *(v25 + 12) = v25[3] & 0xFFFD | v7;
  if (C3DLightingSystemGetIrradianceProbesCount(a1, v6))
  {
    v8 = 16 * (C3DLightProbesSystemGetSphericalHarmonicsOrder(*(a1 + 24)) & 7);
  }

  else
  {
    v8 = 0;
  }

  *(v25 + 12) = v25[3] & 0xFF8F | v8;
  if (C3DEngineContextIsClusteredShadingEnabled(a2))
  {
    *(v25 + 12) = v25[3] & 0xFFFB | (4 * (*(a1 + 572) != 0));
    v10 = C3DLightingSystemGetReflectionProbesCount(a1, v9) != 0;
    *(v25 + 12) = v25[3] & 0xFFF7 | (8 * v10);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = __C3DLightingSystemGetLightingContext_block_invoke;
  v22[3] = &unk_2782FECB8;
  v22[4] = &v24;
  v22[5] = a1;
  C3DLightingSystemEnumerateGlobalLights(a1, a2, v22);
  v11 = *(a1 + 68);
  v12 = *(a1 + 72);
  v13 = *(a1 + 76);
  v14 = *(a1 + 88);
  if (!C3DEngineContextIsClusteredShadingEnabled(a2))
  {
    __ComputeInfiniteLightSet(a1, v15);
    if (!(v12 + v11 + v13 + v14))
    {
      v16 = *(a1 + 584) == 0;
      goto LABEL_16;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (v12 + v11 + v13 + v14 || *(a1 + 584))
  {
    goto LABEL_15;
  }

  v16 = __ShouldForceLighting(a2, v15) ^ 1;
LABEL_16:
  v17 = v25;
  *(v25 + 12) = v25[3] & 0xFFFE | v16;
  v18 = *(v17 + 9);
  v19 = *(v17 + 13);
  *(a3 + 64) = *(v17 + 11);
  *(a3 + 80) = v19;
  *(a3 + 96) = v17[15];
  v20 = *(v17 + 5);
  *(a3 + 32) = *(v17 + 7);
  *(a3 + 48) = v18;
  *a3 = *(v17 + 3);
  *(a3 + 16) = v20;
  _Block_object_dispose(&v24, 8);
  return result;
}

uint64_t C3DLightingSystemGetReflectionProbesCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

uint64_t __C3DLightingSystemGetLightingContext_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(*(result + 40) + 536);
  *(v4 + 44) = *(*(result + 40) + 552);
  *(v4 + 28) = v5;
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 32) + 8) + 24) & 0x807F | (a2 << 7);
  if (a2)
  {
    v7 = result;
    v8 = a2;
    v9 = 64;
    do
    {
      v10 = *a4++;
      result = C3DLightGetCategoryBitMask(v10, a2);
      *(*(*(v7 + 32) + 8) + v9) = result;
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t C3DLightingSystemQuery(float32x4_t *a1, float32x4_t *a2, uint64_t a3, void *a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v7 = a1 + 7168;
  v53[0] = a1[36].i64[0];
  v8 = a1[36].u32[2];
  v48 = a2[1];
  v50 = *a2;
  if ((a1[37].i64[0] & a3) != 0)
  {
    v9 = a1[4].u32[1];
    if (v8 <= 7 && v9 != 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a1[17].i64[0] + 8 * v11);
        if (v12 != -1)
        {
          if (v7[109].i8[0] != 1)
          {
            goto LABEL_11;
          }

          if ((C3DLightGetBaked(*(a1[13].i64[0] + 8 * v11), a2) & 1) == 0)
          {
            break;
          }
        }

LABEL_13:
        if (v8 <= 7 && ++v11 < v9)
        {
          continue;
        }

        goto LABEL_15;
      }

      v12 = *(a1[17].i64[0] + 8 * v11);
LABEL_11:
      if ((v12 & a3) != 0)
      {
        *(v53 + v8++) = __runtimeIndex(a1, 1, v11);
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  v13 = a1[4].u32[2];
  if (v8 <= 7 && v13 != 0)
  {
    v15 = 0;
    v45 = vnegq_f32(v48);
    do
    {
      if ((*(a1[17].i64[1] + 8 * v15) & a3) != 0 && (v7[109].i8[0] != 1 || (C3DLightGetBaked(*(a1[13].i64[1] + 8 * v15), a2) & 1) == 0))
      {
        v16 = a1[28].i64[1];
        v17 = *(v16 + 16 * v15);
        v18 = vsubq_f32(v17, v50);
        v19 = vsubq_f32(v18, vmaxnmq_f32(vminnmq_f32(v18, v48), v45));
        v20 = vmulq_f32(v19, v19);
        if ((v20.f32[2] + vaddv_f32(*v20.f32)) < COERCE_FLOAT(vmulq_f32(v17, v17).i32[3]))
        {
          v43 = *(v16 + 16 * v15);
          *(v53 + v8) = __runtimeIndex(a1, 2, v15);
          if (v7[112].i8[4] == 1)
          {
            v52 = xmmword_21C2814B0;
            C3DAuthoringEnvironmentAppendDebugSegment(v7[109].i64[1], 0, &v52, 0, v43, *a2);
          }

          ++v8;
        }
      }

      if (v8 > 7)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v13);
  }

  if (v8 <= 7)
  {
    v21 = a1[5].u32[2];
    if (v21)
    {
      v22 = 0;
      v46 = vnegq_f32(v48);
      do
      {
        if ((*(a1[19].i64[1] + 8 * v22) & a3) != 0 && (v7[109].i8[0] != 1 || (C3DLightGetBaked(*(a1[15].i64[1] + 8 * v22), a2) & 1) == 0))
        {
          v23 = a1[29].i64[0];
          v24 = vsubq_f32(*(v23 + 16 * v22), v50);
          v25 = vsubq_f32(v24, vmaxnmq_f32(vminnmq_f32(v24, v48), v46));
          v26 = vmulq_f32(v25, v25);
          if ((v26.f32[2] + vaddv_f32(*v26.f32)) < COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22))))
          {
            v44 = *(v23 + 16 * v22);
            *(v53 + v8) = __runtimeIndex(a1, 6, v22);
            if (v7[112].i8[4] == 1)
            {
              v52 = xmmword_21C2814B0;
              C3DAuthoringEnvironmentAppendDebugSegment(v7[109].i64[1], 0, &v52, 0, v44, *a2);
            }

            ++v8;
          }
        }

        if (v8 > 7)
        {
          break;
        }

        ++v22;
      }

      while (v22 < v21);
    }
  }

  if (v8 <= 7)
  {
    v27 = a1[4].u32[3];
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = vmulq_f32(v48, v48);
      v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
      v32 = v50;
      v32.f32[3] = v31;
      v49 = v31;
      v51 = v32;
      do
      {
        if ((*(a1[18].i64[0] + 8 * v29) & a3) != 0)
        {
          if (v7[109].i8[0] != 1 || (Baked = C3DLightGetBaked(*(a1[14].i64[0] + 8 * v29), a2), v31 = v49, (Baked & 1) == 0))
          {
            v34 = (a1[29].i64[1] + v28);
            v35 = vsubq_f32(v51, *v34);
            v36 = vmulq_f32(v35, v35);
            if ((v36.f32[2] + vaddv_f32(*v36.f32)) <= ((v31 + v34[2].f32[0]) * (v31 + v34[2].f32[0])))
            {
              v37 = v34[1];
              v38 = vmulq_f32(v35, v37);
              v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
              v39 = vmlsq_lane_f32(v35, v37, *v38.f32, 0);
              v40 = vmulq_f32(v39, v39);
              if ((v34[2].f32[2] * (sqrtf(v40.f32[2] + vaddv_f32(*v40.f32)) - (v38.f32[0] * v34[2].f32[3]))) < v31)
              {
                v47 = *v34;
                *(v53 + v8) = __runtimeIndex(a1, 3, v29);
                if (v7[112].i8[4] == 1)
                {
                  v52 = xmmword_21C2814B0;
                  C3DAuthoringEnvironmentAppendDebugSegment(v7[109].i64[1], 0, &v52, 0, v47, *a2);
                }

                ++v8;
                v31 = v49;
              }
            }
          }
        }

        if (v8 > 7)
        {
          break;
        }

        ++v29;
        v28 += 48;
      }

      while (v29 < v27);
    }
  }

  ++a1[7278].i32[v8];
  *a4 = v53[0];
  return v8;
}

uint64_t C3DLightingSystemGetLightingSetProgramHashCodes(_BOOL8 LightingSetProgramHashCodes_cold_1, uint64_t a2, _OWORD *a3)
{
  v5 = LightingSetProgramHashCodes_cold_1;
  v6 = 0;
  *&v13[5] = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  a3[1] = 0u;
  v7 = LightingSetProgramHashCodes_cold_1 + 4712;
  do
  {
    v8 = *(a2 + v6);
    if (!*(a2 + v6))
    {
      break;
    }

    if (v8 != 255 && *(v5 + 608) < v8)
    {
      v10 = scn_default_log(LightingSetProgramHashCodes_cold_1, a2);
      LightingSetProgramHashCodes_cold_1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
      if (LightingSetProgramHashCodes_cold_1)
      {
        C3DLightingSystemGetLightingSetProgramHashCodes_cold_1(v12, v13, v10);
      }
    }

    *(a3 + v6++) = *(v7 + 4 * v8);
  }

  while (v6 != 8);
  return v6;
}

void C3DLightingSystemGetLightingSetDesc(_BOOL8 result, uint64_t a2, unint64_t *a3)
{
  v4 = result;
  v5 = 0;
  v6 = a3 + 9;
  v7 = result + 2664;
  v8 = result + 5744;
  while (1)
  {
    v9 = *(a2 + v5);
    if (!*(a2 + v5))
    {
      break;
    }

    if (v9 == 255 || *(v4 + 608) >= v9)
    {
      *(v6 - 8) = *(v7 + 8 * v9);
      v11 = v8 + 432 * v9;
    }

    else
    {
      if ((C3DLightingSystemGetLightingSetDesc_done & 1) == 0)
      {
        C3DLightingSystemGetLightingSetDesc_done = 1;
        v12 = scn_default_log(result, a2);
        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          C3DLightingSystemGetLightingSetDesc_cold_1(&buf, v16, v12);
        }
      }

      v11 = 0;
      *(v6 - 8) = 0;
    }

    *v6++ = v11;
    if (++v5 == 8)
    {
      *a3 = 8;
      return;
    }
  }

  *a3 = v5;
  if (v5 <= 7)
  {
    v13 = 8 - v5;
    do
    {
      *(v6 - 8) = 0;
      *v6++ = 0;
      --v13;
    }

    while (v13);
  }
}

uint64_t C3DLightingSystemCheckLightingSetTextureUsage(_BOOL8 LightingSetDesc_cold_1, uint64_t a2)
{
  v3 = LightingSetDesc_cold_1;
  v4 = 0;
  v5 = LightingSetDesc_cold_1 + 5744;
  do
  {
    v6 = *(a2 + v4);
    if (!*(a2 + v4))
    {
      break;
    }

    if (v6 == 255 || *(v3 + 608) >= v6)
    {
      if ((*(v5 + 432 * *(a2 + v4) + 112) & 0x10) != 0)
      {
        return 1;
      }
    }

    else if ((C3DLightingSystemCheckLightingSetTextureUsage_done & 1) == 0)
    {
      C3DLightingSystemCheckLightingSetTextureUsage_done = 1;
      v8 = scn_default_log(LightingSetDesc_cold_1, a2);
      LightingSetDesc_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (LightingSetDesc_cold_1)
      {
        C3DLightingSystemGetLightingSetDesc_cold_1(&v10, v11, v8);
      }
    }

    ++v4;
  }

  while (v4 != 8);
  return 0;
}

void C3DLightingSystemEndQueries(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = a1 + 114688;
  v3 = *(a1 + 116440);
  if (v3)
  {
    if (*(a1 + 588) == 1)
    {
      v4 = *(a1 + 584);
      if (v4 >= 8)
      {
        v4 = 8;
      }

      *(a1 + 4 * v4 + 116448) = 666;
    }

    C3DAuthoringEnvironmentUpdateLightingStats(v3, (a1 + 116448), 9u);
    if (C3DAuthoringEnvironmentShouldDisplayLightInfluences(*(v2 + 1752)))
    {
      v50 = xmmword_21C27F800;
      v51 = xmmword_21C27F7E0;
      v33 = *(a1 + 68);
      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          WorldMatrix = C3DNodeGetWorldMatrix(*(*(a1 + 144) + 8 * i), v5);
          v11 = *(a1 + 400);
          v12 = *(v11 + i);
          if (*(v11 + i))
          {
            v52[0] = *"fff?";
            v52[1] = unk_21C2A2230;
            v52[2] = xmmword_21C2A2240;
            v52[3] = unk_21C2A2250;
            v13 = *(*(a1 + 208) + 8 * i);
            v14 = C3DLightSupportsShadowCascades(v13, v9);
            if (!v14)
            {
              v16 = 1;
LABEL_14:
              v17 = a1 + 116768 + 1568 * (v12 - 1);
              v18 = v52;
              do
              {
                if (v14)
                {
                  v49[0] = *v18;
                  v49[0].i32[2] = 1056964608;
                  AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(v13, v9);
                  v20 = *(v2 + 1752);
                  if (AutomaticallyAdjustsShadowProjection)
                  {
                    C3DAuthoringEnvironmentAppendDebugPolyhedron(v20, *(v17 + 240), 0, v49[0].f32);
                  }

                  else
                  {
                    C3DAuthoringEnvironmentAppendDebugBoundingSphere(v20, *(v17 + 224), *(v17 + 232), 0, v49);
                  }
                }

                C3DAuthoringEnvironmentAppendDebugFrustum(*(v2 + 1752), (v17 + 256), 0, v18->f32);
                v21 = *(v17 + 368);
                v49[0] = *(v17 + 352);
                v49[1] = v21;
                C3DAuthoringEnvironmentAppendDebugBoundingBox(*(v2 + 1752), v49, v17, v18);
                v17 += 384;
                ++v18;
                --v16;
              }

              while (v16);
              goto LABEL_20;
            }

            ShadowCascadeCount = C3DLightGetShadowCascadeCount(v13, v9);
            if (ShadowCascadeCount)
            {
              v16 = ShadowCascadeCount;
              goto LABEL_14;
            }
          }

LABEL_20:
          v22 = *(*(a1 + 336) + i);
          Type = C3DLightGetType(*(*(a1 + 208) + 8 * i), v9);
          v24 = *(v2 + 1752);
          if (v22)
          {
            v25 = &v50;
          }

          else
          {
            v25 = &v51;
          }

          if (Type == 1)
          {
            C3DAuthoringEnvironmentAppendDebugRay(v24, WorldMatrix, v25, 0, xmmword_21C2A2200);
          }

          else
          {
            C3DAuthoringEnvironmentAppendDebugSegment(v24, WorldMatrix, v25, 0, xmmword_21C27F910, xmmword_21C27F9D0);
            C3DAuthoringEnvironmentAppendDebugSegment(*(v2 + 1752), WorldMatrix, v25, 0, xmmword_21C27F8C0, xmmword_21C27F9A0);
            C3DAuthoringEnvironmentAppendDebugSegment(*(v2 + 1752), WorldMatrix, v25, 0, xmmword_21C27F600, xmmword_21C27F900);
          }
        }
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 0x40000000;
      v45[2] = __C3DLightingSystemEndQueries_block_invoke;
      v45[3] = &__block_descriptor_tmp_16_0;
      v48 = a1;
      v46 = v50;
      v47 = v51;
      v26 = *(a1 + 72);
      if (v26)
      {
        __C3DLightingSystemEndQueries_block_invoke(v45, v26, v6, v7, *(a1 + 456));
      }

      v38 = MEMORY[0x277D85DD0];
      v39 = 0x40000000;
      v40 = __C3DLightingSystemEndQueries_block_invoke_2;
      v41 = &__block_descriptor_tmp_18_0;
      v44 = a1;
      v42 = v50;
      v43 = v51;
      v27 = *(a1 + 88);
      if (v27)
      {
        v28 = 0;
        v29 = *(a1 + 464);
        do
        {
          v30 = *(v29 + 16 * v28);
          HIDWORD(v30) = sqrtf(*(&v30 + 3));
          if (*(*(v44 + 376) + v28))
          {
            v31 = &v42;
          }

          else
          {
            v31 = &v43;
          }

          C3DAuthoringEnvironmentAppendDebugBoundingSphere(*(v44 + 116440), *(v29 + 16 * v28++), *(&v30 + 1), 0, v31);
        }

        while (v27 != v28);
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v34[2] = __C3DLightingSystemEndQueries_block_invoke_3;
      v34[3] = &__block_descriptor_tmp_20_3;
      v37 = a1;
      v35 = v50;
      v36 = v51;
      v32 = *(a1 + 76);
      if (v32)
      {
        __C3DLightingSystemEndQueries_block_invoke_3(v34, v32, v50, v51, v6, v7, *(a1 + 472));
      }
    }
  }

  if (*(a1 + 80))
  {
    C3DLightProbesEndQueries(*(a1 + 24));
  }

  *(v2 + 1752) = 0;
  *(v2 + 1728) = 0;
}

uint64_t C3DLightingSystemEnumerateLocalOmnis(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 152), *(result + 216), *(result + 456));
  }

  return result;
}

void __C3DLightingSystemEndQueries_block_invoke(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(result + 64);
      if (*(*(v9 + 344) + v7))
      {
        v10 = 32;
      }

      else
      {
        v10 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugBoundingSphere(*(v9 + 116440), *(a5 + 16 * v7), *(a5 + 16 * v7 + 8), 0, (result + v10));
      ++v7;
    }

    while (v8 != v7);
  }
}

void __C3DLightingSystemEndQueries_block_invoke_2(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(a5 + 16 * v7);
      HIDWORD(v9) = sqrtf(*(&v9 + 3));
      v10 = *(result + 64);
      v11 = *(v10 + 116440);
      if (*(*(v10 + 376) + v7))
      {
        v12 = 32;
      }

      else
      {
        v12 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugBoundingSphere(v11, *(a5 + 16 * v7++), *(&v9 + 1), 0, (result + v12));
    }

    while (v8 != v7);
  }
}

uint64_t C3DLightingSystemEnumerateSpots(uint64_t result, uint64_t a2)
{
  v2 = *(result + 76);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 160), *(result + 224), *(result + 472));
  }

  return result;
}

void __C3DLightingSystemEndQueries_block_invoke_3(uint64_t result, unsigned int a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = 0;
    v9 = (a7 + 32);
    v10 = a2;
    do
    {
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = *(v9 + 1);
      v9 += 12;
      v18 = v12;
      v19 = v11;
      v15 = *(result + 64);
      v16 = *(v15 + 116440);
      if (*(*(v15 + 352) + v8))
      {
        v17 = 32;
      }

      else
      {
        v17 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugCone(v16, &v19, &v18, 0, (result + v17), 0, v13, v14);
      ++v8;
    }

    while (v10 != v8);
  }
}

void C3DLightingSystemEndProcessing(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 76);
  if (v3)
  {
    __C3DLightingSystemEndProcessing_block_invoke(result, v3, a3, *(result + 224));
  }
}

void __C3DLightingSystemEndProcessing_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      Gobo = C3DLightGetGobo(*a4, 0);
      if (Gobo)
      {
        v8 = Gobo;
        if (C3DEffectSlotGetImageProxy(Gobo, v7))
        {
          C3DEffectSlotSetTextureFromImageProxy(v8, 0);
        }
      }

      ++a4;
      --v5;
    }

    while (v5);
  }
}

uint64_t C3DLightingSystemGetLightProbesSystem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void C3DLightingSystemInvalidateShadowTechniqueForLight(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 116488);
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

void C3DLightingSystemNextFrame(uint64_t a1)
{
  v2 = 0;
  *(a1 + 116760) = 0;
  do
  {
    bzero(*(a1 + 8 * v2 + 400), *(a1 + 4 * v2 + 68));
    ++v2;
  }

  while (v2 != 7);

  __CommitLightsUpdate(a1);
}

uint64_t C3DLightingSystemSetMainRenderingFrustums(uint64_t result, _OWORD *a2, float a3, float a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v7 = a2[1];
  *(result + 116512) = *a2;
  *(result + 116528) = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  *(result + 116576) = a2[4];
  *(result + 116592) = v10;
  *(result + 116544) = v8;
  *(result + 116560) = v9;
  v11 = *a7;
  v12 = a7[1];
  v13 = a7[3];
  *(result + 116720) = a7[2];
  *(result + 116736) = v13;
  *(result + 116688) = v11;
  *(result + 116704) = v12;
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[3];
  *(result + 116640) = a6[2];
  *(result + 116656) = v16;
  *(result + 116608) = v14;
  *(result + 116624) = v15;
  *(result + 116672) = a3;
  *(result + 116676) = a4;
  return result;
}

double _computeShadowMatrix(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __n128 a18, __n128 a19, __n128 a20)
{
  v20 = 0;
  v21 = -0.5;
  if ((a1 & 2) == 0)
  {
    v21 = 0.5;
  }

  if (a1)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.5;
  }

  if (a1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.5;
  }

  v24 = *MEMORY[0x277D860B8];
  v25 = *(MEMORY[0x277D860B8] + 16);
  v24.i32[0] = 0.5;
  v26 = *(MEMORY[0x277D860B8] + 32);
  v25.f32[1] = v21;
  v26.f32[2] = v22;
  v27.i64[0] = 0x3F0000003F000000;
  v27.f32[2] = v23;
  v27.i32[3] = *(MEMORY[0x277D860B8] + 60);
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v42 = a9;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v39 + v20))), v25, v39.n128_u64[v20 / 8], 1), v26, *(&v39 + v20), 2), v27, *(&v39 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v28 = 0;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v39 + v28))), v30, v39.n128_u64[v28 / 8], 1), v31, *(&v39 + v28), 2), v32, *(&v39 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v33 = 0;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v39 = a17;
  v40 = a18;
  v41 = a19;
  v42 = a20;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v39 + v33))), v35, v39.n128_u64[v33 / 8], 1), v36, *(&v39 + v33), 2), v37, *(&v39 + v33), 3);
    v33 += 16;
  }

  while (v33 != 64);
  return *v43.i64;
}

void __computeSplitPositions(uint64_t a1, unsigned int a2, double a3, double a4, int32x2_t a5, int32x2_t a6)
{
  v7 = a2 + 1;
  if (a2 == -1)
  {
    LODWORD(v7) = 0;
LABEL_10:
    v21 = v7 + 0xFFFFFFFFLL;
    v22 = (a1 + 4 * v7);
    v23 = v7 + 1;
    do
    {
      *v22++ = *(a1 + 4 * v21++);
    }

    while (v23++ != 5);
    return;
  }

  a6.i32[0] = LODWORD(a3);
  v8 = *&a4 / *&a3;
  *&a3 = *&a4 - *&a3;
  *&a4 = a2;
  v26 = vdupq_n_s64(v7 - 1);
  v9 = vdup_lane_s32(*&a4, 0);
  v10 = vdup_lane_s32(*&a3, 0);
  v11 = vdup_lane_s32(a6, 0);
  v12 = (v7 + 1) & 0x1FFFFFFFELL;
  v13 = vdup_lane_s32(a5, 0);
  v14 = 0x100000000;
  v15 = xmmword_21C27F640;
  v16 = (a1 + 4);
  v25 = vdupq_n_s64(2uLL);
  v27 = *a6.i32;
  do
  {
    v30 = vmovn_s64(vcgeq_u64(v26, v15));
    v31 = v15;
    v17 = vdiv_f32(vcvt_f32_u32(v14), v9);
    v28 = v17.f32[1];
    v18 = vmla_f32(v11, v17, v10);
    v29 = powf(v8, v17.f32[0]);
    v19 = vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(powf(v8, v28)), LODWORD(v29)), v27);
    v20 = vmla_f32(v19, vsub_f32(v18, v19), v13);
    if (v30.i8[0])
    {
      *(v16 - 1) = v20.i32[0];
    }

    if (v30.i8[4])
    {
      *v16 = v20.i32[1];
    }

    v15 = vaddq_s64(v31, v25);
    v14 = vadd_s32(v14, 0x200000002);
    v16 += 2;
    v12 -= 2;
  }

  while (v12);
  if (v7 <= 4)
  {
    goto LABEL_10;
  }
}

double _computeOrthographicProjectionFromShadowBoundingBox(char a1, __n128 a2, __n128 a3)
{
  v3 = -a3.n128_f32[2];
  if (a2.n128_f32[2] < a3.n128_f32[2])
  {
    v4 = -a2.n128_f32[2];
  }

  else
  {
    v4 = v3 + 1.0;
  }

  v5 = v3 - v4;
  v10 = vcvtq_f64_f32(a2.n128_u64[0]);
  v6 = vcvtq_f64_f32(a3.n128_u64[0]);
  v7 = vsubq_f64(v6, v10);
  a3.n128_u32[0] = 0;
  a3.n128_u64[1] = 0;
  *&v10.f64[0] = vcvt_f32_f64(vdivq_f64(vnegq_f64(vaddq_f64(v10, v6)), v7));
  if (a1)
  {
    *&v13 = 1.0 / v5;
    *&v12 = 0;
    *(&v12 + 1) = v13;
  }

  else
  {
    *&v11 = 2.0 / v5;
    *&v12 = 0;
    *(&v12 + 1) = v11;
    v3 = v4 + v3;
  }

  v8 = 2.0 / v7.f64[0];
  v14 = LODWORD(v8);
  v9 = 2.0 / v7.f64[1];
  a3.n128_f32[1] = v9;
  *&v15 = v3 / v5;
  *&v10.f64[1] = __PAIR64__(1.0, v15);
  if ((a1 & 8) != 0)
  {
    v16 = 0;
    v18[0] = LODWORD(v8);
    v18[1] = a3;
    v18[2] = v12;
    v18[3] = v10;
    memset(v19, 0, sizeof(v19));
    do
    {
      v19[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v18[v16])), xmmword_21C27F8C0, *&v18[v16], 1), xmmword_21C27F900, v18[v16], 2), xmmword_21C27FDD0, v18[v16], 3);
      ++v16;
    }

    while (v16 != 4);
    *&v14 = *&v19[0];
  }

  return *&v14;
}

void __computeStableCascade(uint64_t a1, float32x4_t a2, float32x4_t a3, uint64_t a4, char a5)
{
  v79 = *MEMORY[0x277D85DE8];
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 288), *(a1 + 296), *(a1 + 272), *(a1 + 280), &v67);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 256), *(a1 + 264), *(a1 + 288), *(a1 + 296), &v68);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 272), *(a1 + 280), *(a1 + 304), *(a1 + 312), &v69);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 304), *(a1 + 312), *(a1 + 256), *(a1 + 264), &v70);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 288), *(a1 + 296), *(a1 + 272), *(a1 + 280), &v71);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 256), *(a1 + 264), *(a1 + 288), *(a1 + 296), &v72);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 272), *(a1 + 280), *(a1 + 304), *(a1 + 312), &v73);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 304), *(a1 + 312), *(a1 + 256), *(a1 + 264), &v74);
  v8 = 0;
  v9.columns[0] = 0uLL;
  do
  {
    v9.columns[0] = vaddq_f32(v9.columns[0], *(&v67 + v8));
    v8 += 16;
  }

  while (v8 != 128);
  v10 = 0;
  v9.columns[1].i64[0] = 0x3E0000003E000000;
  v9.columns[1].i64[1] = 0x3E0000003E000000;
  v9.columns[3] = vmulq_f32(v9.columns[0], v9.columns[1]);
  v9.columns[0].i32[0] = 0;
  do
  {
    v9.columns[1] = vsubq_f32(*(&v67 + v10), v9.columns[3]);
    v9.columns[1] = vmulq_f32(v9.columns[1], v9.columns[1]);
    v9.columns[0].f32[0] = fmaxf(v9.columns[0].f32[0], sqrtf(v9.columns[1].f32[2] + vaddv_f32(*v9.columns[1].f32)));
    v10 += 16;
  }

  while (v10 != 128);
  v11 = ceilf(v9.columns[0].f32[0] * 16.0);
  v9.columns[0] = v9.columns[3];
  v9.columns[0].f32[3] = v11 * 0.0625;
  v57 = v9.columns[0];
  *(a1 + 224) = v9.columns[0];
  v9.columns[3].i32[3] = *(a1 + 60);
  *(a1 + 48) = v9.columns[3];
  v9.columns[0] = *a1;
  v9.columns[1] = *(a1 + 16);
  v9.columns[2] = *(a1 + 32);
  v80 = __invert_f4(v9);
  v13 = 0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  v18 = vrsqrte_f32(v17);
  v19 = vmul_f32(v18, vrsqrts_f32(v17, vmul_f32(v18, v18)));
  v19.i32[0] = vmul_f32(v19, vrsqrts_f32(v17, vmul_f32(v19, v19))).u32[0];
  __asm { FMOV            V4.4S, #1.0 }

  v25 = _Q4;
  v28 = vdivq_f32(_Q4, vmulq_n_f32(v14, v19.f32[0]));
  _Q4.f32[0] = -(v11 * 0.0625);
  v26 = _Q4;
  v26.f32[1] = _Q4.f32[0];
  v60 = v80.columns[1];
  v61 = v80.columns[0];
  *(a1 + 64) = v80;
  v26.f32[2] = v11 * 0.0625;
  v25.f32[0] = v11 * 0.0625;
  v58 = v80.columns[3];
  v59 = v80.columns[2];
  v27 = v25;
  v27.f32[1] = _Q4.f32[0];
  v27.f32[2] = v11 * 0.0625;
  v75 = v26;
  v76 = v27;
  v25.f32[1] = v11 * 0.0625;
  v25.f32[2] = v11 * 0.0625;
  _Q4.f32[1] = v11 * 0.0625;
  _Q4.f32[2] = v11 * 0.0625;
  v77 = v25;
  v78 = _Q4;
  v28.i32[3] = 1259902592;
  v29 = vsubq_f32(a2, a3);
  v30 = vaddq_f32(a2, a3);
  v31 = 0.0;
  do
  {
    v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*(&v75 + v13 * 4))), *(a1 + 16), *&v75.f32[v13], 1), v14, *(&v75 + v13 * 4), 2), v15, *(&v75 + v13 * 4), 3);
    v32.i32[3] = 1.0;
    v33 = vmulq_f32(v28, vsubq_f32(v29, v32));
    v34 = vmulq_f32(v28, vsubq_f32(v30, v32));
    v33.i32[3] = 0;
    v34.i32[3] = 0;
    v35 = vminnmq_f32(v33, v34);
    v36 = vmaxnmq_f32(v33, v34);
    v34.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
    v37 = vextq_s8(v36, v36, 8uLL).u64[0];
    *v34.f32 = vbsl_s8(vcge_f32(vzip1_s32(v37, *v35.i8), vzip1_s32(*v36.i8, *v34.f32)), vzip1_s32(*v36.i8, *v35.i8), vzip1_s32(v37, *v34.f32));
    v38 = vzip2_s32(*v36.i8, *v35.i8);
    v35.i32[0] = v34.i32[0];
    v36.i32[0] = vdup_lane_s32(*v36.i8, 1).u32[0];
    v36.i32[1] = v34.i32[1];
    v39 = vbsl_s8(vcge_f32(*v36.i8, *v35.i8), *v34.f32, v38);
    v40 = *&v39.i32[1];
    if (*v39.i32 >= *&v39.i32[1])
    {
      if (*&v39.i32[1] > 0.0 && *&v39.i32[1] < 10000000.0 || *v39.i32 > 0.0 && (v40 = *v39.i32, *v39.i32 < 10000000.0))
      {
        v31 = fmaxf(v31, v40);
      }
    }

    v13 += 4;
  }

  while (v13 != 16);
  v41 = vdupq_laneq_s32(v57, 3);
  v41.n128_u32[1] = v57.u32[3];
  v41.n128_f32[2] = (v11 * 0.0625) + v31;
  *v12.i32 = -(v11 * 0.0625);
  v63 = v41;
  v65 = vdupq_lane_s32(v12, 0);
  *v43.i64 = _computeOrthographicProjectionFromShadowBoundingBox(a5, v65, v41);
  v47 = 0;
  *(a1 + 128) = v43;
  *(a1 + 144) = v44;
  *(a1 + 160) = v45;
  *(a1 + 176) = v46;
  v48.i64[0] = 0x3F0000003F000000;
  v48.i64[1] = 0x3F0000003F000000;
  v49 = vmulq_f32(vaddq_f32(v65, v63), v48);
  v50 = vmulq_f32(vsubq_f32(v63, v65), v48);
  v49.i32[3] = 1.0;
  v50.i32[3] = 0;
  *(a1 + 352) = v49;
  *(a1 + 368) = v50;
  v66[0] = v61;
  v66[1] = v60;
  v66[2] = v59;
  v66[3] = v58;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  do
  {
    *(&v75 + v47 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(v66[v47])), v44, *&v66[v47], 1), v45, v66[v47], 2), v46, v66[v47], 3);
    ++v47;
  }

  while (v47 != 4);
  v51 = vadd_f32(*v78.f32, *&vmlaq_f32(vmlaq_f32(vmulq_f32(v75, 0), 0, v76), 0, v77));
  v52 = *C3DLightGetRealShadowMapSize(a4, v42).i32;
  v53 = vmul_n_f32(v51, 0.5 * v52);
  v54 = vmul_n_f32(vsub_f32(vrnda_f32(v53), v53), 2.0 / v52);
  v55 = *(a1 + 176);
  *&v56 = vadd_f32(*v55.i8, v54);
  *(&v56 + 1) = vextq_s8(v55, v55, 8uLL).u64[0];
  *(a1 + 176) = v56;
}

void C3DLightingSystemComputeShadowMatrices(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, simd_float4 *a5, uint64_t a6, uint64_t a7, char a8)
{
  v267 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemComputeShadowMatrices_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  __CommitLightsUpdate(a1);
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v23 = a1 + 8 * (Value >> 28);
    v24 = (Value & 0xFFFFFFF) - 1;
    v25 = *(*(v23 + 200) + 8 * v24);
    CastsShadow = C3DLightGetCastsShadow(v25, v22);
    if (CastsShadow)
    {
      v237 = *(a1 + 116704);
      v238 = *(a1 + 116688);
      v235 = *(a1 + 116736);
      v236 = *(a1 + 116720);
      ShadowCascadeCount = C3DLightSupportsShadowCascades(v25, v27);
      if (ShadowCascadeCount)
      {
        ShadowCascadeCount = C3DLightGetShadowCascadeCount(v25, v29);
        v233 = ShadowCascadeCount;
      }

      else
      {
        v233 = 1;
      }

      v45 = *(v23 + 392);
      v46 = *(v45 + v24);
      v224 = v25;
      if (*(v45 + v24))
      {
        if (v46 >= 9)
        {
          v47 = scn_default_log(ShadowCascadeCount, v29);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            C3DLightingSystemComputeShadowMatrices_cold_3(v47, v29, v30, v31, v32, v33, v34, v35);
          }
        }

        v48 = a1 + 1568 * (v46 - 1) + 116768;
        v49 = v233;
LABEL_18:
        v50 = v48;
        *v268.columns[0].i64 = _computeShadowMatrix(a8, *(v48 + 64), *(v48 + 80), *(v48 + 96), *(v48 + 112), *(v48 + 128), *(v48 + 144), *(v48 + 160), *(v48 + 176), v29, v30, v31, v32, v33, v34, v35, v238, v237, v236, v235);
        v220 = v268.columns[1];
        v222 = v268.columns[0];
        v216 = v268.columns[3];
        v218 = v268.columns[2];
        v269 = __invert_f4(v268);
        v229 = v269.columns[1];
        v234 = v269.columns[0];
        v225 = v269.columns[3];
        v227 = v269.columns[2];
        if (v49)
        {
          v58 = 0;
          __asm { FMOV            V0.4S, #1.0 }

          v214 = _Q0;
          v64 = v49;
          do
          {
            v65 = v50 + 384 * v58;
            if (a3)
            {
              v66 = (a3 + (v58 << 6));
              v67 = *v65;
              v68 = *(v65 + 16);
              v69 = *(v65 + 48);
              v66[2] = *(v65 + 32);
              v66[3] = v69;
              *v66 = v67;
              v66[1] = v68;
            }

            if (a4)
            {
              v70 = (a4 + (v58 << 6));
              v71 = *(v65 + 128);
              v72 = *(v65 + 144);
              v73 = *(v65 + 176);
              v70[2] = *(v65 + 160);
              v70[3] = v73;
              *v70 = v71;
              v70[1] = v72;
            }

            if (v58)
            {
              *v74.i64 = _computeShadowMatrix(a8, *(v65 + 64), *(v65 + 80), *(v65 + 96), *(v65 + 112), *(v65 + 128), *(v65 + 144), *(v65 + 160), *(v65 + 176), v51, v52, v53, v54, v55, v56, v57, v238, v237, v236, v235);
              v78 = 0;
              v259 = v234;
              v260 = v229;
              v261 = v227;
              v262 = v225;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
              do
              {
                *(&v245 + v78) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(&v259 + v78))), v75, *&v259.f32[v78 / 4], 1), v76, *(&v259 + v78), 2), v77, *(&v259 + v78), 3);
                v78 += 16;
              }

              while (v78 != 64);
              v79 = v245;
              v80 = v248;
              DWORD1(v79) = DWORD1(v246);
              DWORD2(v79) = DWORD2(v247);
              *(v65 + 192) = v79;
              *(v65 + 208) = v80;
              v81 = a6;
              v82 = a7;
              if (a5)
              {
                v83 = &a5[4 * v58];
                *v83 = v74;
                v83[1] = v75;
                v83[2] = v76;
                v83[3] = v77;
              }
            }

            else
            {
              if (C3DLightGetType(v224, v51) != 2)
              {
                *(v65 + 192) = v214;
                *(v65 + 208) = 0u;
              }

              v81 = a6;
              v82 = a7;
              if (a5)
              {
                *a5 = v222;
                a5[1] = v220;
                a5[2] = v218;
                a5[3] = v216;
              }
            }

            if (v81)
            {
              v84 = *(v65 + 192);
              v85 = v81 + 16 * v58;
              HIDWORD(v84) = *(v85 + 12);
              *v85 = v84;
            }

            if (v82)
            {
              v86 = *(v65 + 208);
              v87 = v82 + 16 * v58;
              HIDWORD(v86) = *(v87 + 12);
              *v87 = v86;
            }

            ++v58;
          }

          while (v58 != v64);
        }

        return;
      }

      v88 = *(a1 + 116760);
      if (v88 == 8)
      {
        if ((C3DLightingSystemComputeShadowMatrices_done & 1) == 0)
        {
          C3DLightingSystemComputeShadowMatrices_done = 1;
          v89 = scn_default_log(ShadowCascadeCount, v29);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            C3DLightingSystemComputeShadowMatrices_cold_5();
          }
        }

        return;
      }

      *(a1 + 116760) = v88 + 1;
      *(v45 + v24) = v88 + 1;
      v90 = v25;
      Type = C3DLightGetType(v25, v29);
      ShouldAdjustsShadowProjection = C3DLightShouldAdjustsShadowProjection(v90, v92);
      if (!ShouldAdjustsShadowProjection)
      {
        v257 = 0u;
        v258 = 0u;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v247 = 0u;
        v248 = 0u;
        v245 = 0u;
        v246 = 0u;
        C3DLightGetProjectionInfo(v90, &v245);
        RealShadowMapSize = C3DLightGetRealShadowMapSize(v90, v163);
        if (Type == 2)
        {
          ZNear = C3DLightGetZNear(v90, *&v164);
          ZFar = C3DLightGetZFar(v90, v167);
          if (ZFar <= ZNear)
          {
            ZFar = ZNear + 1.0;
          }

          v231 = ZFar;
          v170 = __tanpi(0.25);
          if (v170 == 0.0)
          {
            v172 = 1.0;
          }

          else
          {
            v172 = 1.0 / v170;
          }

          *&v173 = v172;
          v174 = v173;
          LODWORD(v175) = 0;
          *(&v175 + 1) = 0;
          DWORD1(v175) = v173;
          v176 = v90;
          if (a8)
          {
            v190.f64[0] = ZNear * v231;
            v190.f64[1] = v231;
            *v171.i8 = vcvt_f32_f64(vdivq_f64(v190, vdupq_lane_s64(COERCE__INT64(ZNear - v231), 0)));
            v191 = xmmword_21C280360;
            DWORD2(v191) = v171.i32[1];
            *&v192 = 0;
            *(&v192 + 1) = v171.u32[0];
            v48 = a1 + 1568 * (v88 + 1) + 115200;
            *(a1 + 1568 * (v88 + 1) + 115328) = v174;
            *(a1 + 1568 * (v88 + 1) + 115344) = v175;
            *(a1 + 1568 * (v88 + 1) + 115360) = v191;
            *(a1 + 1568 * (v88 + 1) + 115376) = v192;
            if ((a8 & 8) != 0)
            {
              v198 = 0;
              v263 = v174;
              v264 = v175;
              v265 = v191;
              v266 = v192;
              v259 = 0uLL;
              v260 = 0uLL;
              v261 = 0uLL;
              v262 = 0uLL;
              v49 = v233;
              do
              {
                *(&v259 + v198) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v263 + v198))), xmmword_21C27F8C0, *(&v263 + v198), 1), xmmword_21C27F900, *(&v263 + v198), 2), xmmword_21C27FDD0, *(&v263 + v198), 3);
                v198 += 16;
              }

              while (v198 != 64);
              v199 = v260;
              v200 = v261;
              v201 = v262;
              *(a1 + 1568 * (v88 + 1) + 115328) = v259;
              *(a1 + 1568 * (v88 + 1) + 115344) = v199;
              *(a1 + 1568 * (v88 + 1) + 115360) = v200;
              *(a1 + 1568 * (v88 + 1) + 115376) = v201;
              v202 = vextq_s8(v200, v200, 8uLL);
              *v202.i8 = vzip1_s32(*&vextq_s8(v201, v201, 8uLL), *v202.i8);
              v232 = v202;
              v180 = -0.001;
            }

            else
            {
              v180 = 0.001;
              v49 = v233;
              v232 = v171;
            }
          }

          else
          {
            v177.f64[0] = (ZNear + ZNear) * v231;
            v177.f64[1] = ZNear + v231;
            *&v177.f64[0] = vcvt_f32_f64(vdivq_f64(v177, vdupq_lane_s64(COERCE__INT64(ZNear - v231), 0)));
            v178 = xmmword_21C280360;
            DWORD2(v178) = HIDWORD(v177.f64[0]);
            *&v179 = 0;
            v232 = v177;
            *(&v179 + 1) = LODWORD(v177.f64[0]);
            v48 = a1 + 1568 * (v88 + 1) + 115200;
            *(a1 + 1568 * (v88 + 1) + 115328) = v174;
            *(a1 + 1568 * (v88 + 1) + 115344) = v175;
            *(a1 + 1568 * (v88 + 1) + 115360) = v178;
            *(a1 + 1568 * (v88 + 1) + 115376) = v179;
            v180 = flt_21C2A21E8[(a8 & 8) == 0];
            v49 = v233;
          }

          ShadowBias = C3DLightGetShadowBias(v176, v169);
          *v204.i32 = -*&v232.i32[1];
          v205 = vzip1q_s32(v204, v232);
          *&v205.i32[2] = v180 * ShadowBias;
          *(v48 + 192) = v205;
        }

        else
        {
          v49 = v233;
          if ((a8 & 8) != 0)
          {
            _Q1.i64[0] = 0;
          }

          else
          {
            RealShadowMapSize = vadd_f32(RealShadowMapSize, 0xC0000000C0000000);
            __asm { FMOV            V1.2S, #1.0 }
          }

          *&_Q1.u32[2] = RealShadowMapSize;
          v48 = a1 + 1568 * (v88 + 1) + 115200;
          v259 = _Q1;
          Matrix = C3DProjectionInfosGetMatrix(&v245, &v259, a8);
          v195 = *(Matrix + 3);
          v197 = *Matrix;
          v196 = *(Matrix + 1);
          *(a1 + 1568 * (v88 + 1) + 115360) = *(Matrix + 2);
          *(a1 + 1568 * (v88 + 1) + 115376) = v195;
          *(a1 + 1568 * (v88 + 1) + 115328) = v197;
          *(a1 + 1568 * (v88 + 1) + 115344) = v196;
        }

        WorldMatrix = C3DNodeGetWorldMatrix(a2, v194);
        v207 = WorldMatrix[3];
        v209 = *WorldMatrix;
        v208 = WorldMatrix[1];
        *(v48 + 32) = WorldMatrix[2];
        *(v48 + 48) = v207;
        *v48 = v209;
        *(v48 + 16) = v208;
        *(v48 + 64) = __invert_f4(*v48);
        goto LABEL_18;
      }

      if (Type == 1)
      {
        v95 = C3DGetScene(a2, v94);
        CullingSystem = C3DSceneGetCullingSystem(v95, v96);
        v244 = 0;
        v242 = 0u;
        v243 = 0u;
        C3DCullingSystemQueryMake(0, &v242);
        *&v243 = 0x100000020;
        v98 = v224;
        *&v242 = C3DLightGetCategoryBitMask(v224, v99);
        C3DCullingSystemGetSceneBoundingBox(CullingSystem, &v242);
        v228 = v101;
        v230 = v100;
        v103 = C3DNodeGetWorldMatrix(a2, v102);
        v270.columns[1] = *(v103 + 16);
        v104 = *(v103 + 32);
        v259 = *v103;
        v260 = v270.columns[1];
        v270.columns[3] = *(MEMORY[0x277D860B8] + 48);
        v261 = v104;
        v262 = v270.columns[3];
        v270.columns[0] = v259;
        v270.columns[2] = v261;
        v271 = __invert_f4(v270);
        v226 = v271.columns[0];
        v221 = v271.columns[2];
        v223 = v271.columns[1];
        v219 = v271.columns[3];
        v105 = *(a1 + 116672);
        v106 = fminf(*(a1 + 116676), C3DMeshElementGetPointSize(v224));
        AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(v224, v107);
        v217 = AutomaticallyAdjustsShadowProjection;
        if (AutomaticallyAdjustsShadowProjection)
        {
          v110 = vmulq_f32(v228, v228);
          v111 = vsubq_f32(v230, *(a1 + 116656));
          v112 = vmulq_f32(v111, v111);
          *v110.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v112, v112, 8uLL)), vadd_f32(vzip1_s32(*v110.i8, *v112.i8), vzip2_s32(*v110.i8, *v112.i8))));
          v105 = fmaxf(v105, *&v110.i32[1] - *v110.i32);
          v106 = fminf(v106, vaddv_f32(*v110.i8));
        }

        v48 = a1 + 1568 * (v88 + 1) + 115200;
        v113.i32[0] = C3DLightGetShadowCascadeSplittingFactor(v224, v109);
        LOBYTE(v114) = v233;
        *&v115 = v105;
        *&v116 = v106;
        __computeSplitPositions(a1 + 1568 * (v88 + 1) + 116736, v233, v115, v116, v113, v117);
        if (!v233)
        {
LABEL_57:
          v49 = v233;
          if (v233 > v114)
          {
            *&v158 = _computeOrthographicProjectionFromShadowBoundingBox(a8, vdupq_n_s32(0x47C34F80u), vdupq_n_s32(0x47C35000u));
            v159 = (v48 + 384 * v114);
            v159[8] = v158;
            v159[9] = v160;
            v159[10] = v161;
            v159[11] = v162;
          }

          goto LABEL_18;
        }

        v118 = *(a1 + 116640);
        v119 = vmulq_f32(v118, v118);
        *&v120 = v119.f32[2] + vaddv_f32(*v119.f32);
        *v119.f32 = vrsqrte_f32(v120);
        *v119.f32 = vmul_f32(*v119.f32, vrsqrts_f32(v120, vmul_f32(*v119.f32, *v119.f32)));
        v213 = vmulq_n_f32(v118, vmul_f32(*v119.f32, vrsqrts_f32(v120, vmul_f32(*v119.f32, *v119.f32))).f32[0]);
        v215 = *(a1 + 116656);
        v212 = vnegq_f32(v213);
        v121 = v88;
        v122 = (a1 + 116512);
        v124 = v228;
        v123 = v230;
        v126 = v221;
        v125 = v223;
        v127 = v226;
        v128 = v219;
        v129 = vaddq_f32(v219, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v223, *v230.f32, 1), v226, v230.f32[0]), v221, v230, 2));
        v129.i32[3] = 1.0;
        v130 = v228;
        v130.i32[1] = v228.i32[0];
        v130.i32[2] = v228.i32[0];
        v131 = vaddq_f32(vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v124, v124), v228), v221)), vaddq_f32(vabsq_f32(vmulq_f32(v130, v226)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v228.f32, 1), v228), v223))));
        v131.i32[2] = fminf(v131.f32[2], 10000.0);
        v210 = vaddq_f32(v129, v131);
        v211 = vsubq_f32(v129, v131);
        v132 = v233;
        v114 = 0;
        v133 = (a1 + 1568 * (v121 + 1) + 116740);
        while (1)
        {
          v134 = v48 + 384 * v114;
          v135 = v260;
          *v134 = v259;
          *(v134 + 16) = v135;
          v136 = v262;
          *(v134 + 32) = v261;
          *(v134 + 48) = v136;
          *(v134 + 64) = v127;
          *(v134 + 80) = v125;
          *(v134 + 96) = v126;
          *(v134 + 112) = v128;
          v138 = v122[1];
          v263 = *v122;
          v137 = v263;
          v264 = v138;
          v139 = v122[3];
          v265 = v122[2];
          v266 = v139;
          v140 = vmulq_f32(vmlaq_n_f32(v215, v212, *(v133 - 1)), v212);
          v136.f32[0] = -(v140.f32[2] + vaddv_f32(*v140.f32));
          v141 = v212;
          v141.i32[3] = v136.i32[0];
          v142 = vmulq_f32(v213, vmlaq_n_f32(v215, v212, *v133));
          v143 = -(v142.f32[2] + vaddv_f32(*v142.f32));
          v144 = v213;
          v144.f32[3] = v143;
          *(v134 + 288) = v265;
          *(v134 + 304) = v139;
          *(v134 + 256) = v137;
          *(v134 + 272) = v138;
          *(v134 + 320) = v144;
          *(v134 + 336) = v141;
          if (v217)
          {
            v145 = v114;
            v114 = *(v134 + 240);
            v245 = v263;
            v246 = v264;
            v247 = v265;
            v248 = v266;
            v249 = v144;
            v250 = v141;
            C3DConvexPolyhedronSetFrustum(v114, &v245);
            if (!C3DConvexPolyhedronClipAABB(v114, v230, v228) || (*v146.i64 = C3DConvexPolyhedronComputeBoxInSpace(v114, v226, v223, v221, v219), v148 = vsubq_f32(v146, v147), v149 = vaddq_f32(v146, v147), v148.i32[2] = v211.i32[2], v149.i32[2] = v210.i32[2], v150.i64[0] = 0x3F0000003F000000, v150.i64[1] = 0x3F0000003F000000, C3DConvexPolyhedronSetAABB(v114, vmulq_f32(vaddq_f32(v148, v149), v150), vmulq_f32(vsubq_f32(v149, v148), v150)), C3DConvexPolyhedronTransform(v114, &v259), !C3DConvexPolyhedronClipAABB(v114, v230, v228)))
            {
              v127 = v226;
              v126 = v221;
              v125 = v223;
              v128 = v219;
              v114 = v145;
              v98 = v224;
              goto LABEL_56;
            }

            *v151.i64 = C3DConvexPolyhedronComputeBoxInSpace(v114, v226, v223, v221, v219);
            v153 = vmulq_f32(vaddq_f32(v152, vdupq_n_s32(0x3C23D70Au)), vdupq_n_s32(0x3F800054u));
            v153.i32[3] = v152.i32[3];
            *(v134 + 352) = v151;
            *(v134 + 368) = v153;
            *&v154 = _computeOrthographicProjectionFromShadowBoundingBox(a8, vsubq_f32(v151, v153), vaddq_f32(v151, v153));
            *(v134 + 128) = v154;
            *(v134 + 144) = v155;
            *(v134 + 160) = v156;
            *(v134 + 176) = v157;
            LODWORD(v114) = v145;
            v98 = v224;
          }

          else
          {
            __computeStableCascade(v48 + 384 * v114, v123, v124, v98, a8);
          }

          v114 = (v114 + 1);
          v127 = v226;
          v126 = v221;
          v125 = v223;
          v128 = v219;
LABEL_56:
          ++v133;
          --v132;
          v124 = v228;
          v123 = v230;
          if (!v132)
          {
            goto LABEL_57;
          }
        }
      }

      v181 = scn_default_log(ShouldAdjustsShadowProjection, v94);
      if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemComputeShadowMatrices_cold_4(v181, v182, v183, v184, v185, v186, v187, v188);
      }
    }

    else
    {
      v37 = scn_default_log(CastsShadow, v27);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemComputeShadowMatrices_cold_2(v37, v38, v39, v40, v41, v42, v43, v44);
      }
    }
  }

  else
  {
    v36 = scn_default_log(0, v22);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      C3DLightingSystemComputeShadowMatrices_cold_6();
    }
  }
}

uint64_t C3DLightingSystemApplyActiveNonAmbientLights(uint64_t result, uint64_t a2)
{
  if (*(result + 608))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 624;
    v6 = result + 6176;
    do
    {
      v7 = v4 + 1;
      result = (*(a2 + 16))(a2, *(v5 + 8 * v4), v6);
      v6 += 432;
      v4 = v7;
    }

    while (v7 < *(v3 + 608));
  }

  return result;
}

uint64_t C3DLightingSystemEnumerateRadianceProbes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 176), *(result + 240), *(result + 480));
  }

  return result;
}

void C3DLightingSystemEnumerateLightsWithTechnique(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 116496);
  if (v2)
  {
    context = a2;
    CFSetApplyFunction(v2, __lightsWithTechniqueEnumerator, &context);
  }
}

const void *C3DLightingSystemGetActiveShadowCasterIndex(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 32), a2);
  if (result)
  {
    return *(*(a1 + 8 * (result >> 28) + 392) + (result & 0xFFFFFFF) - 1);
  }

  return result;
}

uint64_t C3DLightingSystemGetActiveShadowCasterData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (a2 >= 9)
    {
      v4 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemGetActiveShadowCasterData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    v12 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetActiveShadowCasterData_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return a1 + 1568 * v2 + 115200;
}

__CFString *SCNObjCLightingModelFromCLightingModel(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2782FEDB0[a1];
  }
}

BOOL _isValidCustomPropertyType(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && strcmp([a1 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}") == 0;
}

C3D::DrawBackgroundPass *C3D::DrawBackgroundPass::DrawBackgroundPass(C3D::DrawBackgroundPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v4 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v4 = &unk_282DC5C48;
  bzero(v4 + 240, 0x13A8uLL);
  return this;
}

uint64_t C3D::DrawBackgroundPass::setup(C3D::DrawBackgroundPass *this, uint64_t a2)
{
  v3 = this + 4096;
  Scene = C3DEngineContextGetScene(*(this + 2), a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v5);
  *(this + 658) = C3DSceneGetBackgroundEffectSlot(Scene, 0);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "BACKGROUND";
  C3D::Pass::parentColorDesc(&v19, this);
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v7 + 16) = v19;
  *(v7 + 32) = v20;
  v9 = *(this + 658);
  if (!v9 || C3DEffectSlotGetColorIfApplicable(v9, v8))
  {
    v11 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v11 + 66) = *(v11 + 66) & 0xFFFC | 2;
  }

  *(this + 30) = EnginePipeline;
  v3[838] = 0;
  *(this + 622) = *(this + 2);
  v3[836] = 1;
  *(this + 621) = Scene;
  v12 = *(this + 19);
  v3[772] = v12;
  v3[775] = 0;
  if (v12)
  {
    bzero(this + 5152, 16 * v12);
  }

  v3[776] = 0;
  *(this + 612) = 0;
  *(this + 613) = this;
  *(this + 657) = 0;
  v3[837] = 0;
  v3[1152] = 0;
  v3[774] = *(this + 11);
  v3[840] = 0;
  *(this + 614) = C3DSceneGetRootNode(Scene, v10);
  v3[832] = 1;
  v13 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  if (*(this + 121) == 1)
  {
    v15 = *(this + 8);
  }

  else
  {
    LOWORD(v14) = *(v13 + 16);
    *&v16 = v14;
    LOWORD(v14) = *(v13 + 18);
    *&v17 = v14;
    *&v15 = 0;
    *(&v15 + 1) = __PAIR64__(v17, v16);
  }

  *(this + 305) = v15;
  v3[833] = 0;
  C3DCullingContextSetupMatricesToIdentity(this + 240);
  result = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  *(this + 620) = result;
  *(v3 + 417) = 0;
  return result;
}

void C3D::DrawBackgroundPass::execute(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  bzero(&v4, 0x1410uLL);
  v5 = *(v2 + 4868);
  v6 = *(v2 + 117);
  memcpy(v7, (v2 + 240), sizeof(v7));
  v3 = *(v2 + 5264);
  if (v3)
  {
    C3DEngineContextRenderBackgroundMap(*(v2 + 16), v3, &v4);
  }
}

void *_transposeSkinnerToClone(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([a1 skinner])
  {
    v6 = [objc_msgSend(a1 "skinner")];
    if (v6 && (Clone = _findClone(v6, a2, a3)) != 0)
    {
      [objc_msgSend(a1 "skinner")];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [objc_msgSend(a1 "skinner")];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          if (![v14 name])
          {
            break;
          }

          v15 = [a3 childNodeWithName:{objc_msgSend(v14, "name")}];
          if (!v15)
          {
            break;
          }

          [v8 addObject:v15];
          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v11)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        [objc_msgSend(a1 "skinner")];
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [a1 childNodes];
  result = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (result)
  {
    v18 = result;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        _transposeSkinnerToClone(*(*(&v21 + 1) + 8 * v20), a2, a3);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      result = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v18 = result;
    }

    while (result);
  }

  return result;
}

void _copyAnimations(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  [a2 _copyAnimationsFrom:a1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 actionKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a2 runAction:objc_msgSend(a1 forKey:{"actionForKey:", *(*(&v14 + 1) + 8 * v8)), *(*(&v14 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = [objc_msgSend(a1 "childNodes")];
  v10 = [objc_msgSend(a2 "childNodes")];
  if (v10 == v9)
  {
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        _copyAnimations([objc_msgSend(a1 "childNodes")], objc_msgSend(objc_msgSend(a2, "childNodes"), "objectAtIndex:", i));
      }
    }
  }

  else
  {
    v13 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _copyAnimations_cold_1();
    }
  }
}

void sub_21C06931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _rendererCallback(float32x4_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(v27, 0, sizeof(v27));
  v7 = [a3 rendererDelegate];
  UserInfo = C3DEngineContextGetUserInfo(a1, v8);
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  Matrix4x4 = C3DEngineContextGetMatrix4x4(a1, 0);
  C3DMatrix4x4ToSCNMatrix4(Matrix4x4, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kProjectionTransform"}];
  v12 = C3DEngineContextGetMatrix4x4(a1, 2);
  C3DMatrix4x4ToSCNMatrix4(v12, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kModelTransform"}];
  v13 = C3DEngineContextGetMatrix4x4(a1, 1);
  C3DMatrix4x4ToSCNMatrix4(v13, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kViewTransform"}];
  C3DEngineContextComputeNormalMatrix(a1, v27);
  C3DMatrix4x4ToSCNMatrix4(v27, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kNormalTransform"}];
  v14 = C3DEngineContextGetMatrix4x4(a1, 2);
  v15 = C3DEngineContextGetMatrix4x4(a1, 1);
  C3DMatrix4x4Mult(v14, v15, v27);
  C3DMatrix4x4ToSCNMatrix4(v27, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kModelViewTransform"}];
  v16 = C3DEngineContextGetMatrix4x4(a1, 0);
  C3DMatrix4x4Mult(v27, v16, v27);
  C3DMatrix4x4ToSCNMatrix4(v27, &v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  [v10 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v19), @"kModelViewProjectionTransform"}];
  if (a4)
  {
    [v10 setValue:C3DFXPassGetName(a4 forKey:{v17), @"kRenderPassName"}];
  }

  return [v7 renderNode:a3 renderer:UserInfo arguments:v10];
}

void sub_21C06E4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *SCNNodeRemoveDeadParticleInstance(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = [SCNNode nodeWithNodeRef:result];

    return [(SCNNode *)v3 _removeDeadParticleSystem:a2];
  }

  return result;
}

void sub_21C073FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_findClone(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v6 = [objc_msgSend(a3 "childNodes")];
  v7 = [objc_msgSend(a2 "childNodes")];
  if (v7 >= v6)
  {
    if (v6)
    {
      v11 = v7;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [objc_msgSend(a2 "childNodes")];
        if ([v14 isGizmo])
        {
          do
          {
            if (++v13 >= v11)
            {
              break;
            }

            v14 = [objc_msgSend(a2 "childNodes")];
          }

          while (([v14 isGizmo] & 1) != 0);
        }

        if ([v14 isGizmo])
        {
          break;
        }

        result = _findClone(a1, v14, [objc_msgSend(a3 "childNodes")]);
        if (!result && ++v12 < v6 && ++v13 < v11)
        {
          continue;
        }

        return result;
      }
    }
  }

  else
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _findClone_cold_1();
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_21C07738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21C079E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DSceneGetPhysicsWorld(id *a1, uint64_t a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);

  return [ObjCWrapper _physicsWorldCreateIfNeeded:a2];
}

__n128 C3DPhysicsWorldGetWorldGravity(void *a1, _OWORD *a2)
{
  [a1 gravity];
  DWORD1(v5) = v3;
  DWORD2(v5) = v4;
  *a2 = v5;
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

void *C3DSceneRegisterNodePhysicsField(id *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v4 = C3DEntityGetObjCWrapper(a2);
  result = [v4 physicsField];
  if (result)
  {
    v6 = [ObjCWrapper physicsWorld];
    v7 = [v4 physicsField];

    return [v6 _addFieldToWorld:v7];
  }

  return result;
}

void *C3DSceneUnregisterNodePhysicsField(id *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v4 = C3DEntityGetObjCWrapper(a2);
  result = [v4 physicsField];
  if (result)
  {
    v6 = [ObjCWrapper physicsWorld];
    v7 = [v4 physicsField];

    return [v6 _removeFieldFromWorld:v7];
  }

  return result;
}

uint64_t __inferRenderingAPIFromGLContext(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  if ([a1 API] == 3)
  {
    return 2;
  }

  return 1;
}

void deleteGLFramebufferInfo(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    C3DRendererContextDeleteFramebuffer(a2, *a1, 1);
    CFRelease(*a1);
    *a1 = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    C3DRendererContextDeleteFramebuffer(a2, v4, 1);
    CFRelease(a1[1]);
    a1[1] = 0;
  }
}

BOOL createGLFramebufferInfo(uint64_t GLFramebufferInfo_cold_1, unint64_t a2, _BOOL8 a3, uint64_t a4, int32x2_t a5)
{
  v8 = GLFramebufferInfo_cold_1;
  if (*GLFramebufferInfo_cold_1)
  {
    v9 = scn_default_log(GLFramebufferInfo_cold_1, a2);
    GLFramebufferInfo_cold_1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (GLFramebufferInfo_cold_1)
    {
      createGLFramebufferInfo_cold_1(v9, a2, v10, v11, v12, v13, v14, v15);
    }
  }

  if (v8[1])
  {
    v16 = scn_default_log(GLFramebufferInfo_cold_1, a2);
    GLFramebufferInfo_cold_1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (GLFramebufferInfo_cold_1)
    {
      createGLFramebufferInfo_cold_2(v16, a2, v17, v18, v19, v20, v21, v22);
    }
  }

  a5.i32[0] = 0;
  v23.i32[1] = HIDWORD(*&v8[2]);
  v23.i32[0] = 1;
  v24 = vbsl_s8(vdup_lane_s32(vceq_s32(v8[2], a5), 0), v23, v8[2]);
  v25 = vbsl_s8(vdup_lane_s32(vceq_s32(vdup_lane_s32(v24, 1), a5), 0), (v24.u32[0] | 0x100000000), v24);
  v41 = v25;
  if (v25.i32[0])
  {
    v26 = v25.i32[1] == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = scn_default_log(GLFramebufferInfo_cold_1, a2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      createGLFramebufferInfo_cold_3(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  v35 = C3DFramebufferCreate();
  *v8 = v35;
  v36 = COERCE_DOUBLE(vcvt_f32_u32(v41));
  C3DFramebufferSetSize(v35, v37, v36);
  *(*v8 + 136) = a4;
  C3DRenderTargetDescriptionMake(1u, a4 == 0);
  C3DFramebufferAddRenderTargetDescription(*v8, 0);
  if (a2 <= 1)
  {
    C3DRenderTargetDescriptionMake(0x29u, 0);
    C3DFramebufferAddRenderTargetDescription(*v8, 4);
  }

  result = C3DRendererContextSetupFramebuffer(a3, *v8);
  if (a2 >= 2 && result)
  {
    v39 = C3DFramebufferCreate();
    v8[1] = v39;
    C3DFramebufferSetSampleCount(v39, a2);
    C3DFramebufferSetSize(*&v8[1], v40, v36);
    C3DRenderTargetDescriptionMake(1u, 0);
    C3DRenderTargetDescriptionMake(0x29u, 0);
    C3DFramebufferAddRenderTargetDescription(*&v8[1], 0);
    C3DFramebufferAddRenderTargetDescription(*&v8[1], 4);
    return C3DRendererContextSetupFramebuffer(a3, *&v8[1]);
  }

  return result;
}

uint64_t _wantsMainPassCustomPostProcessEncodingEngineContextCallback(uint64_t a1, uint64_t a2)
{
  UserInfo = C3DEngineContextGetUserInfo(a1, a2);
  if (!UserInfo)
  {
    return 0;
  }

  if ((*(UserInfo + 292) & 0x200) == 0)
  {
    if ((*(UserInfo + 296) & 0x200) == 0)
    {
      return 0;
    }

    UserInfo = *(UserInfo + 344);
  }

  return [UserInfo _wantsCustomMainPassPostProcessForRenderer:UserInfo];
}

_WORD *_mainPassCustomPostProcessUsesExtraRenderTargetEngineContextCallback(uint64_t a1, _DWORD *a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {
    v4 = result;
    if ((result[146] & 0x200) != 0)
    {
      v5 = 0;
    }

    else
    {
      if ((result[148] & 0x200) == 0)
      {
        return 0;
      }

      v5 = 0;
      result = *(result + 43);
    }

    result = [result _customMainPassPostProcessUsesExtraRenderTargetForRenderer:v4 pixelFormat:&v5];
    *a2 = v5;
  }

  return result;
}

uint64_t _useSpecificMainPassClearColorEngineContextCallback(uint64_t a1, uint64_t a2)
{
  UserInfo = C3DEngineContextGetUserInfo(a1, a2);
  if (!UserInfo)
  {
    return 0;
  }

  v4 = UserInfo;
  if ((*(UserInfo + 292) & 0x200) == 0)
  {
    if ((*(UserInfo + 296) & 0x200) == 0)
    {
      return 0;
    }

    UserInfo = *(UserInfo + 344);
  }

  return [UserInfo _usesSpecificMainPassClearColorForRenderer:v4 clearColor:a2];
}

void *_willRenderSceneEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {
    v5 = result;
    Scene = C3DEngineContextGetScene(a1, v4);
    ObjCWrapper = C3DEntityGetObjCWrapper(Scene);

    return [v5 _willRenderScene:ObjCWrapper];
  }

  return result;
}

void *_didRenderSceneEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {
    v5 = result;
    Scene = C3DEngineContextGetScene(a1, v4);
    ObjCWrapper = C3DEntityGetObjCWrapper(Scene);

    return [v5 _didRenderScene:ObjCWrapper];
  }

  return result;
}

void *_readSubdivCacheEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {

    return [result _readSubdivCacheForHash:a2];
  }

  return result;
}

void *_writeSubdivCacheEngineContextCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {

    return [result _writeSubdivCacheForHash:a2 dataProvider:a3];
  }

  return result;
}

double *_encodeMainPassCustomPostProcessEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = result[19];
    if (v5 == 0.0)
    {
      v5 = result[17];
    }

    if ((*(result + 146) & 0x200) != 0)
    {
      result = [result _encodeCustomMainPassPostProcessForRenderer:result atTime:a2 helper:v5];
    }

    if ((v4[37] & 0x200) != 0)
    {
      v6 = *(v4 + 43);

      return [v6 _encodeCustomMainPassPostProcessForRenderer:v6 atTime:a2 helper:v5];
    }
  }

  return result;
}

void *_renderOverlayEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1, a2);
  if (result)
  {
    v4 = result;
    SceneTime = C3DEngineContextGetSceneTime(a1);

    return [v4 _drawOverlaySceneAtTime:SceneTime];
  }

  return result;
}

void sub_21C0814C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SCNKitSplitKVCPath(void *a1, void *a2, uint64_t *a3)
{
  v6 = [a1 rangeOfString:@"."];
  v8 = v7;
  if (v7 == 1)
  {
    v9 = v6;
    *a2 = [a1 substringWithRange:{0, v6}];
    v10 = [a1 substringWithRange:{v9 + 1, objc_msgSend(a1, "length") + ~v9}];
  }

  else
  {
    v10 = 0;
    *a2 = a1;
  }

  *a3 = v10;
  return v8 == 1;
}

const void *SCNGetCachedImageProxyOrCreateIfNeededForSource(void *a1, uint64_t a2)
{
  SharedInstance = C3DResourceCacheGetSharedInstance(a1, a2);
  IfNeededForSource = C3DResourceCacheCopyResourceOrCreateIfNeededForSource(SharedInstance, a1, 1, a2);
  v6 = IfNeededForSource;
  if (IfNeededForSource)
  {
    CFAutorelease(IfNeededForSource);
  }

  return v6;
}

uint64_t C3DColor4FromRGBCFColor(const void *a1, uint64_t a2)
{
  v3 = scn_NSColorFromCGColorIfApplicable(a1);

  return [v3 scn_C3DColorIgnoringColorSpace:a2 success:0];
}

uint64_t SCNLightTypeToC3DLightType(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"ambient"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a1);
  if (isEqualToString)
  {
    return 6;
  }

  v6 = scn_default_log(isEqualToString, v5);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    SCNLightTypeToC3DLightType_cold_1();
    return 0;
  }

  return result;
}

SCNLightType SCNLightTypeFromC3DLightType(int a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &SCNLightTypeDirectional;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v3 = &SCNLightTypeOmni;
      }
    }

    else
    {
      v3 = &SCNLightTypeAmbient;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v3 = &SCNLightTypeIES;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v3 = &SCNLightTypeArea;
    }
  }

  else if (a1 == 3)
  {
    v3 = &SCNLightTypeSpot;
  }

  else
  {
    v3 = &SCNLightTypeProbe;
  }

  return *v3;
}

uint64_t SCNEncodeColor(void *a1, CFTypeRef cf, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [scn_NSColorFromCGColorIfApplicable(cf) CGColor];
  if (v5)
  {
    *&v7 = C3DCGColorGetLinearExtendedSRGBComponents(v5, v6);
  }

  else
  {
    v7 = xmmword_21C27F610;
  }

  v9 = v7;
  return [a1 encodeBytes:&v9 length:16 forKey:a3];
}

uint64_t SCNDecodeColor(void *a1, uint64_t a2)
{
  v9 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v9];
  v4 = 0uLL;
  if (v9 == 16)
  {
    v4 = *v2;
  }

  ExtendedLinearSRGBWithComponents = C3DCGColorCreateExtendedLinearSRGBWithComponents(v2, v3, v4);
  if (!ExtendedLinearSRGBWithComponents)
  {
    return 0;
  }

  v6 = ExtendedLinearSRGBWithComponents;
  v7 = [MEMORY[0x277D75348] colorWithCGColor:ExtendedLinearSRGBWithComponents];
  CFRelease(v6);
  return v7;
}

uint64_t SCNEncodeVector3(void *a1, uint64_t a2, float a3, float a4, float a5)
{
  v7 = *MEMORY[0x277D85DE8];
  *v6 = a3;
  *&v6[1] = a4;
  *&v6[2] = a5;
  return [a1 encodeBytes:v6 length:12 forKey:a2];
}

uint64_t SCNEncodeVector4(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  return [a1 encodeBytes:v7 length:16 forKey:a2];
}

float SCNDecodeVector3(void *a1, uint64_t a2)
{
  v4 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v4];
  result = 0.0;
  if (v4 == 12)
  {
    return *v2;
  }

  return result;
}

float SCNDecodeVector4(void *a1, uint64_t a2)
{
  v4 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v4];
  result = 0.0;
  if (v4 == 16)
  {
    return *v2;
  }

  return result;
}

_OWORD *SCNDecodeSCNMatrix4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = 0;
  result = [a1 decodeBytesForKey:a2 returnedLength:&v8];
  if (v8 == 64)
  {
    v5 = result[1];
    *a3 = *result;
    a3[1] = v5;
    v6 = result[2];
    v7 = result[3];
  }

  else
  {
    *a3 = *&SCNMatrix4Identity.m11;
    a3[1] = *&SCNMatrix4Identity.m21;
    v6 = *&SCNMatrix4Identity.m31;
    v7 = *&SCNMatrix4Identity.m41;
  }

  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t _SCNArrayFromCGPathApply(void *a1, unsigned int *a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *a2;
  [v4 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *a2), @"type"}];
  v6 = *(a2 + 1);
  v7 = [MEMORY[0x277CBEB18] array];
  v9 = v7;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", *v6, v6[1])}];
        v10 = MEMORY[0x277CCAE60];
        v11 = v6[2];
        v12 = v6[3];
        break;
      case 3:
        [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", *v6, v6[1])}];
        [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", v6[2], v6[3])}];
        v10 = MEMORY[0x277CCAE60];
        v11 = v6[4];
        v12 = v6[5];
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_12;
    }

LABEL_10:
    [v9 addObject:{objc_msgSend(v10, "SCN_valueWithCGPoint:", v11, v12)}];
    goto LABEL_11;
  }

  if (v5 <= 1)
  {
    v10 = MEMORY[0x277CCAE60];
    v11 = *v6;
    v12 = v6[1];
    goto LABEL_10;
  }

LABEL_12:
  v14 = scn_default_log(v7, v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: CGPath archiving: unknown path element type", v15, 2u);
  }

LABEL_11:
  [v4 setValue:v9 forKey:@"points"];
  return [a1 addObject:v4];
}

CGPath *_SCNCGPathCreateFromArray(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 objectForKey:{@"type", "intValue"}];
        v9 = [v7 objectForKey:@"points"];
        v10 = v9;
        if (v8 <= 1)
        {
          if (v8)
          {
            if (v8 == 1)
            {
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              CGPathAddLineToPoint(Mutable, 0, v11, v12);
            }
          }

          else
          {
            [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
            CGPathMoveToPoint(Mutable, 0, v29, v30);
          }
        }

        else
        {
          switch(v8)
          {
            case 2:
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              v14 = v13;
              v16 = v15;
              [objc_msgSend(v10 objectAtIndex:{1), "SCN_CGPointValue"}];
              CGPathAddQuadCurveToPoint(Mutable, 0, v14, v16, v17, v18);
              break;
            case 3:
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              v20 = v19;
              v22 = v21;
              [objc_msgSend(v10 objectAtIndex:{1), "SCN_CGPointValue"}];
              v24 = v23;
              v26 = v25;
              [objc_msgSend(v10 objectAtIndex:{2), "SCN_CGPointValue"}];
              CGPathAddCurveToPoint(Mutable, 0, v20, v22, v24, v26, v27, v28);
              break;
            case 4:
              CGPathCloseSubpath(Mutable);
              break;
          }
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  return Mutable;
}

void *_SCNEncodeCGPathForKey(void *result, const CGPath *a2, _DWORD *a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = result;
    v8 = [MEMORY[0x277CBEB18] array];
    CGPathApply(a2, v8, _SCNArrayFromCGPathApply);
    if (a3)
    {
      v10[1] = @"flatness";
      v11[0] = v8;
      v10[0] = @"path";
      LODWORD(v9) = *a3;
      v11[1] = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      return [v7 encodeObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v11, v10, 2), a4}];
    }

    else
    {

      return [v7 encodeObject:v8 forKey:a4];
    }
  }

  return result;
}

void *SCNEncodeBezierPathForKey(void *a1, void *a2, uint64_t a3)
{
  [a2 flatness];
  *&v6 = v6;
  v8 = LODWORD(v6);
  return _SCNEncodeCGPathForKey(a1, [a2 CGPath], &v8, a3);
}

CGPath *SCNDecodeCGPathForKey(void *a1, uint64_t a2)
{
  result = _SCNDecodeCGPathForKey(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CGPath *_SCNDecodeCGPathForKey(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [a1 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, objc_opt_class(), 0), a2}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        [objc_msgSend(v10 valueForKey:{@"flatness", "floatValue"}];
        *a3 = v11;
      }

      v10 = [v10 valueForKey:@"path"];
    }

    else
    {
      v10 = 0;
    }
  }

  return _SCNCGPathCreateFromArray(v10);
}

void *SCNDecodeBezierPathForKey(void *a1, uint64_t a2)
{
  v6 = -1.0;
  v2 = _SCNDecodeCGPathForKey(a1, a2, &v6);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277D75208] bezierPathWithCGPath:v2];
  CFRelease(v3);
  if (v6 >= 0.0)
  {
    [v4 setFlatness:v6];
  }

  return v4;
}

void *SCNEncodeEntity(void *a1, void *a2)
{
  v3 = [a2 __CFObject];
  result = C3DEntityGetID(v3, v4);
  if (result)
  {

    return [a1 encodeObject:result forKey:@"entityID"];
  }

  return result;
}

CFTypeRef SCNDecodeEntity(void *a1, void *a2)
{
  result = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"entityID"];
  if (result)
  {
    v4 = result;
    v5 = [a2 __CFObject];

    return C3DEntitySetID(v5, v4);
  }

  return result;
}

void SCNEncodeMTLTextureAsDataForKey(void *a1, void *a2, int a3, uint64_t a4)
{
  v8 = [a2 textureType];
  if (a3 && [a2 mipmapLevelCount] > 1 || SCNMTLTextureTypeIsCube(v8) || SCNMTLTextureTypeIsArray(v8))
  {
    v9 = SCNCreateDataWithMTLTexture();
    if (v9)
    {
      [a1 encodeObject:v9 forKey:a4];
    }
  }

  else
  {
    v10 = C3DCreateImageWithTexture(a2);
    Mutable = CFDataCreateMutable(0, 0);
    v12 = CGImageDestinationCreateWithData(Mutable, [*MEMORY[0x277CE1D90] identifier], 1uLL, 0);
    CGImageDestinationAddImage(v12, v10, 0);
    CGImageDestinationFinalize(v12);
    CFRelease(v12);
    [a1 encodeObject:Mutable forKey:a4];
    CFRelease(Mutable);
    CFRelease(v10);
  }
}

void sub_21C0874B8(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);

  objc_end_catch();
}

void *SCNEncodeUnsafeObjectForKey(void *a1, uint64_t a2, uint64_t a3)
{
  result = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  if (result)
  {
    return [a1 encodeObject:result forKey:a3];
  }

  return result;
}

uint64_t SCNDecodeUnsecureColor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = [a1 decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 2)), a2}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v5, 0}];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t SCNDecodeUnsafeObjectForKey(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = [a3 setByAddingObject:objc_opt_class()];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  }

  v7 = [a1 decodeObjectOfClasses:v6 forKey:a2];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 requiresSecureCoding])
      {
        v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:0];
        if (!v3)
        {
          if (SCNUserInfoClasses_onceToken != -1)
          {
            SCNDecodeUnsafeObjectForKey_cold_1();
          }

          v3 = SCNUserInfoClasses_set;
        }

        v7 = [v8 scn_decodeObjectOfClasses:v3 forKey:*MEMORY[0x277CCA308]];
        [v8 finishDecoding];
      }

      else
      {
        v9 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v7];
        if ([v3 count])
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (!v10)
          {
            return 0;
          }

          v11 = *v15;
LABEL_15:
          v12 = 0;
          while (1)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v3);
            }

            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
              v7 = 0;
              if (v10)
              {
                goto LABEL_15;
              }

              return v7;
            }
          }
        }

        return v9;
      }
    }
  }

  return v7;
}

uint64_t SCNUserInfoClasses(uint64_t a1, uint64_t a2)
{
  if (SCNUserInfoClasses_onceToken != -1)
  {
    SCNDecodeUnsafeObjectForKey_cold_1();
  }

  return SCNUserInfoClasses_set;
}

void SCNEncodeC3DAnimationForKey(void *a1, const void *a2, uint64_t a3)
{
  v6 = C3DCopyPropertyList(a2, 0, 0, 0);
  v7 = CFGetTypeID(a2);
  if (v7 == C3DSimpleAnimationGetTypeID(v7, v8))
  {
    v9 = @"basic";
  }

  else
  {
    v10 = CFGetTypeID(a2);
    if (v10 == C3DKeyframedAnimationGetTypeID(v10, v11))
    {
      v9 = @"keyframe";
    }

    else
    {
      v12 = CFGetTypeID(a2);
      TypeID = C3DAnimationGroupGetTypeID(v12, v13);
      if (v12 == TypeID)
      {
        v9 = @"group";
      }

      else
      {
        v16 = scn_default_log(TypeID, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          SCNEncodeC3DAnimationForKey_cold_1();
        }

        v9 = 0;
      }
    }
  }

  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  [v17 setValue:v6 forKey:@"animation"];
  [v17 setValue:v9 forKey:@"class"];
  [a1 encodeObject:v17 forKey:a3];
}

uint64_t SCNDecodeC3DAnimationForKey(void *a1, uint64_t a2)
{
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v4 = [a1 decodeObjectOfClasses:SCNPlistClasses_set forKey:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [v5 valueForKey:@"class"];
    if (objc_msgSend_isEqualToString_(v9))
    {
      v10 = C3DSimpleAnimationCreate();
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v9);
      if (isEqualToString)
      {
        v10 = C3DKeyframedAnimationCreate(isEqualToString, v13);
      }

      else
      {
        v10 = objc_msgSend_isEqualToString_(v9);
        if (!v10)
        {
          goto LABEL_20;
        }

        v10 = C3DAnimationGroupCreate(v10, v11);
      }
    }

    v6 = v10;
    if (v10)
    {
      v14 = v10;
      v15 = C3DInitWithPropertyList(v6, [v5 valueForKey:@"animation"], 0, 0);
      if (v15)
      {
        return v6;
      }

      v17 = scn_default_log(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeC3DAnimationForKey_cold_2();
      }

      return 0;
    }

LABEL_20:
    v18 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SCNDecodeC3DAnimationForKey_cold_3();
    }

    return 0;
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];

  return SCNDecodeUnsafeObjectForKey(a1, a2, v7);
}

uint64_t SCNPlistClasses(uint64_t a1, uint64_t a2)
{
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  return SCNPlistClasses_set;
}

void *SCNEncodeAnimations(void *a1, void *a2)
{
  v2 = a2;
  v69 = *MEMORY[0x277D85DE8];
  v4 = [a2 animationKeys];
  v46 = a1;
  if (v4)
  {
    v5 = v4;
    if ([v4 count])
    {
      v51 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v60;
        v49 = v5;
        v50 = v2;
        v47 = *v60;
        v48 = v6;
        do
        {
          v10 = 0;
          v53 = v8;
          do
          {
            if (*v60 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v59 + 1) + 8 * v10);
            v12 = [v2 animationPlayerForKey:v11];
            v13 = [v12 animation];
            v14 = [v13 animationRef];
            if (v14 || ([v12 prepareWithTarget:v2 implicitDuration:0.0], (v14 = objc_msgSend(v13, "animationRef")) != 0))
            {
              v16 = v14;
              if ((C3DAnimationGetIsImplicit(v14, v15) & 1) == 0)
              {
                [v6 addObject:v12];
                [v52 addObject:v11];
                KeyPath = C3DAnimationGetKeyPath(v16);
                v18 = C3DCreatePathFromComponents(KeyPath);
                v19 = CFGetTypeID(v16);
                TypeID = C3DAnimationClusterGetTypeID(v19, v20);
                v54 = v19;
                if (v19 == TypeID)
                {
                  v16 = C3DAnimationGroupCreateWithAnimationCluster(v16, v21);
                }

                v23 = C3DCopyPropertyList(v16, 0, 0, 0);
                v24 = CFGetTypeID(v16);
                if (v24 == C3DSimpleAnimationGetTypeID(v24, v25))
                {
                  v26 = 0;
                  v27 = @"basic";
                }

                else
                {
                  v28 = CFGetTypeID(v16);
                  if (v28 == C3DKeyframedAnimationGetTypeID(v28, v29))
                  {
                    v26 = 0;
                    v27 = @"keyframe";
                  }

                  else
                  {
                    v31 = CFGetTypeID(v16);
                    v33 = C3DAnimationGroupGetTypeID(v31, v32);
                    if (v31 == v33)
                    {
                      v26 = 0;
                      v27 = @"group";
                    }

                    else
                    {
                      v35 = scn_default_log(v33, v34);
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v67 = v13;
                        _os_log_error_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_ERROR, "Error: SCNEncodeAnimations unknown animation type: %@", buf, 0xCu);
                      }

                      v27 = 0;
                      v26 = 1;
                    }
                  }
                }

                v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
                [v36 setValue:v23 forKey:@"animation"];
                if (v18)
                {
                  [v36 setValue:v18 forKey:@"keyPath"];
                }

                if ((v26 & 1) == 0)
                {
                  [v36 setValue:v27 forKey:@"class"];
                }

                v6 = v48;
                if ([v13 usesSceneTimeBase])
                {
                  [v36 setValue:MEMORY[0x277CBEC38] forKey:@"usesSceneTimeBase"];
                }

                [v51 setObject:v36 forKey:v11];

                v8 = v53;
                v37 = v54 == TypeID;
                v5 = v49;
                v2 = v50;
                v9 = v47;
                if (v37 && v16)
                {
                  CFRelease(v16);
                }
              }
            }

            else
            {
              v30 = scn_default_log(0, v15);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v67 = v13;
                _os_log_error_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_ERROR, "Error: SCNEncodeAnimations failed to encode animation: %@", buf, 0xCu);
              }
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
        }

        while (v8);
      }

      if ([v52 count])
      {
        if (v6)
        {
          [v46 encodeObject:v6 forKey:@"animation-players"];
        }

        [v46 encodeObject:v51 forKey:@"animations"];
        [v46 encodeObject:v52 forKey:@"animation-keys"];
      }
    }
  }

  result = [v2 _scnBindings];
  if (result)
  {
    v39 = result;
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(result, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = [v39 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v56;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = [v39 valueForKey:*(*(&v55 + 1) + 8 * i)];
          if ([v45 sourceObject])
          {
            v63[0] = @"sourceObject";
            v64[0] = [v45 sourceObject];
            v63[1] = @"keyPathSrc";
            v64[1] = [v45 keyPathSrc];
            v63[2] = @"keyPathDst";
            v64[2] = [v45 keyPathDst];
            [v40 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v64, v63, 3)}];
          }
        }

        v42 = [v39 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v42);
    }

    return [v46 encodeObject:v40 forKey:@"bindings"];
  }

  return result;
}

void *SCNDecodeAnimations(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v34 = a1;
  v36 = [a1 scn_decodeDictionaryWithKeysOfClasses:v3 objectsOfClasses:SCNPlistClasses_set containingNestedContainersForKey:@"animations"];
  if (v36)
  {
    v4 = [a1 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"animation-keys"];
    v5 = [a1 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"animation-players"];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (!v4)
    {
      v4 = [v36 allKeys];
    }

    v6 = [v4 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v43;
      obj = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          if (v5)
          {
            v12 = [v5 objectAtIndex:v8++];
          }

          else
          {
            v12 = 0;
          }

          v13 = [v36 objectForKey:v11];
          v14 = [v13 valueForKey:@"class"];
          if (objc_msgSend_isEqualToString_(v14))
          {
            v15 = C3DSimpleAnimationCreate();
            goto LABEL_18;
          }

          isEqualToString = objc_msgSend_isEqualToString_(v14);
          if (isEqualToString)
          {
            v15 = C3DKeyframedAnimationCreate(isEqualToString, v18);
LABEL_18:
            v19 = v15;
            v20 = 0;
            if (v15)
            {
              goto LABEL_19;
            }

            goto LABEL_29;
          }

          v15 = objc_msgSend_isEqualToString_(v14);
          if (v15)
          {
            v20 = 1;
            v15 = C3DAnimationGroupCreate(v15, v16);
            v19 = v15;
            if (v15)
            {
LABEL_19:
              v21 = C3DInitWithPropertyList(v19, [v13 valueForKey:@"animation"], 0, 0);
              if (v21)
              {
                if (v20)
                {
                  v23 = C3DAnimationClusterCreateWithAnimationGroup(v19);
                  if (v23)
                  {
                    v24 = v23;
                    CFRelease(v19);
                    v19 = v24;
                  }
                }

                C3DAnimationSetIsSceneTimeBased(v19, [objc_msgSend(v13 valueForKey:{@"usesSceneTimeBase", "BOOLValue"}]);
                v25 = [v13 valueForKey:@"keyPath"];
                v26 = [SCNAnimation animationWithC3DAnimation:v19];
                [(SCNAnimation *)v26 setKeyPath:v25];
                if (v12)
                {
                  [v12 _setAnimation:v26];
                  [a2 addAnimationPlayer:v12 forKey:v11];
                }

                else
                {
                  [a2 addAnimation:v26 forKey:v11];
                }
              }

              else
              {
                v27 = scn_default_log(v21, v22);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v48 = v13;
                  _os_log_error_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_ERROR, "Error: failed to deserialize animation %@", buf, 0xCu);
                }
              }

              CFRelease(v19);
              continue;
            }
          }

LABEL_29:
          v28 = scn_default_log(v15, v16);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = v13;
            _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: can't deserialize animation %@", buf, 0xCu);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v7);
    }
  }

  if (SCNUserInfoClasses_onceToken != -1)
  {
    SCNDecodeAnimations_cold_2();
  }

  result = [v34 scn_decodeArrayOfObjectsOfClasses:SCNUserInfoClasses_set containingNestedContainersForKey:@"bindings"];
  if (result)
  {
    v30 = result;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    result = [result countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (result)
    {
      v31 = result;
      v32 = *v39;
      do
      {
        v33 = 0;
        do
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [a2 bindAnimatablePath:objc_msgSend(*(*(&v38 + 1) + 8 * v33) toObject:"objectForKeyedSubscript:" withKeyPath:@"keyPathDst" options:{objc_msgSend(*(*(&v38 + 1) + 8 * v33), "objectForKeyedSubscript:", @"sourceObject", objc_msgSend(*(*(&v38 + 1) + 8 * v33), "objectForKeyedSubscript:", @"keyPathSrc", 0}];
          v33 = v33 + 1;
        }

        while (v31 != v33);
        result = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
        v31 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t SCNFindImageNamedInAppBundle(void *a1)
{
  v2 = [a1 path];
  v3 = [v2 rangeOfString:@".app/Contents/"];
  if (!v4 || (v5 = [v2 substringFromIndex:v3 + v4]) == 0)
  {
    v5 = [a1 path];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = [v5 pathComponents];
  v8 = [v7 count];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v22 = a1;
  v10 = SCNGetResourceBundle();
  v11 = [objc_msgSend(v6 "lastPathComponent")];
  v12 = [v6 pathExtension];
  v13 = v9 - 1;
  if (v9 == 1)
  {
LABEL_12:
    v20 = [MEMORY[0x277D755B8] imageNamed:{objc_msgSend(v22, "lastPathComponent")}];
  }

  else
  {
    v14 = v12;
    v15 = 0;
    while (1)
    {
      v16 = [v7 count] - 1;
      v17 = &stru_282DCC058;
      if (v16 > v15)
      {
        v18 = v15;
        v17 = &stru_282DCC058;
        do
        {
          v17 = -[__CFString stringByAppendingPathComponent:](v17, "stringByAppendingPathComponent:", [v7 objectAtIndex:v18++]);
        }

        while (v16 != v18);
      }

      v19 = [v10 pathForResource:v11 ofType:v14 inDirectory:v17];
      if (v19)
      {
        break;
      }

      if (++v15 == v13)
      {
        goto LABEL_12;
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v19];
  }

  return [v20 CGImage];
}

void *SCNResolveImageContents(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    a1 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = 0;
    v5 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v5;
    }
  }

  if (objc_msgSend_isEqualToString_([v4 scheme]))
  {
    v6 = [v4 absoluteString];
  }

  else
  {
    if (a1)
    {
      goto LABEL_9;
    }

    if (![v4 isFileURL] || objc_msgSend(v4, "query"))
    {
      goto LABEL_21;
    }

    v6 = [v4 path];
  }

  a1 = v6;
  if (!v6)
  {
LABEL_21:
    a1 = 0;
    if (!v4)
    {
      return a1;
    }

    v13 = 0;
    goto LABEL_23;
  }

LABEL_9:
  if ([a1 hasPrefix:@"imageNamed://"])
  {
    v7 = [a1 substringFromIndex:13];
    v8 = [MEMORY[0x277D755B8] imageNamed:v7];
    if (v8)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  v9 = [a1 rangeOfString:@".app/Contents/"];
  if (v10)
  {
    v11 = [a1 substringFromIndex:v9 + v10];
    if (v11)
    {
      v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(v11 withExtension:{"stringByDeletingPathExtension"), objc_msgSend(v11, "pathExtension")}];
      if (v12)
      {
        return v12;
      }
    }
  }

  v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(a1 withExtension:{"stringByDeletingPathExtension"), objc_msgSend(a1, "pathExtension")}];
  if (v12)
  {
    return v12;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
    v14 = 0;
    v13 = 1;
    goto LABEL_29;
  }

  v13 = 1;
LABEL_23:
  if (![v4 isFileURL] || objc_msgSend(v4, "query"))
  {
    return v4;
  }

  v14 = 1;
  v5 = v4;
LABEL_29:
  v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(v5 withExtension:{"lastPathComponent"), objc_msgSend(v5, "pathExtension")}];
  if (v12)
  {
    return v12;
  }

  v15 = [v5 checkResourceIsReachableAndReturnError:0];
  if (v15)
  {
    return v5;
  }

  v17 = v13 ^ 1;
  if (!a2)
  {
    v17 = 1;
  }

  if (v17)
  {
    v5 = v4;
    if (v14)
    {
      return v5;
    }
  }

  else
  {
    v18 = [a2 URLByAppendingPathComponent:a1];
    v19 = [v18 URLByStandardizingPath];
    if (v19 != v18)
    {
      v5 = v19;
      if ([v19 checkResourceIsReachableAndReturnError:0])
      {
        return v5;
      }
    }

    v5 = v18;
    if ([v18 checkResourceIsReachableAndReturnError:0])
    {
      return v5;
    }

    v20 = [a2 URLByAppendingPathComponent:{objc_msgSend(a1, "lastPathComponent")}];
    v21 = [v20 URLByStandardizingPath];
    if (v21 != v20)
    {
      v5 = v21;
      if ([v21 checkResourceIsReachableAndReturnError:0])
      {
        return v5;
      }
    }

    v15 = [v20 checkResourceIsReachableAndReturnError:0];
    v5 = v15 ? v20 : v4;
    if ((v14 | v15))
    {
      return v5;
    }
  }

  if (!C3DWasLinkedBeforeMajorOSYear2016(v15, v16))
  {
    return a1;
  }

  v22 = MEMORY[0x277CBEBC0];

  return [v22 fileURLWithPath:a1];
}

id _SCNDecodeImageContents(id result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (objc_msgSend_isEqualToString_([v1 valueForKey:@"type"]))
      {
        v4 = objc_alloc(MEMORY[0x277CD7B40]);
        v5 = [v1 objectForKeyedSubscript:@"name"];
        v6 = [objc_msgSend(v1 objectForKeyedSubscript:{@"channelEncoding", "integerValue"}];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"dimensions.x", "floatValue"}];
        v29 = v7;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"dimensions.x", "floatValue"}];
        v9 = COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(v8, v29)));
        [objc_msgSend(v1 objectForKeyedSubscript:{@"turbidity", "floatValue"}];
        v11 = v10;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"sunElevation", "floatValue"}];
        v13 = v12;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"upperAtmosphereScattering", "floatValue"}];
        v15 = v14;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"groundAlbedo", "floatValue"}];
        LODWORD(v17) = v16;
        LODWORD(v18) = v11;
        LODWORD(v19) = v13;
        LODWORD(v20) = v15;
        v21 = [v4 initWithName:v5 channelEncoding:v6 textureDimensions:v9 turbidity:v18 sunElevation:v19 upperAtmosphereScattering:v20 groundAlbedo:v17];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"horizonElevation", "floatValue"}];
        [v21 setHorizonElevation:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"gamma", "floatValue"}];
        [v21 setGamma:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"exposure", "floatValue"}];
        [v21 setExposure:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"brightness", "floatValue"}];
        [v21 setBrightness:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"contrast", "floatValue"}];
        [v21 setContrast:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"saturation", "floatValue"}];
        [v21 setSaturation:?];
        v22 = [v1 objectForKeyedSubscript:@"groundColor"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:0];
          if (v23)
          {
            [v21 setGroundColor:{objc_msgSend(v23, "CGColor")}];
          }
        }

        [objc_msgSend(v1 objectForKeyedSubscript:{@"highDynamicRangeCompression.x", "floatValue"}];
        v30 = v24;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"highDynamicRangeCompression.y", "floatValue"}];
        v26 = [v21 setHighDynamicRangeCompression:{COERCE_DOUBLE(__PAIR64__(v25, v30))}];
        if ((C3DWasLinkedBeforeMajorOSYear2018(v26, v27) & 1) == 0)
        {
          [v21 updateTexture];
        }

        return v21;
      }

      else
      {
        result = [v1 valueForKey:@"data"];
        if (!result)
        {
          result = [v1 valueForKey:@"path"];
          if (!result)
          {

            return [v1 valueForKey:@"URL"];
          }
        }
      }
    }

    else
    {
      v28 = scn_default_log(isKindOfClass, v3);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        _SCNDecodeImageContents_cold_1(v28);
      }

      return 0;
    }
  }

  return result;
}

id SCNDecodeImageContents(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [a1 scn_decodeDictionaryWithKeysOfClasses:v4 objectsOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), a2}];

  return _SCNDecodeImageContents(v9);
}

uint64_t SCNEncodeC3DImageForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _SCNEncodedC3DImage(a1, a2);

  return [a1 encodeObject:v5 forKey:a3];
}

void *_SCNEncodedC3DImage(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_msgSend(objc_msgSend(a1 "options")];
  }

  else
  {
    v5 = 0;
  }

  URL = C3DImageGetURL(a2, v4);
  if (URL)
  {
    v7 = URL;
    v8 = ([-[NSData query](URL "query")] != 0) | v5;
    v10 = [MEMORY[0x277CBEB38] dictionary];
    if ((v8 & 1) == 0)
    {
      v11 = @"URL";
LABEL_11:
      [v10 setObject:v7 forKey:v11];
      return v10;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  Data = C3DImageGetData(a2, v9);
  if (Data)
  {
    v7 = Data;
LABEL_10:
    v11 = @"data";
    goto LABEL_11;
  }

  v15 = C3DImageCopyCGImage(a2, v13);
  if (v15)
  {
    v16 = v15;
    v7 = UIImagePNGRepresentation([MEMORY[0x277D755B8] imageWithCGImage:v15]);
    CGImageRelease(v16);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  return v10;
}

void *SCNEncodeNamedObject(void *result, const char *a2)
{
  if (a2)
  {
    return [result encodeObject:a2 forKey:@"name"];
  }

  return result;
}

void *__SCNPlistClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  SCNPlistClasses_set = result;
  return result;
}

void *__SCNUserInfoClassesWithoutCollections_block_invoke()
{
  v30 = objc_alloc(MEMORY[0x277CBEB98]);
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v0 = __SKSceneClass();
  if (!v0)
  {
    v0 = objc_opt_class();
  }

  v14 = v0;
  v1 = __SKTextureClass();
  if (!v1)
  {
    v1 = objc_opt_class();
  }

  v13 = v1;
  v2 = __GLKTextureInfoClass();
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = __AVPlayerClass();
  if (!v3)
  {
    v3 = objc_opt_class();
  }

  v4 = __AVCaptureDeviceClass();
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  result = [v30 initWithObjects:{v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  SCNUserInfoClassesWithoutCollections_set = result;
  return result;
}

id __SCNUserInfoClasses_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  if (SCNUserInfoClassesWithoutCollections_onceToken != -1)
  {
    __SCNUserInfoClasses_block_invoke_cold_1();
  }

  v0 = SCNUserInfoClassesWithoutCollections_set;
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  result = [v0 setByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v2, 2)}];
  SCNUserInfoClasses_set = result;
  return result;
}

void SCNEncodeImageContentsForKey(void *a1, void *a2, uint64_t a3)
{
  v36[18] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_msgSend(objc_msgSend(a1 "options")];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = v7;
    v9 = @"path";
LABEL_7:
    [v7 setObject:a2 forKey:v9];

    [a1 encodeObject:v8 forKey:a3];
    return;
  }

  objc_opt_class();
  if (!(v6 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)) && ![objc_msgSend(a2 "query")])
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = v7;
    v9 = @"URL";
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 groundColor])
    {
      v10 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(a2, "groundColor")}];
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    }

    else
    {
      v11 = 0;
    }

    v36[0] = @"MDLSkyCubeTexture";
    v35[0] = @"type";
    v35[1] = @"name";
    v14 = [a2 name];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &stru_282DCC058;
    }

    v36[1] = v15;
    v35[2] = @"turbidity";
    v16 = MEMORY[0x277CCABB0];
    [a2 turbidity];
    v36[2] = [v16 numberWithFloat:?];
    v35[3] = @"sunElevation";
    v17 = MEMORY[0x277CCABB0];
    [a2 sunElevation];
    v36[3] = [v17 numberWithFloat:?];
    v35[4] = @"upperAtmosphereScattering";
    v18 = MEMORY[0x277CCABB0];
    [a2 upperAtmosphereScattering];
    v36[4] = [v18 numberWithFloat:?];
    v35[5] = @"groundAlbedo";
    v19 = MEMORY[0x277CCABB0];
    [a2 groundAlbedo];
    v36[5] = [v19 numberWithFloat:?];
    v35[6] = @"horizonElevation";
    v20 = MEMORY[0x277CCABB0];
    [a2 horizonElevation];
    v36[6] = [v20 numberWithFloat:?];
    v35[7] = @"gamma";
    v21 = MEMORY[0x277CCABB0];
    [a2 gamma];
    v36[7] = [v21 numberWithFloat:?];
    v35[8] = @"exposure";
    v22 = MEMORY[0x277CCABB0];
    [a2 exposure];
    v36[8] = [v22 numberWithFloat:?];
    v35[9] = @"brightness";
    v23 = MEMORY[0x277CCABB0];
    [a2 brightness];
    v36[9] = [v23 numberWithFloat:?];
    v35[10] = @"contrast";
    v24 = MEMORY[0x277CCABB0];
    [a2 contrast];
    v36[10] = [v24 numberWithFloat:?];
    v35[11] = @"saturation";
    v25 = MEMORY[0x277CCABB0];
    [a2 saturation];
    v36[11] = [v25 numberWithFloat:?];
    v35[12] = @"channelEncoding";
    v36[12] = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "channelEncoding")}];
    v35[13] = @"dimensions.x";
    v26 = MEMORY[0x277CCABB0];
    [a2 dimensions];
    v36[13] = [v26 numberWithInt:v27];
    v35[14] = @"dimensions.y";
    v28 = MEMORY[0x277CCABB0];
    [a2 dimensions];
    v36[14] = [v28 numberWithInt:v29];
    v35[15] = @"highDynamicRangeCompression.x";
    v30 = MEMORY[0x277CCABB0];
    [a2 highDynamicRangeCompression];
    v36[15] = [v30 numberWithFloat:?];
    v35[16] = @"highDynamicRangeCompression.y";
    v31 = MEMORY[0x277CCABB0];
    [a2 highDynamicRangeCompression];
    LODWORD(v32) = HIDWORD(v32);
    v33 = [v31 numberWithFloat:v32];
    v35[17] = @"groundColor";
    if (v11)
    {
      v34 = v11;
    }

    else
    {
      v34 = &stru_282DCC058;
    }

    v36[16] = v33;
    v36[17] = v34;
    [a1 encodeObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v36, v35, 18), a3}];
  }

  else
  {
    v12 = [SCNMaterialProperty copyC3DImageFromImage:a2];
    if (v12)
    {
      v13 = v12;
      [a1 encodeObject:_SCNEncodedC3DImage(a1 forKey:{v12), a3}];

      CFRelease(v13);
    }
  }
}

uint64_t SCNEncodeImageArrayForKey(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = [SCNMaterialProperty copyC3DImageFromImage:*(*(&v14 + 1) + 8 * v10)];
        if (v11)
        {
          v12 = v11;
          [v6 addObject:{_SCNEncodedC3DImage(a1, v11)}];
          CFRelease(v12);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return [a1 encodeObject:v6 forKey:a3];
}

void *SCNDecodeImageArray(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v4 = [a1 decodeObjectOfClasses:SCNPlistClasses_set forKey:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = _SCNDecodeImageContents(*(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

void SCNEncodeImageFromMaterialPropertyTextureProviderForKey(void *a1, void *a2, uint64_t a3)
{
  v6 = MTLCreateSystemDefaultDevice();
  v7 = [a2 newTextureForDevice:v6];
  v8 = [v6 newCommandQueue];
  v9 = [v8 commandBuffer];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke;
  v15[3] = &unk_2782FF2A8;
  v15[5] = &v16;
  v15[6] = &v22;
  v15[4] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_2;
  v14[3] = &unk_2782FF2D0;
  v14[5] = &v22;
  v14[6] = &v16;
  v14[4] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_3;
  v13[3] = &unk_2782FD108;
  v13[4] = v9;
  v10 = [[_SCNCoderMaterialPropertyTextureProviderHelper alloc] initWithDevice:v6];
  if (objc_opt_respondsToSelector())
  {
    [a2 renderToTexture:v7 computeCommandHandler:v15 blitCommandHandler:v14 completionHandler:v13 helper:v10];
  }

  else
  {
    [a2 renderToTexture:v7 computeCommandHandler:v15 blitCommandHandler:v14 helper:v10];
  }

  v11 = v17[5];
  if (v11)
  {
    [v11 endEncoding];
    v17[5] = 0;
  }

  v12 = v23[5];
  if (v12)
  {
    [v12 endEncoding];
    v23[5] = 0;
  }

  [v9 commit];
  [v9 waitUntilCompleted];

  SCNEncodeMTLTextureAsDataForKey(a1, v7, 0, a3);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

void sub_21C08A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(*(result + 40) + 8) + 40);
    if (v4)
    {
      [v4 endEncoding];
      *(*(*(v3 + 40) + 8) + 40) = 0;
    }

    v5 = *(*(*(v3 + 48) + 8) + 40);
    if (!v5)
    {
      *(*(*(v3 + 48) + 8) + 40) = [*(v3 + 32) computeCommandEncoder];
      v5 = *(*(*(v3 + 48) + 8) + 40);
    }

    v6 = *(a2 + 16);

    return v6(a2, v5);
  }

  return result;
}

uint64_t __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(*(result + 40) + 8) + 40);
    if (v4)
    {
      [v4 endEncoding];
      *(*(*(v3 + 40) + 8) + 40) = 0;
    }

    v5 = *(*(*(v3 + 48) + 8) + 40);
    if (!v5)
    {
      *(*(*(v3 + 48) + 8) + 40) = [*(v3 + 32) blitCommandEncoder];
      v5 = *(*(*(v3 + 48) + 8) + 40);
    }

    v6 = *(a2 + 16);

    return v6(a2, v5);
  }

  return result;
}

id *__SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_3(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addCompletedHandler:a2];
  }

  return result;
}

uint64_t _CAToC3DFillMode(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (objc_msgSend_isEqualToString_(result, a2, *MEMORY[0x277CDA240]))
    {
      return 0;
    }

    else if (objc_msgSend_isEqualToString_(v2))
    {
      return 1;
    }

    else if (objc_msgSend_isEqualToString_(v2))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t _C3DToCAFillMode(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x277CDA228];
      return *v2;
    }

    if (a1 == 3)
    {
      v2 = MEMORY[0x277CDA230];
      return *v2;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = MEMORY[0x277CDA240];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x277CDA238];
      return *v2;
    }
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    _C3DToCAFillMode_cold_1();
  }

  return 0;
}

id _CAToC3DAnimationEvents(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [a1 count];
  if (result)
  {
    v3 = [a1 sortedArrayUsingComparator:&__block_literal_global_75];
    v4 = C3DAnimationEventsCreateWithEventCount([v3 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 time];
          C3DAnimationEventsAddEvent(v4, [v9 eventBlock], v10);
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

void *_C3DToCAAnimationEvents(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = C3DAnimationEventsGetCount(a1, a2);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      EventTimeAtIndex = C3DAnimationEventsGetEventTimeAtIndex(a1, i);
      [v4 addObject:{+[SCNAnimationEvent animationEventWithKeyTime:block:](SCNAnimationEvent, "animationEventWithKeyTime:block:", C3DAnimationEventsGetEventBlockAtIndex(a1, i), EventTimeAtIndex)}];
    }
  }

  return v4;
}

__n128 *CAAnimationToC3DAnimation(void *a1, void *a2)
{
  v2 = _CAAnimationToC3DAnimation(a1, a2);
  v4 = v2;
  if (v2)
  {
    TypeID = C3DAnimationGroupGetTypeID(v2, v3);
    if (TypeID == CFGetTypeID(v4))
    {
      v7 = C3DAnimationClusterCreateWithAnimationGroup(v4);
      if (v7)
      {
        v8 = v7;
        v9 = v7;
        v4 = v8;
      }
    }

    if ((C3DAnimationGetIsSceneTimeBased(v4, v6) & 1) == 0)
    {
      PauseTime = C3DAnimationNodeGetPauseTime(v4, v10);
      if (PauseTime != 0.0)
      {
        v12 = PauseTime;
        C3DTransactionGetAtomicTime();
        C3DAnimationNodeSetPauseTime(v4, v14, v12 - v13);
      }
    }
  }

  return v4;
}

uint64_t SCNAnimationGetTargetedBaseType(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 fromValue])
    {
      v2 = [a1 fromValue];
    }

    else if ([a1 toValue])
    {
      v2 = [a1 toValue];
    }

    else
    {
      v2 = [a1 byValue];
    }

    v5 = v2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_13;
    }

    v6 = scn_default_log(isKindOfClass, v9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = a1;
      v7 = "Warning: unable to infer the type of a basic animation: %@";
      goto LABEL_18;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [objc_msgSend(a1 "values")];
  if (!v3 || (v5 = [objc_msgSend(a1 "values")], objc_opt_class(), v3 = objc_opt_isKindOfClass(), (v3 & 1) == 0))
  {
    v6 = scn_default_log(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = a1;
      v7 = "Warning: unable to infer the type of a keyframed animation: %@";
LABEL_18:
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, v7, &v12, 0xCu);
    }

    return 0;
  }

LABEL_13:
  v10 = [v5 objCType];

  return SCNObjCEncodedTypeToC3DBaseType(v10);
}

CAMediaTimingFunction *SCNKitGetImplicitAnimationTimingFunction()
{
  result = +[SCNTransaction animationTimingFunction];
  if (!result)
  {
    v1 = MEMORY[0x277CD9EF8];
    v2 = *MEMORY[0x277CDA7A8];

    return [v1 functionWithName:v2];
  }

  return result;
}

SCNAnimationPlayer *SCNConvertC3DAnimationDictionaryFunc(uint64_t a1, uint64_t a2, void *a3)
{
  result = [SCNAnimationPlayer animationPlayerWithAnimationPlayerRef:a2];
  if (result)
  {

    return [a3 setValue:result forKey:a1];
  }

  return result;
}

_WORD *CABasicAnimationToC3DAnimation(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CABasicAnimationToC3DAnimation_cold_1();
    }

    return 0;
  }

  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    if ([a1 toValue])
    {
      v7 = [a1 toValue];
LABEL_11:
      v5 = SCNObjCEncodedTypeToC3DBaseType([v7 objCType]);
      goto LABEL_12;
    }

    if ([a1 fromValue])
    {
      v7 = [a1 fromValue];
      goto LABEL_11;
    }

    if ([a1 byValue])
    {
      v7 = [a1 byValue];
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_12:
  v8 = C3DValueCreate(v5, 1);
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  Bytes = C3DValueGetBytes(v8, v9);
  v12 = C3DSimpleAnimationCreate();
  C3DAnimationSetupWithCAPropertyAnimation(v12, a1);
  if ([a1 toValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "toValue"), v5, v4, Bytes))
  {
    C3DSimpleAnimationSetEndValue(v12, v10);
  }

  if ([a1 fromValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "fromValue"), v5, v4, Bytes))
  {
    C3DSimpleAnimationSetStartValue(v12, v10);
  }

  if ([a1 byValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "byValue"), v5, v4, Bytes))
  {
    C3DSimpleAnimationSetByValue(v12, v10);
  }

  CFRelease(v10);

  return v12;
}

void C3DAnimationSetupWithCAPropertyAnimation(_WORD *a1, void *a2)
{
  C3DAnimationSetupWithCAAnimation(a1, a2);
  v4 = C3DCreatePathComponentsFromString([a2 keyPath]);
  C3DAnimationSetKeyPath(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  C3DAnimationSetAdditive(a1, [a2 isAdditive]);
  v5 = [a2 isCumulative];

  C3DAnimationSetCumulative(a1, v5);
}

uint64_t __SCNAnimationTargetCopyValueToAddress(void *a1, uint64_t a2, int a3, __C3DImage **a4)
{
  if (a2 == 5)
  {
    if (a3 == 2)
    {
      v5 = [SCNMaterialProperty copyC3DImageFromImage:a1];
      result = 0;
      if (a4)
      {
        if (v5)
        {
          *a4 = v5;
          v7 = v5;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return SCNWriteValueToTypedBytes(a1, a4, a2);
  }

  return result;
}

_WORD *CAKeyframeAnimationToC3DAnimation(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 c3dAnimation];
    if (v7)
    {
      v8 = v7;
      SCNAnimationSetupDelegateWithCAAnimation(v7, a1);
      return v8;
    }
  }

  if (!a2)
  {
    if ([objc_msgSend(a1 "values")])
    {
      a2 = SCNObjCEncodedTypeToC3DBaseType([objc_msgSend(objc_msgSend(a1 "values")]);
    }

    else
    {
      a2 = 0;
    }
  }

  v9 = C3DSizeOfBaseType(a2, v6);
  if (v9 >= 0x41)
  {
    v11 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CAKeyframeAnimationToC3DAnimation_cold_2();
    }

    return 0;
  }

  if ([a1 path])
  {
    NSLog(&cfstr_Cakeyframeanim.isa);
    return 0;
  }

  v13 = [objc_msgSend(a1 "values")];
  if (!v13)
  {
    v25 = scn_default_log(v13, v14);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CAKeyframeAnimationToC3DAnimation_cold_1();
    }

    return 0;
  }

  v52 = v13;
  v53 = C3DKeyframedAnimationCreate(v13, v14);
  C3DAnimationSetupWithCAPropertyAnimation(v53, a1);
  v15 = [a1 keyTimes];
  v61 = [a1 values];
  v16 = [a1 timingFunctions];
  v17 = [a1 calculationMode];
  v18 = [a1 tensionValues];
  v19 = [a1 continuityValues];
  v20 = [a1 biasValues];
  v60 = [v15 count];
  v21 = [v16 count];
  v56 = v18;
  v59 = [v18 count];
  v55 = v19;
  v58 = [v19 count];
  v54 = v20;
  v57 = [v20 count];
  [a1 duration];
  v23 = v22;
  v51 = *MEMORY[0x277CDA058];
  if (objc_msgSend_isEqualToString_(v17))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v17);
  }

  v26 = C3DKeyframeControllerCreateWithCapacity(v52, a2, a3, 0, v21 != 0, isEqualToString, isEqualToString);
  memset(__src, 0, sizeof(__src));
  v27 = v52;
  v28 = 0;
  v29 = 0.0;
  if (isEqualToString)
  {
    while (v15)
    {
      if (v60 > v28)
      {
        [objc_msgSend(v15 objectAtIndex:{v28), "doubleValue"}];
LABEL_26:
        v29 = v23 * v30;
      }

      if (v21 <= v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = [v16 objectAtIndex:v28];
      }

      v32 = 0.0;
      v33 = 0.0;
      if (v59 > v28)
      {
        [objc_msgSend(v56 objectAtIndex:{v28), "floatValue"}];
        v33 = v34;
      }

      if (v58 > v28)
      {
        [objc_msgSend(v55 objectAtIndex:{v28), "floatValue"}];
        v32 = v35;
      }

      v36 = 0.0;
      if (v57 > v28)
      {
        [objc_msgSend(v54 objectAtIndex:{v28), "floatValue"}];
        v36 = v37;
      }

      SCNWriteValueToTypedBytes([v61 objectAtIndex:v28], __src, a2);
      v38 = v29;
      v29 = v38;
      v40 = SCNInterpolationModeFromCACalculationMode(v17, v39);
      v41 = C3DTimingFunctionFromCAMediaTimingFunction(v31);
      C3DKeyframeControllerSetKeyframeAtIndex(v26, v28++, __src, v40, v41, 0, 0, v29, v33, v32, v36);
      if (v52 == v28)
      {
        goto LABEL_47;
      }
    }

    v30 = (v28 / v27);
    goto LABEL_26;
  }

  do
  {
    if (v15)
    {
      if (v60 <= v28)
      {
        goto LABEL_43;
      }

      [objc_msgSend(v15 objectAtIndex:{v28), "doubleValue"}];
    }

    else
    {
      v42 = (v28 / v27);
    }

    v29 = v23 * v42;
LABEL_43:
    if (v21 <= v28)
    {
      v43 = 0;
    }

    else
    {
      v43 = [v16 objectAtIndex:v28];
    }

    SCNWriteValueToTypedBytes([v61 objectAtIndex:v28], __src, a2);
    v44 = v29;
    v29 = v44;
    v46 = SCNInterpolationModeFromCACalculationMode(v17, v45);
    v47 = C3DTimingFunctionFromCAMediaTimingFunction(v43);
    C3DKeyframeControllerSetKeyframeAtIndex(v26, v28++, __src, v46, v47, 0, 0, v29, 0.0, 0.0, 0.0);
  }

  while (v52 != v28);
LABEL_47:
  v48 = [a1 calculationMode];
  if (v48 == *MEMORY[0x277CDA068])
  {
    v49 = v26;
    v50 = 1;
    goto LABEL_54;
  }

  if (v48 == *MEMORY[0x277CDA078])
  {
    C3DKeyframeControllerSetCalculationMode(v26, 1);
  }

  else
  {
    if (v48 == v51)
    {
      goto LABEL_52;
    }

    if (v48 == *MEMORY[0x277CDA060])
    {
      C3DKeyframeControllerSetCalculationMode(v26, 1);
LABEL_52:
      v49 = v26;
      v50 = 2;
LABEL_54:
      C3DKeyframeControllerSetDefaultInterpolationMode(v49, v50);
    }
  }

  C3DKeyframedAnimationSetController(v53, v26);
  CFRelease(v26);
  return v53;
}

uint64_t SCNAnimationSetupDelegateWithCAAnimation(uint64_t a1, void *a2)
{
  AnimationCallbacks = C3DAnimationGetAnimationCallbacks(a1, a2);
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *AnimationCallbacks = SCNAnimationDidStart;
  }

  AnimationCallbacks[1] = SCNAnimationDidStop;
  return result;
}

_WORD *_CAAnimationToC3DAnimation(void *a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v15 = scn_default_log(isKindOfClass, v6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _CAAnimationToC3DAnimation_cold_1(a1);
      }

      return 0;
    }

    v7 = [a2 copyAnimationChannelForKeyPath:objc_msgSend(a1 animation:{"keyPath"), a1}];
    if (v7 && (v8 = C3DCFTypeCopyModelInfoAtSplittedPath([a2 __CFObject], v7, 0, 1)) != 0)
    {
      v10 = v8;
      if (C3DModelTargetGetTargetAddress(v8, v9))
      {
        BaseType = C3DModelTargetGetBaseType(v10, v11);
        TypeSemantic = C3DModelTargetGetTypeSemantic(v10, v13);
      }

      else
      {
        TypeSemantic = 0;
        BaseType = 0;
      }

      CFRelease(v10);
    }

    else
    {
      TypeSemantic = 0;
      BaseType = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = CABasicAnimationToC3DAnimation(a1, BaseType, TypeSemantic);
    }

    else
    {
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();
      if ((v18 & 1) == 0)
      {
        v20 = scn_default_log(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _CAAnimationToC3DAnimation_cold_2(a1);
        }

        v16 = 0;
        goto LABEL_26;
      }

      v17 = CAKeyframeAnimationToC3DAnimation(a1, BaseType, TypeSemantic);
    }

    v16 = v17;
    if (v7 && v17)
    {
      C3DAnimationSetKeyPath(v17, v7);
    }

LABEL_26:

    return v16;
  }

  return CAAnimationGroupToC3DAnimation(a1, a2);
}

SCN_CAKeyframeAnimation *C3DAnimationToCAAnimation(const void *a1)
{
  v1 = _C3DAnimationToCAAnimation(a1);
  [(SCN_CAKeyframeAnimation *)v1 beginTime];
  if (v2 != 0.0 && ![(SCN_CAKeyframeAnimation *)v1 usesSceneTimeBase])
  {
    v3 = CACurrentMediaTime();
    [(SCN_CAKeyframeAnimation *)v1 beginTime];
    [(SCN_CAKeyframeAnimation *)v1 setBeginTime:v3 + v4];
  }

  return v1;
}

SCN_CAKeyframeAnimation *_C3DAnimationToCAAnimation(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    TypeID = C3DKeyframedAnimationGetTypeID(v2, v3);
    if (v2 == TypeID)
    {
      if (C3DKeyframedAnimationGetController(a1, v5))
      {
        v7 = objc_alloc_init(SCN_CAKeyframeAnimation);
        [(SCN_CAKeyframeAnimation *)v7 setC3dAnimation:a1];
        v8 = v7;
LABEL_8:
        v9 = v8;
LABEL_36:
        [v9 setDuration:{C3DAnimationGetDuration(a1, v6)}];
        return v9;
      }
    }

    else
    {
      v10 = C3DAnimationGroupGetTypeID(TypeID, v5);
      if (v2 == v10)
      {
        v8 = SCNAnimationGroupToCAAnimationGroup(a1);
        goto LABEL_8;
      }

      v12 = C3DSimpleAnimationGetTypeID(v10, v11);
      if (v2 == v12)
      {
        v9 = [MEMORY[0x277CD9E10] animation];
        started = C3DSimpleAnimationCopyStartValue(a1, v14);
        if (started)
        {
          v17 = started;
          Bytes = C3DValueGetBytes(started, v16);
          Type = C3DValueGetType(v17, v19);
          v25 = SCNNSValueFromTypedBytes(Bytes, Type, v21, v22, v23, v24);
          if (v25)
          {
            [v9 setFromValue:v25];
          }

          else
          {
            v32 = scn_default_log(0, v26);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert startValue", buf, 2u);
            }
          }

          CFRelease(v17);
        }

        v33 = C3DSimpleAnimationCopyEndValue(a1, v16);
        if (v33)
        {
          v35 = v33;
          v36 = C3DValueGetBytes(v33, v34);
          v38 = C3DValueGetType(v35, v37);
          v43 = SCNNSValueFromTypedBytes(v36, v38, v39, v40, v41, v42);
          if (v43)
          {
            [v9 setToValue:v43];
          }

          else
          {
            v45 = scn_default_log(0, v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *v61 = 0;
              _os_log_impl(&dword_21BEF7000, v45, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert endValue", v61, 2u);
            }
          }

          CFRelease(v35);
        }

        v46 = C3DSimpleAnimationCopyByValue(a1, v34);
        if (v46)
        {
          v48 = v46;
          v49 = C3DValueGetBytes(v46, v47);
          v51 = C3DValueGetType(v48, v50);
          v56 = SCNNSValueFromTypedBytes(v49, v51, v52, v53, v54, v55);
          if (v56)
          {
            [v9 setByValue:v56];
          }

          else
          {
            v58 = scn_default_log(0, v57);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v60[0] = 0;
              _os_log_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert byValue", v60, 2u);
            }
          }

          CFRelease(v48);
        }

        CAPropertyAnimationSetupWithSCNAnimation(v9, a1);
        goto LABEL_36;
      }

      if (v2 == C3DAnimationClusterGetTypeID(v12, v13))
      {
        v28 = C3DAnimationGroupCreateWithAnimationCluster(a1, v27);
        v9 = SCNAnimationGroupToCAAnimationGroup(v28);
        if (v28)
        {
          CFRelease(v28);
        }

        goto LABEL_36;
      }

      v29 = CFCopyTypeIDDescription(v2);
      v31 = scn_default_log(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        _C3DAnimationToCAAnimation_cold_1();
      }

      CFRelease(v29);
    }

    v9 = 0;
    goto LABEL_36;
  }

  return 0;
}

__CFString *SCNCreateAnimationChannelWithObjectAndPath(void *a1, __CFString *a2)
{
  if (![(__CFString *)a2 length])
  {
    return 0;
  }

  v4 = [a1 __CFObject];
  v5 = C3DCreatePathComponentsFromString(a2);
  v6 = C3DCFTypeCopyModelInfoAtSplittedPath(v4, v5, 0, 0);
  v8 = v6;
  if (v6 && C3DModelTargetGetTargetAddress(v6, v7))
  {
    v9 = v5;
LABEL_14:
    CFRelease(v8);
    return v9;
  }

  v10 = SCNCopyValueFromObjCProperty(a1, a2);
  if (v10)
  {
    v11 = v10;
    v12 = [a1 __CFObject];
    if (CFTypeIsC3DEntity(v12) && (C3DEntitySetValueForKey(v12, a2, v11), C3DEntityGetValueForKey(v12, a2)))
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[__CFString count](v5, "count") + 1}];
      [(__CFString *)v9 addObject:@"customProperty"];
      [(__CFString *)v9 addObjectsFromArray:v5];
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
  if (v8)
  {
    goto LABEL_14;
  }

  return v9;
}

uint64_t SCNAddAnimation(_BOOL8 AnimationNodeForKey_cold_3, void *a2, const void *a3)
{
  v5 = AnimationNodeForKey_cold_3;
  if (!a3 && (v6 = scn_default_log(AnimationNodeForKey_cold_3, a2), AnimationNodeForKey_cold_3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v6, a2, v7, v8, v9, v10, v11, v12);
    if (v5)
    {
LABEL_4:
      result = [v5 animationPlayerRef];
      if (result)
      {
        v14 = result;
        v15 = [a2 __CFObject];
        if (v15)
        {
          v16 = v15;
          v17 = CFTypeIsC3DEntity(v15);
          if ((v17 & 1) == 0)
          {
            v19 = scn_default_log(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              SCNAddAnimation_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
            }
          }

          C3DEntityAddAnimationForKey(v16, v14, a3);
        }

        return 1;
      }

      return result;
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  v27 = scn_default_log(AnimationNodeForKey_cold_3, a2);
  result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  if (result)
  {
    SCNAddAnimation_cold_3();
    return 0;
  }

  return result;
}

void SCNRemoveAnimation(void *a1, const void *a2)
{
  v3 = [a1 __CFObject];
  if (v3)
  {
    v4 = v3;
    v5 = CFTypeIsC3DEntity(v3);
    if ((v5 & 1) == 0)
    {
      v7 = scn_default_log(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        SCNRemoveAnimation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    C3DEntityRemoveAnimationForKey(v4, a2, 0);
  }
}

void SCNFadeAndRemoveAnimation(void *a1, const void *a2, double a3)
{
  v5 = [a1 __CFObject];
  if (v5)
  {
    v6 = v5;
    v7 = CFTypeIsC3DEntity(v5);
    if ((v7 & 1) == 0)
    {
      v9 = scn_default_log(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        SCNFadeAndRemoveAnimation_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    C3DEntityFadeAndRemoveAnimationForKey(v6, a2, a3);
  }
}

void SCNRemoveAllAnimations(void *a1)
{
  v1 = [a1 __CFObject];
  if (v1)
  {
    v2 = v1;
    v3 = CFTypeIsC3DEntity(v1);
    if ((v3 & 1) == 0)
    {
      v5 = scn_default_log(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        SCNRemoveAllAnimations_cold_1(v5, v4, v6, v7, v8, v9, v10, v11);
      }
    }

    C3DEntityRemoveAllAnimations(v2, v4);
  }
}

void SCNFadeAndRemoveAllAnimations(void *a1, double a2)
{
  v3 = [a1 __CFObject];
  if (v3)
  {
    v4 = v3;
    v5 = CFTypeIsC3DEntity(v3);
    if ((v5 & 1) == 0)
    {
      v7 = scn_default_log(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        SCNFadeAndRemoveAllAnimations_cold_1(v7, v6, v8, v9, v10, v11, v12, v13);
      }
    }

    C3DEntityFadeAndRemoveAllAnimations(v4, v6, a2);
  }
}

void sub_21C08FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t (**SCNAnimationDidStart(uint64_t a1, uint64_t a2))(void *, void *, uint64_t)
{
  Animation = C3DAnimationNodeGetAnimation(a1, a2);
  ObjCWrapper = C3DEntityGetObjCWrapper(Animation);
  v5 = [ObjCWrapper userAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
  }

  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __SCNAnimationDidStart_block_invoke;
    v12[3] = &unk_2782FC790;
    v12[4] = v6;
    v12[5] = v5;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  result = [ObjCWrapper animationDidStart];
  if (result)
  {
    v9 = result;
    Owner = C3DAnimationNodeGetOwner(a1, v8);
    v11 = C3DEntityGetObjCWrapper(Owner);
    return v9[2](v9, ObjCWrapper, v11);
  }

  return result;
}

uint64_t SCNAnimationDidStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v52 = *MEMORY[0x277D85DE8];
  Animation = C3DAnimationNodeGetAnimation(a1, a2);
  v8 = C3DEntityGetObjCWrapper(Animation);
  v9 = [v8 userAnimation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 delegate];
  }

  else
  {
    v11 = 0;
  }

  if (!C3DAnimationGetRemoveOnCompletion(Animation, v10))
  {
    goto LABEL_29;
  }

  Owner = C3DAnimationNodeGetOwner(v6, v12);
  ObjCWrapper = C3DEntityGetObjCWrapper(Owner);
  CommitWhenDone = C3DAnimationGetCommitWhenDone(Animation, v15);
  if (CommitWhenDone)
  {
    TypeID = C3DAnimationClusterGetTypeID(CommitWhenDone, v17);
    if (TypeID == CFGetTypeID(Animation))
    {
      v43 = a4;
      v44 = v11;
      v42 = v5;
      v19 = C3DAnimationClusterCopyKeyPaths(Animation);
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = [(__CFArray *)v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v48;
        do
        {
          v23 = 0;
          do
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [ObjCWrapper setValue:objc_msgSend(objc_msgSend(ObjCWrapper forKeyPath:{"presentationInstance"), "valueForKeyPath:", *(*(&v47 + 1) + 8 * v23)), *(*(&v47 + 1) + 8 * v23)}];
            ++v23;
          }

          while (v21 != v23);
          v21 = [(__CFArray *)v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v21);
      }

      +[SCNTransaction commit];

      v5 = v42;
LABEL_24:
      a4 = v43;
      v11 = v44;
      goto LABEL_25;
    }

    KeyPath = C3DAnimationGetKeyPath(Animation);
    if (KeyPath)
    {
      v26 = KeyPath;
      v43 = a4;
      v44 = v11;
      if (ObjCWrapper)
      {
        v27 = v5;
        v28 = ObjCWrapper;
      }

      else
      {
        if (v6)
        {
          while (1)
          {
            Parent = C3DAnimationNodeGetParent(v6, v25);
            v6 = Parent;
            if (!Parent)
            {
              break;
            }

            v31 = C3DAnimationNodeGetOwner(Parent, v30);
            v32 = C3DEntityGetObjCWrapper(v31);
            if (v32)
            {
              v28 = v32;
              v27 = v5;
              goto LABEL_23;
            }
          }
        }

        v27 = v5;
        v28 = 0;
      }

LABEL_23:
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      v33 = C3DCreatePathFromComponents(v26);
      [v28 setValue:objc_msgSend(objc_msgSend(v28 forKeyPath:{"presentationInstance"), "valueForKeyPath:", v33), v33}];

      +[SCNTransaction commit];
      v5 = v27;
      goto LABEL_24;
    }
  }

LABEL_25:
  if (v5 && (!C3DIsRunningInEditor() || C3DAnimationGetIsImplicit(Animation, v34)))
  {
    v35 = [ObjCWrapper __removeAnimation:v8 forKey:a4];
    goto LABEL_30;
  }

LABEL_29:
  v35 = 0;
LABEL_30:
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __SCNAnimationDidStop_block_invoke;
    block[3] = &unk_2782FF350;
    block[4] = v11;
    block[5] = v9;
    v46 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v36 = [v8 animationDidStop];
  if (v36)
  {
    v38 = v36;
    v39 = C3DAnimationNodeGetOwner(v6, v37);
    v40 = C3DEntityGetObjCWrapper(v39);
    (*(v38 + 16))(v38, v8, v40, v5);
  }

  return v35;
}

void _optimizeKeyframes(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == C3DAnimationGroupGetTypeID(v2, v3))
  {
    AnimationCount = C3DAnimationGroupGetAnimationCount(a1, v4);
    if (AnimationCount >= 1)
    {
      v6 = 0;
      v7 = AnimationCount & 0x7FFFFFFF;
      do
      {
        AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, v6);
        _optimizeKeyframes(AnimationAtIndex);
        ++v6;
      }

      while (v7 != v6);
    }
  }

  else
  {
    v9 = CFGetTypeID(a1);
    if (v9 == C3DKeyframedAnimationGetTypeID(v9, v10))
    {
      Controller = C3DKeyframedAnimationGetController(a1, v11);
      v13 = 0;
      C3DKeyframeControllerRemoveUselessKeys(Controller, &v13);
    }
  }
}

uint64_t C3DAnimationSetupWithCAAnimation(_WORD *a1, void *a2)
{
  [a2 duration];
  v5 = v4;
  v6 = [a2 autoreverses];
  v7 = v5;
  C3DAnimationSetDuration(a1, v8, v7);
  [a2 repeatCount];
  v10 = v9;
  [a2 repeatDuration];
  if (v10 == 0.0)
  {
    v13 = v12;
    if (v13 != 0.0 && v5 != 0.0)
    {
      v14 = v13;
      [a2 duration];
      v16 = v14 / v15;
      if (v6)
      {
        v10 = v16 * 0.5;
      }

      else
      {
        v10 = v16;
      }
    }
  }

  C3DAnimationSetRepeatCount(a1, v11, v10);
  C3DAnimationSetAutoreverses(a1, v6);
  [a2 beginTime];
  C3DAnimationNodeSetPauseTime(a1, v17, v18);
  [a2 timeOffset];
  C3DAnimationSetTimeOffset(a1, v19, v20);
  [a2 speed];
  C3DAnimationSetSpeed(a1, v21, v22);
  C3DAnimationSetRemoveOnCompletion(a1, [a2 isRemovedOnCompletion]);
  [a2 fadeInDuration];
  *&v23 = v23;
  C3DAnimationSetFadeInDuration(a1, v24, *&v23);
  [a2 fadeOutDuration];
  *&v25 = v25;
  C3DAnimationSetFadeOutDuration(a1, v26, *&v25);
  C3DAnimationSetCommitWhenDone(a1, [a2 commitsOnCompletion]);
  C3DAnimationSetIsSceneTimeBased(a1, [a2 usesSceneTimeBase]);
  v27 = [a2 fillMode];
  v29 = _CAToC3DFillMode(v27, v28);
  C3DAnimationSetFillModeMask(a1, v29);
  v30 = _CAToC3DAnimationEvents([a2 animationEvents]);
  C3DAnimationSetAnimationEvents(a1, v30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a2 mass];
    v32 = v31;
    [a2 stiffness];
    v34 = v33;
    [a2 damping];
    v36 = v35;
    [a2 initialVelocity];
    v38 = v37;
    Spring = C3DTimingFunctionCreateSpring(v32, v34, v36, v38);
    C3DAnimationSetTimingFunction(a1, Spring);
    CFRelease(Spring);
  }

  else
  {
    v40 = [a2 timingFunction];
    if (v40)
    {
      v41 = C3DTimingFunctionFromCAMediaTimingFunction(v40);
      C3DAnimationSetTimingFunction(a1, v41);
    }
  }

  return SCNAnimationSetupDelegateWithCAAnimation(a1, a2);
}

void *CAPropertyAnimationSetupWithSCNAnimation(void *a1, uint64_t a2)
{
  KeyPath = C3DAnimationGetKeyPath(a2);
  if (KeyPath)
  {
    v6 = C3DCreatePathFromComponents(KeyPath);
    [a1 setKeyPath:v6];
  }

  [a1 setAdditive:{C3DAnimationGetAdditive(a2, v5)}];
  [a1 setCumulative:{C3DAnimationGetCumulative(a2, v7)}];

  return CAAnimationSetupWithSCNAnimation(a1, a2);
}

void *CAAnimationSetupWithSCNAnimation(void *a1, uint64_t a2)
{
  [a1 setDuration:{C3DAnimationGetDuration(a2, a2)}];
  *&v5 = C3DAnimationGetRepeatCount(a2, v4);
  [a1 setRepeatCount:v5];
  [a1 setAutoreverses:{C3DAnimationGetAutoreverses(a2, v6)}];
  [a1 setBeginTime:{C3DAnimationNodeGetPauseTime(a2, v7)}];
  [a1 setTimeOffset:{C3DAnimationGetTimeOffset(a2, v8)}];
  *&v10 = C3DAnimationGetSpeed(a2, v9);
  [a1 setSpeed:v10];
  [a1 setFadeInDuration:{C3DAnimationGetFadeInDuration(a2, v11)}];
  [a1 setFadeOutDuration:{C3DAnimationGetFadeOutDuration(a2, v12)}];
  [a1 setRemovedOnCompletion:{C3DAnimationGetRemoveOnCompletion(a2, v13)}];
  [a1 setCommitsOnCompletion:{C3DAnimationGetCommitWhenDone(a2, v14)}];
  [a1 setUsesSceneTimeBase:{C3DAnimationGetIsSceneTimeBased(a2, v15)}];
  FillModeMask = C3DAnimationGetFillModeMask(a2, v16);
  [a1 setFillMode:{_C3DToCAFillMode(FillModeMask, v18)}];
  AnimationEvents = C3DAnimationGetAnimationEvents(a2, v19);
  [a1 setAnimationEvents:{_C3DToCAAnimationEvents(AnimationEvents, v21)}];
  result = C3DAnimationGetTimingFunction(a2, v22);
  if (result)
  {
    v25 = CAMediaTimingFunctionFromC3DTimingFunction(result, v24);

    return [a1 setTimingFunction:v25];
  }

  return result;
}

_WORD *CAAnimationGroupToC3DAnimation(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = C3DAnimationGroupCreate(a1, a2);
  C3DAnimationSetupWithCAAnimation(v4, a1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [a1 animations];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = CAAnimationGroupToC3DAnimation(v10, a2);
          C3DAnimationGroupAddAnimation(v4, v11);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [objc_msgSend(v10 "keyPath")];
            if (v12)
            {
              v14 = v12;
              v15 = _CAAnimationToC3DAnimation(v10, a2);
              if (v15)
              {
                C3DAnimationGroupAddAnimation(v4, v15);
              }
            }

            else
            {
              v16 = scn_default_log(0, v13);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v23 = v10;
                v24 = 2112;
                v25 = v4;
                _os_log_error_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_ERROR, "Error: sub-animation %@ of %@ has no keyPath - ignoring", buf, 0x16u);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  return v4;
}

id SCNAnimationGroupToCAAnimationGroup(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD9E00]);
  CAAnimationSetupWithSCNAnimation(v2, a1);
  Animations = C3DAnimationGroupGetAnimations(a1, v3);
  if (Animations)
  {
    Count = CFArrayGetCount(Animations);
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
        v9 = _C3DAnimationToCAAnimation(AnimationAtIndex);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
          if (KeyPath)
          {
            -[SCN_CAKeyframeAnimation setKeyPath:](v9, "setKeyPath:", [KeyPath componentsJoinedByString:@"."]);
          }

          else
          {
            v12 = scn_default_log(0, v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_DEFAULT, "Warning: SCNAnimationGroupToCAAnimationGroup - no target path", v14, 2u);
            }
          }
        }

        [v6 addObject:v9];
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  }

  [v2 setAnimations:v6];
  return v2;
}

void sub_21C096C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double C3DAnimationManagerApplyActions(uint64_t a1, double result)
{
  context[2] = *MEMORY[0x277D85DE8];
  v14 = result;
  v2 = *(a1 + 120);
  if (v2)
  {
    context[0] = a1;
    context[1] = &v14;
    *(a1 + 89) = 1;
    *(a1 + 160) = 0;
    Copy = CFDictionaryCreateCopy(0, v2);
    CFDictionaryApplyFunction(Copy, _applyActions, context);
    if (Copy)
    {
      CFRelease(Copy);
    }

    *(a1 + 89) = 0;
    v5 = *(a1 + 128);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), i);
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFArrayGetTypeID())
          {
            v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
            v12 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
            v13 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
            _C3DAnimationManagerRemoveActionWithKey(a1, v11, v12, v13);
          }

          else
          {
            C3DAnimationManagerRemoveActionsForObject(a1, ValueAtIndex);
          }
        }
      }

      CFArrayRemoveAllValues(*(a1 + 128));
    }

    result = v14;
    *(a1 + 152) = v14;
  }

  return result;
}

void _applyActions(id *a1, CFArrayRef theArray, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a3[1];
  Count = CFArrayGetCount(theArray);
  if (C3DIsRunningInEditor())
  {
    if (v6 == 0.0)
    {
      SCNActionRestoreState(a1);
      SCNActionReleaseCachedState(a1);
      SCNActionsReset(theArray);
    }

    else
    {
      SCNActionSaveStateIfNeeded(a1);
      if (v6 < *(v5 + 152))
      {
        SCNActionRestoreState(a1);
        SCNActionsReset(theArray);
        if (Count < 1)
        {
          return;
        }

        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          SCNActionApply(ValueAtIndex, a1, 0.0);
        }
      }
    }
  }

  if (Count >= 1)
  {
    for (j = 0; j < Count; ++j)
    {
      v11 = CFArrayGetValueAtIndex(theArray, j);
      if (!SCNActionIsPaused(v11))
      {
        if (SCNActionApply(v11, a1, v6))
        {
          CFRetain(a1);
          CFRetain(v11);
          SCNActionWasRemovedFromTargetAtTime(v11, a1, v6);
          CFArrayRemoveValueAtIndex(theArray, j--);
          --Count;
          SCNActionDidFinish(v11, a1);
          CFRelease(v11);
          CFRelease(a1);
        }

        else
        {
          ++*(v5 + 160);
        }
      }
    }
  }
}

void _C3DAnimationManagerRemoveActionWithKey(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 120);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a2);
    if (Value)
    {
      v10 = Value;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          HasKey = SCNActionHasKey(ValueAtIndex, a3);
          v16 = !a4 || ValueAtIndex == a4;
          v17 = v16;
          if (HasKey && v17)
          {
            break;
          }

          if (v12 == ++v13)
          {
            return;
          }
        }

        if (*(a1 + 89) == 1)
        {
          Mutable = *(a1 + 128);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            *(a1 + 128) = Mutable;
          }

          v21[0] = a2;
          v21[1] = a3;
          v21[2] = ValueAtIndex;
          v19 = CFArrayCreate(0, v21, 3, MEMORY[0x277CBF128]);
          CFArrayAppendValue(Mutable, v19);
        }

        else
        {
          CFArrayRemoveValueAtIndex(v10, v13);
          if (v12 == 1)
          {
            v20 = *(a1 + 120);

            CFDictionaryRemoveValue(v20, a2);
          }
        }
      }
    }
  }
}

void C3DAnimationManagerRemoveActionsForObject(uint64_t a1, void *key)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    if (*(a1 + 89) == 1)
    {
      Mutable = *(a1 + 128);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        *(a1 + 128) = Mutable;
      }

      CFArrayAppendValue(Mutable, key);
    }

    else if (CFDictionaryGetValue(v3, key))
    {
      v6 = *(a1 + 120);

      CFDictionaryRemoveValue(v6, key);
    }
  }
}

void C3DAnimationManagerAddAction(uint64_t a1, void *key, const void *a3)
{
  Mutable = *(a1 + 120);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 120) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(*(a1 + 120), key, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a3);
}

CFTypeRef C3DCommonProfileShaderAssignAttributesAndUniformsIndexes(CFTypeRef cf)
{
  if (C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_onceToken != -1)
  {
    C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_cold_1();
  }

  _C3DFXGLSLProgramSetUniformDictionary(cf, C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol);
  v2 = C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol;

  return _C3DFXGLSLProgramSetAttributesDictionary(cf, v2);
}

void __C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_skinningWeights", 0xD);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_skinningJoints", 0xE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_position", 0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_normal", 1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_vertexColor", 2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_TexTangent", 3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_diffuseTexcoord", 4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_ambientTexcoord", 5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_specularTexcoord", 6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_emissionTexcoord", 7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_filterTexcoord", 8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_transparentTexcoord", 9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_normalTexcoord", 0xA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_lightmapTexcoord", 0xC);
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol = CFDictionaryCreateMutable(v0, 0, v1, 0);
  C3DShaderFeedStandardUniformsToIndex(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_cameraPosition", 0x11);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_nodeOpacity", 9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_skinningJointMatrices", 0xBA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_materialShininess", 0x93);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientColor", 0x98);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientIntensity", 0x99);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientTexture", 0x9A);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientTextureMatrix", 0x9B);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseColor", 0x94);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseIntensity", 0x95);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseTexture", 0x96);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseTextureMatrix", 0x97);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularColor", 0x9C);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularIntensity", 0x9D);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularTexture", 0x9E);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularTextureMatrix", 0x9F);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionColor", 0xA0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionIntensity", 0xA1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionTexture", 0xA2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionTextureMatrix", 0xA3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyColor", 0xA4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyIntensity", 0xA5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyTexture", 0xA6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyTextureMatrix", 0xA7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparency", 0xA8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentColor", 0xA9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentIntensity", 0xAA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentTexture", 0xAB);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentTextureMatrix", 0xAC);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalTexture", 0xAD);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalIntensity", 0xAE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalTextureMatrix", 0xAF);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shininessTexture", 0xB0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shininessTextureMatrix", 0xB1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_lightmapTexture", 0xB2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveColor", 0xB3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveIntensity", 0xB4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveTexture", 0xB5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveTextureMatrix", 0xB6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fresnel", 0xB7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientLightColor", 0xB8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shCoefficients", 0xB9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fogColor", 0xBE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fogParameters", 0xBF);
  v3 = 0;
  for (i = 33; i != 161; i += 16)
  {
    v5 = CFStringCreateWithFormat(0, 0, @"u_light%d_attenuation", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v5, (i - 10));
    CFRelease(v5);
    v6 = CFStringCreateWithFormat(0, 0, @"u_light%d_spotAttenuation", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v6, (i - 9));
    CFRelease(v6);
    v7 = CFStringCreateWithFormat(0, 0, @"u_light%d_color", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v7, (i - 15));
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(0, 0, @"u_light%d_position", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v8, (i - 14));
    CFRelease(v8);
    v9 = CFStringCreateWithFormat(0, 0, @"u_light%d_direction", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v9, (i - 13));
    CFRelease(v9);
    v10 = CFStringCreateWithFormat(0, 0, @"u_light%d_up", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v10, (i - 12));
    CFRelease(v10);
    v11 = CFStringCreateWithFormat(0, 0, @"u_light%d_right", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v11, (i - 11));
    CFRelease(v11);
    v12 = CFStringCreateWithFormat(0, 0, @"u_light%d_gobo", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v12, (i - 8));
    CFRelease(v12);
    v13 = CFStringCreateWithFormat(0, 0, @"u_light%d_goboMatrix", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v13, (i - 7));
    CFRelease(v13);
    v14 = CFStringCreateWithFormat(0, 0, @"u_light%d_goboIntensity", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v14, (i - 6));
    CFRelease(v14);
    v15 = CFStringCreateWithFormat(0, 0, @"u_light%d_iesMatrix", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v15, (i - 4));
    CFRelease(v15);
    v16 = CFStringCreateWithFormat(0, 0, @"u_light%d_iesTex", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v16, (i - 5));
    CFRelease(v16);
    v17 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadow", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v17, (i - 3));
    CFRelease(v17);
    v18 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowMatrix", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v18, (i - 2));
    CFRelease(v18);
    v19 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowRadius", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v19, (i - 1));
    CFRelease(v19);
    v20 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowColor", v3);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v20, i);
    CFRelease(v20);
    v3 = (v3 + 1);
  }

  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_zRange", 0xBB);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_orientationPreserved", 0xBC);
  v21 = C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol;

  CFDictionarySetValue(v21, @"u_shadowKernel", 0xBD);
}

C3D::RenderProbePass *C3D::RenderProbePass::RenderProbePass(C3D::RenderProbePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DNode *a4, int a5, MTLPixelFormat a6)
{
  v14[0] = 0;
  v14[1] = a4;
  memset(&v14[2], 0, 24);
  v15 = xmmword_21C27FD10;
  v16 = 1;
  v17 = 64;
  v18 = 0x1000000;
  v19 = 0;
  v20 = 2;
  v9 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v14);
  *v9 = &unk_282DC5F18;
  if (!C3DNodeGetLight(*(v9 + 31), v10))
  {
    v12 = scn_default_log(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3D::RenderProbePass::RenderProbePass(v12);
    }
  }

  *(this + 1340) = a5;
  *(this + 671) = a6;
  return this;
}

void C3D::RenderProbePass::setup(C3D::RenderProbePass *this)
{
  C3D::Pass::setOutputCount(this, 2u);
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 64) = 1;
  *(v2 + 8) = "PROBE";
  v3 = *(v2 + 66);
  *(v2 + 66) = v3 & 0xFFEF;
  v4 = *(this + 2680);
  v5 = *(this + 671);
  *(v2 + 16) = v4;
  *(v2 + 18) = v4;
  *(v2 + 20) = 0;
  *(v2 + 24) = 517;
  *(v2 + 28) = v5;
  *(v2 + 32) = 0;
  *(v2 + 30) = 5;
  *(v2 + 66) = v3 & 0xFFEC | 2;
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v6 + 64) = 2;
  *(v6 + 8) = "DEPTH";
  v8 = *(v6 + 66) | 0x18;
  *(v6 + 66) = v8;
  v9 = *(this + 2680);
  *(v6 + 16) = v9;
  *(v6 + 18) = v9;
  *(v6 + 20) = 0;
  *(v6 + 24) = 517;
  *(v6 + 28) = 252;
  *(v6 + 30) = 0;
  *(v6 + 32) = 0;
  *(v6 + 66) = v8 & 0xFFFC | 2;

  C3D::DrawNodesPass::setup(this, v7);
}

void sub_21C099360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void sub_21C09A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void sub_21C09B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

SCNAuthoringEnvironment2 *C3DAuthoringEnvironment2Create(uint64_t a1)
{
  v1 = [SCNScene sceneWithSceneRef:a1];
  v2 = [SCNAuthoringEnvironment2 alloc];

  return [(SCNAuthoringEnvironment2 *)v2 initWithScene:v1];
}

uint64_t C3DAuthoringEnvironment2NodeAddedToScene(void *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);

  return [a1 addedNode:ObjCWrapper];
}

id *C3DAuthoringEnvironment2NodeRemovedFromScene(void *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {

    return [a1 removedNode:result];
  }

  return result;
}

uint64_t C3DFXTechniqueCreateAuthoring()
{
  v0 = C3DDictionaryNamed(@"C3DFXAuthoring.plist");

  return C3DFXTechniqueCreateWithDescription(v0, 0);
}

id SCNCreateFuntionConstants(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, uint64_t a7)
{
  v83 = *MEMORY[0x277D85DE8];
  CommonProfile = C3DMaterialGetCommonProfile(a7, a2);
  if (a3)
  {
    v14 = C3DMeshContainsSourcesWithSemantic(a3, 1);
    if (a6)
    {
LABEL_3:
      v53 = (*a6 & 1) == 0;
      v52 = (*a6 & 2) == 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v53 = 0;
  v52 = 0;
LABEL_6:
  LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile, v12);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v58 = a1;
  v55 = a6;
  v56 = a4;
  if (a3)
  {
    v17 = C3DMeshContainsSourcesWithSemantic(a3, 2);
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(v67) = v17;
  BYTE1(v67) = 1;
  BYTE2(v67) = v14;
  ElementsCount = C3DMeshGetElementsCount(a3, v15);
  if (ElementsCount >= 1)
  {
    v19 = ElementsCount;
    v20 = 0;
    for (i = 0; i != v19; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a3, i, 1);
      v20 |= C3DMeshElementGetType(ElementAtIndex, v23) == 3;
    }

    BYTE11(v79) = v20;
  }

  v24 = 0;
  v66 = 0;
  do
  {
    IsUsingMappingChannel = C3DEffectCommonProfileIsUsingMappingChannel(CommonProfile, v24);
    if (IsUsingMappingChannel)
    {
      if (a3 && (IsUsingMappingChannel = C3DMeshGetSourceWithSemanticAtIndex(a3, 3, v24, 1)) != 0)
      {
        *(&v66 + v24) = 1;
      }

      else
      {
        v27 = scn_default_log(IsUsingMappingChannel, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v65 = v24;
          _os_log_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_DEFAULT, "Warning: MappingChannel %d needed but not available", buf, 8u);
        }
      }
    }

    ++v24;
  }

  while (v24 != 8);
  *(&v67 + 4) = v66;
  BYTE12(v67) = v67;
  *(&v67 + 13) = 257;
  HIBYTE(v67) = 1;
  v63 = 0;
  *buf = 0;
  *(&v82 + 1) = -1;
  if (C3DEffectCommonProfileIsUsingSelfIllumination(CommonProfile))
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 9, &v68 + 3, &v68 + 10, &v71 + 15, &v70, &v75 + 3, &v73 + 2, &v78);
    BYTE8(v79) = BYTE3(v68);
  }

  else
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 0, &v68 + 3, &v68 + 10, &v71 + 15, &v70, &v75 + 3, &v73 + 2, &v78);
  }

  if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfile))
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 8, &v68, &v68 + 11, &v72, &v70 + 1, &v76, &v73 + 3, &v78 + 1);
    BYTE9(v79) = v68;
  }

  else if (((C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(CommonProfile, v28) | v52) & 1) == 0)
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 1, &v68, &v68 + 11, &v72, &v70 + 1, &v76, &v73 + 3, &v78 + 1);
  }

  SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 2, &v68 + 1, &v68 + 7, &v71 + 12, &v69 + 1, &v75, &v72 + 3, &v77 + 1);
  if ((LightingModel & 0xFFFFFFFE) == 2)
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 3, &v68 + 2, &v68 + 13, &v72 + 2, &v70 + 3, &v76 + 2, &v74 + 1, &v78 + 3);
  }

  SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 4, &v68 + 5, &v68 + 14, &v72 + 3, &v71, buf, buf, buf);
  SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 5, &v68 + 6, &v68 + 9, &v71 + 14, &v69 + 3, &v75 + 2, &v73 + 1, &v77 + 3);
  SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 6, &v68 + 4, &v68 + 12, &v72 + 1, &v70 + 2, &v76 + 1, &v74, &v78 + 2);
  SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 7, &v63, &v68 + 8, &v71 + 13, &v69 + 2, &v75 + 1, &v73, &v77 + 2);
  if (LightingModel == 5)
  {
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 11, &v63, &v69, &v72 + 4, &v71 + 1, &v76 + 3, &v74 + 2, &v79);
    SCNStandardConstants::_setPropertyFlags(&v67, CommonProfile, 10, &v63, &v69 + 1, &v72 + 5, &v71 + 2, &v77, &v74 + 3, &v79 + 1);
  }

  v30 = 0;
  BYTE3(v67) = BYTE8(v68);
  v62 = 0;
  v61 = 0;
  v60 = 1;
  if (BYTE7(v68) == 1)
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 2, 0);
    C3DEffectSlotGetTextureInfo(EffectSlot, &v62, &v61, &v60);
    v30 = v60 & v61;
  }

  BYTE12(v79) = v30 & 1;
  if (BYTE14(v68) == 1)
  {
    v59 = 0;
    v32 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 4, 0);
    C3DEffectSlotGetTextureInfo(v32, &v59, &v63, &v63);
    if (v59 == 4)
    {
      HIWORD(v68) = 256;
    }
  }

  IsDoubleSided = C3DMaterialIsDoubleSided(a7, v29);
  v35 = v53 && v14;
  if ((LightingModel & 0xFFFFFFFB) == 0)
  {
    v35 = 0;
  }

  BYTE9(v80) = IsDoubleSided;
  LODWORD(v80) = LightingModel;
  if (LightingModel == 5)
  {
    v35 = 1;
  }

  BYTE4(v80) = v35;
  if (v55 && LightingModel == 5)
  {
    BYTE10(v80) = (*v55 & 0x70) != 0;
    LOBYTE(v36) = 1;
  }

  else
  {
    BYTE10(v80) = 0;
    if (LightingModel == 5)
    {
      LOBYTE(v36) = 1;
    }

    else
    {
      LOBYTE(v36) = 0;
      if (v55)
      {
        v36 = (*v55 >> 1) & 1;
      }
    }
  }

  BYTE5(v80) = v36;
  if (a5 < 1)
  {
    v40 = 0;
  }

  else if ((*(v56 + 1) & 0x10) != 0)
  {
    v40 = 1;
  }

  else
  {
    v37 = 1;
    do
    {
      v38 = v37;
      if (a5 == v37)
      {
        break;
      }

      v39 = *(v56 + 4 * v37++);
    }

    while ((v39 & 0x1000) == 0);
    v40 = v38 < a5;
  }

  BYTE6(v80) = v40;
  BYTE7(v80) = C3DEffectCommonProfileIsPerPixelLit(CommonProfile, v34) ^ 1;
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18);
  BYTE7(v72) = FloatProperty != 1.0;
  if (BYTE5(v68) == 1)
  {
    BYTE6(v72) = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 20) != 0.0;
    if ((BYTE7(v72) & 1) == 0)
    {
LABEL_61:
      v43 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    BYTE6(v72) = 0;
    if (FloatProperty == 1.0)
    {
      goto LABEL_61;
    }
  }

  v43 = C3DEffectCommonProfileGetTransparencyMode(CommonProfile, v41) == 1;
LABEL_64:
  BYTE8(v72) = v43;
  BYTE13(v79) = (BYTE9(v68) | v61) & 1;
  v44 = 4;
  if (a5 < 4)
  {
    v44 = a5;
  }

  if (v44 > 2)
  {
    if (v44 != 3)
    {
      DWORD2(v81) = *(v56 + 12);
    }

    DWORD1(v81) = *(v56 + 8);
    goto LABEL_73;
  }

  if (v44 == 1)
  {
LABEL_74:
    HIDWORD(v80) = *v56;
    goto LABEL_75;
  }

  if (v44 == 2)
  {
LABEL_73:
    LODWORD(v81) = *(v56 + 4);
    goto LABEL_74;
  }

LABEL_75:
  BYTE12(v81) = C3DNodeGetOpacity(v58, v41) < 1.0;
  IsDynamicBatchingEnabled = C3DGeometryIsDynamicBatchingEnabled(a2);
  if (BYTE12(v81))
  {
    v47 = 0;
  }

  else
  {
    v47 = IsDynamicBatchingEnabled;
  }

  BYTE14(v79) = v47 & (BYTE10(v80) ^ 1);
  v50 = v58 && (v48 = C3DGetScene(v58, v46)) != 0 && C3DSceneGetFogEndDistance(v48, v49) > 0.0;
  BYTE13(v81) = v50;
  return objc_alloc_init(MEMORY[0x277CD6D70]);
}

void SCNStandardConstants::_setPropertyFlags(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5, BOOL *a6, _DWORD *a7, int *a8, _DWORD *a9, int *a10)
{
  v15 = a3;
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a2, a3, 0);
  if (!EffectSlot)
  {
    return;
  }

  v19 = EffectSlot;
  *a4 = C3DEffectSlotIsValid(EffectSlot, v18);
  *a5 = C3DEffectSlotHasImageOrTexture(v19, v20);
  *a6 = C3DEffectSlotGetIntensity(v19, v21) != 1.0;
  if (C3DEffectSlotGetTextureComponents(v19, v22) == 15)
  {
    v24 = 0;
LABEL_4:
    *a7 = v24;
    goto LABEL_8;
  }

  v25 = ((*(v19 + 48) >> 11) & 0xF) - 1;
  if (v25 <= 7 && ((0x8Bu >> v25) & 1) != 0)
  {
    v24 = dword_21C2A2390[v25];
    goto LABEL_4;
  }

LABEL_8:
  if (v15 != 4 && *a5)
  {
    *a9 = C3DEffectSlotGetUVSet(v19, v23);
    HasInterpolationModesPerKey = C3DKeyframeControllerHasInterpolationModesPerKey(v19);
    if (HasInterpolationModesPerKey)
    {
      v28 = *(a1 + 244) + 1;
      *(a1 + 244) = v28;
      *a10 = v28;
      v29 = *(a1 + 240) + 1;
      *(a1 + 240) = v29;
    }

    else
    {
      v30 = *a9;
      v31 = *(a1 + 248 + v30);
      if (v31 == 255)
      {
        v31 = *(a1 + 240) + 1;
        *(a1 + 240) = v31;
        *(a1 + 248 + v30) = v31;
      }

      v29 = v31;
    }

    *a8 = v29;
    if (v29 >= 8)
    {
      v32 = scn_default_log(HasInterpolationModesPerKey, v27);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        SCNStandardConstants::_setPropertyFlags(v32);
      }
    }
  }
}

void __DestroyControllers(uint64_t a1)
{
  if (*(a1 + 888) >= 1)
  {
    v2 = 0;
    v3 = 56;
    do
    {
      free(*(*(a1 + 880) + v3));
      ++v2;
      v3 += 80;
    }

    while (v2 < *(a1 + 888));
  }

  free(*(a1 + 880));
  *(a1 + 880) = 0;
}

uint64_t C3DParticleSystemGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DParticleSystemGetTypeID_onceToken != -1)
  {
    C3DParticleSystemGetTypeID_cold_1();
  }

  return C3DParticleSystemGetTypeID_typeID;
}

double __C3DParticleSystemGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParticleSystemGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"acceleration", 160, 9, 0);
  C3DModelPathResolverRegisterProperty(@"affectedByGravity", 96, 3, 0);
  C3DModelPathResolverRegisterProperty(@"birthRate", 64, 1, 0);
  C3DModelPathResolverRegisterProperty(@"birthRateVariation", 68, 1, 0);
  C3DModelPathResolverRegisterProperty(@"dampingFactor", 380, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emissionDuration", 108, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emissionDurationVariation", 112, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emittingDirection", 128, 9, 0);
  C3DModelPathResolverRegisterProperty(@"fixedTimeStep", 388, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fresnelExponent", 396, 1, 0);
  C3DModelPathResolverRegisterProperty(@"idleDuration", 116, 1, 0);
  C3DModelPathResolverRegisterProperty(@"idleDurationVariation", 120, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceColumnCount", 304, 2, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceFrameRate", 316, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceFrameRateVariation", 320, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceInitialFrame", 308, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceInitialFrameVariation", 312, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceRowCount", 306, 2, 0);
  C3DModelPathResolverRegisterProperty(@"isLocal", 95, 3, 0);
  C3DModelPathResolverRegisterProperty(@"loops", 101, 3, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngle", 180, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngleVariation", 184, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngularVelocity", 196, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngularVelocityVariation", 200, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleBounce", 212, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleBounceVariation", 216, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleCharge", 228, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleChargeVariation", 232, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleColor", 256, 13, 0);
  C3DModelPathResolverRegisterProperty(@"particleColorVariation", 272, 10, 0);
  C3DModelPathResolverRegisterProperty(@"particleFriction", 220, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleFrictionVariation", 224, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleGeometries", 352, 5, 0);
  C3DModelPathResolverRegisterProperty(@"particleLifeSpan", 204, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleLifeSpanVariation", 208, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleMass", 372, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleMassVariation", 376, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleSize", 288, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleSizeVariation", 292, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleIntensity", 296, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleIntensityVariation", 300, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleVelocity", 188, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleVelocityVariation", 192, 1, 0);
  C3DModelPathResolverRegisterProperty(@"speedFactor", 384, 1, 0);
  C3DModelPathResolverRegisterProperty(@"spreadingAngle", 176, 1, 0);
  C3DModelPathResolverRegisterProperty(@"stretchFactor", 248, 1, 0);
  C3DModelPathResolverRegisterProperty(@"warmupDuration", 72, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DParticleSystemContextClassAnimatable;
  xmmword_2817406C0 = kC3DC3DParticleSystemContextClassAnimatable;
  return result;
}

uint64_t C3DParticleSystemGetAndClearMeshDidChange(uint64_t a1)
{
  result = *(a1 + 856);
  if (result == 1)
  {
    *(a1 + 856) = 0;
  }

  return result;
}

void __C3DParticleSystemControllersDidChange(uint64_t a1)
{
  __DestroyControllers(a1);
  *(a1 + 888) = -1;
  v2 = *(a1 + 920);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 920) = 0;
  }
}

uint64_t C3DParticleSystemCreate(uint64_t a1, uint64_t a2)
{
  if (C3DParticleSystemGetTypeID_onceToken != -1)
  {
    C3DParticleSystemGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParticleSystemGetTypeID_typeID, 960);
  C3DColor4Make((Instance + 256), 1.0, 1.0, 1.0, 1.0);
  *(Instance + 372) = 1065353216;
  *(Instance + 108) = 1065353216;
  *(Instance + 101) = 1;
  *(Instance + 204) = 1065353216;
  *(Instance + 288) = 1065353216;
  *(Instance + 296) = 1065353216;
  *(Instance + 212) = 1060320051;
  *(Instance + 228) = 0;
  *(Instance + 220) = 1065353216;
  *(Instance + 304) = 65537;
  *(Instance + 384) = 1065353216;
  *(Instance + 396) = 1077936128;
  *(Instance + 128) = xmmword_21C27F8C0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  __C3DParticleSystemControllersDidChange(Instance);
  *(Instance + 872) = -1;
  *(Instance + 857) = 257;
  *(Instance + 904) = 0;
  return Instance;
}

CFIndex __AddModifierForStage(uint64_t a1, _DWORD *a2, CFArrayRef theArray, int a4)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      result = C3DParticleModifierGetStage(ValueAtIndex);
      if (result == a4)
      {
        v12 = (*a2)++;
        *(a1 + 24 * v12 + 16) = ValueAtIndex;
      }
    }
  }

  return result;
}

void __C3DParticleSystemUpdateInternal(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  __src[1536] = *MEMORY[0x277D85DE8];
  *(v1 + 872) = 0;
  v30 = 0;
  bzero(__src, 0x3000uLL);
  if (C3DParticleSystemGetRenderingMode(v2, v3) - 4 >= 0xFFFFFFFE)
  {
    v9 = (v2 + 864);
    free(*(v2 + 864));
LABEL_32:
    v28 = 0;
    *v9 = 0;
    goto LABEL_33;
  }

  v5 = *(v2 + 896);
  if (v5)
  {
    __AddModifierForStage(__src, &v30, v5, 0);
  }

  if (C3DParticleSystemGetParticleMassVariation(v2, v4) == 0.0)
  {
    DampingFactor = C3DParticleSystemGetDampingFactor(v2, v6);
    v11 = v30;
    v8 = ++v30;
    v12 = &__src[3 * v11];
    if (DampingFactor == 0.0)
    {
      v13 = C3DParticleEulerIntegration_NoMassVariationNoDrag;
    }

    else
    {
      v13 = C3DParticleEulerIntegration_NoMassVariation;
    }

    *v12 = v13;
  }

  else
  {
    v7 = v30;
    v8 = ++v30;
    __src[3 * v7] = C3DParticleEulerIntegration_C;
  }

  if (C3DParticleSystemGetAffectedByPhysicsFields(v2, v6))
  {
    v15 = 3 * v8++;
    v30 = v8;
    __src[v15] = C3DParticleModifier_PhysicsField;
  }

  if (C3DParticleSystemHasTextureAnimation(v2, v14))
  {
    v30 = v8 + 1;
    __src[3 * v8] = C3DParticleModifier_Frame;
  }

  v16 = *(v2 + 896);
  if (v16)
  {
    __AddModifierForStage(__src, &v30, v16, 1);
    __AddModifierForStage(__src, &v30, *(v2 + 896), 2);
  }

  if (C3DParticleSystemGetEventBlock(v2, 2, 0))
  {
    v18 = C3DParticleGenericColliderWithBlock;
  }

  else
  {
    v18 = C3DParticleGenericCollider;
  }

  v19 = *(v2 + 360);
  if (v19)
  {
    Count = CFArrayGetCount(v19);
    v21 = v30;
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 360), i);
        v25 = &__src[3 * v21 + 3 * i];
        *v25 = v18;
        v25[1] = ValueAtIndex;
      }

      v21 += i;
    }

    v30 = v21;
  }

  v26 = *(v2 + 896);
  if (v26)
  {
    __AddModifierForStage(__src, &v30, v26, 3);
  }

  SystemSpawnedOnLiving = C3DParticleSystemGetSystemSpawnedOnLiving(v2, v17);
  v28 = v30;
  if (SystemSpawnedOnLiving)
  {
    __src[3 * v30] = C3DParticleSpawnSubSystem;
    ++v28;
  }

  v9 = (v2 + 864);
  free(*(v2 + 864));
  if (!v28)
  {
    goto LABEL_32;
  }

  v29 = malloc_type_malloc(24 * v28, 0xA0040114AFA65uLL);
  *v9 = v29;
  memcpy(v29, __src, 24 * v28);
LABEL_33:
  *(v2 + 872) = v28;
}

uint64_t C3DParticleSystemGetRenderingMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 91);
}

float C3DParticleSystemGetParticleMassVariation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 376);
}

float C3DParticleSystemGetDampingFactor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 380);
}

uint64_t C3DParticleSystemGetAffectedByPhysicsFields(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 97);
}

uint64_t C3DParticleSystemGetEventBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_6:
      v14 = v4;
      return *(a1 + 8 * v14 + 928);
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14 = v4;
  *a3 = *(a1 + 8 * v4 + 952);
  return *(a1 + 8 * v14 + 928);
}

uint64_t C3DParticleSystemGetSystemSpawnedOnLiving(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 344);
}

uint64_t C3DParticleSystemGetParticleColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 256;
}

__n128 C3DParticleSystemSetParticleColor(_BOOL8 RenderingMode_cold_1, __n128 *a2)
{
  v3 = RenderingMode_cold_1;
  if (!RenderingMode_cold_1 && (v4 = scn_default_log(0, a2), RenderingMode_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DParticleSystemGetRenderingMode_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(RenderingMode_cold_1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DCGColorGetComponentsInColorSpace_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *a2;
  v3[16] = *a2;
  return result;
}

uint64_t C3DParticleSystemGetParticleColorController(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 892) == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 880) + 80 * *(a1 + 892) + 16);
  }
}

uint64_t C3DParticleSystemGetParticleOpacityController(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 894) == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 880) + 80 * *(a1 + 894) + 16);
  }
}

uint64_t C3DParticleSystemGetParticleTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

CFTypeRef C3DParticleSystemSetParticleTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 240);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 240) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 240) = result;
    *(a1 + 858) = 1;
  }

  return result;
}

void C3DParticleSystemSetColliderNodes(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 360);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 360) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 360) = v13;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetEventBlock(uint64_t a1, uint64_t a2, void *aBlock, CFTypeRef cf)
{
  v6 = a2;
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = a1 + 952;
  v17 = *(a1 + 952 + 8 * v6);
  if (v17 != cf)
  {
    if (v17)
    {
      CFRelease(v17);
      *(v16 + 8 * v6) = 0;
    }

    if (cf)
    {
      v18 = CFRetain(cf);
    }

    else
    {
      v18 = 0;
    }

    *(v16 + 8 * v6) = v18;
  }

  v19 = *(a1 + 928 + 8 * v6);
  if (v19 != aBlock)
  {
    if (v19)
    {
      _Block_release(v19);
    }

    *(a1 + 928 + 8 * v6) = _Block_copy(aBlock);
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetProperyControllers(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 400);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 400) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 400) = v13;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetParticleColorVariation(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a1)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  *(a1 + 272) = a3;
  __C3DParticleSystemControllersDidChange(a1);
  *(a1 + 872) = -1;
  *(a1 + 857) = 257;
  *(a1 + 904) = 0;
}

__n128 C3DParticleSystemGetOrientationDirection(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[9];
}

void C3DParticleSystemSetOrientationDirection(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[9] = a3;
}

float C3DParticleSystemGetLightEmissionRadiusFactor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 392);
}

void C3DParticleSystemSetLightEmissionRadiusFactor(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 392) = a3;
}

__n128 C3DParticleSystemGetAcceleration(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[10];
}

void C3DParticleSystemSetAcceleration(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[10] = a3;
}

uint64_t C3DParticleSystemGetAffectedByGravity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void C3DParticleSystemSetAffectedByGravity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 96) != v2)
  {
    *(a1 + 96) = v2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetAffectedByPhysicsFields(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 97) != v2)
  {
    *(a1 + 97) = v2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetBirthDirection(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 89);
}

void C3DParticleSystemSetBirthDirection(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 89) = v2;
}

uint64_t C3DParticleSystemGetBirthLocation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

void C3DParticleSystemSetBirthLocation(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 88) = v2;
}

float C3DParticleSystemGetBirthRate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DParticleSystemSetBirthRate(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 64) = a3;
}

float C3DParticleSystemGetBirthRateVariation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 68);
}

void C3DParticleSystemSetBirthRateVariation(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 68) = a3;
}

uint64_t C3DParticleSystemGetBlackPassEnabled(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 105);
}

void C3DParticleSystemSetBlackPassEnabled(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 105) != v2)
  {
    *(result + 105) = v2;
    *(result + 858) = 1;
  }
}

uint64_t C3DParticleSystemGetBlendMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 90);
}

void C3DParticleSystemSetBlendMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 90) != v2)
  {
    *(result + 90) = v2;
    *(result + 858) = 1;
  }
}

uint64_t C3DParticleSystemGetColliderNodes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 360);
}

void C3DParticleSystemSetDampingFactor(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 380) = a3;
}

float C3DParticleSystemGetEmissionDuration(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 108);
}

void C3DParticleSystemSetEmissionDuration(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 108) = a3;
}

float C3DParticleSystemGetEmissionDurationVariation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

void C3DParticleSystemSetEmissionDurationVariation(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 112) = a3;
}

uint64_t C3DParticleSystemGetEmitterShape(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

CFTypeRef C3DParticleSystemSetEmitterShape(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 80);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 80) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 80) = result;
  }

  return result;
}

__n128 C3DParticleSystemGetEmittingDirection(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[8];
}

void C3DParticleSystemSetEmittingDirection(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[8] = a3;
}

float C3DParticleSystemGetFixedTimeStep(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 388);
}